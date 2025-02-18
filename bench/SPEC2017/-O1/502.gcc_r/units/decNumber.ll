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

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberFromInt32(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %4 = tail call ptr @decNumberFromUInt32(ptr noundef %0, i32 noundef %3)
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %7, align 4, !tbaa !35
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberFromUInt32(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %3, align 4, !tbaa !35
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 10
  store i16 0, ptr %5, align 2, !tbaa !42
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %12, %7 ], [ %1, %2 ]
  %10 = urem i32 %9, 1000
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %8, align 2, !tbaa !42
  %12 = udiv i32 %9, 1000
  %13 = getelementptr inbounds i16, ptr %8, i64 1
  %14 = icmp ult i32 %9, 1000
  br i1 %14, label %15, label %7, !llvm.loop !44

15:                                               ; preds = %7
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %5 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %20, -1
  %22 = mul nsw i32 %21, 3
  %23 = add nsw i32 %22, 1
  %24 = icmp slt i32 %20, 1
  br i1 %24, label %47, label %25

25:                                               ; preds = %15
  %26 = sext i32 %21 to i64
  %27 = shl nsw i64 %26, 1
  %28 = add nsw i64 %27, 10
  br label %29

29:                                               ; preds = %25, %37
  %30 = phi i32 [ %38, %37 ], [ %23, %25 ]
  %31 = phi i64 [ %39, %37 ], [ %28, %25 ]
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !42
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = icmp eq i32 %30, 1
  br i1 %36, label %47, label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %30, -3
  %39 = add nsw i64 %31, -2
  %40 = icmp slt i64 %31, 12
  br i1 %40, label %47, label %29, !llvm.loop !47

41:                                               ; preds = %29
  %42 = icmp ult i16 %33, 10
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = icmp ult i16 %33, 100
  %45 = select i1 %44, i32 1, i32 2
  %46 = add nsw i32 %45, %30
  br label %47

47:                                               ; preds = %35, %37, %15, %41, %43
  %48 = phi i32 [ %30, %41 ], [ %46, %43 ], [ %23, %15 ], [ %38, %37 ], [ 1, %35 ]
  store i32 %48, ptr %0, align 4, !tbaa !41
  br label %49

49:                                               ; preds = %2, %47
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @decNumberZero(ptr noundef returned writeonly %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %2, align 4, !tbaa !35
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %4, align 2, !tbaa !42
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decNumberToInt32(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !35
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4, !tbaa !41
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %60, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !42
  %17 = zext i16 %16 to i32
  %18 = udiv i32 %17, 10
  %19 = urem i32 %17, 10
  %20 = icmp sgt i32 %8, 3
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 1
  %23 = zext nneg i32 %8 to i64
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 3, %21 ], [ %36, %24 ]
  %26 = phi i32 [ %18, %21 ], [ %34, %24 ]
  %27 = phi ptr [ %22, %21 ], [ %35, %24 ]
  %28 = load i16, ptr %27, align 2, !tbaa !42
  %29 = zext i16 %28 to i32
  %30 = add nsw i64 %25, -1
  %31 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = mul i32 %32, %29
  %34 = add i32 %33, %26
  %35 = getelementptr inbounds i16, ptr %27, i64 1
  %36 = add nuw nsw i64 %25, 3
  %37 = icmp ult i64 %36, %23
  br i1 %37, label %24, label %38, !llvm.loop !49

38:                                               ; preds = %24, %14
  %39 = phi i32 [ %18, %14 ], [ %34, %24 ]
  %40 = icmp ugt i32 %39, 214748364
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = icmp eq i32 %39, 214748364
  %43 = icmp ugt i32 %19, 7
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %38
  %46 = icmp sgt i8 %4, -1
  %47 = icmp ne i32 %39, 214748364
  %48 = or i1 %46, %47
  %49 = icmp ne i32 %19, 8
  %50 = select i1 %48, i1 true, i1 %49
  br label %57

51:                                               ; preds = %41
  %52 = mul nuw nsw i32 %39, 10
  %53 = add nuw i32 %52, %19
  %54 = sub nsw i32 0, %53
  %55 = icmp slt i8 %4, 0
  %56 = select i1 %55, i32 %54, i32 %53
  br label %57

57:                                               ; preds = %45, %51
  %58 = phi i1 [ false, %51 ], [ %50, %45 ]
  %59 = phi i32 [ %56, %51 ], [ -2147483648, %45 ]
  br i1 %58, label %60, label %62

60:                                               ; preds = %57, %2, %7, %10
  %61 = tail call ptr @decContextSetStatus(ptr noundef %1, i32 noundef 128) #19
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi i32 [ 0, %60 ], [ %59, %57 ]
  ret i32 %63
}

declare ptr @decContextSetStatus(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decNumberToUInt32(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !35
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4, !tbaa !41
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = icmp sgt i8 %4, -1
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !42
  %19 = icmp eq i16 %18, 0
  %20 = icmp eq i32 %8, 1
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %59

22:                                               ; preds = %16, %14
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !42
  %25 = zext i16 %24 to i32
  %26 = udiv i32 %25, 10
  %27 = urem i32 %25, 10
  %28 = icmp sgt i32 %8, 3
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.decNumber, ptr %0, i64 1
  %31 = zext nneg i32 %8 to i64
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 3, %29 ], [ %44, %32 ]
  %34 = phi i32 [ %26, %29 ], [ %42, %32 ]
  %35 = phi ptr [ %30, %29 ], [ %43, %32 ]
  %36 = load i16, ptr %35, align 2, !tbaa !42
  %37 = zext i16 %36 to i32
  %38 = add nsw i64 %33, -1
  %39 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = mul i32 %40, %37
  %42 = add i32 %41, %34
  %43 = getelementptr inbounds i16, ptr %35, i64 1
  %44 = add nuw nsw i64 %33, 3
  %45 = icmp ult i64 %44, %31
  br i1 %45, label %32, label %46, !llvm.loop !50

46:                                               ; preds = %32, %22
  %47 = phi i32 [ %26, %22 ], [ %42, %32 ]
  %48 = icmp ugt i32 %47, 429496729
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = icmp eq i32 %47, 429496729
  %51 = icmp ugt i32 %27, 5
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = mul nuw i32 %47, 10
  %55 = add i32 %54, %27
  br label %56

56:                                               ; preds = %49, %46, %53
  %57 = phi i32 [ %55, %53 ], [ undef, %46 ], [ undef, %49 ]
  %58 = phi i1 [ false, %53 ], [ true, %46 ], [ true, %49 ]
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %2, %7, %10, %16
  %60 = tail call ptr @decContextSetStatus(ptr noundef %1, i32 noundef 128) #19
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i32 [ 0, %59 ], [ %57, %56 ]
  ret i32 %62
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberToString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #5 !prof !34 {
  tail call fastcc void @decToString(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0)
  ret ptr %1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decToString(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #5 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds i8, ptr %0, i64 10
  %7 = load i32, ptr %0, align 4, !tbaa !41
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = zext i8 %12 to i32
  br label %17

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %7, 2
  %16 = udiv i32 %15, 3
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %13, %9 ], [ %16, %14 ]
  %19 = shl nuw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %20, 8
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %24 = load i8, ptr %23, align 4, !tbaa !35
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  store i8 45, ptr %1, align 1, !tbaa !51
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi ptr [ %27, %26 ], [ %1, %17 ]
  %30 = load i8, ptr %23, align 4, !tbaa !35
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 112
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = and i32 %31, 64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  store i32 6712905, ptr %29, align 1
  %38 = getelementptr inbounds i8, ptr %29, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %38, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false) #19
  br label %446

39:                                               ; preds = %34
  %40 = and i32 %31, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  store i8 115, ptr %29, align 1, !tbaa !51
  %43 = getelementptr inbounds i8, ptr %29, i64 1
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ %29, %39 ]
  store i32 5136718, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %45, i64 3
  %47 = icmp eq i32 %5, 0
  br i1 %47, label %48, label %446

48:                                               ; preds = %44
  %49 = load i16, ptr %6, align 2, !tbaa !42
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 4, !tbaa !41
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %446, label %54

54:                                               ; preds = %48, %51, %28
  %55 = phi ptr [ %46, %51 ], [ %46, %48 ], [ %29, %28 ]
  %56 = load i32, ptr %0, align 4, !tbaa !41
  %57 = icmp slt i32 %56, 50
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !51
  %62 = zext i8 %61 to i32
  br label %66

63:                                               ; preds = %54
  %64 = add nuw nsw i32 %56, 2
  %65 = udiv i32 %64, 3
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %62, %58 ], [ %65, %63 ]
  %68 = mul i32 %67, -3
  %69 = add i32 %56, 2
  %70 = add i32 %69, %68
  %71 = icmp eq i32 %5, 0
  br i1 %71, label %72, label %135

72:                                               ; preds = %66
  %73 = icmp eq i32 %18, 0
  br i1 %73, label %133, label %74

74:                                               ; preds = %72, %129
  %75 = phi i64 [ %131, %129 ], [ %21, %72 ]
  %76 = phi ptr [ %130, %129 ], [ %55, %72 ]
  %77 = phi i32 [ 2, %129 ], [ %70, %72 ]
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %129

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %0, i64 %75
  %81 = load i16, ptr %80, align 2, !tbaa !42
  %82 = zext i16 %81 to i32
  %83 = zext nneg i32 %77 to i64
  br label %84

84:                                               ; preds = %79, %124
  %85 = phi i64 [ %83, %79 ], [ %127, %124 ]
  %86 = phi i32 [ %82, %79 ], [ %125, %124 ]
  %87 = phi ptr [ %76, %79 ], [ %126, %124 ]
  store i8 48, ptr %87, align 1, !tbaa !51
  %88 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %85
  %89 = load i32, ptr %88, align 4, !tbaa !48
  %90 = shl i32 %89, 1
  %91 = icmp ugt i32 %86, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  %93 = shl i32 %89, 3
  %94 = icmp ult i32 %86, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = sub i32 %86, %93
  store i8 56, ptr %87, align 1, !tbaa !51
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %96, %95 ], [ %86, %92 ]
  %99 = lshr exact i32 %93, 1
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = sub i32 %98, %99
  %103 = load i8, ptr %87, align 1, !tbaa !51
  %104 = add i8 %103, 4
  store i8 %104, ptr %87, align 1, !tbaa !51
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i32 [ %102, %101 ], [ %98, %97 ]
  %107 = lshr exact i32 %93, 2
  br label %108

108:                                              ; preds = %105, %84
  %109 = phi i32 [ %106, %105 ], [ %86, %84 ]
  %110 = phi i32 [ %107, %105 ], [ %90, %84 ]
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = sub i32 %109, %110
  %114 = load i8, ptr %87, align 1, !tbaa !51
  %115 = add i8 %114, 2
  store i8 %115, ptr %87, align 1, !tbaa !51
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %113, %112 ], [ %109, %108 ]
  %118 = lshr i32 %110, 1
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = sub i32 %117, %118
  %122 = load i8, ptr %87, align 1, !tbaa !51
  %123 = add i8 %122, 1
  store i8 %123, ptr %87, align 1, !tbaa !51
  br label %124

124:                                              ; preds = %116, %120
  %125 = phi i32 [ %121, %120 ], [ %117, %116 ]
  %126 = getelementptr inbounds i8, ptr %87, i64 1
  %127 = add nsw i64 %85, -1
  %128 = icmp sgt i64 %85, 0
  br i1 %128, label %84, label %129, !llvm.loop !52

129:                                              ; preds = %124, %74
  %130 = phi ptr [ %76, %74 ], [ %126, %124 ]
  %131 = add nsw i64 %75, -2
  %132 = icmp slt i64 %75, 12
  br i1 %132, label %133, label %74, !llvm.loop !53

133:                                              ; preds = %129, %72
  %134 = phi ptr [ %55, %72 ], [ %130, %129 ]
  store i8 0, ptr %134, align 1, !tbaa !51
  br label %446

135:                                              ; preds = %66
  %136 = add nsw i32 %56, %5
  %137 = icmp sgt i32 %5, 0
  %138 = icmp slt i32 %136, -5
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %135
  %141 = add nsw i32 %136, -1
  %142 = icmp ne i8 %2, 0
  %143 = icmp ne i32 %141, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %173

145:                                              ; preds = %140
  %146 = icmp slt i32 %136, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %145
  %148 = sub nsw i32 1, %136
  %149 = srem i32 %148, 3
  %150 = icmp eq i32 %149, 0
  %151 = sub nsw i32 3, %149
  %152 = select i1 %150, i32 0, i32 %151
  br label %155

153:                                              ; preds = %145
  %154 = urem i32 %141, 3
  br label %155

155:                                              ; preds = %147, %153
  %156 = phi i32 [ %154, %153 ], [ %152, %147 ]
  %157 = sub nsw i32 %141, %156
  %158 = load i16, ptr %6, align 2, !tbaa !42
  %159 = icmp eq i16 %158, 0
  %160 = icmp eq i32 %56, 1
  %161 = and i1 %160, %159
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i8, ptr %23, align 4, !tbaa !35
  %164 = and i8 %163, 112
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162, %155
  %167 = add nuw nsw i32 %156, 1
  br label %173

168:                                              ; preds = %162
  %169 = icmp eq i32 %156, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %168
  %171 = add nsw i32 %157, 3
  %172 = add nsw i32 %156, -2
  br label %173

173:                                              ; preds = %166, %170, %168, %140, %135
  %174 = phi i32 [ 1, %140 ], [ %136, %135 ], [ %172, %170 ], [ 1, %168 ], [ %167, %166 ]
  %175 = phi i32 [ %141, %140 ], [ 0, %135 ], [ %171, %170 ], [ %157, %168 ], [ %157, %166 ]
  %176 = load i16, ptr %22, align 2, !tbaa !42
  %177 = zext i16 %176 to i32
  %178 = icmp sgt i32 %174, 0
  br i1 %178, label %179, label %313

179:                                              ; preds = %173, %234
  %180 = phi i32 [ %235, %234 ], [ %177, %173 ]
  %181 = phi i64 [ %195, %234 ], [ %21, %173 ]
  %182 = phi ptr [ %237, %234 ], [ %55, %173 ]
  %183 = phi i32 [ %238, %234 ], [ %70, %173 ]
  %184 = phi i32 [ %236, %234 ], [ %174, %173 ]
  %185 = icmp slt i32 %183, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = icmp eq i64 %181, 10
  br i1 %187, label %240, label %188

188:                                              ; preds = %186
  %189 = add nsw i64 %181, -2
  %190 = getelementptr inbounds i8, ptr %0, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !42
  %192 = zext i16 %191 to i32
  br label %193

193:                                              ; preds = %188, %179
  %194 = phi i32 [ 2, %188 ], [ %183, %179 ]
  %195 = phi i64 [ %189, %188 ], [ %181, %179 ]
  %196 = phi i32 [ %192, %188 ], [ %180, %179 ]
  store i8 48, ptr %182, align 1, !tbaa !51
  %197 = zext nneg i32 %194 to i64
  %198 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !48
  %200 = shl i32 %199, 1
  %201 = icmp ugt i32 %196, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %193
  %203 = shl i32 %199, 3
  %204 = icmp ult i32 %196, %203
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = sub i32 %196, %203
  store i8 56, ptr %182, align 1, !tbaa !51
  br label %207

207:                                              ; preds = %205, %202
  %208 = phi i32 [ %206, %205 ], [ %196, %202 ]
  %209 = lshr exact i32 %203, 1
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = sub i32 %208, %209
  %213 = load i8, ptr %182, align 1, !tbaa !51
  %214 = add i8 %213, 4
  store i8 %214, ptr %182, align 1, !tbaa !51
  br label %215

215:                                              ; preds = %211, %207
  %216 = phi i32 [ %212, %211 ], [ %208, %207 ]
  %217 = lshr exact i32 %203, 2
  br label %218

218:                                              ; preds = %215, %193
  %219 = phi i32 [ %216, %215 ], [ %196, %193 ]
  %220 = phi i32 [ %217, %215 ], [ %200, %193 ]
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = sub i32 %219, %220
  %224 = load i8, ptr %182, align 1, !tbaa !51
  %225 = add i8 %224, 2
  store i8 %225, ptr %182, align 1, !tbaa !51
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %223, %222 ], [ %219, %218 ]
  %228 = lshr i32 %220, 1
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = sub i32 %227, %228
  %232 = load i8, ptr %182, align 1, !tbaa !51
  %233 = add i8 %232, 1
  store i8 %233, ptr %182, align 1, !tbaa !51
  br label %234

234:                                              ; preds = %226, %230
  %235 = phi i32 [ %231, %230 ], [ %227, %226 ]
  %236 = add nsw i32 %184, -1
  %237 = getelementptr inbounds i8, ptr %182, i64 1
  %238 = add nsw i32 %194, -1
  %239 = icmp sgt i32 %184, 1
  br i1 %239, label %179, label %240, !llvm.loop !54

240:                                              ; preds = %186, %234
  %241 = phi i32 [ %184, %186 ], [ 0, %234 ]
  %242 = phi i32 [ %183, %186 ], [ %238, %234 ]
  %243 = phi ptr [ %182, %186 ], [ %237, %234 ]
  %244 = phi i64 [ %181, %186 ], [ %195, %234 ]
  %245 = phi i32 [ %180, %186 ], [ %235, %234 ]
  %246 = load i32, ptr %0, align 4, !tbaa !41
  %247 = icmp slt i32 %174, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %240
  %249 = icmp sgt i32 %241, 0
  br i1 %249, label %250, label %383

250:                                              ; preds = %248
  %251 = zext nneg i32 %241 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %243, i8 48, i64 %251, i1 false), !tbaa !51
  %252 = zext nneg i32 %241 to i64
  %253 = getelementptr i8, ptr %243, i64 %252
  br label %383

254:                                              ; preds = %240
  store i8 46, ptr %243, align 1, !tbaa !51
  br label %255

255:                                              ; preds = %310, %254
  %256 = phi i32 [ %242, %254 ], [ %312, %310 ]
  %257 = phi ptr [ %243, %254 ], [ %260, %310 ]
  %258 = phi i64 [ %244, %254 ], [ %271, %310 ]
  %259 = phi i32 [ %245, %254 ], [ %311, %310 ]
  %260 = getelementptr inbounds i8, ptr %257, i64 1
  %261 = icmp slt i32 %256, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %255
  %263 = icmp eq i64 %258, 10
  br i1 %263, label %383, label %264

264:                                              ; preds = %262
  %265 = add nsw i64 %258, -2
  %266 = getelementptr inbounds i8, ptr %0, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !42
  %268 = zext i16 %267 to i32
  br label %269

269:                                              ; preds = %264, %255
  %270 = phi i32 [ 2, %264 ], [ %256, %255 ]
  %271 = phi i64 [ %265, %264 ], [ %258, %255 ]
  %272 = phi i32 [ %268, %264 ], [ %259, %255 ]
  store i8 48, ptr %260, align 1, !tbaa !51
  %273 = zext nneg i32 %270 to i64
  %274 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !48
  %276 = shl i32 %275, 1
  %277 = icmp ugt i32 %272, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %269
  %279 = shl i32 %275, 3
  %280 = icmp ult i32 %272, %279
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = sub i32 %272, %279
  store i8 56, ptr %260, align 1, !tbaa !51
  br label %283

283:                                              ; preds = %281, %278
  %284 = phi i32 [ %282, %281 ], [ %272, %278 ]
  %285 = lshr exact i32 %279, 1
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = sub i32 %284, %285
  %289 = load i8, ptr %260, align 1, !tbaa !51
  %290 = add i8 %289, 4
  store i8 %290, ptr %260, align 1, !tbaa !51
  br label %291

291:                                              ; preds = %287, %283
  %292 = phi i32 [ %288, %287 ], [ %284, %283 ]
  %293 = lshr exact i32 %279, 2
  br label %294

294:                                              ; preds = %291, %269
  %295 = phi i32 [ %292, %291 ], [ %272, %269 ]
  %296 = phi i32 [ %293, %291 ], [ %276, %269 ]
  %297 = icmp ult i32 %295, %296
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = sub i32 %295, %296
  %300 = load i8, ptr %260, align 1, !tbaa !51
  %301 = add i8 %300, 2
  store i8 %301, ptr %260, align 1, !tbaa !51
  br label %302

302:                                              ; preds = %298, %294
  %303 = phi i32 [ %299, %298 ], [ %295, %294 ]
  %304 = lshr i32 %296, 1
  %305 = icmp ult i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = sub i32 %303, %304
  %308 = load i8, ptr %260, align 1, !tbaa !51
  %309 = add i8 %308, 1
  store i8 %309, ptr %260, align 1, !tbaa !51
  br label %310

310:                                              ; preds = %302, %306
  %311 = phi i32 [ %307, %306 ], [ %303, %302 ]
  %312 = add nsw i32 %270, -1
  br label %255, !llvm.loop !55

313:                                              ; preds = %173
  store i8 48, ptr %55, align 1, !tbaa !51
  %314 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 46, ptr %314, align 1, !tbaa !51
  %315 = getelementptr i8, ptr %55, i64 2
  %316 = icmp slt i32 %174, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = sub i32 0, %174
  %319 = zext i32 %318 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %315, i8 48, i64 %319, i1 false), !tbaa !51
  %320 = sub i32 2, %174
  %321 = zext i32 %320 to i64
  %322 = getelementptr i8, ptr %55, i64 %321
  br label %323

323:                                              ; preds = %317, %313
  %324 = phi ptr [ %315, %313 ], [ %322, %317 ]
  br label %325

325:                                              ; preds = %323, %379
  %326 = phi i32 [ %382, %379 ], [ %70, %323 ]
  %327 = phi ptr [ %381, %379 ], [ %324, %323 ]
  %328 = phi i64 [ %340, %379 ], [ %21, %323 ]
  %329 = phi i32 [ %380, %379 ], [ %177, %323 ]
  %330 = icmp slt i32 %326, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %325
  %332 = icmp eq i64 %328, 10
  br i1 %332, label %383, label %333

333:                                              ; preds = %331
  %334 = add nsw i64 %328, -2
  %335 = getelementptr inbounds i8, ptr %0, i64 %334
  %336 = load i16, ptr %335, align 2, !tbaa !42
  %337 = zext i16 %336 to i32
  br label %338

338:                                              ; preds = %333, %325
  %339 = phi i32 [ 2, %333 ], [ %326, %325 ]
  %340 = phi i64 [ %334, %333 ], [ %328, %325 ]
  %341 = phi i32 [ %337, %333 ], [ %329, %325 ]
  store i8 48, ptr %327, align 1, !tbaa !51
  %342 = zext nneg i32 %339 to i64
  %343 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !48
  %345 = shl i32 %344, 1
  %346 = icmp ugt i32 %341, %345
  br i1 %346, label %347, label %363

347:                                              ; preds = %338
  %348 = shl i32 %344, 3
  %349 = icmp ult i32 %341, %348
  br i1 %349, label %352, label %350

350:                                              ; preds = %347
  %351 = sub i32 %341, %348
  store i8 56, ptr %327, align 1, !tbaa !51
  br label %352

352:                                              ; preds = %350, %347
  %353 = phi i32 [ %351, %350 ], [ %341, %347 ]
  %354 = lshr exact i32 %348, 1
  %355 = icmp ult i32 %353, %354
  br i1 %355, label %360, label %356

356:                                              ; preds = %352
  %357 = sub i32 %353, %354
  %358 = load i8, ptr %327, align 1, !tbaa !51
  %359 = add i8 %358, 4
  store i8 %359, ptr %327, align 1, !tbaa !51
  br label %360

360:                                              ; preds = %356, %352
  %361 = phi i32 [ %357, %356 ], [ %353, %352 ]
  %362 = lshr exact i32 %348, 2
  br label %363

363:                                              ; preds = %360, %338
  %364 = phi i32 [ %361, %360 ], [ %341, %338 ]
  %365 = phi i32 [ %362, %360 ], [ %345, %338 ]
  %366 = icmp ult i32 %364, %365
  br i1 %366, label %371, label %367

367:                                              ; preds = %363
  %368 = sub i32 %364, %365
  %369 = load i8, ptr %327, align 1, !tbaa !51
  %370 = add i8 %369, 2
  store i8 %370, ptr %327, align 1, !tbaa !51
  br label %371

371:                                              ; preds = %367, %363
  %372 = phi i32 [ %368, %367 ], [ %364, %363 ]
  %373 = lshr i32 %365, 1
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %379, label %375

375:                                              ; preds = %371
  %376 = sub i32 %372, %373
  %377 = load i8, ptr %327, align 1, !tbaa !51
  %378 = add i8 %377, 1
  store i8 %378, ptr %327, align 1, !tbaa !51
  br label %379

379:                                              ; preds = %371, %375
  %380 = phi i32 [ %376, %375 ], [ %372, %371 ]
  %381 = getelementptr inbounds i8, ptr %327, i64 1
  %382 = add nsw i32 %339, -1
  br label %325, !llvm.loop !56

383:                                              ; preds = %331, %262, %250, %248
  %384 = phi ptr [ %243, %248 ], [ %253, %250 ], [ %260, %262 ], [ %327, %331 ]
  %385 = icmp eq i32 %175, 0
  br i1 %385, label %444, label %386

386:                                              ; preds = %383
  store i8 69, ptr %384, align 1, !tbaa !51
  %387 = getelementptr inbounds i8, ptr %384, i64 1
  store i8 43, ptr %387, align 1, !tbaa !51
  %388 = getelementptr inbounds i8, ptr %384, i64 2
  %389 = icmp slt i32 %175, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  store i8 45, ptr %387, align 1, !tbaa !51
  %391 = sub nsw i32 0, %175
  br label %392

392:                                              ; preds = %390, %386
  %393 = phi i32 [ %175, %386 ], [ %391, %390 ]
  br label %394

394:                                              ; preds = %392, %435
  %395 = phi i64 [ %442, %435 ], [ 9, %392 ]
  %396 = phi i1 [ %439, %435 ], [ false, %392 ]
  %397 = phi i32 [ %436, %435 ], [ %393, %392 ]
  %398 = phi ptr [ %441, %435 ], [ %388, %392 ]
  store i8 48, ptr %398, align 1, !tbaa !51
  %399 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %395
  %400 = load i32, ptr %399, align 4, !tbaa !48
  %401 = shl i32 %400, 1
  %402 = icmp ugt i32 %397, %401
  br i1 %402, label %403, label %419

403:                                              ; preds = %394
  %404 = shl i32 %400, 3
  %405 = icmp ult i32 %397, %404
  br i1 %405, label %408, label %406

406:                                              ; preds = %403
  %407 = sub i32 %397, %404
  store i8 56, ptr %398, align 1, !tbaa !51
  br label %408

408:                                              ; preds = %406, %403
  %409 = phi i32 [ %407, %406 ], [ %397, %403 ]
  %410 = lshr exact i32 %404, 1
  %411 = icmp ult i32 %409, %410
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = sub i32 %409, %410
  %414 = load i8, ptr %398, align 1, !tbaa !51
  %415 = add i8 %414, 4
  store i8 %415, ptr %398, align 1, !tbaa !51
  br label %416

416:                                              ; preds = %412, %408
  %417 = phi i32 [ %413, %412 ], [ %409, %408 ]
  %418 = lshr exact i32 %404, 2
  br label %419

419:                                              ; preds = %416, %394
  %420 = phi i32 [ %417, %416 ], [ %397, %394 ]
  %421 = phi i32 [ %418, %416 ], [ %401, %394 ]
  %422 = icmp ult i32 %420, %421
  br i1 %422, label %427, label %423

423:                                              ; preds = %419
  %424 = sub i32 %420, %421
  %425 = load i8, ptr %398, align 1, !tbaa !51
  %426 = add i8 %425, 2
  store i8 %426, ptr %398, align 1, !tbaa !51
  br label %427

427:                                              ; preds = %423, %419
  %428 = phi i32 [ %424, %423 ], [ %420, %419 ]
  %429 = lshr i32 %421, 1
  %430 = icmp ult i32 %428, %429
  br i1 %430, label %435, label %431

431:                                              ; preds = %427
  %432 = sub i32 %428, %429
  %433 = load i8, ptr %398, align 1, !tbaa !51
  %434 = add i8 %433, 1
  store i8 %434, ptr %398, align 1, !tbaa !51
  br label %435

435:                                              ; preds = %431, %427
  %436 = phi i32 [ %432, %431 ], [ %428, %427 ]
  %437 = load i8, ptr %398, align 1, !tbaa !51
  %438 = icmp ne i8 %437, 48
  %439 = or i1 %396, %438
  %440 = zext i1 %439 to i64
  %441 = getelementptr inbounds i8, ptr %398, i64 %440
  %442 = add nsw i64 %395, -1
  %443 = icmp eq i64 %395, 0
  br i1 %443, label %444, label %394, !llvm.loop !57

444:                                              ; preds = %435, %383
  %445 = phi ptr [ %384, %383 ], [ %441, %435 ]
  store i8 0, ptr %445, align 1, !tbaa !51
  br label %446

446:                                              ; preds = %44, %51, %444, %133, %37
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberToEngString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #5 !prof !34 {
  tail call fastcc void @decToString(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberFromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca [15 x i16], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  br label %7

7:                                                ; preds = %34, %3
  %8 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %9 = phi ptr [ null, %3 ], [ %36, %34 ]
  %10 = phi ptr [ %1, %3 ], [ %37, %34 ]
  %11 = phi ptr [ null, %3 ], [ %38, %34 ]
  %12 = phi ptr [ %1, %3 ], [ %40, %34 ]
  %13 = phi i8 [ 0, %3 ], [ %39, %34 ]
  %14 = load i8, ptr %12, align 1, !tbaa !51
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
  br label %7, !llvm.loop !58

41:                                               ; preds = %29, %27
  %42 = icmp eq ptr %11, null
  br i1 %42, label %43, label %136

43:                                               ; preds = %41
  store i32 1, ptr %6, align 4, !tbaa !48
  %44 = icmp eq i8 %14, 0
  %45 = icmp ne ptr %9, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %322, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %48, align 4, !tbaa !35
  %49 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %49, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %50 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %50, align 2, !tbaa !42
  br label %51

51:                                               ; preds = %63, %47
  %52 = phi ptr [ %12, %47 ], [ %64, %63 ]
  %53 = phi ptr [ @.str, %47 ], [ %65, %63 ]
  %54 = phi ptr [ @.str.1, %47 ], [ %66, %63 ]
  %55 = load i8, ptr %52, align 1, !tbaa !51
  %56 = load i8, ptr %53, align 1, !tbaa !51
  %57 = icmp eq i8 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i8, ptr %54, align 1, !tbaa !51
  %60 = icmp eq i8 %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %51
  %62 = icmp eq i8 %55, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, ptr %52, i64 1
  %65 = getelementptr inbounds i8, ptr %53, i64 1
  %66 = getelementptr inbounds i8, ptr %54, i64 1
  br label %51, !llvm.loop !59

67:                                               ; preds = %58, %79
  %68 = phi ptr [ %80, %79 ], [ %12, %58 ]
  %69 = phi ptr [ %81, %79 ], [ @.str.2, %58 ]
  %70 = phi ptr [ %82, %79 ], [ @.str.3, %58 ]
  %71 = load i8, ptr %68, align 1, !tbaa !51
  %72 = load i8, ptr %69, align 1, !tbaa !51
  %73 = icmp eq i8 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i8, ptr %70, align 1, !tbaa !51
  %76 = icmp eq i8 %71, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %74, %67
  %78 = icmp eq i8 %71, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %68, i64 1
  %81 = getelementptr inbounds i8, ptr %69, i64 1
  %82 = getelementptr inbounds i8, ptr %70, i64 1
  br label %67, !llvm.loop !59

83:                                               ; preds = %61, %77
  %84 = or i8 %13, 64
  store i8 %84, ptr %48, align 4, !tbaa !35
  store i32 0, ptr %6, align 4, !tbaa !48
  br label %322

85:                                               ; preds = %74
  %86 = or i8 %13, 32
  store i8 %86, ptr %48, align 4, !tbaa !35
  %87 = load i8, ptr %12, align 1, !tbaa !51
  switch i8 %87, label %91 [
    i8 115, label %88
    i8 83, label %88
  ]

88:                                               ; preds = %85, %85
  %89 = getelementptr inbounds i8, ptr %12, i64 1
  %90 = or i8 %13, 16
  store i8 %90, ptr %48, align 4, !tbaa !35
  br label %91

91:                                               ; preds = %85, %88
  %92 = phi ptr [ %89, %88 ], [ %12, %85 ]
  %93 = load i8, ptr %92, align 1, !tbaa !51
  switch i8 %93, label %322 [
    i8 110, label %94
    i8 78, label %94
  ]

94:                                               ; preds = %91, %91
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !51
  switch i8 %96, label %322 [
    i8 97, label %97
    i8 65, label %97
  ]

97:                                               ; preds = %94, %94
  %98 = getelementptr inbounds i8, ptr %92, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !51
  switch i8 %99, label %322 [
    i8 110, label %100
    i8 78, label %100
  ]

100:                                              ; preds = %97, %97
  %101 = getelementptr inbounds i8, ptr %92, i64 3
  br label %102

102:                                              ; preds = %109, %100
  %103 = phi ptr [ %101, %100 ], [ %110, %109 ]
  %104 = load i8, ptr %103, align 1, !tbaa !51
  switch i8 %104, label %105 [
    i8 48, label %109
    i8 0, label %111
  ]

105:                                              ; preds = %102
  %106 = load i8, ptr %103, align 1, !tbaa !51
  %107 = add i8 %106, -58
  %108 = icmp ult i8 %107, -10
  br i1 %108, label %120, label %112

109:                                              ; preds = %102
  %110 = getelementptr inbounds i8, ptr %103, i64 1
  br label %102, !llvm.loop !60

111:                                              ; preds = %102
  store i32 0, ptr %6, align 4, !tbaa !48
  br label %322

112:                                              ; preds = %105, %112
  %113 = phi ptr [ %115, %112 ], [ %103, %105 ]
  %114 = phi i32 [ %116, %112 ], [ %8, %105 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 1
  %116 = add nsw i32 %114, 1
  %117 = load i8, ptr %115, align 1, !tbaa !51
  %118 = add i8 %117, -58
  %119 = icmp ult i8 %118, -10
  br i1 %119, label %120, label %112, !llvm.loop !61

120:                                              ; preds = %112, %105
  %121 = phi i32 [ %8, %105 ], [ %116, %112 ]
  %122 = phi ptr [ null, %105 ], [ %113, %112 ]
  %123 = phi i8 [ %106, %105 ], [ %117, %112 ]
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %322

125:                                              ; preds = %120
  %126 = load i32, ptr %2, align 4, !tbaa !62
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 6
  %130 = load i8, ptr %129, align 4, !tbaa !64
  %131 = icmp ne i8 %130, 0
  %132 = icmp sgt i32 %121, %126
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %322, label %134

134:                                              ; preds = %128, %125
  store i32 0, ptr %6, align 4, !tbaa !48
  %135 = load i8, ptr %48, align 4, !tbaa !35
  br label %191

136:                                              ; preds = %41
  %137 = icmp eq i8 %14, 0
  br i1 %137, label %191, label %138

138:                                              ; preds = %136
  store i32 1, ptr %6, align 4, !tbaa !48
  switch i8 %14, label %188 [
    i8 101, label %139
    i8 69, label %139
  ]

139:                                              ; preds = %138, %138
  %140 = getelementptr inbounds i8, ptr %12, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !51
  %142 = icmp eq i8 %141, 45
  %143 = getelementptr inbounds i8, ptr %12, i64 2
  %144 = icmp eq i8 %141, 43
  %145 = or i1 %142, %144
  %146 = select i1 %145, ptr %143, ptr %140
  %147 = load i8, ptr %146, align 1, !tbaa !51
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %188, label %149

149:                                              ; preds = %139, %153
  %150 = phi ptr [ %154, %153 ], [ %146, %139 ]
  %151 = load i8, ptr %150, align 1, !tbaa !51
  %152 = icmp eq i8 %151, 48
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %150, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !51
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %149, !llvm.loop !65

157:                                              ; preds = %153, %149
  %158 = load i8, ptr %150, align 1, !tbaa !51
  %159 = add i8 %158, -58
  %160 = icmp ult i8 %159, -10
  br i1 %160, label %174, label %161

161:                                              ; preds = %157, %161
  %162 = phi i8 [ %171, %161 ], [ %158, %157 ]
  %163 = phi i32 [ %168, %161 ], [ 0, %157 ]
  %164 = phi i64 [ %169, %161 ], [ 0, %157 ]
  %165 = zext nneg i8 %162 to i32
  %166 = mul i32 %163, 10
  %167 = add i32 %166, -48
  %168 = add i32 %167, %165
  %169 = add nuw nsw i64 %164, 1
  %170 = getelementptr inbounds i8, ptr %150, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !51
  %172 = add i8 %171, -58
  %173 = icmp ult i8 %172, -10
  br i1 %173, label %174, label %161, !llvm.loop !66

174:                                              ; preds = %161, %157
  %175 = phi i64 [ 0, %157 ], [ %169, %161 ]
  %176 = phi i32 [ 0, %157 ], [ %168, %161 ]
  %177 = phi i8 [ %158, %157 ], [ %171, %161 ]
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = icmp ult i64 %175, 10
  %181 = icmp ne i64 %175, 10
  %182 = icmp sgt i8 %151, 49
  %183 = or i1 %182, %181
  %184 = select i1 %183, i32 1999999998, i32 %176
  %185 = select i1 %180, i32 %176, i32 %184
  %186 = sub nsw i32 0, %185
  %187 = select i1 %142, i32 %186, i32 %185
  store i32 0, ptr %6, align 4, !tbaa !48
  br label %188

188:                                              ; preds = %139, %174, %138, %179
  %189 = phi i1 [ true, %179 ], [ false, %138 ], [ false, %174 ], [ false, %139 ]
  %190 = phi i32 [ %187, %179 ], [ 0, %138 ], [ %176, %174 ], [ 0, %139 ]
  br i1 %189, label %191, label %322

191:                                              ; preds = %188, %136, %134
  %192 = phi i32 [ %121, %134 ], [ %8, %188 ], [ %8, %136 ]
  %193 = phi ptr [ %103, %134 ], [ %10, %188 ], [ %10, %136 ]
  %194 = phi ptr [ %122, %134 ], [ %11, %188 ], [ %11, %136 ]
  %195 = phi i8 [ %135, %134 ], [ %13, %188 ], [ %13, %136 ]
  %196 = phi i32 [ 0, %134 ], [ %190, %188 ], [ 0, %136 ]
  %197 = load i8, ptr %193, align 1, !tbaa !51
  %198 = icmp eq i8 %197, 48
  %199 = icmp ult ptr %193, %194
  %200 = and i1 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %191
  %202 = ptrtoint ptr %193 to i64
  %203 = ptrtoint ptr %194 to i64
  %204 = sub i64 %203, %202
  %205 = getelementptr i8, ptr %193, i64 %204
  br label %206

206:                                              ; preds = %201, %212
  %207 = phi ptr [ %214, %212 ], [ %193, %201 ]
  %208 = phi i32 [ %213, %212 ], [ %192, %201 ]
  %209 = load i8, ptr %207, align 1, !tbaa !51
  switch i8 %209, label %216 [
    i8 46, label %212
    i8 48, label %210
  ]

210:                                              ; preds = %206
  %211 = add nsw i32 %208, -1
  br label %212

212:                                              ; preds = %206, %210
  %213 = phi i32 [ %208, %206 ], [ %211, %210 ]
  %214 = getelementptr i8, ptr %207, i64 1
  %215 = icmp eq ptr %214, %205
  br i1 %215, label %216, label %206, !llvm.loop !67

216:                                              ; preds = %206, %212, %191
  %217 = phi i32 [ %192, %191 ], [ %213, %212 ], [ %208, %206 ]
  %218 = phi ptr [ %193, %191 ], [ %205, %212 ], [ %207, %206 ]
  %219 = icmp ne ptr %9, null
  %220 = icmp ult ptr %9, %194
  %221 = and i1 %219, %220
  %222 = ptrtoint ptr %194 to i64
  %223 = ptrtoint ptr %9 to i64
  %224 = sub i64 %223, %222
  %225 = trunc i64 %224 to i32
  %226 = select i1 %221, i32 %225, i32 0
  %227 = add i32 %226, %196
  %228 = load i32, ptr %2, align 4, !tbaa !62
  %229 = icmp sgt i32 %217, %228
  br i1 %229, label %232, label %230

230:                                              ; preds = %216
  %231 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br label %257

232:                                              ; preds = %216
  %233 = icmp slt i32 %217, 50
  br i1 %233, label %234, label %239

234:                                              ; preds = %232
  %235 = sext i32 %217 to i64
  %236 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !51
  %238 = zext i8 %237 to i32
  br label %242

239:                                              ; preds = %232
  %240 = add nuw nsw i32 %217, 2
  %241 = udiv i32 %240, 3
  br label %242

242:                                              ; preds = %239, %234
  %243 = phi i32 [ %238, %234 ], [ %241, %239 ]
  %244 = shl nuw i32 %243, 1
  %245 = icmp sgt i32 %244, 30
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = zext nneg i32 %244 to i64
  %248 = tail call noalias ptr @malloc(i64 noundef %247) #20
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, ptr %6, align 4, !tbaa !48
  %252 = or i32 %251, 16
  store i32 %252, ptr %6, align 4, !tbaa !48
  br label %253

253:                                              ; preds = %242, %246, %250
  %254 = phi ptr [ %4, %250 ], [ %4, %242 ], [ %248, %246 ]
  %255 = phi ptr [ null, %250 ], [ null, %242 ], [ %248, %246 ]
  %256 = phi i1 [ false, %250 ], [ true, %242 ], [ true, %246 ]
  br i1 %256, label %257, label %322

257:                                              ; preds = %253, %230
  %258 = phi ptr [ %231, %230 ], [ %254, %253 ]
  %259 = phi ptr [ null, %230 ], [ %255, %253 ]
  %260 = icmp slt i32 %217, 50
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = sext i32 %217 to i64
  %263 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !51
  %265 = zext i8 %264 to i32
  br label %269

266:                                              ; preds = %257
  %267 = add nuw nsw i32 %217, 2
  %268 = udiv i32 %267, 3
  br label %269

269:                                              ; preds = %266, %261
  %270 = phi i32 [ %265, %261 ], [ %268, %266 ]
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds i16, ptr %258, i64 %271
  %273 = getelementptr inbounds i16, ptr %272, i64 -1
  %274 = ptrtoint ptr %273 to i64
  %275 = ptrtoint ptr %258 to i64
  %276 = sub i64 %274, %275
  %277 = lshr exact i64 %276, 1
  %278 = trunc i64 %277 to i32
  %279 = mul i32 %278, -3
  %280 = add i32 %279, %217
  br label %281

281:                                              ; preds = %300, %269
  %282 = phi ptr [ %218, %269 ], [ %304, %300 ]
  %283 = phi ptr [ %273, %269 ], [ %301, %300 ]
  %284 = phi i32 [ %280, %269 ], [ %302, %300 ]
  %285 = phi i32 [ 0, %269 ], [ %303, %300 ]
  %286 = load i8, ptr %282, align 1, !tbaa !51
  %287 = icmp eq i8 %286, 46
  br i1 %287, label %300, label %288

288:                                              ; preds = %281
  %289 = sext i8 %286 to i32
  %290 = mul i32 %285, 10
  %291 = add i32 %290, -48
  %292 = add i32 %291, %289
  %293 = icmp eq ptr %282, %194
  br i1 %293, label %305, label %294

294:                                              ; preds = %288
  %295 = add nsw i32 %284, -1
  %296 = icmp sgt i32 %284, 1
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = trunc i32 %292 to i16
  store i16 %298, ptr %283, align 2, !tbaa !42
  %299 = getelementptr inbounds i16, ptr %283, i64 -1
  br label %300

300:                                              ; preds = %294, %281, %297
  %301 = phi ptr [ %283, %281 ], [ %283, %294 ], [ %299, %297 ]
  %302 = phi i32 [ %284, %281 ], [ %295, %294 ], [ 3, %297 ]
  %303 = phi i32 [ %285, %281 ], [ %292, %294 ], [ 0, %297 ]
  %304 = getelementptr inbounds i8, ptr %282, i64 1
  br label %281, !llvm.loop !68

305:                                              ; preds = %288
  %306 = trunc i32 %292 to i16
  store i16 %306, ptr %283, align 2, !tbaa !42
  %307 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %195, ptr %307, align 4, !tbaa !35
  %308 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %227, ptr %308, align 4, !tbaa !40
  store i32 %217, ptr %0, align 4, !tbaa !41
  br i1 %229, label %309, label %310

309:                                              ; preds = %305
  store i32 0, ptr %5, align 4, !tbaa !48
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %258, i32 noundef %217, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %322

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !69
  %313 = sub nsw i32 %312, %217
  %314 = icmp sgt i32 %227, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = add nsw i32 %227, -1
  %317 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !70
  %319 = sub nsw i32 %318, %228
  %320 = icmp sgt i32 %316, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %315, %310
  store i32 0, ptr %5, align 4, !tbaa !48
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %322

322:                                              ; preds = %97, %94, %253, %188, %91, %315, %321, %309, %128, %120, %43, %111, %83
  %323 = phi ptr [ null, %43 ], [ null, %83 ], [ null, %111 ], [ null, %120 ], [ null, %128 ], [ %259, %309 ], [ %259, %321 ], [ %259, %315 ], [ %255, %253 ], [ null, %188 ], [ null, %91 ], [ null, %94 ], [ null, %97 ]
  %324 = icmp eq ptr %323, null
  br i1 %324, label %326, label %325

325:                                              ; preds = %322
  call void @free(ptr noundef %323) #19
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i32, ptr %6, align 4, !tbaa !48
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %344, label %329

329:                                              ; preds = %326
  %330 = and i32 %327, 221
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = and i32 %327, 1073741824
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = and i32 %327, -1073741825
  br label %341

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %338, align 4, !tbaa !35
  %339 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %339, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %340 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %340, align 2, !tbaa !42
  store i8 32, ptr %338, align 4, !tbaa !35
  br label %341

341:                                              ; preds = %329, %335, %337
  %342 = phi i32 [ %336, %335 ], [ %327, %337 ], [ %327, %329 ]
  %343 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %342) #19
  br label %344

344:                                              ; preds = %341, %326
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetCoeff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #5 !prof !34 {
  %7 = load i32, ptr %1, align 4, !tbaa !62
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
  %19 = load i16, ptr %16, align 2, !tbaa !42
  store i16 %19, ptr %17, align 2, !tbaa !42
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  %22 = add nsw i32 %18, -3
  %23 = icmp sgt i32 %18, 3
  br i1 %23, label %15, label %24, !llvm.loop !71

24:                                               ; preds = %15, %13
  store i32 %3, ptr %0, align 4, !tbaa !41
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, ptr %4, align 4, !tbaa !48
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %189, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4, !tbaa !48
  %30 = or i32 %29, 2080
  store i32 %30, ptr %5, align 4, !tbaa !48
  br label %189

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = add nsw i32 %33, %8
  store i32 %34, ptr %32, align 4, !tbaa !40
  %35 = load i32, ptr %5, align 4, !tbaa !48
  %36 = or i32 %35, 2048
  store i32 %36, ptr %5, align 4, !tbaa !48
  %37 = load i32, ptr %4, align 4, !tbaa !48
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, ptr %4, align 4, !tbaa !48
  br label %40

40:                                               ; preds = %39, %31
  %41 = icmp slt i32 %7, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = icmp sgt i32 %8, 3
  br i1 %43, label %67, label %77

44:                                               ; preds = %40
  %45 = load i32, ptr %4, align 4, !tbaa !48
  %46 = icmp slt i32 %45, 1
  %47 = icmp sgt i32 %3, 0
  %48 = and i1 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %55
  %50 = phi ptr [ %56, %55 ], [ %2, %44 ]
  %51 = phi i32 [ %57, %55 ], [ %3, %44 ]
  %52 = load i16, ptr %50, align 2, !tbaa !42
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 1, ptr %4, align 4, !tbaa !48
  br label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds i16, ptr %50, i64 1
  %57 = add nsw i32 %51, -3
  %58 = icmp sgt i32 %51, 3
  br i1 %58, label %49, label %59, !llvm.loop !72

59:                                               ; preds = %55, %54, %44
  %60 = load i32, ptr %4, align 4, !tbaa !48
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4, !tbaa !48
  %64 = or i32 %63, 32
  store i32 %64, ptr %5, align 4, !tbaa !48
  br label %65

65:                                               ; preds = %62, %59
  %66 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %66, align 2, !tbaa !42
  store i32 1, ptr %0, align 4, !tbaa !41
  br label %189

67:                                               ; preds = %42, %73
  %68 = phi i32 [ %75, %73 ], [ 3, %42 ]
  %69 = phi ptr [ %74, %73 ], [ %2, %42 ]
  %70 = load i16, ptr %69, align 2, !tbaa !42
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, ptr %4, align 4, !tbaa !48
  br label %73

73:                                               ; preds = %67, %72
  %74 = getelementptr inbounds i16, ptr %69, i64 1
  %75 = add nuw nsw i32 %68, 3
  %76 = icmp slt i32 %75, %8
  br i1 %76, label %67, label %77, !llvm.loop !73

77:                                               ; preds = %73, %42
  %78 = phi i32 [ 0, %42 ], [ %68, %73 ]
  %79 = phi ptr [ %2, %42 ], [ %74, %73 ]
  %80 = sub nsw i32 %8, %78
  switch i32 %80, label %114 [
    i32 3, label %81
    i32 1, label %111
  ]

81:                                               ; preds = %77
  %82 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 3), align 4, !tbaa !48
  %83 = lshr i32 %82, 1
  %84 = load i16, ptr %79, align 2, !tbaa !42
  %85 = zext i16 %84 to i32
  %86 = and i32 %83, 32767
  %87 = icmp ugt i32 %86, %85
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = icmp ult i32 %86, %85
  br i1 %89, label %95, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr %4, align 4, !tbaa !48
  %92 = add nsw i32 %91, 5
  br label %95

93:                                               ; preds = %81
  %94 = icmp eq i16 %84, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %93, %88, %90
  %96 = phi i32 [ %92, %90 ], [ 7, %88 ], [ 3, %93 ]
  store i32 %96, ptr %4, align 4, !tbaa !48
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i32, ptr %1, align 4, !tbaa !62
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %181, label %100

100:                                              ; preds = %97
  store i32 %98, ptr %0, align 4, !tbaa !41
  %101 = getelementptr %struct.decNumber, ptr %0, i64 0, i32 3
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi ptr [ %79, %100 ], [ %106, %102 ]
  %104 = phi ptr [ %101, %100 ], [ %108, %102 ]
  %105 = phi i32 [ %98, %100 ], [ %109, %102 ]
  %106 = getelementptr inbounds i16, ptr %103, i64 1
  %107 = load i16, ptr %106, align 2, !tbaa !42
  store i16 %107, ptr %104, align 2, !tbaa !42
  %108 = getelementptr inbounds i16, ptr %104, i64 1
  %109 = add nsw i32 %105, -3
  %110 = icmp sgt i32 %105, 3
  br i1 %110, label %102, label %183, !llvm.loop !74

111:                                              ; preds = %77
  %112 = load i16, ptr %79, align 2, !tbaa !42
  %113 = zext i16 %112 to i32
  br label %129

114:                                              ; preds = %77
  %115 = add nsw i32 %80, -1
  %116 = load i16, ptr %79, align 2, !tbaa !42
  %117 = zext i16 %116 to i32
  %118 = lshr i32 %117, %115
  %119 = zext i32 %115 to i64
  %120 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !48
  %122 = mul i32 %118, %121
  %123 = lshr i32 %122, 17
  %124 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !48
  %126 = mul i32 %123, %125
  %127 = icmp eq i32 %126, %117
  br i1 %127, label %129, label %128

128:                                              ; preds = %114
  store i32 1, ptr %4, align 4, !tbaa !48
  br label %129

129:                                              ; preds = %114, %128, %111
  %130 = phi i32 [ %113, %111 ], [ %123, %128 ], [ %123, %114 ]
  %131 = mul nuw nsw i32 %130, 6554
  %132 = lshr i32 %131, 16
  %133 = mul nsw i32 %132, -10
  %134 = add nsw i32 %133, %130
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [10 x i8], ptr @resmap, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !51
  %138 = zext i8 %137 to i32
  %139 = load i32, ptr %4, align 4, !tbaa !48
  %140 = add nsw i32 %139, %138
  store i32 %140, ptr %4, align 4, !tbaa !48
  %141 = load i32, ptr %1, align 4, !tbaa !62
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %181, label %143

143:                                              ; preds = %129
  store i32 %141, ptr %0, align 4, !tbaa !41
  %144 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %145 = sub i32 3, %80
  %146 = trunc i32 %132 to i16
  store i16 %146, ptr %144, align 2, !tbaa !42
  %147 = sub i32 %141, %145
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %183, label %149

149:                                              ; preds = %143
  %150 = zext i32 %80 to i64
  %151 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !48
  %153 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %150
  %154 = load i32, ptr %153, align 4, !tbaa !48
  %155 = zext i32 %145 to i64
  %156 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !48
  br label %163

158:                                              ; preds = %163
  %159 = getelementptr inbounds i16, ptr %167, i64 1
  %160 = trunc i32 %173 to i16
  store i16 %160, ptr %159, align 2, !tbaa !42
  %161 = sub i32 %179, %145
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %183, label %163, !llvm.loop !75

163:                                              ; preds = %149, %158
  %164 = phi i32 [ %147, %149 ], [ %161, %158 ]
  %165 = phi i32 [ %132, %149 ], [ %173, %158 ]
  %166 = phi ptr [ %79, %149 ], [ %168, %158 ]
  %167 = phi ptr [ %144, %149 ], [ %159, %158 ]
  %168 = getelementptr inbounds i16, ptr %166, i64 1
  %169 = load i16, ptr %168, align 2, !tbaa !42
  %170 = zext i16 %169 to i32
  %171 = lshr i32 %170, %80
  %172 = mul i32 %171, %152
  %173 = lshr i32 %172, 17
  %174 = mul i32 %173, %154
  %175 = sub i32 %170, %174
  %176 = mul i32 %175, %157
  %177 = add i32 %176, %165
  %178 = trunc i32 %177 to i16
  store i16 %178, ptr %167, align 2, !tbaa !42
  %179 = sub i32 %164, %80
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %183, label %158

181:                                              ; preds = %129, %97
  %182 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %182, align 2, !tbaa !42
  store i32 1, ptr %0, align 4, !tbaa !41
  br label %183

183:                                              ; preds = %102, %158, %163, %181, %143
  %184 = load i32, ptr %4, align 4, !tbaa !48
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %5, align 4, !tbaa !48
  %188 = or i32 %187, 32
  store i32 %188, ptr %5, align 4, !tbaa !48
  br label %189

189:                                              ; preds = %183, %186, %25, %28, %65
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decFinalize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #3 !prof !34 {
  %5 = alloca %struct.decNumber, align 4
  %6 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = load i32, ptr %0, align 4, !tbaa !41
  %9 = sub nsw i32 %7, %8
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = icmp sgt i32 %12, %10
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %15 = icmp sgt i32 %12, %9
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %74

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %5, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  store i16 1, ptr %20, align 2, !tbaa !42
  store i32 %7, ptr %19, align 4, !tbaa !40
  %21 = call fastcc i32 @decCompare(ptr noundef nonnull %0, ptr noundef nonnull %5, i8 noundef zeroext 1)
  %22 = icmp eq i32 %21, -2147483648
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, ptr %3, align 4, !tbaa !48
  %25 = or i32 %24, 16
  store i32 %25, ptr %3, align 4, !tbaa !48
  br label %74

26:                                               ; preds = %17
  %27 = load i32, ptr %2, align 4, !tbaa !48
  %28 = icmp slt i32 %27, 0
  %29 = icmp eq i32 %21, 0
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %27, ptr noundef %3)
  call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %74

32:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i32, ptr %2, align 4, !tbaa !48
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %34, ptr noundef %3)
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, ptr %11, align 4, !tbaa !40
  %39 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !70
  %41 = load i32, ptr %1, align 4, !tbaa !62
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %37
  %46 = load i32, ptr %0, align 4, !tbaa !41
  %47 = add i32 %40, 1
  %48 = sub i32 %47, %46
  %49 = icmp sgt i32 %38, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %75

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %53 = load i8, ptr %52, align 4, !tbaa !64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = sub nsw i32 %38, %43
  %57 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !42
  %59 = icmp eq i16 %58, 0
  %60 = icmp eq i32 %46, 1
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %64 = load i8, ptr %63, align 4, !tbaa !35
  %65 = and i8 %64, 112
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %55
  %68 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %57, i32 noundef %46, i32 noundef %56)
  store i32 %68, ptr %0, align 4, !tbaa !41
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, ptr %11, align 4, !tbaa !40
  %71 = sub nsw i32 %70, %56
  store i32 %71, ptr %11, align 4, !tbaa !40
  %72 = load i32, ptr %3, align 4, !tbaa !48
  %73 = or i32 %72, 1024
  store i32 %73, ptr %3, align 4, !tbaa !48
  br label %75

74:                                               ; preds = %31, %23, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  br label %75

75:                                               ; preds = %51, %37, %74, %69, %50
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberAbs(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 0, ptr %8, align 2, !tbaa !42
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %10, ptr %7, align 4, !tbaa !40
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !35
  %13 = and i8 %12, -128
  %14 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %13, ptr noundef nonnull %5)
  %15 = load i32, ptr %5, align 4, !tbaa !48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %3
  %18 = and i32 %15, 221
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = and i32 %15, 1073741824
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = and i32 %15, -1073741825
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %26, align 4, !tbaa !35
  %27 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %27, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %28, align 2, !tbaa !42
  store i8 32, ptr %26, align 4, !tbaa !35
  br label %29

29:                                               ; preds = %17, %23, %25
  %30 = phi i32 [ %24, %23 ], [ %15, %25 ], [ %15, %17 ]
  %31 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %30) #19
  br label %32

32:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decAddOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #3 !prof !34 {
  %7 = alloca i32, align 4
  %8 = alloca [31 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %8) #19
  %9 = load i32, ptr %3, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !35
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !35
  %15 = zext i8 %14 to i32
  %16 = xor i8 %14, %4
  %17 = xor i8 %16, %11
  %18 = and i8 %17, -128
  %19 = or i32 %15, %12
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %6
  %23 = and i32 %19, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5)
  br label %566

27:                                               ; preds = %22
  %28 = and i32 %12, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = and i32 %15, 64
  %32 = icmp ne i32 %31, 0
  %33 = icmp ne i8 %18, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, ptr %5, align 4, !tbaa !48
  %37 = or i32 %36, 128
  store i32 %37, ptr %5, align 4, !tbaa !48
  br label %566

38:                                               ; preds = %27
  %39 = xor i8 %14, %4
  br label %40

40:                                               ; preds = %30, %38
  %41 = phi i8 [ %39, %38 ], [ %11, %30 ]
  %42 = and i8 %41, -128
  %43 = or disjoint i8 %42, 64
  %44 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !35
  %45 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %45, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %46 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %46, align 2, !tbaa !42
  store i8 %43, ptr %44, align 4, !tbaa !35
  br label %566

47:                                               ; preds = %6
  %48 = getelementptr inbounds i8, ptr %1, i64 10
  %49 = load i16, ptr %48, align 2, !tbaa !42
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load i32, ptr %1, align 4, !tbaa !41
  %53 = icmp eq i32 %52, 1
  %54 = and i32 %12, 112
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %55, %53
  br i1 %56, label %57, label %109

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !40
  store i32 0, ptr %7, align 4, !tbaa !48
  %60 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %14, ptr %60, align 4, !tbaa !35
  %61 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !40
  %63 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !40
  %64 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %65 = load i32, ptr %2, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %64, i32 noundef %65, ptr noundef nonnull %7, ptr noundef %5)
  %66 = load i8, ptr %60, align 4, !tbaa !35
  %67 = xor i8 %66, %4
  store i8 %67, ptr %60, align 4, !tbaa !35
  %68 = load i32, ptr %63, align 4, !tbaa !40
  %69 = sub nsw i32 %59, %68
  %70 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !42
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %57
  %74 = load i32, ptr %0, align 4, !tbaa !41
  %75 = icmp eq i32 %74, 1
  %76 = and i8 %67, 112
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = icmp slt i32 %69, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i32 %59, ptr %63, align 4, !tbaa !40
  br label %82

82:                                               ; preds = %81, %79
  %83 = icmp eq i8 %18, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !76
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i8 0, ptr %60, align 4, !tbaa !35
  br label %108

89:                                               ; preds = %84
  store i8 -128, ptr %60, align 4, !tbaa !35
  br label %108

90:                                               ; preds = %73, %57
  %91 = icmp slt i32 %69, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %90
  %93 = load i32, ptr %0, align 4, !tbaa !41
  %94 = sub nsw i32 %93, %69
  %95 = load i32, ptr %3, align 4, !tbaa !62
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = sub nsw i32 %93, %95
  %99 = load i32, ptr %5, align 4, !tbaa !48
  %100 = or i32 %99, 2048
  store i32 %100, ptr %5, align 4, !tbaa !48
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i32 [ %98, %97 ], [ %69, %92 ]
  %103 = load i32, ptr %0, align 4, !tbaa !41
  %104 = sub nsw i32 0, %102
  %105 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %70, i32 noundef %103, i32 noundef %104)
  store i32 %105, ptr %0, align 4, !tbaa !41
  %106 = load i32, ptr %63, align 4, !tbaa !40
  %107 = add nsw i32 %106, %102
  store i32 %107, ptr %63, align 4, !tbaa !40
  br label %108

108:                                              ; preds = %90, %101, %82, %89, %88
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  br label %566

109:                                              ; preds = %51, %47
  %110 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !42
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %109
  %114 = load i32, ptr %2, align 4, !tbaa !41
  %115 = icmp eq i32 %114, 1
  %116 = and i8 %14, 112
  %117 = icmp eq i8 %116, 0
  %118 = and i1 %117, %115
  br i1 %118, label %119, label %148

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !40
  store i32 0, ptr %7, align 4, !tbaa !48
  %122 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %11, ptr %122, align 4, !tbaa !35
  %123 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !40
  %125 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %124, ptr %125, align 4, !tbaa !40
  %126 = load i32, ptr %1, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %48, i32 noundef %126, ptr noundef nonnull %7, ptr noundef %5)
  %127 = load i32, ptr %125, align 4, !tbaa !40
  %128 = sub nsw i32 %121, %127
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %119
  %131 = load i32, ptr %0, align 4, !tbaa !41
  %132 = sub nsw i32 %131, %128
  %133 = load i32, ptr %3, align 4, !tbaa !62
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = sub nsw i32 %131, %133
  %137 = load i32, ptr %5, align 4, !tbaa !48
  %138 = or i32 %137, 2048
  store i32 %138, ptr %5, align 4, !tbaa !48
  br label %139

139:                                              ; preds = %135, %130
  %140 = phi i32 [ %136, %135 ], [ %128, %130 ]
  %141 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %142 = load i32, ptr %0, align 4, !tbaa !41
  %143 = sub nsw i32 0, %140
  %144 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %141, i32 noundef %142, i32 noundef %143)
  store i32 %144, ptr %0, align 4, !tbaa !41
  %145 = load i32, ptr %125, align 4, !tbaa !40
  %146 = add nsw i32 %145, %140
  store i32 %146, ptr %125, align 4, !tbaa !40
  br label %147

147:                                              ; preds = %139, %119
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  br label %566

148:                                              ; preds = %113, %109
  %149 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !40
  %151 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !40
  %153 = sub nsw i32 %150, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %306

155:                                              ; preds = %148
  %156 = load i32, ptr %2, align 4, !tbaa !41
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %306

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !69
  %161 = icmp slt i32 %150, %160
  br i1 %161, label %306, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !70
  %165 = sub i32 %164, %9
  %166 = add i32 %165, 1
  %167 = icmp sgt i32 %150, %166
  %168 = icmp sgt i32 %156, %9
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %306, label %170

170:                                              ; preds = %162
  %171 = load i32, ptr %1, align 4, !tbaa !41
  %172 = icmp sgt i32 %171, %9
  br i1 %172, label %306, label %173

173:                                              ; preds = %170
  %174 = zext i16 %49 to i32
  %175 = icmp eq i8 %18, 0
  %176 = zext i16 %111 to i32
  br i1 %175, label %177, label %225

177:                                              ; preds = %173
  %178 = add nuw nsw i32 %176, %174
  %179 = icmp ult i32 %178, 1000
  br i1 %179, label %180, label %306

180:                                              ; preds = %177
  %181 = icmp sgt i32 %171, 2
  br i1 %181, label %187, label %182

182:                                              ; preds = %180
  %183 = sext i32 %171 to i64
  %184 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !48
  %186 = icmp slt i32 %178, %185
  br i1 %186, label %187, label %306

187:                                              ; preds = %182, %180
  %188 = icmp eq ptr %0, %1
  br i1 %188, label %222, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %11, ptr %190, align 4, !tbaa !35
  %191 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %152, ptr %191, align 4, !tbaa !40
  store i32 %171, ptr %0, align 4, !tbaa !41
  %192 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %49, ptr %192, align 2, !tbaa !42
  %193 = load i32, ptr %1, align 4, !tbaa !41
  %194 = icmp sgt i32 %193, 3
  br i1 %194, label %195, label %222

195:                                              ; preds = %189
  %196 = getelementptr %struct.decNumber, ptr %0, i64 1
  %197 = icmp slt i32 %193, 50
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = zext nneg i32 %193 to i64
  %200 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !51
  %202 = zext i8 %201 to i32
  br label %206

203:                                              ; preds = %195
  %204 = add nuw nsw i32 %193, 2
  %205 = udiv i32 %204, 3
  br label %206

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %202, %198 ], [ %205, %203 ]
  %208 = shl nuw i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = getelementptr i8, ptr %1, i64 %209
  %211 = getelementptr i8, ptr %210, i64 10
  %212 = icmp ugt i32 %207, 1
  br i1 %212, label %213, label %222

213:                                              ; preds = %206
  %214 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi ptr [ %220, %215 ], [ %196, %213 ]
  %217 = phi ptr [ %219, %215 ], [ %214, %213 ]
  %218 = load i16, ptr %217, align 2, !tbaa !42
  store i16 %218, ptr %216, align 2, !tbaa !42
  %219 = getelementptr inbounds i16, ptr %217, i64 1
  %220 = getelementptr inbounds i16, ptr %216, i64 1
  %221 = icmp ult ptr %219, %211
  br i1 %221, label %215, label %222, !llvm.loop !77

222:                                              ; preds = %215, %206, %189, %187
  %223 = trunc i32 %178 to i16
  %224 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %223, ptr %224, align 2, !tbaa !42
  br label %566

225:                                              ; preds = %173
  %226 = sub nsw i32 %174, %176
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %306

228:                                              ; preds = %225
  %229 = icmp eq ptr %0, %1
  br i1 %229, label %263, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %11, ptr %231, align 4, !tbaa !35
  %232 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %152, ptr %232, align 4, !tbaa !40
  store i32 %171, ptr %0, align 4, !tbaa !41
  %233 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %49, ptr %233, align 2, !tbaa !42
  %234 = load i32, ptr %1, align 4, !tbaa !41
  %235 = icmp sgt i32 %234, 3
  br i1 %235, label %236, label %263

236:                                              ; preds = %230
  %237 = getelementptr %struct.decNumber, ptr %0, i64 1
  %238 = icmp slt i32 %234, 50
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = zext nneg i32 %234 to i64
  %241 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !51
  %243 = zext i8 %242 to i32
  br label %247

244:                                              ; preds = %236
  %245 = add nuw nsw i32 %234, 2
  %246 = udiv i32 %245, 3
  br label %247

247:                                              ; preds = %244, %239
  %248 = phi i32 [ %243, %239 ], [ %246, %244 ]
  %249 = shl nuw i32 %248, 1
  %250 = zext i32 %249 to i64
  %251 = getelementptr i8, ptr %1, i64 %250
  %252 = getelementptr i8, ptr %251, i64 10
  %253 = icmp ugt i32 %248, 1
  br i1 %253, label %254, label %263

254:                                              ; preds = %247
  %255 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %256

256:                                              ; preds = %254, %256
  %257 = phi ptr [ %261, %256 ], [ %237, %254 ]
  %258 = phi ptr [ %260, %256 ], [ %255, %254 ]
  %259 = load i16, ptr %258, align 2, !tbaa !42
  store i16 %259, ptr %257, align 2, !tbaa !42
  %260 = getelementptr inbounds i16, ptr %258, i64 1
  %261 = getelementptr inbounds i16, ptr %257, i64 1
  %262 = icmp ult ptr %260, %252
  br i1 %262, label %256, label %263, !llvm.loop !77

263:                                              ; preds = %256, %247, %230, %228
  %264 = trunc i32 %226 to i16
  %265 = getelementptr inbounds i8, ptr %0, i64 10
  store i16 %264, ptr %265, align 2, !tbaa !42
  %266 = load i32, ptr %0, align 4, !tbaa !41
  %267 = icmp slt i32 %266, 50
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = sext i32 %266 to i64
  %270 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !51
  %272 = zext i8 %271 to i32
  br label %276

273:                                              ; preds = %263
  %274 = add nuw nsw i32 %266, 2
  %275 = udiv i32 %274, 3
  br label %276

276:                                              ; preds = %273, %268
  %277 = phi i32 [ %272, %268 ], [ %275, %273 ]
  %278 = add nsw i32 %277, -1
  %279 = mul nsw i32 %278, 3
  %280 = add nsw i32 %279, 1
  %281 = icmp eq i32 %277, 0
  br i1 %281, label %304, label %282

282:                                              ; preds = %276
  %283 = sext i32 %278 to i64
  %284 = shl nsw i64 %283, 1
  %285 = add nsw i64 %284, 10
  br label %286

286:                                              ; preds = %282, %294
  %287 = phi i32 [ %295, %294 ], [ %280, %282 ]
  %288 = phi i64 [ %296, %294 ], [ %285, %282 ]
  %289 = getelementptr inbounds i8, ptr %0, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !42
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = icmp eq i32 %287, 1
  br i1 %293, label %304, label %294

294:                                              ; preds = %292
  %295 = add nsw i32 %287, -3
  %296 = add nsw i64 %288, -2
  %297 = icmp slt i64 %288, 12
  br i1 %297, label %304, label %286, !llvm.loop !47

298:                                              ; preds = %286
  %299 = icmp ult i16 %290, 10
  br i1 %299, label %304, label %300

300:                                              ; preds = %298
  %301 = icmp ult i16 %290, 100
  %302 = select i1 %301, i32 1, i32 2
  %303 = add nsw i32 %302, %287
  br label %304

304:                                              ; preds = %292, %294, %276, %298, %300
  %305 = phi i32 [ %287, %298 ], [ %303, %300 ], [ %280, %276 ], [ %295, %294 ], [ 1, %292 ]
  store i32 %305, ptr %0, align 4, !tbaa !41
  br label %566

306:                                              ; preds = %225, %177, %182, %170, %162, %158, %155, %148
  %307 = load i8, ptr %10, align 4, !tbaa !35
  br i1 %154, label %370, label %308

308:                                              ; preds = %306
  %309 = icmp sgt i32 %153, -1
  br i1 %309, label %314, label %310

310:                                              ; preds = %308
  %311 = sub nsw i32 0, %153
  %312 = load i8, ptr %13, align 4, !tbaa !35
  %313 = xor i8 %312, %4
  br label %314

314:                                              ; preds = %310, %308
  %315 = phi i8 [ %313, %310 ], [ %307, %308 ]
  %316 = phi i32 [ %311, %310 ], [ %153, %308 ]
  %317 = phi ptr [ %1, %310 ], [ %2, %308 ]
  %318 = phi ptr [ %2, %310 ], [ %1, %308 ]
  %319 = load i32, ptr %317, align 4, !tbaa !41
  %320 = add nsw i32 %319, %316
  %321 = load i32, ptr %318, align 4, !tbaa !41
  %322 = add i32 %9, 1
  %323 = add i32 %322, %321
  %324 = icmp sgt i32 %320, %323
  br i1 %324, label %325, label %348

325:                                              ; preds = %314
  %326 = sub nsw i32 %9, %319
  %327 = icmp eq i8 %18, 0
  %328 = select i1 %327, i32 1, i32 -1
  store i32 %328, ptr %7, align 4, !tbaa !48
  %329 = getelementptr inbounds %struct.decNumber, ptr %317, i64 0, i32 2
  %330 = load i8, ptr %329, align 4, !tbaa !35
  %331 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %330, ptr %331, align 4, !tbaa !35
  %332 = getelementptr inbounds %struct.decNumber, ptr %317, i64 0, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !40
  %334 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %333, ptr %334, align 4, !tbaa !40
  %335 = getelementptr inbounds %struct.decNumber, ptr %317, i64 0, i32 3
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %335, i32 noundef %319, ptr noundef nonnull %7, ptr noundef %5)
  %336 = icmp sgt i32 %326, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %325
  %338 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %339 = load i32, ptr %0, align 4, !tbaa !41
  %340 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %338, i32 noundef %339, i32 noundef %326)
  store i32 %340, ptr %0, align 4, !tbaa !41
  %341 = load i32, ptr %334, align 4, !tbaa !40
  %342 = sub nsw i32 %341, %326
  store i32 %342, ptr %334, align 4, !tbaa !40
  br label %343

343:                                              ; preds = %337, %325
  br i1 %309, label %344, label %347

344:                                              ; preds = %343
  %345 = load i8, ptr %331, align 4, !tbaa !35
  %346 = xor i8 %345, %4
  store i8 %346, ptr %331, align 4, !tbaa !35
  br label %347

347:                                              ; preds = %344, %343
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  br label %367

348:                                              ; preds = %314
  %349 = icmp slt i32 %316, 49
  br i1 %349, label %350, label %356

350:                                              ; preds = %348
  %351 = add nuw nsw i32 %316, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !51
  %355 = zext i8 %354 to i32
  br label %359

356:                                              ; preds = %348
  %357 = add nuw nsw i32 %316, 3
  %358 = udiv i32 %357, 3
  br label %359

359:                                              ; preds = %356, %350
  %360 = phi i32 [ %355, %350 ], [ %358, %356 ]
  %361 = add nsw i32 %360, -1
  %362 = mul i32 %361, -3
  %363 = add i32 %362, %316
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !48
  br label %367

367:                                              ; preds = %359, %347
  %368 = phi i32 [ 1, %347 ], [ %366, %359 ]
  %369 = phi i32 [ 0, %347 ], [ %361, %359 ]
  br i1 %324, label %566, label %370

370:                                              ; preds = %367, %306
  %371 = phi i8 [ %315, %367 ], [ %307, %306 ]
  %372 = phi i32 [ %316, %367 ], [ 0, %306 ]
  %373 = phi i32 [ %368, %367 ], [ 1, %306 ]
  %374 = phi i32 [ %369, %367 ], [ 0, %306 ]
  %375 = phi ptr [ %317, %367 ], [ %2, %306 ]
  %376 = phi ptr [ %318, %367 ], [ %1, %306 ]
  %377 = icmp eq i8 %18, 0
  %378 = sub nsw i32 0, %373
  %379 = select i1 %377, i32 %373, i32 %378
  %380 = load i32, ptr %375, align 4, !tbaa !41
  %381 = add nsw i32 %380, %372
  %382 = load i32, ptr %376, align 4, !tbaa !41
  %383 = tail call i32 @llvm.smax.i32(i32 %382, i32 %381)
  %384 = getelementptr inbounds i8, ptr %0, i64 10
  %385 = icmp slt i32 %383, %9
  br i1 %385, label %386, label %390

386:                                              ; preds = %370
  %387 = icmp eq ptr %375, %0
  %388 = icmp sgt i32 %374, 0
  %389 = and i1 %388, %387
  br i1 %389, label %390, label %416

390:                                              ; preds = %386, %370
  %391 = icmp slt i32 %383, 50
  br i1 %391, label %392, label %397

392:                                              ; preds = %390
  %393 = sext i32 %383 to i64
  %394 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !51
  %396 = zext i8 %395 to i32
  br label %400

397:                                              ; preds = %390
  %398 = add nuw nsw i32 %383, 2
  %399 = udiv i32 %398, 3
  br label %400

400:                                              ; preds = %397, %392
  %401 = phi i32 [ %396, %392 ], [ %399, %397 ]
  %402 = icmp ugt i32 %401, 30
  br i1 %402, label %403, label %412

403:                                              ; preds = %400
  %404 = shl nuw i32 %401, 1
  %405 = add nuw i32 %404, 2
  %406 = zext i32 %405 to i64
  %407 = tail call noalias ptr @malloc(i64 noundef %406) #20
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load i32, ptr %5, align 4, !tbaa !48
  %411 = or i32 %410, 16
  store i32 %411, ptr %5, align 4, !tbaa !48
  br label %412

412:                                              ; preds = %400, %403, %409
  %413 = phi ptr [ %8, %409 ], [ %8, %400 ], [ %407, %403 ]
  %414 = phi ptr [ null, %409 ], [ null, %400 ], [ %407, %403 ]
  %415 = phi i1 [ false, %409 ], [ true, %400 ], [ true, %403 ]
  br i1 %415, label %416, label %566

416:                                              ; preds = %386, %412
  %417 = phi ptr [ %413, %412 ], [ %384, %386 ]
  %418 = phi ptr [ %414, %412 ], [ null, %386 ]
  %419 = and i8 %371, -128
  %420 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %419, ptr %420, align 4, !tbaa !35
  %421 = getelementptr inbounds %struct.decNumber, ptr %376, i64 0, i32 1
  %422 = load i32, ptr %421, align 4, !tbaa !40
  %423 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %422, ptr %423, align 4, !tbaa !40
  %424 = getelementptr inbounds %struct.decNumber, ptr %376, i64 0, i32 3
  %425 = load i32, ptr %376, align 4, !tbaa !41
  %426 = icmp slt i32 %425, 50
  br i1 %426, label %427, label %432

427:                                              ; preds = %416
  %428 = sext i32 %425 to i64
  %429 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !51
  %431 = zext i8 %430 to i32
  br label %435

432:                                              ; preds = %416
  %433 = add nuw nsw i32 %425, 2
  %434 = udiv i32 %433, 3
  br label %435

435:                                              ; preds = %432, %427
  %436 = phi i32 [ %431, %427 ], [ %434, %432 ]
  %437 = getelementptr inbounds %struct.decNumber, ptr %375, i64 0, i32 3
  %438 = load i32, ptr %375, align 4, !tbaa !41
  %439 = icmp slt i32 %438, 50
  br i1 %439, label %440, label %445

440:                                              ; preds = %435
  %441 = sext i32 %438 to i64
  %442 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !51
  %444 = zext i8 %443 to i32
  br label %448

445:                                              ; preds = %435
  %446 = add nuw nsw i32 %438, 2
  %447 = udiv i32 %446, 3
  br label %448

448:                                              ; preds = %445, %440
  %449 = phi i32 [ %444, %440 ], [ %447, %445 ]
  %450 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %424, i32 noundef %436, ptr noundef nonnull %437, i32 noundef %449, i32 noundef %374, ptr noundef %417, i32 noundef %379)
  %451 = mul nsw i32 %450, 3
  store i32 %451, ptr %0, align 4, !tbaa !41
  %452 = icmp slt i32 %450, 0
  br i1 %452, label %453, label %457

453:                                              ; preds = %448
  %454 = sub nsw i32 0, %451
  store i32 %454, ptr %0, align 4, !tbaa !41
  %455 = load i8, ptr %420, align 4, !tbaa !35
  %456 = xor i8 %455, -128
  store i8 %456, ptr %420, align 4, !tbaa !35
  br label %457

457:                                              ; preds = %453, %448
  store i32 0, ptr %7, align 4, !tbaa !48
  %458 = icmp eq ptr %417, %384
  br i1 %458, label %502, label %459

459:                                              ; preds = %457
  %460 = load i32, ptr %0, align 4, !tbaa !41
  %461 = icmp sgt i32 %460, %9
  br i1 %461, label %462, label %500

462:                                              ; preds = %459
  %463 = icmp slt i32 %460, 50
  br i1 %463, label %464, label %469

464:                                              ; preds = %462
  %465 = sext i32 %460 to i64
  %466 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !51
  %468 = zext i8 %467 to i32
  br label %472

469:                                              ; preds = %462
  %470 = add nuw nsw i32 %460, 2
  %471 = udiv i32 %470, 3
  br label %472

472:                                              ; preds = %469, %464
  %473 = phi i32 [ %468, %464 ], [ %471, %469 ]
  %474 = add nsw i32 %473, -1
  %475 = mul nsw i32 %474, 3
  %476 = add nsw i32 %475, 1
  %477 = icmp eq i32 %473, 0
  br i1 %477, label %498, label %478

478:                                              ; preds = %472
  %479 = sext i32 %474 to i64
  %480 = getelementptr inbounds i16, ptr %417, i64 %479
  br label %481

481:                                              ; preds = %478, %488
  %482 = phi i32 [ %489, %488 ], [ %476, %478 ]
  %483 = phi ptr [ %490, %488 ], [ %480, %478 ]
  %484 = load i16, ptr %483, align 2, !tbaa !42
  %485 = icmp eq i16 %484, 0
  br i1 %485, label %486, label %492

486:                                              ; preds = %481
  %487 = icmp eq i32 %482, 1
  br i1 %487, label %498, label %488

488:                                              ; preds = %486
  %489 = add nsw i32 %482, -3
  %490 = getelementptr inbounds i16, ptr %483, i64 -1
  %491 = icmp ult ptr %490, %417
  br i1 %491, label %498, label %481, !llvm.loop !47

492:                                              ; preds = %481
  %493 = icmp ult i16 %484, 10
  br i1 %493, label %498, label %494

494:                                              ; preds = %492
  %495 = icmp ult i16 %484, 100
  %496 = select i1 %495, i32 1, i32 2
  %497 = add nsw i32 %496, %482
  br label %498

498:                                              ; preds = %486, %488, %472, %492, %494
  %499 = phi i32 [ %482, %492 ], [ %497, %494 ], [ %476, %472 ], [ %489, %488 ], [ 1, %486 ]
  store i32 %499, ptr %0, align 4, !tbaa !41
  br label %500

500:                                              ; preds = %498, %459
  %501 = load i32, ptr %0, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %417, i32 noundef %501, ptr noundef nonnull %7, ptr noundef %5)
  br label %502

502:                                              ; preds = %500, %457
  %503 = load i32, ptr %0, align 4, !tbaa !41
  %504 = icmp slt i32 %503, 50
  br i1 %504, label %505, label %510

505:                                              ; preds = %502
  %506 = sext i32 %503 to i64
  %507 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !51
  %509 = zext i8 %508 to i32
  br label %513

510:                                              ; preds = %502
  %511 = add nuw nsw i32 %503, 2
  %512 = udiv i32 %511, 3
  br label %513

513:                                              ; preds = %510, %505
  %514 = phi i32 [ %509, %505 ], [ %512, %510 ]
  %515 = add nsw i32 %514, -1
  %516 = mul nsw i32 %515, 3
  %517 = add nsw i32 %516, 1
  %518 = icmp eq i32 %514, 0
  br i1 %518, label %541, label %519

519:                                              ; preds = %513
  %520 = sext i32 %515 to i64
  %521 = shl nsw i64 %520, 1
  %522 = add nsw i64 %521, 10
  br label %523

523:                                              ; preds = %519, %531
  %524 = phi i32 [ %532, %531 ], [ %517, %519 ]
  %525 = phi i64 [ %533, %531 ], [ %522, %519 ]
  %526 = getelementptr inbounds i8, ptr %0, i64 %525
  %527 = load i16, ptr %526, align 2, !tbaa !42
  %528 = icmp eq i16 %527, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %523
  %530 = icmp eq i32 %524, 1
  br i1 %530, label %541, label %531

531:                                              ; preds = %529
  %532 = add nsw i32 %524, -3
  %533 = add nsw i64 %525, -2
  %534 = icmp slt i64 %525, 12
  br i1 %534, label %541, label %523, !llvm.loop !47

535:                                              ; preds = %523
  %536 = icmp ult i16 %527, 10
  br i1 %536, label %541, label %537

537:                                              ; preds = %535
  %538 = icmp ult i16 %527, 100
  %539 = select i1 %538, i32 1, i32 2
  %540 = add nsw i32 %539, %524
  br label %541

541:                                              ; preds = %529, %531, %513, %535, %537
  %542 = phi i32 [ %524, %535 ], [ %540, %537 ], [ %517, %513 ], [ %532, %531 ], [ 1, %529 ]
  store i32 %542, ptr %0, align 4, !tbaa !41
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  %543 = load i16, ptr %384, align 2, !tbaa !42
  %544 = icmp eq i16 %543, 0
  br i1 %544, label %545, label %566

545:                                              ; preds = %541
  %546 = load i32, ptr %0, align 4, !tbaa !41
  %547 = icmp eq i32 %546, 1
  br i1 %547, label %548, label %566

548:                                              ; preds = %545
  %549 = load i8, ptr %420, align 4, !tbaa !35
  %550 = and i8 %549, 112
  %551 = icmp eq i8 %550, 0
  %552 = icmp ne i8 %18, 0
  %553 = and i1 %552, %551
  br i1 %553, label %554, label %566

554:                                              ; preds = %548
  %555 = load i32, ptr %5, align 4, !tbaa !48
  %556 = and i32 %555, 32
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %566

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 3
  %560 = load i32, ptr %559, align 4, !tbaa !76
  %561 = icmp eq i32 %560, 6
  br i1 %561, label %562, label %564

562:                                              ; preds = %558
  %563 = or i8 %549, -128
  store i8 %563, ptr %420, align 4, !tbaa !35
  br label %566

564:                                              ; preds = %558
  %565 = and i8 %549, 127
  store i8 %565, ptr %420, align 4, !tbaa !35
  br label %566

566:                                              ; preds = %304, %222, %412, %367, %562, %564, %554, %548, %545, %541, %25, %40, %147, %108, %35
  %567 = phi ptr [ null, %25 ], [ null, %35 ], [ null, %40 ], [ null, %108 ], [ null, %147 ], [ null, %367 ], [ %414, %412 ], [ %418, %562 ], [ %418, %564 ], [ %418, %554 ], [ %418, %548 ], [ %418, %545 ], [ %418, %541 ], [ null, %222 ], [ null, %304 ]
  %568 = icmp eq ptr %567, null
  br i1 %568, label %570, label %569

569:                                              ; preds = %566
  call void @free(ptr noundef %567) #19
  br label %570

570:                                              ; preds = %569, %566
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberAdd(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @decNumberAnd(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !35
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !35
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %12, %8, %4
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %21, align 4, !tbaa !35
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %23, align 2, !tbaa !42
  store i8 32, ptr %21, align 4, !tbaa !35
  %24 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef 128) #19
  br label %187

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds i8, ptr %0, i64 10
  %29 = load i32, ptr %1, align 4, !tbaa !41
  %30 = icmp slt i32 %29, 50
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !51
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %25
  %37 = add nuw nsw i32 %29, 2
  %38 = udiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %38, %36 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %26, i64 %41
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i32, ptr %2, align 4, !tbaa !41
  %45 = icmp slt i32 %44, 50
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %39
  %52 = add nuw nsw i32 %44, 2
  %53 = udiv i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %50, %46 ], [ %53, %51 ]
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %27, i64 %56
  %58 = getelementptr inbounds i16, ptr %57, i64 -1
  %59 = load i32, ptr %3, align 4, !tbaa !62
  %60 = icmp slt i32 %59, 50
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !51
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %54
  %67 = add nuw nsw i32 %59, 2
  %68 = udiv i32 %67, 3
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ]
  %71 = shl nuw i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = getelementptr i8, ptr %73, i64 8
  br i1 %60, label %75, label %80

75:                                               ; preds = %69
  %76 = sext i32 %59 to i64
  %77 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !51
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %69
  %81 = add nuw nsw i32 %59, 2
  %82 = udiv i32 %81, 3
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %79, %75 ], [ %82, %80 ]
  %85 = icmp eq i32 %70, 0
  br i1 %85, label %150, label %86

86:                                               ; preds = %83
  %87 = mul i32 %84, -3
  %88 = add i32 %59, 2
  %89 = add i32 %88, %87
  %90 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %92 = zext i32 %89 to i64
  br label %93

93:                                               ; preds = %86, %145
  %94 = phi ptr [ undef, %86 ], [ %144, %145 ]
  %95 = phi ptr [ %26, %86 ], [ %146, %145 ]
  %96 = phi ptr [ %27, %86 ], [ %147, %145 ]
  %97 = phi ptr [ %28, %86 ], [ %148, %145 ]
  %98 = icmp ugt ptr %95, %43
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = load i16, ptr %95, align 2, !tbaa !42
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi i16 [ %100, %99 ], [ 0, %93 ]
  %103 = icmp ugt ptr %96, %58
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i16, ptr %96, align 2, !tbaa !42
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi i16 [ %105, %104 ], [ 0, %101 ]
  store i16 0, ptr %97, align 2, !tbaa !42
  %108 = or i16 %107, %102
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  store i16 0, ptr %97, align 2, !tbaa !42
  %111 = icmp ne ptr %97, %74
  br label %112

112:                                              ; preds = %134, %110
  %113 = phi i64 [ %139, %134 ], [ 0, %110 ]
  %114 = phi i16 [ %135, %134 ], [ %107, %110 ]
  %115 = phi i16 [ %136, %134 ], [ %102, %110 ]
  %116 = zext i16 %115 to i32
  %117 = zext i16 %114 to i32
  %118 = and i32 %116, 1
  %119 = and i32 %118, %117
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %112
  %122 = load i16, ptr %97, align 2, !tbaa !42
  %123 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !48
  %125 = trunc i32 %124 to i16
  %126 = add i16 %122, %125
  store i16 %126, ptr %97, align 2, !tbaa !42
  br label %127

127:                                              ; preds = %121, %112
  %128 = urem i32 %116, 10
  %129 = urem i32 %117, 10
  %130 = or i32 %129, %128
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  store i8 0, ptr %90, align 4, !tbaa !35
  store i32 0, ptr %91, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  store i16 0, ptr %28, align 2, !tbaa !42
  store i8 32, ptr %90, align 4, !tbaa !35
  %133 = tail call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef 128) #19
  br label %142

134:                                              ; preds = %127
  %135 = udiv i16 %114, 10
  %136 = udiv i16 %115, 10
  %137 = icmp ne i64 %113, %92
  %138 = select i1 %111, i1 true, i1 %137
  %139 = add nuw nsw i64 %113, 1
  %140 = icmp ult i64 %113, 2
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %112, label %142, !llvm.loop !78

142:                                              ; preds = %134, %132, %106
  %143 = phi i1 [ true, %106 ], [ false, %132 ], [ true, %134 ]
  %144 = phi ptr [ %94, %106 ], [ %0, %132 ], [ %94, %134 ]
  br i1 %143, label %145, label %187

145:                                              ; preds = %142
  %146 = getelementptr inbounds i16, ptr %95, i64 1
  %147 = getelementptr inbounds i16, ptr %96, i64 1
  %148 = getelementptr inbounds i16, ptr %97, i64 1
  %149 = icmp ugt ptr %148, %74
  br i1 %149, label %150, label %93, !llvm.loop !79

150:                                              ; preds = %145, %83
  %151 = phi ptr [ %28, %83 ], [ %148, %145 ]
  %152 = ptrtoint ptr %151 to i64
  %153 = ptrtoint ptr %28 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 1
  %156 = trunc i64 %155 to i32
  %157 = add nsw i32 %156, -1
  %158 = mul nsw i32 %157, 3
  %159 = add nsw i32 %158, 1
  %160 = icmp slt i32 %156, 1
  br i1 %160, label %183, label %161

161:                                              ; preds = %150
  %162 = sext i32 %157 to i64
  %163 = shl nsw i64 %162, 1
  %164 = add nsw i64 %163, 10
  br label %165

165:                                              ; preds = %161, %173
  %166 = phi i32 [ %174, %173 ], [ %159, %161 ]
  %167 = phi i64 [ %175, %173 ], [ %164, %161 ]
  %168 = getelementptr inbounds i8, ptr %0, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !42
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = icmp eq i32 %166, 1
  br i1 %172, label %183, label %173

173:                                              ; preds = %171
  %174 = add nsw i32 %166, -3
  %175 = add nsw i64 %167, -2
  %176 = icmp slt i64 %167, 12
  br i1 %176, label %183, label %165, !llvm.loop !47

177:                                              ; preds = %165
  %178 = icmp ult i16 %169, 10
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = icmp ult i16 %169, 100
  %181 = select i1 %180, i32 1, i32 2
  %182 = add nsw i32 %181, %166
  br label %183

183:                                              ; preds = %171, %173, %150, %177, %179
  %184 = phi i32 [ %166, %177 ], [ %182, %179 ], [ %159, %150 ], [ %174, %173 ], [ 1, %171 ]
  store i32 %184, ptr %0, align 4, !tbaa !41
  %185 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %185, align 4, !tbaa !40
  %186 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %186, align 4, !tbaa !35
  br label %187

187:                                              ; preds = %142, %183, %20
  %188 = phi ptr [ %0, %20 ], [ %0, %183 ], [ %144, %142 ]
  ret ptr %188
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberCompare(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decCompareOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #3 !prof !34 {
  %7 = alloca i32, align 4
  %8 = icmp eq i8 %4, 4
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !35
  %12 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !35
  %14 = icmp slt i8 %13, 0
  %15 = icmp sgt i8 %11, -1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %126

17:                                               ; preds = %9
  %18 = and i1 %15, %14
  br i1 %18, label %126, label %19

19:                                               ; preds = %17, %6
  %20 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !35
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %24 = load i8, ptr %23, align 4, !tbaa !35
  %25 = zext i8 %24 to i32
  %26 = or i8 %24, %21
  %27 = and i8 %26, 48
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %119, label %29

29:                                               ; preds = %19
  switch i8 %4, label %33 [
    i8 1, label %117
    i8 6, label %30
  ]

30:                                               ; preds = %29
  %31 = load i32, ptr %5, align 4, !tbaa !48
  %32 = or i32 %31, 1073741952
  store i32 %32, ptr %5, align 4, !tbaa !48
  br label %117

33:                                               ; preds = %29
  br i1 %8, label %34, label %104

34:                                               ; preds = %33
  %35 = and i32 %22, 48
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %99, label %37

37:                                               ; preds = %34
  %38 = and i32 %25, 48
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %99, label %40

40:                                               ; preds = %37
  %41 = and i32 %22, 16
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %25, 32
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %40
  %47 = and i8 %21, 32
  %48 = icmp eq i8 %47, 0
  %49 = and i8 %24, 16
  %50 = icmp eq i8 %49, 0
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %46
  %53 = load i32, ptr %1, align 4, !tbaa !41
  %54 = icmp slt i32 %53, 50
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !51
  %59 = zext i8 %58 to i32
  br label %63

60:                                               ; preds = %52
  %61 = add nuw nsw i32 %53, 2
  %62 = udiv i32 %61, 3
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %59, %55 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %66 = load i32, ptr %2, align 4, !tbaa !41
  %67 = icmp slt i32 %66, 50
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = sext i32 %66 to i64
  %70 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !51
  %72 = zext i8 %71 to i32
  br label %76

73:                                               ; preds = %63
  %74 = add nuw nsw i32 %66, 2
  %75 = udiv i32 %74, 3
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i32 [ %72, %68 ], [ %75, %73 ]
  %78 = icmp ugt i32 %64, %77
  br i1 %78, label %99, label %79

79:                                               ; preds = %76
  %80 = icmp ult i32 %64, %77
  br i1 %80, label %99, label %81

81:                                               ; preds = %79
  %82 = zext nneg i32 %64 to i64
  %83 = shl nuw nsw i64 %82, 1
  %84 = add nuw nsw i64 %83, 10
  %85 = getelementptr inbounds i16, ptr %65, i64 %82
  br label %86

86:                                               ; preds = %97, %81
  %87 = phi i64 [ %84, %81 ], [ %90, %97 ]
  %88 = phi ptr [ %85, %81 ], [ %89, %97 ]
  %89 = getelementptr inbounds i16, ptr %88, i64 -1
  %90 = add nsw i64 %87, -2
  %91 = icmp slt i64 %87, 12
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds i8, ptr %1, i64 %90
  %94 = load i16, ptr %93, align 2, !tbaa !42
  %95 = load i16, ptr %89, align 2, !tbaa !42
  %96 = icmp ugt i16 %94, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = icmp ult i16 %94, %95
  br i1 %98, label %99, label %86, !llvm.loop !80

99:                                               ; preds = %97, %92, %86, %79, %76, %46, %40, %37, %34
  %100 = phi i32 [ -1, %34 ], [ 1, %37 ], [ -1, %40 ], [ 1, %46 ], [ 1, %76 ], [ -1, %79 ], [ 1, %92 ], [ 0, %86 ], [ -1, %97 ]
  %101 = sub nsw i32 0, %100
  %102 = icmp slt i8 %21, 0
  %103 = select i1 %102, i32 %101, i32 %100
  br label %126

104:                                              ; preds = %33
  %105 = and i8 %26, 16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = and i32 %22, 48
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %25, 48
  %111 = icmp eq i32 %110, 0
  %112 = or i1 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = and i8 %21, 32
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 1, i32 -1
  br label %126

117:                                              ; preds = %107, %29, %30, %104
  %118 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5)
  br label %126

119:                                              ; preds = %19
  %120 = add i8 %4, -7
  %121 = icmp ult i8 %120, 2
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = tail call fastcc i32 @decCompare(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  br label %126

124:                                              ; preds = %119
  %125 = tail call fastcc i32 @decCompare(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  br label %126

126:                                              ; preds = %99, %113, %17, %9, %124, %122, %117
  %127 = phi i32 [ 0, %117 ], [ %123, %122 ], [ %125, %124 ], [ -1, %9 ], [ 1, %17 ], [ %103, %99 ], [ %116, %113 ]
  %128 = phi i8 [ 5, %117 ], [ %4, %122 ], [ %4, %124 ], [ %4, %9 ], [ %4, %17 ], [ %4, %99 ], [ 2, %113 ]
  %129 = icmp eq i32 %127, -2147483648
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, ptr %5, align 4, !tbaa !48
  %132 = or i32 %131, 16
  store i32 %132, ptr %5, align 4, !tbaa !48
  br label %203

133:                                              ; preds = %126
  switch i8 %128, label %161 [
    i8 6, label %134
    i8 4, label %134
    i8 1, label %134
    i8 5, label %203
  ]

134:                                              ; preds = %133, %133, %133
  %135 = icmp eq i8 %128, 4
  %136 = icmp eq i32 %127, 0
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !40
  %141 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !40
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %138
  %145 = icmp slt i32 %140, %142
  %146 = select i1 %145, i32 -1, i32 1
  %147 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %148 = load i8, ptr %147, align 4, !tbaa !35
  %149 = sub nsw i32 0, %146
  %150 = icmp slt i8 %148, 0
  %151 = select i1 %150, i32 %149, i32 %146
  br label %152

152:                                              ; preds = %144, %138, %134
  %153 = phi i32 [ 0, %138 ], [ %127, %134 ], [ %151, %144 ]
  %154 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %154, align 4, !tbaa !35
  %155 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %155, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %156 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %156, align 2, !tbaa !42
  %157 = icmp eq i32 %153, 0
  br i1 %157, label %203, label %158

158:                                              ; preds = %152
  store i16 1, ptr %156, align 2, !tbaa !42
  %159 = icmp slt i32 %153, 0
  br i1 %159, label %160, label %203

160:                                              ; preds = %158
  store i8 -128, ptr %154, align 4, !tbaa !35
  br label %203

161:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !48
  %162 = icmp eq i32 %127, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %165 = load i8, ptr %164, align 4, !tbaa !35
  %166 = and i8 %165, -128
  %167 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %168 = load i8, ptr %167, align 4, !tbaa !35
  %169 = and i8 %168, -128
  %170 = icmp eq i8 %166, %169
  br i1 %170, label %174, label %171

171:                                              ; preds = %163
  %172 = icmp eq i8 %166, 0
  %173 = select i1 %172, i32 1, i32 -1
  br label %187

174:                                              ; preds = %163
  %175 = and i8 %168, %165
  %176 = icmp sgt i8 %175, -1
  %177 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !40
  %179 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !40
  br i1 %176, label %184, label %181

181:                                              ; preds = %174
  %182 = icmp slt i32 %178, %180
  %183 = select i1 %182, i32 1, i32 -1
  br label %187

184:                                              ; preds = %174
  %185 = icmp sgt i32 %178, %180
  %186 = select i1 %185, i32 1, i32 -1
  br label %187

187:                                              ; preds = %171, %181, %184, %161
  %188 = phi i32 [ %127, %161 ], [ %173, %171 ], [ %183, %181 ], [ %186, %184 ]
  switch i8 %128, label %191 [
    i8 8, label %189
    i8 3, label %189
  ]

189:                                              ; preds = %187, %187
  %190 = sub nsw i32 0, %188
  br label %191

191:                                              ; preds = %187, %189
  %192 = phi i32 [ %190, %189 ], [ %188, %187 ]
  %193 = icmp sgt i32 %192, 0
  %194 = select i1 %193, ptr %1, ptr %2
  %195 = getelementptr inbounds %struct.decNumber, ptr %194, i64 0, i32 2
  %196 = load i8, ptr %195, align 4, !tbaa !35
  %197 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %196, ptr %197, align 4, !tbaa !35
  %198 = getelementptr inbounds %struct.decNumber, ptr %194, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !40
  %200 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %199, ptr %200, align 4, !tbaa !40
  %201 = getelementptr inbounds %struct.decNumber, ptr %194, i64 0, i32 3
  %202 = load i32, ptr %194, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %201, i32 noundef %202, ptr noundef nonnull %7, ptr noundef %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %203

203:                                              ; preds = %133, %158, %160, %152, %191, %130
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberCompareSignal(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 6, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberCompareTotal(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberCompareTotalMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.decNumber], align 16
  %9 = alloca [3 x %struct.decNumber], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #19
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !35
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %76, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %1, align 4, !tbaa !41
  %15 = icmp slt i32 %14, 50
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !51
  %20 = zext i8 %19 to i32
  br label %24

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %14, 2
  %23 = udiv i32 %22, 3
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %20, %16 ], [ %23, %21 ]
  %26 = icmp ugt i32 %25, 13
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = shl nuw i32 %25, 1
  %29 = add nuw i32 %28, 10
  %30 = zext i32 %29 to i64
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 16, ptr %7, align 4, !tbaa !48
  br label %149

34:                                               ; preds = %27, %24
  %35 = phi ptr [ null, %24 ], [ %31, %27 ]
  %36 = phi ptr [ %8, %24 ], [ %31, %27 ]
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %72, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.decNumber, ptr %36, i64 0, i32 2
  store i8 %11, ptr %39, align 4, !tbaa !35
  %40 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = getelementptr inbounds %struct.decNumber, ptr %36, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !40
  store i32 %14, ptr %36, align 4, !tbaa !41
  %43 = getelementptr inbounds i8, ptr %1, i64 10
  %44 = load i16, ptr %43, align 2, !tbaa !42
  %45 = getelementptr inbounds %struct.decNumber, ptr %36, i64 0, i32 3
  store i16 %44, ptr %45, align 2, !tbaa !42
  %46 = icmp sgt i32 %14, 3
  br i1 %46, label %47, label %72

47:                                               ; preds = %38
  %48 = getelementptr %struct.decNumber, ptr %36, i64 1
  br i1 %15, label %49, label %54

49:                                               ; preds = %47
  %50 = zext nneg i32 %14 to i64
  %51 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !51
  %53 = zext i8 %52 to i32
  br label %57

54:                                               ; preds = %47
  %55 = add nuw nsw i32 %14, 2
  %56 = udiv i32 %55, 3
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %53, %49 ], [ %56, %54 ]
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = getelementptr %struct.decNumber, ptr %1, i64 1
  %62 = shl nuw i32 %58, 1
  %63 = zext i32 %62 to i64
  %64 = add i64 %6, %63
  %65 = add i64 %64, 10
  %66 = add i64 %6, 14
  %67 = call i64 @llvm.umax.i64(i64 %65, i64 %66)
  %68 = add i64 %67, -13
  %69 = sub i64 %68, %6
  %70 = and i64 %69, -2
  %71 = add i64 %70, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr align 2 %61, i64 %71, i1 false), !tbaa !42
  br label %72

72:                                               ; preds = %60, %57, %34, %38
  %73 = getelementptr inbounds %struct.decNumber, ptr %36, i64 0, i32 2
  %74 = load i8, ptr %73, align 4, !tbaa !35
  %75 = and i8 %74, 127
  store i8 %75, ptr %73, align 4, !tbaa !35
  br label %76

76:                                               ; preds = %72, %4
  %77 = phi ptr [ %36, %72 ], [ %1, %4 ]
  %78 = phi ptr [ %35, %72 ], [ null, %4 ]
  %79 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %80 = load i8, ptr %79, align 4, !tbaa !35
  %81 = icmp sgt i8 %80, -1
  br i1 %81, label %145, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr %2, align 4, !tbaa !41
  %84 = icmp slt i32 %83, 50
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !51
  %89 = zext i8 %88 to i32
  br label %93

90:                                               ; preds = %82
  %91 = add nuw nsw i32 %83, 2
  %92 = udiv i32 %91, 3
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i32 [ %89, %85 ], [ %92, %90 ]
  %95 = icmp ugt i32 %94, 13
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = shl nuw i32 %94, 1
  %98 = add nuw i32 %97, 10
  %99 = zext i32 %98 to i64
  %100 = call noalias ptr @malloc(i64 noundef %99) #20
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 16, ptr %7, align 4, !tbaa !48
  br label %149

103:                                              ; preds = %96, %93
  %104 = phi ptr [ null, %93 ], [ %100, %96 ]
  %105 = phi ptr [ %9, %93 ], [ %100, %96 ]
  %106 = icmp eq ptr %105, %2
  br i1 %106, label %141, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.decNumber, ptr %105, i64 0, i32 2
  store i8 %80, ptr %108, align 4, !tbaa !35
  %109 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !40
  %111 = getelementptr inbounds %struct.decNumber, ptr %105, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !40
  store i32 %83, ptr %105, align 4, !tbaa !41
  %112 = getelementptr inbounds i8, ptr %2, i64 10
  %113 = load i16, ptr %112, align 2, !tbaa !42
  %114 = getelementptr inbounds %struct.decNumber, ptr %105, i64 0, i32 3
  store i16 %113, ptr %114, align 2, !tbaa !42
  %115 = icmp sgt i32 %83, 3
  br i1 %115, label %116, label %141

116:                                              ; preds = %107
  %117 = getelementptr %struct.decNumber, ptr %105, i64 1
  br i1 %84, label %118, label %123

118:                                              ; preds = %116
  %119 = zext nneg i32 %83 to i64
  %120 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !51
  %122 = zext i8 %121 to i32
  br label %126

123:                                              ; preds = %116
  %124 = add nuw nsw i32 %83, 2
  %125 = udiv i32 %124, 3
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ %122, %118 ], [ %125, %123 ]
  %128 = icmp ugt i32 %127, 1
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = getelementptr %struct.decNumber, ptr %2, i64 1
  %131 = shl nuw i32 %127, 1
  %132 = zext i32 %131 to i64
  %133 = add i64 %5, %132
  %134 = add i64 %133, 10
  %135 = add i64 %5, 14
  %136 = call i64 @llvm.umax.i64(i64 %134, i64 %135)
  %137 = add i64 %136, -13
  %138 = sub i64 %137, %5
  %139 = and i64 %138, -2
  %140 = add i64 %139, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %117, ptr align 2 %130, i64 %140, i1 false), !tbaa !42
  br label %141

141:                                              ; preds = %129, %126, %103, %107
  %142 = getelementptr inbounds %struct.decNumber, ptr %105, i64 0, i32 2
  %143 = load i8, ptr %142, align 4, !tbaa !35
  %144 = and i8 %143, 127
  store i8 %144, ptr %142, align 4, !tbaa !35
  br label %145

145:                                              ; preds = %141, %76
  %146 = phi ptr [ %105, %141 ], [ %2, %76 ]
  %147 = phi ptr [ %104, %141 ], [ null, %76 ]
  %148 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %77, ptr noundef %146, ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %7)
  br label %149

149:                                              ; preds = %145, %102, %33
  %150 = phi ptr [ null, %33 ], [ %78, %102 ], [ %78, %145 ]
  %151 = phi ptr [ null, %33 ], [ null, %102 ], [ %147, %145 ]
  %152 = icmp eq ptr %150, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void @free(ptr noundef %150) #19
  br label %154

154:                                              ; preds = %153, %149
  %155 = icmp eq ptr %151, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  call void @free(ptr noundef %151) #19
  br label %157

157:                                              ; preds = %156, %154
  %158 = load i32, ptr %7, align 4, !tbaa !48
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %157
  %161 = and i32 %158, 221
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = and i32 %158, 1073741824
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = and i32 %158, -1073741825
  br label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %169, align 4, !tbaa !35
  %170 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %170, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %171 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %171, align 2, !tbaa !42
  store i8 32, ptr %169, align 4, !tbaa !35
  br label %172

172:                                              ; preds = %160, %166, %168
  %173 = phi i32 [ %167, %166 ], [ %158, %168 ], [ %158, %160 ]
  %174 = call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %173) #19
  br label %175

175:                                              ; preds = %172, %157
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopy(ptr noundef returned writeonly %0, ptr noundef readonly %1) local_unnamed_addr #5 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %6, ptr %7, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !40
  %11 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %11, ptr %0, align 4, !tbaa !41
  %12 = getelementptr inbounds i8, ptr %1, i64 10
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %13, ptr %14, align 2, !tbaa !42
  %15 = load i32, ptr %1, align 4, !tbaa !41
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = getelementptr %struct.decNumber, ptr %0, i64 1
  %19 = icmp slt i32 %15, 50
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = zext nneg i32 %15 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !51
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %17
  %26 = add nuw nsw i32 %15, 2
  %27 = udiv i32 %26, 3
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = shl nuw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 10
  %34 = icmp ugt i32 %29, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %42, %37 ], [ %18, %35 ]
  %39 = phi ptr [ %41, %37 ], [ %36, %35 ]
  %40 = load i16, ptr %39, align 2, !tbaa !42
  store i16 %40, ptr %38, align 2, !tbaa !42
  %41 = getelementptr inbounds i16, ptr %39, i64 1
  %42 = getelementptr inbounds i16, ptr %38, i64 1
  %43 = icmp ult ptr %41, %33
  br i1 %43, label %37, label %44, !llvm.loop !77

44:                                               ; preds = %37, %28, %4, %2
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberDivide(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decDivideOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #3 !prof !34 {
  %7 = alloca [17 x i16], align 16
  %8 = alloca [25 x i16], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %10 = load i32, ptr %3, align 4, !tbaa !62
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !35
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !35
  %16 = zext i8 %15 to i32
  %17 = xor i8 %15, %12
  %18 = and i8 %17, -128
  %19 = or i32 %16, %13
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %6
  %23 = and i32 %19, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5)
  br label %879

27:                                               ; preds = %22
  %28 = and i32 %13, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = and i32 %16, 64
  %32 = icmp eq i32 %31, 0
  %33 = and i8 %4, 80
  %34 = icmp eq i8 %33, 0
  %35 = and i1 %34, %32
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4, !tbaa !48
  %38 = or i32 %37, 128
  store i32 %38, ptr %5, align 4, !tbaa !48
  br label %879

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %40, align 4, !tbaa !35
  %41 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %41, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %42 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %42, align 2, !tbaa !42
  %43 = or disjoint i8 %18, 64
  store i8 %43, ptr %40, align 4, !tbaa !35
  br label %879

44:                                               ; preds = %27
  store i32 0, ptr %9, align 4, !tbaa !48
  %45 = and i8 %4, 80
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  br i1 %46, label %54, label %48

48:                                               ; preds = %44
  store i8 %12, ptr %47, align 4, !tbaa !35
  %49 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !40
  %52 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %53 = load i32, ptr %1, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %52, i32 noundef %53, ptr noundef nonnull %9, ptr noundef %5)
  br label %65

54:                                               ; preds = %44
  store i8 0, ptr %47, align 4, !tbaa !35
  %55 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %55, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %56 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %56, align 2, !tbaa !42
  store i8 %18, ptr %47, align 4, !tbaa !35
  %57 = icmp sgt i8 %4, -1
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !69
  %61 = sub i32 %60, %10
  %62 = add i32 %61, 1
  store i32 %62, ptr %55, align 4, !tbaa !40
  %63 = load i32, ptr %5, align 4, !tbaa !48
  %64 = or i32 %63, 1024
  store i32 %64, ptr %5, align 4, !tbaa !48
  br label %65

65:                                               ; preds = %54, %58, %48
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5)
  br label %879

66:                                               ; preds = %6
  %67 = getelementptr inbounds i8, ptr %2, i64 10
  %68 = load i16, ptr %67, align 2, !tbaa !42
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %66
  %71 = load i32, ptr %2, align 4, !tbaa !41
  %72 = icmp eq i32 %71, 1
  %73 = and i32 %16, 112
  %74 = icmp eq i32 %73, 0
  %75 = and i1 %74, %72
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %78 = load i16, ptr %77, align 2, !tbaa !42
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, ptr %1, align 4, !tbaa !41
  %82 = icmp eq i32 %81, 1
  %83 = and i32 %13, 112
  %84 = icmp eq i32 %83, 0
  %85 = and i1 %84, %82
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %87, align 4, !tbaa !35
  %88 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %88, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %89 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %89, align 2, !tbaa !42
  %90 = load i32, ptr %5, align 4, !tbaa !48
  %91 = or i32 %90, 8
  store i32 %91, ptr %5, align 4, !tbaa !48
  br label %879

92:                                               ; preds = %80, %76
  %93 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %93, align 4, !tbaa !35
  %94 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %94, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %95 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %95, align 2, !tbaa !42
  %96 = and i8 %4, 80
  %97 = icmp eq i8 %96, 0
  %98 = load i32, ptr %5, align 4, !tbaa !48
  br i1 %97, label %101, label %99

99:                                               ; preds = %92
  %100 = or i32 %98, 128
  store i32 %100, ptr %5, align 4, !tbaa !48
  br label %879

101:                                              ; preds = %92
  %102 = or i32 %98, 2
  store i32 %102, ptr %5, align 4, !tbaa !48
  %103 = or disjoint i8 %18, 64
  store i8 %103, ptr %93, align 4, !tbaa !35
  br label %879

104:                                              ; preds = %70, %66
  %105 = getelementptr inbounds i8, ptr %1, i64 10
  %106 = load i16, ptr %105, align 2, !tbaa !42
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %210

108:                                              ; preds = %104
  %109 = load i32, ptr %1, align 4, !tbaa !41
  %110 = icmp eq i32 %109, 1
  %111 = and i8 %12, 112
  %112 = icmp eq i8 %111, 0
  %113 = and i1 %112, %110
  br i1 %113, label %114, label %210

114:                                              ; preds = %108
  %115 = icmp sgt i8 %4, -1
  br i1 %115, label %159, label %116

116:                                              ; preds = %114
  store i32 0, ptr %9, align 4, !tbaa !48
  %117 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !40
  %119 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !40
  %121 = sub nsw i32 %118, %120
  %122 = icmp eq ptr %0, %1
  br i1 %122, label %156, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %12, ptr %124, align 4, !tbaa !35
  %125 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %118, ptr %125, align 4, !tbaa !40
  store i32 %109, ptr %0, align 4, !tbaa !41
  %126 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %106, ptr %126, align 2, !tbaa !42
  %127 = load i32, ptr %1, align 4, !tbaa !41
  %128 = icmp sgt i32 %127, 3
  br i1 %128, label %129, label %156

129:                                              ; preds = %123
  %130 = getelementptr %struct.decNumber, ptr %0, i64 1
  %131 = icmp slt i32 %127, 50
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = zext nneg i32 %127 to i64
  %134 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !51
  %136 = zext i8 %135 to i32
  br label %140

137:                                              ; preds = %129
  %138 = add nuw nsw i32 %127, 2
  %139 = udiv i32 %138, 3
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i32 [ %136, %132 ], [ %139, %137 ]
  %142 = shl nuw i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr i8, ptr %1, i64 %143
  %145 = getelementptr i8, ptr %144, i64 10
  %146 = icmp ugt i32 %141, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi ptr [ %154, %149 ], [ %130, %147 ]
  %151 = phi ptr [ %153, %149 ], [ %148, %147 ]
  %152 = load i16, ptr %151, align 2, !tbaa !42
  store i16 %152, ptr %150, align 2, !tbaa !42
  %153 = getelementptr inbounds i16, ptr %151, i64 1
  %154 = getelementptr inbounds i16, ptr %150, i64 1
  %155 = icmp ult ptr %153, %145
  br i1 %155, label %149, label %156, !llvm.loop !77

156:                                              ; preds = %149, %140, %116, %123
  %157 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %18, ptr %157, align 4, !tbaa !35
  %158 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %121, ptr %158, align 4, !tbaa !40
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5)
  br label %879

159:                                              ; preds = %114
  %160 = and i8 %4, 32
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %163, align 4, !tbaa !35
  %164 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %164, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %165 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %165, align 2, !tbaa !42
  store i8 %18, ptr %163, align 4, !tbaa !35
  br label %879

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !40
  %169 = icmp eq ptr %0, %1
  br i1 %169, label %205, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %12, ptr %171, align 4, !tbaa !35
  %172 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !40
  %174 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %173, ptr %174, align 4, !tbaa !40
  store i32 %109, ptr %0, align 4, !tbaa !41
  %175 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %106, ptr %175, align 2, !tbaa !42
  %176 = load i32, ptr %1, align 4, !tbaa !41
  %177 = icmp sgt i32 %176, 3
  br i1 %177, label %178, label %205

178:                                              ; preds = %170
  %179 = getelementptr %struct.decNumber, ptr %0, i64 1
  %180 = icmp slt i32 %176, 50
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = zext nneg i32 %176 to i64
  %183 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !51
  %185 = zext i8 %184 to i32
  br label %189

186:                                              ; preds = %178
  %187 = add nuw nsw i32 %176, 2
  %188 = udiv i32 %187, 3
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi i32 [ %185, %181 ], [ %188, %186 ]
  %191 = shl nuw i32 %190, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr i8, ptr %1, i64 %192
  %194 = getelementptr i8, ptr %193, i64 10
  %195 = icmp ugt i32 %190, 1
  br i1 %195, label %196, label %205

196:                                              ; preds = %189
  %197 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %198

198:                                              ; preds = %196, %198
  %199 = phi ptr [ %203, %198 ], [ %179, %196 ]
  %200 = phi ptr [ %202, %198 ], [ %197, %196 ]
  %201 = load i16, ptr %200, align 2, !tbaa !42
  store i16 %201, ptr %199, align 2, !tbaa !42
  %202 = getelementptr inbounds i16, ptr %200, i64 1
  %203 = getelementptr inbounds i16, ptr %199, i64 1
  %204 = icmp ult ptr %202, %194
  br i1 %204, label %198, label %205, !llvm.loop !77

205:                                              ; preds = %198, %189, %166, %170
  %206 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !40
  %208 = icmp slt i32 %168, %207
  br i1 %208, label %209, label %879

209:                                              ; preds = %205
  store i32 %168, ptr %206, align 4, !tbaa !40
  br label %879

210:                                              ; preds = %108, %104
  %211 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !40
  %213 = load i32, ptr %1, align 4, !tbaa !41
  %214 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !40
  %216 = load i32, ptr %2, align 4, !tbaa !41
  %217 = add i32 %213, %212
  %218 = add i32 %215, %216
  %219 = sub i32 %217, %218
  %220 = icmp sgt i32 %219, -1
  %221 = zext i8 %4 to i32
  %222 = icmp eq i8 %4, -128
  %223 = or i1 %222, %220
  br i1 %223, label %241, label %224

224:                                              ; preds = %210
  %225 = and i32 %221, 32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %228, align 4, !tbaa !35
  %229 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %229, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %230 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %230, align 2, !tbaa !42
  store i8 %18, ptr %228, align 4, !tbaa !35
  br label %879

231:                                              ; preds = %224
  %232 = icmp sgt i32 %212, %215
  br i1 %232, label %241, label %233

233:                                              ; preds = %231
  %234 = and i32 %221, 64
  %235 = icmp ne i32 %234, 0
  %236 = icmp slt i32 %219, -1
  %237 = or i1 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  store i32 0, ptr %9, align 4, !tbaa !48
  %239 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %12, ptr %239, align 4, !tbaa !35
  %240 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %212, ptr %240, align 4, !tbaa !40
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %105, i32 noundef %213, ptr noundef nonnull %9, ptr noundef %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5)
  br label %879

241:                                              ; preds = %231, %233, %210
  %242 = icmp slt i32 %10, 47
  br i1 %242, label %243, label %249

243:                                              ; preds = %241
  %244 = add nsw i32 %10, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !51
  %248 = zext i8 %247 to i32
  br label %252

249:                                              ; preds = %241
  %250 = add nuw nsw i32 %10, 5
  %251 = udiv i32 %250, 3
  br label %252

252:                                              ; preds = %249, %243
  %253 = phi i32 [ %248, %243 ], [ %251, %249 ]
  %254 = zext nneg i32 %253 to i64
  %255 = icmp ugt i32 %253, 17
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = shl nuw nsw i64 %254, 1
  %258 = tail call noalias ptr @malloc(i64 noundef %257) #20
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, ptr %5, align 4, !tbaa !48
  %262 = or i32 %261, 16
  store i32 %262, ptr %5, align 4, !tbaa !48
  br label %879

263:                                              ; preds = %256, %252
  %264 = phi ptr [ null, %252 ], [ %258, %256 ]
  %265 = phi ptr [ %7, %252 ], [ %258, %256 ]
  %266 = add nsw i32 %216, %10
  %267 = add nsw i32 %266, -1
  %268 = icmp slt i32 %213, %266
  %269 = select i1 %268, i32 %267, i32 %213
  %270 = icmp slt i32 %269, 50
  br i1 %270, label %271, label %276

271:                                              ; preds = %263
  %272 = sext i32 %269 to i64
  %273 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !51
  %275 = zext i8 %274 to i32
  br label %279

276:                                              ; preds = %263
  %277 = add nuw nsw i32 %269, 2
  %278 = udiv i32 %277, 3
  br label %279

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %275, %271 ], [ %278, %276 ]
  %281 = icmp sgt i8 %4, -1
  %282 = select i1 %281, i32 3, i32 2
  %283 = add nuw nsw i32 %280, %282
  %284 = icmp ugt i32 %283, 24
  br i1 %284, label %285, label %294

285:                                              ; preds = %279
  %286 = shl nuw i32 %283, 1
  %287 = add nuw i32 %286, 2
  %288 = zext i32 %287 to i64
  %289 = tail call noalias ptr @malloc(i64 noundef %288) #20
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i32, ptr %5, align 4, !tbaa !48
  %293 = or i32 %292, 16
  store i32 %293, ptr %5, align 4, !tbaa !48
  br label %879

294:                                              ; preds = %285, %279
  %295 = phi ptr [ null, %279 ], [ %289, %285 ]
  %296 = phi ptr [ %8, %279 ], [ %289, %285 ]
  %297 = zext nneg i32 %283 to i64
  %298 = getelementptr inbounds i16, ptr %296, i64 %297
  %299 = getelementptr inbounds i16, ptr %298, i64 -1
  %300 = icmp slt i32 %213, 50
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = sext i32 %213 to i64
  %303 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !51
  %305 = zext i8 %304 to i32
  br label %309

306:                                              ; preds = %294
  %307 = add nuw nsw i32 %213, 2
  %308 = udiv i32 %307, 3
  br label %309

309:                                              ; preds = %306, %301
  %310 = phi i32 [ %305, %301 ], [ %308, %306 ]
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %336, label %312

312:                                              ; preds = %309
  %313 = shl nuw i32 %310, 1
  %314 = zext i32 %313 to i64
  %315 = add nuw nsw i64 %314, 8
  %316 = shl nuw nsw i64 %297, 1
  %317 = add nsw i64 %316, -2
  %318 = add nuw nsw i64 %314, 9
  %319 = tail call i64 @llvm.smin.i64(i64 %315, i64 11)
  %320 = sub nsw i64 %318, %319
  %321 = and i64 %320, -2
  %322 = sub nsw i64 %317, %321
  %323 = getelementptr i8, ptr %296, i64 %322
  %324 = add nuw nsw i64 %314, 8
  %325 = sub nsw i64 %324, %321
  %326 = getelementptr i8, ptr %1, i64 %325
  %327 = add nsw i64 %321, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %323, ptr align 2 %326, i64 %327, i1 false), !tbaa !42
  %328 = shl nuw nsw i64 %297, 1
  %329 = add nsw i64 %328, -4
  %330 = add nuw nsw i64 %314, 9
  %331 = tail call i64 @llvm.smin.i64(i64 %315, i64 11)
  %332 = sub nsw i64 %330, %331
  %333 = and i64 %332, -2
  %334 = sub nsw i64 %329, %333
  %335 = getelementptr i8, ptr %296, i64 %334
  br label %336

336:                                              ; preds = %312, %309
  %337 = phi ptr [ %299, %309 ], [ %335, %312 ]
  %338 = icmp ult ptr %337, %296
  br i1 %338, label %343, label %339

339:                                              ; preds = %336, %339
  %340 = phi ptr [ %341, %339 ], [ %337, %336 ]
  store i16 0, ptr %340, align 2, !tbaa !42
  %341 = getelementptr inbounds i16, ptr %340, i64 -1
  %342 = icmp ult ptr %341, %296
  br i1 %342, label %343, label %339, !llvm.loop !81

343:                                              ; preds = %339, %336
  %344 = icmp slt i32 %216, 50
  br i1 %344, label %345, label %350

345:                                              ; preds = %343
  %346 = sext i32 %216 to i64
  %347 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !51
  %349 = zext i8 %348 to i32
  br label %353

350:                                              ; preds = %343
  %351 = add nuw nsw i32 %216, 2
  %352 = udiv i32 %351, 3
  br label %353

353:                                              ; preds = %350, %345
  %354 = phi i32 [ %349, %345 ], [ %352, %350 ]
  %355 = shl nuw i32 %354, 1
  %356 = zext i32 %355 to i64
  %357 = add nuw nsw i64 %356, 8
  %358 = getelementptr inbounds i8, ptr %2, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !42
  %360 = zext i16 %359 to i32
  %361 = icmp ugt i32 %354, 1
  %362 = zext i1 %361 to i32
  %363 = add nuw nsw i32 %360, %362
  %364 = mul nuw nsw i32 %360, 1000
  br i1 %361, label %365, label %374

365:                                              ; preds = %353
  %366 = getelementptr i8, ptr %2, i64 %356
  %367 = getelementptr i8, ptr %366, i64 6
  %368 = load i16, ptr %367, align 2, !tbaa !42
  %369 = zext i16 %368 to i32
  %370 = icmp ne i32 %354, 2
  %371 = zext i1 %370 to i32
  %372 = or disjoint i32 %364, %371
  %373 = add nuw nsw i32 %372, %369
  br label %374

374:                                              ; preds = %365, %353
  %375 = phi i32 [ %364, %353 ], [ %373, %365 ]
  %376 = load i16, ptr %299, align 2, !tbaa !42
  %377 = zext i16 %376 to i32
  %378 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), align 4, !tbaa !48
  %379 = icmp ugt i32 %378, %377
  br i1 %379, label %380, label %384

380:                                              ; preds = %384, %374
  %381 = phi i32 [ %219, %374 ], [ %387, %384 ]
  %382 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), align 4, !tbaa !48
  %383 = icmp ugt i32 %382, %360
  br i1 %383, label %398, label %391

384:                                              ; preds = %374, %384
  %385 = phi ptr [ %388, %384 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %374 ]
  %386 = phi i32 [ %387, %384 ], [ %219, %374 ]
  %387 = add nsw i32 %386, -1
  %388 = getelementptr inbounds i32, ptr %385, i64 1
  %389 = load i32, ptr %388, align 4, !tbaa !48
  %390 = icmp ugt i32 %389, %377
  br i1 %390, label %380, label %384, !llvm.loop !82

391:                                              ; preds = %380, %391
  %392 = phi ptr [ %395, %391 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %380 ]
  %393 = phi i32 [ %394, %391 ], [ %381, %380 ]
  %394 = add nsw i32 %393, 1
  %395 = getelementptr inbounds i32, ptr %392, i64 1
  %396 = load i32, ptr %395, align 4, !tbaa !48
  %397 = icmp ugt i32 %396, %360
  br i1 %397, label %398, label %391, !llvm.loop !83

398:                                              ; preds = %391, %380
  %399 = phi i32 [ %381, %380 ], [ %394, %391 ]
  br i1 %281, label %400, label %437

400:                                              ; preds = %398
  br i1 %300, label %401, label %406

401:                                              ; preds = %400
  %402 = sext i32 %213 to i64
  %403 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !51
  %405 = zext i8 %404 to i32
  br label %409

406:                                              ; preds = %400
  %407 = add nuw nsw i32 %213, 2
  %408 = udiv i32 %407, 3
  br label %409

409:                                              ; preds = %406, %401
  %410 = phi i32 [ %405, %401 ], [ %408, %406 ]
  %411 = sub nsw i32 %283, %410
  %412 = mul nsw i32 %411, 3
  %413 = icmp slt i32 %399, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = sub nsw i32 0, %399
  br label %419

416:                                              ; preds = %409
  %417 = urem i32 %399, 3
  %418 = xor i32 %417, 3
  br label %419

419:                                              ; preds = %416, %414
  %420 = phi i32 [ %415, %414 ], [ %418, %416 ]
  %421 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %296, i32 noundef %283, i32 noundef %420)
  %422 = add nsw i32 %420, %399
  %423 = sub nsw i32 %412, %420
  %424 = icmp sgt i32 %420, 2
  br i1 %424, label %425, label %443

425:                                              ; preds = %419
  %426 = shl nuw nsw i64 %297, 1
  %427 = add nsw i64 %426, -2
  %428 = add nuw i32 %420, 2
  %429 = call i32 @llvm.smin.i32(i32 %420, i32 5)
  %430 = sub i32 %428, %429
  %431 = udiv i32 %430, 3
  %432 = shl nuw i32 %431, 1
  %433 = zext i32 %432 to i64
  %434 = sub nsw i64 %427, %433
  %435 = getelementptr i8, ptr %296, i64 %434
  %436 = add nuw nsw i64 %433, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %435, i8 0, i64 %436, i1 false), !tbaa !42
  br label %443

437:                                              ; preds = %398
  %438 = sub nsw i32 %212, %215
  %439 = icmp ult i16 %376, %359
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = add nsw i32 %283, -1
  %442 = add nsw i32 %399, -3
  br label %443

443:                                              ; preds = %425, %419, %437, %440
  %444 = phi i32 [ %441, %440 ], [ %283, %437 ], [ %283, %419 ], [ %283, %425 ]
  %445 = phi i32 [ 0, %440 ], [ 0, %437 ], [ %423, %419 ], [ %423, %425 ]
  %446 = phi i32 [ %442, %440 ], [ %399, %437 ], [ %422, %419 ], [ %422, %425 ]
  %447 = phi i32 [ %438, %440 ], [ %438, %437 ], [ 0, %419 ], [ 0, %425 ]
  %448 = getelementptr inbounds i16, ptr %265, i64 %254
  %449 = getelementptr inbounds i16, ptr %448, i64 -1
  %450 = and i32 %221, 80
  %451 = icmp eq i32 %450, 0
  %452 = zext nneg i32 %444 to i64
  %453 = zext nneg i32 %354 to i64
  br label %454

454:                                              ; preds = %588, %443
  %455 = phi i64 [ %589, %588 ], [ %452, %443 ]
  %456 = phi i32 [ %546, %588 ], [ %283, %443 ]
  %457 = phi i32 [ %547, %588 ], [ undef, %443 ]
  %458 = phi i32 [ %590, %588 ], [ %446, %443 ]
  %459 = phi ptr [ %488, %588 ], [ %299, %443 ]
  %460 = phi i32 [ %570, %588 ], [ 0, %443 ]
  %461 = phi i32 [ %571, %588 ], [ 0, %443 ]
  %462 = phi ptr [ %572, %588 ], [ %449, %443 ]
  %463 = sub nsw i64 %455, %453
  %464 = getelementptr inbounds i16, ptr %296, i64 %463
  %465 = trunc i64 %455 to i32
  %466 = trunc i64 %463 to i32
  br label %467

467:                                              ; preds = %535, %454
  %468 = phi i32 [ %456, %454 ], [ %536, %535 ]
  %469 = phi i32 [ %457, %454 ], [ %539, %535 ]
  %470 = phi i16 [ 0, %454 ], [ %541, %535 ]
  %471 = phi ptr [ %459, %454 ], [ %488, %535 ]
  %472 = load i16, ptr %471, align 2, !tbaa !42
  %473 = icmp eq i16 %472, 0
  %474 = icmp ugt ptr %471, %296
  %475 = and i1 %474, %473
  br i1 %475, label %476, label %485

476:                                              ; preds = %467, %476
  %477 = phi ptr [ %480, %476 ], [ %471, %467 ]
  %478 = phi i32 [ %479, %476 ], [ %468, %467 ]
  %479 = add nsw i32 %478, -1
  %480 = getelementptr inbounds i16, ptr %477, i64 -1
  %481 = load i16, ptr %480, align 2, !tbaa !42
  %482 = icmp eq i16 %481, 0
  %483 = icmp ugt ptr %480, %296
  %484 = and i1 %483, %482
  br i1 %484, label %476, label %485, !llvm.loop !84

485:                                              ; preds = %476, %467
  %486 = phi i16 [ %472, %467 ], [ %481, %476 ]
  %487 = phi i32 [ %468, %467 ], [ %479, %476 ]
  %488 = phi ptr [ %471, %467 ], [ %480, %476 ]
  %489 = zext i16 %486 to i32
  %490 = sext i32 %487 to i64
  %491 = icmp sgt i64 %455, %490
  br i1 %491, label %545, label %492

492:                                              ; preds = %485
  %493 = icmp eq i32 %487, %465
  br i1 %493, label %494, label %528

494:                                              ; preds = %492, %507
  %495 = phi ptr [ %508, %507 ], [ %488, %492 ]
  %496 = phi i64 [ %509, %507 ], [ %357, %492 ]
  %497 = icmp slt i64 %496, 10
  br i1 %497, label %501, label %498

498:                                              ; preds = %494
  %499 = getelementptr inbounds i8, ptr %2, i64 %496
  %500 = load i16, ptr %499, align 2, !tbaa !42
  br label %501

501:                                              ; preds = %498, %494
  %502 = phi i16 [ %500, %498 ], [ 0, %494 ]
  %503 = load i16, ptr %495, align 2, !tbaa !42
  %504 = icmp ne i16 %503, %502
  %505 = icmp eq ptr %495, %296
  %506 = select i1 %504, i1 true, i1 %505
  br i1 %506, label %510, label %507

507:                                              ; preds = %501
  %508 = getelementptr inbounds i16, ptr %495, i64 -1
  %509 = add nsw i64 %496, -2
  br label %494, !llvm.loop !85

510:                                              ; preds = %501
  %511 = icmp ult i16 %503, %502
  br i1 %511, label %523, label %512

512:                                              ; preds = %510
  %513 = icmp eq i16 %503, %502
  br i1 %513, label %514, label %516

514:                                              ; preds = %512
  %515 = add i16 %470, 1
  store i16 0, ptr %296, align 2, !tbaa !42
  br label %523

516:                                              ; preds = %512
  %517 = mul nuw nsw i32 %489, 1000
  %518 = getelementptr inbounds i16, ptr %488, i64 -1
  %519 = load i16, ptr %518, align 2, !tbaa !42
  %520 = zext i16 %519 to i32
  %521 = add nuw nsw i32 %517, %520
  %522 = udiv i32 %521, %375
  br label %523

523:                                              ; preds = %510, %516, %514
  %524 = phi i32 [ 1, %514 ], [ %487, %516 ], [ %487, %510 ]
  %525 = phi i32 [ %469, %514 ], [ %522, %516 ], [ %469, %510 ]
  %526 = phi i16 [ %515, %514 ], [ %470, %516 ], [ %470, %510 ]
  %527 = phi i1 [ false, %514 ], [ true, %516 ], [ false, %510 ]
  br i1 %527, label %535, label %545

528:                                              ; preds = %492
  %529 = mul nuw nsw i32 %489, 1000
  %530 = getelementptr inbounds i16, ptr %488, i64 -1
  %531 = load i16, ptr %530, align 2, !tbaa !42
  %532 = zext i16 %531 to i32
  %533 = add nuw nsw i32 %529, %532
  %534 = udiv i32 %533, %363
  br label %535

535:                                              ; preds = %523, %528
  %536 = phi i32 [ %524, %523 ], [ %487, %528 ]
  %537 = phi i32 [ %525, %523 ], [ %534, %528 ]
  %538 = phi i16 [ %526, %523 ], [ %470, %528 ]
  %539 = call i32 @llvm.umax.i32(i32 %537, i32 1)
  %540 = trunc i32 %539 to i16
  %541 = add i16 %538, %540
  %542 = sub nsw i32 %536, %466
  %543 = sub nsw i32 0, %539
  %544 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %464, i32 noundef %542, ptr noundef nonnull %67, i32 noundef %354, i32 noundef 0, ptr noundef nonnull %464, i32 noundef %543)
  br label %467, !llvm.loop !86

545:                                              ; preds = %523, %485
  %546 = phi i32 [ %487, %485 ], [ %524, %523 ]
  %547 = phi i32 [ %469, %485 ], [ %525, %523 ]
  %548 = phi i16 [ %470, %485 ], [ %526, %523 ]
  %549 = icmp ne i32 %461, 0
  %550 = zext i16 %548 to i32
  %551 = icmp ne i16 %548, 0
  %552 = select i1 %549, i1 true, i1 %551
  br i1 %552, label %553, label %569

553:                                              ; preds = %545
  store i16 %548, ptr %462, align 2, !tbaa !42
  %554 = icmp eq i32 %461, 0
  br i1 %554, label %555, label %562

555:                                              ; preds = %553, %555
  %556 = phi ptr [ %561, %555 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %553 ]
  %557 = phi i32 [ %558, %555 ], [ %460, %553 ]
  %558 = add nsw i32 %557, 1
  %559 = load i32, ptr %556, align 4, !tbaa !48
  %560 = icmp ugt i32 %559, %550
  %561 = getelementptr inbounds i32, ptr %556, i64 1
  br i1 %560, label %564, label %555, !llvm.loop !87

562:                                              ; preds = %553
  %563 = add nsw i32 %460, 3
  br label %564

564:                                              ; preds = %555, %562
  %565 = phi i32 [ %563, %562 ], [ %558, %555 ]
  %566 = add nsw i32 %461, 1
  %567 = getelementptr inbounds i16, ptr %462, i64 -1
  %568 = icmp sgt i32 %565, %10
  br i1 %568, label %591, label %569

569:                                              ; preds = %564, %545
  %570 = phi i32 [ %565, %564 ], [ %460, %545 ]
  %571 = phi i32 [ %566, %564 ], [ 0, %545 ]
  %572 = phi ptr [ %567, %564 ], [ %462, %545 ]
  %573 = load i16, ptr %296, align 2, !tbaa !42
  %574 = icmp eq i16 %573, 0
  %575 = icmp eq i32 %546, 1
  %576 = and i1 %574, %575
  br i1 %576, label %577, label %585

577:                                              ; preds = %569
  %578 = icmp sgt i32 %458, %447
  %579 = select i1 %281, i1 true, i1 %578
  %580 = select i1 %451, i1 %579, i1 false
  %581 = xor i1 %580, true
  %582 = icmp eq i32 %458, 0
  %583 = and i1 %281, %582
  %584 = select i1 %581, i1 true, i1 %583
  br i1 %584, label %591, label %588

585:                                              ; preds = %569
  %586 = icmp eq i32 %458, 0
  %587 = and i1 %281, %586
  br i1 %587, label %591, label %588

588:                                              ; preds = %577, %585
  %589 = add i64 %455, -1
  %590 = add nsw i32 %458, -3
  br label %454, !llvm.loop !88

591:                                              ; preds = %577, %564, %585
  %592 = phi i32 [ %570, %585 ], [ %565, %564 ], [ %570, %577 ]
  %593 = phi i32 [ %571, %585 ], [ %566, %564 ], [ %571, %577 ]
  %594 = phi ptr [ %572, %585 ], [ %567, %564 ], [ %572, %577 ]
  %595 = icmp eq i32 %593, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %591
  store i16 0, ptr %594, align 2, !tbaa !42
  br label %599

597:                                              ; preds = %591
  %598 = getelementptr inbounds i16, ptr %594, i64 1
  br label %599

599:                                              ; preds = %597, %596
  %600 = phi i32 [ 1, %596 ], [ %592, %597 ]
  %601 = phi i32 [ 1, %596 ], [ %593, %597 ]
  %602 = phi ptr [ %594, %596 ], [ %598, %597 ]
  store i32 0, ptr %9, align 4, !tbaa !48
  br i1 %281, label %669, label %603

603:                                              ; preds = %599
  %604 = load i16, ptr %296, align 2, !tbaa !42
  %605 = icmp ne i16 %604, 0
  %606 = icmp sgt i32 %546, 1
  %607 = or i1 %605, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %603
  store i32 1, ptr %9, align 4, !tbaa !48
  br label %871

609:                                              ; preds = %603
  %610 = load i16, ptr %602, align 2, !tbaa !42
  %611 = zext i16 %610 to i32
  %612 = and i32 %611, 1
  %613 = icmp eq i32 %612, 0
  %614 = icmp ne i16 %610, 0
  %615 = and i1 %614, %613
  br i1 %615, label %616, label %871

616:                                              ; preds = %609
  %617 = icmp slt i32 %458, %447
  br i1 %617, label %618, label %639

618:                                              ; preds = %616, %632
  %619 = phi i64 [ %621, %632 ], [ 0, %616 ]
  %620 = phi i32 [ %633, %632 ], [ %458, %616 ]
  %621 = add nuw nsw i64 %619, 1
  %622 = trunc i64 %621 to i32
  %623 = lshr i32 %611, %622
  %624 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %621
  %625 = load i32, ptr %624, align 4, !tbaa !48
  %626 = mul i32 %625, %623
  %627 = lshr i32 %626, 17
  %628 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %621
  %629 = load i32, ptr %628, align 4, !tbaa !48
  %630 = mul i32 %627, %629
  %631 = icmp eq i32 %630, %611
  br i1 %631, label %632, label %635

632:                                              ; preds = %618
  %633 = add nsw i32 %620, 1
  %634 = icmp slt i32 %633, %447
  br i1 %634, label %618, label %635, !llvm.loop !89

635:                                              ; preds = %618, %632
  %636 = phi i32 [ %447, %632 ], [ %620, %618 ]
  %637 = phi i64 [ %621, %632 ], [ %619, %618 ]
  %638 = trunc i64 %637 to i32
  br label %639

639:                                              ; preds = %635, %616
  %640 = phi i32 [ %458, %616 ], [ %636, %635 ]
  %641 = phi i32 [ 0, %616 ], [ %638, %635 ]
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %871, label %643

643:                                              ; preds = %639
  %644 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %602, i32 noundef %601, i32 noundef %641)
  %645 = add nsw i32 %644, -1
  %646 = mul nsw i32 %645, 3
  %647 = add nsw i32 %646, 1
  %648 = icmp slt i32 %644, 1
  br i1 %648, label %871, label %649

649:                                              ; preds = %643
  %650 = sext i32 %645 to i64
  %651 = getelementptr inbounds i16, ptr %602, i64 %650
  br label %652

652:                                              ; preds = %649, %659
  %653 = phi i32 [ %660, %659 ], [ %647, %649 ]
  %654 = phi ptr [ %661, %659 ], [ %651, %649 ]
  %655 = load i16, ptr %654, align 2, !tbaa !42
  %656 = icmp eq i16 %655, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %652
  %658 = icmp eq i32 %653, 1
  br i1 %658, label %871, label %659

659:                                              ; preds = %657
  %660 = add nsw i32 %653, -3
  %661 = getelementptr inbounds i16, ptr %654, i64 -1
  %662 = icmp ult ptr %661, %602
  br i1 %662, label %871, label %652, !llvm.loop !47

663:                                              ; preds = %652
  %664 = icmp ult i16 %655, 10
  br i1 %664, label %871, label %665

665:                                              ; preds = %663
  %666 = icmp ult i16 %655, 100
  %667 = select i1 %666, i32 1, i32 2
  %668 = add nsw i32 %667, %653
  br label %871

669:                                              ; preds = %599
  %670 = add nsw i32 %600, %458
  %671 = icmp sgt i32 %670, %10
  br i1 %671, label %672, label %675

672:                                              ; preds = %669
  %673 = load i32, ptr %5, align 4, !tbaa !48
  %674 = or i32 %673, 4
  store i32 %674, ptr %5, align 4, !tbaa !48
  br label %879

675:                                              ; preds = %669
  %676 = and i32 %221, 80
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %871, label %678

678:                                              ; preds = %675
  %679 = load i8, ptr %11, align 4, !tbaa !35
  %680 = load i16, ptr %296, align 2, !tbaa !42
  %681 = icmp eq i16 %680, 0
  %682 = icmp eq i32 %546, 1
  %683 = and i1 %681, %682
  br i1 %683, label %684, label %692

684:                                              ; preds = %678
  %685 = load i32, ptr %211, align 4, !tbaa !40
  %686 = load i32, ptr %214, align 4, !tbaa !40
  %687 = call i32 @llvm.smin.i32(i32 %686, i32 %685)
  %688 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %688, align 4, !tbaa !35
  %689 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %689, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %690 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %690, align 2, !tbaa !42
  store i32 %687, ptr %689, align 4, !tbaa !40
  %691 = and i8 %679, -128
  store i8 %691, ptr %688, align 4, !tbaa !35
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5)
  br label %865

692:                                              ; preds = %678
  %693 = load i16, ptr %602, align 2, !tbaa !42
  %694 = and i16 %693, 1
  %695 = icmp ne i16 %694, 0
  %696 = add nsw i32 %458, %445
  %697 = load i32, ptr %211, align 4, !tbaa !40
  %698 = sub i32 %696, %697
  %699 = load i32, ptr %214, align 4, !tbaa !40
  %700 = add nsw i32 %698, %699
  %701 = call i32 @llvm.smin.i32(i32 %445, i32 %700)
  %702 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %296, i32 noundef %546, i32 noundef %701)
  %703 = add nsw i32 %702, -1
  %704 = mul nsw i32 %703, 3
  %705 = add nsw i32 %704, 1
  %706 = icmp slt i32 %702, 1
  br i1 %706, label %727, label %707

707:                                              ; preds = %692
  %708 = sext i32 %703 to i64
  %709 = getelementptr inbounds i16, ptr %296, i64 %708
  br label %710

710:                                              ; preds = %707, %717
  %711 = phi i32 [ %718, %717 ], [ %705, %707 ]
  %712 = phi ptr [ %719, %717 ], [ %709, %707 ]
  %713 = load i16, ptr %712, align 2, !tbaa !42
  %714 = icmp eq i16 %713, 0
  br i1 %714, label %715, label %721

715:                                              ; preds = %710
  %716 = icmp eq i32 %711, 1
  br i1 %716, label %727, label %717

717:                                              ; preds = %715
  %718 = add nsw i32 %711, -3
  %719 = getelementptr inbounds i16, ptr %712, i64 -1
  %720 = icmp ult ptr %719, %296
  br i1 %720, label %727, label %710, !llvm.loop !47

721:                                              ; preds = %710
  %722 = icmp ult i16 %713, 10
  br i1 %722, label %727, label %723

723:                                              ; preds = %721
  %724 = icmp ult i16 %713, 100
  %725 = select i1 %724, i32 1, i32 2
  %726 = add nsw i32 %725, %711
  br label %727

727:                                              ; preds = %715, %717, %692, %721, %723
  %728 = phi i32 [ %711, %721 ], [ %726, %723 ], [ %705, %692 ], [ %718, %717 ], [ 1, %715 ]
  %729 = icmp slt i32 %728, 50
  br i1 %729, label %730, label %735

730:                                              ; preds = %727
  %731 = sext i32 %728 to i64
  %732 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !51
  %734 = zext i8 %733 to i32
  br label %738

735:                                              ; preds = %727
  %736 = add nuw nsw i32 %728, 2
  %737 = udiv i32 %736, 3
  br label %738

738:                                              ; preds = %735, %730
  %739 = phi i32 [ %734, %730 ], [ %737, %735 ]
  %740 = load i32, ptr %211, align 4, !tbaa !40
  %741 = load i32, ptr %214, align 4, !tbaa !40
  %742 = call i32 @llvm.smin.i32(i32 %741, i32 %740)
  %743 = and i32 %221, 16
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %865, label %745

745:                                              ; preds = %738
  %746 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %296, i32 noundef %739, ptr noundef nonnull %296, i32 noundef %739, i32 noundef 0, ptr noundef nonnull %296, i32 noundef 1)
  %747 = load i32, ptr %2, align 4, !tbaa !41
  %748 = icmp slt i32 %747, 50
  br i1 %748, label %749, label %754

749:                                              ; preds = %745
  %750 = sext i32 %747 to i64
  %751 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %750
  %752 = load i8, ptr %751, align 1, !tbaa !51
  %753 = zext i8 %752 to i32
  br label %757

754:                                              ; preds = %745
  %755 = add nuw nsw i32 %747, 2
  %756 = udiv i32 %755, 3
  br label %757

757:                                              ; preds = %754, %749
  %758 = phi i32 [ %753, %749 ], [ %756, %754 ]
  %759 = load i32, ptr %214, align 4, !tbaa !40
  %760 = sub nsw i32 %759, %742
  %761 = call fastcc i32 @decUnitCompare(ptr noundef nonnull %296, i32 noundef %746, ptr noundef nonnull %67, i32 noundef %758, i32 noundef %760), !range !90
  %762 = icmp eq i32 %761, -2147483648
  br i1 %762, label %767, label %763

763:                                              ; preds = %757
  %764 = sext i32 %746 to i64
  %765 = getelementptr inbounds i16, ptr %296, i64 %764
  %766 = icmp sgt i32 %746, 0
  br i1 %766, label %770, label %783

767:                                              ; preds = %757
  %768 = load i32, ptr %5, align 4, !tbaa !48
  %769 = or i32 %768, 16
  store i32 %769, ptr %5, align 4, !tbaa !48
  br label %865

770:                                              ; preds = %763, %780
  %771 = phi ptr [ %781, %780 ], [ %296, %763 ]
  %772 = load i16, ptr %771, align 2, !tbaa !42
  %773 = and i16 %772, 1
  %774 = lshr i16 %772, 1
  store i16 %774, ptr %771, align 2, !tbaa !42
  %775 = icmp eq i16 %773, 0
  br i1 %775, label %780, label %776

776:                                              ; preds = %770
  %777 = getelementptr inbounds i16, ptr %771, i64 -1
  %778 = load i16, ptr %777, align 2, !tbaa !42
  %779 = add i16 %778, 500
  store i16 %779, ptr %777, align 2, !tbaa !42
  br label %780

780:                                              ; preds = %770, %776
  %781 = getelementptr inbounds i16, ptr %771, i64 1
  %782 = icmp ult ptr %781, %765
  br i1 %782, label %770, label %783, !llvm.loop !91

783:                                              ; preds = %780, %763
  %784 = icmp sgt i32 %761, 0
  %785 = icmp eq i32 %761, 0
  %786 = and i1 %695, %785
  %787 = select i1 %784, i1 true, i1 %786
  br i1 %787, label %788, label %865

788:                                              ; preds = %783
  %789 = icmp eq i32 %600, %10
  br i1 %789, label %790, label %811

790:                                              ; preds = %788
  %791 = icmp sgt i32 %600, 3
  br i1 %791, label %792, label %797

792:                                              ; preds = %790, %807
  %793 = phi ptr [ %809, %807 ], [ %602, %790 ]
  %794 = phi i32 [ %808, %807 ], [ %600, %790 ]
  %795 = load i16, ptr %793, align 2, !tbaa !42
  %796 = icmp eq i16 %795, 999
  br i1 %796, label %807, label %811

797:                                              ; preds = %807, %790
  %798 = phi i32 [ %600, %790 ], [ %808, %807 ]
  %799 = phi ptr [ %602, %790 ], [ %809, %807 ]
  %800 = load i16, ptr %799, align 2, !tbaa !42
  %801 = zext i16 %800 to i32
  %802 = sext i32 %798 to i64
  %803 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !48
  %805 = add i32 %804, -1
  %806 = icmp ne i32 %805, %801
  br label %811

807:                                              ; preds = %792
  %808 = add nsw i32 %794, -3
  %809 = getelementptr inbounds i16, ptr %793, i64 1
  %810 = icmp sgt i32 %794, 6
  br i1 %810, label %792, label %797, !llvm.loop !92

811:                                              ; preds = %792, %797, %788
  %812 = phi i1 [ true, %788 ], [ %806, %797 ], [ true, %792 ]
  br i1 %812, label %816, label %813

813:                                              ; preds = %811
  %814 = load i32, ptr %5, align 4, !tbaa !48
  %815 = or i32 %814, 4
  store i32 %815, ptr %5, align 4, !tbaa !48
  br label %865

816:                                              ; preds = %811
  %817 = load i32, ptr %214, align 4, !tbaa !40
  %818 = sub nsw i32 %817, %742
  %819 = sdiv i32 %818, 3
  %820 = srem i32 %818, 3
  %821 = load i32, ptr %2, align 4, !tbaa !41
  %822 = icmp slt i32 %821, 50
  br i1 %822, label %823, label %828

823:                                              ; preds = %816
  %824 = sext i32 %821 to i64
  %825 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !51
  %827 = zext i8 %826 to i32
  br label %831

828:                                              ; preds = %816
  %829 = add nuw nsw i32 %821, 2
  %830 = udiv i32 %829, 3
  br label %831

831:                                              ; preds = %828, %823
  %832 = phi i32 [ %827, %823 ], [ %830, %828 ]
  %833 = sext i32 %820 to i64
  %834 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %833
  %835 = load i32, ptr %834, align 4, !tbaa !48
  %836 = sub nsw i32 0, %835
  %837 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %296, i32 noundef %739, ptr noundef nonnull %67, i32 noundef %832, i32 noundef %819, ptr noundef nonnull %296, i32 noundef %836)
  %838 = xor i32 %837, -1
  %839 = mul nsw i32 %838, 3
  %840 = add nsw i32 %839, 1
  %841 = icmp sgt i32 %837, -1
  br i1 %841, label %862, label %842

842:                                              ; preds = %831
  %843 = zext nneg i32 %838 to i64
  %844 = getelementptr inbounds i16, ptr %296, i64 %843
  br label %845

845:                                              ; preds = %842, %852
  %846 = phi i32 [ %853, %852 ], [ %840, %842 ]
  %847 = phi ptr [ %854, %852 ], [ %844, %842 ]
  %848 = load i16, ptr %847, align 2, !tbaa !42
  %849 = icmp eq i16 %848, 0
  br i1 %849, label %850, label %856

850:                                              ; preds = %845
  %851 = icmp eq i32 %846, 1
  br i1 %851, label %862, label %852

852:                                              ; preds = %850
  %853 = add nsw i32 %846, -3
  %854 = getelementptr inbounds i16, ptr %847, i64 -1
  %855 = icmp ult ptr %854, %296
  br i1 %855, label %862, label %845, !llvm.loop !47

856:                                              ; preds = %845
  %857 = icmp ult i16 %848, 10
  br i1 %857, label %862, label %858

858:                                              ; preds = %856
  %859 = icmp ult i16 %848, 100
  %860 = select i1 %859, i32 1, i32 2
  %861 = add nsw i32 %860, %846
  br label %862

862:                                              ; preds = %850, %852, %831, %856, %858
  %863 = phi i32 [ %846, %856 ], [ %861, %858 ], [ %840, %831 ], [ %853, %852 ], [ 1, %850 ]
  %864 = xor i8 %679, -128
  br label %865

865:                                              ; preds = %767, %783, %862, %813, %738, %684
  %866 = phi i32 [ %458, %684 ], [ %742, %738 ], [ %742, %813 ], [ %742, %862 ], [ %742, %783 ], [ %742, %767 ]
  %867 = phi i8 [ %679, %684 ], [ %679, %738 ], [ %679, %813 ], [ %864, %862 ], [ %679, %783 ], [ %679, %767 ]
  %868 = phi i1 [ false, %684 ], [ true, %738 ], [ %812, %813 ], [ %812, %862 ], [ true, %783 ], [ false, %767 ]
  %869 = phi i32 [ %600, %684 ], [ %728, %738 ], [ %728, %813 ], [ %863, %862 ], [ %728, %783 ], [ %728, %767 ]
  %870 = phi ptr [ %602, %684 ], [ %296, %738 ], [ %296, %813 ], [ %296, %862 ], [ %296, %783 ], [ %296, %767 ]
  br i1 %868, label %871, label %879

871:                                              ; preds = %659, %657, %643, %639, %665, %663, %865, %609, %675, %608
  %872 = phi i32 [ %458, %608 ], [ %866, %865 ], [ %458, %675 ], [ %458, %609 ], [ %640, %663 ], [ %640, %665 ], [ %640, %639 ], [ %640, %643 ], [ %640, %657 ], [ %640, %659 ]
  %873 = phi i8 [ %18, %608 ], [ %867, %865 ], [ %18, %675 ], [ %18, %609 ], [ %18, %663 ], [ %18, %665 ], [ %18, %639 ], [ %18, %643 ], [ %18, %657 ], [ %18, %659 ]
  %874 = phi i32 [ %600, %608 ], [ %869, %865 ], [ %600, %675 ], [ %600, %609 ], [ %653, %663 ], [ %668, %665 ], [ %600, %639 ], [ %647, %643 ], [ %660, %659 ], [ 1, %657 ]
  %875 = phi ptr [ %602, %608 ], [ %870, %865 ], [ %602, %675 ], [ %602, %609 ], [ %602, %663 ], [ %602, %665 ], [ %602, %639 ], [ %602, %643 ], [ %602, %657 ], [ %602, %659 ]
  %876 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %872, ptr %876, align 4, !tbaa !40
  %877 = and i8 %873, -128
  %878 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %877, ptr %878, align 4, !tbaa !35
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %875, i32 noundef %874, ptr noundef nonnull %9, ptr noundef %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5)
  br label %879

879:                                              ; preds = %865, %156, %205, %209, %162, %86, %101, %99, %871, %672, %291, %260, %238, %227, %65, %39, %36, %25
  %880 = phi ptr [ null, %25 ], [ null, %36 ], [ null, %39 ], [ null, %65 ], [ null, %86 ], [ null, %99 ], [ null, %101 ], [ null, %156 ], [ null, %162 ], [ null, %209 ], [ null, %205 ], [ null, %260 ], [ null, %291 ], [ %295, %871 ], [ %295, %672 ], [ %295, %865 ], [ null, %227 ], [ null, %238 ]
  %881 = phi ptr [ null, %25 ], [ null, %36 ], [ null, %39 ], [ null, %65 ], [ null, %86 ], [ null, %99 ], [ null, %101 ], [ null, %156 ], [ null, %162 ], [ null, %209 ], [ null, %205 ], [ null, %260 ], [ %264, %291 ], [ %264, %871 ], [ %264, %672 ], [ %264, %865 ], [ null, %227 ], [ null, %238 ]
  %882 = icmp eq ptr %880, null
  br i1 %882, label %884, label %883

883:                                              ; preds = %879
  call void @free(ptr noundef %880) #19
  br label %884

884:                                              ; preds = %883, %879
  %885 = icmp eq ptr %881, null
  br i1 %885, label %887, label %886

886:                                              ; preds = %884
  call void @free(ptr noundef %881) #19
  br label %887

887:                                              ; preds = %886, %884
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberDivideInteger(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 32, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberExp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !48
  %5 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4), !range !93
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call fastcc ptr @decExpOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr %4, align 4, !tbaa !48
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, 221
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i32 %10, 1073741824
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = and i32 %10, -1073741825
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %21, align 4, !tbaa !35
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %23, align 2, !tbaa !42
  store i8 32, ptr %21, align 4, !tbaa !35
  br label %24

24:                                               ; preds = %12, %18, %20
  %25 = phi i32 [ %19, %18 ], [ %10, %20 ], [ %10, %12 ]
  %26 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %25) #19
  br label %27

27:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @decCheckMath(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #8 !prof !34 {
  %4 = load i32, ptr %2, align 4, !tbaa !48
  %5 = load i32, ptr %1, align 4, !tbaa !62
  %6 = icmp sgt i32 %5, 999999
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !70
  %10 = icmp sgt i32 %9, 999999
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !69
  %14 = icmp slt i32 %13, -999999
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 4, !tbaa !41
  %17 = icmp sgt i32 %16, 999999
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = add i32 %16, -1000001
  %22 = add i32 %21, %20
  %23 = icmp ult i32 %22, -2999997
  br i1 %23, label %24, label %38

24:                                               ; preds = %18, %15
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !42
  %27 = icmp eq i16 %26, 0
  %28 = icmp eq i32 %16, 1
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !35
  %33 = and i8 %32, 112
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24, %30, %3, %7, %11
  %36 = phi i32 [ 64, %11 ], [ 64, %7 ], [ 64, %3 ], [ 128, %30 ], [ 128, %24 ]
  %37 = or i32 %4, %36
  store i32 %37, ptr %2, align 4, !tbaa !48
  br label %38

38:                                               ; preds = %35, %30, %18
  %39 = load i32, ptr %2, align 4, !tbaa !48
  %40 = icmp ne i32 %39, %4
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decExpOp(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #3 !prof !34 {
  %5 = ptrtoint ptr %1 to i64
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.decContext, align 4
  %9 = alloca %struct.decContext, align 4
  %10 = alloca %struct.decContext, align 4
  %11 = alloca [5 x %struct.decNumber], align 16
  %12 = alloca [6 x %struct.decNumber], align 16
  %13 = alloca [10 x %struct.decNumber], align 16
  %14 = alloca [2 x %struct.decNumber], align 16
  %15 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #19
  %16 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !35
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %4
  %22 = and i32 %18, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %70, label %24

24:                                               ; preds = %21
  %25 = icmp sgt i8 %17, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %27, align 4, !tbaa !35
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %29, align 2, !tbaa !42
  br label %413

30:                                               ; preds = %24
  %31 = icmp eq ptr %0, %1
  br i1 %31, label %413, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %17, ptr %33, align 4, !tbaa !35
  %34 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !40
  %36 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !40
  %37 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %37, ptr %0, align 4, !tbaa !41
  %38 = getelementptr inbounds i8, ptr %1, i64 10
  %39 = load i16, ptr %38, align 2, !tbaa !42
  %40 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %39, ptr %40, align 2, !tbaa !42
  %41 = load i32, ptr %1, align 4, !tbaa !41
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %413

43:                                               ; preds = %32
  %44 = getelementptr %struct.decNumber, ptr %0, i64 1
  %45 = icmp slt i32 %41, 50
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = zext nneg i32 %41 to i64
  %48 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %43
  %52 = add nuw nsw i32 %41, 2
  %53 = udiv i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %50, %46 ], [ %53, %51 ]
  %56 = shl nuw i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, ptr %1, i64 %57
  %59 = getelementptr i8, ptr %58, i64 10
  %60 = icmp ugt i32 %55, 1
  br i1 %60, label %61, label %413

61:                                               ; preds = %54
  %62 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi ptr [ %68, %63 ], [ %44, %61 ]
  %65 = phi ptr [ %67, %63 ], [ %62, %61 ]
  %66 = load i16, ptr %65, align 2, !tbaa !42
  store i16 %66, ptr %64, align 2, !tbaa !42
  %67 = getelementptr inbounds i16, ptr %65, i64 1
  %68 = getelementptr inbounds i16, ptr %64, i64 1
  %69 = icmp ult ptr %67, %59
  br i1 %69, label %63, label %413, !llvm.loop !77

70:                                               ; preds = %21
  %71 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  br label %413

72:                                               ; preds = %4
  %73 = getelementptr inbounds i8, ptr %1, i64 10
  %74 = load i16, ptr %73, align 2, !tbaa !42
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, ptr %1, align 4, !tbaa !41
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %80, align 4, !tbaa !35
  %81 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %81, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %82 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %82, align 2, !tbaa !42
  br label %413

83:                                               ; preds = %76, %72
  %84 = getelementptr inbounds %struct.decNumber, ptr %14, i64 0, i32 2
  store i8 0, ptr %84, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.decNumber, ptr %14, i64 0, i32 1
  store i32 0, ptr %85, align 4, !tbaa !40
  store i32 1, ptr %14, align 16, !tbaa !41
  %86 = getelementptr inbounds %struct.decNumber, ptr %14, i64 0, i32 3
  store i16 4, ptr %86, align 2, !tbaa !42
  %87 = load i32, ptr %2, align 4, !tbaa !62
  %88 = sub nsw i32 0, %87
  %89 = xor i32 %87, -1
  %90 = icmp slt i8 %17, 0
  %91 = select i1 %90, i32 %89, i32 %88
  store i32 %91, ptr %85, align 4, !tbaa !40
  %92 = call fastcc i32 @decCompare(ptr noundef nonnull %14, ptr noundef %1, i8 noundef zeroext 1)
  %93 = icmp eq i32 %92, -2147483648
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, ptr %3, align 4, !tbaa !48
  %96 = or i32 %95, 16
  store i32 %96, ptr %3, align 4, !tbaa !48
  br label %413

97:                                               ; preds = %83
  %98 = icmp sgt i32 %92, -1
  br i1 %98, label %99, label %109

99:                                               ; preds = %97
  %100 = load i32, ptr %2, align 4, !tbaa !62
  %101 = add nsw i32 %100, -1
  %102 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %102, align 4, !tbaa !35
  %103 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %103, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %104 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %104, align 2, !tbaa !42
  %105 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %104, i32 noundef 1, i32 noundef %101)
  store i32 %105, ptr %0, align 4, !tbaa !41
  %106 = sub nsw i32 1, %100
  store i32 %106, ptr %103, align 4, !tbaa !40
  %107 = load i32, ptr %3, align 4, !tbaa !48
  %108 = or i32 %107, 2080
  store i32 %108, ptr %3, align 4, !tbaa !48
  br label %413

109:                                              ; preds = %97
  %110 = call ptr @decContextDefault(ptr noundef nonnull %8, i32 noundef 64) #19
  %111 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !70
  %113 = getelementptr inbounds %struct.decContext, ptr %8, i64 0, i32 1
  store i32 %112, ptr %113, align 4, !tbaa !70
  %114 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !69
  %116 = getelementptr inbounds %struct.decContext, ptr %8, i64 0, i32 2
  store i32 %115, ptr %116, align 4, !tbaa !69
  %117 = getelementptr inbounds %struct.decContext, ptr %8, i64 0, i32 6
  store i8 0, ptr %117, align 4, !tbaa !64
  %118 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !40
  %120 = load i32, ptr %1, align 4, !tbaa !41
  %121 = add nsw i32 %120, %119
  %122 = icmp sgt i32 %121, 8
  br i1 %122, label %123, label %130

123:                                              ; preds = %109
  %124 = getelementptr inbounds %struct.decNumber, ptr %13, i64 0, i32 2
  store i8 0, ptr %124, align 8, !tbaa !35
  %125 = getelementptr inbounds %struct.decNumber, ptr %13, i64 0, i32 1
  store i32 0, ptr %125, align 4, !tbaa !40
  store i32 1, ptr %13, align 16, !tbaa !41
  %126 = getelementptr inbounds %struct.decNumber, ptr %13, i64 0, i32 3
  store i16 2, ptr %126, align 2, !tbaa !42
  %127 = load i8, ptr %16, align 4, !tbaa !35
  %128 = icmp sgt i8 %127, -1
  br i1 %128, label %339, label %129

129:                                              ; preds = %123
  store i32 -2, ptr %125, align 4, !tbaa !40
  br label %339

130:                                              ; preds = %109
  %131 = icmp sgt i32 %120, 8
  %132 = zext i1 %131 to i32
  %133 = sub nsw i32 8, %121
  %134 = call i32 @llvm.smin.i32(i32 %133, i32 %132)
  %135 = add i32 %120, %134
  %136 = sub i32 0, %135
  %137 = add nsw i32 %134, %121
  %138 = icmp slt i32 %137, 0
  %139 = call i32 @llvm.smax.i32(i32 %137, i32 0)
  %140 = icmp eq i32 %119, %136
  %141 = or i1 %138, %140
  br i1 %141, label %207, label %142

142:                                              ; preds = %130
  %143 = icmp slt i32 %120, 50
  br i1 %143, label %144, label %149

144:                                              ; preds = %142
  %145 = sext i32 %120 to i64
  %146 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !51
  %148 = zext i8 %147 to i32
  br label %152

149:                                              ; preds = %142
  %150 = add nuw nsw i32 %120, 2
  %151 = udiv i32 %150, 3
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %148, %144 ], [ %151, %149 ]
  %154 = icmp ugt i32 %153, 25
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = shl nuw i32 %153, 1
  %157 = add nuw i32 %156, 10
  %158 = zext i32 %157 to i64
  %159 = call noalias ptr @malloc(i64 noundef %158) #20
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, ptr %3, align 4, !tbaa !48
  %163 = or i32 %162, 16
  store i32 %163, ptr %3, align 4, !tbaa !48
  br label %202

164:                                              ; preds = %155, %152
  %165 = phi ptr [ null, %152 ], [ %159, %155 ]
  %166 = phi ptr [ %11, %152 ], [ %159, %155 ]
  %167 = icmp eq ptr %166, %1
  br i1 %167, label %200, label %168

168:                                              ; preds = %164
  %169 = load i8, ptr %16, align 4, !tbaa !35
  %170 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 2
  store i8 %169, ptr %170, align 4, !tbaa !35
  %171 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 1
  store i32 %119, ptr %171, align 4, !tbaa !40
  store i32 %120, ptr %166, align 4, !tbaa !41
  %172 = load i16, ptr %73, align 2, !tbaa !42
  %173 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 3
  store i16 %172, ptr %173, align 2, !tbaa !42
  %174 = icmp sgt i32 %120, 3
  br i1 %174, label %175, label %200

175:                                              ; preds = %168
  %176 = getelementptr %struct.decNumber, ptr %166, i64 1
  br i1 %143, label %177, label %182

177:                                              ; preds = %175
  %178 = zext nneg i32 %120 to i64
  %179 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !51
  %181 = zext i8 %180 to i32
  br label %185

182:                                              ; preds = %175
  %183 = add nuw nsw i32 %120, 2
  %184 = udiv i32 %183, 3
  br label %185

185:                                              ; preds = %182, %177
  %186 = phi i32 [ %181, %177 ], [ %184, %182 ]
  %187 = icmp ugt i32 %186, 1
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = getelementptr %struct.decNumber, ptr %1, i64 1
  %190 = shl nuw i32 %186, 1
  %191 = zext i32 %190 to i64
  %192 = add i64 %5, %191
  %193 = add i64 %192, 10
  %194 = add i64 %5, 14
  %195 = call i64 @llvm.umax.i64(i64 %193, i64 %194)
  %196 = add i64 %195, -13
  %197 = sub i64 %196, %5
  %198 = and i64 %197, -2
  %199 = add i64 %198, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %176, ptr align 2 %189, i64 %199, i1 false), !tbaa !42
  br label %200

200:                                              ; preds = %188, %185, %164, %168
  %201 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 1
  store i32 %136, ptr %201, align 4, !tbaa !40
  br label %202

202:                                              ; preds = %200, %161
  %203 = phi ptr [ null, %161 ], [ %165, %200 ]
  %204 = phi ptr [ %1, %161 ], [ %166, %200 ]
  %205 = phi i1 [ false, %161 ], [ true, %200 ]
  %206 = phi i32 [ 2, %161 ], [ 0, %200 ]
  br i1 %205, label %207, label %330

207:                                              ; preds = %202, %130
  %208 = phi ptr [ %203, %202 ], [ null, %130 ]
  %209 = phi ptr [ %204, %202 ], [ %1, %130 ]
  %210 = load i32, ptr %209, align 4, !tbaa !41
  %211 = load i32, ptr %2, align 4, !tbaa !62
  %212 = call i32 @llvm.smax.i32(i32 %210, i32 %211)
  %213 = add nsw i32 %212, %139
  %214 = add nsw i32 %213, 2
  %215 = shl nsw i32 %214, 1
  %216 = icmp slt i32 %213, 23
  br i1 %216, label %217, label %222

217:                                              ; preds = %207
  %218 = sext i32 %215 to i64
  %219 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %218
  %220 = load i8, ptr %219, align 2, !tbaa !51
  %221 = zext i8 %220 to i32
  br label %225

222:                                              ; preds = %207
  %223 = add nuw nsw i32 %215, 2
  %224 = udiv i32 %223, 3
  br label %225

225:                                              ; preds = %222, %217
  %226 = phi i32 [ %221, %217 ], [ %224, %222 ]
  %227 = icmp ugt i32 %226, 55
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = shl nuw i32 %226, 1
  %230 = add nuw i32 %229, 10
  %231 = zext i32 %230 to i64
  %232 = call noalias ptr @malloc(i64 noundef %231) #20
  %233 = icmp eq ptr %232, null
  br i1 %233, label %325, label %234

234:                                              ; preds = %228, %225
  %235 = phi ptr [ null, %225 ], [ %232, %228 ]
  %236 = phi ptr [ %13, %225 ], [ %232, %228 ]
  %237 = icmp slt i32 %213, 46
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = add nsw i32 %213, 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !51
  %243 = zext i8 %242 to i32
  br label %247

244:                                              ; preds = %234
  %245 = add nuw nsw i32 %213, 6
  %246 = udiv i32 %245, 3
  br label %247

247:                                              ; preds = %244, %238
  %248 = phi i32 [ %243, %238 ], [ %246, %244 ]
  %249 = icmp ugt i32 %248, 31
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = shl nuw i32 %248, 1
  %252 = add nuw i32 %251, 10
  %253 = zext i32 %252 to i64
  %254 = call noalias ptr @malloc(i64 noundef %253) #20
  %255 = icmp eq ptr %254, null
  br i1 %255, label %325, label %256

256:                                              ; preds = %250, %247
  %257 = phi ptr [ null, %247 ], [ %254, %250 ]
  %258 = phi ptr [ %12, %247 ], [ %254, %250 ]
  %259 = icmp eq ptr %258, %209
  br i1 %259, label %299, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.decNumber, ptr %209, i64 0, i32 2
  %262 = load i8, ptr %261, align 4, !tbaa !35
  %263 = getelementptr inbounds %struct.decNumber, ptr %258, i64 0, i32 2
  store i8 %262, ptr %263, align 4, !tbaa !35
  %264 = getelementptr inbounds %struct.decNumber, ptr %209, i64 0, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !40
  %266 = getelementptr inbounds %struct.decNumber, ptr %258, i64 0, i32 1
  store i32 %265, ptr %266, align 4, !tbaa !40
  store i32 %210, ptr %258, align 4, !tbaa !41
  %267 = getelementptr inbounds i8, ptr %209, i64 10
  %268 = load i16, ptr %267, align 2, !tbaa !42
  %269 = getelementptr inbounds %struct.decNumber, ptr %258, i64 0, i32 3
  store i16 %268, ptr %269, align 2, !tbaa !42
  %270 = load i32, ptr %209, align 4, !tbaa !41
  %271 = icmp sgt i32 %270, 3
  br i1 %271, label %272, label %299

272:                                              ; preds = %260
  %273 = getelementptr %struct.decNumber, ptr %258, i64 1
  %274 = icmp slt i32 %270, 50
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = zext nneg i32 %270 to i64
  %277 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !51
  %279 = zext i8 %278 to i32
  br label %283

280:                                              ; preds = %272
  %281 = add nuw nsw i32 %270, 2
  %282 = udiv i32 %281, 3
  br label %283

283:                                              ; preds = %280, %275
  %284 = phi i32 [ %279, %275 ], [ %282, %280 ]
  %285 = shl nuw i32 %284, 1
  %286 = zext i32 %285 to i64
  %287 = add nuw nsw i64 %286, 10
  %288 = getelementptr inbounds i8, ptr %209, i64 %287
  %289 = icmp ugt i32 %284, 1
  br i1 %289, label %290, label %299

290:                                              ; preds = %283
  %291 = getelementptr %struct.decNumber, ptr %209, i64 1
  br label %292

292:                                              ; preds = %290, %292
  %293 = phi ptr [ %297, %292 ], [ %273, %290 ]
  %294 = phi ptr [ %296, %292 ], [ %291, %290 ]
  %295 = load i16, ptr %294, align 2, !tbaa !42
  store i16 %295, ptr %293, align 2, !tbaa !42
  %296 = getelementptr inbounds i16, ptr %294, i64 1
  %297 = getelementptr inbounds i16, ptr %293, i64 1
  %298 = icmp ult ptr %296, %288
  br i1 %298, label %292, label %299, !llvm.loop !77

299:                                              ; preds = %292, %283, %256, %260
  %300 = getelementptr inbounds %struct.decNumber, ptr %236, i64 0, i32 2
  store i8 0, ptr %300, align 4, !tbaa !35
  %301 = getelementptr inbounds %struct.decNumber, ptr %236, i64 0, i32 1
  store i32 0, ptr %301, align 4, !tbaa !40
  store i32 1, ptr %236, align 4, !tbaa !41
  %302 = getelementptr inbounds %struct.decNumber, ptr %236, i64 0, i32 3
  store i16 1, ptr %302, align 2, !tbaa !42
  store i8 0, ptr %84, align 8, !tbaa !35
  store i32 0, ptr %85, align 4, !tbaa !40
  store i32 1, ptr %14, align 16, !tbaa !41
  store i16 2, ptr %86, align 2, !tbaa !42
  %303 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 2
  store i8 0, ptr %303, align 4, !tbaa !35
  %304 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 1
  store i32 0, ptr %304, align 4, !tbaa !40
  store i32 1, ptr %15, align 4, !tbaa !41
  %305 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 3
  store i16 1, ptr %305, align 2, !tbaa !42
  %306 = call ptr @decContextDefault(ptr noundef nonnull %9, i32 noundef 64) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %10, ptr noundef nonnull align 4 dereferenceable(28) %9, i64 28, i1 false), !tbaa.struct !94
  store i32 %215, ptr %8, align 4, !tbaa !62
  store i32 %214, ptr %9, align 4, !tbaa !62
  %307 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 2
  store i32 -999999999, ptr %307, align 4, !tbaa !69
  %308 = getelementptr inbounds %struct.decNumber, ptr %258, i64 0, i32 1
  br label %309

309:                                              ; preds = %323, %299
  %310 = call fastcc ptr @decAddOp(ptr noundef nonnull %236, ptr noundef nonnull %236, ptr noundef nonnull %258, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %3)
  %311 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %258, ptr noundef nonnull %258, ptr noundef nonnull %209, ptr noundef nonnull %9, ptr noundef nonnull %6)
  %312 = call fastcc ptr @decDivideOp(ptr noundef nonnull %258, ptr noundef nonnull %258, ptr noundef nonnull %14, ptr noundef nonnull %9, i8 noundef zeroext -128, ptr noundef nonnull %6)
  %313 = load i32, ptr %236, align 4, !tbaa !41
  %314 = load i32, ptr %301, align 4, !tbaa !40
  %315 = add nsw i32 %314, %313
  %316 = load i32, ptr %258, align 4, !tbaa !41
  %317 = load i32, ptr %308, align 4, !tbaa !40
  %318 = add i32 %316, %214
  %319 = add i32 %318, %317
  %320 = icmp sle i32 %315, %319
  %321 = icmp slt i32 %313, %214
  %322 = or i1 %321, %320
  br i1 %322, label %323, label %330

323:                                              ; preds = %309
  %324 = call fastcc ptr @decAddOp(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef nonnull %6)
  br label %309, !llvm.loop !95

325:                                              ; preds = %250, %228
  %326 = phi ptr [ null, %228 ], [ %235, %250 ]
  %327 = phi ptr [ %13, %228 ], [ %236, %250 ]
  %328 = load i32, ptr %3, align 4, !tbaa !48
  %329 = or i32 %328, 16
  store i32 %329, ptr %3, align 4, !tbaa !48
  br label %330

330:                                              ; preds = %309, %325, %202
  %331 = phi ptr [ %203, %202 ], [ %208, %325 ], [ %208, %309 ]
  %332 = phi ptr [ null, %202 ], [ null, %325 ], [ %257, %309 ]
  %333 = phi ptr [ %12, %202 ], [ %12, %325 ], [ %258, %309 ]
  %334 = phi ptr [ null, %202 ], [ %326, %325 ], [ %235, %309 ]
  %335 = phi ptr [ %13, %202 ], [ %327, %325 ], [ %236, %309 ]
  %336 = phi i32 [ undef, %202 ], [ %214, %325 ], [ %214, %309 ]
  %337 = phi i32 [ %206, %202 ], [ 2, %325 ], [ 0, %309 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %413

339:                                              ; preds = %330, %123, %129
  %340 = phi ptr [ %331, %330 ], [ null, %129 ], [ null, %123 ]
  %341 = phi ptr [ %332, %330 ], [ null, %129 ], [ null, %123 ]
  %342 = phi ptr [ %333, %330 ], [ %12, %129 ], [ %12, %123 ]
  %343 = phi ptr [ %334, %330 ], [ null, %129 ], [ null, %123 ]
  %344 = phi ptr [ %335, %330 ], [ %13, %129 ], [ %13, %123 ]
  %345 = phi i32 [ %336, %330 ], [ 9, %129 ], [ 9, %123 ]
  %346 = phi i32 [ %139, %330 ], [ 8, %129 ], [ 8, %123 ]
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %390, label %348

348:                                              ; preds = %339
  %349 = zext nneg i32 %346 to i64
  %350 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !48
  %352 = add nsw i32 %345, 2
  store i32 %352, ptr %8, align 4, !tbaa !62
  %353 = getelementptr inbounds %struct.decNumber, ptr %342, i64 0, i32 2
  store i8 0, ptr %353, align 4, !tbaa !35
  %354 = getelementptr inbounds %struct.decNumber, ptr %342, i64 0, i32 1
  store i32 0, ptr %354, align 4, !tbaa !40
  store i32 1, ptr %342, align 4, !tbaa !41
  %355 = getelementptr inbounds %struct.decNumber, ptr %342, i64 0, i32 3
  store i16 1, ptr %355, align 2, !tbaa !42
  br label %356

356:                                              ; preds = %388, %348
  %357 = phi i32 [ 0, %348 ], [ %382, %388 ]
  %358 = phi i32 [ 1, %348 ], [ %389, %388 ]
  %359 = phi i32 [ %351, %348 ], [ %377, %388 ]
  %360 = load i32, ptr %3, align 4, !tbaa !48
  %361 = and i32 %360, 8704
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %376, label %363

363:                                              ; preds = %356
  %364 = and i32 %360, 512
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %390

366:                                              ; preds = %363
  %367 = load i16, ptr %355, align 2, !tbaa !42
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %366
  %370 = load i32, ptr %342, align 4, !tbaa !41
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = load i8, ptr %353, align 4, !tbaa !35
  %374 = and i8 %373, 112
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %390, label %376

376:                                              ; preds = %366, %369, %372, %356
  %377 = shl i32 %359, 1
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %342, ptr noundef nonnull %342, ptr noundef %344, ptr noundef nonnull %8, ptr noundef nonnull %3)
  br label %381

381:                                              ; preds = %379, %376
  %382 = phi i32 [ 1, %379 ], [ %357, %376 ]
  %383 = icmp eq i32 %358, 31
  br i1 %383, label %390, label %384

384:                                              ; preds = %381
  %385 = icmp eq i32 %382, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %384
  %387 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %342, ptr noundef nonnull %342, ptr noundef nonnull %342, ptr noundef nonnull %8, ptr noundef nonnull %3)
  br label %388

388:                                              ; preds = %384, %386
  %389 = add nuw nsw i32 %358, 1
  br label %356, !llvm.loop !96

390:                                              ; preds = %372, %363, %381, %339
  %391 = phi ptr [ %344, %339 ], [ %342, %381 ], [ %342, %363 ], [ %342, %372 ]
  store i32 1, ptr %7, align 4, !tbaa !48
  %392 = getelementptr inbounds %struct.decNumber, ptr %391, i64 0, i32 3
  %393 = load i16, ptr %392, align 2, !tbaa !42
  %394 = icmp eq i16 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %390
  %396 = load i32, ptr %391, align 4, !tbaa !41
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.decNumber, ptr %391, i64 0, i32 2
  %400 = load i8, ptr %399, align 4, !tbaa !35
  %401 = and i8 %400, 112
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %404

404:                                              ; preds = %403, %398, %395, %390
  %405 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %405, ptr %8, align 4, !tbaa !62
  %406 = getelementptr inbounds %struct.decNumber, ptr %391, i64 0, i32 2
  %407 = load i8, ptr %406, align 4, !tbaa !35
  %408 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %407, ptr %408, align 4, !tbaa !35
  %409 = getelementptr inbounds %struct.decNumber, ptr %391, i64 0, i32 1
  %410 = load i32, ptr %409, align 4, !tbaa !40
  %411 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %410, ptr %411, align 4, !tbaa !40
  %412 = load i32, ptr %391, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %392, i32 noundef %412, ptr noundef nonnull %7, ptr noundef %3)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef %3)
  br label %413

413:                                              ; preds = %63, %54, %32, %30, %330, %70, %26, %404, %99, %94, %79
  %414 = phi ptr [ null, %26 ], [ null, %70 ], [ null, %79 ], [ null, %94 ], [ null, %99 ], [ %340, %404 ], [ %331, %330 ], [ null, %30 ], [ null, %32 ], [ null, %54 ], [ null, %63 ]
  %415 = phi ptr [ null, %26 ], [ null, %70 ], [ null, %79 ], [ null, %94 ], [ null, %99 ], [ %341, %404 ], [ %332, %330 ], [ null, %30 ], [ null, %32 ], [ null, %54 ], [ null, %63 ]
  %416 = phi ptr [ null, %26 ], [ null, %70 ], [ null, %79 ], [ null, %94 ], [ null, %99 ], [ %343, %404 ], [ %334, %330 ], [ null, %30 ], [ null, %32 ], [ null, %54 ], [ null, %63 ]
  %417 = icmp eq ptr %414, null
  br i1 %417, label %419, label %418

418:                                              ; preds = %413
  call void @free(ptr noundef %414) #19
  br label %419

419:                                              ; preds = %418, %413
  %420 = icmp eq ptr %416, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %419
  call void @free(ptr noundef %416) #19
  br label %422

422:                                              ; preds = %421, %419
  %423 = icmp eq ptr %415, null
  br i1 %423, label %425, label %424

424:                                              ; preds = %422
  call void @free(ptr noundef %415) #19
  br label %425

425:                                              ; preds = %424, %422
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberFMA(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 !prof !34 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.decContext, align 4
  %8 = alloca [5 x %struct.decNumber], align 16
  %9 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !35
  %12 = and i8 %11, 112
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %4, ptr noundef nonnull %6), !range !93
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %14, %5
  %18 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !35
  %20 = and i8 %19, 112
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call fastcc i32 @decCheckMath(ptr noundef %2, ptr noundef %4, ptr noundef nonnull %6), !range !93
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.decNumber, ptr %3, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !35
  %28 = and i8 %27, 112
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call fastcc i32 @decCheckMath(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6), !range !93
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !94
  %34 = load i32, ptr %1, align 4, !tbaa !41
  %35 = load i32, ptr %2, align 4, !tbaa !41
  %36 = add nsw i32 %35, %34
  store i32 %36, ptr %7, align 4, !tbaa !62
  %37 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 1
  store i32 999999999, ptr %37, align 4, !tbaa !70
  %38 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 2
  store i32 -999999999, ptr %38, align 4, !tbaa !69
  %39 = icmp slt i32 %36, 50
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !51
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
  %52 = shl nuw i32 %49, 1
  %53 = add nuw i32 %52, 10
  %54 = zext i32 %53 to i64
  %55 = tail call noalias ptr @malloc(i64 noundef %54) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, ptr %6, align 4, !tbaa !48
  %59 = or i32 %58, 16
  store i32 %59, ptr %6, align 4, !tbaa !48
  br label %81

60:                                               ; preds = %51, %48
  %61 = phi ptr [ null, %48 ], [ %55, %51 ]
  %62 = phi ptr [ %8, %48 ], [ %55, %51 ]
  %63 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %62, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %64 = load i32, ptr %6, align 4, !tbaa !48
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = and i32 %64, 1073741824
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %71, align 4, !tbaa !35
  %72 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %72, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %73 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %73, align 2, !tbaa !42
  store i8 32, ptr %71, align 4, !tbaa !35
  br label %81

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 2
  store i8 0, ptr %75, align 4, !tbaa !35
  %76 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 1
  store i32 0, ptr %76, align 4, !tbaa !40
  store i32 1, ptr %9, align 4, !tbaa !41
  %77 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 3
  store i16 0, ptr %77, align 2, !tbaa !42
  br label %78

78:                                               ; preds = %74, %60
  %79 = phi ptr [ %9, %74 ], [ %3, %60 ]
  %80 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %62, ptr noundef %79, ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull %6)
  br label %81

81:                                               ; preds = %14, %22, %30, %78, %70, %57
  %82 = phi ptr [ null, %57 ], [ %61, %78 ], [ %61, %70 ], [ null, %30 ], [ null, %22 ], [ null, %14 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @free(ptr noundef %82) #19
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, ptr %6, align 4, !tbaa !48
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85
  %89 = and i32 %86, 221
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = and i32 %86, 1073741824
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = and i32 %86, -1073741825
  br label %100

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %97, align 4, !tbaa !35
  %98 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %98, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %99 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %99, align 2, !tbaa !42
  store i8 32, ptr %97, align 4, !tbaa !35
  br label %100

100:                                              ; preds = %88, %94, %96
  %101 = phi i32 [ %95, %94 ], [ %86, %96 ], [ %86, %88 ]
  %102 = call ptr @decContextSetStatus(ptr noundef %4, i32 noundef %101) #19
  br label %103

103:                                              ; preds = %100, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decMultiplyOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #3 !prof !34 {
  %6 = alloca i32, align 4
  %7 = alloca [49 x i16], align 16
  %8 = alloca [10 x i32], align 16
  %9 = alloca [10 x i32], align 16
  %10 = alloca [20 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 98, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #19
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !35
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !35
  %16 = xor i8 %15, %12
  %17 = and i8 %16, -128
  %18 = or i8 %15, %12
  %19 = and i8 %18, 112
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %5
  %22 = and i8 %18, 48
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %404

26:                                               ; preds = %21
  %27 = and i32 %13, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !42
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 4, !tbaa !41
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
  %45 = load i16, ptr %44, align 2, !tbaa !42
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, ptr %2, align 4, !tbaa !41
  %49 = icmp eq i32 %48, 1
  %50 = and i32 %40, 48
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %33
  %54 = load i32, ptr %4, align 4, !tbaa !48
  %55 = or i32 %54, 128
  store i32 %55, ptr %4, align 4, !tbaa !48
  br label %404

56:                                               ; preds = %47, %43, %39
  %57 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %57, align 4, !tbaa !35
  %58 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %58, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %59 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %59, align 2, !tbaa !42
  %60 = or disjoint i8 %17, 64
  store i8 %60, ptr %57, align 4, !tbaa !35
  br label %404

61:                                               ; preds = %5
  %62 = load i32, ptr %1, align 4, !tbaa !41
  %63 = load i32, ptr %2, align 4, !tbaa !41
  %64 = icmp slt i32 %62, %63
  %65 = select i1 %64, ptr %1, ptr %2
  %66 = select i1 %64, ptr %2, ptr %1
  %67 = load i32, ptr %65, align 4, !tbaa !41
  %68 = icmp sgt i32 %67, 6
  %69 = load i32, ptr %66, align 4, !tbaa !41
  br i1 %68, label %70, label %274

70:                                               ; preds = %61
  %71 = add nsw i32 %69, 8
  %72 = sdiv i32 %71, 9
  %73 = add nuw i32 %67, 8
  %74 = udiv i32 %73, 9
  %75 = add nsw i32 %72, %74
  %76 = icmp sgt i32 %69, 90
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = shl nuw nsw i32 %72, 2
  %79 = zext nneg i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #20
  br label %81

81:                                               ; preds = %77, %70
  %82 = phi ptr [ %80, %77 ], [ %8, %70 ]
  %83 = phi ptr [ %80, %77 ], [ null, %70 ]
  %84 = icmp ugt i32 %67, 90
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = shl nuw nsw i32 %74, 2
  %87 = zext nneg i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #20
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi ptr [ %88, %85 ], [ %9, %81 ]
  %91 = phi ptr [ %88, %85 ], [ null, %81 ]
  %92 = sext i32 %75 to i64
  %93 = shl i32 %75, 3
  %94 = icmp sgt i32 %93, 160
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = zext nneg i32 %93 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #20
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ %10, %89 ]
  %100 = phi ptr [ %97, %95 ], [ null, %89 ]
  %101 = ptrtoint ptr %99 to i64
  %102 = icmp eq ptr %82, null
  %103 = icmp eq ptr %90, null
  %104 = or i1 %102, %103
  %105 = icmp eq ptr %99, null
  %106 = or i1 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, ptr %4, align 4, !tbaa !48
  %109 = or i32 %108, 16
  store i32 %109, ptr %4, align 4, !tbaa !48
  br label %392

110:                                              ; preds = %98
  %111 = icmp sgt i32 %69, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.decNumber, ptr %66, i64 0, i32 3
  br label %114

114:                                              ; preds = %112, %135
  %115 = phi ptr [ %130, %135 ], [ %113, %112 ]
  %116 = phi i32 [ %131, %135 ], [ %69, %112 ]
  %117 = phi ptr [ %136, %135 ], [ %82, %112 ]
  store i32 0, ptr %117, align 4, !tbaa !48
  br label %118

118:                                              ; preds = %114, %118
  %119 = phi i64 [ 0, %114 ], [ %129, %118 ]
  %120 = phi i32 [ 0, %114 ], [ %128, %118 ]
  %121 = phi ptr [ %115, %114 ], [ %130, %118 ]
  %122 = phi i32 [ %116, %114 ], [ %131, %118 ]
  %123 = load i16, ptr %121, align 2, !tbaa !42
  %124 = zext i16 %123 to i32
  %125 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %119
  %126 = load i32, ptr %125, align 4, !tbaa !48
  %127 = mul i32 %126, %124
  %128 = add i32 %120, %127
  %129 = add nuw nsw i64 %119, 3
  %130 = getelementptr inbounds i16, ptr %121, i64 1
  %131 = add nsw i32 %122, -3
  %132 = icmp ult i64 %119, 6
  %133 = icmp sgt i32 %122, 3
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %118, label %135, !llvm.loop !97

135:                                              ; preds = %118
  store i32 %128, ptr %117, align 4, !tbaa !48
  %136 = getelementptr inbounds i32, ptr %117, i64 1
  %137 = icmp sgt i32 %122, 3
  br i1 %137, label %114, label %138, !llvm.loop !98

138:                                              ; preds = %135, %110
  %139 = phi ptr [ %82, %110 ], [ %136, %135 ]
  %140 = getelementptr inbounds i32, ptr %139, i64 -1
  %141 = getelementptr inbounds %struct.decNumber, ptr %65, i64 0, i32 3
  br label %142

142:                                              ; preds = %138, %163
  %143 = phi ptr [ %158, %163 ], [ %141, %138 ]
  %144 = phi i32 [ %159, %163 ], [ %67, %138 ]
  %145 = phi ptr [ %164, %163 ], [ %90, %138 ]
  store i32 0, ptr %145, align 4, !tbaa !48
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %157, %146 ]
  %148 = phi i32 [ 0, %142 ], [ %156, %146 ]
  %149 = phi ptr [ %143, %142 ], [ %158, %146 ]
  %150 = phi i32 [ %144, %142 ], [ %159, %146 ]
  %151 = load i16, ptr %149, align 2, !tbaa !42
  %152 = zext i16 %151 to i32
  %153 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %147
  %154 = load i32, ptr %153, align 4, !tbaa !48
  %155 = mul i32 %154, %152
  %156 = add i32 %148, %155
  %157 = add nuw nsw i64 %147, 3
  %158 = getelementptr inbounds i16, ptr %149, i64 1
  %159 = add nsw i32 %150, -3
  %160 = icmp ult i64 %147, 6
  %161 = icmp sgt i32 %150, 3
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %146, label %163, !llvm.loop !99

163:                                              ; preds = %146
  store i32 %156, ptr %145, align 4, !tbaa !48
  %164 = getelementptr inbounds i32, ptr %145, i64 1
  %165 = icmp sgt i32 %150, 3
  br i1 %165, label %142, label %166, !llvm.loop !100

166:                                              ; preds = %163
  %167 = getelementptr inbounds i64, ptr %99, i64 %92
  %168 = icmp sgt i32 %75, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = shl nuw nsw i64 %92, 3
  %171 = add i64 %170, %101
  %172 = add i64 %101, 8
  %173 = call i64 @llvm.umax.i64(i64 %171, i64 %172)
  %174 = xor i64 %101, -1
  %175 = add i64 %173, %174
  %176 = and i64 %175, -8
  %177 = add i64 %176, 8
  call void @llvm.memset.p0.i64(ptr align 8 %99, i8 0, i64 %177, i1 false), !tbaa !101
  br label %178

178:                                              ; preds = %169, %166
  %179 = icmp ugt ptr %90, %145
  br i1 %179, label %184, label %180

180:                                              ; preds = %178
  %181 = ptrtoint ptr %90 to i64
  %182 = icmp ugt ptr %82, %140
  %183 = icmp slt i32 %75, 1
  br label %186

184:                                              ; preds = %242, %178
  %185 = icmp sgt i32 %75, 0
  br i1 %185, label %246, label %267

186:                                              ; preds = %180, %242
  %187 = phi i32 [ 18, %180 ], [ %243, %242 ]
  %188 = phi ptr [ %90, %180 ], [ %244, %242 ]
  br i1 %182, label %207, label %189

189:                                              ; preds = %186
  %190 = ptrtoint ptr %188 to i64
  %191 = sub i64 %190, %181
  %192 = ashr exact i64 %191, 2
  %193 = getelementptr inbounds i64, ptr %99, i64 %192
  %194 = load i32, ptr %188, align 4, !tbaa !48
  %195 = zext i32 %194 to i64
  br label %196

196:                                              ; preds = %189, %196
  %197 = phi ptr [ %193, %189 ], [ %205, %196 ]
  %198 = phi ptr [ %82, %189 ], [ %204, %196 ]
  %199 = load i32, ptr %198, align 4, !tbaa !48
  %200 = zext i32 %199 to i64
  %201 = mul nuw i64 %195, %200
  %202 = load i64, ptr %197, align 8, !tbaa !101
  %203 = add i64 %201, %202
  store i64 %203, ptr %197, align 8, !tbaa !101
  %204 = getelementptr inbounds i32, ptr %198, i64 1
  %205 = getelementptr inbounds i64, ptr %197, i64 1
  %206 = icmp ugt ptr %204, %140
  br i1 %206, label %207, label %196, !llvm.loop !103

207:                                              ; preds = %196, %186
  %208 = icmp sgt i32 %187, 1
  %209 = add nsw i32 %187, -1
  %210 = icmp ne ptr %188, %145
  %211 = and i1 %208, %210
  %212 = or i1 %211, %183
  %213 = select i1 %211, i32 %209, i32 18
  br i1 %212, label %242, label %214

214:                                              ; preds = %207, %239
  %215 = phi ptr [ %240, %239 ], [ %99, %207 ]
  %216 = load i64, ptr %215, align 8, !tbaa !101
  %217 = icmp ult i64 %216, 1000000000
  br i1 %217, label %239, label %218

218:                                              ; preds = %214
  %219 = udiv i64 %216, 1000000000
  %220 = icmp ult i64 %216, 1000000000000000000
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = udiv i64 %216, 1000000000000000000
  %223 = getelementptr inbounds i64, ptr %215, i64 2
  %224 = load i64, ptr %223, align 8, !tbaa !101
  %225 = add i64 %224, %222
  store i64 %225, ptr %223, align 8, !tbaa !101
  %226 = mul i64 %222, -1000000000000000000
  %227 = add i64 %226, %216
  store i64 %227, ptr %215, align 8, !tbaa !101
  %228 = mul nuw nsw i64 %222, 3294967296
  %229 = add nuw nsw i64 %228, %219
  br label %230

230:                                              ; preds = %218, %221
  %231 = phi i64 [ %229, %221 ], [ %219, %218 ]
  %232 = and i64 %231, 4294967295
  %233 = getelementptr inbounds i64, ptr %215, i64 1
  %234 = load i64, ptr %233, align 8, !tbaa !101
  %235 = add i64 %234, %232
  store i64 %235, ptr %233, align 8, !tbaa !101
  %236 = mul nsw i64 %232, -1000000000
  %237 = load i64, ptr %215, align 8, !tbaa !101
  %238 = add i64 %237, %236
  store i64 %238, ptr %215, align 8, !tbaa !101
  br label %239

239:                                              ; preds = %214, %230
  %240 = getelementptr inbounds i64, ptr %215, i64 1
  %241 = icmp ult ptr %240, %167
  br i1 %241, label %214, label %242, !llvm.loop !104

242:                                              ; preds = %239, %207
  %243 = phi i32 [ %213, %207 ], [ 18, %239 ]
  %244 = getelementptr inbounds i32, ptr %188, i64 1
  %245 = icmp ugt ptr %244, %145
  br i1 %245, label %184, label %186, !llvm.loop !105

246:                                              ; preds = %184, %262
  %247 = phi ptr [ %265, %262 ], [ %99, %184 ]
  %248 = phi ptr [ %264, %262 ], [ %99, %184 ]
  %249 = load i64, ptr %247, align 8, !tbaa !101
  %250 = trunc i64 %249 to i32
  br label %251

251:                                              ; preds = %246, %251
  %252 = phi i32 [ %250, %246 ], [ %255, %251 ]
  %253 = phi i32 [ 0, %246 ], [ %259, %251 ]
  %254 = phi ptr [ %248, %246 ], [ %260, %251 ]
  %255 = udiv i32 %252, 1000
  %256 = mul i32 %255, 64536
  %257 = add i32 %256, %252
  %258 = trunc i32 %257 to i16
  store i16 %258, ptr %254, align 2, !tbaa !42
  %259 = add nuw nsw i32 %253, 3
  %260 = getelementptr inbounds i16, ptr %254, i64 1
  %261 = icmp ult i32 %253, 3
  br i1 %261, label %251, label %262, !llvm.loop !106

262:                                              ; preds = %251
  %263 = trunc i32 %255 to i16
  store i16 %263, ptr %260, align 2, !tbaa !42
  %264 = getelementptr inbounds i16, ptr %254, i64 2
  %265 = getelementptr inbounds i64, ptr %247, i64 1
  %266 = icmp ult ptr %265, %167
  br i1 %266, label %246, label %267, !llvm.loop !107

267:                                              ; preds = %262, %184
  %268 = phi ptr [ %99, %184 ], [ %264, %262 ]
  %269 = ptrtoint ptr %268 to i64
  %270 = ptrtoint ptr %99 to i64
  %271 = sub i64 %269, %270
  %272 = lshr exact i64 %271, 1
  %273 = trunc i64 %272 to i32
  br label %347

274:                                              ; preds = %61
  %275 = icmp slt i32 %69, 50
  br i1 %275, label %276, label %281

276:                                              ; preds = %274
  %277 = sext i32 %69 to i64
  %278 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !51
  %280 = zext i8 %279 to i32
  br label %284

281:                                              ; preds = %274
  %282 = add nuw nsw i32 %69, 2
  %283 = udiv i32 %282, 3
  br label %284

284:                                              ; preds = %276, %281
  %285 = phi i32 [ %280, %276 ], [ %283, %281 ]
  %286 = sext i32 %67 to i64
  %287 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !51
  %289 = zext i8 %288 to i32
  %290 = add nuw nsw i32 %285, %289
  %291 = shl nuw i32 %290, 1
  %292 = icmp sgt i32 %291, 98
  br i1 %292, label %293, label %300

293:                                              ; preds = %284
  %294 = zext nneg i32 %291 to i64
  %295 = tail call noalias ptr @malloc(i64 noundef %294) #20
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i32, ptr %4, align 4, !tbaa !48
  %299 = or i32 %298, 16
  store i32 %299, ptr %4, align 4, !tbaa !48
  br label %392

300:                                              ; preds = %293, %284
  %301 = phi ptr [ null, %284 ], [ %295, %293 ]
  %302 = phi ptr [ %7, %284 ], [ %295, %293 ]
  store i16 0, ptr %302, align 2, !tbaa !42
  br i1 %275, label %303, label %308

303:                                              ; preds = %300
  %304 = sext i32 %69 to i64
  %305 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !51
  %307 = zext i8 %306 to i32
  br label %311

308:                                              ; preds = %300
  %309 = add nuw nsw i32 %69, 2
  %310 = udiv i32 %309, 3
  br label %311

311:                                              ; preds = %308, %303
  %312 = phi i32 [ %307, %303 ], [ %310, %308 ]
  %313 = sext i32 %67 to i64
  %314 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !51
  %316 = zext i8 %315 to i64
  %317 = shl nuw nsw i64 %316, 1
  %318 = getelementptr i8, ptr %65, i64 %317
  %319 = getelementptr i8, ptr %318, i64 10
  %320 = icmp eq i32 %67, 0
  br i1 %320, label %347, label %321

321:                                              ; preds = %311
  %322 = getelementptr inbounds i8, ptr %65, i64 10
  %323 = getelementptr inbounds %struct.decNumber, ptr %66, i64 0, i32 3
  br label %324

324:                                              ; preds = %321, %342
  %325 = phi i64 [ 0, %321 ], [ %344, %342 ]
  %326 = phi i32 [ 1, %321 ], [ %343, %342 ]
  %327 = phi ptr [ %322, %321 ], [ %345, %342 ]
  %328 = load i16, ptr %327, align 2, !tbaa !42
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %324
  %331 = zext i16 %328 to i32
  %332 = getelementptr inbounds i16, ptr %302, i64 %325
  %333 = trunc i64 %325 to i32
  %334 = sub nsw i32 %326, %333
  %335 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %332, i32 noundef %334, ptr noundef nonnull %323, i32 noundef %312, i32 noundef 0, ptr noundef nonnull %332, i32 noundef %331)
  %336 = trunc i64 %325 to i32
  %337 = add nsw i32 %335, %336
  br label %342

338:                                              ; preds = %324
  %339 = sext i32 %326 to i64
  %340 = getelementptr inbounds i16, ptr %302, i64 %339
  store i16 0, ptr %340, align 2, !tbaa !42
  %341 = add nsw i32 %326, 1
  br label %342

342:                                              ; preds = %338, %330
  %343 = phi i32 [ %337, %330 ], [ %341, %338 ]
  %344 = add nuw i64 %325, 1
  %345 = getelementptr inbounds i16, ptr %327, i64 1
  %346 = icmp ult ptr %345, %319
  br i1 %346, label %324, label %347, !llvm.loop !108

347:                                              ; preds = %342, %311, %267
  %348 = phi ptr [ %83, %267 ], [ null, %311 ], [ null, %342 ]
  %349 = phi ptr [ %91, %267 ], [ null, %311 ], [ null, %342 ]
  %350 = phi ptr [ %100, %267 ], [ %301, %311 ], [ %301, %342 ]
  %351 = phi ptr [ %99, %267 ], [ %302, %311 ], [ %302, %342 ]
  %352 = phi i32 [ %273, %267 ], [ 1, %311 ], [ %343, %342 ]
  %353 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %17, ptr %353, align 4, !tbaa !35
  %354 = add nsw i32 %352, -1
  %355 = mul nsw i32 %354, 3
  %356 = add nsw i32 %355, 1
  %357 = icmp slt i32 %352, 1
  br i1 %357, label %378, label %358

358:                                              ; preds = %347
  %359 = sext i32 %354 to i64
  %360 = getelementptr inbounds i16, ptr %351, i64 %359
  br label %361

361:                                              ; preds = %358, %368
  %362 = phi i32 [ %369, %368 ], [ %356, %358 ]
  %363 = phi ptr [ %370, %368 ], [ %360, %358 ]
  %364 = load i16, ptr %363, align 2, !tbaa !42
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %361
  %367 = icmp eq i32 %362, 1
  br i1 %367, label %378, label %368

368:                                              ; preds = %366
  %369 = add nsw i32 %362, -3
  %370 = getelementptr inbounds i16, ptr %363, i64 -1
  %371 = icmp ult ptr %370, %351
  br i1 %371, label %378, label %361, !llvm.loop !47

372:                                              ; preds = %361
  %373 = icmp ult i16 %364, 10
  br i1 %373, label %378, label %374

374:                                              ; preds = %372
  %375 = icmp ult i16 %364, 100
  %376 = select i1 %375, i32 1, i32 2
  %377 = add nsw i32 %376, %362
  br label %378

378:                                              ; preds = %366, %368, %347, %372, %374
  %379 = phi i32 [ %362, %372 ], [ %377, %374 ], [ %356, %347 ], [ %369, %368 ], [ 1, %366 ]
  store i32 %379, ptr %0, align 4, !tbaa !41
  %380 = getelementptr inbounds %struct.decNumber, ptr %66, i64 0, i32 1
  %381 = load i32, ptr %380, align 4, !tbaa !40
  %382 = getelementptr inbounds %struct.decNumber, ptr %65, i64 0, i32 1
  %383 = load i32, ptr %382, align 4, !tbaa !40
  %384 = add nsw i32 %383, %381
  %385 = icmp slt i32 %381, 0
  %386 = icmp slt i32 %383, 0
  %387 = icmp sgt i32 %384, 0
  %388 = select i1 %385, i1 %386, i1 false
  %389 = select i1 %388, i1 %387, i1 false
  %390 = select i1 %389, i32 -1999999998, i32 %384
  %391 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %390, ptr %391, align 4, !tbaa !40
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %351, i32 noundef %379, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %4)
  br label %392

392:                                              ; preds = %378, %297, %107
  %393 = phi ptr [ %83, %107 ], [ %348, %378 ], [ null, %297 ]
  %394 = phi ptr [ %91, %107 ], [ %349, %378 ], [ null, %297 ]
  %395 = phi ptr [ %100, %107 ], [ %350, %378 ], [ null, %297 ]
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %392
  call void @free(ptr noundef %395) #19
  br label %398

398:                                              ; preds = %397, %392
  %399 = icmp eq ptr %394, null
  br i1 %399, label %401, label %400

400:                                              ; preds = %398
  call void @free(ptr noundef %394) #19
  br label %401

401:                                              ; preds = %400, %398
  %402 = icmp eq ptr %393, null
  br i1 %402, label %404, label %403

403:                                              ; preds = %401
  call void @free(ptr noundef %393) #19
  br label %404

404:                                              ; preds = %401, %403, %56, %53, %24
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @decNumberInvert(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !35
  %10 = icmp ult i8 %9, 16
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %12, align 4, !tbaa !35
  %13 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %14, align 2, !tbaa !42
  store i8 32, ptr %12, align 4, !tbaa !35
  %15 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef 128) #19
  br label %145

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds i8, ptr %0, i64 10
  %19 = load i32, ptr %1, align 4, !tbaa !41
  %20 = icmp slt i32 %19, 50
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !51
  %25 = zext i8 %24 to i32
  br label %29

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %19, 2
  %28 = udiv i32 %27, 3
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %25, %21 ], [ %28, %26 ]
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %17, i64 %31
  %33 = getelementptr inbounds i16, ptr %32, i64 -1
  %34 = load i32, ptr %2, align 4, !tbaa !62
  %35 = icmp slt i32 %34, 50
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !51
  %40 = zext i8 %39 to i32
  br label %44

41:                                               ; preds = %29
  %42 = add nuw nsw i32 %34, 2
  %43 = udiv i32 %42, 3
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %40, %36 ], [ %43, %41 ]
  %46 = shl nuw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr i8, ptr %0, i64 %47
  %49 = getelementptr i8, ptr %48, i64 8
  br i1 %35, label %50, label %55

50:                                               ; preds = %44
  %51 = sext i32 %34 to i64
  %52 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !51
  %54 = zext i8 %53 to i32
  br label %58

55:                                               ; preds = %44
  %56 = add nuw nsw i32 %34, 2
  %57 = udiv i32 %56, 3
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %57, %55 ]
  %60 = icmp eq i32 %45, 0
  br i1 %60, label %108, label %61

61:                                               ; preds = %58
  %62 = mul i32 %59, -3
  %63 = add i32 %34, 2
  %64 = add i32 %63, %62
  %65 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %66 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %67 = zext i32 %64 to i64
  br label %68

68:                                               ; preds = %61, %104
  %69 = phi ptr [ undef, %61 ], [ %103, %104 ]
  %70 = phi ptr [ %17, %61 ], [ %105, %104 ]
  %71 = phi ptr [ %18, %61 ], [ %106, %104 ]
  %72 = icmp ugt ptr %70, %33
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i16, ptr %70, align 2, !tbaa !42
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi i16 [ %74, %73 ], [ 0, %68 ]
  store i16 0, ptr %71, align 2, !tbaa !42
  %77 = icmp ne ptr %71, %49
  br label %78

78:                                               ; preds = %95, %75
  %79 = phi i64 [ %99, %95 ], [ 0, %75 ]
  %80 = phi i16 [ %96, %95 ], [ %76, %75 ]
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i16, ptr %71, align 2, !tbaa !42
  %86 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %79
  %87 = load i32, ptr %86, align 4, !tbaa !48
  %88 = trunc i32 %87 to i16
  %89 = add i16 %85, %88
  store i16 %89, ptr %71, align 2, !tbaa !42
  br label %90

90:                                               ; preds = %84, %78
  %91 = urem i32 %81, 10
  %92 = icmp ult i32 %91, 2
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  store i8 0, ptr %65, align 4, !tbaa !35
  store i32 0, ptr %66, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  store i16 0, ptr %18, align 2, !tbaa !42
  store i8 32, ptr %65, align 4, !tbaa !35
  %94 = tail call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef 128) #19
  br label %102

95:                                               ; preds = %90
  %96 = udiv i16 %80, 10
  %97 = icmp ne i64 %79, %67
  %98 = select i1 %77, i1 true, i1 %97
  %99 = add nuw nsw i64 %79, 1
  %100 = icmp ult i64 %79, 2
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %78, label %102, !llvm.loop !109

102:                                              ; preds = %95, %93
  %103 = phi ptr [ %0, %93 ], [ %69, %95 ]
  br i1 %92, label %104, label %145

104:                                              ; preds = %102
  %105 = getelementptr inbounds i16, ptr %70, i64 1
  %106 = getelementptr inbounds i16, ptr %71, i64 1
  %107 = icmp ugt ptr %106, %49
  br i1 %107, label %108, label %68, !llvm.loop !110

108:                                              ; preds = %104, %58
  %109 = phi ptr [ %18, %58 ], [ %106, %104 ]
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %18 to i64
  %112 = sub i64 %110, %111
  %113 = lshr exact i64 %112, 1
  %114 = trunc i64 %113 to i32
  %115 = add nsw i32 %114, -1
  %116 = mul nsw i32 %115, 3
  %117 = add nsw i32 %116, 1
  %118 = icmp slt i32 %114, 1
  br i1 %118, label %141, label %119

119:                                              ; preds = %108
  %120 = sext i32 %115 to i64
  %121 = shl nsw i64 %120, 1
  %122 = add nsw i64 %121, 10
  br label %123

123:                                              ; preds = %119, %131
  %124 = phi i32 [ %132, %131 ], [ %117, %119 ]
  %125 = phi i64 [ %133, %131 ], [ %122, %119 ]
  %126 = getelementptr inbounds i8, ptr %0, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !42
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = icmp eq i32 %124, 1
  br i1 %130, label %141, label %131

131:                                              ; preds = %129
  %132 = add nsw i32 %124, -3
  %133 = add nsw i64 %125, -2
  %134 = icmp slt i64 %125, 12
  br i1 %134, label %141, label %123, !llvm.loop !47

135:                                              ; preds = %123
  %136 = icmp ult i16 %127, 10
  br i1 %136, label %141, label %137

137:                                              ; preds = %135
  %138 = icmp ult i16 %127, 100
  %139 = select i1 %138, i32 1, i32 2
  %140 = add nsw i32 %139, %124
  br label %141

141:                                              ; preds = %129, %131, %108, %135, %137
  %142 = phi i32 [ %124, %135 ], [ %140, %137 ], [ %117, %108 ], [ %132, %131 ], [ 1, %129 ]
  store i32 %142, ptr %0, align 4, !tbaa !41
  %143 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %143, align 4, !tbaa !40
  %144 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %144, align 4, !tbaa !35
  br label %145

145:                                              ; preds = %102, %141, %11
  %146 = phi ptr [ %0, %11 ], [ %0, %141 ], [ %103, %102 ]
  ret ptr %146
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberLn(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !48
  %5 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4), !range !93
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call fastcc ptr @decLnOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr %4, align 4, !tbaa !48
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, 221
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i32 %10, 1073741824
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = and i32 %10, -1073741825
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %21, align 4, !tbaa !35
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %23, align 2, !tbaa !42
  store i8 32, ptr %21, align 4, !tbaa !35
  br label %24

24:                                               ; preds = %12, %18, %20
  %25 = phi i32 [ %19, %18 ], [ %10, %20 ], [ %10, %12 ]
  %26 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %25) #19
  br label %27

27:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decLnOp(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.decNumber], align 16
  %8 = alloca [5 x %struct.decNumber], align 16
  %9 = alloca %struct.decNumber, align 4
  %10 = alloca %struct.decNumber, align 4
  %11 = alloca %struct.decContext, align 4
  %12 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #19
  %13 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !35
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 112
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %68, label %18

18:                                               ; preds = %4
  %19 = and i32 %15, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %18
  %22 = icmp sgt i8 %14, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %3, align 4, !tbaa !48
  %25 = or i32 %24, 128
  store i32 %25, ptr %3, align 4, !tbaa !48
  br label %308

26:                                               ; preds = %21
  %27 = icmp eq ptr %0, %1
  br i1 %27, label %308, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %14, ptr %29, align 4, !tbaa !35
  %30 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !40
  %33 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %33, ptr %0, align 4, !tbaa !41
  %34 = getelementptr inbounds i8, ptr %1, i64 10
  %35 = load i16, ptr %34, align 2, !tbaa !42
  %36 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %35, ptr %36, align 2, !tbaa !42
  %37 = load i32, ptr %1, align 4, !tbaa !41
  %38 = icmp sgt i32 %37, 3
  br i1 %38, label %39, label %308

39:                                               ; preds = %28
  %40 = getelementptr %struct.decNumber, ptr %0, i64 1
  %41 = icmp slt i32 %37, 50
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = zext nneg i32 %37 to i64
  %44 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !51
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %39
  %48 = add nuw nsw i32 %37, 2
  %49 = udiv i32 %48, 3
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %46, %42 ], [ %49, %47 ]
  %52 = shl nuw i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, ptr %1, i64 %53
  %55 = getelementptr i8, ptr %54, i64 10
  %56 = icmp ugt i32 %51, 1
  br i1 %56, label %57, label %308

57:                                               ; preds = %50
  %58 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %64, %59 ], [ %40, %57 ]
  %61 = phi ptr [ %63, %59 ], [ %58, %57 ]
  %62 = load i16, ptr %61, align 2, !tbaa !42
  store i16 %62, ptr %60, align 2, !tbaa !42
  %63 = getelementptr inbounds i16, ptr %61, i64 1
  %64 = getelementptr inbounds i16, ptr %60, i64 1
  %65 = icmp ult ptr %63, %55
  br i1 %65, label %59, label %308, !llvm.loop !77

66:                                               ; preds = %18
  %67 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  br label %308

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !42
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, ptr %1, align 4, !tbaa !41
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %76, align 4, !tbaa !35
  %77 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %77, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %78 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %78, align 2, !tbaa !42
  store i8 -64, ptr %76, align 4, !tbaa !35
  br label %308

79:                                               ; preds = %72, %68
  %80 = icmp sgt i8 %14, -1
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = load i32, ptr %3, align 4, !tbaa !48
  %83 = or i32 %82, 128
  store i32 %83, ptr %3, align 4, !tbaa !48
  br label %308

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !40
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load i32, ptr %2, align 4, !tbaa !62
  %90 = icmp slt i32 %89, 41
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  switch i16 %70, label %110 [
    i16 10, label %92
    i16 2, label %102
  ]

92:                                               ; preds = %91
  %93 = load i32, ptr %1, align 4, !tbaa !41
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  %96 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 3, ptr %96, align 4, !tbaa !76
  %97 = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %11)
  %98 = load i32, ptr %3, align 4, !tbaa !48
  %99 = or i32 %98, 2080
  store i32 %99, ptr %3, align 4, !tbaa !48
  br label %308

100:                                              ; preds = %92
  %101 = icmp eq i16 %70, 2
  br i1 %101, label %102, label %110

102:                                              ; preds = %91, %100
  %103 = load i32, ptr %1, align 4, !tbaa !41
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  %106 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 3, ptr %106, align 4, !tbaa !76
  %107 = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %11)
  %108 = load i32, ptr %3, align 4, !tbaa !48
  %109 = or i32 %108, 2080
  store i32 %109, ptr %3, align 4, !tbaa !48
  br label %308

110:                                              ; preds = %91, %100, %102, %88, %84
  %111 = load i32, ptr %1, align 4, !tbaa !41
  %112 = load i32, ptr %2, align 4, !tbaa !62
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 %111)
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 7)
  %115 = add nuw nsw i32 %114, 2
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 16)
  %117 = icmp slt i32 %113, 48
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = zext nneg i32 %116 to i64
  %120 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !51
  %122 = zext i8 %121 to i32
  br label %126

123:                                              ; preds = %110
  %124 = add nuw nsw i32 %116, 2
  %125 = udiv i32 %124, 3
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ %122, %118 ], [ %125, %123 ]
  %128 = icmp ugt i32 %127, 19
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = shl nuw nsw i32 %127, 1
  %131 = add nuw nsw i32 %130, 10
  %132 = zext nneg i32 %131 to i64
  %133 = tail call noalias ptr @malloc(i64 noundef %132) #20
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, ptr %3, align 4, !tbaa !48
  %137 = or i32 %136, 16
  store i32 %137, ptr %3, align 4, !tbaa !48
  br label %308

138:                                              ; preds = %129, %126
  %139 = phi ptr [ null, %126 ], [ %133, %129 ]
  %140 = phi ptr [ %7, %126 ], [ %133, %129 ]
  %141 = add nsw i32 %115, %111
  %142 = tail call i32 @llvm.smax.i32(i32 %141, i32 16)
  %143 = icmp slt i32 %141, 50
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = zext nneg i32 %142 to i64
  %146 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !51
  %148 = zext i8 %147 to i32
  br label %152

149:                                              ; preds = %138
  %150 = add nuw nsw i32 %142, 2
  %151 = udiv i32 %150, 3
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %148, %144 ], [ %151, %149 ]
  %154 = icmp ugt i32 %153, 25
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = shl nuw nsw i32 %153, 1
  %157 = add nuw nsw i32 %156, 10
  %158 = zext nneg i32 %157 to i64
  %159 = tail call noalias ptr @malloc(i64 noundef %158) #20
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, ptr %3, align 4, !tbaa !48
  %163 = or i32 %162, 16
  store i32 %163, ptr %3, align 4, !tbaa !48
  br label %308

164:                                              ; preds = %155, %152
  %165 = phi ptr [ null, %152 ], [ %159, %155 ]
  %166 = phi ptr [ %8, %152 ], [ %159, %155 ]
  %167 = call ptr @decContextDefault(ptr noundef nonnull %11, i32 noundef 64) #19
  %168 = load i32, ptr %85, align 4, !tbaa !40
  %169 = load i32, ptr %1, align 4, !tbaa !41
  %170 = add nsw i32 %169, %168
  %171 = call i32 @llvm.abs.i32(i32 %170, i1 false)
  %172 = call ptr @decNumberFromUInt32(ptr noundef nonnull %140, i32 noundef %171)
  %173 = icmp slt i32 %170, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 2
  store i8 -128, ptr %175, align 4, !tbaa !35
  br label %176

176:                                              ; preds = %164, %174
  %177 = call ptr @decNumberFromUInt32(ptr noundef nonnull %166, i32 noundef 2302585)
  %178 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 1
  store i32 -6, ptr %178, align 4, !tbaa !40
  %179 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %140, ptr noundef nonnull %140, ptr noundef nonnull %166, ptr noundef nonnull %11, ptr noundef nonnull %5)
  store i32 0, ptr %6, align 4, !tbaa !48
  store i32 2, ptr %11, align 4, !tbaa !62
  %180 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 5, ptr %180, align 4, !tbaa !76
  %181 = load i8, ptr %13, align 4, !tbaa !35
  %182 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 2
  store i8 %181, ptr %182, align 4, !tbaa !35
  %183 = load i32, ptr %85, align 4, !tbaa !40
  store i32 %183, ptr %178, align 4, !tbaa !40
  %184 = load i32, ptr %1, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef nonnull %166, ptr noundef nonnull %11, ptr noundef nonnull %69, i32 noundef %184, ptr noundef nonnull %6, ptr noundef nonnull %5)
  store i32 0, ptr %178, align 4, !tbaa !40
  %185 = call fastcc i32 @decGetInt(ptr noundef nonnull %166)
  %186 = icmp slt i32 %185, 10
  %187 = mul i32 %185, 10
  %188 = select i1 %186, i32 %187, i32 %185
  %189 = add nsw i32 %188, -10
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [90 x i16], ptr @LNnn, i64 0, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !42
  %193 = zext i16 %192 to i32
  %194 = lshr i32 %193, 2
  %195 = call ptr @decNumberFromUInt32(ptr noundef nonnull %166, i32 noundef %194)
  %196 = and i32 %193, 3
  %197 = sub nuw nsw i32 -3, %196
  store i32 %197, ptr %178, align 4, !tbaa !40
  store i8 -128, ptr %182, align 4, !tbaa !35
  store i32 16, ptr %11, align 4, !tbaa !62
  store i32 3, ptr %180, align 4, !tbaa !76
  %198 = call fastcc ptr @decAddOp(ptr noundef nonnull %140, ptr noundef nonnull %140, ptr noundef nonnull %166, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %199 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 2
  store i8 0, ptr %199, align 4, !tbaa !35
  %200 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 1
  store i32 0, ptr %200, align 4, !tbaa !40
  store i32 1, ptr %9, align 4, !tbaa !41
  %201 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 3
  store i16 1, ptr %201, align 2, !tbaa !42
  %202 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %203 = load i32, ptr %202, align 4, !tbaa !70
  %204 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 1
  store i32 %203, ptr %204, align 4, !tbaa !70
  %205 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %206 = load i32, ptr %205, align 4, !tbaa !69
  %207 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 2
  store i32 %206, ptr %207, align 4, !tbaa !69
  %208 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 6
  store i8 0, ptr %208, align 4, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %12, ptr noundef nonnull align 4 dereferenceable(28) %11, i64 28, i1 false), !tbaa.struct !94
  %209 = getelementptr inbounds %struct.decContext, ptr %12, i64 0, i32 1
  store i32 1999998, ptr %209, align 4, !tbaa !70
  %210 = getelementptr inbounds %struct.decContext, ptr %12, i64 0, i32 2
  store i32 -1999998, ptr %210, align 4, !tbaa !69
  store i32 9, ptr %11, align 4, !tbaa !62
  %211 = load i32, ptr %1, align 4, !tbaa !41
  %212 = add nsw i32 %211, 9
  store i32 %212, ptr %12, align 4, !tbaa !62
  %213 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 2
  %214 = getelementptr inbounds %struct.decNumber, ptr %166, i64 0, i32 3
  %215 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 1
  %216 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 3
  %217 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 1
  br label %218

218:                                              ; preds = %283, %176
  %219 = phi i32 [ %285, %283 ], [ 9, %176 ]
  %220 = icmp eq i32 %219, %115
  br label %221

221:                                              ; preds = %218, %281
  %222 = load i8, ptr %213, align 4, !tbaa !35
  %223 = xor i8 %222, -128
  store i8 %223, ptr %213, align 4, !tbaa !35
  %224 = call fastcc ptr @decExpOp(ptr noundef nonnull %166, ptr noundef nonnull %140, ptr noundef nonnull %12, ptr noundef nonnull %5)
  %225 = load i8, ptr %213, align 4, !tbaa !35
  %226 = xor i8 %225, -128
  store i8 %226, ptr %213, align 4, !tbaa !35
  %227 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %166, ptr noundef nonnull %166, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %5)
  %228 = call fastcc ptr @decAddOp(ptr noundef nonnull %166, ptr noundef nonnull %166, ptr noundef nonnull %9, ptr noundef nonnull %12, i8 noundef zeroext -128, ptr noundef nonnull %5)
  %229 = load i16, ptr %214, align 2, !tbaa !42
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %221
  %232 = load i32, ptr %166, align 4, !tbaa !41
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i8, ptr %182, align 4, !tbaa !35
  %236 = and i8 %235, 112
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %234, %231, %221
  %239 = load i32, ptr %140, align 4, !tbaa !41
  %240 = load i32, ptr %215, align 4, !tbaa !40
  %241 = add nsw i32 %240, %239
  %242 = load i32, ptr %166, align 4, !tbaa !41
  %243 = load i32, ptr %178, align 4, !tbaa !40
  %244 = add nsw i32 %243, %242
  %245 = load i32, ptr %2, align 4, !tbaa !62
  %246 = add nsw i32 %244, %245
  %247 = icmp sgt i32 %241, %246
  br i1 %247, label %248, label %281

248:                                              ; preds = %234, %238
  %249 = load i32, ptr %140, align 4, !tbaa !41
  %250 = icmp eq i32 %249, %115
  br i1 %250, label %288, label %251

251:                                              ; preds = %248
  %252 = load i16, ptr %216, align 2, !tbaa !42
  %253 = icmp eq i16 %252, 0
  %254 = icmp eq i32 %249, 1
  %255 = and i1 %254, %253
  br i1 %255, label %256, label %270

256:                                              ; preds = %251
  %257 = load i8, ptr %213, align 4, !tbaa !35
  %258 = and i8 %257, 112
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = call fastcc ptr @decCompareOp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %11, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %262 = getelementptr inbounds %struct.decNumber, ptr %10, i64 0, i32 3
  %263 = load i16, ptr %262, align 2, !tbaa !42
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 1
  store i32 0, ptr %266, align 4, !tbaa !40
  br label %288

267:                                              ; preds = %260
  %268 = load i32, ptr %3, align 4, !tbaa !48
  %269 = or i32 %268, 2080
  store i32 %269, ptr %3, align 4, !tbaa !48
  br label %288

270:                                              ; preds = %256, %251
  br i1 %230, label %271, label %281

271:                                              ; preds = %270
  %272 = load i32, ptr %166, align 4, !tbaa !41
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i8, ptr %182, align 4, !tbaa !35
  %276 = and i8 %275, 112
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load i32, ptr %217, align 4, !tbaa !40
  %280 = sub nsw i32 %279, %115
  store i32 %280, ptr %178, align 4, !tbaa !40
  br label %281

281:                                              ; preds = %238, %270, %271, %274, %278
  %282 = call fastcc ptr @decAddOp(ptr noundef nonnull %140, ptr noundef nonnull %140, ptr noundef nonnull %166, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef nonnull %5)
  br i1 %220, label %221, label %283, !llvm.loop !111

283:                                              ; preds = %281
  %284 = shl nsw i32 %219, 1
  %285 = call i32 @llvm.smin.i32(i32 %284, i32 %115)
  store i32 %285, ptr %11, align 4, !tbaa !62
  %286 = load i32, ptr %1, align 4, !tbaa !41
  %287 = add nsw i32 %286, %285
  store i32 %287, ptr %12, align 4, !tbaa !62
  br label %218, !llvm.loop !111

288:                                              ; preds = %248, %265, %267
  store i32 1, ptr %6, align 4, !tbaa !48
  %289 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 3
  %290 = load i16, ptr %289, align 2, !tbaa !42
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %288
  %293 = load i32, ptr %140, align 4, !tbaa !41
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i8, ptr %213, align 4, !tbaa !35
  %297 = and i8 %296, 112
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  store i32 0, ptr %6, align 4, !tbaa !48
  br label %300

300:                                              ; preds = %299, %295, %292, %288
  %301 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %301, ptr %11, align 4, !tbaa !62
  %302 = load i8, ptr %213, align 4, !tbaa !35
  %303 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %302, ptr %303, align 4, !tbaa !35
  %304 = getelementptr inbounds %struct.decNumber, ptr %140, i64 0, i32 1
  %305 = load i32, ptr %304, align 4, !tbaa !40
  %306 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %305, ptr %306, align 4, !tbaa !40
  %307 = load i32, ptr %140, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %289, i32 noundef %307, ptr noundef nonnull %6, ptr noundef %3)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %3)
  br label %308

308:                                              ; preds = %59, %50, %28, %26, %66, %23, %300, %161, %135, %105, %95, %81, %75
  %309 = phi ptr [ null, %23 ], [ null, %66 ], [ null, %75 ], [ null, %81 ], [ null, %95 ], [ null, %105 ], [ null, %135 ], [ %139, %161 ], [ %139, %300 ], [ null, %26 ], [ null, %28 ], [ null, %50 ], [ null, %59 ]
  %310 = phi ptr [ null, %23 ], [ null, %66 ], [ null, %75 ], [ null, %81 ], [ null, %95 ], [ null, %105 ], [ null, %135 ], [ null, %161 ], [ %165, %300 ], [ null, %26 ], [ null, %28 ], [ null, %50 ], [ null, %59 ]
  %311 = icmp eq ptr %309, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  call void @free(ptr noundef %309) #19
  br label %313

313:                                              ; preds = %312, %308
  %314 = icmp eq ptr %310, null
  br i1 %314, label %316, label %315

315:                                              ; preds = %313
  call void @free(ptr noundef %310) #19
  br label %316

316:                                              ; preds = %315, %313
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberLogB(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !48
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !35
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %4)
  br label %39

12:                                               ; preds = %3
  %13 = and i32 %7, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @decNumberCopyAbs(ptr noundef %0, ptr noundef %1)
  br label %39

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !42
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, ptr %1, align 4, !tbaa !41
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %25, align 4, !tbaa !35
  %26 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %26, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %27 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %27, align 2, !tbaa !42
  store i8 -64, ptr %25, align 4, !tbaa !35
  store i32 2, ptr %4, align 4, !tbaa !48
  br label %39

28:                                               ; preds = %21, %17
  %29 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !40
  %31 = load i32, ptr %1, align 4, !tbaa !41
  %32 = add nsw i32 %31, %30
  %33 = add nsw i32 %32, -1
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false)
  %35 = tail call ptr @decNumberFromUInt32(ptr noundef %0, i32 noundef %34)
  %36 = icmp slt i32 %32, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %38, align 4, !tbaa !35
  br label %39

39:                                               ; preds = %37, %28, %15, %24, %10
  %40 = load i32, ptr %4, align 4, !tbaa !48
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = and i32 %40, 221
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = and i32 %40, 1073741824
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = and i32 %40, -1073741825
  br label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %51, align 4, !tbaa !35
  %52 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %52, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %53 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %53, align 2, !tbaa !42
  store i8 32, ptr %51, align 4, !tbaa !35
  br label %54

54:                                               ; preds = %42, %48, %50
  %55 = phi i32 [ %49, %48 ], [ %40, %50 ], [ %40, %42 ]
  %56 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %55) #19
  br label %57

57:                                               ; preds = %54, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @decNaNs(ptr noundef returned %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #5 !prof !34 {
  %6 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !35
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %4, align 4, !tbaa !48
  %13 = or i32 %12, 1073741952
  store i32 %13, ptr %4, align 4, !tbaa !48
  br label %28

14:                                               ; preds = %5
  %15 = icmp eq ptr %2, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !35
  %19 = and i8 %18, 16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4, !tbaa !48
  %23 = or i32 %22, 1073741952
  store i32 %23, ptr %4, align 4, !tbaa !48
  br label %28

24:                                               ; preds = %16
  %25 = and i32 %8, 32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %2, ptr %1
  br label %28

28:                                               ; preds = %24, %14, %21, %11
  %29 = phi ptr [ %1, %11 ], [ %1, %14 ], [ %2, %21 ], [ %27, %24 ]
  %30 = load i32, ptr %29, align 4, !tbaa !41
  %31 = load i32, ptr %3, align 4, !tbaa !62
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %74, label %33

33:                                               ; preds = %28
  %34 = icmp eq ptr %29, %0
  br i1 %34, label %120, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.decNumber, ptr %29, i64 0, i32 2
  %37 = load i8, ptr %36, align 4, !tbaa !35
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %37, ptr %38, align 4, !tbaa !35
  %39 = getelementptr inbounds %struct.decNumber, ptr %29, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !40
  %41 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !40
  store i32 %30, ptr %0, align 4, !tbaa !41
  %42 = getelementptr inbounds i8, ptr %29, i64 10
  %43 = load i16, ptr %42, align 2, !tbaa !42
  %44 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %43, ptr %44, align 2, !tbaa !42
  %45 = load i32, ptr %29, align 4, !tbaa !41
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %120

47:                                               ; preds = %35
  %48 = getelementptr %struct.decNumber, ptr %0, i64 1
  %49 = icmp slt i32 %45, 50
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = zext nneg i32 %45 to i64
  %52 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !51
  %54 = zext i8 %53 to i32
  br label %58

55:                                               ; preds = %47
  %56 = add nuw nsw i32 %45, 2
  %57 = udiv i32 %56, 3
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %57, %55 ]
  %60 = shl nuw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = add nuw nsw i64 %61, 10
  %63 = getelementptr inbounds i8, ptr %29, i64 %62
  %64 = icmp ugt i32 %59, 1
  br i1 %64, label %65, label %120

65:                                               ; preds = %58
  %66 = getelementptr %struct.decNumber, ptr %29, i64 1
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %72, %67 ], [ %48, %65 ]
  %69 = phi ptr [ %71, %67 ], [ %66, %65 ]
  %70 = load i16, ptr %69, align 2, !tbaa !42
  store i16 %70, ptr %68, align 2, !tbaa !42
  %71 = getelementptr inbounds i16, ptr %69, i64 1
  %72 = getelementptr inbounds i16, ptr %68, i64 1
  %73 = icmp ult ptr %71, %63
  br i1 %73, label %67, label %120, !llvm.loop !77

74:                                               ; preds = %28
  %75 = getelementptr inbounds %struct.decNumber, ptr %29, i64 0, i32 2
  %76 = load i8, ptr %75, align 4, !tbaa !35
  %77 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %76, ptr %77, align 4, !tbaa !35
  %78 = getelementptr i8, ptr %0, i64 10
  %79 = icmp slt i32 %31, 50
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = sext i32 %31 to i64
  %82 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !51
  %84 = zext i8 %83 to i32
  br label %88

85:                                               ; preds = %74
  %86 = add nuw nsw i32 %31, 2
  %87 = udiv i32 %86, 3
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ %84, %80 ], [ %87, %85 ]
  %90 = shl nuw i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr i8, ptr %0, i64 %91
  %93 = getelementptr i8, ptr %92, i64 10
  %94 = icmp eq i32 %89, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = getelementptr %struct.decNumber, ptr %29, i64 0, i32 3
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi ptr [ %101, %97 ], [ %78, %95 ]
  %99 = phi ptr [ %102, %97 ], [ %96, %95 ]
  %100 = load i16, ptr %99, align 2, !tbaa !42
  store i16 %100, ptr %98, align 2, !tbaa !42
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  %102 = getelementptr inbounds i16, ptr %99, i64 1
  %103 = icmp ult ptr %101, %93
  br i1 %103, label %97, label %104, !llvm.loop !112

104:                                              ; preds = %97, %88
  br i1 %79, label %105, label %110

105:                                              ; preds = %104
  %106 = sext i32 %31 to i64
  %107 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !51
  %109 = zext i8 %108 to i32
  br label %113

110:                                              ; preds = %104
  %111 = add nuw nsw i32 %31, 2
  %112 = udiv i32 %111, 3
  br label %113

113:                                              ; preds = %110, %105
  %114 = phi i32 [ %109, %105 ], [ %112, %110 ]
  %115 = mul nuw nsw i32 %114, 3
  store i32 %115, ptr %0, align 4, !tbaa !41
  %116 = icmp sgt i32 %115, %31
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = sub nsw i32 %115, %31
  %119 = tail call fastcc ptr @decDecap(ptr noundef nonnull %0, i32 noundef %118)
  br label %120

120:                                              ; preds = %67, %58, %35, %33, %113, %117
  %121 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %122 = load i8, ptr %121, align 4, !tbaa !35
  %123 = and i8 %122, -49
  %124 = or disjoint i8 %123, 32
  store i8 %124, ptr %121, align 4, !tbaa !35
  %125 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %125, align 4, !tbaa !40
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopyAbs(ptr noundef returned %0, ptr noundef readonly %1) local_unnamed_addr #5 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %6, ptr %7, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !40
  %11 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %11, ptr %0, align 4, !tbaa !41
  %12 = getelementptr inbounds i8, ptr %1, i64 10
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %13, ptr %14, align 2, !tbaa !42
  %15 = load i32, ptr %1, align 4, !tbaa !41
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = getelementptr %struct.decNumber, ptr %0, i64 1
  %19 = icmp slt i32 %15, 50
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = zext nneg i32 %15 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !51
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %17
  %26 = add nuw nsw i32 %15, 2
  %27 = udiv i32 %26, 3
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = shl nuw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 10
  %34 = icmp ugt i32 %29, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %42, %37 ], [ %18, %35 ]
  %39 = phi ptr [ %41, %37 ], [ %36, %35 ]
  %40 = load i16, ptr %39, align 2, !tbaa !42
  store i16 %40, ptr %38, align 2, !tbaa !42
  %41 = getelementptr inbounds i16, ptr %39, i64 1
  %42 = getelementptr inbounds i16, ptr %38, i64 1
  %43 = icmp ult ptr %41, %33
  br i1 %43, label %37, label %44, !llvm.loop !77

44:                                               ; preds = %37, %28, %2, %4
  %45 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %46 = load i8, ptr %45, align 4, !tbaa !35
  %47 = and i8 %46, 127
  store i8 %47, ptr %45, align 4, !tbaa !35
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberLog10(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x %struct.decNumber], align 16
  %7 = alloca [3 x %struct.decNumber], align 16
  %8 = alloca [2 x %struct.decNumber], align 16
  %9 = alloca %struct.decContext, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #19
  %12 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4), !range !93
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %175

14:                                               ; preds = %3
  %15 = call ptr @decContextDefault(ptr noundef nonnull %9, i32 noundef 64) #19
  %16 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !35
  %18 = icmp ult i8 %17, 16
  br i1 %18, label %19, label %52

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !42
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 4, !tbaa !41
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  store i32 0, ptr %10, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  store i32 0, ptr %11, align 4, !tbaa !48
  store i32 1, ptr %9, align 4, !tbaa !62
  %27 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 2
  store i8 %17, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !40
  %31 = load i32, ptr %1, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %20, i32 noundef %31, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %32 = load i32, ptr %11, align 4, !tbaa !48
  %33 = and i32 %32, 32
  %34 = icmp ne i32 %33, 0
  %35 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = icmp ne i16 %36, 1
  %38 = select i1 %34, i1 true, i1 %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %26
  %40 = load i32, ptr %30, align 4, !tbaa !40
  %41 = call i32 @llvm.abs.i32(i32 %40, i1 false)
  %42 = call ptr @decNumberFromUInt32(ptr noundef nonnull %8, i32 noundef %41)
  %43 = icmp slt i32 %40, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8 -128, ptr %27, align 8, !tbaa !35
  br label %45

45:                                               ; preds = %39, %44
  store i32 0, ptr %10, align 4, !tbaa !48
  %46 = load i8, ptr %27, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %46, ptr %47, align 4, !tbaa !35
  %48 = load i32, ptr %30, align 4, !tbaa !40
  %49 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !40
  %50 = load i32, ptr %8, align 16, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %35, i32 noundef %50, ptr noundef nonnull %10, ptr noundef nonnull %4)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br i1 %38, label %52, label %175

51:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %52

52:                                               ; preds = %51, %45, %23, %14
  %53 = load i32, ptr %1, align 4, !tbaa !41
  %54 = add nsw i32 %53, 6
  %55 = load i32, ptr %2, align 4, !tbaa !62
  %56 = call i32 @llvm.smax.i32(i32 %54, i32 %55)
  %57 = add nsw i32 %56, 3
  %58 = icmp slt i32 %56, 47
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !51
  %63 = zext i8 %62 to i32
  br label %67

64:                                               ; preds = %52
  %65 = add nuw nsw i32 %56, 5
  %66 = udiv i32 %65, 3
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi i32 [ %63, %59 ], [ %66, %64 ]
  %69 = icmp ugt i32 %68, 13
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = shl nuw i32 %68, 1
  %72 = add nuw i32 %71, 10
  %73 = zext i32 %72 to i64
  %74 = call noalias ptr @malloc(i64 noundef %73) #20
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, ptr %4, align 4, !tbaa !48
  %78 = or i32 %77, 16
  store i32 %78, ptr %4, align 4, !tbaa !48
  br label %175

79:                                               ; preds = %70, %67
  %80 = phi ptr [ null, %67 ], [ %74, %70 ]
  %81 = phi ptr [ %6, %67 ], [ %74, %70 ]
  %82 = ptrtoint ptr %81 to i64
  store i32 %57, ptr %9, align 4, !tbaa !62
  %83 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 1
  store i32 999999, ptr %83, align 4, !tbaa !70
  %84 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 2
  store i32 -999999, ptr %84, align 4, !tbaa !69
  %85 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 6
  store i8 0, ptr %85, align 4, !tbaa !64
  %86 = call fastcc ptr @decLnOp(ptr noundef nonnull %81, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %4)
  %87 = load i32, ptr %4, align 4, !tbaa !48
  %88 = and i32 %87, 221
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 1073741824
  %91 = icmp eq i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %175, label %93

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.decNumber, ptr %81, i64 0, i32 2
  %95 = load i8, ptr %94, align 4, !tbaa !35
  %96 = and i8 %95, 112
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.decNumber, ptr %81, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !42
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  %103 = load i32, ptr %81, align 4, !tbaa !41
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %143

105:                                              ; preds = %102, %93
  %106 = icmp eq ptr %81, %0
  br i1 %106, label %175, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %95, ptr %108, align 4, !tbaa !35
  %109 = getelementptr inbounds %struct.decNumber, ptr %81, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !40
  %111 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !40
  %112 = load i32, ptr %81, align 4, !tbaa !41
  store i32 %112, ptr %0, align 4, !tbaa !41
  %113 = getelementptr inbounds i8, ptr %81, i64 10
  %114 = load i16, ptr %113, align 2, !tbaa !42
  %115 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %114, ptr %115, align 2, !tbaa !42
  %116 = icmp sgt i32 %112, 3
  br i1 %116, label %117, label %175

117:                                              ; preds = %107
  %118 = getelementptr %struct.decNumber, ptr %0, i64 1
  %119 = icmp slt i32 %112, 50
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = zext nneg i32 %112 to i64
  %122 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !51
  %124 = zext i8 %123 to i32
  br label %128

125:                                              ; preds = %117
  %126 = add nuw nsw i32 %112, 2
  %127 = udiv i32 %126, 3
  br label %128

128:                                              ; preds = %125, %120
  %129 = phi i32 [ %124, %120 ], [ %127, %125 ]
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %175

131:                                              ; preds = %128
  %132 = getelementptr %struct.decNumber, ptr %81, i64 1
  %133 = shl nuw i32 %129, 1
  %134 = zext i32 %133 to i64
  %135 = add i64 %82, %134
  %136 = add i64 %135, 10
  %137 = add i64 %82, 14
  %138 = call i64 @llvm.umax.i64(i64 %136, i64 %137)
  %139 = add i64 %138, -13
  %140 = sub i64 %139, %82
  %141 = and i64 %140, -2
  %142 = add i64 %141, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr align 2 %132, i64 %142, i1 false), !tbaa !42
  br label %175

143:                                              ; preds = %102, %98
  %144 = load i32, ptr %2, align 4, !tbaa !62
  %145 = add nsw i32 %144, 3
  %146 = icmp slt i32 %144, 47
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = sext i32 %145 to i64
  %149 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !51
  %151 = zext i8 %150 to i32
  br label %155

152:                                              ; preds = %143
  %153 = add nuw nsw i32 %144, 5
  %154 = udiv i32 %153, 3
  br label %155

155:                                              ; preds = %152, %147
  %156 = phi i32 [ %151, %147 ], [ %154, %152 ]
  %157 = icmp ugt i32 %156, 13
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = shl nuw i32 %156, 1
  %160 = add nuw i32 %159, 10
  %161 = zext i32 %160 to i64
  %162 = call noalias ptr @malloc(i64 noundef %161) #20
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = or i32 %87, 16
  store i32 %165, ptr %4, align 4, !tbaa !48
  br label %175

166:                                              ; preds = %158, %155
  %167 = phi ptr [ null, %155 ], [ %162, %158 ]
  %168 = phi ptr [ %7, %155 ], [ %162, %158 ]
  %169 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 2
  store i8 0, ptr %169, align 8, !tbaa !35
  %170 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 1
  store i32 0, ptr %170, align 4, !tbaa !40
  store i32 1, ptr %8, align 16, !tbaa !41
  %171 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  store i16 10, ptr %171, align 2, !tbaa !42
  store i32 2, ptr %8, align 16, !tbaa !41
  store i32 %145, ptr %9, align 4, !tbaa !62
  %172 = call fastcc ptr @decLnOp(ptr noundef nonnull %168, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5)
  %173 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %173, ptr %9, align 4, !tbaa !62
  %174 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef nonnull %81, ptr noundef nonnull %168, ptr noundef nonnull %9, i8 noundef zeroext -128, ptr noundef nonnull %4)
  br label %175

175:                                              ; preds = %131, %128, %107, %105, %79, %45, %76, %164, %166, %3
  %176 = phi ptr [ null, %3 ], [ null, %76 ], [ %80, %164 ], [ %80, %166 ], [ null, %45 ], [ %80, %79 ], [ %80, %105 ], [ %80, %107 ], [ %80, %128 ], [ %80, %131 ]
  %177 = phi ptr [ null, %3 ], [ null, %76 ], [ null, %164 ], [ %167, %166 ], [ null, %45 ], [ null, %79 ], [ null, %105 ], [ null, %107 ], [ null, %128 ], [ null, %131 ]
  %178 = icmp eq ptr %176, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @free(ptr noundef %176) #19
  br label %180

180:                                              ; preds = %179, %175
  %181 = icmp eq ptr %177, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call void @free(ptr noundef %177) #19
  br label %183

183:                                              ; preds = %182, %180
  %184 = load i32, ptr %4, align 4, !tbaa !48
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %183
  %187 = and i32 %184, 221
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  %190 = and i32 %184, 1073741824
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = and i32 %184, -1073741825
  br label %198

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %195, align 4, !tbaa !35
  %196 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %196, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %197 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %197, align 2, !tbaa !42
  store i8 32, ptr %195, align 4, !tbaa !35
  br label %198

198:                                              ; preds = %186, %192, %194
  %199 = phi i32 [ %193, %192 ], [ %184, %194 ], [ %184, %186 ]
  %200 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %199) #19
  br label %201

201:                                              ; preds = %198, %183
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %0
}

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMax(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 2, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMaxMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 7, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMin(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 3, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMinMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 8, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMinus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 0, ptr %8, align 2, !tbaa !42
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %10, ptr %7, align 4, !tbaa !40
  %11 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -128, ptr noundef nonnull %5)
  %12 = load i32, ptr %5, align 4, !tbaa !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = and i32 %12, 221
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = and i32 %12, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = and i32 %12, -1073741825
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %23, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %25, align 2, !tbaa !42
  store i8 32, ptr %23, align 4, !tbaa !35
  br label %26

26:                                               ; preds = %14, %20, %22
  %27 = phi i32 [ %21, %20 ], [ %12, %22 ], [ %12, %14 ]
  %28 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %27) #19
  br label %29

29:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberNextMinus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = and i8 %8, -64
  %10 = icmp eq i8 %9, 64
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %12, ptr %0, align 4, !tbaa !41
  %13 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %14 = icmp sgt i32 %12, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %18, %15 ], [ %12, %11 ]
  %17 = phi ptr [ %19, %15 ], [ %13, %11 ]
  store i16 999, ptr %17, align 2, !tbaa !42
  %18 = add nsw i32 %16, -3
  %19 = getelementptr inbounds i16, ptr %17, i64 1
  %20 = icmp sgt i32 %16, 6
  br i1 %20, label %15, label %21, !llvm.loop !113

21:                                               ; preds = %15, %11
  %22 = phi ptr [ %13, %11 ], [ %19, %15 ]
  %23 = phi i32 [ %12, %11 ], [ %18, %15 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = trunc i32 %26 to i16
  %28 = add i16 %27, -1
  store i16 %28, ptr %22, align 2, !tbaa !42
  %29 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %29, align 4, !tbaa !35
  %30 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !70
  %32 = sub i32 %31, %12
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !40
  br label %57

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %36, align 4, !tbaa !35
  %37 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %37, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %38 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 1, ptr %38, align 2, !tbaa !42
  store i32 -1000000000, ptr %37, align 4, !tbaa !40
  %39 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 6, ptr %39, align 4, !tbaa !76
  %40 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef nonnull %6)
  %41 = load i32, ptr %6, align 4, !tbaa !48
  %42 = and i32 %41, 1073741952
  store i32 %42, ptr %6, align 4, !tbaa !48
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %35
  %45 = and i32 %41, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = and i32 %41, 1073741824
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %51, align 4, !tbaa !35
  %52 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %52, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %53 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %53, align 2, !tbaa !42
  store i8 32, ptr %51, align 4, !tbaa !35
  br label %54

54:                                               ; preds = %47, %44, %50
  %55 = phi i32 [ %42, %50 ], [ %42, %44 ], [ 128, %47 ]
  %56 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %55) #19
  br label %57

57:                                               ; preds = %35, %54, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberNextPlus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = icmp ugt i8 %8, -65
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %11, ptr %0, align 4, !tbaa !41
  %12 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %13 = icmp sgt i32 %11, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %17, %14 ], [ %11, %10 ]
  %16 = phi ptr [ %18, %14 ], [ %12, %10 ]
  store i16 999, ptr %16, align 2, !tbaa !42
  %17 = add nsw i32 %15, -3
  %18 = getelementptr inbounds i16, ptr %16, i64 1
  %19 = icmp sgt i32 %15, 6
  br i1 %19, label %14, label %20, !llvm.loop !113

20:                                               ; preds = %14, %10
  %21 = phi ptr [ %12, %10 ], [ %18, %14 ]
  %22 = phi i32 [ %11, %10 ], [ %17, %14 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = trunc i32 %25 to i16
  %27 = add i16 %26, -1
  store i16 %27, ptr %21, align 2, !tbaa !42
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %28, align 4, !tbaa !35
  %29 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = sub i32 %30, %11
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !40
  store i8 -128, ptr %28, align 4, !tbaa !35
  br label %56

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %35, align 4, !tbaa !35
  %36 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %36, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %37 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 1, ptr %37, align 2, !tbaa !42
  store i32 -1000000000, ptr %36, align 4, !tbaa !40
  %38 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 0, ptr %38, align 4, !tbaa !76
  %39 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %6)
  %40 = load i32, ptr %6, align 4, !tbaa !48
  %41 = and i32 %40, 1073741952
  store i32 %41, ptr %6, align 4, !tbaa !48
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %34
  %44 = and i32 %40, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = and i32 %40, 1073741824
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %50, align 4, !tbaa !35
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %51, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %52 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %52, align 2, !tbaa !42
  store i8 32, ptr %50, align 4, !tbaa !35
  br label %53

53:                                               ; preds = %46, %43, %49
  %54 = phi i32 [ %41, %49 ], [ %41, %43 ], [ 128, %46 ]
  %55 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %54) #19
  br label %56

56:                                               ; preds = %34, %53, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberNextToward(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decContext, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !35
  %10 = and i8 %9, 48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !35
  %15 = and i8 %14, 48
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %4
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7)
  br label %108

19:                                               ; preds = %12
  %20 = tail call fastcc i32 @decCompare(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  switch i32 %20, label %24 [
    i32 -2147483648, label %21
    i32 0, label %22
  ]

21:                                               ; preds = %19
  store i32 16, ptr %7, align 4, !tbaa !48
  br label %108

22:                                               ; preds = %19
  %23 = tail call ptr @decNumberCopySign(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %108

24:                                               ; preds = %19
  %25 = icmp slt i32 %20, 0
  %26 = load i8, ptr %8, align 4, !tbaa !35
  br i1 %25, label %27, label %53

27:                                               ; preds = %24
  %28 = icmp ugt i8 %26, -65
  br i1 %28, label %29, label %80

29:                                               ; preds = %27
  %30 = load i32, ptr %3, align 4, !tbaa !62
  store i32 %30, ptr %0, align 4, !tbaa !41
  %31 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %32 = icmp sgt i32 %30, 3
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %36, %33 ], [ %30, %29 ]
  %35 = phi ptr [ %37, %33 ], [ %31, %29 ]
  store i16 999, ptr %35, align 2, !tbaa !42
  %36 = add nsw i32 %34, -3
  %37 = getelementptr inbounds i16, ptr %35, i64 1
  %38 = icmp sgt i32 %34, 6
  br i1 %38, label %33, label %39, !llvm.loop !113

39:                                               ; preds = %33, %29
  %40 = phi ptr [ %31, %29 ], [ %37, %33 ]
  %41 = phi i32 [ %30, %29 ], [ %36, %33 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = trunc i32 %44 to i16
  %46 = add i16 %45, -1
  store i16 %46, ptr %40, align 2, !tbaa !42
  %47 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %47, align 4, !tbaa !35
  %48 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !70
  %50 = sub i32 %49, %30
  %51 = add i32 %50, 1
  %52 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !40
  store i8 -128, ptr %47, align 4, !tbaa !35
  br label %126

53:                                               ; preds = %24
  %54 = and i8 %26, -64
  %55 = icmp eq i8 %54, 64
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i32, ptr %3, align 4, !tbaa !62
  store i32 %57, ptr %0, align 4, !tbaa !41
  %58 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %59 = icmp sgt i32 %57, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %60
  %61 = phi i32 [ %63, %60 ], [ %57, %56 ]
  %62 = phi ptr [ %64, %60 ], [ %58, %56 ]
  store i16 999, ptr %62, align 2, !tbaa !42
  %63 = add nsw i32 %61, -3
  %64 = getelementptr inbounds i16, ptr %62, i64 1
  %65 = icmp sgt i32 %61, 6
  br i1 %65, label %60, label %66, !llvm.loop !113

66:                                               ; preds = %60, %56
  %67 = phi ptr [ %58, %56 ], [ %64, %60 ]
  %68 = phi i32 [ %57, %56 ], [ %63, %60 ]
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = trunc i32 %71 to i16
  %73 = add i16 %72, -1
  store i16 %73, ptr %67, align 2, !tbaa !42
  %74 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %74, align 4, !tbaa !35
  %75 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !70
  %77 = sub i32 %76, %57
  %78 = add i32 %77, 1
  %79 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %78, ptr %79, align 4, !tbaa !40
  br label %126

80:                                               ; preds = %53, %27
  %81 = phi i32 [ 0, %27 ], [ 6, %53 ]
  %82 = phi i8 [ 0, %27 ], [ -128, %53 ]
  %83 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 3
  store i32 %81, ptr %83, align 4, !tbaa !76
  %84 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 2
  store i8 0, ptr %84, align 4, !tbaa !35
  %85 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 1
  store i32 0, ptr %85, align 4, !tbaa !40
  store i32 1, ptr %5, align 4, !tbaa !41
  %86 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  store i16 1, ptr %86, align 2, !tbaa !42
  store i32 -1000000000, ptr %85, align 4, !tbaa !40
  %87 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %82, ptr noundef nonnull %7)
  %88 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %89 = load i8, ptr %88, align 4, !tbaa !35
  %90 = and i8 %89, 112
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !42
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, ptr %0, align 4, !tbaa !41
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %108, label %99

99:                                               ; preds = %96, %92
  %100 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !40
  %102 = load i32, ptr %0, align 4, !tbaa !41
  %103 = add nsw i32 %102, %101
  %104 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !69
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, ptr %7, align 4, !tbaa !48
  br label %108

108:                                              ; preds = %80, %96, %107, %99, %21, %22, %17
  %109 = load i32, ptr %7, align 4, !tbaa !48
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %108
  %112 = and i32 %109, 221
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = and i32 %109, 1073741824
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = and i32 %109, -1073741825
  br label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %120, align 4, !tbaa !35
  %121 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %121, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %122 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %122, align 2, !tbaa !42
  store i8 32, ptr %120, align 4, !tbaa !35
  br label %123

123:                                              ; preds = %111, %117, %119
  %124 = phi i32 [ %118, %117 ], [ %109, %119 ], [ %109, %111 ]
  %125 = call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %124) #19
  br label %126

126:                                              ; preds = %39, %66, %108, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @decCompare(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4, !tbaa !41
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !35
  %13 = and i8 %12, 112
  %14 = icmp eq i8 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %7, %3
  %18 = phi i1 [ false, %7 ], [ false, %3 ], [ %14, %10 ]
  %19 = phi i32 [ 1, %7 ], [ 1, %3 ], [ %16, %10 ]
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !42
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4, !tbaa !41
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !35
  %31 = and i8 %30, 112
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i1 true, i1 %18
  %34 = select i1 %32, i32 %19, i32 -1
  br i1 %33, label %131, label %67

35:                                               ; preds = %25, %21
  br i1 %18, label %131, label %67

36:                                               ; preds = %17
  br i1 %18, label %42, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %39 = load i8, ptr %38, align 4, !tbaa !35
  %40 = icmp sgt i8 %39, -1
  %41 = select i1 %40, i32 1, i32 -1
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i32 [ 0, %36 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !42
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, ptr %1, align 4, !tbaa !41
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %52 = load i8, ptr %51, align 4, !tbaa !35
  %53 = and i8 %52, 112
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50, %47, %42
  %56 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %57 = load i8, ptr %56, align 4, !tbaa !35
  %58 = icmp sgt i8 %57, -1
  %59 = select i1 %58, i32 1, i32 -1
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i32 [ 0, %50 ], [ %59, %55 ]
  %62 = icmp sgt i32 %43, %61
  br i1 %62, label %131, label %63

63:                                               ; preds = %60
  %64 = icmp slt i32 %43, %61
  %65 = select i1 %64, i1 true, i1 %18
  %66 = sext i1 %64 to i32
  br i1 %65, label %131, label %67

67:                                               ; preds = %63, %28, %35
  %68 = phi i32 [ 1, %35 ], [ 1, %28 ], [ %43, %63 ]
  %69 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %70 = load i8, ptr %69, align 4, !tbaa !35
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %73 = load i8, ptr %72, align 4, !tbaa !35
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %71
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %67
  %79 = and i32 %74, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %131, label %81

81:                                               ; preds = %78
  %82 = and i32 %71, 64
  %83 = icmp eq i32 %82, 0
  %84 = sub nsw i32 0, %68
  %85 = select i1 %83, i32 %84, i32 0
  br label %131

86:                                               ; preds = %67
  %87 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !40
  %89 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !40
  %91 = icmp sgt i32 %88, %90
  %92 = sub nsw i32 0, %68
  %93 = select i1 %91, ptr %0, ptr %1
  %94 = select i1 %91, ptr %1, ptr %0
  %95 = select i1 %91, i32 %92, i32 %68
  %96 = getelementptr inbounds %struct.decNumber, ptr %94, i64 0, i32 3
  %97 = load i32, ptr %94, align 4, !tbaa !41
  %98 = icmp slt i32 %97, 50
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !51
  %103 = zext i8 %102 to i32
  br label %107

104:                                              ; preds = %86
  %105 = add nuw nsw i32 %97, 2
  %106 = udiv i32 %105, 3
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %103, %99 ], [ %106, %104 ]
  %109 = getelementptr inbounds %struct.decNumber, ptr %93, i64 0, i32 3
  %110 = load i32, ptr %93, align 4, !tbaa !41
  %111 = icmp slt i32 %110, 50
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = sext i32 %110 to i64
  %114 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !51
  %116 = zext i8 %115 to i32
  br label %120

117:                                              ; preds = %107
  %118 = add nuw nsw i32 %110, 2
  %119 = udiv i32 %118, 3
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i32 [ %116, %112 ], [ %119, %117 ]
  %122 = getelementptr inbounds %struct.decNumber, ptr %93, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !40
  %124 = getelementptr inbounds %struct.decNumber, ptr %94, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !40
  %126 = sub nsw i32 %123, %125
  %127 = tail call fastcc i32 @decUnitCompare(ptr noundef nonnull %96, i32 noundef %108, ptr noundef nonnull %109, i32 noundef %121, i32 noundef %126), !range !90
  %128 = icmp eq i32 %127, -2147483648
  %129 = mul nsw i32 %127, %95
  %130 = select i1 %128, i32 -2147483648, i32 %129
  br label %131

131:                                              ; preds = %81, %63, %28, %78, %60, %35, %120
  %132 = phi i32 [ %130, %120 ], [ %34, %28 ], [ -1, %35 ], [ 1, %60 ], [ %66, %63 ], [ %68, %78 ], [ %85, %81 ]
  ret i32 %132
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopySign(ptr noundef returned %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !35
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !35
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %9, ptr %10, align 4, !tbaa !35
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !40
  %14 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %14, ptr %0, align 4, !tbaa !41
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i16, ptr %15, align 2, !tbaa !42
  %17 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %16, ptr %17, align 2, !tbaa !42
  %18 = load i32, ptr %1, align 4, !tbaa !41
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %47

20:                                               ; preds = %7
  %21 = getelementptr %struct.decNumber, ptr %0, i64 1
  %22 = icmp slt i32 %18, 50
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !51
  %27 = zext i8 %26 to i32
  br label %31

28:                                               ; preds = %20
  %29 = add nuw nsw i32 %18, 2
  %30 = udiv i32 %29, 3
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %27, %23 ], [ %30, %28 ]
  %33 = shl nuw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr i8, ptr %1, i64 %34
  %36 = getelementptr i8, ptr %35, i64 10
  %37 = icmp ugt i32 %32, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %45, %40 ], [ %21, %38 ]
  %42 = phi ptr [ %44, %40 ], [ %39, %38 ]
  %43 = load i16, ptr %42, align 2, !tbaa !42
  store i16 %43, ptr %41, align 2, !tbaa !42
  %44 = getelementptr inbounds i16, ptr %42, i64 1
  %45 = getelementptr inbounds i16, ptr %41, i64 1
  %46 = icmp ult ptr %44, %36
  br i1 %46, label %40, label %47, !llvm.loop !77

47:                                               ; preds = %40, %31, %3, %7
  %48 = and i8 %5, -128
  %49 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %50 = load i8, ptr %49, align 4, !tbaa !35
  %51 = and i8 %50, 127
  %52 = or disjoint i8 %51, %48
  store i8 %52, ptr %49, align 4, !tbaa !35
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberIsNormal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !35
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 4, !tbaa !41
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = load i32, ptr %0, align 4, !tbaa !41
  %18 = add nsw i32 %17, %16
  %19 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = icmp sgt i32 %18, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %14, %11, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %11 ], [ %22, %14 ]
  ret i32 %24
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @decNumberOr(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !35
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !35
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %12, %8, %4
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %21, align 4, !tbaa !35
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %23, align 2, !tbaa !42
  store i8 32, ptr %21, align 4, !tbaa !35
  %24 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef 128) #19
  br label %187

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds i8, ptr %0, i64 10
  %29 = load i32, ptr %1, align 4, !tbaa !41
  %30 = icmp slt i32 %29, 50
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !51
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %25
  %37 = add nuw nsw i32 %29, 2
  %38 = udiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %38, %36 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %26, i64 %41
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i32, ptr %2, align 4, !tbaa !41
  %45 = icmp slt i32 %44, 50
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %39
  %52 = add nuw nsw i32 %44, 2
  %53 = udiv i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %50, %46 ], [ %53, %51 ]
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %27, i64 %56
  %58 = getelementptr inbounds i16, ptr %57, i64 -1
  %59 = load i32, ptr %3, align 4, !tbaa !62
  %60 = icmp slt i32 %59, 50
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !51
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %54
  %67 = add nuw nsw i32 %59, 2
  %68 = udiv i32 %67, 3
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ]
  %71 = shl nuw i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = getelementptr i8, ptr %73, i64 8
  br i1 %60, label %75, label %80

75:                                               ; preds = %69
  %76 = sext i32 %59 to i64
  %77 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !51
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %69
  %81 = add nuw nsw i32 %59, 2
  %82 = udiv i32 %81, 3
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %79, %75 ], [ %82, %80 ]
  %85 = icmp eq i32 %70, 0
  br i1 %85, label %150, label %86

86:                                               ; preds = %83
  %87 = mul i32 %84, -3
  %88 = add i32 %59, 2
  %89 = add i32 %88, %87
  %90 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %92 = zext i32 %89 to i64
  br label %93

93:                                               ; preds = %86, %145
  %94 = phi ptr [ undef, %86 ], [ %144, %145 ]
  %95 = phi ptr [ %26, %86 ], [ %146, %145 ]
  %96 = phi ptr [ %27, %86 ], [ %147, %145 ]
  %97 = phi ptr [ %28, %86 ], [ %148, %145 ]
  %98 = icmp ugt ptr %95, %43
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = load i16, ptr %95, align 2, !tbaa !42
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi i16 [ %100, %99 ], [ 0, %93 ]
  %103 = icmp ugt ptr %96, %58
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i16, ptr %96, align 2, !tbaa !42
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi i16 [ %105, %104 ], [ 0, %101 ]
  store i16 0, ptr %97, align 2, !tbaa !42
  %108 = or i16 %107, %102
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  %111 = icmp ne ptr %97, %74
  br label %112

112:                                              ; preds = %134, %110
  %113 = phi i64 [ %139, %134 ], [ 0, %110 ]
  %114 = phi i16 [ %135, %134 ], [ %107, %110 ]
  %115 = phi i16 [ %136, %134 ], [ %102, %110 ]
  %116 = zext i16 %115 to i32
  %117 = zext i16 %114 to i32
  %118 = or i32 %117, %116
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %112
  %122 = load i16, ptr %97, align 2, !tbaa !42
  %123 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !48
  %125 = trunc i32 %124 to i16
  %126 = add i16 %122, %125
  store i16 %126, ptr %97, align 2, !tbaa !42
  br label %127

127:                                              ; preds = %121, %112
  %128 = urem i32 %116, 10
  %129 = urem i32 %117, 10
  %130 = or i32 %129, %128
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  store i8 0, ptr %90, align 4, !tbaa !35
  store i32 0, ptr %91, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  store i16 0, ptr %28, align 2, !tbaa !42
  store i8 32, ptr %90, align 4, !tbaa !35
  %133 = tail call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef 128) #19
  br label %142

134:                                              ; preds = %127
  %135 = udiv i16 %114, 10
  %136 = udiv i16 %115, 10
  %137 = icmp ne i64 %113, %92
  %138 = select i1 %111, i1 true, i1 %137
  %139 = add nuw nsw i64 %113, 1
  %140 = icmp ult i64 %113, 2
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %112, label %142, !llvm.loop !114

142:                                              ; preds = %134, %132, %106
  %143 = phi i1 [ true, %106 ], [ false, %132 ], [ true, %134 ]
  %144 = phi ptr [ %94, %106 ], [ %0, %132 ], [ %94, %134 ]
  br i1 %143, label %145, label %187

145:                                              ; preds = %142
  %146 = getelementptr inbounds i16, ptr %95, i64 1
  %147 = getelementptr inbounds i16, ptr %96, i64 1
  %148 = getelementptr inbounds i16, ptr %97, i64 1
  %149 = icmp ugt ptr %148, %74
  br i1 %149, label %150, label %93, !llvm.loop !115

150:                                              ; preds = %145, %83
  %151 = phi ptr [ %28, %83 ], [ %148, %145 ]
  %152 = ptrtoint ptr %151 to i64
  %153 = ptrtoint ptr %28 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 1
  %156 = trunc i64 %155 to i32
  %157 = add nsw i32 %156, -1
  %158 = mul nsw i32 %157, 3
  %159 = add nsw i32 %158, 1
  %160 = icmp slt i32 %156, 1
  br i1 %160, label %183, label %161

161:                                              ; preds = %150
  %162 = sext i32 %157 to i64
  %163 = shl nsw i64 %162, 1
  %164 = add nsw i64 %163, 10
  br label %165

165:                                              ; preds = %161, %173
  %166 = phi i32 [ %174, %173 ], [ %159, %161 ]
  %167 = phi i64 [ %175, %173 ], [ %164, %161 ]
  %168 = getelementptr inbounds i8, ptr %0, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !42
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = icmp eq i32 %166, 1
  br i1 %172, label %183, label %173

173:                                              ; preds = %171
  %174 = add nsw i32 %166, -3
  %175 = add nsw i64 %167, -2
  %176 = icmp slt i64 %167, 12
  br i1 %176, label %183, label %165, !llvm.loop !47

177:                                              ; preds = %165
  %178 = icmp ult i16 %169, 10
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = icmp ult i16 %169, 100
  %181 = select i1 %180, i32 1, i32 2
  %182 = add nsw i32 %181, %166
  br label %183

183:                                              ; preds = %171, %173, %150, %177, %179
  %184 = phi i32 [ %166, %177 ], [ %182, %179 ], [ %159, %150 ], [ %174, %173 ], [ 1, %171 ]
  store i32 %184, ptr %0, align 4, !tbaa !41
  %185 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %185, align 4, !tbaa !40
  %186 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %186, align 4, !tbaa !35
  br label %187

187:                                              ; preds = %142, %183, %20
  %188 = phi ptr [ %0, %20 ], [ %0, %183 ], [ %144, %142 ]
  ret ptr %188
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberPlus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 0, ptr %8, align 2, !tbaa !42
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %10, ptr %7, align 4, !tbaa !40
  %11 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %12 = load i32, ptr %5, align 4, !tbaa !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = and i32 %12, 221
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = and i32 %12, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = and i32 %12, -1073741825
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %23, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %25, align 2, !tbaa !42
  store i8 32, ptr %23, align 4, !tbaa !35
  br label %26

26:                                               ; preds = %14, %20, %22
  %27 = phi i32 [ %21, %20 ], [ %12, %22 ], [ %12, %14 ]
  %28 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %27) #19
  br label %29

29:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberMultiply(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decMultiplyOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberPower(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decContext, align 4
  %8 = alloca %struct.decNumber, align 4
  %9 = ptrtoint ptr %8 to i64
  %10 = alloca [4 x %struct.decNumber], align 16
  %11 = alloca [4 x %struct.decNumber], align 16
  %12 = load i32, ptr %3, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #19
  %13 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !35
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !35
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %15
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %4
  %23 = and i32 %19, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %6)
  br label %385

27:                                               ; preds = %22
  %28 = and i32 %18, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %27
  %31 = and i8 %17, -128
  %32 = icmp sgt i8 %14, -1
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !42
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, ptr %1, align 4, !tbaa !41
  %39 = icmp eq i32 %38, 1
  %40 = and i32 %15, 64
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %41, %39
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %33
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %385

44:                                               ; preds = %37, %30
  %45 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 2
  store i8 0, ptr %45, align 4, !tbaa !35
  %46 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 1
  store i32 0, ptr %46, align 4, !tbaa !40
  store i32 1, ptr %8, align 4, !tbaa !41
  %47 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  store i16 1, ptr %47, align 2, !tbaa !42
  %48 = call ptr @decNumberCompare(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %3)
  %49 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %49, align 4, !tbaa !35
  %50 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %50, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %51, align 2, !tbaa !42
  %52 = getelementptr inbounds %struct.decNumber, ptr %10, i64 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !35
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = icmp eq i8 %31, 0
  br i1 %56, label %385, label %57

57:                                               ; preds = %55
  store i8 64, ptr %49, align 4, !tbaa !35
  br label %385

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.decNumber, ptr %10, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !42
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, ptr %3, align 4, !tbaa !62
  %64 = add nsw i32 %63, -1
  store i16 1, ptr %51, align 2, !tbaa !42
  %65 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %51, i32 noundef 1, i32 noundef %64)
  store i32 %65, ptr %0, align 4, !tbaa !41
  %66 = sub nsw i32 1, %63
  store i32 %66, ptr %50, align 4, !tbaa !40
  store i32 2080, ptr %6, align 4, !tbaa !48
  br label %385

67:                                               ; preds = %58
  %68 = icmp eq i8 %31, 0
  br i1 %68, label %69, label %385

69:                                               ; preds = %67
  store i8 64, ptr %49, align 4, !tbaa !35
  br label %385

70:                                               ; preds = %27, %4
  %71 = call fastcc i32 @decGetInt(ptr noundef %2)
  %72 = icmp eq i32 %71, -2147483648
  %73 = icmp slt i8 %14, 0
  %74 = and i32 %71, 1
  %75 = icmp ne i32 %74, 0
  %76 = and i1 %73, %75
  %77 = select i1 %76, i8 -128, i8 0
  %78 = and i32 %15, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %81, align 4, !tbaa !35
  %82 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %82, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %83 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %83, align 2, !tbaa !42
  %84 = icmp eq i32 %71, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i16 1, ptr %83, align 2, !tbaa !42
  br label %385

86:                                               ; preds = %80
  br i1 %72, label %87, label %91

87:                                               ; preds = %86
  %88 = load i8, ptr %13, align 4, !tbaa !35
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %385

91:                                               ; preds = %87, %86
  %92 = or disjoint i8 %77, 64
  %93 = icmp slt i8 %17, 0
  %94 = select i1 %93, i8 %77, i8 %92
  store i8 %94, ptr %81, align 4, !tbaa !35
  br label %385

95:                                               ; preds = %70
  %96 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !42
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32, ptr %1, align 4, !tbaa !41
  %101 = icmp eq i32 %100, 1
  %102 = and i32 %15, 48
  %103 = icmp eq i32 %102, 0
  %104 = and i1 %103, %101
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = icmp eq i32 %71, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %385

108:                                              ; preds = %105
  %109 = lshr i8 %17, 1
  %110 = and i8 %109, 64
  %111 = or disjoint i8 %77, %110
  %112 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %112, align 4, !tbaa !35
  %113 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %113, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %114 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %114, align 2, !tbaa !42
  store i8 %111, ptr %112, align 4, !tbaa !35
  br label %385

115:                                              ; preds = %99, %95
  switch i32 %71, label %138 [
    i32 -2147483645, label %116
    i32 -2147483646, label %116
    i32 -2147483648, label %116
    i32 0, label %134
  ]

116:                                              ; preds = %115, %115, %115
  %117 = icmp sgt i8 %14, -1
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %385

119:                                              ; preds = %116
  %120 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %6), !range !93
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %385

122:                                              ; preds = %119
  %123 = call fastcc i32 @decCheckMath(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %6), !range !93
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %385

125:                                              ; preds = %122
  %126 = call ptr @decContextDefault(ptr noundef nonnull %7, i32 noundef 64) #19
  %127 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 1
  store i32 999999, ptr %127, align 4, !tbaa !70
  %128 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 2
  store i32 -999999, ptr %128, align 4, !tbaa !69
  %129 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 6
  store i8 0, ptr %129, align 4, !tbaa !64
  %130 = load i32, ptr %1, align 4, !tbaa !41
  %131 = load i32, ptr %3, align 4, !tbaa !62
  %132 = call i32 @llvm.smax.i32(i32 %130, i32 %131)
  %133 = add nsw i32 %132, 10
  store i32 %133, ptr %7, align 4, !tbaa !62
  br label %149

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %135, align 4, !tbaa !35
  %136 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %136, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %137 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %137, align 2, !tbaa !42
  br label %385

138:                                              ; preds = %115
  %139 = call i32 @llvm.abs.i32(i32 %71, i1 true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !94
  %140 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 3
  store i32 3, ptr %140, align 4, !tbaa !76
  %141 = load i32, ptr %2, align 4, !tbaa !41
  %142 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !40
  %144 = add i32 %141, %12
  %145 = add i32 %144, %143
  %146 = add nsw i32 %145, 2
  store i32 %146, ptr %7, align 4, !tbaa !62
  %147 = icmp sgt i32 %145, 999999997
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %385

149:                                              ; preds = %138, %125
  %150 = phi i32 [ %139, %138 ], [ %71, %125 ]
  %151 = load i32, ptr %7, align 4, !tbaa !62
  %152 = icmp slt i32 %151, 50
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = sext i32 %151 to i64
  %155 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !51
  %157 = zext i8 %156 to i32
  br label %161

158:                                              ; preds = %149
  %159 = add nuw nsw i32 %151, 2
  %160 = udiv i32 %159, 3
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i32 [ %157, %153 ], [ %160, %158 ]
  %163 = shl nuw i32 %162, 1
  %164 = add nuw i32 %163, 10
  %165 = zext i32 %164 to i64
  %166 = icmp ugt i32 %162, 19
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = call noalias ptr @malloc(i64 noundef %165) #20
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, ptr %6, align 4, !tbaa !48
  %172 = or i32 %171, 16
  store i32 %172, ptr %6, align 4, !tbaa !48
  br label %385

173:                                              ; preds = %167, %161
  %174 = phi ptr [ %10, %161 ], [ %168, %167 ]
  %175 = phi ptr [ null, %161 ], [ %168, %167 ]
  %176 = ptrtoint ptr %174 to i64
  switch i32 %71, label %202 [
    i32 -2147483645, label %177
    i32 -2147483646, label %177
    i32 -2147483648, label %177
  ]

177:                                              ; preds = %173, %173, %173
  %178 = call fastcc ptr @decLnOp(ptr noundef nonnull %174, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %179 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 3
  %180 = load i16, ptr %179, align 2, !tbaa !42
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %177
  %183 = load i32, ptr %174, align 4, !tbaa !41
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 2
  %187 = load i8, ptr %186, align 4, !tbaa !35
  %188 = and i8 %187, 112
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  store i16 1, ptr %179, align 2, !tbaa !42
  br i1 %72, label %191, label %375

191:                                              ; preds = %190
  %192 = load i32, ptr %3, align 4, !tbaa !62
  %193 = add nsw i32 %192, -1
  %194 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %179, i32 noundef 1, i32 noundef %193)
  store i32 %194, ptr %174, align 4, !tbaa !41
  %195 = sub nsw i32 1, %192
  %196 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 1
  store i32 %195, ptr %196, align 4, !tbaa !40
  %197 = load i32, ptr %6, align 4, !tbaa !48
  %198 = or i32 %197, 2080
  store i32 %198, ptr %6, align 4, !tbaa !48
  br label %375

199:                                              ; preds = %185, %182, %177
  %200 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %174, ptr noundef nonnull %174, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %201 = call fastcc ptr @decExpOp(ptr noundef nonnull %174, ptr noundef nonnull %174, ptr noundef nonnull %7, ptr noundef nonnull %6)
  br label %375

202:                                              ; preds = %173
  %203 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 2
  store i8 0, ptr %203, align 4, !tbaa !35
  %204 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 1
  store i32 0, ptr %204, align 4, !tbaa !40
  store i32 1, ptr %174, align 4, !tbaa !41
  %205 = getelementptr inbounds i8, ptr %174, i64 10
  store i16 1, ptr %205, align 2, !tbaa !42
  %206 = load i8, ptr %16, align 4, !tbaa !35
  %207 = icmp sgt i8 %206, -1
  br i1 %207, label %294, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 2
  store i8 0, ptr %209, align 4, !tbaa !35
  %210 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 1
  store i32 0, ptr %210, align 4, !tbaa !40
  store i32 1, ptr %8, align 4, !tbaa !41
  %211 = getelementptr inbounds i8, ptr %8, i64 10
  store i16 1, ptr %211, align 2, !tbaa !42
  %212 = call fastcc ptr @decDivideOp(ptr noundef nonnull %174, ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext -128, ptr noundef nonnull %6)
  br i1 %166, label %213, label %219

213:                                              ; preds = %208
  %214 = call noalias ptr @malloc(i64 noundef %165) #20
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, ptr %6, align 4, !tbaa !48
  %218 = or i32 %217, 16
  store i32 %218, ptr %6, align 4, !tbaa !48
  br label %290

219:                                              ; preds = %213, %208
  %220 = phi ptr [ null, %208 ], [ %214, %213 ]
  %221 = phi ptr [ %11, %208 ], [ %214, %213 ]
  %222 = icmp eq ptr %221, %174
  br i1 %222, label %258, label %223

223:                                              ; preds = %219
  %224 = load i8, ptr %203, align 4, !tbaa !35
  %225 = getelementptr inbounds %struct.decNumber, ptr %221, i64 0, i32 2
  store i8 %224, ptr %225, align 4, !tbaa !35
  %226 = load i32, ptr %204, align 4, !tbaa !40
  %227 = getelementptr inbounds %struct.decNumber, ptr %221, i64 0, i32 1
  store i32 %226, ptr %227, align 4, !tbaa !40
  %228 = load i32, ptr %174, align 4, !tbaa !41
  store i32 %228, ptr %221, align 4, !tbaa !41
  %229 = load i16, ptr %205, align 2, !tbaa !42
  %230 = getelementptr inbounds %struct.decNumber, ptr %221, i64 0, i32 3
  store i16 %229, ptr %230, align 2, !tbaa !42
  %231 = icmp sgt i32 %228, 3
  br i1 %231, label %232, label %258

232:                                              ; preds = %223
  %233 = getelementptr %struct.decNumber, ptr %221, i64 1
  %234 = icmp slt i32 %228, 50
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = zext nneg i32 %228 to i64
  %237 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !51
  %239 = zext i8 %238 to i32
  br label %243

240:                                              ; preds = %232
  %241 = add nuw nsw i32 %228, 2
  %242 = udiv i32 %241, 3
  br label %243

243:                                              ; preds = %240, %235
  %244 = phi i32 [ %239, %235 ], [ %242, %240 ]
  %245 = icmp ugt i32 %244, 1
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = getelementptr %struct.decNumber, ptr %174, i64 1
  %248 = shl nuw i32 %244, 1
  %249 = zext i32 %248 to i64
  %250 = add i64 %176, %249
  %251 = add i64 %250, 10
  %252 = add i64 %176, 14
  %253 = call i64 @llvm.umax.i64(i64 %251, i64 %252)
  %254 = add i64 %253, -13
  %255 = sub i64 %254, %176
  %256 = and i64 %255, -2
  %257 = add i64 %256, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %233, ptr align 2 %247, i64 %257, i1 false), !tbaa !42
  br label %258

258:                                              ; preds = %246, %243, %219, %223
  %259 = load i8, ptr %209, align 4, !tbaa !35
  store i8 %259, ptr %203, align 4, !tbaa !35
  %260 = load i32, ptr %210, align 4, !tbaa !40
  store i32 %260, ptr %204, align 4, !tbaa !40
  %261 = load i32, ptr %8, align 4, !tbaa !41
  store i32 %261, ptr %174, align 4, !tbaa !41
  %262 = load i16, ptr %211, align 2, !tbaa !42
  store i16 %262, ptr %205, align 2, !tbaa !42
  %263 = icmp sgt i32 %261, 3
  br i1 %263, label %264, label %290

264:                                              ; preds = %258
  %265 = getelementptr %struct.decNumber, ptr %174, i64 1
  %266 = icmp slt i32 %261, 50
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = zext nneg i32 %261 to i64
  %269 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !51
  %271 = zext i8 %270 to i32
  br label %275

272:                                              ; preds = %264
  %273 = add nuw nsw i32 %261, 2
  %274 = udiv i32 %273, 3
  br label %275

275:                                              ; preds = %272, %267
  %276 = phi i32 [ %271, %267 ], [ %274, %272 ]
  %277 = icmp ugt i32 %276, 1
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.decNumber, ptr %8, i64 1
  %280 = shl nuw i32 %276, 1
  %281 = zext i32 %280 to i64
  %282 = add i64 %9, %281
  %283 = add i64 %282, 10
  %284 = add nuw i64 %9, 14
  %285 = call i64 @llvm.umax.i64(i64 %283, i64 %284)
  %286 = add i64 %285, -13
  %287 = sub i64 %286, %9
  %288 = and i64 %287, -2
  %289 = add i64 %288, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %265, ptr nonnull align 4 %279, i64 %289, i1 false), !tbaa !42
  br label %290

290:                                              ; preds = %278, %275, %258, %216
  %291 = phi ptr [ null, %216 ], [ %220, %258 ], [ %220, %275 ], [ %220, %278 ]
  %292 = phi i1 [ false, %216 ], [ true, %258 ], [ true, %275 ], [ true, %278 ]
  %293 = phi ptr [ %1, %216 ], [ %221, %258 ], [ %221, %275 ], [ %221, %278 ]
  br i1 %292, label %294, label %385

294:                                              ; preds = %290, %202
  %295 = phi ptr [ %291, %290 ], [ null, %202 ]
  %296 = phi ptr [ %293, %290 ], [ %1, %202 ]
  br label %297

297:                                              ; preds = %329, %294
  %298 = phi i32 [ 1, %294 ], [ %330, %329 ]
  %299 = phi i8 [ 0, %294 ], [ %323, %329 ]
  %300 = phi i32 [ %150, %294 ], [ %318, %329 ]
  %301 = load i32, ptr %6, align 4, !tbaa !48
  %302 = and i32 %301, 8704
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %317, label %304

304:                                              ; preds = %297
  %305 = and i32 %301, 512
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %331

307:                                              ; preds = %304
  %308 = load i16, ptr %205, align 2, !tbaa !42
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %307
  %311 = load i32, ptr %174, align 4, !tbaa !41
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load i8, ptr %203, align 4, !tbaa !35
  %315 = and i8 %314, 112
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %331, label %317

317:                                              ; preds = %307, %310, %313, %297
  %318 = shl i32 %300, 1
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %174, ptr noundef nonnull %174, ptr noundef %296, ptr noundef nonnull %7, ptr noundef nonnull %6)
  br label %322

322:                                              ; preds = %320, %317
  %323 = phi i8 [ 1, %320 ], [ %299, %317 ]
  %324 = icmp eq i32 %298, 31
  br i1 %324, label %331, label %325

325:                                              ; preds = %322
  %326 = icmp eq i8 %323, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %325
  %328 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %174, ptr noundef nonnull %174, ptr noundef nonnull %174, ptr noundef nonnull %7, ptr noundef nonnull %6)
  br label %329

329:                                              ; preds = %325, %327
  %330 = add nuw nsw i32 %298, 1
  br label %297, !llvm.loop !116

331:                                              ; preds = %313, %322, %304
  %332 = load i32, ptr %6, align 4, !tbaa !48
  %333 = and i32 %332, 8704
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %375, label %335

335:                                              ; preds = %331
  %336 = load i8, ptr %203, align 4, !tbaa !35
  %337 = and i8 %336, 127
  %338 = or disjoint i8 %337, %77
  store i8 %338, ptr %203, align 4, !tbaa !35
  call fastcc void @decFinalize(ptr noundef nonnull %174, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %339 = icmp eq ptr %174, %0
  br i1 %339, label %385, label %340

340:                                              ; preds = %335
  %341 = load i8, ptr %203, align 4, !tbaa !35
  %342 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %341, ptr %342, align 4, !tbaa !35
  %343 = load i32, ptr %204, align 4, !tbaa !40
  %344 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %343, ptr %344, align 4, !tbaa !40
  %345 = load i32, ptr %174, align 4, !tbaa !41
  store i32 %345, ptr %0, align 4, !tbaa !41
  %346 = load i16, ptr %205, align 2, !tbaa !42
  %347 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %346, ptr %347, align 2, !tbaa !42
  %348 = icmp sgt i32 %345, 3
  br i1 %348, label %349, label %385

349:                                              ; preds = %340
  %350 = getelementptr %struct.decNumber, ptr %0, i64 1
  %351 = icmp slt i32 %345, 50
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = zext nneg i32 %345 to i64
  %354 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !51
  %356 = zext i8 %355 to i32
  br label %360

357:                                              ; preds = %349
  %358 = add nuw nsw i32 %345, 2
  %359 = udiv i32 %358, 3
  br label %360

360:                                              ; preds = %357, %352
  %361 = phi i32 [ %356, %352 ], [ %359, %357 ]
  %362 = icmp ugt i32 %361, 1
  br i1 %362, label %363, label %385

363:                                              ; preds = %360
  %364 = getelementptr %struct.decNumber, ptr %174, i64 1
  %365 = shl nuw i32 %361, 1
  %366 = zext i32 %365 to i64
  %367 = add i64 %176, %366
  %368 = add i64 %367, 10
  %369 = add i64 %176, 14
  %370 = call i64 @llvm.umax.i64(i64 %368, i64 %369)
  %371 = add i64 %370, -13
  %372 = sub i64 %371, %176
  %373 = and i64 %372, -2
  %374 = add i64 %373, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %350, ptr align 2 %364, i64 %374, i1 false), !tbaa !42
  br label %385

375:                                              ; preds = %331, %199, %191, %190
  %376 = phi ptr [ %295, %331 ], [ null, %190 ], [ null, %191 ], [ null, %199 ]
  %377 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 2
  %378 = load i8, ptr %377, align 4, !tbaa !35
  %379 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %378, ptr %379, align 4, !tbaa !35
  %380 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 1
  %381 = load i32, ptr %380, align 4, !tbaa !40
  %382 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %381, ptr %382, align 4, !tbaa !40
  %383 = getelementptr inbounds %struct.decNumber, ptr %174, i64 0, i32 3
  %384 = load i32, ptr %174, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %383, i32 noundef %384, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %385

385:                                              ; preds = %363, %360, %340, %335, %290, %90, %91, %85, %43, %62, %69, %67, %55, %57, %119, %122, %107, %108, %375, %170, %148, %134, %118, %25
  %386 = phi ptr [ null, %25 ], [ null, %107 ], [ null, %108 ], [ null, %134 ], [ null, %148 ], [ null, %170 ], [ %291, %290 ], [ %376, %375 ], [ null, %118 ], [ null, %119 ], [ null, %122 ], [ null, %57 ], [ null, %55 ], [ null, %67 ], [ null, %69 ], [ null, %62 ], [ null, %43 ], [ null, %85 ], [ null, %91 ], [ null, %90 ], [ %295, %335 ], [ %295, %340 ], [ %295, %360 ], [ %295, %363 ]
  %387 = phi ptr [ null, %25 ], [ null, %107 ], [ null, %108 ], [ null, %134 ], [ null, %148 ], [ null, %170 ], [ %175, %290 ], [ %175, %375 ], [ null, %118 ], [ null, %119 ], [ null, %122 ], [ null, %57 ], [ null, %55 ], [ null, %67 ], [ null, %69 ], [ null, %62 ], [ null, %43 ], [ null, %85 ], [ null, %91 ], [ null, %90 ], [ %175, %335 ], [ %175, %340 ], [ %175, %360 ], [ %175, %363 ]
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %385
  call void @free(ptr noundef %387) #19
  br label %390

390:                                              ; preds = %389, %385
  %391 = icmp eq ptr %386, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %390
  call void @free(ptr noundef %386) #19
  br label %393

393:                                              ; preds = %392, %390
  %394 = load i32, ptr %6, align 4, !tbaa !48
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %411, label %396

396:                                              ; preds = %393
  %397 = and i32 %394, 221
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %408, label %399

399:                                              ; preds = %396
  %400 = and i32 %394, 1073741824
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = and i32 %394, -1073741825
  br label %408

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %405, align 4, !tbaa !35
  %406 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %406, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %407 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %407, align 2, !tbaa !42
  store i8 32, ptr %405, align 4, !tbaa !35
  br label %408

408:                                              ; preds = %396, %402, %404
  %409 = phi i32 [ %403, %402 ], [ %394, %404 ], [ %394, %396 ]
  %410 = call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef %409) #19
  br label %411

411:                                              ; preds = %408, %393
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decShiftToMost(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, %1
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i16, ptr %0, align 2, !tbaa !42
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = trunc i32 %12 to i16
  %14 = mul i16 %9, %13
  store i16 %14, ptr %0, align 2, !tbaa !42
  br label %123

15:                                               ; preds = %5
  %16 = icmp slt i32 %1, 50
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !51
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
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !51
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %25
  %37 = add nuw nsw i32 %2, 2
  %38 = udiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %38, %36 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %29, i64 %41
  br i1 %30, label %43, label %48

43:                                               ; preds = %39
  %44 = sext i32 %2 to i64
  %45 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !51
  %47 = zext i8 %46 to i32
  br label %51

48:                                               ; preds = %39
  %49 = add nuw nsw i32 %2, 2
  %50 = udiv i32 %49, 3
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %47, %43 ], [ %50, %48 ]
  %53 = mul i32 %52, -3
  %54 = add i32 %2, 3
  %55 = add i32 %54, %53
  %56 = sub nsw i32 3, %55
  %57 = icmp eq i32 %55, 3
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = icmp ult ptr %29, %0
  br i1 %59, label %114, label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %65, %60 ], [ %42, %58 ]
  %62 = phi ptr [ %64, %60 ], [ %29, %58 ]
  %63 = load i16, ptr %62, align 2, !tbaa !42
  store i16 %63, ptr %61, align 2, !tbaa !42
  %64 = getelementptr inbounds i16, ptr %62, i64 -1
  %65 = getelementptr inbounds i16, ptr %61, i64 -1
  %66 = icmp ult ptr %64, %0
  br i1 %66, label %114, label %60, !llvm.loop !117

67:                                               ; preds = %51
  %68 = icmp slt i32 %6, 50
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = zext nneg i32 %6 to i64
  %71 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !51
  %73 = zext i8 %72 to i32
  br label %77

74:                                               ; preds = %67
  %75 = add nuw nsw i32 %6, 2
  %76 = udiv i32 %75, 3
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ %73, %69 ], [ %76, %74 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %0, i64 %79
  %81 = getelementptr inbounds i16, ptr %80, i64 -1
  %82 = icmp ult ptr %29, %0
  br i1 %82, label %114, label %83

83:                                               ; preds = %77
  %84 = sext i32 %56 to i64
  %85 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !48
  %87 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %84
  %88 = load i32, ptr %87, align 4, !tbaa !48
  %89 = sext i32 %55 to i64
  %90 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !48
  br label %92

92:                                               ; preds = %83, %107
  %93 = phi ptr [ %42, %83 ], [ %110, %107 ]
  %94 = phi i32 [ 0, %83 ], [ %108, %107 ]
  %95 = phi ptr [ %29, %83 ], [ %109, %107 ]
  %96 = load i16, ptr %95, align 2, !tbaa !42
  %97 = zext i16 %96 to i32
  %98 = lshr i32 %97, %56
  %99 = mul i32 %98, %86
  %100 = lshr i32 %99, 17
  %101 = mul i32 %100, %88
  %102 = sub i32 %97, %101
  %103 = icmp ugt ptr %93, %81
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = add i32 %100, %94
  %106 = trunc i32 %105 to i16
  store i16 %106, ptr %93, align 2, !tbaa !42
  br label %107

107:                                              ; preds = %104, %92
  %108 = mul i32 %91, %102
  %109 = getelementptr inbounds i16, ptr %95, i64 -1
  %110 = getelementptr inbounds i16, ptr %93, i64 -1
  %111 = icmp ult ptr %109, %0
  br i1 %111, label %112, label %92, !llvm.loop !118

112:                                              ; preds = %107
  %113 = trunc i32 %108 to i16
  br label %114

114:                                              ; preds = %60, %112, %77, %58
  %115 = phi i16 [ 0, %58 ], [ 0, %77 ], [ %113, %112 ], [ 0, %60 ]
  %116 = phi ptr [ %42, %58 ], [ %42, %77 ], [ %110, %112 ], [ %65, %60 ]
  %117 = icmp ult ptr %116, %0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %121, %118 ], [ %116, %114 ]
  %120 = phi i16 [ 0, %118 ], [ %115, %114 ]
  store i16 %120, ptr %119, align 2, !tbaa !42
  %121 = getelementptr inbounds i16, ptr %119, i64 -1
  %122 = icmp ult ptr %121, %0
  br i1 %122, label %123, label %118, !llvm.loop !119

123:                                              ; preds = %118, %114, %3, %8
  %124 = phi i32 [ %6, %8 ], [ %1, %3 ], [ %6, %114 ], [ %6, %118 ]
  ret i32 %124
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @decGetInt(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !34 {
  %2 = load i32, ptr %0, align 4, !tbaa !41
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = add nsw i32 %4, %2
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = icmp eq i16 %9, 0
  %11 = icmp eq i32 %2, 1
  %12 = select i1 %10, i1 %11, i1 false
  %13 = and i8 %7, 112
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %131, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %4, -1
  br i1 %17, label %56, label %18

18:                                               ; preds = %16
  %19 = sub nsw i32 0, %4
  %20 = icmp slt i32 %4, -2
  br i1 %20, label %21, label %30

21:                                               ; preds = %18, %26
  %22 = phi i32 [ %27, %26 ], [ %19, %18 ]
  %23 = phi ptr [ %28, %26 ], [ %8, %18 ]
  %24 = load i16, ptr %23, align 2, !tbaa !42
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = add nsw i32 %22, -3
  %28 = getelementptr inbounds i16, ptr %23, i64 1
  %29 = icmp sgt i32 %22, 5
  br i1 %29, label %21, label %30, !llvm.loop !120

30:                                               ; preds = %26, %18
  %31 = phi ptr [ %8, %18 ], [ %28, %26 ]
  %32 = phi i32 [ %19, %18 ], [ %27, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %31, align 2, !tbaa !42
  %36 = zext i16 %35 to i32
  %37 = lshr i32 %36, %32
  %38 = sext i32 %32 to i64
  %39 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = mul i32 %37, %40
  %42 = lshr i32 %41, 17
  %43 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %38
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = mul i32 %42, %44
  %46 = icmp eq i32 %45, %36
  %47 = sub nsw i32 3, %32
  %48 = select i1 %46, i32 %47, i32 undef
  %49 = zext i1 %46 to i64
  %50 = getelementptr inbounds i16, ptr %31, i64 %49
  br label %51

51:                                               ; preds = %21, %34, %30
  %52 = phi i32 [ 0, %30 ], [ %48, %34 ], [ undef, %21 ]
  %53 = phi ptr [ %31, %30 ], [ %50, %34 ], [ %23, %21 ]
  %54 = phi i1 [ true, %30 ], [ %46, %34 ], [ false, %21 ]
  %55 = phi i32 [ 0, %30 ], [ %42, %34 ], [ 0, %21 ]
  br i1 %54, label %56, label %131

56:                                               ; preds = %16, %51
  %57 = phi i32 [ %52, %51 ], [ %4, %16 ]
  %58 = phi ptr [ %53, %51 ], [ %8, %16 ]
  %59 = phi i32 [ %55, %51 ], [ 0, %16 ]
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i16, ptr %58, align 2, !tbaa !42
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds i16, ptr %58, i64 1
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i32 [ 3, %61 ], [ %57, %56 ]
  %67 = phi ptr [ %64, %61 ], [ %58, %56 ]
  %68 = phi i32 [ %63, %61 ], [ %59, %56 ]
  %69 = icmp slt i32 %5, 11
  br i1 %69, label %70, label %121

70:                                               ; preds = %65
  %71 = icmp slt i32 %66, %5
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = sext i32 %66 to i64
  %74 = sext i32 %5 to i64
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %73, %72 ], [ %85, %75 ]
  %77 = phi i32 [ %68, %72 ], [ %84, %75 ]
  %78 = phi ptr [ %67, %72 ], [ %86, %75 ]
  %79 = load i16, ptr %78, align 2, !tbaa !42
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %76
  %82 = load i32, ptr %81, align 4, !tbaa !48
  %83 = mul i32 %82, %80
  %84 = add i32 %83, %77
  %85 = add nsw i64 %76, 3
  %86 = getelementptr inbounds i16, ptr %78, i64 1
  %87 = icmp slt i64 %85, %74
  br i1 %87, label %75, label %88, !llvm.loop !121

88:                                               ; preds = %75
  %89 = trunc i64 %85 to i32
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi i32 [ %66, %70 ], [ %89, %88 ]
  %92 = phi ptr [ %67, %70 ], [ %86, %88 ]
  %93 = phi i32 [ %68, %70 ], [ %84, %88 ]
  %94 = icmp eq i32 %5, 10
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = add nsw i32 %91, -3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !48
  %100 = sdiv i32 %93, %99
  %101 = getelementptr inbounds i16, ptr %92, i64 -1
  %102 = load i16, ptr %101, align 2, !tbaa !42
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = icmp slt i8 %7, 0
  %107 = icmp sgt i32 %93, 1999999997
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = icmp sgt i8 %7, -1
  %111 = icmp sgt i32 %93, 999999999
  %112 = select i1 %110, i1 %111, i1 false
  br label %113

113:                                              ; preds = %109, %105, %95
  %114 = phi i1 [ true, %95 ], [ true, %105 ], [ %112, %109 ]
  %115 = select i1 %114, i32 11, i32 10
  %116 = select i1 %114, i32 %68, i32 %93
  br label %117

117:                                              ; preds = %113, %90
  %118 = phi i32 [ %5, %90 ], [ %115, %113 ]
  %119 = phi i32 [ %93, %90 ], [ %116, %113 ]
  %120 = icmp sgt i32 %118, 10
  br label %121

121:                                              ; preds = %117, %65
  %122 = phi i1 [ %120, %117 ], [ true, %65 ]
  %123 = phi i32 [ %119, %117 ], [ %68, %65 ]
  br i1 %122, label %124, label %127

124:                                              ; preds = %121
  %125 = and i32 %123, 1
  %126 = or disjoint i32 %125, -2147483646
  br label %131

127:                                              ; preds = %121
  %128 = sub nsw i32 0, %123
  %129 = icmp slt i8 %7, 0
  %130 = select i1 %129, i32 %128, i32 %123
  br label %131

131:                                              ; preds = %124, %1, %51, %127
  %132 = phi i32 [ %130, %127 ], [ -2147483648, %51 ], [ 0, %1 ], [ %126, %124 ]
  ret i32 %132
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberQuantize(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decQuantizeOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #3 !prof !34 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.decContext, align 4
  %9 = load i32, ptr %3, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !48
  %10 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = sub i32 %11, %9
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !35
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !35
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %16
  %21 = and i32 %20, 112
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %6
  %24 = and i32 %20, 48
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5)
  br label %238

28:                                               ; preds = %23
  %29 = xor i32 %19, %16
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 4, !tbaa !48
  %34 = or i32 %33, 128
  store i32 %34, ptr %5, align 4, !tbaa !48
  br label %238

35:                                               ; preds = %28
  %36 = icmp eq ptr %0, %1
  br i1 %36, label %238, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %15, ptr %38, align 4, !tbaa !35
  %39 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !40
  %41 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !40
  %42 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %42, ptr %0, align 4, !tbaa !41
  %43 = getelementptr inbounds i8, ptr %1, i64 10
  %44 = load i16, ptr %43, align 2, !tbaa !42
  %45 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %44, ptr %45, align 2, !tbaa !42
  %46 = load i32, ptr %1, align 4, !tbaa !41
  %47 = icmp sgt i32 %46, 3
  br i1 %47, label %48, label %238

48:                                               ; preds = %37
  %49 = getelementptr %struct.decNumber, ptr %0, i64 1
  %50 = icmp slt i32 %46, 50
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = zext nneg i32 %46 to i64
  %53 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !51
  %55 = zext i8 %54 to i32
  br label %59

56:                                               ; preds = %48
  %57 = add nuw nsw i32 %46, 2
  %58 = udiv i32 %57, 3
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ %55, %51 ], [ %58, %56 ]
  %61 = shl nuw i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr i8, ptr %1, i64 %62
  %64 = getelementptr i8, ptr %63, i64 10
  %65 = icmp ugt i32 %60, 1
  br i1 %65, label %66, label %238

66:                                               ; preds = %59
  %67 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi ptr [ %73, %68 ], [ %49, %66 ]
  %70 = phi ptr [ %72, %68 ], [ %67, %66 ]
  %71 = load i16, ptr %70, align 2, !tbaa !42
  store i16 %71, ptr %69, align 2, !tbaa !42
  %72 = getelementptr inbounds i16, ptr %70, i64 1
  %73 = getelementptr inbounds i16, ptr %69, i64 1
  %74 = icmp ult ptr %72, %64
  br i1 %74, label %68, label %238, !llvm.loop !77

75:                                               ; preds = %6
  %76 = icmp eq i8 %4, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !40
  br label %82

80:                                               ; preds = %75
  %81 = tail call fastcc i32 @decGetInt(ptr noundef %2)
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ]
  switch i32 %83, label %84 [
    i32 -2147483645, label %90
    i32 -2147483646, label %90
    i32 -2147483648, label %90
  ]

84:                                               ; preds = %82
  %85 = icmp slt i32 %83, %13
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !70
  %89 = icmp sgt i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %82, %82, %86, %84
  %91 = load i32, ptr %5, align 4, !tbaa !48
  %92 = or i32 %91, 128
  store i32 %92, ptr %5, align 4, !tbaa !48
  br label %238

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, ptr %1, i64 10
  %95 = load i16, ptr %94, align 2, !tbaa !42
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %93
  %98 = load i32, ptr %1, align 4, !tbaa !41
  %99 = icmp eq i32 %98, 1
  %100 = and i8 %15, 112
  %101 = icmp eq i8 %100, 0
  %102 = and i1 %101, %99
  br i1 %102, label %103, label %142

103:                                              ; preds = %97
  %104 = icmp eq ptr %0, %1
  br i1 %104, label %140, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %15, ptr %106, align 4, !tbaa !35
  %107 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !40
  %109 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %108, ptr %109, align 4, !tbaa !40
  store i32 %98, ptr %0, align 4, !tbaa !41
  %110 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %95, ptr %110, align 2, !tbaa !42
  %111 = load i32, ptr %1, align 4, !tbaa !41
  %112 = icmp sgt i32 %111, 3
  br i1 %112, label %113, label %140

113:                                              ; preds = %105
  %114 = getelementptr %struct.decNumber, ptr %0, i64 1
  %115 = icmp slt i32 %111, 50
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = zext nneg i32 %111 to i64
  %118 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !51
  %120 = zext i8 %119 to i32
  br label %124

121:                                              ; preds = %113
  %122 = add nuw nsw i32 %111, 2
  %123 = udiv i32 %122, 3
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %120, %116 ], [ %123, %121 ]
  %126 = shl nuw i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr i8, ptr %1, i64 %127
  %129 = getelementptr i8, ptr %128, i64 10
  %130 = icmp ugt i32 %125, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %138, %133 ], [ %114, %131 ]
  %135 = phi ptr [ %137, %133 ], [ %132, %131 ]
  %136 = load i16, ptr %135, align 2, !tbaa !42
  store i16 %136, ptr %134, align 2, !tbaa !42
  %137 = getelementptr inbounds i16, ptr %135, i64 1
  %138 = getelementptr inbounds i16, ptr %134, i64 1
  %139 = icmp ult ptr %137, %129
  br i1 %139, label %133, label %140, !llvm.loop !77

140:                                              ; preds = %133, %124, %103, %105
  %141 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %83, ptr %141, align 4, !tbaa !40
  br label %224

142:                                              ; preds = %97, %93
  %143 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !40
  %145 = sub nsw i32 %83, %144
  %146 = load i32, ptr %1, align 4, !tbaa !41
  %147 = sub nsw i32 %146, %145
  %148 = icmp sgt i32 %147, %9
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, ptr %5, align 4, !tbaa !48
  %151 = or i32 %150, 128
  store i32 %151, ptr %5, align 4, !tbaa !48
  br label %221

152:                                              ; preds = %142
  %153 = icmp sgt i32 %145, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !94
  store i32 %147, ptr %8, align 4, !tbaa !62
  %155 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %15, ptr %155, align 4, !tbaa !35
  %156 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %144, ptr %156, align 4, !tbaa !40
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %94, i32 noundef %146, ptr noundef nonnull %7, ptr noundef %5)
  %157 = load i32, ptr %7, align 4, !tbaa !48
  call fastcc void @decApplyRound(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %157, ptr noundef %5)
  store i32 0, ptr %7, align 4, !tbaa !48
  %158 = load i32, ptr %156, align 4, !tbaa !40
  %159 = icmp sgt i32 %158, %83
  br i1 %159, label %160, label %172

160:                                              ; preds = %154
  %161 = load i32, ptr %0, align 4, !tbaa !41
  %162 = icmp eq i32 %161, %9
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, ptr %5, align 4, !tbaa !48
  %165 = and i32 %164, -2209
  %166 = or disjoint i32 %165, 128
  store i32 %166, ptr %5, align 4, !tbaa !48
  br label %172

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %169 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %168, i32 noundef %161, i32 noundef 1)
  store i32 %169, ptr %0, align 4, !tbaa !41
  %170 = load i32, ptr %156, align 4, !tbaa !40
  %171 = add nsw i32 %170, -1
  store i32 %171, ptr %156, align 4, !tbaa !40
  br label %172

172:                                              ; preds = %154, %167, %163
  %173 = phi i1 [ false, %163 ], [ true, %167 ], [ true, %154 ]
  %174 = phi i32 [ 2, %163 ], [ 0, %167 ], [ 0, %154 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #19
  br i1 %173, label %220, label %221

175:                                              ; preds = %152
  %176 = icmp eq ptr %0, %1
  br i1 %176, label %210, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %15, ptr %178, align 4, !tbaa !35
  %179 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %144, ptr %179, align 4, !tbaa !40
  store i32 %146, ptr %0, align 4, !tbaa !41
  %180 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %95, ptr %180, align 2, !tbaa !42
  %181 = load i32, ptr %1, align 4, !tbaa !41
  %182 = icmp sgt i32 %181, 3
  br i1 %182, label %183, label %210

183:                                              ; preds = %177
  %184 = getelementptr %struct.decNumber, ptr %0, i64 1
  %185 = icmp slt i32 %181, 50
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = zext nneg i32 %181 to i64
  %188 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !51
  %190 = zext i8 %189 to i32
  br label %194

191:                                              ; preds = %183
  %192 = add nuw nsw i32 %181, 2
  %193 = udiv i32 %192, 3
  br label %194

194:                                              ; preds = %191, %186
  %195 = phi i32 [ %190, %186 ], [ %193, %191 ]
  %196 = shl nuw i32 %195, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr i8, ptr %1, i64 %197
  %199 = getelementptr i8, ptr %198, i64 10
  %200 = icmp ugt i32 %195, 1
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %203

203:                                              ; preds = %201, %203
  %204 = phi ptr [ %208, %203 ], [ %184, %201 ]
  %205 = phi ptr [ %207, %203 ], [ %202, %201 ]
  %206 = load i16, ptr %205, align 2, !tbaa !42
  store i16 %206, ptr %204, align 2, !tbaa !42
  %207 = getelementptr inbounds i16, ptr %205, i64 1
  %208 = getelementptr inbounds i16, ptr %204, i64 1
  %209 = icmp ult ptr %207, %199
  br i1 %209, label %203, label %210, !llvm.loop !77

210:                                              ; preds = %203, %194, %175, %177
  %211 = icmp slt i32 %145, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %214 = load i32, ptr %0, align 4, !tbaa !41
  %215 = sub nsw i32 0, %145
  %216 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %213, i32 noundef %214, i32 noundef %215)
  store i32 %216, ptr %0, align 4, !tbaa !41
  %217 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !40
  %219 = add nsw i32 %218, %145
  store i32 %219, ptr %217, align 4, !tbaa !40
  br label %220

220:                                              ; preds = %210, %212, %172
  br label %221

221:                                              ; preds = %172, %220, %149
  %222 = phi i32 [ 2, %149 ], [ 0, %220 ], [ %174, %172 ]
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %221, %140
  %225 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !40
  %227 = load i32, ptr %87, align 4, !tbaa !70
  %228 = load i32, ptr %0, align 4, !tbaa !41
  %229 = add i32 %227, 1
  %230 = sub i32 %229, %228
  %231 = icmp sgt i32 %226, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %224
  %233 = load i32, ptr %5, align 4, !tbaa !48
  %234 = or i32 %233, 128
  store i32 %234, ptr %5, align 4, !tbaa !48
  br label %238

235:                                              ; preds = %224
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  %236 = load i32, ptr %5, align 4, !tbaa !48
  %237 = and i32 %236, -8193
  store i32 %237, ptr %5, align 4, !tbaa !48
  br label %238

238:                                              ; preds = %68, %59, %37, %35, %221, %26, %32, %235, %232, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberNormalize(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = tail call ptr @decNumberReduce(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberReduce(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %4)
  br label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %8, ptr %14, align 4, !tbaa !35
  %15 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !40
  %18 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %1, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %18, i32 noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %4)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %20 = call fastcc ptr @decTrim(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %6)
  br label %21

21:                                               ; preds = %13, %11
  %22 = load i32, ptr %4, align 4, !tbaa !48
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = and i32 %22, 221
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = and i32 %22, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = and i32 %22, -1073741825
  br label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %33, align 4, !tbaa !35
  %34 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %34, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %35 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %35, align 2, !tbaa !42
  store i8 32, ptr %33, align 4, !tbaa !35
  br label %36

36:                                               ; preds = %24, %30, %32
  %37 = phi i32 [ %31, %30 ], [ %22, %32 ], [ %22, %24 ]
  %38 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %37) #19
  br label %39

39:                                               ; preds = %36, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @decTrim(ptr noundef returned %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #5 !prof !34 {
  store i32 0, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !35
  %8 = and i8 %7, 112
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %106

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !42
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %10
  %16 = icmp eq i16 %12, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = load i32, ptr %0, align 4, !tbaa !41
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !40
  br label %106

22:                                               ; preds = %17, %15
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = load i32, ptr %0, align 4, !tbaa !41
  %26 = add i32 %25, -1
  %27 = icmp sgt i32 %25, 1
  br i1 %27, label %28, label %69

28:                                               ; preds = %22
  %29 = icmp eq i8 %2, 0
  br label %30

30:                                               ; preds = %28, %66
  %31 = phi i32 [ 0, %28 ], [ %67, %66 ]
  %32 = phi ptr [ %11, %28 ], [ %64, %66 ]
  %33 = phi i32 [ 1, %28 ], [ %63, %66 ]
  %34 = phi i32 [ %24, %28 ], [ %62, %66 ]
  %35 = load i16, ptr %32, align 2, !tbaa !42
  %36 = zext i16 %35 to i32
  %37 = lshr i32 %36, %33
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = mul i32 %37, %40
  %42 = lshr i32 %41, 17
  %43 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %38
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = mul i32 %42, %44
  %46 = icmp eq i32 %45, %36
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = icmp slt i32 %34, 1
  %49 = select i1 %29, i1 %48, i1 false
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = icmp eq i32 %34, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %34, 1
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %53, %52 ], [ %34, %47 ]
  %56 = add nuw nsw i32 %33, 1
  %57 = icmp ugt i32 %33, 2
  %58 = select i1 %57, i32 1, i32 %56
  %59 = zext i1 %57 to i64
  %60 = getelementptr inbounds i16, ptr %32, i64 %59
  br label %61

61:                                               ; preds = %50, %30, %54
  %62 = phi i32 [ %55, %54 ], [ %34, %30 ], [ 0, %50 ]
  %63 = phi i32 [ %58, %54 ], [ %33, %30 ], [ %33, %50 ]
  %64 = phi ptr [ %60, %54 ], [ %32, %30 ], [ %32, %50 ]
  %65 = phi i1 [ true, %54 ], [ false, %30 ], [ false, %50 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = add nuw nsw i32 %31, 1
  %68 = icmp eq i32 %67, %26
  br i1 %68, label %69, label %30, !llvm.loop !122

69:                                               ; preds = %66, %61, %22
  %70 = phi i32 [ 0, %22 ], [ %26, %66 ], [ %31, %61 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %106, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %74 = load i8, ptr %73, align 4, !tbaa !64
  %75 = icmp eq i8 %74, 0
  %76 = icmp ne i8 %3, 0
  %77 = or i1 %76, %75
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !70
  %81 = load i32, ptr %1, align 4, !tbaa !62
  %82 = add i32 %80, 1
  %83 = add i32 %24, %81
  %84 = sub i32 %82, %83
  %85 = icmp sgt i32 %84, 0
  %86 = tail call i32 @llvm.smin.i32(i32 %70, i32 %84)
  %87 = select i1 %85, i32 %86, i32 %70
  br i1 %85, label %88, label %106

88:                                               ; preds = %78, %72
  %89 = phi i32 [ %70, %72 ], [ %87, %78 ]
  %90 = icmp slt i32 %25, 50
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = sext i32 %25 to i64
  %93 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !51
  %95 = zext i8 %94 to i32
  br label %99

96:                                               ; preds = %88
  %97 = add nuw nsw i32 %25, 2
  %98 = udiv i32 %97, 3
  br label %99

99:                                               ; preds = %96, %91
  %100 = phi i32 [ %95, %91 ], [ %98, %96 ]
  %101 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %11, i32 noundef %100, i32 noundef %89)
  %102 = load i32, ptr %23, align 4, !tbaa !40
  %103 = add nsw i32 %102, %89
  store i32 %103, ptr %23, align 4, !tbaa !40
  %104 = load i32, ptr %0, align 4, !tbaa !41
  %105 = sub nsw i32 %104, %89
  store i32 %105, ptr %0, align 4, !tbaa !41
  store i32 %89, ptr %4, align 4, !tbaa !48
  br label %106

106:                                              ; preds = %69, %5, %10, %78, %99, %20
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberRescale(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberRemainder(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 64, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberRemainderNear(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberRotate(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = ptrtoint ptr %0 to i64
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %4
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6)
  br label %283

19:                                               ; preds = %11
  %20 = and i32 %14, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %283

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @decGetInt(ptr noundef %2)
  switch i32 %28, label %29 [
    i32 -2147483645, label %33
    i32 -2147483646, label %33
    i32 -2147483648, label %33
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %31 = load i32, ptr %3, align 4, !tbaa !62
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %27, %27, %29
  store i32 128, ptr %6, align 4, !tbaa !48
  br label %283

34:                                               ; preds = %29
  %35 = icmp eq ptr %0, %1
  br i1 %35, label %74, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %8, ptr %37, align 4, !tbaa !35
  %38 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !40
  %41 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %41, ptr %0, align 4, !tbaa !41
  %42 = getelementptr inbounds i8, ptr %1, i64 10
  %43 = load i16, ptr %42, align 2, !tbaa !42
  %44 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %43, ptr %44, align 2, !tbaa !42
  %45 = load i32, ptr %1, align 4, !tbaa !41
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %74

47:                                               ; preds = %36
  %48 = getelementptr %struct.decNumber, ptr %0, i64 1
  %49 = icmp slt i32 %45, 50
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = zext nneg i32 %45 to i64
  %52 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !51
  %54 = zext i8 %53 to i32
  br label %58

55:                                               ; preds = %47
  %56 = add nuw nsw i32 %45, 2
  %57 = udiv i32 %56, 3
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %57, %55 ]
  %60 = shl nuw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr i8, ptr %1, i64 %61
  %63 = getelementptr i8, ptr %62, i64 10
  %64 = icmp ugt i32 %59, 1
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %72, %67 ], [ %48, %65 ]
  %69 = phi ptr [ %71, %67 ], [ %66, %65 ]
  %70 = load i16, ptr %69, align 2, !tbaa !42
  store i16 %70, ptr %68, align 2, !tbaa !42
  %71 = getelementptr inbounds i16, ptr %69, i64 1
  %72 = getelementptr inbounds i16, ptr %68, i64 1
  %73 = icmp ult ptr %71, %63
  br i1 %73, label %67, label %74, !llvm.loop !77

74:                                               ; preds = %67, %58, %34, %36
  %75 = icmp slt i32 %28, 0
  %76 = select i1 %75, i32 %31, i32 0
  %77 = add nsw i32 %76, %28
  %78 = icmp eq i32 %77, 0
  %79 = icmp eq i32 %77, %31
  %80 = or i1 %78, %79
  br i1 %80, label %283, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %83 = load i8, ptr %82, align 4, !tbaa !35
  %84 = and i8 %83, 64
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %283

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %0, i64 10
  %88 = load i32, ptr %0, align 4, !tbaa !41
  %89 = icmp slt i32 %88, 50
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !51
  %94 = zext i8 %93 to i32
  br label %98

95:                                               ; preds = %86
  %96 = add nuw nsw i32 %88, 2
  %97 = udiv i32 %96, 3
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i32 [ %94, %90 ], [ %97, %95 ]
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr i16, ptr %87, i64 %100
  %102 = icmp slt i32 %31, 50
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = sext i32 %31 to i64
  %105 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !51
  %107 = zext i8 %106 to i32
  br label %111

108:                                              ; preds = %98
  %109 = add nuw nsw i32 %31, 2
  %110 = udiv i32 %109, 3
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi i32 [ %107, %103 ], [ %110, %108 ]
  %113 = shl nuw i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr i8, ptr %0, i64 %114
  %116 = getelementptr i8, ptr %0, i64 %114
  %117 = getelementptr i8, ptr %116, i64 8
  %118 = icmp ugt ptr %101, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %111
  %120 = shl nuw nsw i64 %100, 1
  %121 = add i64 %120, %5
  %122 = add i64 %121, 12
  %123 = add i64 %5, %114
  %124 = add i64 %123, 9
  %125 = tail call i64 @llvm.umax.i64(i64 %122, i64 %124)
  %126 = add i64 %125, -11
  %127 = add i64 %120, %5
  %128 = sub i64 %126, %127
  %129 = and i64 %128, -2
  %130 = add i64 %129, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %101, i8 0, i64 %130, i1 false), !tbaa !42
  br label %131

131:                                              ; preds = %119, %111
  store i32 %31, ptr %0, align 4, !tbaa !41
  br i1 %102, label %132, label %137

132:                                              ; preds = %131
  %133 = sext i32 %31 to i64
  %134 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !51
  %136 = zext i8 %135 to i32
  br label %140

137:                                              ; preds = %131
  %138 = add nuw nsw i32 %31, 2
  %139 = udiv i32 %138, 3
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i32 [ %136, %132 ], [ %139, %137 ]
  %142 = mul i32 %141, -3
  %143 = add i32 %31, 3
  %144 = add i32 %143, %142
  %145 = sub nsw i32 %31, %77
  %146 = sdiv i32 %145, 3
  %147 = srem i32 %145, 3
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %191, label %149

149:                                              ; preds = %140
  %150 = load i16, ptr %87, align 2, !tbaa !42
  %151 = zext i16 %150 to i32
  %152 = zext i32 %147 to i64
  %153 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !48
  %155 = urem i32 %151, %154
  br i1 %102, label %156, label %161

156:                                              ; preds = %149
  %157 = sext i32 %31 to i64
  %158 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !51
  %160 = zext i8 %159 to i32
  br label %164

161:                                              ; preds = %149
  %162 = add nuw nsw i32 %31, 2
  %163 = udiv i32 %162, 3
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %160, %156 ], [ %163, %161 ]
  %166 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %87, i32 noundef %165, i32 noundef %147)
  %167 = icmp ugt i32 %147, %144
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = sub i32 %147, %144
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !48
  %173 = urem i32 %155, %172
  %174 = udiv i32 %155, %172
  %175 = trunc i32 %174 to i16
  store i16 %175, ptr %117, align 2, !tbaa !42
  %176 = getelementptr i8, ptr %115, i64 6
  %177 = sub i32 3, %169
  br label %180

178:                                              ; preds = %164
  %179 = sub i32 %144, %147
  br label %180

180:                                              ; preds = %178, %168
  %181 = phi i32 [ %177, %168 ], [ %179, %178 ]
  %182 = phi i32 [ %173, %168 ], [ %155, %178 ]
  %183 = phi ptr [ %176, %168 ], [ %117, %178 ]
  %184 = load i16, ptr %183, align 2, !tbaa !42
  %185 = zext i32 %181 to i64
  %186 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !48
  %188 = mul i32 %187, %182
  %189 = trunc i32 %188 to i16
  %190 = add i16 %184, %189
  store i16 %190, ptr %183, align 2, !tbaa !42
  br label %191

191:                                              ; preds = %180, %140
  %192 = add i32 %145, 2
  %193 = icmp ult i32 %192, 5
  br i1 %193, label %249, label %194

194:                                              ; preds = %191
  %195 = icmp eq i32 %144, 3
  br i1 %195, label %212, label %196

196:                                              ; preds = %194
  %197 = sub i32 3, %144
  %198 = load i16, ptr %87, align 2, !tbaa !42
  %199 = zext i16 %198 to i32
  %200 = zext i32 %197 to i64
  %201 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !48
  %203 = urem i32 %199, %202
  %204 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %87, i32 noundef %146, i32 noundef %197)
  %205 = load i16, ptr %117, align 2, !tbaa !42
  %206 = zext i32 %144 to i64
  %207 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !48
  %209 = mul i32 %208, %203
  %210 = trunc i32 %209 to i16
  %211 = add i16 %205, %210
  store i16 %211, ptr %117, align 2, !tbaa !42
  br label %212

212:                                              ; preds = %196, %194
  %213 = zext i32 %146 to i64
  %214 = shl nuw nsw i64 %213, 1
  %215 = getelementptr i8, ptr %0, i64 %214
  %216 = getelementptr i8, ptr %215, i64 10
  %217 = icmp ult ptr %216, %117
  br i1 %217, label %223, label %218

218:                                              ; preds = %223, %212
  %219 = icmp ugt i32 %146, 1
  br i1 %219, label %220, label %231

220:                                              ; preds = %218
  %221 = getelementptr i8, ptr %0, i64 %214
  %222 = getelementptr i8, ptr %221, i64 8
  br label %233

223:                                              ; preds = %212, %223
  %224 = phi ptr [ %228, %223 ], [ %216, %212 ]
  %225 = phi ptr [ %229, %223 ], [ %117, %212 ]
  %226 = load i16, ptr %224, align 2, !tbaa !42
  %227 = load i16, ptr %225, align 2, !tbaa !42
  store i16 %227, ptr %224, align 2, !tbaa !42
  store i16 %226, ptr %225, align 2, !tbaa !42
  %228 = getelementptr inbounds i16, ptr %224, i64 1
  %229 = getelementptr inbounds i16, ptr %225, i64 -1
  %230 = icmp ult ptr %228, %229
  br i1 %230, label %223, label %218, !llvm.loop !123

231:                                              ; preds = %233, %218
  %232 = icmp ugt i32 %112, 1
  br i1 %232, label %241, label %249

233:                                              ; preds = %220, %233
  %234 = phi ptr [ %239, %233 ], [ %222, %220 ]
  %235 = phi ptr [ %238, %233 ], [ %87, %220 ]
  %236 = load i16, ptr %235, align 2, !tbaa !42
  %237 = load i16, ptr %234, align 2, !tbaa !42
  store i16 %237, ptr %235, align 2, !tbaa !42
  store i16 %236, ptr %234, align 2, !tbaa !42
  %238 = getelementptr inbounds i16, ptr %235, i64 1
  %239 = getelementptr inbounds i16, ptr %234, i64 -1
  %240 = icmp ult ptr %238, %239
  br i1 %240, label %233, label %231, !llvm.loop !123

241:                                              ; preds = %231, %241
  %242 = phi ptr [ %246, %241 ], [ %87, %231 ]
  %243 = phi ptr [ %247, %241 ], [ %117, %231 ]
  %244 = load i16, ptr %242, align 2, !tbaa !42
  %245 = load i16, ptr %243, align 2, !tbaa !42
  store i16 %245, ptr %242, align 2, !tbaa !42
  store i16 %244, ptr %243, align 2, !tbaa !42
  %246 = getelementptr inbounds i16, ptr %242, i64 1
  %247 = getelementptr inbounds i16, ptr %243, i64 -1
  %248 = icmp ult ptr %246, %247
  br i1 %248, label %241, label %249, !llvm.loop !123

249:                                              ; preds = %241, %231, %191
  %250 = ptrtoint ptr %117 to i64
  %251 = ptrtoint ptr %87 to i64
  %252 = sub i64 %250, %251
  %253 = lshr exact i64 %252, 1
  %254 = trunc i64 %253 to i32
  %255 = shl i64 %252, 31
  %256 = ashr exact i64 %255, 31
  %257 = and i64 %256, -2
  %258 = mul nsw i32 %254, 3
  %259 = add nsw i32 %258, 1
  %260 = icmp slt i64 %257, 0
  br i1 %260, label %281, label %261

261:                                              ; preds = %249
  %262 = add nuw nsw i64 %257, 10
  br label %263

263:                                              ; preds = %261, %271
  %264 = phi i32 [ %272, %271 ], [ %259, %261 ]
  %265 = phi i64 [ %273, %271 ], [ %262, %261 ]
  %266 = getelementptr inbounds i8, ptr %0, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !42
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = icmp eq i32 %264, 1
  br i1 %270, label %281, label %271

271:                                              ; preds = %269
  %272 = add nsw i32 %264, -3
  %273 = add nsw i64 %265, -2
  %274 = icmp slt i64 %265, 12
  br i1 %274, label %281, label %263, !llvm.loop !47

275:                                              ; preds = %263
  %276 = icmp ult i16 %267, 10
  br i1 %276, label %281, label %277

277:                                              ; preds = %275
  %278 = icmp ult i16 %267, 100
  %279 = select i1 %278, i32 1, i32 2
  %280 = add nsw i32 %279, %264
  br label %281

281:                                              ; preds = %269, %271, %249, %275, %277
  %282 = phi i32 [ %264, %275 ], [ %280, %277 ], [ %259, %249 ], [ %272, %271 ], [ 1, %269 ]
  store i32 %282, ptr %0, align 4, !tbaa !41
  br label %283

283:                                              ; preds = %26, %74, %81, %281, %33, %17
  %284 = load i32, ptr %6, align 4, !tbaa !48
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %301, label %286

286:                                              ; preds = %283
  %287 = and i32 %284, 221
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %286
  %290 = and i32 %284, 1073741824
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = and i32 %284, -1073741825
  br label %298

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %295, align 4, !tbaa !35
  %296 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %296, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %297 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %297, align 2, !tbaa !42
  store i8 32, ptr %295, align 4, !tbaa !35
  br label %298

298:                                              ; preds = %286, %292, %294
  %299 = phi i32 [ %293, %292 ], [ %284, %294 ], [ %284, %286 ]
  %300 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %299) #19
  br label %301

301:                                              ; preds = %298, %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decShiftToLeast(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %120, label %5

5:                                                ; preds = %3
  %6 = mul nsw i32 %1, 3
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i16 0, ptr %0, align 2, !tbaa !42
  br label %120

9:                                                ; preds = %5
  %10 = icmp slt i32 %2, 50
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !51
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %9
  %17 = add nuw nsw i32 %2, 2
  %18 = udiv i32 %17, 3
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %18, %16 ]
  %21 = mul nuw i32 %20, 3
  %22 = add i32 %21, -3
  %23 = sub nsw i32 %2, %22
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  br i1 %10, label %26, label %31

26:                                               ; preds = %25
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !51
  %30 = zext i8 %29 to i32
  br label %34

31:                                               ; preds = %25
  %32 = add nuw nsw i32 %2, 2
  %33 = udiv i32 %32, 3
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %33, %31 ]
  %36 = sext i32 %1 to i64
  %37 = getelementptr inbounds i16, ptr %0, i64 %36
  %38 = icmp slt i32 %35, %1
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = zext nneg i32 %35 to i64
  %41 = getelementptr i16, ptr %0, i64 %40
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %46, %42 ], [ %0, %39 ]
  %44 = phi ptr [ %47, %42 ], [ %41, %39 ]
  %45 = load i16, ptr %44, align 2, !tbaa !42
  store i16 %45, ptr %43, align 2, !tbaa !42
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = icmp ult ptr %47, %37
  br i1 %48, label %42, label %49, !llvm.loop !124

49:                                               ; preds = %42, %34
  %50 = phi ptr [ %0, %34 ], [ %46, %42 ]
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %0 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 1
  %55 = trunc i64 %54 to i32
  br label %120

56:                                               ; preds = %19
  %57 = icmp slt i32 %22, 50
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = sext i32 %22 to i64
  %60 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !51
  %62 = zext i8 %61 to i32
  br label %66

63:                                               ; preds = %56
  %64 = add nsw i32 %21, -1
  %65 = sdiv i32 %64, 3
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %62, %58 ], [ %65, %63 ]
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %0, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !42
  %71 = zext i16 %70 to i32
  %72 = lshr i32 %71, %23
  %73 = sext i32 %23 to i64
  %74 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !48
  %76 = mul i32 %72, %75
  %77 = lshr i32 %76, 17
  %78 = sub nsw i32 3, %23
  %79 = trunc i32 %77 to i16
  store i16 %79, ptr %0, align 2, !tbaa !42
  %80 = add i32 %78, %2
  %81 = sub i32 %6, %80
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %112, label %83

83:                                               ; preds = %66
  %84 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %73
  %85 = load i32, ptr %84, align 4, !tbaa !48
  %86 = sext i32 %78 to i64
  %87 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !48
  br label %89

89:                                               ; preds = %83, %107
  %90 = phi i32 [ %81, %83 ], [ %110, %107 ]
  %91 = phi i32 [ %77, %83 ], [ %99, %107 ]
  %92 = phi ptr [ %0, %83 ], [ %108, %107 ]
  %93 = phi ptr [ %69, %83 ], [ %94, %107 ]
  %94 = getelementptr inbounds i16, ptr %93, i64 1
  %95 = load i16, ptr %94, align 2, !tbaa !42
  %96 = zext i16 %95 to i32
  %97 = lshr i32 %96, %23
  %98 = mul i32 %97, %75
  %99 = lshr i32 %98, 17
  %100 = mul i32 %99, %85
  %101 = sub i32 %96, %100
  %102 = mul i32 %101, %88
  %103 = add i32 %102, %91
  %104 = trunc i32 %103 to i16
  store i16 %104, ptr %92, align 2, !tbaa !42
  %105 = sub nsw i32 %90, %23
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %112, label %107

107:                                              ; preds = %89
  %108 = getelementptr inbounds i16, ptr %92, i64 1
  %109 = trunc i32 %99 to i16
  store i16 %109, ptr %108, align 2, !tbaa !42
  %110 = sub nsw i32 %105, %78
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %89, !llvm.loop !125

112:                                              ; preds = %107, %89, %66
  %113 = phi ptr [ %0, %66 ], [ %108, %107 ], [ %92, %89 ]
  %114 = ptrtoint ptr %113 to i64
  %115 = ptrtoint ptr %0 to i64
  %116 = sub i64 %114, %115
  %117 = lshr exact i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = add i32 %118, 1
  br label %120

120:                                              ; preds = %3, %112, %49, %8
  %121 = phi i32 [ 1, %8 ], [ %55, %49 ], [ %119, %112 ], [ %1, %3 ]
  ret i32 %121
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberSameQuantum(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !35
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
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
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !40
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i16
  br label %33

33:                                               ; preds = %26, %22, %13, %19
  %34 = phi i16 [ 0, %19 ], [ 1, %13 ], [ %25, %22 ], [ %32, %26 ]
  %35 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %35, align 4, !tbaa !35
  %36 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %36, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %37 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %34, ptr %37, align 2, !tbaa !42
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberScaleB(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %4
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  br label %87

19:                                               ; preds = %11
  %20 = and i32 %14, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19
  store i32 128, ptr %5, align 4, !tbaa !48
  br label %87

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @decGetInt(ptr noundef %2)
  switch i32 %28, label %29 [
    i32 -2147483645, label %37
    i32 -2147483646, label %37
    i32 -2147483648, label %37
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %31 = load i32, ptr %3, align 4, !tbaa !62
  %32 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !70
  %34 = add nsw i32 %33, %31
  %35 = shl nsw i32 %34, 1
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %27, %27, %29
  store i32 128, ptr %5, align 4, !tbaa !48
  br label %87

38:                                               ; preds = %29
  %39 = icmp eq ptr %0, %1
  br i1 %39, label %78, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %8, ptr %41, align 4, !tbaa !35
  %42 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !40
  %44 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !40
  %45 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %45, ptr %0, align 4, !tbaa !41
  %46 = getelementptr inbounds i8, ptr %1, i64 10
  %47 = load i16, ptr %46, align 2, !tbaa !42
  %48 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %47, ptr %48, align 2, !tbaa !42
  %49 = load i32, ptr %1, align 4, !tbaa !41
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = getelementptr %struct.decNumber, ptr %0, i64 1
  %53 = icmp slt i32 %49, 50
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = zext nneg i32 %49 to i64
  %56 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !51
  %58 = zext i8 %57 to i32
  br label %62

59:                                               ; preds = %51
  %60 = add nuw nsw i32 %49, 2
  %61 = udiv i32 %60, 3
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %58, %54 ], [ %61, %59 ]
  %64 = shl nuw i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, ptr %1, i64 %65
  %67 = getelementptr i8, ptr %66, i64 10
  %68 = icmp ugt i32 %63, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi ptr [ %76, %71 ], [ %52, %69 ]
  %73 = phi ptr [ %75, %71 ], [ %70, %69 ]
  %74 = load i16, ptr %73, align 2, !tbaa !42
  store i16 %74, ptr %72, align 2, !tbaa !42
  %75 = getelementptr inbounds i16, ptr %73, i64 1
  %76 = getelementptr inbounds i16, ptr %72, i64 1
  %77 = icmp ult ptr %75, %67
  br i1 %77, label %71, label %78, !llvm.loop !77

78:                                               ; preds = %71, %62, %38, %40
  %79 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %80 = load i8, ptr %79, align 4, !tbaa !35
  %81 = and i8 %80, 64
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !40
  %86 = add nsw i32 %85, %28
  store i32 %86, ptr %84, align 4, !tbaa !40
  store i32 0, ptr %6, align 4, !tbaa !48
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5)
  br label %87

87:                                               ; preds = %26, %78, %83, %37, %17
  %88 = load i32, ptr %5, align 4, !tbaa !48
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %87
  %91 = and i32 %88, 221
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = and i32 %88, 1073741824
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = and i32 %88, -1073741825
  br label %102

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %99, align 4, !tbaa !35
  %100 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %100, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %101 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %101, align 2, !tbaa !42
  store i8 32, ptr %99, align 4, !tbaa !35
  br label %102

102:                                              ; preds = %90, %96, %98
  %103 = phi i32 [ %97, %96 ], [ %88, %98 ], [ %88, %90 ]
  %104 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %103) #19
  br label %105

105:                                              ; preds = %102, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberShift(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !35
  %8 = and i8 %7, 48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !35
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10, %4
  %17 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  br label %124

18:                                               ; preds = %10
  %19 = and i32 %13, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %18
  store i32 128, ptr %5, align 4, !tbaa !48
  br label %124

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @decGetInt(ptr noundef %2)
  switch i32 %27, label %28 [
    i32 -2147483645, label %32
    i32 -2147483646, label %32
    i32 -2147483648, label %32
  ]

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %30 = load i32, ptr %3, align 4, !tbaa !62
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %26, %26, %28
  store i32 128, ptr %5, align 4, !tbaa !48
  br label %124

33:                                               ; preds = %28
  %34 = icmp eq ptr %0, %1
  br i1 %34, label %73, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %7, ptr %36, align 4, !tbaa !35
  %37 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !40
  %40 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %40, ptr %0, align 4, !tbaa !41
  %41 = getelementptr inbounds i8, ptr %1, i64 10
  %42 = load i16, ptr %41, align 2, !tbaa !42
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %42, ptr %43, align 2, !tbaa !42
  %44 = load i32, ptr %1, align 4, !tbaa !41
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %73

46:                                               ; preds = %35
  %47 = getelementptr %struct.decNumber, ptr %0, i64 1
  %48 = icmp slt i32 %44, 50
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !51
  %53 = zext i8 %52 to i32
  br label %57

54:                                               ; preds = %46
  %55 = add nuw nsw i32 %44, 2
  %56 = udiv i32 %55, 3
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %53, %49 ], [ %56, %54 ]
  %59 = shl nuw i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, ptr %1, i64 %60
  %62 = getelementptr i8, ptr %61, i64 10
  %63 = icmp ugt i32 %58, 1
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %71, %66 ], [ %47, %64 ]
  %68 = phi ptr [ %70, %66 ], [ %65, %64 ]
  %69 = load i16, ptr %68, align 2, !tbaa !42
  store i16 %69, ptr %67, align 2, !tbaa !42
  %70 = getelementptr inbounds i16, ptr %68, i64 1
  %71 = getelementptr inbounds i16, ptr %67, i64 1
  %72 = icmp ult ptr %70, %62
  br i1 %72, label %66, label %73, !llvm.loop !77

73:                                               ; preds = %66, %57, %33, %35
  %74 = icmp eq i32 %27, 0
  br i1 %74, label %124, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %77 = load i8, ptr %76, align 4, !tbaa !35
  %78 = and i8 %77, 64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %124

80:                                               ; preds = %75
  %81 = icmp sgt i32 %27, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %80
  %83 = icmp eq i32 %27, %30
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %85, align 2, !tbaa !42
  store i32 1, ptr %0, align 4, !tbaa !41
  br label %124

86:                                               ; preds = %82
  %87 = load i32, ptr %0, align 4, !tbaa !41
  %88 = add nsw i32 %87, %27
  %89 = icmp sgt i32 %88, %30
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = sub nsw i32 %88, %30
  %92 = tail call fastcc ptr @decDecap(ptr noundef nonnull %0, i32 noundef %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, ptr %0, align 4, !tbaa !41
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !42
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %96, %93
  %101 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %102 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %101, i32 noundef %94, i32 noundef %27)
  store i32 %102, ptr %0, align 4, !tbaa !41
  br label %124

103:                                              ; preds = %80
  %104 = sub nsw i32 0, %27
  %105 = load i32, ptr %0, align 4, !tbaa !41
  %106 = icmp sgt i32 %105, %104
  %107 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br i1 %106, label %109, label %108

108:                                              ; preds = %103
  store i16 0, ptr %107, align 2, !tbaa !42
  store i32 1, ptr %0, align 4, !tbaa !41
  br label %124

109:                                              ; preds = %103
  %110 = icmp slt i32 %105, 50
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = zext nneg i32 %105 to i64
  %113 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !51
  %115 = zext i8 %114 to i32
  br label %119

116:                                              ; preds = %109
  %117 = add nuw nsw i32 %105, 2
  %118 = udiv i32 %117, 3
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i32 [ %115, %111 ], [ %118, %116 ]
  %121 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %107, i32 noundef %120, i32 noundef %104)
  %122 = load i32, ptr %0, align 4, !tbaa !41
  %123 = add nsw i32 %122, %27
  store i32 %123, ptr %0, align 4, !tbaa !41
  br label %124

124:                                              ; preds = %25, %73, %75, %108, %119, %84, %100, %96, %32, %16
  %125 = load i32, ptr %5, align 4, !tbaa !48
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %124
  %128 = and i32 %125, 221
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = and i32 %125, 1073741824
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = and i32 %125, -1073741825
  br label %139

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %136, align 4, !tbaa !35
  %137 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %137, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %138 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %138, align 2, !tbaa !42
  store i8 32, ptr %136, align 4, !tbaa !35
  br label %139

139:                                              ; preds = %127, %133, %135
  %140 = phi i32 [ %134, %133 ], [ %125, %135 ], [ %125, %127 ]
  %141 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %140) #19
  br label %142

142:                                              ; preds = %139, %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @decDecap(ptr noundef returned %0, i32 noundef %1) unnamed_addr #13 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !41
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %6, align 2, !tbaa !42
  br label %78

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 10
  %9 = sub nsw i32 %3, %1
  %10 = icmp slt i32 %9, 50
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !51
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %9, 2
  %18 = udiv i32 %17, 3
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %18, %16 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %8, i64 %21
  %23 = getelementptr inbounds i16, ptr %22, i64 -1
  br i1 %10, label %24, label %29

24:                                               ; preds = %19
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !51
  %28 = zext i8 %27 to i32
  br label %32

29:                                               ; preds = %19
  %30 = add nuw nsw i32 %9, 2
  %31 = udiv i32 %30, 3
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %28, %24 ], [ %31, %29 ]
  %34 = mul i32 %33, -3
  %35 = add i32 %9, 3
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !48
  %42 = load i16, ptr %23, align 2, !tbaa !42
  %43 = zext i16 %42 to i32
  %44 = urem i32 %43, %41
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr %23, align 2, !tbaa !42
  br label %46

46:                                               ; preds = %38, %32
  %47 = ptrtoint ptr %23 to i64
  %48 = ptrtoint ptr %8 to i64
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = shl i64 %49, 31
  %53 = ashr exact i64 %52, 31
  %54 = and i64 %53, -2
  %55 = mul nsw i32 %51, 3
  %56 = add nsw i32 %55, 1
  %57 = icmp slt i64 %54, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %46
  %59 = add nuw nsw i64 %54, 10
  br label %60

60:                                               ; preds = %58, %68
  %61 = phi i32 [ %69, %68 ], [ %56, %58 ]
  %62 = phi i64 [ %70, %68 ], [ %59, %58 ]
  %63 = getelementptr inbounds i8, ptr %0, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !42
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = icmp eq i32 %61, 1
  br i1 %67, label %78, label %68

68:                                               ; preds = %66
  %69 = add nsw i32 %61, -3
  %70 = add nsw i64 %62, -2
  %71 = icmp slt i64 %62, 12
  br i1 %71, label %78, label %60, !llvm.loop !47

72:                                               ; preds = %60
  %73 = icmp ult i16 %64, 10
  br i1 %73, label %78, label %74

74:                                               ; preds = %72
  %75 = icmp ult i16 %64, 100
  %76 = select i1 %75, i32 1, i32 2
  %77 = add nsw i32 %76, %61
  br label %78

78:                                               ; preds = %68, %66, %46, %74, %72, %5
  %79 = phi i32 [ 1, %5 ], [ %61, %72 ], [ %77, %74 ], [ %56, %46 ], [ 1, %66 ], [ %69, %68 ]
  store i32 %79, ptr %0, align 4, !tbaa !41
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberSquareRoot(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = ptrtoint ptr %1 to i64
  %5 = alloca %struct.decContext, align 4
  %6 = alloca %struct.decContext, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x %struct.decNumber], align 16
  %14 = alloca [3 x %struct.decNumber], align 16
  %15 = alloca [3 x %struct.decNumber], align 16
  %16 = alloca [1 x %struct.decNumber], align 4
  %17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  store i32 0, ptr %9, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  store i32 0, ptr %10, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #19
  %18 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !35
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 112
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %3
  %24 = and i32 %20, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %23
  %27 = icmp sgt i8 %19, -1
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store i32 128, ptr %9, align 4, !tbaa !48
  br label %505

29:                                               ; preds = %26
  %30 = icmp eq ptr %0, %1
  br i1 %30, label %505, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %19, ptr %32, align 4, !tbaa !35
  %33 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !40
  %35 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !40
  %36 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %36, ptr %0, align 4, !tbaa !41
  %37 = getelementptr inbounds i8, ptr %1, i64 10
  %38 = load i16, ptr %37, align 2, !tbaa !42
  %39 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %38, ptr %39, align 2, !tbaa !42
  %40 = load i32, ptr %1, align 4, !tbaa !41
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %505

42:                                               ; preds = %31
  %43 = getelementptr %struct.decNumber, ptr %0, i64 1
  %44 = icmp slt i32 %40, 50
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = zext nneg i32 %40 to i64
  %47 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !51
  %49 = zext i8 %48 to i32
  br label %53

50:                                               ; preds = %42
  %51 = add nuw nsw i32 %40, 2
  %52 = udiv i32 %51, 3
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %49, %45 ], [ %52, %50 ]
  %55 = shl nuw i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, ptr %1, i64 %56
  %58 = getelementptr i8, ptr %57, i64 10
  %59 = icmp ugt i32 %54, 1
  br i1 %59, label %60, label %505

60:                                               ; preds = %53
  %61 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %67, %62 ], [ %43, %60 ]
  %64 = phi ptr [ %66, %62 ], [ %61, %60 ]
  %65 = load i16, ptr %64, align 2, !tbaa !42
  store i16 %65, ptr %63, align 2, !tbaa !42
  %66 = getelementptr inbounds i16, ptr %64, i64 1
  %67 = getelementptr inbounds i16, ptr %63, i64 1
  %68 = icmp ult ptr %66, %58
  br i1 %68, label %62, label %505, !llvm.loop !77

69:                                               ; preds = %23
  %70 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %9)
  br label %505

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !40
  %74 = ashr i32 %73, 1
  %75 = getelementptr inbounds i8, ptr %1, i64 10
  %76 = load i16, ptr %75, align 2, !tbaa !42
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %71
  %79 = load i32, ptr %1, align 4, !tbaa !41
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = icmp eq ptr %0, %1
  br i1 %82, label %116, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %19, ptr %84, align 4, !tbaa !35
  %85 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %73, ptr %85, align 4, !tbaa !40
  store i32 %79, ptr %0, align 4, !tbaa !41
  %86 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %76, ptr %86, align 2, !tbaa !42
  %87 = load i32, ptr %1, align 4, !tbaa !41
  %88 = icmp sgt i32 %87, 3
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  %90 = getelementptr %struct.decNumber, ptr %0, i64 1
  %91 = icmp slt i32 %87, 50
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = zext nneg i32 %87 to i64
  %94 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !51
  %96 = zext i8 %95 to i32
  br label %100

97:                                               ; preds = %89
  %98 = add nuw nsw i32 %87, 2
  %99 = udiv i32 %98, 3
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi i32 [ %96, %92 ], [ %99, %97 ]
  %102 = shl nuw i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr i8, ptr %1, i64 %103
  %105 = getelementptr i8, ptr %104, i64 10
  %106 = icmp ugt i32 %101, 1
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi ptr [ %114, %109 ], [ %90, %107 ]
  %111 = phi ptr [ %113, %109 ], [ %108, %107 ]
  %112 = load i16, ptr %111, align 2, !tbaa !42
  store i16 %112, ptr %110, align 2, !tbaa !42
  %113 = getelementptr inbounds i16, ptr %111, i64 1
  %114 = getelementptr inbounds i16, ptr %110, i64 1
  %115 = icmp ult ptr %113, %105
  br i1 %115, label %109, label %116, !llvm.loop !77

116:                                              ; preds = %109, %100, %81, %83
  %117 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %74, ptr %117, align 4, !tbaa !40
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %505

118:                                              ; preds = %78, %71
  %119 = icmp sgt i8 %19, -1
  br i1 %119, label %121, label %120

120:                                              ; preds = %118
  store i32 128, ptr %9, align 4, !tbaa !48
  br label %505

121:                                              ; preds = %118
  %122 = load i32, ptr %2, align 4, !tbaa !62
  %123 = add nsw i32 %122, 1
  %124 = load i32, ptr %1, align 4, !tbaa !41
  %125 = tail call i32 @llvm.smax.i32(i32 %123, i32 %124)
  %126 = tail call i32 @llvm.smax.i32(i32 %125, i32 7)
  %127 = add nuw nsw i32 %126, 2
  %128 = icmp slt i32 %124, 50
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = sext i32 %124 to i64
  %131 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !51
  %133 = zext i8 %132 to i32
  br label %137

134:                                              ; preds = %121
  %135 = add nuw nsw i32 %124, 2
  %136 = udiv i32 %135, 3
  br label %137

137:                                              ; preds = %134, %129
  %138 = phi i32 [ %133, %129 ], [ %136, %134 ]
  %139 = shl nuw i32 %138, 1
  %140 = add nuw i32 %139, 10
  %141 = icmp sgt i32 %140, 36
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = zext nneg i32 %140 to i64
  %144 = tail call noalias ptr @malloc(i64 noundef %143) #20
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 16, ptr %9, align 4, !tbaa !48
  br label %505

147:                                              ; preds = %142, %137
  %148 = phi ptr [ %13, %137 ], [ %144, %142 ]
  %149 = phi ptr [ null, %137 ], [ %144, %142 ]
  %150 = icmp slt i32 %125, 48
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = zext nneg i32 %127 to i64
  %153 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !51
  %155 = zext i8 %154 to i32
  br label %159

156:                                              ; preds = %147
  %157 = add nuw nsw i32 %126, 4
  %158 = udiv i32 %157, 3
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi i32 [ %155, %151 ], [ %158, %156 ]
  %161 = icmp ugt i32 %160, 13
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = shl nuw nsw i32 %160, 1
  %164 = add nuw nsw i32 %163, 10
  %165 = zext nneg i32 %164 to i64
  %166 = tail call noalias ptr @malloc(i64 noundef %165) #20
  %167 = tail call noalias ptr @malloc(i64 noundef %165) #20
  %168 = icmp eq ptr %166, null
  %169 = icmp eq ptr %167, null
  %170 = or i1 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 16, ptr %9, align 4, !tbaa !48
  br label %505

172:                                              ; preds = %162, %159
  %173 = phi ptr [ null, %159 ], [ %166, %162 ]
  %174 = phi ptr [ null, %159 ], [ %167, %162 ]
  %175 = phi ptr [ %14, %159 ], [ %166, %162 ]
  %176 = phi ptr [ %15, %159 ], [ %167, %162 ]
  %177 = ptrtoint ptr %175 to i64
  %178 = icmp eq ptr %148, %1
  br i1 %178, label %209, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.decNumber, ptr %148, i64 0, i32 2
  store i8 %19, ptr %180, align 4, !tbaa !35
  %181 = getelementptr inbounds %struct.decNumber, ptr %148, i64 0, i32 1
  store i32 %73, ptr %181, align 4, !tbaa !40
  store i32 %124, ptr %148, align 4, !tbaa !41
  %182 = getelementptr inbounds %struct.decNumber, ptr %148, i64 0, i32 3
  store i16 %76, ptr %182, align 2, !tbaa !42
  %183 = icmp sgt i32 %124, 3
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = getelementptr %struct.decNumber, ptr %148, i64 1
  br i1 %128, label %186, label %191

186:                                              ; preds = %184
  %187 = zext nneg i32 %124 to i64
  %188 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !51
  %190 = zext i8 %189 to i32
  br label %194

191:                                              ; preds = %184
  %192 = add nuw nsw i32 %124, 2
  %193 = udiv i32 %192, 3
  br label %194

194:                                              ; preds = %191, %186
  %195 = phi i32 [ %190, %186 ], [ %193, %191 ]
  %196 = icmp ugt i32 %195, 1
  br i1 %196, label %197, label %209

197:                                              ; preds = %194
  %198 = getelementptr %struct.decNumber, ptr %1, i64 1
  %199 = shl nuw i32 %195, 1
  %200 = zext i32 %199 to i64
  %201 = add i64 %4, %200
  %202 = add i64 %201, 10
  %203 = add i64 %4, 14
  %204 = call i64 @llvm.umax.i64(i64 %202, i64 %203)
  %205 = add i64 %204, -13
  %206 = sub i64 %205, %4
  %207 = and i64 %206, -2
  %208 = add i64 %207, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %185, ptr align 2 %198, i64 %208, i1 false), !tbaa !42
  br label %209

209:                                              ; preds = %197, %194, %172, %179
  %210 = getelementptr inbounds %struct.decNumber, ptr %148, i64 0, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !40
  %212 = load i32, ptr %148, align 4, !tbaa !41
  %213 = add nsw i32 %212, %211
  %214 = sub nsw i32 0, %212
  store i32 %214, ptr %210, align 4, !tbaa !40
  %215 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 64) #19
  %216 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 1
  store i32 999999999, ptr %216, align 4, !tbaa !70
  %217 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 2
  store i32 -999999999, ptr %217, align 4, !tbaa !69
  store i32 %126, ptr %5, align 4, !tbaa !62
  %218 = getelementptr inbounds %struct.decNumber, ptr %16, i64 0, i32 2
  store i8 0, ptr %218, align 4, !tbaa !35
  store i32 3, ptr %16, align 4, !tbaa !41
  %219 = getelementptr inbounds %struct.decNumber, ptr %175, i64 0, i32 2
  store i8 0, ptr %219, align 4, !tbaa !35
  store i32 3, ptr %175, align 4, !tbaa !41
  %220 = and i32 %213, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %209
  %223 = load i32, ptr %210, align 4, !tbaa !40
  %224 = add nsw i32 %223, -1
  store i32 %224, ptr %210, align 4, !tbaa !40
  %225 = add nsw i32 %213, 1
  br label %226

226:                                              ; preds = %209, %222
  %227 = phi i32 [ -4, %222 ], [ -3, %209 ]
  %228 = phi i32 [ -2, %222 ], [ -3, %209 ]
  %229 = phi i16 [ 819, %222 ], [ 259, %209 ]
  %230 = phi i16 [ 259, %222 ], [ 819, %209 ]
  %231 = phi i32 [ %225, %222 ], [ %213, %209 ]
  %232 = getelementptr inbounds %struct.decNumber, ptr %16, i64 0, i32 1
  store i32 %227, ptr %232, align 4, !tbaa !40
  %233 = getelementptr inbounds %struct.decNumber, ptr %175, i64 0, i32 1
  store i32 %228, ptr %233, align 4, !tbaa !40
  %234 = getelementptr inbounds %struct.decNumber, ptr %16, i64 0, i32 3
  store i16 %229, ptr %234, align 2, !tbaa !42
  %235 = getelementptr inbounds %struct.decNumber, ptr %175, i64 0, i32 3
  store i16 %230, ptr %235, align 2, !tbaa !42
  %236 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %175, ptr noundef nonnull %175, ptr noundef nonnull %148, ptr noundef nonnull %5, ptr noundef nonnull %10)
  %237 = call fastcc ptr @decAddOp(ptr noundef nonnull %175, ptr noundef nonnull %175, ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %10)
  %238 = getelementptr inbounds %struct.decNumber, ptr %7, i64 0, i32 2
  store i8 0, ptr %238, align 4, !tbaa !35
  %239 = getelementptr inbounds %struct.decNumber, ptr %7, i64 0, i32 1
  store i32 0, ptr %239, align 4, !tbaa !40
  store i32 1, ptr %7, align 4, !tbaa !41
  %240 = getelementptr inbounds %struct.decNumber, ptr %7, i64 0, i32 3
  store i16 0, ptr %240, align 2, !tbaa !42
  store i8 0, ptr %218, align 4, !tbaa !35
  %241 = getelementptr inbounds %struct.decNumber, ptr %16, i64 0, i32 1
  store i32 0, ptr %241, align 4, !tbaa !40
  store i32 1, ptr %16, align 4, !tbaa !41
  %242 = getelementptr inbounds %struct.decNumber, ptr %16, i64 0, i32 3
  store i16 5, ptr %242, align 2, !tbaa !42
  store i32 -1, ptr %241, align 4, !tbaa !40
  store i32 3, ptr %5, align 4, !tbaa !62
  br label %243

243:                                              ; preds = %226, %243
  %244 = phi i32 [ %251, %243 ], [ 3, %226 ]
  %245 = shl nsw i32 %244, 1
  %246 = add nsw i32 %245, -2
  %247 = call i32 @llvm.smin.i32(i32 %246, i32 %127)
  store i32 %247, ptr %5, align 4, !tbaa !62
  %248 = call fastcc ptr @decDivideOp(ptr noundef %176, ptr noundef nonnull %148, ptr noundef nonnull %175, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef nonnull %10)
  %249 = call fastcc ptr @decAddOp(ptr noundef %176, ptr noundef %176, ptr noundef nonnull %175, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %10)
  %250 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %175, ptr noundef %176, ptr noundef nonnull %16, ptr noundef nonnull %5, ptr noundef nonnull %10)
  %251 = load i32, ptr %5, align 4
  %252 = icmp slt i32 %251, %127
  br i1 %252, label %243, label %253, !llvm.loop !126

253:                                              ; preds = %243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  %254 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 3
  store i32 3, ptr %254, align 4, !tbaa !76
  %255 = sdiv i32 %231, 2
  %256 = getelementptr inbounds %struct.decNumber, ptr %175, i64 0, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !40
  %258 = add nsw i32 %257, %255
  store i32 %258, ptr %256, align 4, !tbaa !40
  store i32 0, ptr %11, align 4, !tbaa !48
  store i32 0, ptr %8, align 4, !tbaa !48
  %259 = getelementptr inbounds i8, ptr %175, i64 10
  %260 = load i32, ptr %175, align 4, !tbaa !41
  call fastcc void @decSetCoeff(ptr noundef nonnull %175, ptr noundef nonnull %6, ptr noundef nonnull %259, i32 noundef %260, ptr noundef nonnull %8, ptr noundef nonnull %11)
  call fastcc void @decFinalize(ptr noundef nonnull %175, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %11)
  %261 = load i32, ptr %11, align 4, !tbaa !48
  %262 = and i32 %261, 512
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %301, label %264

264:                                              ; preds = %253
  store i32 %261, ptr %9, align 4, !tbaa !48
  %265 = icmp eq ptr %175, %0
  br i1 %265, label %505, label %266

266:                                              ; preds = %264
  %267 = load i8, ptr %219, align 4, !tbaa !35
  %268 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %267, ptr %268, align 4, !tbaa !35
  %269 = load i32, ptr %256, align 4, !tbaa !40
  %270 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %269, ptr %270, align 4, !tbaa !40
  %271 = load i32, ptr %175, align 4, !tbaa !41
  store i32 %271, ptr %0, align 4, !tbaa !41
  %272 = load i16, ptr %259, align 2, !tbaa !42
  %273 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %272, ptr %273, align 2, !tbaa !42
  %274 = icmp sgt i32 %271, 3
  br i1 %274, label %275, label %505

275:                                              ; preds = %266
  %276 = getelementptr %struct.decNumber, ptr %0, i64 1
  %277 = icmp slt i32 %271, 50
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = zext nneg i32 %271 to i64
  %280 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !51
  %282 = zext i8 %281 to i32
  br label %286

283:                                              ; preds = %275
  %284 = add nuw nsw i32 %271, 2
  %285 = udiv i32 %284, 3
  br label %286

286:                                              ; preds = %283, %278
  %287 = phi i32 [ %282, %278 ], [ %285, %283 ]
  %288 = icmp ugt i32 %287, 1
  br i1 %288, label %289, label %505

289:                                              ; preds = %286
  %290 = getelementptr %struct.decNumber, ptr %175, i64 1
  %291 = shl nuw i32 %287, 1
  %292 = zext i32 %291 to i64
  %293 = add i64 %177, %292
  %294 = add i64 %293, 10
  %295 = add i64 %177, 14
  %296 = call i64 @llvm.umax.i64(i64 %294, i64 %295)
  %297 = add i64 %296, -13
  %298 = sub i64 %297, %177
  %299 = and i64 %298, -2
  %300 = add i64 %299, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %276, ptr align 2 %290, i64 %300, i1 false), !tbaa !42
  br label %505

301:                                              ; preds = %253
  %302 = and i32 %261, -2593
  store i32 %302, ptr %9, align 4, !tbaa !48
  %303 = load i32, ptr %256, align 4, !tbaa !40
  %304 = sub nsw i32 %303, %255
  store i32 %304, ptr %256, align 4, !tbaa !40
  %305 = load i32, ptr %5, align 4, !tbaa !62
  %306 = add nsw i32 %305, -1
  store i32 %306, ptr %5, align 4, !tbaa !62
  %307 = load i32, ptr %175, align 4, !tbaa !41
  %308 = xor i32 %307, -1
  store i32 %308, ptr %241, align 4, !tbaa !40
  %309 = call fastcc ptr @decAddOp(ptr noundef %176, ptr noundef nonnull %175, ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef nonnull %10)
  %310 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 1, ptr %310, align 4, !tbaa !76
  %311 = call fastcc ptr @decMultiplyOp(ptr noundef %176, ptr noundef %176, ptr noundef %176, ptr noundef nonnull %5, ptr noundef nonnull %10)
  %312 = call fastcc ptr @decCompareOp(ptr noundef %176, ptr noundef nonnull %148, ptr noundef %176, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef nonnull %10)
  %313 = getelementptr inbounds %struct.decNumber, ptr %176, i64 0, i32 2
  %314 = load i8, ptr %313, align 4, !tbaa !35
  %315 = icmp sgt i8 %314, -1
  br i1 %315, label %316, label %322

316:                                              ; preds = %301
  %317 = call fastcc ptr @decAddOp(ptr noundef %176, ptr noundef nonnull %175, ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %10)
  store i32 5, ptr %310, align 4, !tbaa !76
  %318 = call fastcc ptr @decMultiplyOp(ptr noundef %176, ptr noundef %176, ptr noundef %176, ptr noundef nonnull %5, ptr noundef nonnull %10)
  %319 = call fastcc ptr @decCompareOp(ptr noundef %176, ptr noundef %176, ptr noundef nonnull %148, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef nonnull %10)
  %320 = load i8, ptr %313, align 4, !tbaa !35
  %321 = icmp sgt i8 %320, -1
  br i1 %321, label %334, label %322

322:                                              ; preds = %316, %301
  %323 = phi i8 [ -128, %301 ], [ 0, %316 ]
  %324 = load i32, ptr %241, align 4, !tbaa !40
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %241, align 4, !tbaa !40
  store i16 1, ptr %242, align 2, !tbaa !42
  %326 = call fastcc ptr @decAddOp(ptr noundef nonnull %175, ptr noundef nonnull %175, ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext %323, ptr noundef nonnull %10)
  %327 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 2
  %328 = load i32, ptr %327, align 4, !tbaa !69
  %329 = sub nsw i32 %328, %255
  store i32 %329, ptr %327, align 4, !tbaa !69
  %330 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 1
  %331 = load i32, ptr %330, align 4, !tbaa !70
  %332 = sub nsw i32 %331, %255
  store i32 %332, ptr %330, align 4, !tbaa !70
  %333 = call fastcc ptr @decAddOp(ptr noundef nonnull %175, ptr noundef nonnull %7, ptr noundef nonnull %175, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef nonnull %10)
  br label %334

334:                                              ; preds = %322, %316
  %335 = load i32, ptr %256, align 4, !tbaa !40
  %336 = add nsw i32 %335, %255
  store i32 %336, ptr %256, align 4, !tbaa !40
  %337 = icmp eq ptr %176, %175
  br i1 %337, label %371, label %338

338:                                              ; preds = %334
  %339 = load i8, ptr %219, align 4, !tbaa !35
  store i8 %339, ptr %313, align 4, !tbaa !35
  %340 = getelementptr inbounds %struct.decNumber, ptr %176, i64 0, i32 1
  store i32 %336, ptr %340, align 4, !tbaa !40
  %341 = load i32, ptr %175, align 4, !tbaa !41
  store i32 %341, ptr %176, align 4, !tbaa !41
  %342 = load i16, ptr %259, align 2, !tbaa !42
  %343 = getelementptr inbounds %struct.decNumber, ptr %176, i64 0, i32 3
  store i16 %342, ptr %343, align 2, !tbaa !42
  %344 = icmp sgt i32 %341, 3
  br i1 %344, label %345, label %371

345:                                              ; preds = %338
  %346 = getelementptr %struct.decNumber, ptr %176, i64 1
  %347 = icmp slt i32 %341, 50
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  %349 = zext nneg i32 %341 to i64
  %350 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !51
  %352 = zext i8 %351 to i32
  br label %356

353:                                              ; preds = %345
  %354 = add nuw nsw i32 %341, 2
  %355 = udiv i32 %354, 3
  br label %356

356:                                              ; preds = %353, %348
  %357 = phi i32 [ %352, %348 ], [ %355, %353 ]
  %358 = icmp ugt i32 %357, 1
  br i1 %358, label %359, label %371

359:                                              ; preds = %356
  %360 = getelementptr %struct.decNumber, ptr %175, i64 1
  %361 = shl nuw i32 %357, 1
  %362 = zext i32 %361 to i64
  %363 = add i64 %177, %362
  %364 = add i64 %363, 10
  %365 = add i64 %177, 14
  %366 = call i64 @llvm.umax.i64(i64 %364, i64 %365)
  %367 = add i64 %366, -13
  %368 = sub i64 %367, %177
  %369 = and i64 %368, -2
  %370 = add i64 %369, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %346, ptr align 2 %360, i64 %370, i1 false), !tbaa !42
  br label %371

371:                                              ; preds = %359, %356, %334, %338
  %372 = call fastcc ptr @decTrim(ptr noundef %176, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %12)
  %373 = load i32, ptr %176, align 4, !tbaa !41
  %374 = shl nsw i32 %373, 1
  %375 = add nsw i32 %374, -1
  %376 = icmp sgt i32 %375, %126
  br i1 %376, label %377, label %379

377:                                              ; preds = %371
  %378 = or i32 %261, 2080
  store i32 %378, ptr %9, align 4, !tbaa !48
  br label %448

379:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store i32 0, ptr %17, align 4, !tbaa !48
  %380 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %176, ptr noundef nonnull %176, ptr noundef nonnull %176, ptr noundef nonnull %5, ptr noundef nonnull %17)
  %381 = load i32, ptr %17, align 4, !tbaa !48
  %382 = and i32 %381, 512
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %379
  %385 = or i32 %261, 2080
  store i32 %385, ptr %9, align 4, !tbaa !48
  br label %447

386:                                              ; preds = %379
  %387 = call fastcc ptr @decCompareOp(ptr noundef nonnull %16, ptr noundef nonnull %176, ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef nonnull %17)
  %388 = load i16, ptr %242, align 2, !tbaa !42
  %389 = icmp eq i16 %388, 0
  %390 = load i32, ptr %16, align 4
  %391 = icmp eq i32 %390, 1
  %392 = select i1 %389, i1 %391, i1 false
  br i1 %392, label %393, label %397

393:                                              ; preds = %386
  %394 = load i8, ptr %218, align 4, !tbaa !35
  %395 = and i8 %394, 112
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %393, %386
  %398 = or i32 %261, 2080
  store i32 %398, ptr %9, align 4, !tbaa !48
  br label %447

399:                                              ; preds = %393
  %400 = load i32, ptr %256, align 4, !tbaa !40
  %401 = sub nsw i32 %74, %400
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %399
  %404 = or disjoint i32 %302, 2048
  store i32 %404, ptr %9, align 4, !tbaa !48
  br label %447

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %407 = load i32, ptr %406, align 4, !tbaa !70
  %408 = load i32, ptr %2, align 4, !tbaa !62
  %409 = add i32 %407, 1
  %410 = add i32 %400, %408
  %411 = sub i32 %409, %410
  %412 = icmp sgt i32 %401, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %405
  %414 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 6
  %415 = load i8, ptr %414, align 4, !tbaa !64
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  %418 = or i32 %302, 1024
  store i32 %418, ptr %9, align 4, !tbaa !48
  br label %419

419:                                              ; preds = %417, %413, %405
  %420 = phi i32 [ %411, %417 ], [ %401, %413 ], [ %401, %405 ]
  %421 = load i32, ptr %12, align 4, !tbaa !48
  %422 = icmp slt i32 %421, %420
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load i32, ptr %9, align 4, !tbaa !48
  %425 = or i32 %424, 1024
  store i32 %425, ptr %9, align 4, !tbaa !48
  br label %426

426:                                              ; preds = %423, %419
  %427 = phi i32 [ %421, %423 ], [ %420, %419 ]
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %429, label %447

429:                                              ; preds = %426
  %430 = load i32, ptr %175, align 4, !tbaa !41
  %431 = icmp slt i32 %430, 50
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  %433 = sext i32 %430 to i64
  %434 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !51
  %436 = zext i8 %435 to i32
  br label %440

437:                                              ; preds = %429
  %438 = add nuw nsw i32 %430, 2
  %439 = udiv i32 %438, 3
  br label %440

440:                                              ; preds = %437, %432
  %441 = phi i32 [ %436, %432 ], [ %439, %437 ]
  %442 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %259, i32 noundef %441, i32 noundef %427)
  %443 = load i32, ptr %256, align 4, !tbaa !40
  %444 = add nsw i32 %443, %427
  store i32 %444, ptr %256, align 4, !tbaa !40
  %445 = load i32, ptr %175, align 4, !tbaa !41
  %446 = sub nsw i32 %445, %427
  store i32 %446, ptr %175, align 4, !tbaa !41
  br label %447

447:                                              ; preds = %403, %440, %426, %397, %384
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  br label %448

448:                                              ; preds = %447, %377
  %449 = load i32, ptr %9, align 4, !tbaa !48
  %450 = and i32 %449, 8192
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %468, label %452

452:                                              ; preds = %448
  %453 = load i32, ptr %72, align 4, !tbaa !40
  %454 = load i32, ptr %1, align 4, !tbaa !41
  %455 = add nsw i32 %454, %453
  %456 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %457 = load i32, ptr %456, align 4, !tbaa !69
  %458 = shl nsw i32 %457, 1
  %459 = icmp sgt i32 %455, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %452
  %461 = and i32 %449, -12289
  store i32 %461, ptr %9, align 4, !tbaa !48
  br label %462

462:                                              ; preds = %460, %452
  %463 = load i32, ptr %9, align 4, !tbaa !48
  %464 = and i32 %463, 32
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = and i32 %463, -8225
  store i32 %467, ptr %9, align 4, !tbaa !48
  br label %468

468:                                              ; preds = %462, %466, %448
  %469 = icmp eq ptr %175, %0
  br i1 %469, label %505, label %470

470:                                              ; preds = %468
  %471 = load i8, ptr %219, align 4, !tbaa !35
  %472 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %471, ptr %472, align 4, !tbaa !35
  %473 = load i32, ptr %256, align 4, !tbaa !40
  %474 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %473, ptr %474, align 4, !tbaa !40
  %475 = load i32, ptr %175, align 4, !tbaa !41
  store i32 %475, ptr %0, align 4, !tbaa !41
  %476 = load i16, ptr %259, align 2, !tbaa !42
  %477 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %476, ptr %477, align 2, !tbaa !42
  %478 = icmp sgt i32 %475, 3
  br i1 %478, label %479, label %505

479:                                              ; preds = %470
  %480 = getelementptr %struct.decNumber, ptr %0, i64 1
  %481 = icmp slt i32 %475, 50
  br i1 %481, label %482, label %487

482:                                              ; preds = %479
  %483 = zext nneg i32 %475 to i64
  %484 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !51
  %486 = zext i8 %485 to i32
  br label %490

487:                                              ; preds = %479
  %488 = add nuw nsw i32 %475, 2
  %489 = udiv i32 %488, 3
  br label %490

490:                                              ; preds = %487, %482
  %491 = phi i32 [ %486, %482 ], [ %489, %487 ]
  %492 = icmp ugt i32 %491, 1
  br i1 %492, label %493, label %505

493:                                              ; preds = %490
  %494 = getelementptr %struct.decNumber, ptr %175, i64 1
  %495 = shl nuw i32 %491, 1
  %496 = zext i32 %495 to i64
  %497 = add i64 %177, %496
  %498 = add i64 %497, 10
  %499 = add i64 %177, 14
  %500 = call i64 @llvm.umax.i64(i64 %498, i64 %499)
  %501 = add i64 %500, -13
  %502 = sub i64 %501, %177
  %503 = and i64 %502, -2
  %504 = add i64 %503, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %480, ptr align 2 %494, i64 %504, i1 false), !tbaa !42
  br label %505

505:                                              ; preds = %62, %289, %493, %53, %286, %490, %470, %468, %266, %264, %31, %29, %69, %28, %171, %146, %120, %116
  %506 = phi ptr [ null, %28 ], [ null, %69 ], [ null, %116 ], [ null, %120 ], [ null, %146 ], [ %166, %171 ], [ null, %29 ], [ null, %31 ], [ %173, %264 ], [ %173, %266 ], [ %173, %468 ], [ %173, %470 ], [ %173, %490 ], [ %173, %286 ], [ null, %53 ], [ %173, %493 ], [ %173, %289 ], [ null, %62 ]
  %507 = phi ptr [ null, %28 ], [ null, %69 ], [ null, %116 ], [ null, %120 ], [ null, %146 ], [ %167, %171 ], [ null, %29 ], [ null, %31 ], [ %174, %264 ], [ %174, %266 ], [ %174, %468 ], [ %174, %470 ], [ %174, %490 ], [ %174, %286 ], [ null, %53 ], [ %174, %493 ], [ %174, %289 ], [ null, %62 ]
  %508 = phi ptr [ null, %28 ], [ null, %69 ], [ null, %116 ], [ null, %120 ], [ null, %146 ], [ %149, %171 ], [ null, %29 ], [ null, %31 ], [ %149, %264 ], [ %149, %266 ], [ %149, %468 ], [ %149, %470 ], [ %149, %490 ], [ %149, %286 ], [ null, %53 ], [ %149, %493 ], [ %149, %289 ], [ null, %62 ]
  %509 = icmp eq ptr %508, null
  br i1 %509, label %511, label %510

510:                                              ; preds = %505
  call void @free(ptr noundef %508) #19
  br label %511

511:                                              ; preds = %510, %505
  %512 = icmp eq ptr %506, null
  br i1 %512, label %514, label %513

513:                                              ; preds = %511
  call void @free(ptr noundef %506) #19
  br label %514

514:                                              ; preds = %513, %511
  %515 = icmp eq ptr %507, null
  br i1 %515, label %517, label %516

516:                                              ; preds = %514
  call void @free(ptr noundef %507) #19
  br label %517

517:                                              ; preds = %516, %514
  %518 = load i32, ptr %9, align 4, !tbaa !48
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %535, label %520

520:                                              ; preds = %517
  %521 = and i32 %518, 221
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %532, label %523

523:                                              ; preds = %520
  %524 = and i32 %518, 1073741824
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526

526:                                              ; preds = %523
  %527 = and i32 %518, -1073741825
  br label %532

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %529, align 4, !tbaa !35
  %530 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %530, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %531 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %531, align 2, !tbaa !42
  store i8 32, ptr %529, align 4, !tbaa !35
  br label %532

532:                                              ; preds = %520, %526, %528
  %533 = phi i32 [ %527, %526 ], [ %518, %528 ], [ %518, %520 ]
  %534 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %533) #19
  br label %535

535:                                              ; preds = %532, %517
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberSubtract(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !48
  %6 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4, !tbaa !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 221
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = and i32 %7, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %7, -1073741825
  br label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !42
  store i8 32, ptr %18, align 4, !tbaa !35
  br label %21

21:                                               ; preds = %9, %15, %17
  %22 = phi i32 [ %16, %15 ], [ %7, %17 ], [ %7, %9 ]
  %23 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberToIntegralExact(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !35
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 112
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %3
  %13 = and i32 %9, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %0, %1
  br i1 %16, label %108, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %8, ptr %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !40
  %22 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %22, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds i8, ptr %1, i64 10
  %24 = load i16, ptr %23, align 2, !tbaa !42
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %24, ptr %25, align 2, !tbaa !42
  %26 = load i32, ptr %1, align 4, !tbaa !41
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %108

28:                                               ; preds = %17
  %29 = getelementptr %struct.decNumber, ptr %0, i64 1
  %30 = icmp slt i32 %26, 50
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = zext nneg i32 %26 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !51
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %28
  %37 = add nuw nsw i32 %26, 2
  %38 = udiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %38, %36 ]
  %41 = shl nuw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 10
  %45 = icmp ugt i32 %40, 1
  br i1 %45, label %46, label %108

46:                                               ; preds = %39
  %47 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi ptr [ %53, %48 ], [ %29, %46 ]
  %50 = phi ptr [ %52, %48 ], [ %47, %46 ]
  %51 = load i16, ptr %50, align 2, !tbaa !42
  store i16 %51, ptr %49, align 2, !tbaa !42
  %52 = getelementptr inbounds i16, ptr %50, i64 1
  %53 = getelementptr inbounds i16, ptr %49, i64 1
  %54 = icmp ult ptr %52, %44
  br i1 %54, label %48, label %108, !llvm.loop !77

55:                                               ; preds = %12
  %56 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %6)
  br label %108

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !40
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = icmp eq ptr %0, %1
  br i1 %62, label %126, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %8, ptr %64, align 4, !tbaa !35
  %65 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %59, ptr %65, align 4, !tbaa !40
  %66 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %66, ptr %0, align 4, !tbaa !41
  %67 = getelementptr inbounds i8, ptr %1, i64 10
  %68 = load i16, ptr %67, align 2, !tbaa !42
  %69 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %68, ptr %69, align 2, !tbaa !42
  %70 = load i32, ptr %1, align 4, !tbaa !41
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %72, label %126

72:                                               ; preds = %63
  %73 = getelementptr %struct.decNumber, ptr %0, i64 1
  %74 = icmp slt i32 %70, 50
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = zext nneg i32 %70 to i64
  %77 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !51
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %72
  %81 = add nuw nsw i32 %70, 2
  %82 = udiv i32 %81, 3
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %79, %75 ], [ %82, %80 ]
  %85 = shl nuw i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr i8, ptr %1, i64 %86
  %88 = getelementptr i8, ptr %87, i64 10
  %89 = icmp ugt i32 %84, 1
  br i1 %89, label %90, label %126

90:                                               ; preds = %83
  %91 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi ptr [ %97, %92 ], [ %73, %90 ]
  %94 = phi ptr [ %96, %92 ], [ %91, %90 ]
  %95 = load i16, ptr %94, align 2, !tbaa !42
  store i16 %95, ptr %93, align 2, !tbaa !42
  %96 = getelementptr inbounds i16, ptr %94, i64 1
  %97 = getelementptr inbounds i16, ptr %93, i64 1
  %98 = icmp ult ptr %96, %88
  br i1 %98, label %92, label %126, !llvm.loop !77

99:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  %100 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %100, ptr %5, align 4, !tbaa !62
  %101 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %101, align 4, !tbaa !127
  %102 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  store i8 0, ptr %102, align 4, !tbaa !35
  %103 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 0, ptr %103, align 4, !tbaa !40
  store i32 1, ptr %4, align 4, !tbaa !41
  %104 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 0, ptr %104, align 2, !tbaa !42
  %105 = call ptr @decNumberQuantize(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %106 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 5
  %107 = load i32, ptr %106, align 4, !tbaa !128
  store i32 %107, ptr %6, align 4, !tbaa !48
  br label %108

108:                                              ; preds = %48, %39, %17, %15, %55, %99
  %109 = load i32, ptr %6, align 4, !tbaa !48
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %108
  %112 = and i32 %109, 221
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = and i32 %109, 1073741824
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = and i32 %109, -1073741825
  br label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %120, align 4, !tbaa !35
  %121 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %121, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %122 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %122, align 2, !tbaa !42
  store i8 32, ptr %120, align 4, !tbaa !35
  br label %123

123:                                              ; preds = %111, %117, %119
  %124 = phi i32 [ %118, %117 ], [ %109, %119 ], [ %109, %111 ]
  %125 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %124) #19
  br label %126

126:                                              ; preds = %92, %83, %63, %61, %108, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberToIntegralValue(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !94
  %5 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !127
  %6 = call ptr @decNumberToIntegralExact(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %7 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !128
  %9 = and i32 %8, 128
  %10 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !128
  %12 = or i32 %11, %9
  store i32 %12, ptr %10, align 4, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #19
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @decNumberXor(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #3 !prof !34 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !35
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !35
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %12, %8, %4
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %21, align 4, !tbaa !35
  %22 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %23, align 2, !tbaa !42
  store i8 32, ptr %21, align 4, !tbaa !35
  %24 = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef 128) #19
  br label %187

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds i8, ptr %0, i64 10
  %29 = load i32, ptr %1, align 4, !tbaa !41
  %30 = icmp slt i32 %29, 50
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !51
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %25
  %37 = add nuw nsw i32 %29, 2
  %38 = udiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %38, %36 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %26, i64 %41
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i32, ptr %2, align 4, !tbaa !41
  %45 = icmp slt i32 %44, 50
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %39
  %52 = add nuw nsw i32 %44, 2
  %53 = udiv i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %50, %46 ], [ %53, %51 ]
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %27, i64 %56
  %58 = getelementptr inbounds i16, ptr %57, i64 -1
  %59 = load i32, ptr %3, align 4, !tbaa !62
  %60 = icmp slt i32 %59, 50
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !51
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %54
  %67 = add nuw nsw i32 %59, 2
  %68 = udiv i32 %67, 3
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ]
  %71 = shl nuw i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = getelementptr i8, ptr %73, i64 8
  br i1 %60, label %75, label %80

75:                                               ; preds = %69
  %76 = sext i32 %59 to i64
  %77 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !51
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %69
  %81 = add nuw nsw i32 %59, 2
  %82 = udiv i32 %81, 3
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %79, %75 ], [ %82, %80 ]
  %85 = icmp eq i32 %70, 0
  br i1 %85, label %150, label %86

86:                                               ; preds = %83
  %87 = mul i32 %84, -3
  %88 = add i32 %59, 2
  %89 = add i32 %88, %87
  %90 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %92 = zext i32 %89 to i64
  br label %93

93:                                               ; preds = %86, %145
  %94 = phi ptr [ undef, %86 ], [ %144, %145 ]
  %95 = phi ptr [ %26, %86 ], [ %146, %145 ]
  %96 = phi ptr [ %27, %86 ], [ %147, %145 ]
  %97 = phi ptr [ %28, %86 ], [ %148, %145 ]
  %98 = icmp ugt ptr %95, %43
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = load i16, ptr %95, align 2, !tbaa !42
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi i16 [ %100, %99 ], [ 0, %93 ]
  %103 = icmp ugt ptr %96, %58
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i16, ptr %96, align 2, !tbaa !42
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi i16 [ %105, %104 ], [ 0, %101 ]
  store i16 0, ptr %97, align 2, !tbaa !42
  %108 = or i16 %107, %102
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  %111 = icmp ne ptr %97, %74
  br label %112

112:                                              ; preds = %134, %110
  %113 = phi i64 [ %139, %134 ], [ 0, %110 ]
  %114 = phi i16 [ %135, %134 ], [ %107, %110 ]
  %115 = phi i16 [ %136, %134 ], [ %102, %110 ]
  %116 = zext i16 %115 to i32
  %117 = zext i16 %114 to i32
  %118 = xor i32 %117, %116
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %112
  %122 = load i16, ptr %97, align 2, !tbaa !42
  %123 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !48
  %125 = trunc i32 %124 to i16
  %126 = add i16 %122, %125
  store i16 %126, ptr %97, align 2, !tbaa !42
  br label %127

127:                                              ; preds = %121, %112
  %128 = urem i32 %116, 10
  %129 = urem i32 %117, 10
  %130 = or i32 %129, %128
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  store i8 0, ptr %90, align 4, !tbaa !35
  store i32 0, ptr %91, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  store i16 0, ptr %28, align 2, !tbaa !42
  store i8 32, ptr %90, align 4, !tbaa !35
  %133 = tail call ptr @decContextSetStatus(ptr noundef nonnull %3, i32 noundef 128) #19
  br label %142

134:                                              ; preds = %127
  %135 = udiv i16 %114, 10
  %136 = udiv i16 %115, 10
  %137 = icmp ne i64 %113, %92
  %138 = select i1 %111, i1 true, i1 %137
  %139 = add nuw nsw i64 %113, 1
  %140 = icmp ult i64 %113, 2
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %112, label %142, !llvm.loop !129

142:                                              ; preds = %134, %132, %106
  %143 = phi i1 [ true, %106 ], [ false, %132 ], [ true, %134 ]
  %144 = phi ptr [ %94, %106 ], [ %0, %132 ], [ %94, %134 ]
  br i1 %143, label %145, label %187

145:                                              ; preds = %142
  %146 = getelementptr inbounds i16, ptr %95, i64 1
  %147 = getelementptr inbounds i16, ptr %96, i64 1
  %148 = getelementptr inbounds i16, ptr %97, i64 1
  %149 = icmp ugt ptr %148, %74
  br i1 %149, label %150, label %93, !llvm.loop !130

150:                                              ; preds = %145, %83
  %151 = phi ptr [ %28, %83 ], [ %148, %145 ]
  %152 = ptrtoint ptr %151 to i64
  %153 = ptrtoint ptr %28 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 1
  %156 = trunc i64 %155 to i32
  %157 = add nsw i32 %156, -1
  %158 = mul nsw i32 %157, 3
  %159 = add nsw i32 %158, 1
  %160 = icmp slt i32 %156, 1
  br i1 %160, label %183, label %161

161:                                              ; preds = %150
  %162 = sext i32 %157 to i64
  %163 = shl nsw i64 %162, 1
  %164 = add nsw i64 %163, 10
  br label %165

165:                                              ; preds = %161, %173
  %166 = phi i32 [ %174, %173 ], [ %159, %161 ]
  %167 = phi i64 [ %175, %173 ], [ %164, %161 ]
  %168 = getelementptr inbounds i8, ptr %0, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !42
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = icmp eq i32 %166, 1
  br i1 %172, label %183, label %173

173:                                              ; preds = %171
  %174 = add nsw i32 %166, -3
  %175 = add nsw i64 %167, -2
  %176 = icmp slt i64 %167, 12
  br i1 %176, label %183, label %165, !llvm.loop !47

177:                                              ; preds = %165
  %178 = icmp ult i16 %169, 10
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = icmp ult i16 %169, 100
  %181 = select i1 %180, i32 1, i32 2
  %182 = add nsw i32 %181, %166
  br label %183

183:                                              ; preds = %171, %173, %150, %177, %179
  %184 = phi i32 [ %166, %177 ], [ %182, %179 ], [ %159, %150 ], [ %174, %173 ], [ 1, %171 ]
  store i32 %184, ptr %0, align 4, !tbaa !41
  %185 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %185, align 4, !tbaa !40
  %186 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %186, align 4, !tbaa !35
  br label %187

187:                                              ; preds = %142, %183, %20
  %188 = phi ptr [ %0, %20 ], [ %0, %183 ], [ %144, %142 ]
  ret ptr %188
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberClass(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !35
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = and i32 %5, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = icmp sgt i8 %4, -1
  %16 = select i1 %15, i32 9, i32 2
  br label %52

17:                                               ; preds = %2
  %18 = and i8 %4, 112
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !42
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr %0, align 4, !tbaa !41
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %38, label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = load i32, ptr %0, align 4, !tbaa !41
  %31 = add nsw i32 %30, %29
  %32 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = icmp sgt i8 %4, -1
  %37 = select i1 %36, i32 8, i32 3
  br label %52

38:                                               ; preds = %17, %24, %27
  %39 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !42
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, ptr %0, align 4, !tbaa !41
  %44 = icmp ne i32 %43, 1
  %45 = or i1 %19, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = icmp sgt i8 %4, -1
  %48 = select i1 %47, i32 6, i32 5
  br label %52

49:                                               ; preds = %42, %38
  %50 = icmp sgt i8 %4, -1
  %51 = select i1 %50, i32 7, i32 4
  br label %52

52:                                               ; preds = %49, %46, %35, %14, %11, %8
  %53 = phi i32 [ 1, %8 ], [ 0, %11 ], [ %16, %14 ], [ %37, %35 ], [ %48, %46 ], [ %51, %49 ]
  ret i32 %53
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @decNumberClassToString(i32 noundef %0) local_unnamed_addr #14 !prof !34 {
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

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopyNegate(ptr noundef returned %0, ptr noundef readonly %1) local_unnamed_addr #5 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %6, ptr %7, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !40
  %11 = load i32, ptr %1, align 4, !tbaa !41
  store i32 %11, ptr %0, align 4, !tbaa !41
  %12 = getelementptr inbounds i8, ptr %1, i64 10
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %13, ptr %14, align 2, !tbaa !42
  %15 = load i32, ptr %1, align 4, !tbaa !41
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = getelementptr %struct.decNumber, ptr %0, i64 1
  %19 = icmp slt i32 %15, 50
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = zext nneg i32 %15 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !51
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %17
  %26 = add nuw nsw i32 %15, 2
  %27 = udiv i32 %26, 3
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = shl nuw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 10
  %34 = icmp ugt i32 %29, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %42, %37 ], [ %18, %35 ]
  %39 = phi ptr [ %41, %37 ], [ %36, %35 ]
  %40 = load i16, ptr %39, align 2, !tbaa !42
  store i16 %40, ptr %38, align 2, !tbaa !42
  %41 = getelementptr inbounds i16, ptr %39, i64 1
  %42 = getelementptr inbounds i16, ptr %38, i64 1
  %43 = icmp ult ptr %41, %33
  br i1 %43, label %37, label %44, !llvm.loop !77

44:                                               ; preds = %37, %28, %2, %4
  %45 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %46 = load i8, ptr %45, align 4, !tbaa !35
  %47 = xor i8 %46, -128
  store i8 %47, ptr %45, align 4, !tbaa !35
  ret ptr %0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberGetBCD(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #5 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !41
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = getelementptr inbounds i8, ptr %5, i64 -1
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !42
  %11 = zext i16 %10 to i32
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %30, %26 ], [ %6, %8 ]
  %14 = phi i32 [ %29, %26 ], [ 3, %8 ]
  %15 = phi i32 [ %28, %26 ], [ %11, %8 ]
  %16 = phi ptr [ %27, %26 ], [ %9, %8 ]
  %17 = urem i32 %15, 10
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %13, align 1, !tbaa !51
  %19 = udiv i32 %15, 10
  %20 = add nsw i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds i16, ptr %16, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !42
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %12, %22
  %27 = phi ptr [ %16, %12 ], [ %23, %22 ]
  %28 = phi i32 [ %19, %12 ], [ %25, %22 ]
  %29 = phi i32 [ %20, %12 ], [ 3, %22 ]
  %30 = getelementptr inbounds i8, ptr %13, i64 -1
  %31 = icmp ult ptr %30, %1
  br i1 %31, label %32, label %12, !llvm.loop !131

32:                                               ; preds = %26, %2
  ret ptr %1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberSetBCD(ptr noundef returned %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #15 !prof !34 {
  %4 = load i32, ptr %0, align 4, !tbaa !41
  %5 = icmp slt i32 %4, 50
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !51
  %10 = zext i8 %9 to i32
  br label %14

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 2
  %13 = udiv i32 %12, 3
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = shl nuw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 8
  %19 = icmp ult i32 %2, 50
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = zext nneg i32 %2 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !51
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %14
  %26 = add i32 %2, 2
  %27 = udiv i32 %26, 3
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = icmp eq i32 %15, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %28
  %32 = add i32 %2, 3
  %33 = mul i32 %29, -3
  %34 = add i32 %32, %33
  br label %35

35:                                               ; preds = %31, %54
  %36 = phi i32 [ 3, %54 ], [ %34, %31 ]
  %37 = phi ptr [ %55, %54 ], [ %1, %31 ]
  %38 = phi i64 [ %56, %54 ], [ %18, %31 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  store i16 0, ptr %39, align 2, !tbaa !42
  %40 = icmp sgt i32 %36, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i16, ptr %39, align 2, !tbaa !42
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i16 [ %42, %41 ], [ %50, %43 ]
  %45 = phi i32 [ %36, %41 ], [ %52, %43 ]
  %46 = phi ptr [ %37, %41 ], [ %51, %43 ]
  %47 = mul i16 %44, 10
  %48 = load i8, ptr %46, align 1, !tbaa !51
  %49 = zext i8 %48 to i16
  %50 = add i16 %47, %49
  store i16 %50, ptr %39, align 2, !tbaa !42
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  %52 = add nsw i32 %45, -1
  %53 = icmp sgt i32 %45, 1
  br i1 %53, label %43, label %54, !llvm.loop !132

54:                                               ; preds = %43, %35
  %55 = phi ptr [ %37, %35 ], [ %51, %43 ]
  %56 = add nsw i64 %38, -2
  %57 = icmp slt i64 %38, 12
  br i1 %57, label %58, label %35, !llvm.loop !133

58:                                               ; preds = %54, %28
  store i32 %2, ptr %0, align 4, !tbaa !41
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberIsSubnormal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !35
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 4, !tbaa !41
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = load i32, ptr %0, align 4, !tbaa !41
  %18 = add nsw i32 %17, %16
  %19 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = icmp sle i32 %18, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %14, %11, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %11 ], [ %22, %14 ]
  ret i32 %24
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decNumberTrim(ptr noundef returned %0) local_unnamed_addr #3 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #19
  %4 = call ptr @decContextDefault(ptr noundef nonnull %3, i32 noundef 0) #19
  %5 = call fastcc ptr @decTrim(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @decNumberVersion() local_unnamed_addr #14 !prof !34 {
  ret ptr @.str.15
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decUnitAddSub(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #5 !prof !34 {
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i16, ptr %5, i64 %8
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i16, ptr %5, i64 %10
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %7
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i16, ptr %11, i64 %14
  %16 = icmp ne ptr %0, %5
  %17 = icmp sgt i32 %4, %1
  %18 = or i1 %17, %16
  %19 = getelementptr inbounds i16, ptr %5, i64 %14
  br i1 %18, label %20, label %24

20:                                               ; preds = %13
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = getelementptr inbounds i16, ptr %0, i64 %8
  br label %26

24:                                               ; preds = %13
  %25 = getelementptr inbounds i16, ptr %0, i64 %14
  br label %37

26:                                               ; preds = %22, %32
  %27 = phi ptr [ %0, %22 ], [ %34, %32 ]
  %28 = phi ptr [ %5, %22 ], [ %35, %32 ]
  %29 = icmp ult ptr %27, %23
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i16, ptr %27, align 2, !tbaa !42
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i16 [ %31, %30 ], [ 0, %26 ]
  store i16 %33, ptr %28, align 2, !tbaa !42
  %34 = getelementptr inbounds i16, ptr %27, i64 1
  %35 = getelementptr inbounds i16, ptr %28, i64 1
  %36 = icmp ult ptr %35, %19
  br i1 %36, label %26, label %37, !llvm.loop !134

37:                                               ; preds = %32, %20, %24, %7
  %38 = phi ptr [ %19, %24 ], [ %5, %7 ], [ %5, %20 ], [ %35, %32 ]
  %39 = phi ptr [ %25, %24 ], [ %0, %7 ], [ %0, %20 ], [ %34, %32 ]
  %40 = phi ptr [ %15, %24 ], [ %11, %7 ], [ %15, %20 ], [ %15, %32 ]
  %41 = icmp ugt ptr %40, %9
  %42 = select i1 %41, ptr %9, ptr %40
  %43 = select i1 %41, ptr %40, ptr %9
  %44 = icmp ult ptr %38, %42
  br i1 %44, label %45, label %97

45:                                               ; preds = %37, %93
  %46 = phi i32 [ %94, %93 ], [ 0, %37 ]
  %47 = phi ptr [ %53, %93 ], [ %39, %37 ]
  %48 = phi ptr [ %58, %93 ], [ %2, %37 ]
  %49 = phi ptr [ %95, %93 ], [ %38, %37 ]
  %50 = load i16, ptr %47, align 2, !tbaa !42
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %46, %51
  %53 = getelementptr inbounds i16, ptr %47, i64 1
  %54 = load i16, ptr %48, align 2, !tbaa !42
  %55 = zext i16 %54 to i32
  %56 = mul nsw i32 %55, %6
  %57 = add nsw i32 %52, %56
  %58 = getelementptr inbounds i16, ptr %48, i64 1
  %59 = icmp ult i32 %57, 1000
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = trunc i32 %57 to i16
  br label %90

62:                                               ; preds = %45
  %63 = icmp sgt i32 %57, -1
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = lshr i32 %57, 3
  %66 = mul i32 %65, 16777
  %67 = lshr i32 %66, 21
  %68 = mul nuw nsw i32 %67, 64536
  %69 = add nuw i32 %68, %57
  %70 = trunc i32 %69 to i16
  store i16 %70, ptr %49, align 2, !tbaa !42
  %71 = and i32 %69, 65528
  %72 = icmp ult i32 %71, 1000
  br i1 %72, label %93, label %73

73:                                               ; preds = %64
  %74 = add nuw nsw i32 %67, 1
  %75 = add i16 %70, -1000
  br label %90

76:                                               ; preds = %62
  %77 = add nsw i32 %57, 1000000
  %78 = lshr i32 %77, 3
  %79 = mul i32 %78, 16777
  %80 = lshr i32 %79, 21
  %81 = mul nuw nsw i32 %80, 64536
  %82 = add i32 %81, %77
  %83 = trunc i32 %82 to i16
  store i16 %83, ptr %49, align 2, !tbaa !42
  %84 = add nsw i32 %80, -1000
  %85 = and i32 %82, 65528
  %86 = icmp ult i32 %85, 1000
  br i1 %86, label %93, label %87

87:                                               ; preds = %76
  %88 = add nsw i32 %80, -999
  %89 = add i16 %83, -1000
  br label %90

90:                                               ; preds = %60, %73, %87
  %91 = phi i16 [ %89, %87 ], [ %75, %73 ], [ %61, %60 ]
  %92 = phi i32 [ %88, %87 ], [ %74, %73 ], [ 0, %60 ]
  store i16 %91, ptr %49, align 2, !tbaa !42
  br label %93

93:                                               ; preds = %90, %76, %64
  %94 = phi i32 [ %67, %64 ], [ %84, %76 ], [ %92, %90 ]
  %95 = getelementptr inbounds i16, ptr %49, i64 1
  %96 = icmp ult ptr %95, %42
  br i1 %96, label %45, label %97, !llvm.loop !135

97:                                               ; preds = %93, %37
  %98 = phi ptr [ %38, %37 ], [ %95, %93 ]
  %99 = phi ptr [ %2, %37 ], [ %58, %93 ]
  %100 = phi ptr [ %39, %37 ], [ %53, %93 ]
  %101 = phi i32 [ 0, %37 ], [ %94, %93 ]
  %102 = icmp ult ptr %98, %43
  br i1 %102, label %103, label %163

103:                                              ; preds = %97
  %104 = getelementptr inbounds i16, ptr %0, i64 %8
  br label %105

105:                                              ; preds = %103, %159
  %106 = phi i32 [ %101, %103 ], [ %160, %159 ]
  %107 = phi ptr [ %100, %103 ], [ %122, %159 ]
  %108 = phi ptr [ %99, %103 ], [ %121, %159 ]
  %109 = phi ptr [ %98, %103 ], [ %161, %159 ]
  %110 = icmp ult ptr %107, %104
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i16, ptr %107, align 2, !tbaa !42
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds i16, ptr %107, i64 1
  br label %120

115:                                              ; preds = %105
  %116 = load i16, ptr %108, align 2, !tbaa !42
  %117 = zext i16 %116 to i32
  %118 = mul nsw i32 %117, %6
  %119 = getelementptr inbounds i16, ptr %108, i64 1
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi ptr [ %108, %111 ], [ %119, %115 ]
  %122 = phi ptr [ %114, %111 ], [ %107, %115 ]
  %123 = phi i32 [ %113, %111 ], [ %118, %115 ]
  %124 = add nsw i32 %123, %106
  %125 = icmp ult i32 %124, 1000
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = trunc i32 %124 to i16
  br label %156

128:                                              ; preds = %120
  %129 = icmp sgt i32 %124, -1
  br i1 %129, label %130, label %142

130:                                              ; preds = %128
  %131 = lshr i32 %124, 3
  %132 = mul i32 %131, 16777
  %133 = lshr i32 %132, 21
  %134 = mul nuw nsw i32 %133, 64536
  %135 = add nuw i32 %134, %124
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %109, align 2, !tbaa !42
  %137 = and i32 %135, 65528
  %138 = icmp ult i32 %137, 1000
  br i1 %138, label %159, label %139

139:                                              ; preds = %130
  %140 = add nuw nsw i32 %133, 1
  %141 = add i16 %136, -1000
  br label %156

142:                                              ; preds = %128
  %143 = add nsw i32 %124, 1000000
  %144 = lshr i32 %143, 3
  %145 = mul i32 %144, 16777
  %146 = lshr i32 %145, 21
  %147 = mul nuw nsw i32 %146, 64536
  %148 = add i32 %147, %143
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %109, align 2, !tbaa !42
  %150 = add nsw i32 %146, -1000
  %151 = and i32 %148, 65528
  %152 = icmp ult i32 %151, 1000
  br i1 %152, label %159, label %153

153:                                              ; preds = %142
  %154 = add nsw i32 %146, -999
  %155 = add i16 %149, -1000
  br label %156

156:                                              ; preds = %126, %139, %153
  %157 = phi i16 [ %155, %153 ], [ %141, %139 ], [ %127, %126 ]
  %158 = phi i32 [ %154, %153 ], [ %140, %139 ], [ 0, %126 ]
  store i16 %157, ptr %109, align 2, !tbaa !42
  br label %159

159:                                              ; preds = %156, %142, %130
  %160 = phi i32 [ %133, %130 ], [ %150, %142 ], [ %158, %156 ]
  %161 = getelementptr inbounds i16, ptr %109, i64 1
  %162 = icmp ult ptr %161, %43
  br i1 %162, label %105, label %163, !llvm.loop !136

163:                                              ; preds = %159, %97
  %164 = phi ptr [ %98, %97 ], [ %161, %159 ]
  %165 = phi i32 [ %101, %97 ], [ %160, %159 ]
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %196, label %167

167:                                              ; preds = %163
  %168 = icmp sgt i32 %165, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %167
  %170 = icmp ugt ptr %43, %5
  br i1 %170, label %174, label %187

171:                                              ; preds = %167
  %172 = trunc i32 %165 to i16
  store i16 %172, ptr %164, align 2, !tbaa !42
  %173 = getelementptr inbounds i16, ptr %164, i64 1
  br label %196

174:                                              ; preds = %169, %174
  %175 = phi i32 [ %184, %174 ], [ 1, %169 ]
  %176 = phi ptr [ %185, %174 ], [ %5, %169 ]
  %177 = add nuw nsw i32 %175, 999
  %178 = load i16, ptr %176, align 2, !tbaa !42
  %179 = zext i16 %178 to i32
  %180 = sub nsw i32 %177, %179
  %181 = icmp sgt i32 %180, 999
  %182 = trunc i32 %180 to i16
  %183 = select i1 %181, i16 0, i16 %182
  %184 = zext i1 %181 to i32
  store i16 %183, ptr %176, align 2, !tbaa !42
  %185 = getelementptr inbounds i16, ptr %176, i64 1
  %186 = icmp ult ptr %185, %43
  br i1 %186, label %174, label %187, !llvm.loop !137

187:                                              ; preds = %174, %169
  %188 = phi ptr [ %5, %169 ], [ %185, %174 ]
  %189 = phi i32 [ 1, %169 ], [ %184, %174 ]
  %190 = xor i32 %165, -1
  %191 = add i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = trunc i32 %191 to i16
  store i16 %194, ptr %188, align 2, !tbaa !42
  %195 = getelementptr inbounds i16, ptr %188, i64 1
  br label %196

196:                                              ; preds = %187, %193, %163, %171
  %197 = phi ptr [ %173, %171 ], [ %164, %163 ], [ %5, %193 ], [ %5, %187 ]
  %198 = phi ptr [ %5, %171 ], [ %5, %163 ], [ %195, %193 ], [ %188, %187 ]
  %199 = ptrtoint ptr %197 to i64
  %200 = ptrtoint ptr %198 to i64
  %201 = sub i64 %199, %200
  %202 = lshr exact i64 %201, 1
  %203 = trunc i64 %202 to i32
  ret i32 %203
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @decUnitCompare(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 !prof !34 {
  %6 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #19
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = icmp sgt i32 %1, %3
  br i1 %9, label %108, label %10

10:                                               ; preds = %8
  %11 = icmp slt i32 %1, %3
  br i1 %11, label %108, label %12

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
  br i1 %21, label %108, label %22

22:                                               ; preds = %16
  %23 = load i16, ptr %20, align 2, !tbaa !42
  %24 = load i16, ptr %19, align 2, !tbaa !42
  %25 = icmp ugt i16 %23, %24
  br i1 %25, label %108, label %26

26:                                               ; preds = %22
  %27 = icmp ult i16 %23, %24
  br i1 %27, label %108, label %16, !llvm.loop !80

28:                                               ; preds = %5
  %29 = icmp slt i32 %4, 50
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = sext i32 %4 to i64
  %32 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !51
  %34 = zext i8 %33 to i32
  br label %38

35:                                               ; preds = %28
  %36 = add nuw nsw i32 %4, 2
  %37 = udiv i32 %36, 3
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %34, %30 ], [ %37, %35 ]
  %40 = add nsw i32 %39, %3
  %41 = icmp slt i32 %40, %1
  br i1 %41, label %108, label %42

42:                                               ; preds = %38
  %43 = add nsw i32 %1, 1
  br i1 %29, label %44, label %49

44:                                               ; preds = %42
  %45 = sext i32 %4 to i64
  %46 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = zext i8 %47 to i32
  br label %52

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %4, 2
  %51 = udiv i32 %50, 3
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %48, %44 ], [ %51, %49 ]
  %54 = add nsw i32 %53, %3
  %55 = icmp slt i32 %43, %54
  br i1 %55, label %108, label %56

56:                                               ; preds = %52
  br i1 %29, label %57, label %62

57:                                               ; preds = %56
  %58 = sext i32 %4 to i64
  %59 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !51
  %61 = zext i8 %60 to i32
  br label %65

62:                                               ; preds = %56
  %63 = add nuw nsw i32 %4, 2
  %64 = udiv i32 %63, 3
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i32 [ %61, %57 ], [ %64, %62 ]
  %67 = add nsw i32 %66, %3
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 %1)
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 1
  %72 = icmp ugt i64 %71, 50
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = tail call noalias ptr @malloc(i64 noundef %71) #20
  %75 = icmp eq ptr %74, null
  br i1 %75, label %108, label %76

76:                                               ; preds = %73, %65
  %77 = phi ptr [ null, %65 ], [ %74, %73 ]
  %78 = phi ptr [ %6, %65 ], [ %74, %73 ]
  %79 = sdiv i32 %4, 3
  %80 = srem i32 %4, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !48
  %84 = sub nsw i32 0, %83
  %85 = call fastcc i32 @decUnitAddSub(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %79, ptr noundef nonnull %78, i32 noundef %84)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %76
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds i16, ptr %78, i64 %88
  %90 = getelementptr inbounds i16, ptr %89, i64 -1
  %91 = icmp ult ptr %78, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87, %96
  %93 = phi ptr [ %97, %96 ], [ %78, %87 ]
  %94 = load i16, ptr %93, align 2, !tbaa !42
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr inbounds i16, ptr %93, i64 1
  %98 = icmp ult ptr %97, %90
  br i1 %98, label %92, label %99, !llvm.loop !138

99:                                               ; preds = %92, %96, %87
  %100 = phi ptr [ %78, %87 ], [ %93, %92 ], [ %97, %96 ]
  %101 = load i16, ptr %100, align 2, !tbaa !42
  %102 = icmp ne i16 %101, 0
  %103 = zext i1 %102 to i32
  br label %104

104:                                              ; preds = %76, %99
  %105 = phi i32 [ %103, %99 ], [ -1, %76 ]
  %106 = icmp eq ptr %77, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @free(ptr noundef %77) #19
  br label %108

108:                                              ; preds = %26, %16, %22, %73, %104, %107, %52, %38, %10, %8
  %109 = phi i32 [ 1, %8 ], [ -1, %10 ], [ 1, %38 ], [ -1, %52 ], [ %105, %107 ], [ %105, %104 ], [ -2147483648, %73 ], [ 1, %22 ], [ 0, %16 ], [ -1, %26 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #19
  ret i32 %109
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decApplyRound(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #5 !prof !34 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %195, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !76
  switch i32 %8, label %59 [
    i32 7, label %9
    i32 5, label %21
    i32 4, label %23
    i32 3, label %26
    i32 2, label %35
    i32 1, label %38
    i32 0, label %41
    i32 6, label %50
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !42
  %12 = urem i16 %11, 5
  %13 = icmp slt i32 %2, 0
  %14 = icmp ne i16 %12, 1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %62, label %16

16:                                               ; preds = %9
  %17 = icmp sgt i32 %2, 0
  %18 = icmp eq i16 %12, 0
  %19 = select i1 %17, i1 %18, i1 false
  %20 = zext i1 %19 to i32
  br label %62

21:                                               ; preds = %6
  %22 = ashr i32 %2, 31
  br label %62

23:                                               ; preds = %6
  %24 = icmp sgt i32 %2, 5
  %25 = zext i1 %24 to i32
  br label %62

26:                                               ; preds = %6
  %27 = icmp sgt i32 %2, 5
  br i1 %27, label %62, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %2, 5
  br i1 %29, label %30, label %62

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !42
  %33 = and i16 %32, 1
  %34 = zext nneg i16 %33 to i32
  br label %62

35:                                               ; preds = %6
  %36 = icmp sgt i32 %2, 4
  %37 = zext i1 %36 to i32
  br label %62

38:                                               ; preds = %6
  %39 = icmp sgt i32 %2, 0
  %40 = zext i1 %39 to i32
  br label %62

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %43 = load i8, ptr %42, align 4, !tbaa !35
  %44 = icmp sgt i8 %43, -1
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = ashr i32 %2, 31
  br label %62

47:                                               ; preds = %41
  %48 = icmp sgt i32 %2, 0
  %49 = zext i1 %48 to i32
  br label %62

50:                                               ; preds = %6
  %51 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %52 = load i8, ptr %51, align 4, !tbaa !35
  %53 = icmp sgt i8 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = ashr i32 %2, 31
  br label %62

56:                                               ; preds = %50
  %57 = icmp sgt i32 %2, 0
  %58 = zext i1 %57 to i32
  br label %62

59:                                               ; preds = %6
  %60 = load i32, ptr %3, align 4, !tbaa !48
  %61 = or i32 %60, 64
  store i32 %61, ptr %3, align 4, !tbaa !48
  br label %62

62:                                               ; preds = %56, %54, %47, %45, %38, %35, %30, %23, %21, %16, %26, %9, %28, %59
  %63 = phi i32 [ 0, %59 ], [ 0, %28 ], [ -1, %9 ], [ %20, %16 ], [ %22, %21 ], [ %25, %23 ], [ 1, %26 ], [ %34, %30 ], [ %37, %35 ], [ %40, %38 ], [ %46, %45 ], [ %49, %47 ], [ %55, %54 ], [ %58, %56 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %195, label %65

65:                                               ; preds = %62
  %66 = icmp sgt i32 %63, 0
  %67 = load i32, ptr %0, align 4, !tbaa !41
  %68 = getelementptr inbounds i8, ptr %0, i64 10
  %69 = icmp ult i32 %67, 4
  br i1 %66, label %70, label %119

70:                                               ; preds = %65
  br i1 %69, label %71, label %108

71:                                               ; preds = %114, %70
  %72 = phi i64 [ 10, %70 ], [ %116, %114 ]
  %73 = phi i32 [ %67, %70 ], [ %115, %114 ]
  %74 = phi ptr [ %68, %70 ], [ %117, %114 ]
  %75 = load i16, ptr %74, align 2, !tbaa !42
  %76 = zext i16 %75 to i32
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !48
  %80 = add i32 %79, -1
  %81 = icmp eq i32 %80, %76
  br i1 %81, label %82, label %180

82:                                               ; preds = %71
  %83 = add nsw i32 %73, -1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !48
  %87 = trunc i32 %86 to i16
  store i16 %87, ptr %74, align 2, !tbaa !42
  %88 = icmp slt i64 %72, 12
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = add nsw i64 %72, -2
  %91 = add nuw i64 %72, 1
  %92 = tail call i64 @llvm.smin.i64(i64 %72, i64 13)
  %93 = sub i64 %91, %92
  %94 = and i64 %93, -2
  %95 = sub i64 %90, %94
  %96 = getelementptr i8, ptr %0, i64 %95
  %97 = add i64 %94, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %96, i8 0, i64 %97, i1 false), !tbaa !42
  br label %98

98:                                               ; preds = %89, %82
  %99 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !40
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !40
  %102 = add nsw i32 %101, %67
  %103 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !70
  %105 = add nsw i32 %104, 1
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %195

107:                                              ; preds = %98
  tail call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3)
  br label %195

108:                                              ; preds = %70, %114
  %109 = phi ptr [ %117, %114 ], [ %68, %70 ]
  %110 = phi i32 [ %115, %114 ], [ %67, %70 ]
  %111 = phi i64 [ %116, %114 ], [ 10, %70 ]
  %112 = load i16, ptr %109, align 2, !tbaa !42
  %113 = icmp eq i16 %112, 999
  br i1 %113, label %114, label %180

114:                                              ; preds = %108
  %115 = add i32 %110, -3
  %116 = add nuw nsw i64 %111, 2
  %117 = getelementptr inbounds i8, ptr %0, i64 %116
  %118 = icmp ult i32 %115, 4
  br i1 %118, label %71, label %108, !llvm.loop !139

119:                                              ; preds = %65
  br i1 %69, label %120, label %169

120:                                              ; preds = %175, %119
  %121 = phi i64 [ 10, %119 ], [ %177, %175 ]
  %122 = phi i32 [ %67, %119 ], [ %176, %175 ]
  %123 = phi ptr [ %68, %119 ], [ %178, %175 ]
  %124 = load i16, ptr %123, align 2, !tbaa !42
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %122, -1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !48
  %130 = icmp eq i32 %129, %125
  br i1 %130, label %131, label %180

131:                                              ; preds = %120
  %132 = zext nneg i32 %122 to i64
  %133 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !48
  %135 = trunc i32 %134 to i16
  %136 = add i16 %135, -1
  store i16 %136, ptr %123, align 2, !tbaa !42
  %137 = icmp slt i64 %121, 12
  br i1 %137, label %147, label %138

138:                                              ; preds = %131
  %139 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 3), align 4, !tbaa !48
  %140 = trunc i32 %139 to i16
  %141 = add i16 %140, -1
  br label %142

142:                                              ; preds = %138, %142
  %143 = phi i64 [ %121, %138 ], [ %144, %142 ]
  %144 = add nsw i64 %143, -2
  %145 = getelementptr inbounds i8, ptr %0, i64 %144
  store i16 %141, ptr %145, align 2, !tbaa !42
  %146 = icmp slt i64 %143, 14
  br i1 %146, label %147, label %142, !llvm.loop !140

147:                                              ; preds = %142, %131
  %148 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !40
  %150 = add nsw i32 %149, -1
  store i32 %150, ptr %148, align 4, !tbaa !40
  %151 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !69
  %153 = load i32, ptr %1, align 4, !tbaa !62
  %154 = add i32 %152, 1
  %155 = sub i32 %154, %153
  %156 = icmp eq i32 %149, %155
  br i1 %156, label %157, label %195

157:                                              ; preds = %147
  %158 = icmp eq i32 %122, 1
  %159 = icmp eq i32 %67, 1
  %160 = and i1 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i16 0, ptr %123, align 2, !tbaa !42
  br label %166

162:                                              ; preds = %157
  %163 = trunc i32 %129 to i16
  %164 = add i16 %163, -1
  store i16 %164, ptr %123, align 2, !tbaa !42
  %165 = add nsw i32 %67, -1
  store i32 %165, ptr %0, align 4, !tbaa !41
  br label %166

166:                                              ; preds = %162, %161
  store i32 %149, ptr %148, align 4, !tbaa !40
  %167 = load i32, ptr %3, align 4, !tbaa !48
  %168 = or i32 %167, 14368
  store i32 %168, ptr %3, align 4, !tbaa !48
  br label %195

169:                                              ; preds = %119, %175
  %170 = phi ptr [ %178, %175 ], [ %68, %119 ]
  %171 = phi i32 [ %176, %175 ], [ %67, %119 ]
  %172 = phi i64 [ %177, %175 ], [ 10, %119 ]
  %173 = load i16, ptr %170, align 2, !tbaa !42
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = add i32 %171, -3
  %177 = add nuw nsw i64 %172, 2
  %178 = getelementptr inbounds i8, ptr %0, i64 %177
  %179 = icmp ult i32 %176, 4
  br i1 %179, label %120, label %169, !llvm.loop !141

180:                                              ; preds = %169, %108, %120, %71
  %181 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %182 = load i32, ptr %0, align 4, !tbaa !41
  %183 = icmp slt i32 %182, 50
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = sext i32 %182 to i64
  %186 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !51
  %188 = zext i8 %187 to i32
  br label %192

189:                                              ; preds = %180
  %190 = add nuw nsw i32 %182, 2
  %191 = udiv i32 %190, 3
  br label %192

192:                                              ; preds = %189, %184
  %193 = phi i32 [ %188, %184 ], [ %191, %189 ]
  %194 = tail call fastcc i32 @decUnitAddSub(ptr noundef nonnull %181, i32 noundef %193, ptr noundef nonnull @uarrone, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %181, i32 noundef %63)
  br label %195

195:                                              ; preds = %166, %147, %107, %98, %62, %4, %192
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetOverflow(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !35
  %6 = and i8 %5, -128
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !42
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 4, !tbaa !41
  %12 = icmp eq i32 %11, 1
  %13 = and i8 %5, 112
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %20 = load i8, ptr %19, align 4, !tbaa !64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %1, align 4, !tbaa !62
  %24 = add i32 %18, 1
  %25 = sub i32 %24, %23
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ %18, %16 ]
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = icmp sgt i32 %29, %27
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  store i32 %27, ptr %28, align 4, !tbaa !40
  br label %67

32:                                               ; preds = %10, %3
  store i8 0, ptr %4, align 4, !tbaa !35
  %33 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %33, align 4, !tbaa !40
  store i32 1, ptr %0, align 4, !tbaa !41
  store i16 0, ptr %7, align 2, !tbaa !42
  %34 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !76
  switch i32 %35, label %63 [
    i32 5, label %42
    i32 7, label %42
    i32 0, label %36
    i32 6, label %38
  ]

36:                                               ; preds = %32
  %37 = icmp eq i8 %6, 0
  br label %40

38:                                               ; preds = %32
  %39 = icmp ne i8 %6, 0
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i1 [ %37, %36 ], [ %39, %38 ]
  br i1 %41, label %63, label %42

42:                                               ; preds = %40, %32, %32
  %43 = load i32, ptr %1, align 4, !tbaa !62
  store i32 %43, ptr %0, align 4, !tbaa !41
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %45
  %46 = phi i32 [ %48, %45 ], [ %43, %42 ]
  %47 = phi ptr [ %49, %45 ], [ %7, %42 ]
  store i16 999, ptr %47, align 2, !tbaa !42
  %48 = add nsw i32 %46, -3
  %49 = getelementptr inbounds i16, ptr %47, i64 1
  %50 = icmp sgt i32 %46, 6
  br i1 %50, label %45, label %51, !llvm.loop !113

51:                                               ; preds = %45, %42
  %52 = phi ptr [ %7, %42 ], [ %49, %45 ]
  %53 = phi i32 [ %43, %42 ], [ %48, %45 ]
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !48
  %57 = trunc i32 %56 to i16
  %58 = add i16 %57, -1
  store i16 %58, ptr %52, align 2, !tbaa !42
  store i8 0, ptr %4, align 4, !tbaa !35
  %59 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !70
  %61 = sub i32 %60, %43
  %62 = add i32 %61, 1
  store i32 %62, ptr %33, align 4, !tbaa !40
  br label %65

63:                                               ; preds = %32, %40
  %64 = or disjoint i8 %6, 64
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i8 [ %64, %63 ], [ %6, %51 ]
  store i8 %66, ptr %4, align 4, !tbaa !35
  br label %67

67:                                               ; preds = %65, %31
  %68 = phi i32 [ 1024, %31 ], [ 2592, %65 ]
  %69 = load i32, ptr %2, align 4, !tbaa !48
  %70 = or i32 %69, %68
  store i32 %70, ptr %2, align 4, !tbaa !48
  br label %71

71:                                               ; preds = %67, %26
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetSubnormal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #5 !prof !34 {
  %5 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = load i32, ptr %1, align 4, !tbaa !62
  %9 = add i32 %7, 1
  %10 = sub i32 %9, %8
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !42
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, ptr %0, align 4, !tbaa !41
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !35
  %20 = and i8 %19, 112
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = icmp slt i32 %24, %10
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  store i32 %10, ptr %23, align 4, !tbaa !40
  %27 = load i32, ptr %3, align 4, !tbaa !48
  %28 = or i32 %27, 1024
  br label %75

29:                                               ; preds = %17, %14, %4
  %30 = load i32, ptr %3, align 4, !tbaa !48
  %31 = or i32 %30, 4096
  store i32 %31, ptr %3, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !40
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !94
  %42 = load i32, ptr %0, align 4, !tbaa !41
  %43 = sub nsw i32 %42, %34
  store i32 %43, ptr %5, align 4, !tbaa !62
  %44 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !69
  %46 = sub nsw i32 %45, %34
  store i32 %46, ptr %44, align 4, !tbaa !69
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef %42, ptr noundef %2, ptr noundef nonnull %3)
  %47 = load i32, ptr %2, align 4, !tbaa !48
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %47, ptr noundef nonnull %3)
  %48 = load i32, ptr %3, align 4, !tbaa !48
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = or i32 %48, 8192
  store i32 %52, ptr %3, align 4, !tbaa !48
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i32, ptr %32, align 4, !tbaa !40
  %55 = icmp sgt i32 %54, %10
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, ptr %0, align 4, !tbaa !41
  %58 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %11, i32 noundef %57, i32 noundef 1)
  store i32 %58, ptr %0, align 4, !tbaa !41
  %59 = load i32, ptr %32, align 4, !tbaa !40
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %32, align 4, !tbaa !40
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i16, ptr %11, align 2, !tbaa !42
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, ptr %0, align 4, !tbaa !41
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %69 = load i8, ptr %68, align 4, !tbaa !35
  %70 = and i8 %69, 112
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, ptr %3, align 4, !tbaa !48
  %74 = or i32 %73, 1024
  br label %75

75:                                               ; preds = %26, %39, %72
  %76 = phi i32 [ %74, %72 ], [ %40, %39 ], [ %28, %26 ]
  store i32 %76, ptr %3, align 4, !tbaa !48
  br label %77

77:                                               ; preds = %75, %61, %64, %67, %36, %22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }

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
!35 = !{!36, !38, i64 8}
!36 = !{!"", !37, i64 0, !37, i64 4, !38, i64 8, !38, i64 10}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!36, !37, i64 4}
!41 = !{!36, !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !38, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = !{!37, !37, i64 0}
!49 = distinct !{!49, !45, !46}
!50 = distinct !{!50, !45, !46}
!51 = !{!38, !38, i64 0}
!52 = distinct !{!52, !45, !46}
!53 = distinct !{!53, !45, !46}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = distinct !{!57, !45, !46}
!58 = distinct !{!58, !46}
!59 = distinct !{!59, !46}
!60 = distinct !{!60, !45, !46}
!61 = distinct !{!61, !46}
!62 = !{!63, !37, i64 0}
!63 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !38, i64 24}
!64 = !{!63, !38, i64 24}
!65 = distinct !{!65, !45, !46}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !45, !46}
!68 = distinct !{!68, !46}
!69 = !{!63, !37, i64 8}
!70 = !{!63, !37, i64 4}
!71 = distinct !{!71, !45, !46}
!72 = distinct !{!72, !45, !46}
!73 = distinct !{!73, !46}
!74 = distinct !{!74, !45, !46}
!75 = distinct !{!75, !46}
!76 = !{!63, !37, i64 12}
!77 = distinct !{!77, !45, !46}
!78 = distinct !{!78, !45, !46}
!79 = distinct !{!79, !45, !46}
!80 = distinct !{!80, !45, !46}
!81 = distinct !{!81, !45, !46}
!82 = distinct !{!82, !45, !46}
!83 = distinct !{!83, !45, !46}
!84 = distinct !{!84, !45, !46}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !45, !46}
!88 = distinct !{!88, !46}
!89 = distinct !{!89, !46}
!90 = !{i32 -2147483648, i32 2}
!91 = distinct !{!91, !45, !46}
!92 = distinct !{!92, !46}
!93 = !{i32 0, i32 2}
!94 = !{i64 0, i64 4, !48, i64 4, i64 4, !48, i64 8, i64 4, !48, i64 12, i64 4, !48, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 1, !51}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !45, !46}
!98 = distinct !{!98, !45, !46}
!99 = distinct !{!99, !45, !46}
!100 = distinct !{!100, !45, !46}
!101 = !{!102, !102, i64 0}
!102 = !{!"long", !38, i64 0}
!103 = distinct !{!103, !45, !46}
!104 = distinct !{!104, !45, !46}
!105 = distinct !{!105, !45, !46}
!106 = distinct !{!106, !45, !46}
!107 = distinct !{!107, !45, !46}
!108 = distinct !{!108, !45, !46}
!109 = distinct !{!109, !45, !46}
!110 = distinct !{!110, !45, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !45, !46}
!113 = distinct !{!113, !46}
!114 = distinct !{!114, !45, !46}
!115 = distinct !{!115, !45, !46}
!116 = distinct !{!116, !46}
!117 = distinct !{!117, !45, !46}
!118 = distinct !{!118, !45, !46}
!119 = distinct !{!119, !45, !46}
!120 = distinct !{!120, !45, !46}
!121 = distinct !{!121, !45, !46}
!122 = distinct !{!122, !45, !46}
!123 = distinct !{!123, !45, !46}
!124 = distinct !{!124, !45, !46}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !45, !46}
!127 = !{!63, !37, i64 16}
!128 = !{!63, !37, i64 20}
!129 = distinct !{!129, !45, !46}
!130 = distinct !{!130, !45, !46}
!131 = distinct !{!131, !45, !46}
!132 = distinct !{!132, !45, !46}
!133 = distinct !{!133, !45, !46}
!134 = distinct !{!134, !45, !46}
!135 = distinct !{!135, !45, !46}
!136 = distinct !{!136, !45, !46}
!137 = distinct !{!137, !45, !46}
!138 = distinct !{!138, !45, !46}
!139 = distinct !{!139, !46}
!140 = distinct !{!140, !45, !46}
!141 = distinct !{!141, !46}
