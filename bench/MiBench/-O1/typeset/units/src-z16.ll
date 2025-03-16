; ModuleID = 'src/z16.c'
source_filename = "src/z16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"FindShift: units\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FindShift: type\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*pg)!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*sg)!\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AdjustSize: Up(x) == x!\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"cannot recover from earlier errors\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"AdjustSize: COL_THR!\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"AdjustSize: type(y) != SPLIT!\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"AdjustSize: actual(index)==nilobj!\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AdjustSize: index non-C!\00", align 1
@GalleySym = external local_unnamed_addr global ptr, align 8
@ForceGalleySym = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"size constraint %s,%s,%s broken by %s,%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"size adjustment of %s not implemented\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"AdjustSize: span\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AdjustSize:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @FindShift(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 7
  switch i16 %7, label %26 [
    i16 1, label %8
    i16 5, label %12
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !5
  %11 = sext i16 %10 to i32
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3, i32 1
  %18 = getelementptr inbounds [2 x i32], ptr %17, i64 0, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = add nsw i32 %19, %16
  %21 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %20, %23
  %25 = sdiv i32 %24, 4096
  br label %29

26:                                               ; preds = %3
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %27, ptr noundef nonnull @.str.1) #4
  br label %29

29:                                               ; preds = %26, %12, %8
  %30 = phi i32 [ undef, %26 ], [ %25, %12 ], [ %11, %8 ]
  %31 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !5
  switch i16 %32, label %41 [
    i16 158, label %33
    i16 159, label %44
    i16 160, label %39
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3
  %35 = sext i32 %2 to i64
  %36 = getelementptr inbounds [2 x i32], ptr %34, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = sub nsw i32 %30, %37
  br label %44

39:                                               ; preds = %29
  %40 = sub nsw i32 0, %30
  br label %44

41:                                               ; preds = %29
  %42 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %43 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %42, ptr noundef nonnull @.str.2) #4
  br label %44

44:                                               ; preds = %29, %41, %39, %33
  %45 = phi i32 [ undef, %41 ], [ %40, %39 ], [ %38, %33 ], [ %30, %29 ]
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetNeighbours(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  store ptr null, ptr %2, align 8, !tbaa !8
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.word_type, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %7, %59
  %13 = phi ptr [ %60, %59 ], [ %8, %7 ]
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %13, %12 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %17, ptr %3, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !5
  switch i8 %19, label %23 [
    i8 0, label %14
    i8 9, label %20
  ]

20:                                               ; preds = %14
  %21 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %17) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %59, label %26

23:                                               ; preds = %14
  %24 = add i8 %19, -9
  %25 = icmp ult i8 %24, 91
  br i1 %25, label %26, label %59

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %0, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi ptr [ %27, %26 ], [ %31, %28 ]
  %30 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %28, label %35

35:                                               ; preds = %28
  %36 = add i8 %33, -119
  %37 = icmp ult i8 %36, 20
  br i1 %37, label %41, label %52

38:                                               ; preds = %45
  %39 = add i8 %50, -119
  %40 = icmp ult i8 %39, 20
  br i1 %40, label %41, label %52

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %43, %38 ], [ %0, %35 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi ptr [ %44, %41 ], [ %48, %45 ]
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  store ptr %48, ptr %2, align 8, !tbaa !8
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !5
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %45, label %38

52:                                               ; preds = %38, %35
  %53 = phi ptr [ %0, %35 ], [ %43, %38 ]
  %54 = phi i8 [ %33, %35 ], [ %50, %38 ]
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %58 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %57, ptr noundef nonnull @.str.3) #4
  br label %64

59:                                               ; preds = %20, %23
  %60 = load ptr, ptr %13, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.word_type, ptr %60, i64 0, i32 1
  %62 = load i8, ptr %61, align 8, !tbaa !5
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %12, label %64

64:                                               ; preds = %59, %7, %52, %56
  %65 = phi ptr [ %53, %52 ], [ %53, %56 ], [ %0, %7 ], [ %0, %59 ]
  store ptr null, ptr %4, align 8, !tbaa !8
  %66 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !5
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %64, %117
  %72 = phi ptr [ %119, %117 ], [ %67, %64 ]
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %76, %73 ], [ %72, %71 ]
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %74, i64 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  store ptr %76, ptr %5, align 8, !tbaa !8
  %77 = getelementptr inbounds %struct.word_type, ptr %76, i64 0, i32 1
  %78 = load i8, ptr %77, align 8, !tbaa !5
  switch i8 %78, label %82 [
    i8 0, label %73
    i8 9, label %79
  ]

79:                                               ; preds = %73
  %80 = tail call i32 @SplitIsDefinite(ptr noundef nonnull %76) #4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %117, label %85

82:                                               ; preds = %73
  %83 = add i8 %78, -9
  %84 = icmp ult i8 %83, 91
  br i1 %84, label %85, label %117

85:                                               ; preds = %82, %79
  %86 = load ptr, ptr %72, align 8, !tbaa !5
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi ptr [ %86, %85 ], [ %90, %87 ]
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  store ptr %90, ptr %4, align 8, !tbaa !8
  %91 = getelementptr inbounds %struct.word_type, ptr %90, i64 0, i32 1
  %92 = load i8, ptr %91, align 8, !tbaa !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %87, label %94

94:                                               ; preds = %87
  %95 = add i8 %92, -119
  %96 = icmp ult i8 %95, 20
  br i1 %96, label %100, label %111

97:                                               ; preds = %104
  %98 = add i8 %109, -119
  %99 = icmp ult i8 %98, 20
  br i1 %99, label %100, label %111

100:                                              ; preds = %94, %97
  %101 = phi ptr [ %102, %97 ], [ %72, %94 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  br label %104

104:                                              ; preds = %104, %100
  %105 = phi ptr [ %103, %100 ], [ %107, %104 ]
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  store ptr %107, ptr %4, align 8, !tbaa !8
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %104, label %97

111:                                              ; preds = %97, %94
  %112 = phi i8 [ %92, %94 ], [ %109, %97 ]
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %116 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %115, ptr noundef nonnull @.str.4) #4
  br label %123

117:                                              ; preds = %79, %82
  %118 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.word_type, ptr %119, i64 0, i32 1
  %121 = load i8, ptr %120, align 8, !tbaa !5
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %71, label %123

123:                                              ; preds = %117, %64, %111, %114
  %124 = icmp eq i32 %1, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %123
  %126 = load ptr, ptr %2, align 8, !tbaa !8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.gapobj_type, ptr %126, i64 0, i32 3
  %130 = load i16, ptr %129, align 4
  %131 = and i16 %130, 256
  %132 = icmp eq i16 %131, 0
  %133 = select i1 %132, i32 153, i32 152
  br label %134

134:                                              ; preds = %125, %128, %123
  %135 = phi i32 [ 151, %123 ], [ 152, %125 ], [ %133, %128 ]
  store i32 %135, ptr %6, align 4, !tbaa !10
  ret void
}

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AdjustSize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %1, ptr %10, align 4, !tbaa !10
  store i32 %2, ptr %11, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  tail call void @SetLengthDim(i32 noundef %3) #4
  %16 = sext i32 %3 to i64
  %17 = icmp eq i32 %3, 0
  %18 = icmp eq i32 %3, 1
  %19 = icmp ne i32 %3, 1
  br label %20

20:                                               ; preds = %783, %4
  %21 = phi i32 [ %1, %4 ], [ %785, %783 ]
  %22 = phi ptr [ %0, %4 ], [ %784, %783 ]
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3
  %24 = getelementptr inbounds [2 x i32], ptr %23, i64 0, i64 %16
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32, ptr %11, align 4, !tbaa !10
  %29 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %30 = getelementptr inbounds [2 x i32], ptr %29, i64 0, i64 %16
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !5
  %36 = add i8 %35, -2
  %37 = icmp ult i8 %36, 7
  br i1 %37, label %38, label %786

38:                                               ; preds = %33, %27, %20
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, %22
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %45 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %44, ptr noundef nonnull @.str.5) #4
  %46 = load i32, ptr %10, align 4, !tbaa !10
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %46, %43 ], [ %21, %38 ]
  %49 = icmp slt i32 %48, 0
  %50 = load i32, ptr %11, align 4
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %55 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %54) #4
  br label %56

56:                                               ; preds = %47, %53
  %57 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !5
  %59 = add i8 %58, -15
  %60 = icmp ult i8 %59, 2
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = icmp eq i8 %58, 16
  %63 = icmp ne i32 %3, 0
  %64 = xor i1 %63, %62
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %67 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %66, ptr noundef nonnull @.str.7) #4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %69, ptr %24, align 4, !tbaa !5
  %70 = load i32, ptr %11, align 4, !tbaa !10
  %71 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %72 = getelementptr inbounds [2 x i32], ptr %71, i64 0, i64 %16
  store i32 %70, ptr %72, align 4, !tbaa !5
  %73 = load ptr, ptr %40, align 8, !tbaa !5
  %74 = icmp eq ptr %73, %22
  br i1 %74, label %786, label %75

75:                                               ; preds = %68, %85
  %76 = phi ptr [ %89, %85 ], [ %73, %68 ]
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %79, %77 ], [ %76, %75 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 1
  %81 = load i8, ptr %80, align 8, !tbaa !5
  switch i8 %81, label %82 [
    i8 0, label %77
    i8 9, label %85
  ]

82:                                               ; preds = %77
  %83 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %84 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %83, ptr noundef nonnull @.str.8) #4
  br label %85

85:                                               ; preds = %77, %82
  %86 = load i32, ptr %10, align 4, !tbaa !10
  %87 = load i32, ptr %11, align 4, !tbaa !10
  call void @AdjustSize(ptr noundef nonnull %79, i32 noundef %86, i32 noundef %87, i32 noundef %3)
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, %22
  br i1 %90, label %786, label %75

91:                                               ; preds = %56
  %92 = select i1 %17, ptr %40, ptr %39
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  br label %95

95:                                               ; preds = %113, %91
  %96 = phi ptr [ %94, %91 ], [ %115, %113 ]
  %97 = phi i32 [ 0, %91 ], [ %114, %113 ]
  %98 = load ptr, ptr %96, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  switch i8 %100, label %778 [
    i8 0, label %101
    i8 8, label %116
    i8 9, label %282
    i8 36, label %282
    i8 37, label %282
    i8 40, label %282
    i8 41, label %282
    i8 20, label %282
    i8 21, label %282
    i8 22, label %282
    i8 23, label %282
    i8 24, label %282
    i8 25, label %282
    i8 96, label %282
    i8 97, label %282
    i8 98, label %282
    i8 99, label %282
    i8 35, label %282
    i8 51, label %282
    i8 30, label %287
    i8 31, label %287
    i8 32, label %296
    i8 33, label %296
    i8 34, label %305
    i8 50, label %323
    i8 26, label %351
    i8 27, label %351
    i8 38, label %395
    i8 39, label %395
    i8 28, label %400
    i8 29, label %400
    i8 16, label %450
    i8 15, label %450
    i8 19, label %470
    i8 18, label %470
    i8 17, label %470
    i8 44, label %735
    i8 43, label %739
    i8 46, label %739
    i8 42, label %750
    i8 45, label %750
    i8 13, label %761
    i8 14, label %761
  ]

101:                                              ; preds = %95, %101
  %102 = phi ptr [ %104, %101 ], [ %98, %95 ]
  %103 = getelementptr inbounds [2 x %struct.LIST], ptr %102, i64 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.word_type, ptr %104, i64 0, i32 1
  %106 = load i8, ptr %105, align 8, !tbaa !5
  switch i8 %106, label %113 [
    i8 0, label %101
    i8 1, label %107
  ]

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.gapobj_type, ptr %104, i64 0, i32 3
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, 256
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %111, i32 %97, i32 1
  br label %113

113:                                              ; preds = %101, %107
  %114 = phi i32 [ %112, %107 ], [ %97, %101 ]
  %115 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  br label %95

116:                                              ; preds = %95
  %117 = getelementptr inbounds i8, ptr %98, i64 42
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 256
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %122, ptr %24, align 4, !tbaa !5
  %123 = load i32, ptr %11, align 4, !tbaa !10
  %124 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %125 = getelementptr inbounds [2 x i32], ptr %124, i64 0, i64 %16
  store i32 %123, ptr %125, align 4, !tbaa !5
  br label %786

126:                                              ; preds = %116
  br i1 %18, label %130, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %93, align 8, !tbaa !5
  %129 = icmp eq ptr %128, %98
  br i1 %129, label %151, label %135

130:                                              ; preds = %126
  %131 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %131, ptr %24, align 4, !tbaa !5
  %132 = load i32, ptr %11, align 4, !tbaa !10
  %133 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %134 = getelementptr inbounds [2 x i32], ptr %133, i64 0, i64 %16
  store i32 %132, ptr %134, align 4, !tbaa !5
  br label %786

135:                                              ; preds = %127, %148
  %136 = phi ptr [ %149, %148 ], [ %128, %127 ]
  br label %137

137:                                              ; preds = %135, %137
  %138 = phi ptr [ %140, %137 ], [ %136, %135 ]
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.word_type, ptr %140, i64 0, i32 1
  %142 = load i8, ptr %141, align 8, !tbaa !5
  switch i8 %142, label %148 [
    i8 0, label %137
    i8 1, label %143
  ]

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.gapobj_type, ptr %140, i64 0, i32 3
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %145, 512
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %137, %143
  %149 = load ptr, ptr %136, align 8, !tbaa !5
  %150 = icmp eq ptr %149, %98
  br i1 %150, label %151, label %135

151:                                              ; preds = %148, %143, %127
  %152 = phi ptr [ %98, %127 ], [ %136, %143 ], [ %98, %148 ]
  %153 = phi i1 [ true, %127 ], [ false, %143 ], [ true, %148 ]
  %154 = load ptr, ptr %94, align 8, !tbaa !5
  %155 = icmp eq ptr %154, %98
  br i1 %155, label %178, label %156

156:                                              ; preds = %151, %174
  %157 = phi ptr [ %176, %174 ], [ %154, %151 ]
  br label %158

158:                                              ; preds = %156, %158
  %159 = phi ptr [ %161, %158 ], [ %157, %156 ]
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %159, i64 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 1
  %163 = load i8, ptr %162, align 8, !tbaa !5
  switch i8 %163, label %174 [
    i8 0, label %158
    i8 1, label %164
  ]

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.gapobj_type, ptr %161, i64 0, i32 3
  %166 = load i16, ptr %165, align 4
  %167 = and i16 %166, 512
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %170, ptr %24, align 4, !tbaa !5
  %171 = load i32, ptr %11, align 4, !tbaa !10
  %172 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %173 = getelementptr inbounds [2 x i32], ptr %172, i64 0, i64 %16
  store i32 %171, ptr %173, align 4, !tbaa !5
  br label %193

174:                                              ; preds = %158, %164
  %175 = getelementptr inbounds %struct.LIST, ptr %157, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = icmp eq ptr %176, %98
  br i1 %177, label %178, label %156

178:                                              ; preds = %174, %151
  %179 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %179, ptr %24, align 4, !tbaa !5
  %180 = load i32, ptr %11, align 4, !tbaa !10
  %181 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %182 = getelementptr inbounds [2 x i32], ptr %181, i64 0, i64 %16
  store i32 %180, ptr %182, align 4, !tbaa !5
  br i1 %153, label %183, label %193

183:                                              ; preds = %178
  %184 = load i16, ptr %117, align 2
  %185 = and i16 %184, 32
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, ptr %10, align 4, !tbaa !10
  %189 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %190 = getelementptr inbounds [2 x i32], ptr %189, i64 0, i64 %16
  %191 = load i32, ptr %190, align 4, !tbaa !5
  %192 = call i32 @llvm.smax.i32(i32 %188, i32 %191)
  br label %228

193:                                              ; preds = %169, %183, %178
  %194 = phi ptr [ %157, %169 ], [ %98, %183 ], [ %98, %178 ]
  %195 = getelementptr inbounds %struct.LIST, ptr %152, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = icmp eq ptr %196, %194
  br i1 %197, label %228, label %198

198:                                              ; preds = %193, %220
  %199 = phi ptr [ %224, %220 ], [ %196, %193 ]
  %200 = phi i32 [ %222, %220 ], [ 0, %193 ]
  %201 = phi i32 [ %221, %220 ], [ 0, %193 ]
  br label %202

202:                                              ; preds = %198, %202
  %203 = phi ptr [ %205, %202 ], [ %199, %198 ]
  %204 = getelementptr inbounds [2 x %struct.LIST], ptr %203, i64 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.word_type, ptr %205, i64 0, i32 1
  %207 = load i8, ptr %206, align 8, !tbaa !5
  switch i8 %207, label %208 [
    i8 0, label %202
    i8 1, label %220
  ]

208:                                              ; preds = %202
  %209 = add i8 %207, -119
  %210 = icmp ult i8 %209, 20
  br i1 %210, label %220, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.word_type, ptr %205, i64 0, i32 3
  %213 = getelementptr inbounds [2 x i32], ptr %212, i64 0, i64 %16
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = call i32 @llvm.smax.i32(i32 %201, i32 %214)
  %216 = getelementptr inbounds %struct.word_type, ptr %205, i64 0, i32 3, i32 1
  %217 = getelementptr inbounds [2 x i32], ptr %216, i64 0, i64 %16
  %218 = load i32, ptr %217, align 4, !tbaa !5
  %219 = call i32 @llvm.smax.i32(i32 %200, i32 %218)
  br label %220

220:                                              ; preds = %202, %208, %211
  %221 = phi i32 [ %215, %211 ], [ %201, %208 ], [ %201, %202 ]
  %222 = phi i32 [ %219, %211 ], [ %200, %208 ], [ %200, %202 ]
  %223 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !5
  %225 = icmp eq ptr %224, %194
  br i1 %225, label %226, label %198

226:                                              ; preds = %220
  %227 = add nuw nsw i32 %222, %221
  br label %228

228:                                              ; preds = %193, %226, %187
  %229 = phi i32 [ %192, %187 ], [ 0, %226 ], [ 0, %193 ]
  %230 = phi i32 [ %180, %187 ], [ %227, %226 ], [ 0, %193 ]
  store i32 %229, ptr %10, align 4, !tbaa !10
  %231 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %232 = getelementptr inbounds [2 x i32], ptr %231, i64 0, i64 %16
  %233 = load i32, ptr %232, align 4, !tbaa !5
  %234 = call i32 @llvm.smax.i32(i32 %230, i32 %233)
  store i32 %234, ptr %11, align 4, !tbaa !10
  %235 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %236 = getelementptr inbounds [2 x i32], ptr %235, i64 0, i64 %16
  %237 = load i32, ptr %236, align 4, !tbaa !5
  %238 = icmp eq i32 %237, %229
  br i1 %238, label %239, label %244

239:                                              ; preds = %228
  %240 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %241 = getelementptr inbounds [2 x i32], ptr %240, i64 0, i64 %16
  %242 = load i32, ptr %241, align 4, !tbaa !5
  %243 = icmp eq i32 %242, %234
  br i1 %243, label %786, label %244

244:                                              ; preds = %239, %228
  store i32 %229, ptr %236, align 4, !tbaa !5
  %245 = load i32, ptr %11, align 4, !tbaa !10
  %246 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %247 = getelementptr inbounds [2 x i32], ptr %246, i64 0, i64 %16
  store i32 %245, ptr %247, align 4, !tbaa !5
  %248 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  %250 = icmp eq ptr %249, %98
  br i1 %250, label %786, label %251

251:                                              ; preds = %244, %251
  %252 = phi ptr [ %253, %251 ], [ %249, %244 ]
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.word_type, ptr %253, i64 0, i32 1
  %255 = load i8, ptr %254, align 8, !tbaa !5
  switch i8 %255, label %786 [
    i8 0, label %251
    i8 122, label %256
  ]

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.closure_type, ptr %253, i64 0, i32 5
  %258 = load ptr, ptr %257, align 8, !tbaa !5
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %262 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %261, ptr noundef nonnull @.str.9) #4
  %263 = load ptr, ptr %257, align 8, !tbaa !5
  br label %264

264:                                              ; preds = %260, %256
  %265 = phi ptr [ %263, %260 ], [ %258, %256 ]
  %266 = getelementptr inbounds %struct.word_type, ptr %265, i64 0, i32 1
  %267 = load i8, ptr %266, align 8, !tbaa !5
  %268 = icmp eq i8 %267, 2
  br i1 %268, label %273, label %269

269:                                              ; preds = %264
  %270 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %271 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %270, ptr noundef nonnull @.str.10) #4
  %272 = load ptr, ptr %257, align 8, !tbaa !5
  br label %273

273:                                              ; preds = %269, %264
  %274 = phi ptr [ %272, %269 ], [ %265, %264 ]
  %275 = getelementptr inbounds %struct.closure_type, ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !5
  %277 = load ptr, ptr @GalleySym, align 8, !tbaa !8
  %278 = icmp eq ptr %276, %277
  %279 = load ptr, ptr @ForceGalleySym, align 8
  %280 = icmp eq ptr %276, %279
  %281 = select i1 %278, i1 true, i1 %280
  br i1 %281, label %783, label %786

282:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  %283 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %283, ptr %24, align 4, !tbaa !5
  %284 = load i32, ptr %11, align 4, !tbaa !10
  %285 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %286 = getelementptr inbounds [2 x i32], ptr %285, i64 0, i64 %16
  store i32 %284, ptr %286, align 4, !tbaa !5
  br label %783

287:                                              ; preds = %95, %95
  %288 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %289 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %289, ptr %24, align 4, !tbaa !5
  %290 = load i32, ptr %11, align 4, !tbaa !10
  %291 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %292 = getelementptr inbounds [2 x i32], ptr %291, i64 0, i64 %16
  store i32 %290, ptr %292, align 4, !tbaa !5
  %293 = load i8, ptr %288, align 8, !tbaa !5
  %294 = icmp ne i8 %293, 30
  %295 = xor i1 %17, %294
  br i1 %295, label %786, label %783

296:                                              ; preds = %95, %95
  %297 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %298 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %298, ptr %24, align 4, !tbaa !5
  %299 = load i32, ptr %11, align 4, !tbaa !10
  %300 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %301 = getelementptr inbounds [2 x i32], ptr %300, i64 0, i64 %16
  store i32 %299, ptr %301, align 4, !tbaa !5
  %302 = load i8, ptr %297, align 8, !tbaa !5
  %303 = icmp ne i8 %302, 32
  %304 = xor i1 %17, %303
  br i1 %304, label %786, label %783

305:                                              ; preds = %95
  %306 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %306, ptr %24, align 4, !tbaa !5
  %307 = load i32, ptr %11, align 4, !tbaa !10
  %308 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %309 = getelementptr inbounds [2 x i32], ptr %308, i64 0, i64 %16
  store i32 %307, ptr %309, align 4, !tbaa !5
  %310 = load i32, ptr %10, align 4, !tbaa !10
  br i1 %17, label %311, label %317

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4
  %313 = load i32, ptr %312, align 8, !tbaa !5
  %314 = sdiv i32 %313, 128
  %315 = mul nsw i32 %310, %314
  store i32 %315, ptr %10, align 4, !tbaa !10
  %316 = mul nsw i32 %307, %314
  store i32 %316, ptr %11, align 4, !tbaa !10
  br label %783

317:                                              ; preds = %305
  %318 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 2
  %319 = load i32, ptr %318, align 8, !tbaa !5
  %320 = sdiv i32 %319, 128
  %321 = mul nsw i32 %310, %320
  store i32 %321, ptr %10, align 4, !tbaa !10
  %322 = mul nsw i32 %307, %320
  store i32 %322, ptr %11, align 4, !tbaa !10
  br label %783

323:                                              ; preds = %95
  %324 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %324, ptr %24, align 4, !tbaa !5
  %325 = load i32, ptr %11, align 4, !tbaa !10
  %326 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %327 = getelementptr inbounds [2 x i32], ptr %326, i64 0, i64 %16
  store i32 %325, ptr %327, align 4, !tbaa !5
  %328 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 4
  %329 = load i32, ptr %328, align 4, !tbaa !5
  call void @RotateSize(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %22, i32 noundef %329) #4
  %330 = load i32, ptr %12, align 4, !tbaa !10
  %331 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %332 = load i32, ptr %331, align 8, !tbaa !5
  %333 = icmp eq i32 %330, %332
  %334 = load i32, ptr %13, align 4, !tbaa !10
  br i1 %333, label %335, label %339

335:                                              ; preds = %323
  %336 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %337 = load i32, ptr %336, align 8, !tbaa !5
  %338 = icmp eq i32 %334, %337
  br i1 %338, label %340, label %339

339:                                              ; preds = %335, %323
  call void @AdjustSize(ptr noundef nonnull %98, i32 noundef %330, i32 noundef %334, i32 noundef 0)
  br label %340

340:                                              ; preds = %339, %335
  %341 = load i32, ptr %14, align 4, !tbaa !10
  %342 = getelementptr inbounds i8, ptr %98, i64 52
  %343 = load i32, ptr %342, align 4, !tbaa !5
  %344 = icmp eq i32 %341, %343
  %345 = load i32, ptr %15, align 4, !tbaa !10
  br i1 %344, label %346, label %350

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1, i64 4
  %348 = load i32, ptr %347, align 4, !tbaa !5
  %349 = icmp eq i32 %345, %348
  br i1 %349, label %786, label %350

350:                                              ; preds = %346, %340
  call void @AdjustSize(ptr noundef nonnull %98, i32 noundef %341, i32 noundef %345, i32 noundef 1)
  br label %786

351:                                              ; preds = %95, %95
  %352 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %353 = icmp ne i8 %100, 26
  %354 = xor i1 %17, %353
  %355 = load i32, ptr %10, align 4, !tbaa !10
  br i1 %354, label %356, label %391

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4
  %358 = load i32, ptr %357, align 8, !tbaa !5
  %359 = icmp sgt i32 %355, %358
  br i1 %359, label %370, label %360

360:                                              ; preds = %356
  %361 = load i32, ptr %11, align 4, !tbaa !10
  %362 = add nsw i32 %361, %355
  %363 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 1
  %364 = load i32, ptr %363, align 4, !tbaa !5
  %365 = icmp sgt i32 %362, %364
  br i1 %365, label %370, label %366

366:                                              ; preds = %360
  %367 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 2
  %368 = load i32, ptr %367, align 8, !tbaa !5
  %369 = icmp sgt i32 %361, %368
  br i1 %369, label %370, label %386

370:                                              ; preds = %366, %360, %356
  %371 = call ptr @EchoLength(i32 noundef %358) #4
  %372 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 1
  %373 = load i32, ptr %372, align 4, !tbaa !5
  %374 = call ptr @EchoLength(i32 noundef %373) #4
  %375 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 2
  %376 = load i32, ptr %375, align 8, !tbaa !5
  %377 = call ptr @EchoLength(i32 noundef %376) #4
  %378 = load i32, ptr %10, align 4, !tbaa !10
  %379 = call ptr @EchoLength(i32 noundef %378) #4
  %380 = load i32, ptr %11, align 4, !tbaa !10
  %381 = call ptr @EchoLength(i32 noundef %380) #4
  %382 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %352, ptr noundef %371, ptr noundef %374, ptr noundef %377, ptr noundef %379, ptr noundef %381) #4
  store i32 8388607, ptr %357, align 8, !tbaa !5
  %383 = load i32, ptr %10, align 4, !tbaa !10
  %384 = load i32, ptr %11, align 4, !tbaa !10
  %385 = add nsw i32 %384, %383
  store i32 %385, ptr %372, align 4, !tbaa !5
  store i32 8388607, ptr %375, align 8, !tbaa !5
  br label %386

386:                                              ; preds = %370, %366
  %387 = phi i32 [ %383, %370 ], [ %355, %366 ]
  store i32 %387, ptr %24, align 4, !tbaa !5
  %388 = load i32, ptr %11, align 4, !tbaa !10
  %389 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %390 = getelementptr inbounds [2 x i32], ptr %389, i64 0, i64 %16
  store i32 %388, ptr %390, align 4, !tbaa !5
  call void @EnlargeToConstraint(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %357) #4
  br label %783

391:                                              ; preds = %351
  store i32 %355, ptr %24, align 4, !tbaa !5
  %392 = load i32, ptr %11, align 4, !tbaa !10
  %393 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %394 = getelementptr inbounds [2 x i32], ptr %393, i64 0, i64 %16
  store i32 %392, ptr %394, align 4, !tbaa !5
  br label %783

395:                                              ; preds = %95, %95
  %396 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %396, ptr %24, align 4, !tbaa !5
  %397 = load i32, ptr %11, align 4, !tbaa !10
  %398 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %399 = getelementptr inbounds [2 x i32], ptr %398, i64 0, i64 %16
  store i32 %397, ptr %399, align 4, !tbaa !5
  br label %783

400:                                              ; preds = %95, %95
  %401 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %402 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %402, ptr %24, align 4, !tbaa !5
  %403 = load i32, ptr %11, align 4, !tbaa !10
  %404 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %405 = getelementptr inbounds [2 x i32], ptr %404, i64 0, i64 %16
  store i32 %403, ptr %405, align 4, !tbaa !5
  %406 = load i8, ptr %401, align 8, !tbaa !5
  %407 = icmp ne i8 %406, 28
  %408 = xor i1 %17, %407
  br i1 %408, label %409, label %783

409:                                              ; preds = %400
  %410 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4
  %411 = load i16, ptr %410, align 8
  %412 = lshr i16 %411, 10
  %413 = and i16 %412, 7
  switch i16 %413, label %425 [
    i16 1, label %414
    i16 5, label %418
  ]

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %416 = load i16, ptr %415, align 2, !tbaa !5
  %417 = sext i16 %416 to i32
  br label %428

418:                                              ; preds = %409
  %419 = add nsw i32 %403, %402
  %420 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %421 = load i16, ptr %420, align 2, !tbaa !5
  %422 = sext i16 %421 to i32
  %423 = mul nsw i32 %419, %422
  %424 = sdiv i32 %423, 4096
  br label %428

425:                                              ; preds = %409
  %426 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %427 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %426, ptr noundef nonnull @.str.1) #4
  br label %428

428:                                              ; preds = %425, %418, %414
  %429 = phi i32 [ undef, %425 ], [ %424, %418 ], [ %417, %414 ]
  %430 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %431 = load i16, ptr %430, align 2, !tbaa !5
  switch i16 %431, label %437 [
    i16 158, label %432
    i16 159, label %440
    i16 160, label %435
  ]

432:                                              ; preds = %428
  %433 = load i32, ptr %24, align 4, !tbaa !5
  %434 = sub nsw i32 %429, %433
  br label %440

435:                                              ; preds = %428
  %436 = sub nsw i32 0, %429
  br label %440

437:                                              ; preds = %428
  %438 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %439 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %438, ptr noundef nonnull @.str.2) #4
  br label %440

440:                                              ; preds = %428, %432, %435, %437
  %441 = phi i32 [ undef, %437 ], [ %436, %435 ], [ %434, %432 ], [ %429, %428 ]
  %442 = load i32, ptr %10, align 4
  %443 = add nsw i32 %442, %441
  %444 = call i32 @llvm.smax.i32(i32 %443, i32 0)
  %445 = call i32 @llvm.smin.i32(i32 %444, i32 8388607)
  store i32 %445, ptr %10, align 4, !tbaa !10
  %446 = load i32, ptr %11, align 4
  %447 = sub nsw i32 %446, %441
  %448 = call i32 @llvm.smax.i32(i32 %447, i32 0)
  %449 = call i32 @llvm.smin.i32(i32 %448, i32 8388607)
  store i32 %449, ptr %11, align 4, !tbaa !10
  br label %783

450:                                              ; preds = %95, %95
  %451 = icmp ne i8 %100, 16
  %452 = xor i1 %17, %451
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %455 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %454, ptr noundef nonnull @.str.7) #4
  br label %456

456:                                              ; preds = %453, %450
  %457 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %457, ptr %24, align 4, !tbaa !5
  %458 = load i32, ptr %11, align 4, !tbaa !10
  %459 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %460 = getelementptr inbounds [2 x i32], ptr %459, i64 0, i64 %16
  store i32 %458, ptr %460, align 4, !tbaa !5
  %461 = load i32, ptr %10, align 4, !tbaa !10
  %462 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %463 = getelementptr inbounds [2 x i32], ptr %462, i64 0, i64 %16
  %464 = load i32, ptr %463, align 4, !tbaa !5
  %465 = call i32 @llvm.smax.i32(i32 %461, i32 %464)
  store i32 %465, ptr %10, align 4, !tbaa !10
  %466 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %467 = getelementptr inbounds [2 x i32], ptr %466, i64 0, i64 %16
  %468 = load i32, ptr %467, align 4, !tbaa !5
  %469 = call i32 @llvm.smax.i32(i32 %458, i32 %468)
  store i32 %469, ptr %11, align 4, !tbaa !10
  br label %783

470:                                              ; preds = %95, %95, %95
  %471 = icmp eq i8 %100, 19
  %472 = xor i1 %19, %471
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %93, align 8, !tbaa !5
  %475 = icmp eq ptr %474, %98
  br i1 %475, label %652, label %636

476:                                              ; preds = %470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  br i1 %17, label %477, label %492

477:                                              ; preds = %476
  %478 = icmp eq i8 %100, 17
  br i1 %478, label %479, label %492

479:                                              ; preds = %477
  %480 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4, i32 0, i32 1
  %481 = load i8, ptr %480, align 4
  %482 = and i8 %481, 112
  %483 = icmp eq i8 %482, 112
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %485, ptr %23, align 4, !tbaa !5
  %486 = load i32, ptr %11, align 4, !tbaa !10
  %487 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  store i32 %486, ptr %487, align 4, !tbaa !5
  %488 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %489 = load i32, ptr %488, align 4, !tbaa !5
  store i32 %489, ptr %10, align 4, !tbaa !10
  %490 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %491 = load i32, ptr %490, align 4, !tbaa !5
  br label %634

492:                                              ; preds = %476, %477, %479
  %493 = phi ptr [ %40, %479 ], [ %40, %477 ], [ %39, %476 ]
  %494 = load ptr, ptr %493, align 8, !tbaa !5
  call void @SetNeighbours(ptr noundef %494, i32 noundef %97, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %495 = load i8, ptr %57, align 8, !tbaa !5
  %496 = add i8 %495, -2
  %497 = icmp ult i8 %496, 7
  %498 = load ptr, ptr %5, align 8, !tbaa !8
  %499 = icmp eq ptr %498, null
  br i1 %497, label %500, label %544

500:                                              ; preds = %492
  br i1 %499, label %501, label %505

501:                                              ; preds = %500
  %502 = load i32, ptr %10, align 4, !tbaa !10
  %503 = load ptr, ptr %7, align 8, !tbaa !8
  %504 = icmp eq ptr %503, null
  br i1 %504, label %516, label %518

505:                                              ; preds = %500
  %506 = load ptr, ptr %6, align 8, !tbaa !8
  %507 = getelementptr inbounds %struct.word_type, ptr %506, i64 0, i32 3, i32 1
  %508 = getelementptr inbounds [2 x i32], ptr %507, i64 0, i64 %16
  %509 = load i32, ptr %508, align 4, !tbaa !5
  %510 = load i32, ptr %10, align 4, !tbaa !10
  %511 = load i32, ptr %11, align 4, !tbaa !10
  %512 = getelementptr inbounds %struct.gapobj_type, ptr %498, i64 0, i32 3
  %513 = call i32 @MinGap(i32 noundef %509, i32 noundef %510, i32 noundef %511, ptr noundef nonnull %512) #4
  %514 = load ptr, ptr %7, align 8, !tbaa !8
  %515 = icmp eq ptr %514, null
  br i1 %515, label %533, label %518

516:                                              ; preds = %501
  %517 = load i32, ptr %11, align 4, !tbaa !10
  br label %592

518:                                              ; preds = %501, %505
  %519 = phi ptr [ %514, %505 ], [ %503, %501 ]
  %520 = phi i32 [ %513, %505 ], [ %502, %501 ]
  %521 = load i32, ptr %11, align 4, !tbaa !10
  %522 = load ptr, ptr %8, align 8, !tbaa !8
  %523 = getelementptr inbounds %struct.word_type, ptr %522, i64 0, i32 3
  %524 = getelementptr inbounds [2 x i32], ptr %523, i64 0, i64 %16
  %525 = load i32, ptr %524, align 4, !tbaa !5
  %526 = getelementptr inbounds %struct.word_type, ptr %522, i64 0, i32 3, i32 1
  %527 = getelementptr inbounds [2 x i32], ptr %526, i64 0, i64 %16
  %528 = load i32, ptr %527, align 4, !tbaa !5
  %529 = getelementptr inbounds %struct.gapobj_type, ptr %519, i64 0, i32 3
  %530 = call i32 @MinGap(i32 noundef %521, i32 noundef %525, i32 noundef %528, ptr noundef nonnull %529) #4
  br i1 %499, label %531, label %536

531:                                              ; preds = %518
  %532 = load i32, ptr %524, align 4, !tbaa !5
  br label %592

533:                                              ; preds = %505
  %534 = load i32, ptr %11, align 4, !tbaa !10
  %535 = load i32, ptr %508, align 4, !tbaa !5
  br label %592

536:                                              ; preds = %518
  %537 = load ptr, ptr %6, align 8, !tbaa !8
  %538 = getelementptr inbounds %struct.word_type, ptr %537, i64 0, i32 3, i32 1
  %539 = getelementptr inbounds [2 x i32], ptr %538, i64 0, i64 %16
  %540 = load i32, ptr %539, align 4, !tbaa !5
  %541 = load i32, ptr %524, align 4, !tbaa !5
  %542 = load i32, ptr %527, align 4, !tbaa !5
  %543 = call i32 @MinGap(i32 noundef %540, i32 noundef %541, i32 noundef %542, ptr noundef nonnull %529) #4
  br label %592

544:                                              ; preds = %492
  br i1 %499, label %545, label %549

545:                                              ; preds = %544
  %546 = load i32, ptr %10, align 4, !tbaa !10
  %547 = load i32, ptr %24, align 4, !tbaa !5
  %548 = sub nsw i32 %546, %547
  br label %565

549:                                              ; preds = %544
  %550 = load ptr, ptr %6, align 8, !tbaa !8
  %551 = getelementptr inbounds %struct.word_type, ptr %550, i64 0, i32 3, i32 1
  %552 = getelementptr inbounds [2 x i32], ptr %551, i64 0, i64 %16
  %553 = load i32, ptr %552, align 4, !tbaa !5
  %554 = load i32, ptr %10, align 4, !tbaa !10
  %555 = load i32, ptr %11, align 4, !tbaa !10
  %556 = getelementptr inbounds %struct.gapobj_type, ptr %498, i64 0, i32 3
  %557 = call i32 @MinGap(i32 noundef %553, i32 noundef %554, i32 noundef %555, ptr noundef nonnull %556) #4
  %558 = load i32, ptr %552, align 4, !tbaa !5
  %559 = load i32, ptr %24, align 4, !tbaa !5
  %560 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %561 = getelementptr inbounds [2 x i32], ptr %560, i64 0, i64 %16
  %562 = load i32, ptr %561, align 4, !tbaa !5
  %563 = call i32 @MinGap(i32 noundef %558, i32 noundef %559, i32 noundef %562, ptr noundef nonnull %556) #4
  %564 = sub nsw i32 %557, %563
  br label %565

565:                                              ; preds = %549, %545
  %566 = phi i32 [ %548, %545 ], [ %564, %549 ]
  %567 = load ptr, ptr %7, align 8, !tbaa !8
  %568 = icmp eq ptr %567, null
  %569 = load i32, ptr %11, align 4, !tbaa !10
  br i1 %568, label %570, label %575

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %572 = getelementptr inbounds [2 x i32], ptr %571, i64 0, i64 %16
  %573 = load i32, ptr %572, align 4, !tbaa !5
  %574 = sub nsw i32 %569, %573
  br label %592

575:                                              ; preds = %565
  %576 = load ptr, ptr %8, align 8, !tbaa !8
  %577 = getelementptr inbounds %struct.word_type, ptr %576, i64 0, i32 3
  %578 = getelementptr inbounds [2 x i32], ptr %577, i64 0, i64 %16
  %579 = load i32, ptr %578, align 4, !tbaa !5
  %580 = getelementptr inbounds %struct.word_type, ptr %576, i64 0, i32 3, i32 1
  %581 = getelementptr inbounds [2 x i32], ptr %580, i64 0, i64 %16
  %582 = load i32, ptr %581, align 4, !tbaa !5
  %583 = getelementptr inbounds %struct.gapobj_type, ptr %567, i64 0, i32 3
  %584 = call i32 @MinGap(i32 noundef %569, i32 noundef %579, i32 noundef %582, ptr noundef nonnull %583) #4
  %585 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %586 = getelementptr inbounds [2 x i32], ptr %585, i64 0, i64 %16
  %587 = load i32, ptr %586, align 4, !tbaa !5
  %588 = load i32, ptr %578, align 4, !tbaa !5
  %589 = load i32, ptr %581, align 4, !tbaa !5
  %590 = call i32 @MinGap(i32 noundef %587, i32 noundef %588, i32 noundef %589, ptr noundef nonnull %583) #4
  %591 = sub nsw i32 %584, %590
  br label %592

592:                                              ; preds = %575, %570, %536, %533, %531, %516
  %593 = phi i32 [ %502, %516 ], [ %566, %570 ], [ %566, %575 ], [ %520, %531 ], [ %520, %536 ], [ %513, %533 ]
  %594 = phi i32 [ %517, %516 ], [ %574, %570 ], [ %591, %575 ], [ %530, %531 ], [ %530, %536 ], [ %534, %533 ]
  %595 = phi i32 [ 0, %516 ], [ 0, %570 ], [ 0, %575 ], [ %532, %531 ], [ %543, %536 ], [ %535, %533 ]
  %596 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %596, ptr %24, align 4, !tbaa !5
  %597 = load i32, ptr %11, align 4, !tbaa !10
  %598 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %599 = getelementptr inbounds [2 x i32], ptr %598, i64 0, i64 %16
  store i32 %597, ptr %599, align 4, !tbaa !5
  %600 = load i32, ptr %9, align 4, !tbaa !10
  switch i32 %600, label %631 [
    i32 151, label %601
    i32 152, label %611
    i32 153, label %621
  ]

601:                                              ; preds = %592
  %602 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %603 = getelementptr inbounds [2 x i32], ptr %602, i64 0, i64 %16
  %604 = load i32, ptr %603, align 4, !tbaa !5
  %605 = add i32 %594, %593
  %606 = sub i32 %605, %595
  %607 = add i32 %606, %604
  %608 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %609 = getelementptr inbounds [2 x i32], ptr %608, i64 0, i64 %16
  %610 = load i32, ptr %609, align 4, !tbaa !5
  br label %631

611:                                              ; preds = %592
  %612 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %613 = getelementptr inbounds [2 x i32], ptr %612, i64 0, i64 %16
  %614 = load i32, ptr %613, align 4, !tbaa !5
  %615 = sub i32 %593, %595
  %616 = add i32 %615, %614
  %617 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %618 = getelementptr inbounds [2 x i32], ptr %617, i64 0, i64 %16
  %619 = load i32, ptr %618, align 4, !tbaa !5
  %620 = add nsw i32 %619, %594
  br label %631

621:                                              ; preds = %592
  %622 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %623 = getelementptr inbounds [2 x i32], ptr %622, i64 0, i64 %16
  %624 = load i32, ptr %623, align 4, !tbaa !5
  %625 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %626 = getelementptr inbounds [2 x i32], ptr %625, i64 0, i64 %16
  %627 = load i32, ptr %626, align 4, !tbaa !5
  %628 = add i32 %594, %593
  %629 = sub i32 %628, %595
  %630 = add i32 %629, %627
  br label %631

631:                                              ; preds = %621, %611, %601, %592
  %632 = phi i32 [ undef, %592 ], [ %624, %621 ], [ %616, %611 ], [ %607, %601 ]
  %633 = phi i32 [ undef, %592 ], [ %630, %621 ], [ %620, %611 ], [ %610, %601 ]
  store i32 %632, ptr %10, align 4, !tbaa !10
  br label %634

634:                                              ; preds = %484, %631
  %635 = phi i32 [ %633, %631 ], [ %491, %484 ]
  store i32 %635, ptr %11, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %783

636:                                              ; preds = %473, %649
  %637 = phi ptr [ %650, %649 ], [ %474, %473 ]
  br label %638

638:                                              ; preds = %636, %638
  %639 = phi ptr [ %641, %638 ], [ %637, %636 ]
  %640 = getelementptr inbounds [2 x %struct.LIST], ptr %639, i64 0, i64 1
  %641 = load ptr, ptr %640, align 8, !tbaa !5
  %642 = getelementptr inbounds %struct.word_type, ptr %641, i64 0, i32 1
  %643 = load i8, ptr %642, align 8, !tbaa !5
  switch i8 %643, label %649 [
    i8 0, label %638
    i8 1, label %644
  ]

644:                                              ; preds = %638
  %645 = getelementptr inbounds %struct.gapobj_type, ptr %641, i64 0, i32 3
  %646 = load i16, ptr %645, align 4
  %647 = and i16 %646, 512
  %648 = icmp eq i16 %647, 0
  br i1 %648, label %652, label %649

649:                                              ; preds = %638, %644
  %650 = load ptr, ptr %637, align 8, !tbaa !5
  %651 = icmp eq ptr %650, %98
  br i1 %651, label %652, label %636

652:                                              ; preds = %649, %644, %473
  %653 = phi ptr [ %98, %473 ], [ %637, %644 ], [ %98, %649 ]
  %654 = phi i1 [ true, %473 ], [ false, %644 ], [ true, %649 ]
  %655 = load ptr, ptr %94, align 8, !tbaa !5
  %656 = icmp eq ptr %655, %98
  br i1 %656, label %679, label %657

657:                                              ; preds = %652, %675
  %658 = phi ptr [ %677, %675 ], [ %655, %652 ]
  br label %659

659:                                              ; preds = %657, %659
  %660 = phi ptr [ %662, %659 ], [ %658, %657 ]
  %661 = getelementptr inbounds [2 x %struct.LIST], ptr %660, i64 0, i64 1
  %662 = load ptr, ptr %661, align 8, !tbaa !5
  %663 = getelementptr inbounds %struct.word_type, ptr %662, i64 0, i32 1
  %664 = load i8, ptr %663, align 8, !tbaa !5
  switch i8 %664, label %675 [
    i8 0, label %659
    i8 1, label %665
  ]

665:                                              ; preds = %659
  %666 = getelementptr inbounds %struct.gapobj_type, ptr %662, i64 0, i32 3
  %667 = load i16, ptr %666, align 4
  %668 = and i16 %667, 512
  %669 = icmp eq i16 %668, 0
  br i1 %669, label %670, label %675

670:                                              ; preds = %665
  %671 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %671, ptr %24, align 4, !tbaa !5
  %672 = load i32, ptr %11, align 4, !tbaa !10
  %673 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %674 = getelementptr inbounds [2 x i32], ptr %673, i64 0, i64 %16
  store i32 %672, ptr %674, align 4, !tbaa !5
  br label %684

675:                                              ; preds = %659, %665
  %676 = getelementptr inbounds %struct.LIST, ptr %658, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !5
  %678 = icmp eq ptr %677, %98
  br i1 %678, label %679, label %657

679:                                              ; preds = %675, %652
  %680 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %680, ptr %24, align 4, !tbaa !5
  %681 = load i32, ptr %11, align 4, !tbaa !10
  %682 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %683 = getelementptr inbounds [2 x i32], ptr %682, i64 0, i64 %16
  store i32 %681, ptr %683, align 4, !tbaa !5
  br i1 %654, label %689, label %684

684:                                              ; preds = %670, %679
  %685 = phi ptr [ %658, %670 ], [ %98, %679 ]
  %686 = getelementptr inbounds %struct.LIST, ptr %653, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !5
  %688 = icmp eq ptr %687, %685
  br i1 %688, label %729, label %699

689:                                              ; preds = %679
  %690 = load i32, ptr %10, align 4, !tbaa !10
  %691 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %692 = getelementptr inbounds [2 x i32], ptr %691, i64 0, i64 %16
  %693 = load i32, ptr %692, align 4, !tbaa !5
  %694 = call i32 @llvm.smax.i32(i32 %690, i32 %693)
  store i32 %694, ptr %10, align 4, !tbaa !10
  %695 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %696 = getelementptr inbounds [2 x i32], ptr %695, i64 0, i64 %16
  %697 = load i32, ptr %696, align 4, !tbaa !5
  %698 = call i32 @llvm.smax.i32(i32 %681, i32 %697)
  store i32 %698, ptr %11, align 4, !tbaa !10
  br label %783

699:                                              ; preds = %684, %721
  %700 = phi ptr [ %725, %721 ], [ %687, %684 ]
  %701 = phi i32 [ %723, %721 ], [ 0, %684 ]
  %702 = phi i32 [ %722, %721 ], [ 0, %684 ]
  br label %703

703:                                              ; preds = %699, %703
  %704 = phi ptr [ %706, %703 ], [ %700, %699 ]
  %705 = getelementptr inbounds [2 x %struct.LIST], ptr %704, i64 0, i64 1
  %706 = load ptr, ptr %705, align 8, !tbaa !5
  %707 = getelementptr inbounds %struct.word_type, ptr %706, i64 0, i32 1
  %708 = load i8, ptr %707, align 8, !tbaa !5
  switch i8 %708, label %709 [
    i8 0, label %703
    i8 1, label %721
  ]

709:                                              ; preds = %703
  %710 = add i8 %708, -119
  %711 = icmp ult i8 %710, 20
  br i1 %711, label %721, label %712

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.word_type, ptr %706, i64 0, i32 3
  %714 = getelementptr inbounds [2 x i32], ptr %713, i64 0, i64 %16
  %715 = load i32, ptr %714, align 4, !tbaa !5
  %716 = call i32 @llvm.smax.i32(i32 %702, i32 %715)
  %717 = getelementptr inbounds %struct.word_type, ptr %706, i64 0, i32 3, i32 1
  %718 = getelementptr inbounds [2 x i32], ptr %717, i64 0, i64 %16
  %719 = load i32, ptr %718, align 4, !tbaa !5
  %720 = call i32 @llvm.smax.i32(i32 %701, i32 %719)
  br label %721

721:                                              ; preds = %703, %709, %712
  %722 = phi i32 [ %716, %712 ], [ %702, %709 ], [ %702, %703 ]
  %723 = phi i32 [ %720, %712 ], [ %701, %709 ], [ %701, %703 ]
  %724 = getelementptr inbounds %struct.LIST, ptr %700, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !5
  %726 = icmp eq ptr %725, %685
  br i1 %726, label %727, label %699

727:                                              ; preds = %721
  %728 = add nuw nsw i32 %723, %722
  br label %729

729:                                              ; preds = %727, %684
  %730 = phi i32 [ 0, %684 ], [ %728, %727 ]
  store i32 0, ptr %10, align 4, !tbaa !10
  %731 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %732 = getelementptr inbounds [2 x i32], ptr %731, i64 0, i64 %16
  %733 = load i32, ptr %732, align 4, !tbaa !5
  %734 = call i32 @llvm.smax.i32(i32 %730, i32 %733)
  store i32 %734, ptr %11, align 4, !tbaa !10
  br label %783

735:                                              ; preds = %95
  %736 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %737 = call ptr @Image(i32 noundef 44) #4
  %738 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %736, ptr noundef %737) #4
  br label %783

739:                                              ; preds = %95, %95
  br i1 %17, label %740, label %745

740:                                              ; preds = %739
  %741 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %741, ptr %24, align 4, !tbaa !5
  %742 = load i32, ptr %11, align 4, !tbaa !10
  %743 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %744 = getelementptr inbounds [2 x i32], ptr %743, i64 0, i64 %16
  store i32 %742, ptr %744, align 4, !tbaa !5
  br label %783

745:                                              ; preds = %739
  %746 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %747 = zext nneg i8 %100 to i32
  %748 = call ptr @Image(i32 noundef %747) #4
  %749 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %746, ptr noundef %748) #4
  br label %783

750:                                              ; preds = %95, %95
  br i1 %18, label %751, label %756

751:                                              ; preds = %750
  %752 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %752, ptr %24, align 4, !tbaa !5
  %753 = load i32, ptr %11, align 4, !tbaa !10
  %754 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %755 = getelementptr inbounds [2 x i32], ptr %754, i64 0, i64 %16
  store i32 %753, ptr %755, align 4, !tbaa !5
  br label %783

756:                                              ; preds = %750
  %757 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %758 = zext nneg i8 %100 to i32
  %759 = call ptr @Image(i32 noundef %758) #4
  %760 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %757, ptr noundef %759) #4
  br label %783

761:                                              ; preds = %95, %95
  %762 = icmp ne i8 %100, 13
  %763 = xor i1 %17, %762
  br i1 %763, label %767, label %764

764:                                              ; preds = %761
  %765 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %766 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %765, ptr noundef nonnull @.str.13) #4
  br label %767

767:                                              ; preds = %764, %761
  %768 = load i32, ptr %10, align 4, !tbaa !10
  store i32 %768, ptr %24, align 4, !tbaa !5
  %769 = load i32, ptr %11, align 4, !tbaa !10
  %770 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 3, i32 1
  %771 = getelementptr inbounds [2 x i32], ptr %770, i64 0, i64 %16
  store i32 %769, ptr %771, align 4, !tbaa !5
  %772 = load i32, ptr %10, align 4, !tbaa !10
  %773 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3
  %774 = getelementptr inbounds [2 x i32], ptr %773, i64 0, i64 %16
  store i32 %772, ptr %774, align 4, !tbaa !5
  %775 = load i32, ptr %11, align 4, !tbaa !10
  %776 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 3, i32 1
  %777 = getelementptr inbounds [2 x i32], ptr %776, i64 0, i64 %16
  store i32 %775, ptr %777, align 4, !tbaa !5
  br label %786

778:                                              ; preds = %95
  %779 = zext i8 %100 to i32
  %780 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %781 = call ptr @Image(i32 noundef %779) #4
  %782 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef %780, ptr noundef nonnull @.str.15, ptr noundef %781) #4
  br label %783

783:                                              ; preds = %395, %273, %751, %756, %740, %745, %634, %729, %689, %400, %440, %386, %391, %311, %317, %296, %287, %778, %735, %456, %282
  %784 = phi ptr [ %98, %778 ], [ %98, %751 ], [ %98, %756 ], [ %98, %740 ], [ %98, %745 ], [ %98, %735 ], [ %98, %634 ], [ %98, %689 ], [ %98, %729 ], [ %98, %456 ], [ %98, %440 ], [ %98, %400 ], [ %98, %386 ], [ %98, %391 ], [ %98, %311 ], [ %98, %317 ], [ %98, %296 ], [ %98, %287 ], [ %98, %282 ], [ %274, %273 ], [ %98, %395 ]
  %785 = load i32, ptr %10, align 4, !tbaa !10
  br label %20

786:                                              ; preds = %33, %296, %287, %273, %244, %239, %251, %85, %68, %346, %350, %767, %130, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  ret void
}

declare void @SetLengthDim(i32 noundef) local_unnamed_addr #2

declare void @RotateSize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare void @EnlargeToConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
