; ModuleID = 'decimal128.c'
source_filename = "decimal128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decNumber = type { i32, i32, i8, [12 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.decimal128 = type { [16 x i8] }
%union.anon = type { %struct.UINT128 }
%struct.UINT128 = type { [2 x i64] }
%union.anon.0 = type { %struct.UINT128 }

@COMBMSD = external local_unnamed_addr constant [32 x i32], align 16
@COMBEXP = external local_unnamed_addr constant [32 x i32], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@BIN2CHAR = external local_unnamed_addr constant [4001 x i8], align 16
@DPD2BIN = external local_unnamed_addr constant [1024 x i16], align 16

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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd128FromNumber(ptr noundef returned writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = load i32, ptr %1, align 4, !tbaa !43
  %10 = add nsw i32 %9, %8
  %11 = icmp sgt i32 %9, 34
  %12 = icmp sgt i32 %10, 6145
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp slt i32 %10, -6142
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #11
  %18 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !44
  %21 = call ptr @decNumberPlus(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5) #11
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %23 = load i8, ptr %22, align 4, !tbaa !46
  %24 = and i8 %23, -128
  %25 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  %26 = load i8, ptr %25, align 4, !tbaa !46
  %27 = or i8 %26, %24
  store i8 %27, ptr %25, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !47
  br label %30

30:                                               ; preds = %3, %16
  %31 = phi i32 [ %29, %16 ], [ 0, %3 ]
  %32 = phi ptr [ %4, %16 ], [ %1, %3 ]
  %33 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !46
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 112
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %30
  %39 = and i32 %35, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  store i32 2013265920, ptr %42, align 4, !tbaa !48
  br label %124

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !49
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, ptr %32, align 4, !tbaa !43
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %43
  %51 = load i32, ptr %32, align 4, !tbaa !43
  %52 = icmp slt i32 %51, 34
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @decDigitsToDPD(ptr noundef nonnull %32, ptr noundef nonnull %6, i32 noundef 0) #11
  br label %54

54:                                               ; preds = %47, %53, %50
  %55 = load i8, ptr %33, align 4, !tbaa !46
  %56 = and i8 %55, 32
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %59 = load i32, ptr %58, align 4, !tbaa !48
  br i1 %57, label %62, label %60

60:                                               ; preds = %54
  %61 = or i32 %59, 2080374784
  store i32 %61, ptr %58, align 4, !tbaa !48
  br label %124

62:                                               ; preds = %54
  %63 = or i32 %59, 2113929216
  store i32 %63, ptr %58, align 4, !tbaa !48
  br label %124

64:                                               ; preds = %30
  %65 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !49
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32, ptr %32, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !38
  %74 = icmp slt i32 %73, -6176
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = or i32 %31, 1024
  br label %83

77:                                               ; preds = %71
  %78 = add nsw i32 %73, 6176
  %79 = icmp ugt i32 %78, 12287
  %80 = or i32 %31, 1024
  %81 = call i32 @llvm.umin.i32(i32 %78, i32 12287)
  %82 = select i1 %79, i32 %80, i32 %31
  br label %83

83:                                               ; preds = %77, %75
  %84 = phi i32 [ 0, %75 ], [ %81, %77 ]
  %85 = phi i32 [ %76, %75 ], [ %82, %77 ]
  %86 = lshr i32 %84, 9
  %87 = and i32 %86, 24
  br label %113

88:                                               ; preds = %68, %64
  %89 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !38
  %91 = add nsw i32 %90, 6176
  %92 = icmp ugt i32 %91, 12287
  %93 = add i32 %90, -6111
  %94 = or i32 %31, 1024
  %95 = call i32 @llvm.umin.i32(i32 %91, i32 12287)
  %96 = select i1 %92, i32 %94, i32 %31
  %97 = select i1 %92, i32 %93, i32 0
  call void @decDigitsToDPD(ptr noundef nonnull %32, ptr noundef nonnull %6, i32 noundef %97) #11
  %98 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !48
  %100 = lshr i32 %99, 14
  %101 = and i32 %99, 16383
  store i32 %101, ptr %98, align 4, !tbaa !48
  %102 = icmp ugt i32 %99, 131071
  br i1 %102, label %103, label %109

103:                                              ; preds = %88
  %104 = lshr i32 %95, 11
  %105 = and i32 %104, 6
  %106 = and i32 %100, 1
  %107 = or disjoint i32 %106, %105
  %108 = or disjoint i32 %107, 24
  br label %113

109:                                              ; preds = %88
  %110 = lshr i32 %95, 9
  %111 = and i32 %110, 24
  %112 = or disjoint i32 %111, %100
  br label %113

113:                                              ; preds = %103, %109, %83
  %114 = phi i32 [ %87, %83 ], [ %108, %103 ], [ %112, %109 ]
  %115 = phi i32 [ %84, %83 ], [ %95, %103 ], [ %95, %109 ]
  %116 = phi i32 [ %85, %83 ], [ %96, %103 ], [ %96, %109 ]
  %117 = shl nuw nsw i32 %114, 26
  %118 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %119 = load i32, ptr %118, align 4, !tbaa !48
  %120 = or i32 %119, %117
  %121 = shl nuw nsw i32 %115, 14
  %122 = and i32 %121, 67092480
  %123 = or i32 %120, %122
  store i32 %123, ptr %118, align 4, !tbaa !48
  br label %124

124:                                              ; preds = %41, %62, %60, %113
  %125 = phi i32 [ %31, %41 ], [ %31, %60 ], [ %31, %62 ], [ %116, %113 ]
  %126 = load i8, ptr %33, align 4, !tbaa !46
  %127 = icmp sgt i8 %126, -1
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %130 = load i32, ptr %129, align 4, !tbaa !48
  %131 = or i32 %130, -2147483648
  store i32 %131, ptr %129, align 4, !tbaa !48
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32, ptr %6, align 16, !tbaa !48
  store i32 %133, ptr %0, align 1
  %134 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %135 = load i32, ptr %134, align 4, !tbaa !48
  %136 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %135, ptr %136, align 1
  %137 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %138 = load i32, ptr %137, align 8, !tbaa !48
  %139 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %138, ptr %139, align 1
  %140 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %141 = load i32, ptr %140, align 4, !tbaa !48
  %142 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %141, ptr %142, align 1
  %143 = icmp eq i32 %125, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %132
  %145 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %125) #11
  br label %146

146:                                              ; preds = %144, %132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @decNumberPlus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @decDigitsToDPD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare ptr @decContextSetStatus(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd128ToNumber(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = load i32, ptr %0, align 1
  store i32 %4, ptr %3, align 16, !tbaa !48
  %5 = getelementptr inbounds i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  store i32 %6, ptr %7, align 4, !tbaa !48
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 2
  store i32 %9, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 3
  store i32 %12, ptr %13, align 4, !tbaa !48
  %14 = lshr i32 %12, 26
  %15 = and i32 %14, 31
  %16 = tail call ptr @decNumberZero(ptr noundef %1) #11
  %17 = load i32, ptr %13, align 4, !tbaa !48
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  store i8 -128, ptr %20, align 4, !tbaa !46
  br label %21

21:                                               ; preds = %19, %2
  %22 = zext nneg i32 %15 to i64
  %23 = getelementptr inbounds [32 x i32], ptr @COMBMSD, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = getelementptr inbounds [32 x i32], ptr @COMBEXP, i64 0, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !46
  %33 = or i8 %32, 64
  store i8 %33, ptr %31, align 4, !tbaa !46
  br label %70

34:                                               ; preds = %28
  %35 = and i32 %17, 33554432
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !46
  br i1 %36, label %41, label %39

39:                                               ; preds = %34
  %40 = or i8 %38, 16
  store i8 %40, ptr %37, align 4, !tbaa !46
  br label %50

41:                                               ; preds = %34
  %42 = or i8 %38, 32
  store i8 %42, ptr %37, align 4, !tbaa !46
  br label %50

43:                                               ; preds = %21
  %44 = shl i32 %26, 12
  %45 = lshr i32 %17, 14
  %46 = and i32 %45, 4095
  %47 = add nuw nsw i32 %46, -6176
  %48 = add i32 %47, %44
  %49 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !38
  br label %50

50:                                               ; preds = %41, %39, %43
  %51 = phi i32 [ %24, %43 ], [ 0, %39 ], [ 0, %41 ]
  %52 = and i32 %17, 16383
  store i32 %52, ptr %13, align 4, !tbaa !48
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = shl i32 %51, 14
  %56 = or disjoint i32 %55, %52
  store i32 %56, ptr %13, align 4, !tbaa !48
  br label %68

57:                                               ; preds = %50
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %57
  %60 = load i32, ptr %10, align 8, !tbaa !48
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, ptr %7, align 4, !tbaa !48
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, ptr %3, align 16, !tbaa !48
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %62, %59, %57, %54
  %69 = phi i32 [ 12, %54 ], [ 11, %57 ], [ 10, %59 ], [ 7, %62 ], [ 4, %65 ]
  call void @decDigitsFromDPD(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %69) #11
  br label %70

70:                                               ; preds = %65, %68, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberZero(ptr noundef) local_unnamed_addr #6

declare void @decDigitsFromDPD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd128ToEngString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %4 = call ptr @__dpd128ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToEngString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberToEngString(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @__dpd128ToString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #8 !prof !34 {
  %3 = load i32, ptr %0, align 1
  %4 = getelementptr inbounds i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !51
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ %1, %2 ]
  %15 = lshr i32 %9, 26
  %16 = and i32 %15, 31
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [32 x i32], ptr @COMBMSD, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds [32 x i32], ptr @COMBEXP, i64 0, i64 %17
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  store i32 6712905, ptr %14, align 1
  %26 = getelementptr inbounds i8, ptr %14, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %26, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false) #11
  br label %448

27:                                               ; preds = %23
  %28 = and i32 %9, 33554432
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 115, ptr %14, align 1, !tbaa !51
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ %14, %27 ]
  store i32 5136718, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %33, i64 3
  %35 = icmp eq i32 %3, 0
  %36 = icmp eq i32 %5, 0
  %37 = select i1 %35, i1 %36, i1 false
  %38 = and i32 %9, 262143
  %39 = or i32 %38, %7
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %448, label %48

42:                                               ; preds = %13
  %43 = shl i32 %21, 12
  %44 = lshr i32 %9, 14
  %45 = and i32 %44, 4095
  %46 = add nuw nsw i32 %45, -6176
  %47 = add i32 %46, %43
  br label %48

48:                                               ; preds = %32, %42
  %49 = phi ptr [ %14, %42 ], [ %34, %32 ]
  %50 = phi i32 [ %47, %42 ], [ 0, %32 ]
  %51 = phi i32 [ %19, %42 ], [ 0, %32 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = trunc i32 %51 to i8
  %55 = add i8 %54, 48
  %56 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %55, ptr %49, align 1, !tbaa !51
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi ptr [ %56, %53 ], [ %49, %48 ]
  %59 = lshr i32 %9, 4
  %60 = and i32 %59, 1023
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !49
  %64 = zext i16 %63 to i64
  %65 = shl nuw nsw i64 %64, 2
  %66 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %65
  %67 = icmp eq ptr %58, %49
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  br label %78

70:                                               ; preds = %57
  %71 = load i8, ptr %66, align 4, !tbaa !51
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %66, i64 4
  %75 = zext i8 %71 to i64
  %76 = sub nsw i64 0, %75
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  br label %78

78:                                               ; preds = %68, %73
  %79 = phi ptr [ %77, %73 ], [ %69, %68 ]
  %80 = phi i64 [ %75, %73 ], [ 3, %68 ]
  %81 = load i32, ptr %79, align 1
  store i32 %81, ptr %58, align 1
  %82 = getelementptr inbounds i8, ptr %58, i64 %80
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi ptr [ %58, %70 ], [ %82, %78 ]
  %85 = shl i32 %9, 6
  %86 = and i32 %85, 960
  %87 = lshr i32 %7, 26
  %88 = or disjoint i32 %86, %87
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !49
  %92 = zext i16 %91 to i64
  %93 = shl nuw nsw i64 %92, 2
  %94 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %93
  %95 = icmp eq ptr %84, %49
  br i1 %95, label %98, label %96

96:                                               ; preds = %83
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  br label %106

98:                                               ; preds = %83
  %99 = load i8, ptr %94, align 4, !tbaa !51
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %94, i64 4
  %103 = zext i8 %99 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds i8, ptr %102, i64 %104
  br label %106

106:                                              ; preds = %96, %101
  %107 = phi ptr [ %105, %101 ], [ %97, %96 ]
  %108 = phi i64 [ %103, %101 ], [ 3, %96 ]
  %109 = load i32, ptr %107, align 1
  store i32 %109, ptr %84, align 1
  %110 = getelementptr inbounds i8, ptr %84, i64 %108
  br label %111

111:                                              ; preds = %106, %98
  %112 = phi ptr [ %84, %98 ], [ %110, %106 ]
  %113 = lshr i32 %7, 16
  %114 = and i32 %113, 1023
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !49
  %118 = zext i16 %117 to i64
  %119 = shl nuw nsw i64 %118, 2
  %120 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %119
  %121 = icmp eq ptr %112, %49
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  %123 = getelementptr inbounds i8, ptr %120, i64 1
  br label %132

124:                                              ; preds = %111
  %125 = load i8, ptr %120, align 4, !tbaa !51
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds i8, ptr %120, i64 4
  %129 = zext i8 %125 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  br label %132

132:                                              ; preds = %122, %127
  %133 = phi ptr [ %131, %127 ], [ %123, %122 ]
  %134 = phi i64 [ %129, %127 ], [ 3, %122 ]
  %135 = load i32, ptr %133, align 1
  store i32 %135, ptr %112, align 1
  %136 = getelementptr inbounds i8, ptr %112, i64 %134
  br label %137

137:                                              ; preds = %132, %124
  %138 = phi ptr [ %112, %124 ], [ %136, %132 ]
  %139 = lshr i32 %7, 6
  %140 = and i32 %139, 1023
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !49
  %144 = zext i16 %143 to i64
  %145 = shl nuw nsw i64 %144, 2
  %146 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %145
  %147 = icmp eq ptr %138, %49
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  %149 = getelementptr inbounds i8, ptr %146, i64 1
  br label %158

150:                                              ; preds = %137
  %151 = load i8, ptr %146, align 4, !tbaa !51
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds i8, ptr %146, i64 4
  %155 = zext i8 %151 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  br label %158

158:                                              ; preds = %148, %153
  %159 = phi ptr [ %157, %153 ], [ %149, %148 ]
  %160 = phi i64 [ %155, %153 ], [ 3, %148 ]
  %161 = load i32, ptr %159, align 1
  store i32 %161, ptr %138, align 1
  %162 = getelementptr inbounds i8, ptr %138, i64 %160
  br label %163

163:                                              ; preds = %158, %150
  %164 = phi ptr [ %138, %150 ], [ %162, %158 ]
  %165 = shl i32 %7, 4
  %166 = and i32 %165, 1008
  %167 = lshr i32 %5, 28
  %168 = or disjoint i32 %166, %167
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %169
  %171 = load i16, ptr %170, align 2, !tbaa !49
  %172 = zext i16 %171 to i64
  %173 = shl nuw nsw i64 %172, 2
  %174 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %173
  %175 = icmp eq ptr %164, %49
  br i1 %175, label %178, label %176

176:                                              ; preds = %163
  %177 = getelementptr inbounds i8, ptr %174, i64 1
  br label %186

178:                                              ; preds = %163
  %179 = load i8, ptr %174, align 4, !tbaa !51
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds i8, ptr %174, i64 4
  %183 = zext i8 %179 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, ptr %182, i64 %184
  br label %186

186:                                              ; preds = %176, %181
  %187 = phi ptr [ %185, %181 ], [ %177, %176 ]
  %188 = phi i64 [ %183, %181 ], [ 3, %176 ]
  %189 = load i32, ptr %187, align 1
  store i32 %189, ptr %164, align 1
  %190 = getelementptr inbounds i8, ptr %164, i64 %188
  br label %191

191:                                              ; preds = %186, %178
  %192 = phi ptr [ %164, %178 ], [ %190, %186 ]
  %193 = lshr i32 %5, 18
  %194 = and i32 %193, 1023
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !49
  %198 = zext i16 %197 to i64
  %199 = shl nuw nsw i64 %198, 2
  %200 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %199
  %201 = icmp eq ptr %192, %49
  br i1 %201, label %204, label %202

202:                                              ; preds = %191
  %203 = getelementptr inbounds i8, ptr %200, i64 1
  br label %212

204:                                              ; preds = %191
  %205 = load i8, ptr %200, align 4, !tbaa !51
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds i8, ptr %200, i64 4
  %209 = zext i8 %205 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %208, i64 %210
  br label %212

212:                                              ; preds = %202, %207
  %213 = phi ptr [ %211, %207 ], [ %203, %202 ]
  %214 = phi i64 [ %209, %207 ], [ 3, %202 ]
  %215 = load i32, ptr %213, align 1
  store i32 %215, ptr %192, align 1
  %216 = getelementptr inbounds i8, ptr %192, i64 %214
  br label %217

217:                                              ; preds = %212, %204
  %218 = phi ptr [ %192, %204 ], [ %216, %212 ]
  %219 = lshr i32 %5, 8
  %220 = and i32 %219, 1023
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !49
  %224 = zext i16 %223 to i64
  %225 = shl nuw nsw i64 %224, 2
  %226 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %225
  %227 = icmp eq ptr %218, %49
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  %229 = getelementptr inbounds i8, ptr %226, i64 1
  br label %238

230:                                              ; preds = %217
  %231 = load i8, ptr %226, align 4, !tbaa !51
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds i8, ptr %226, i64 4
  %235 = zext i8 %231 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, ptr %234, i64 %236
  br label %238

238:                                              ; preds = %228, %233
  %239 = phi ptr [ %237, %233 ], [ %229, %228 ]
  %240 = phi i64 [ %235, %233 ], [ 3, %228 ]
  %241 = load i32, ptr %239, align 1
  store i32 %241, ptr %218, align 1
  %242 = getelementptr inbounds i8, ptr %218, i64 %240
  br label %243

243:                                              ; preds = %238, %230
  %244 = phi ptr [ %218, %230 ], [ %242, %238 ]
  %245 = shl i32 %5, 2
  %246 = and i32 %245, 1020
  %247 = lshr i32 %3, 30
  %248 = or disjoint i32 %246, %247
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !49
  %252 = zext i16 %251 to i64
  %253 = shl nuw nsw i64 %252, 2
  %254 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %253
  %255 = icmp eq ptr %244, %49
  br i1 %255, label %258, label %256

256:                                              ; preds = %243
  %257 = getelementptr inbounds i8, ptr %254, i64 1
  br label %266

258:                                              ; preds = %243
  %259 = load i8, ptr %254, align 4, !tbaa !51
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds i8, ptr %254, i64 4
  %263 = zext i8 %259 to i64
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds i8, ptr %262, i64 %264
  br label %266

266:                                              ; preds = %256, %261
  %267 = phi ptr [ %265, %261 ], [ %257, %256 ]
  %268 = phi i64 [ %263, %261 ], [ 3, %256 ]
  %269 = load i32, ptr %267, align 1
  store i32 %269, ptr %244, align 1
  %270 = getelementptr inbounds i8, ptr %244, i64 %268
  br label %271

271:                                              ; preds = %266, %258
  %272 = phi ptr [ %244, %258 ], [ %270, %266 ]
  %273 = lshr i32 %3, 20
  %274 = and i32 %273, 1023
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %275
  %277 = load i16, ptr %276, align 2, !tbaa !49
  %278 = zext i16 %277 to i64
  %279 = shl nuw nsw i64 %278, 2
  %280 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %279
  %281 = icmp eq ptr %272, %49
  br i1 %281, label %284, label %282

282:                                              ; preds = %271
  %283 = getelementptr inbounds i8, ptr %280, i64 1
  br label %292

284:                                              ; preds = %271
  %285 = load i8, ptr %280, align 4, !tbaa !51
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %297, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, ptr %280, i64 4
  %289 = zext i8 %285 to i64
  %290 = sub nsw i64 0, %289
  %291 = getelementptr inbounds i8, ptr %288, i64 %290
  br label %292

292:                                              ; preds = %282, %287
  %293 = phi ptr [ %291, %287 ], [ %283, %282 ]
  %294 = phi i64 [ %289, %287 ], [ 3, %282 ]
  %295 = load i32, ptr %293, align 1
  store i32 %295, ptr %272, align 1
  %296 = getelementptr inbounds i8, ptr %272, i64 %294
  br label %297

297:                                              ; preds = %292, %284
  %298 = phi ptr [ %272, %284 ], [ %296, %292 ]
  %299 = lshr i32 %3, 10
  %300 = and i32 %299, 1023
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %301
  %303 = load i16, ptr %302, align 2, !tbaa !49
  %304 = zext i16 %303 to i64
  %305 = shl nuw nsw i64 %304, 2
  %306 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %305
  %307 = icmp eq ptr %298, %49
  br i1 %307, label %310, label %308

308:                                              ; preds = %297
  %309 = getelementptr inbounds i8, ptr %306, i64 1
  br label %318

310:                                              ; preds = %297
  %311 = load i8, ptr %306, align 4, !tbaa !51
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %323, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds i8, ptr %306, i64 4
  %315 = zext i8 %311 to i64
  %316 = sub nsw i64 0, %315
  %317 = getelementptr inbounds i8, ptr %314, i64 %316
  br label %318

318:                                              ; preds = %308, %313
  %319 = phi ptr [ %317, %313 ], [ %309, %308 ]
  %320 = phi i64 [ %315, %313 ], [ 3, %308 ]
  %321 = load i32, ptr %319, align 1
  store i32 %321, ptr %298, align 1
  %322 = getelementptr inbounds i8, ptr %298, i64 %320
  br label %323

323:                                              ; preds = %318, %310
  %324 = phi ptr [ %298, %310 ], [ %322, %318 ]
  %325 = and i32 %3, 1023
  %326 = zext nneg i32 %325 to i64
  %327 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %326
  %328 = load i16, ptr %327, align 2, !tbaa !49
  %329 = zext i16 %328 to i64
  %330 = shl nuw nsw i64 %329, 2
  %331 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %330
  %332 = icmp eq ptr %324, %49
  br i1 %332, label %335, label %333

333:                                              ; preds = %323
  %334 = getelementptr inbounds i8, ptr %331, i64 1
  br label %343

335:                                              ; preds = %323
  %336 = load i8, ptr %331, align 4, !tbaa !51
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %348, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds i8, ptr %331, i64 4
  %340 = zext i8 %336 to i64
  %341 = sub nsw i64 0, %340
  %342 = getelementptr inbounds i8, ptr %339, i64 %341
  br label %343

343:                                              ; preds = %333, %338
  %344 = phi ptr [ %342, %338 ], [ %334, %333 ]
  %345 = phi i64 [ %340, %338 ], [ 3, %333 ]
  %346 = load i32, ptr %344, align 1
  store i32 %346, ptr %324, align 1
  %347 = getelementptr inbounds i8, ptr %324, i64 %345
  br label %348

348:                                              ; preds = %343, %335
  %349 = phi ptr [ %324, %335 ], [ %347, %343 ]
  %350 = icmp eq ptr %349, %49
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = getelementptr inbounds i8, ptr %349, i64 1
  store i8 48, ptr %349, align 1, !tbaa !51
  br label %353

353:                                              ; preds = %351, %348
  %354 = phi ptr [ %352, %351 ], [ %349, %348 ]
  %355 = icmp eq i32 %50, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  store i8 0, ptr %354, align 1, !tbaa !51
  br label %448

357:                                              ; preds = %353
  %358 = ptrtoint ptr %354 to i64
  %359 = ptrtoint ptr %49 to i64
  %360 = sub i64 %358, %359
  %361 = trunc i64 %360 to i32
  %362 = add i32 %50, %361
  %363 = icmp sgt i32 %50, 0
  %364 = icmp slt i32 %362, -5
  %365 = select i1 %363, i1 true, i1 %364
  %366 = add nsw i32 %362, -1
  %367 = select i1 %365, i32 1, i32 %362
  %368 = select i1 %365, i32 %366, i32 0
  %369 = getelementptr inbounds i8, ptr %354, i64 -1
  %370 = icmp sgt i32 %367, 0
  br i1 %370, label %371, label %427

371:                                              ; preds = %357
  %372 = zext nneg i32 %367 to i64
  %373 = getelementptr inbounds i8, ptr %49, i64 %372
  %374 = icmp ult ptr %373, %354
  br i1 %374, label %375, label %387

375:                                              ; preds = %371
  %376 = icmp ult ptr %369, %373
  br i1 %376, label %384, label %377

377:                                              ; preds = %375, %377
  %378 = phi ptr [ %381, %377 ], [ %369, %375 ]
  %379 = phi ptr [ %382, %377 ], [ %354, %375 ]
  %380 = load i8, ptr %378, align 1, !tbaa !51
  store i8 %380, ptr %379, align 1, !tbaa !51
  %381 = getelementptr inbounds i8, ptr %378, i64 -1
  %382 = getelementptr inbounds i8, ptr %379, i64 -1
  %383 = icmp ult ptr %381, %373
  br i1 %383, label %384, label %377, !llvm.loop !52

384:                                              ; preds = %377, %375
  %385 = phi ptr [ %354, %375 ], [ %382, %377 ]
  store i8 46, ptr %385, align 1, !tbaa !51
  %386 = getelementptr inbounds i8, ptr %354, i64 1
  br label %387

387:                                              ; preds = %384, %371
  %388 = phi ptr [ %386, %384 ], [ %354, %371 ]
  %389 = icmp eq i32 %368, 0
  br i1 %389, label %425, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, ptr %388, i64 1
  store i8 69, ptr %388, align 1, !tbaa !51
  %392 = getelementptr inbounds i8, ptr %388, i64 2
  store i8 43, ptr %391, align 1, !tbaa !51
  %393 = icmp slt i32 %368, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  store i8 45, ptr %391, align 1, !tbaa !51
  %395 = sub nsw i32 0, %368
  br label %396

396:                                              ; preds = %394, %390
  %397 = phi i32 [ %395, %394 ], [ %368, %390 ]
  %398 = icmp slt i32 %397, 1000
  br i1 %398, label %399, label %410

399:                                              ; preds = %396
  %400 = shl nsw i32 %397, 2
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %401
  %403 = getelementptr inbounds i8, ptr %402, i64 4
  %404 = load i8, ptr %402, align 4, !tbaa !51
  %405 = zext i8 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %403, i64 %406
  %408 = load i32, ptr %407, align 1
  store i32 %408, ptr %392, align 1
  %409 = getelementptr inbounds i8, ptr %392, i64 %405
  br label %425

410:                                              ; preds = %396
  %411 = lshr i32 %397, 3
  %412 = mul nsw i32 %411, 1049
  %413 = lshr i32 %412, 17
  %414 = mul nsw i32 %413, -1000
  %415 = add i32 %414, %397
  %416 = trunc i32 %413 to i8
  %417 = add i8 %416, 48
  %418 = getelementptr inbounds i8, ptr %388, i64 3
  store i8 %417, ptr %392, align 1, !tbaa !51
  %419 = shl nsw i32 %415, 2
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %420
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  %423 = load i32, ptr %422, align 1
  store i32 %423, ptr %418, align 1
  %424 = getelementptr inbounds i8, ptr %388, i64 6
  br label %425

425:                                              ; preds = %399, %410, %387
  %426 = phi ptr [ %409, %399 ], [ %424, %410 ], [ %388, %387 ]
  store i8 0, ptr %426, align 1, !tbaa !51
  br label %448

427:                                              ; preds = %357
  %428 = getelementptr inbounds i8, ptr %354, i64 1
  %429 = sext i32 %367 to i64
  %430 = sub nsw i64 0, %429
  %431 = getelementptr inbounds i8, ptr %428, i64 %430
  %432 = getelementptr inbounds i8, ptr %431, i64 1
  store i8 0, ptr %432, align 1, !tbaa !51
  %433 = icmp ult ptr %369, %49
  br i1 %433, label %441, label %434

434:                                              ; preds = %427, %434
  %435 = phi ptr [ %438, %434 ], [ %369, %427 ]
  %436 = phi ptr [ %439, %434 ], [ %431, %427 ]
  %437 = load i8, ptr %435, align 1, !tbaa !51
  store i8 %437, ptr %436, align 1, !tbaa !51
  %438 = getelementptr inbounds i8, ptr %435, i64 -1
  %439 = getelementptr inbounds i8, ptr %436, i64 -1
  %440 = icmp ult ptr %438, %49
  br i1 %440, label %441, label %434, !llvm.loop !53

441:                                              ; preds = %434, %427
  %442 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 48, ptr %49, align 1, !tbaa !51
  store i8 46, ptr %442, align 1, !tbaa !51
  %443 = icmp slt i32 %367, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %441
  %445 = getelementptr i8, ptr %49, i64 2
  %446 = sub i32 0, %367
  %447 = zext i32 %446 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %445, i8 48, i64 %447, i1 false), !tbaa !51
  br label %448

448:                                              ; preds = %444, %441, %32, %425, %356, %25
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd128FromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %6 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #11
  %7 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !44
  %10 = call ptr @decNumberFromString(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = call ptr @__dpd128FromNumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %13) #11
  br label %17

17:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret ptr %0
}

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decimal128IsCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = alloca %struct.decNumber, align 4
  %3 = alloca %struct.decimal128, align 1
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #11
  %6 = call ptr @__dpd128ToNumber(ptr noundef %0, ptr noundef nonnull %2)
  %7 = call ptr @__dpd128FromNumber(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %8 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) %3, i64 16)
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #11
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128Canonical(ptr noundef returned %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #11
  %6 = call ptr @__dpd128ToNumber(ptr noundef %1, ptr noundef nonnull %3)
  %7 = call ptr @__dpd128FromNumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128FromNumber(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %union.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = tail call ptr @__dpd128FromNumber(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %6 = load i64, ptr %0, align 1
  %7 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 1
  call void @__ieee_to_host_128(i64 %6, i64 %8, ptr noundef nonnull %4) #11
  call void @_dpd_to_bid128(ptr noundef nonnull %4, ptr noundef nonnull %4) #11
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  call void @__host_to_ieee_128(i64 %9, i64 %11, ptr noundef nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %0
}

declare void @__ieee_to_host_128(i64, i64, ptr noundef) local_unnamed_addr #6

declare void @_dpd_to_bid128(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @__host_to_ieee_128(i64, i64, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128ToNumber(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %union.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = load i64, ptr %0, align 1
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 1
  call void @__ieee_to_host_128(i64 %4, i64 %6, ptr noundef nonnull %3) #11
  call void @_bid_to_dpd128(ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %9 = load i64, ptr %8, align 8
  call void @__host_to_ieee_128(i64 %7, i64 %9, ptr noundef nonnull %3) #11
  %10 = call ptr @__dpd128ToNumber(ptr noundef nonnull %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %1
}

declare void @_bid_to_dpd128(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128ToString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %4 = call ptr @decimal128ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128ToEngString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %4 = call ptr @decimal128ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToEngString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal128FromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %6 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #11
  %7 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !44
  %10 = call ptr @decNumberFromString(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = call ptr @decimal128FromNumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %13) #11
  br label %17

17:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret ptr %0
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!38 = !{!39, !40, i64 4}
!39 = !{!"", !40, i64 0, !40, i64 4, !41, i64 8, !41, i64 10}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!39, !40, i64 0}
!44 = !{!45, !40, i64 12}
!45 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24}
!46 = !{!39, !41, i64 8}
!47 = !{!45, !40, i64 20}
!48 = !{!40, !40, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !41, i64 0}
!51 = !{!41, !41, i64 0}
!52 = distinct !{!52, !36, !37}
!53 = distinct !{!53, !36, !37}
!54 = !{i64 0, i64 16, !51}
