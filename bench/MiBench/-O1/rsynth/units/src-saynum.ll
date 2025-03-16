; ModuleID = 'src/saynum.c'
source_filename = "src/saynum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@saynum_id = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"billion\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"million\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@Cardinals = internal unnamed_addr constant [20 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@Twenties = internal unnamed_addr constant [8 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"billionth\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"millionth\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"thousandth\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"hundredth\00", align 1
@reltable.xlate_ordinal = internal unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal to i64)) to i32)], align 4
@reltable.xlate_ordinal.68 = internal unnamed_addr constant [20 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.55 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.56 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.57 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.58 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.61 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.63 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.xlate_ordinal.68 to i64)) to i32)], align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"twentieth\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"thirtieth\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"fortieth\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"fiftieth\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"sixtieth\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"seventieth\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"eightieth\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"ninetieth\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"zeroth\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"fifth\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"sixth\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"seventh\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"eighth\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"ninth\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"tenth\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"eleventh\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"twelfth\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"thirteenth\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"fourteenth\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"fifteenth\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"sixteenth\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"seventeenth\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"eighteenth\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"nineteenth\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 @xlate_string(ptr noundef nonnull @.str.1, ptr noundef %1) #3
  %6 = sub nsw i64 0, %0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ %6, %4 ], [ %0, %2 ]
  %9 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %10 = icmp sgt i64 %8, 999999999
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = udiv i64 %8, 1000000000
  %13 = tail call i32 @xlate_cardinal(i64 noundef %12, ptr noundef %1)
  %14 = add i32 %13, %9
  %15 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3, ptr noundef %1) #3
  %16 = add i32 %14, %15
  %17 = urem i64 %8, 1000000000
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %11
  %20 = icmp ult i64 %17, 100
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %23 = add i32 %22, %16
  br label %24

24:                                               ; preds = %19, %21, %7
  %25 = phi i64 [ %17, %21 ], [ %17, %19 ], [ %8, %7 ]
  %26 = phi i32 [ %23, %21 ], [ %16, %19 ], [ %9, %7 ]
  %27 = icmp sgt i64 %25, 999999
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = udiv i64 %25, 1000000
  %30 = tail call i32 @xlate_cardinal(i64 noundef %29, ptr noundef %1)
  %31 = add i32 %30, %26
  %32 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5, ptr noundef %1) #3
  %33 = add i32 %31, %32
  %34 = urem i64 %25, 1000000
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %95, label %36

36:                                               ; preds = %28
  %37 = icmp ult i64 %34, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %40 = add i32 %39, %33
  br label %41

41:                                               ; preds = %36, %38, %24
  %42 = phi i64 [ %34, %38 ], [ %34, %36 ], [ %25, %24 ]
  %43 = phi i32 [ %40, %38 ], [ %33, %36 ], [ %26, %24 ]
  %44 = add i64 %42, -1000
  %45 = icmp ult i64 %44, 100
  %46 = icmp sgt i64 %42, 1999
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = udiv i64 %42, 1000
  %50 = tail call i32 @xlate_cardinal(i64 noundef %49, ptr noundef %1)
  %51 = add i32 %50, %43
  %52 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6, ptr noundef %1) #3
  %53 = add i32 %51, %52
  %54 = urem i64 %42, 1000
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %48
  %57 = icmp ult i64 %54, 100
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %60 = add i32 %59, %53
  br label %61

61:                                               ; preds = %56, %58, %41
  %62 = phi i64 [ %54, %58 ], [ %54, %56 ], [ %42, %41 ]
  %63 = phi i32 [ %60, %58 ], [ %53, %56 ], [ %43, %41 ]
  %64 = icmp sgt i64 %62, 99
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = udiv i64 %62, 100
  %67 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = tail call i32 @xlate_string(ptr noundef %68, ptr noundef %1) #3
  %70 = add i32 %69, %63
  %71 = tail call i32 @xlate_string(ptr noundef nonnull @.str.7, ptr noundef %1) #3
  %72 = add i32 %70, %71
  %73 = urem i64 %62, 100
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %65, %61
  %76 = phi i64 [ %73, %65 ], [ %62, %61 ]
  %77 = phi i32 [ %72, %65 ], [ %63, %61 ]
  %78 = icmp sgt i64 %76, 19
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = add nsw i64 %76, -20
  %81 = udiv i64 %80, 10
  %82 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = tail call i32 @xlate_string(ptr noundef %83, ptr noundef %1) #3
  %85 = add i32 %84, %77
  %86 = urem i64 %76, 10
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79, %75
  %89 = phi i64 [ %86, %79 ], [ %76, %75 ]
  %90 = phi i32 [ %85, %79 ], [ %77, %75 ]
  %91 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  %93 = tail call i32 @xlate_string(ptr noundef %92, ptr noundef %1) #3
  %94 = add i32 %93, %90
  br label %95

95:                                               ; preds = %79, %65, %48, %28, %11, %88
  %96 = phi i32 [ %94, %88 ], [ %16, %11 ], [ %33, %28 ], [ %53, %48 ], [ %72, %65 ], [ %85, %79 ]
  ret i32 %96
}

declare i32 @xlate_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 @xlate_string(ptr noundef nonnull @.str.1, ptr noundef %1) #3
  %6 = sub nsw i64 0, %0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ %6, %4 ], [ %0, %2 ]
  %9 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %10 = icmp sgt i64 %8, 999999999
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = udiv i64 %8, 1000000000
  %13 = tail call i32 @xlate_cardinal(i64 noundef %12, ptr noundef %1)
  %14 = add i32 %13, %9
  %15 = urem i64 %8, 1000000000
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = tail call i32 @xlate_string(ptr noundef nonnull @.str.8, ptr noundef %1) #3
  %19 = add i32 %18, %14
  br label %114

20:                                               ; preds = %11
  %21 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3, ptr noundef %1) #3
  %22 = add i32 %21, %14
  %23 = icmp ult i64 %15, 100
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %26 = add i32 %25, %22
  br label %27

27:                                               ; preds = %20, %24, %7
  %28 = phi i64 [ %15, %24 ], [ %15, %20 ], [ %8, %7 ]
  %29 = phi i32 [ %26, %24 ], [ %22, %20 ], [ %9, %7 ]
  %30 = icmp sgt i64 %28, 999999
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = udiv i64 %28, 1000000
  %33 = tail call i32 @xlate_cardinal(i64 noundef %32, ptr noundef %1)
  %34 = add i32 %33, %29
  %35 = urem i64 %28, 1000000
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = tail call i32 @xlate_string(ptr noundef nonnull @.str.9, ptr noundef %1) #3
  %39 = add i32 %38, %34
  br label %114

40:                                               ; preds = %31
  %41 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5, ptr noundef %1) #3
  %42 = add i32 %41, %34
  %43 = icmp ult i64 %35, 100
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %46 = add i32 %45, %42
  br label %47

47:                                               ; preds = %40, %44, %27
  %48 = phi i64 [ %35, %44 ], [ %35, %40 ], [ %28, %27 ]
  %49 = phi i32 [ %46, %44 ], [ %42, %40 ], [ %29, %27 ]
  %50 = add i64 %48, -1000
  %51 = icmp ult i64 %50, 100
  %52 = icmp sgt i64 %48, 1999
  %53 = or i1 %52, %51
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = udiv i64 %48, 1000
  %56 = tail call i32 @xlate_cardinal(i64 noundef %55, ptr noundef %1)
  %57 = add i32 %56, %49
  %58 = urem i64 %48, 1000
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = tail call i32 @xlate_string(ptr noundef nonnull @.str.10, ptr noundef %1) #3
  %62 = add i32 %61, %57
  br label %114

63:                                               ; preds = %54
  %64 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6, ptr noundef %1) #3
  %65 = add i32 %64, %57
  %66 = icmp ult i64 %58, 100
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1) #3
  %69 = add i32 %68, %65
  br label %70

70:                                               ; preds = %63, %67, %47
  %71 = phi i64 [ %58, %67 ], [ %58, %63 ], [ %48, %47 ]
  %72 = phi i32 [ %69, %67 ], [ %65, %63 ], [ %49, %47 ]
  %73 = icmp sgt i64 %71, 99
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = udiv i64 %71, 100
  %76 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = tail call i32 @xlate_string(ptr noundef %77, ptr noundef %1) #3
  %79 = add i32 %78, %72
  %80 = urem i64 %71, 100
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = tail call i32 @xlate_string(ptr noundef nonnull @.str.11, ptr noundef %1) #3
  %84 = add i32 %83, %79
  br label %114

85:                                               ; preds = %74
  %86 = tail call i32 @xlate_string(ptr noundef nonnull @.str.7, ptr noundef %1) #3
  %87 = add i32 %86, %79
  br label %88

88:                                               ; preds = %85, %70
  %89 = phi i64 [ %80, %85 ], [ %71, %70 ]
  %90 = phi i32 [ %87, %85 ], [ %72, %70 ]
  %91 = icmp sgt i64 %89, 19
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = urem i64 %89, 10
  %94 = icmp eq i64 %93, 0
  %95 = add nsw i64 %89, -20
  %96 = udiv i64 %95, 10
  br i1 %94, label %97, label %102

97:                                               ; preds = %92
  %98 = shl i64 %96, 2
  %99 = call ptr @llvm.load.relative.i64(ptr @reltable.xlate_ordinal, i64 %98)
  %100 = tail call i32 @xlate_string(ptr noundef %99, ptr noundef %1) #3
  %101 = add i32 %100, %90
  br label %114

102:                                              ; preds = %92
  %103 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %96
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = tail call i32 @xlate_string(ptr noundef %104, ptr noundef %1) #3
  %106 = add i32 %105, %90
  br label %107

107:                                              ; preds = %102, %88
  %108 = phi i64 [ %93, %102 ], [ %89, %88 ]
  %109 = phi i32 [ %106, %102 ], [ %90, %88 ]
  %110 = shl i64 %108, 2
  %111 = call ptr @llvm.load.relative.i64(ptr @reltable.xlate_ordinal.68, i64 %110)
  %112 = tail call i32 @xlate_string(ptr noundef %111, ptr noundef %1) #3
  %113 = add i32 %112, %109
  br label %114

114:                                              ; preds = %107, %97, %82, %60, %37, %17
  %115 = phi i32 [ %19, %17 ], [ %39, %37 ], [ %62, %60 ], [ %84, %82 ], [ %101, %97 ], [ %113, %107 ]
  ret i32 %115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
