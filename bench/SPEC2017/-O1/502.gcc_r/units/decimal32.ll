; ModuleID = 'decimal32.c'
source_filename = "decimal32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decNumber = type { i32, i32, i8, [3 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.decimal32 = type { [4 x i8] }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@BIN2DPD = external local_unnamed_addr constant [1000 x i16], align 16
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
define dso_local noundef ptr @__dpd32FromNumber(ptr noundef returned writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = load i32, ptr %1, align 4, !tbaa !44
  %10 = add nsw i32 %9, %8
  %11 = icmp sgt i32 %9, 7
  %12 = icmp sgt i32 %10, 97
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp slt i32 %10, -94
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 32) #11
  %18 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !45
  %21 = call ptr @decNumberPlus(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5) #11
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %23 = load i8, ptr %22, align 4, !tbaa !47
  %24 = and i8 %23, -128
  %25 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 2
  %26 = load i8, ptr %25, align 4, !tbaa !47
  %27 = or i8 %26, %24
  store i8 %27, ptr %25, align 4, !tbaa !47
  %28 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !48
  br label %30

30:                                               ; preds = %3, %16
  %31 = phi i32 [ %29, %16 ], [ 0, %3 ]
  %32 = phi ptr [ %4, %16 ], [ %1, %3 ]
  %33 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !47
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 112
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %30
  %39 = and i32 %35, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 2013265920, ptr %6, align 4, !tbaa !38
  br label %144

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !49
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, ptr %32, align 4, !tbaa !44
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %42
  %50 = load i32, ptr %32, align 4, !tbaa !44
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @decDigitsToDPD(ptr noundef nonnull %32, ptr noundef nonnull %6, i32 noundef 0) #11
  br label %53

53:                                               ; preds = %46, %52, %49
  %54 = load i8, ptr %33, align 4, !tbaa !47
  %55 = and i8 %54, 32
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr %6, align 4, !tbaa !38
  br i1 %56, label %60, label %58

58:                                               ; preds = %53
  %59 = or i32 %57, 2080374784
  store i32 %59, ptr %6, align 4, !tbaa !38
  br label %144

60:                                               ; preds = %53
  %61 = or i32 %57, 2113929216
  store i32 %61, ptr %6, align 4, !tbaa !38
  br label %144

62:                                               ; preds = %30
  %63 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3
  %64 = load i16, ptr %63, align 2, !tbaa !49
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32, ptr %32, align 4, !tbaa !44
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !42
  %72 = icmp slt i32 %71, -101
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = or i32 %31, 1024
  br label %81

75:                                               ; preds = %69
  %76 = add nsw i32 %71, 101
  %77 = icmp ugt i32 %76, 191
  %78 = or i32 %31, 1024
  %79 = select i1 %77, i32 %78, i32 %31
  %80 = call i32 @llvm.umin.i32(i32 %76, i32 191)
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %83 = phi i32 [ 0, %73 ], [ %80, %75 ]
  %84 = lshr i32 %83, 3
  %85 = and i32 %84, 24
  br label %134

86:                                               ; preds = %66, %62
  %87 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !42
  %89 = add i32 %88, 101
  %90 = icmp ult i32 %89, 192
  %91 = or i32 %31, 1024
  %92 = select i1 %90, i32 %31, i32 %91
  %93 = call i32 @llvm.umin.i32(i32 %89, i32 191)
  br i1 %90, label %94, label %116

94:                                               ; preds = %86
  %95 = zext i16 %64 to i64
  %96 = getelementptr inbounds [1000 x i16], ptr @BIN2DPD, i64 0, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !49
  %98 = zext i16 %97 to i32
  store i32 %98, ptr %6, align 4, !tbaa !38
  %99 = load i32, ptr %32, align 4, !tbaa !44
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3, i64 1
  %103 = load i16, ptr %102, align 2, !tbaa !49
  %104 = zext i16 %103 to i64
  %105 = getelementptr inbounds [1000 x i16], ptr @BIN2DPD, i64 0, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !49
  %107 = zext i16 %106 to i32
  %108 = shl nuw nsw i32 %107, 10
  %109 = or i32 %108, %98
  store i32 %109, ptr %6, align 4, !tbaa !38
  br label %110

110:                                              ; preds = %101, %94
  %111 = icmp eq i32 %99, 7
  br i1 %111, label %112, label %121

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.decNumber, ptr %32, i64 0, i32 3, i64 2
  %114 = load i16, ptr %113, align 2, !tbaa !49
  %115 = zext i16 %114 to i32
  br label %121

116:                                              ; preds = %86
  %117 = add i32 %88, -90
  call void @decDigitsToDPD(ptr noundef nonnull %32, ptr noundef nonnull %6, i32 noundef %117) #11
  %118 = load i32, ptr %6, align 4, !tbaa !38
  %119 = lshr i32 %118, 20
  %120 = and i32 %118, 1048575
  store i32 %120, ptr %6, align 4, !tbaa !38
  br label %121

121:                                              ; preds = %112, %110, %116
  %122 = phi i32 [ %119, %116 ], [ %115, %112 ], [ 0, %110 ]
  %123 = icmp ugt i32 %122, 7
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = lshr i32 %93, 5
  %126 = and i32 %125, 6
  %127 = and i32 %122, 1
  %128 = or disjoint i32 %126, %127
  %129 = or disjoint i32 %128, 24
  br label %134

130:                                              ; preds = %121
  %131 = lshr i32 %93, 3
  %132 = and i32 %131, 24
  %133 = or disjoint i32 %122, %132
  br label %134

134:                                              ; preds = %124, %130, %81
  %135 = phi i32 [ %82, %81 ], [ %92, %130 ], [ %92, %124 ]
  %136 = phi i32 [ %85, %81 ], [ %133, %130 ], [ %129, %124 ]
  %137 = phi i32 [ %83, %81 ], [ %93, %130 ], [ %93, %124 ]
  %138 = shl nuw nsw i32 %136, 26
  %139 = load i32, ptr %6, align 4, !tbaa !38
  %140 = or i32 %139, %138
  %141 = shl nuw nsw i32 %137, 20
  %142 = and i32 %141, 66060288
  %143 = or i32 %140, %142
  store i32 %143, ptr %6, align 4, !tbaa !38
  br label %144

144:                                              ; preds = %41, %60, %58, %134
  %145 = phi i32 [ %31, %41 ], [ %31, %58 ], [ %31, %60 ], [ %135, %134 ]
  %146 = load i8, ptr %33, align 4, !tbaa !47
  %147 = icmp sgt i8 %146, -1
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %6, align 4, !tbaa !38
  %150 = or i32 %149, -2147483648
  store i32 %150, ptr %6, align 4, !tbaa !38
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, ptr %6, align 4, !tbaa !38
  store i32 %152, ptr %0, align 1
  %153 = icmp eq i32 %145, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %145) #11
  br label %156

156:                                              ; preds = %154, %151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %0
}

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @decNumberPlus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @decDigitsToDPD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @decContextSetStatus(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd32ToNumber(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = load i32, ptr %0, align 1
  store i32 %4, ptr %3, align 4, !tbaa !38
  %5 = lshr i32 %4, 26
  %6 = and i32 %5, 31
  %7 = tail call ptr @decNumberZero(ptr noundef %1) #11
  %8 = load i32, ptr %3, align 4, !tbaa !38
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  store i8 -128, ptr %11, align 4, !tbaa !47
  br label %12

12:                                               ; preds = %10, %2
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds [32 x i32], ptr @COMBMSD, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = getelementptr inbounds [32 x i32], ptr @COMBEXP, i64 0, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %23 = load i8, ptr %22, align 4, !tbaa !47
  %24 = or i8 %23, 64
  store i8 %24, ptr %22, align 4, !tbaa !47
  br label %55

25:                                               ; preds = %19
  %26 = and i32 %8, 33554432
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %29 = load i8, ptr %28, align 4, !tbaa !47
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = or i8 %29, 16
  store i8 %31, ptr %28, align 4, !tbaa !47
  br label %41

32:                                               ; preds = %25
  %33 = or i8 %29, 32
  store i8 %33, ptr %28, align 4, !tbaa !47
  br label %41

34:                                               ; preds = %12
  %35 = shl i32 %17, 6
  %36 = lshr i32 %8, 20
  %37 = and i32 %36, 63
  %38 = add nuw nsw i32 %37, -101
  %39 = add i32 %38, %35
  %40 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !42
  br label %41

41:                                               ; preds = %32, %30, %34
  %42 = phi i32 [ %15, %34 ], [ 0, %30 ], [ 0, %32 ]
  %43 = and i32 %8, 1048575
  store i32 %43, ptr %3, align 4, !tbaa !38
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = shl i32 %42, 20
  %47 = or disjoint i32 %46, %43
  store i32 %47, ptr %3, align 4, !tbaa !38
  call void @decDigitsFromDPD(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 3) #11
  br label %55

48:                                               ; preds = %41
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = and i32 %8, 1047552
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @decDigitsFromDPD(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #11
  br label %55

54:                                               ; preds = %50
  call void @decDigitsFromDPD(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #11
  br label %55

55:                                               ; preds = %53, %54, %48, %45, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberZero(ptr noundef) local_unnamed_addr #5

declare void @decDigitsFromDPD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd32ToEngString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = call ptr @__dpd32ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToEngString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberToEngString(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @__dpd32ToString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #7 !prof !34 {
  %3 = load i32, ptr %0, align 1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !51
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %1, %2 ]
  %9 = lshr i32 %3, 26
  %10 = and i32 %9, 31
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [32 x i32], ptr @COMBMSD, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = getelementptr inbounds [32 x i32], ptr @COMBEXP, i64 0, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %32

17:                                               ; preds = %7
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  store i32 6712905, ptr %8, align 1
  %20 = getelementptr inbounds i8, ptr %8, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %20, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false) #11
  br label %181

21:                                               ; preds = %17
  %22 = and i32 %3, 33554432
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 115, ptr %8, align 1, !tbaa !51
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %25, %24 ], [ %8, %21 ]
  store i32 5136718, ptr %27, align 1
  %28 = and i32 %3, 1048575
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %181, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 3
  br label %38

32:                                               ; preds = %7
  %33 = shl i32 %15, 6
  %34 = lshr i32 %3, 20
  %35 = and i32 %34, 63
  %36 = add nuw nsw i32 %35, -101
  %37 = add i32 %36, %33
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi ptr [ %31, %30 ], [ %8, %32 ]
  %40 = phi i32 [ 0, %30 ], [ %37, %32 ]
  %41 = phi i32 [ 0, %30 ], [ %13, %32 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = trunc i32 %41 to i8
  %45 = add i8 %44, 48
  %46 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %45, ptr %39, align 1, !tbaa !51
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi ptr [ %46, %43 ], [ %39, %38 ]
  %49 = lshr i32 %3, 10
  %50 = and i32 %49, 1023
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !49
  %54 = zext i16 %53 to i64
  %55 = shl nuw nsw i64 %54, 2
  %56 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %55
  %57 = icmp eq ptr %48, %39
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  br label %68

60:                                               ; preds = %47
  %61 = load i8, ptr %56, align 4, !tbaa !51
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %56, i64 4
  %65 = zext i8 %61 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  br label %68

68:                                               ; preds = %58, %63
  %69 = phi ptr [ %67, %63 ], [ %59, %58 ]
  %70 = phi i64 [ %65, %63 ], [ 3, %58 ]
  %71 = load i32, ptr %69, align 1
  store i32 %71, ptr %48, align 1
  %72 = getelementptr inbounds i8, ptr %48, i64 %70
  br label %73

73:                                               ; preds = %68, %60
  %74 = phi ptr [ %48, %60 ], [ %72, %68 ]
  %75 = and i32 %3, 1023
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [1024 x i16], ptr @DPD2BIN, i64 0, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !49
  %79 = zext i16 %78 to i64
  %80 = shl nuw nsw i64 %79, 2
  %81 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %80
  %82 = icmp eq ptr %74, %39
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  br label %93

85:                                               ; preds = %73
  %86 = load i8, ptr %81, align 4, !tbaa !51
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds i8, ptr %81, i64 4
  %90 = zext i8 %86 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  br label %93

93:                                               ; preds = %83, %88
  %94 = phi ptr [ %92, %88 ], [ %84, %83 ]
  %95 = phi i64 [ %90, %88 ], [ 3, %83 ]
  %96 = load i32, ptr %94, align 1
  store i32 %96, ptr %74, align 1
  %97 = getelementptr inbounds i8, ptr %74, i64 %95
  br label %98

98:                                               ; preds = %93, %85
  %99 = phi ptr [ %74, %85 ], [ %97, %93 ]
  %100 = icmp eq ptr %99, %39
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 48, ptr %99, align 1, !tbaa !51
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi ptr [ %102, %101 ], [ %99, %98 ]
  %105 = icmp eq i32 %40, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i8 0, ptr %104, align 1, !tbaa !51
  br label %181

107:                                              ; preds = %103
  %108 = ptrtoint ptr %104 to i64
  %109 = ptrtoint ptr %39 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = add i32 %40, %111
  %113 = icmp sgt i32 %40, 0
  %114 = icmp slt i32 %112, -5
  %115 = select i1 %113, i1 true, i1 %114
  %116 = add nsw i32 %112, -1
  %117 = select i1 %115, i32 1, i32 %112
  %118 = select i1 %115, i32 %116, i32 0
  %119 = getelementptr inbounds i8, ptr %104, i64 -1
  %120 = icmp sgt i32 %117, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %107
  %122 = zext nneg i32 %117 to i64
  %123 = getelementptr inbounds i8, ptr %39, i64 %122
  %124 = icmp ult ptr %123, %104
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = icmp ult ptr %119, %123
  br i1 %126, label %134, label %127

127:                                              ; preds = %125, %127
  %128 = phi ptr [ %132, %127 ], [ %104, %125 ]
  %129 = phi ptr [ %131, %127 ], [ %119, %125 ]
  %130 = load i8, ptr %129, align 1, !tbaa !51
  store i8 %130, ptr %128, align 1, !tbaa !51
  %131 = getelementptr inbounds i8, ptr %129, i64 -1
  %132 = getelementptr inbounds i8, ptr %128, i64 -1
  %133 = icmp ult ptr %131, %123
  br i1 %133, label %134, label %127, !llvm.loop !52

134:                                              ; preds = %127, %125
  %135 = phi ptr [ %104, %125 ], [ %132, %127 ]
  store i8 46, ptr %135, align 1, !tbaa !51
  %136 = getelementptr inbounds i8, ptr %104, i64 1
  br label %137

137:                                              ; preds = %134, %121
  %138 = phi ptr [ %136, %134 ], [ %104, %121 ]
  %139 = icmp eq i32 %118, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, ptr %138, i64 1
  store i8 69, ptr %138, align 1, !tbaa !51
  %142 = getelementptr inbounds i8, ptr %138, i64 2
  store i8 43, ptr %141, align 1, !tbaa !51
  %143 = icmp slt i32 %118, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  store i8 45, ptr %141, align 1, !tbaa !51
  %145 = sub nsw i32 0, %118
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i32 [ %145, %144 ], [ %118, %140 ]
  %148 = shl nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4001 x i8], ptr @BIN2CHAR, i64 0, i64 %149
  %151 = getelementptr inbounds i8, ptr %150, i64 4
  %152 = load i8, ptr %150, align 4, !tbaa !51
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %151, i64 %154
  %156 = load i32, ptr %155, align 1
  store i32 %156, ptr %142, align 1
  %157 = getelementptr inbounds i8, ptr %142, i64 %153
  br label %158

158:                                              ; preds = %146, %137
  %159 = phi ptr [ %157, %146 ], [ %138, %137 ]
  store i8 0, ptr %159, align 1, !tbaa !51
  br label %181

160:                                              ; preds = %107
  %161 = getelementptr inbounds i8, ptr %104, i64 1
  %162 = sext i32 %117 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store i8 0, ptr %165, align 1, !tbaa !51
  %166 = icmp ult ptr %119, %39
  br i1 %166, label %174, label %167

167:                                              ; preds = %160, %167
  %168 = phi ptr [ %172, %167 ], [ %164, %160 ]
  %169 = phi ptr [ %171, %167 ], [ %119, %160 ]
  %170 = load i8, ptr %169, align 1, !tbaa !51
  store i8 %170, ptr %168, align 1, !tbaa !51
  %171 = getelementptr inbounds i8, ptr %169, i64 -1
  %172 = getelementptr inbounds i8, ptr %168, i64 -1
  %173 = icmp ult ptr %171, %39
  br i1 %173, label %174, label %167, !llvm.loop !53

174:                                              ; preds = %167, %160
  %175 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 48, ptr %39, align 1, !tbaa !51
  store i8 46, ptr %175, align 1, !tbaa !51
  %176 = icmp slt i32 %117, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = getelementptr i8, ptr %39, i64 2
  %179 = sub i32 0, %117
  %180 = zext i32 %179 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %178, i8 48, i64 %180, i1 false), !tbaa !51
  br label %181

181:                                              ; preds = %177, %174, %26, %158, %106, %19
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @__dpd32FromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #11
  %7 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !45
  %10 = call ptr @decNumberFromString(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = call ptr @__dpd32FromNumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %13) #11
  br label %17

17:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret ptr %0
}

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decimal32IsCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = alloca %struct.decNumber, align 4
  %3 = alloca %struct.decimal32, align 1
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #11
  %6 = call ptr @__dpd32ToNumber(ptr noundef %0, ptr noundef nonnull %2)
  %7 = call ptr @__dpd32FromNumber(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %8 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) %3, i64 4)
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32Canonical(ptr noundef returned %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #11
  %6 = call ptr @__dpd32ToNumber(ptr noundef %1, ptr noundef nonnull %3)
  %7 = call ptr @__dpd32FromNumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32FromNumber(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %union.anon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call ptr @__dpd32FromNumber(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %6 = load i32, ptr %0, align 1
  call void @__ieee_to_host_32(i32 %6, ptr noundef nonnull %4) #11
  call void @_dpd_to_bid32(ptr noundef nonnull %4, ptr noundef nonnull %4) #11
  %7 = load i32, ptr %4, align 4, !tbaa !51
  call void @__host_to_ieee_32(i32 noundef %7, ptr noundef nonnull %4) #11
  %8 = load i32, ptr %4, align 4, !tbaa !51
  store i32 %8, ptr %0, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret ptr %0
}

declare void @__ieee_to_host_32(i32, ptr noundef) local_unnamed_addr #5

declare void @_dpd_to_bid32(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @__host_to_ieee_32(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32ToNumber(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %union.anon.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = load i32, ptr %0, align 1
  call void @__ieee_to_host_32(i32 %4, ptr noundef nonnull %3) #11
  call void @_bid_to_dpd32(ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  %5 = load i32, ptr %3, align 4, !tbaa !51
  call void @__host_to_ieee_32(i32 noundef %5, ptr noundef nonnull %3) #11
  %6 = call ptr @__dpd32ToNumber(ptr noundef nonnull %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %1
}

declare void @_bid_to_dpd32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32ToString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = call ptr @decimal32ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %1
}

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32ToEngString(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = call ptr @decimal32ToNumber(ptr noundef %0, ptr noundef nonnull %3)
  %5 = call ptr @decNumberToEngString(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @decimal32FromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #11
  %7 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !45
  %10 = call ptr @decNumberFromString(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = call ptr @decimal32FromNumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %13) #11
  br label %17

17:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret ptr %0
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 4}
!43 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10}
!44 = !{!43, !39, i64 0}
!45 = !{!46, !39, i64 12}
!46 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24}
!47 = !{!43, !40, i64 8}
!48 = !{!46, !39, i64 20}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !40, i64 0}
!51 = !{!40, !40, i64 0}
!52 = distinct !{!52, !36, !37}
!53 = distinct !{!53, !36, !37}
