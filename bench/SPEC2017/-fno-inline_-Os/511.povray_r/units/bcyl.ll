; ModuleID = 'bcyl.cpp'
source_filename = "bcyl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::BCyl_Intersection_Struct" = type { i32, [2 x double], [2 x double] }
%"struct.pov::BCyl_Struct" = type { i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::BCyl_Entry_Struct" = type { i16, i16, i16, i16 }

$_ZN3pov3SqrEd = comdat any

@.str = private unnamed_addr constant [9 x i8] c"bcyl.cpp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bounding cylinder\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bounding cylinder data\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"lathe intersection list\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"temp lathe data\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov14Intersect_BCylEPNS_11BCyl_StructEPdS2_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [8 x double], align 16
  %6 = alloca %"struct.pov::BCyl_Intersection_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  store i32 0, ptr %4, align 4, !tbaa !34
  %7 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %6, i64 0, i32 1, i64 1
  store double 0.000000e+00, ptr %8, align 8, !tbaa !38
  tail call fastcc void @_ZN3povL24intersect_bound_elementsEPNS_11BCyl_StructEPdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %9 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load i32, ptr %0, align 8, !tbaa !44
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds [8 x double], ptr %5, i64 0, i64 1
  %16 = getelementptr inbounds [8 x double], ptr %5, i64 0, i64 2
  %17 = getelementptr inbounds [8 x double], ptr %5, i64 0, i64 3
  br label %18

18:                                               ; preds = %13, %57
  %19 = phi i64 [ 0, %13 ], [ %58, %57 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %20, i64 %19
  %22 = call fastcc noundef i32 @_ZN3povL24intersect_thick_cylinderEPNS_11BCyl_StructEPNS_17BCyl_Entry_StructEPd(ptr noundef nonnull %0, ptr noundef %21, ptr noundef nonnull %5) #10
  switch i32 %22, label %53 [
    i32 0, label %57
    i32 2, label %23
    i32 4, label %33
  ]

23:                                               ; preds = %18
  %24 = load double, ptr %5, align 16, !tbaa !38
  %25 = fcmp ogt double %24, 0x3E7AD7F29ABCAF48
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  store double %24, ptr %7, align 8, !tbaa !38
  %27 = trunc i64 %19 to i32
  store i32 %27, ptr %6, align 8, !tbaa !46
  br label %56

28:                                               ; preds = %23
  %29 = load double, ptr %15, align 8, !tbaa !38
  %30 = fcmp ogt double %29, 0x3E7AD7F29ABCAF48
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  store double 0.000000e+00, ptr %7, align 8, !tbaa !38
  %32 = trunc i64 %19 to i32
  store i32 %32, ptr %6, align 8, !tbaa !46
  br label %56

33:                                               ; preds = %18
  %34 = load double, ptr %5, align 16, !tbaa !38
  %35 = fcmp ogt double %34, 0x3E7AD7F29ABCAF48
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  store double %34, ptr %7, align 8, !tbaa !38
  %37 = trunc i64 %19 to i32
  store i32 %37, ptr %6, align 8, !tbaa !46
  br label %56

38:                                               ; preds = %33
  %39 = load double, ptr %15, align 8, !tbaa !38
  %40 = fcmp ogt double %39, 0x3E7AD7F29ABCAF48
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  store double 0.000000e+00, ptr %7, align 8, !tbaa !38
  %42 = trunc i64 %19 to i32
  store i32 %42, ptr %6, align 8, !tbaa !46
  br label %56

43:                                               ; preds = %38
  %44 = load double, ptr %16, align 16, !tbaa !38
  %45 = fcmp ogt double %44, 0x3E7AD7F29ABCAF48
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store double %44, ptr %7, align 8, !tbaa !38
  %47 = trunc i64 %19 to i32
  store i32 %47, ptr %6, align 8, !tbaa !46
  br label %56

48:                                               ; preds = %43
  %49 = load double, ptr %17, align 8, !tbaa !38
  %50 = fcmp ogt double %49, 0x3E7AD7F29ABCAF48
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  store double 0.000000e+00, ptr %7, align 8, !tbaa !38
  %52 = trunc i64 %19 to i32
  store i32 %52, ptr %6, align 8, !tbaa !46
  br label %56

53:                                               ; preds = %18
  %54 = load double, ptr %5, align 16, !tbaa !38
  store double %54, ptr %7, align 8, !tbaa !38
  %55 = trunc i64 %19 to i32
  store i32 %55, ptr %6, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %36, %46, %51, %41, %26, %31, %53
  call fastcc void @_ZN3povL10insert_hitEPNS_24BCyl_Intersection_StructES1_Pi(ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %4) #10
  br label %57

57:                                               ; preds = %56, %18, %28, %48
  %58 = add nuw nsw i64 %19, 1
  %59 = load i32, ptr %0, align 8, !tbaa !44
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %18, label %62, !llvm.loop !48

62:                                               ; preds = %57
  %63 = load i32, ptr %4, align 4, !tbaa !34
  br label %64

64:                                               ; preds = %62, %3
  %65 = phi i32 [ %63, %62 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN3povL24intersect_bound_elementsEPNS_11BCyl_StructEPdS2_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !50 {
  %4 = load double, ptr %2, align 8, !tbaa !38
  %5 = getelementptr inbounds double, ptr %2, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fmul double %6, %6
  %8 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %7)
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = fmul double %6, %11
  %13 = tail call double @llvm.fmuladd.f64(double %9, double %4, double %12)
  %14 = fmul double %13, %13
  %15 = fmul double %13, 2.000000e+00
  %16 = fmul double %11, %11
  %17 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %16)
  %18 = getelementptr inbounds double, ptr %2, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fcmp olt double %19, 0xBE7AD7F29ABCAF48
  %21 = fcmp ogt double %19, 0x3E7AD7F29ABCAF48
  %22 = or i1 %20, %21
  %23 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !51
  %25 = icmp sgt i16 %24, 0
  br i1 %22, label %62, label %26

26:                                               ; preds = %3
  br i1 %25, label %27, label %85

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = zext nneg i16 %24 to i64
  %31 = add nuw nsw i64 %30, 3
  %32 = and i64 %31, 65532
  %33 = add nsw i64 %30, -1
  %34 = insertelement <4 x i64> poison, i64 %33, i64 0
  %35 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %36

36:                                               ; preds = %58, %27
  %37 = phi i64 [ 0, %27 ], [ %59, %58 ]
  %38 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %27 ], [ %60, %58 ]
  %39 = icmp ule <4 x i64> %38, %35
  %40 = extractelement <4 x i1> %39, i64 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %29, i64 %37
  store i32 0, ptr %42, align 8, !tbaa !46
  br label %43

43:                                               ; preds = %41, %36
  %44 = extractelement <4 x i1> %39, i64 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = or disjoint i64 %37, 1
  %47 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %29, i64 %46
  store i32 0, ptr %47, align 8, !tbaa !46
  br label %48

48:                                               ; preds = %45, %43
  %49 = extractelement <4 x i1> %39, i64 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %37, 2
  %52 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %29, i64 %51
  store i32 0, ptr %52, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %50, %48
  %54 = extractelement <4 x i1> %39, i64 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = or disjoint i64 %37, 3
  %57 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %29, i64 %56
  store i32 0, ptr %57, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %55, %53
  %59 = add i64 %37, 4
  %60 = add <4 x i64> %38, <i64 4, i64 4, i64 4, i64 4>
  %61 = icmp eq i64 %59, %32
  br i1 %61, label %85, label %36, !llvm.loop !53

62:                                               ; preds = %3
  br i1 %25, label %63, label %85

63:                                               ; preds = %62
  %64 = zext nneg i16 %24 to i64
  %65 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = getelementptr inbounds double, ptr %1, i64 1
  %68 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  br label %70

70:                                               ; preds = %63, %70
  %71 = phi i64 [ 0, %63 ], [ %83, %70 ]
  %72 = getelementptr inbounds double, ptr %66, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !38
  %74 = load double, ptr %67, align 8, !tbaa !38
  %75 = fsub double %73, %74
  %76 = load double, ptr %18, align 8, !tbaa !38
  %77 = fdiv double %75, %76
  %78 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %69, i64 %71
  store i32 1, ptr %78, align 8, !tbaa !46
  %79 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %69, i64 %71, i32 1
  store double %77, ptr %79, align 8, !tbaa !38
  %80 = tail call double @llvm.fmuladd.f64(double %8, double %77, double %15)
  %81 = tail call double @llvm.fmuladd.f64(double %77, double %80, double %17)
  %82 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %69, i64 %71, i32 2
  store double %81, ptr %82, align 8, !tbaa !38
  %83 = add nuw nsw i64 %71, 1
  %84 = icmp eq i64 %83, %64
  br i1 %84, label %85, label %70, !llvm.loop !57

85:                                               ; preds = %58, %70, %26, %62
  %86 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 1
  %87 = load i16, ptr %86, align 4, !tbaa !58
  %88 = icmp sgt i16 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %91 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %92 = fneg double %8
  %93 = fneg double %13
  %94 = getelementptr inbounds double, ptr %1, i64 1
  %95 = load ptr, ptr %90, align 8, !tbaa !59
  br label %96

96:                                               ; preds = %89, %128
  %97 = phi i16 [ %87, %89 ], [ %129, %128 ]
  %98 = phi ptr [ %95, %89 ], [ %130, %128 ]
  %99 = phi i64 [ 0, %89 ], [ %131, %128 ]
  %100 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %98, i64 %99
  store i32 0, ptr %100, align 8, !tbaa !46
  %101 = load ptr, ptr %91, align 8, !tbaa !60
  %102 = getelementptr inbounds double, ptr %101, i64 %99
  %103 = load double, ptr %102, align 8, !tbaa !38
  %104 = fcmp ogt double %103, 0x3E7AD7F29ABCAF48
  br i1 %104, label %105, label %128

105:                                              ; preds = %96
  %106 = fsub double %17, %103
  %107 = tail call double @llvm.fmuladd.f64(double %92, double %106, double %14)
  %108 = fcmp ogt double %107, 0.000000e+00
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = tail call double @sqrt(double noundef %107) #11
  %111 = fsub double %110, %13
  %112 = fdiv double %111, %8
  %113 = load ptr, ptr %90, align 8, !tbaa !59
  %114 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %113, i64 %99
  store i32 2, ptr %114, align 8, !tbaa !46
  %115 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %113, i64 %99, i32 1
  store double %112, ptr %115, align 8, !tbaa !38
  %116 = load double, ptr %94, align 8, !tbaa !38
  %117 = load double, ptr %18, align 8, !tbaa !38
  %118 = tail call double @llvm.fmuladd.f64(double %112, double %117, double %116)
  %119 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %113, i64 %99, i32 2
  store double %118, ptr %119, align 8, !tbaa !38
  %120 = fsub double %93, %110
  %121 = fdiv double %120, %8
  %122 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %113, i64 %99, i32 1, i64 1
  store double %121, ptr %122, align 8, !tbaa !38
  %123 = load double, ptr %94, align 8, !tbaa !38
  %124 = load double, ptr %18, align 8, !tbaa !38
  %125 = tail call double @llvm.fmuladd.f64(double %121, double %124, double %123)
  %126 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %113, i64 %99, i32 2, i64 1
  store double %125, ptr %126, align 8, !tbaa !38
  %127 = load i16, ptr %86, align 4, !tbaa !58
  br label %128

128:                                              ; preds = %96, %109, %105
  %129 = phi i16 [ %97, %96 ], [ %127, %109 ], [ %97, %105 ]
  %130 = phi ptr [ %98, %96 ], [ %113, %109 ], [ %98, %105 ]
  %131 = add nuw nsw i64 %99, 1
  %132 = sext i16 %129 to i64
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %96, label %134, !llvm.loop !61

134:                                              ; preds = %128, %85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @_ZN3povL24intersect_thick_cylinderEPNS_11BCyl_StructEPNS_17BCyl_Entry_StructEPd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !62 {
  %4 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = icmp eq i32 %10, 0
  %12 = load i16, ptr %1, align 2, !tbaa !65
  br i1 %11, label %32, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %8, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = sext i16 %12 to i64
  %19 = getelementptr inbounds double, ptr %17, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fcmp ult double %15, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %1, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !66
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds double, ptr %17, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = fcmp ugt double %15, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %8, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !38
  store double %31, ptr %2, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %13, %22, %29, %3
  %33 = phi i32 [ 1, %29 ], [ 0, %22 ], [ 0, %13 ], [ 0, %3 ]
  %34 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %1, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !67
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %36
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = sext i16 %12 to i64
  br label %64

42:                                               ; preds = %32
  %43 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %36, i32 2
  %44 = load double, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = sext i16 %12 to i64
  %48 = getelementptr inbounds double, ptr %46, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fcmp ult double %44, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %1, i64 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !66
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds double, ptr %46, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !38
  %57 = fcmp ugt double %44, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %5, i64 %36, i32 1
  %60 = load double, ptr %59, align 8, !tbaa !38
  %61 = add nuw nsw i32 %33, 1
  %62 = zext nneg i32 %33 to i64
  %63 = getelementptr inbounds double, ptr %2, i64 %62
  store double %60, ptr %63, align 8, !tbaa !38
  br label %64

64:                                               ; preds = %40, %42, %51, %58
  %65 = phi i64 [ %41, %40 ], [ %47, %42 ], [ %47, %51 ], [ %47, %58 ]
  %66 = phi i32 [ %33, %40 ], [ %33, %42 ], [ %33, %51 ], [ %61, %58 ]
  %67 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %65
  %70 = load i32, ptr %69, align 8, !tbaa !46
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %107, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %65, i32 2
  %74 = load double, ptr %73, align 8, !tbaa !38
  %75 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !56
  %77 = getelementptr inbounds double, ptr %76, i64 %36
  %78 = load double, ptr %77, align 8, !tbaa !38
  %79 = fcmp ult double %74, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds double, ptr %76, i64 %8
  %82 = load double, ptr %81, align 8, !tbaa !38
  %83 = fcmp ugt double %74, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %65, i32 1
  %86 = load double, ptr %85, align 8, !tbaa !38
  %87 = add nuw nsw i32 %66, 1
  %88 = zext nneg i32 %66 to i64
  %89 = getelementptr inbounds double, ptr %2, i64 %88
  store double %86, ptr %89, align 8, !tbaa !38
  %90 = load double, ptr %77, align 8, !tbaa !38
  br label %91

91:                                               ; preds = %84, %80, %72
  %92 = phi double [ %90, %84 ], [ %78, %80 ], [ %78, %72 ]
  %93 = phi i32 [ %87, %84 ], [ %66, %80 ], [ %66, %72 ]
  %94 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %65, i32 2, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !38
  %96 = fcmp ult double %95, %92
  br i1 %96, label %107, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds double, ptr %76, i64 %8
  %99 = load double, ptr %98, align 8, !tbaa !38
  %100 = fcmp ugt double %95, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %65, i32 1, i64 1
  %103 = load double, ptr %102, align 8, !tbaa !38
  %104 = add nuw nsw i32 %93, 1
  %105 = zext nneg i32 %93 to i64
  %106 = getelementptr inbounds double, ptr %2, i64 %105
  store double %103, ptr %106, align 8, !tbaa !38
  br label %107

107:                                              ; preds = %91, %97, %101, %64
  %108 = phi i32 [ %104, %101 ], [ %93, %97 ], [ %93, %91 ], [ %66, %64 ]
  %109 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %1, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !66
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %111
  %113 = load i32, ptr %112, align 8, !tbaa !46
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %150, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %111, i32 2
  %117 = load double, ptr %116, align 8, !tbaa !38
  %118 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = getelementptr inbounds double, ptr %119, i64 %36
  %121 = load double, ptr %120, align 8, !tbaa !38
  %122 = fcmp ult double %117, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds double, ptr %119, i64 %8
  %125 = load double, ptr %124, align 8, !tbaa !38
  %126 = fcmp ugt double %117, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %111, i32 1
  %129 = load double, ptr %128, align 8, !tbaa !38
  %130 = add nuw nsw i32 %108, 1
  %131 = zext nneg i32 %108 to i64
  %132 = getelementptr inbounds double, ptr %2, i64 %131
  store double %129, ptr %132, align 8, !tbaa !38
  %133 = load double, ptr %120, align 8, !tbaa !38
  br label %134

134:                                              ; preds = %127, %123, %115
  %135 = phi double [ %133, %127 ], [ %121, %123 ], [ %121, %115 ]
  %136 = phi i32 [ %130, %127 ], [ %108, %123 ], [ %108, %115 ]
  %137 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %111, i32 2, i64 1
  %138 = load double, ptr %137, align 8, !tbaa !38
  %139 = fcmp ult double %138, %135
  br i1 %139, label %150, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds double, ptr %119, i64 %8
  %142 = load double, ptr %141, align 8, !tbaa !38
  %143 = fcmp ugt double %138, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %68, i64 %111, i32 1, i64 1
  %146 = load double, ptr %145, align 8, !tbaa !38
  %147 = add nuw nsw i32 %136, 1
  %148 = zext nneg i32 %136 to i64
  %149 = getelementptr inbounds double, ptr %2, i64 %148
  store double %146, ptr %149, align 8, !tbaa !38
  br label %153

150:                                              ; preds = %134, %140, %107
  %151 = phi i32 [ %136, %140 ], [ %136, %134 ], [ %108, %107 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %144, %150
  %154 = phi i32 [ %147, %144 ], [ %151, %150 ]
  br label %155

155:                                              ; preds = %153, %176
  %156 = phi i32 [ %154, %153 ], [ %158, %176 ]
  %157 = phi i32 [ 0, %153 ], [ %177, %176 ]
  %158 = add nsw i32 %156, -1
  %159 = sub nsw i32 %157, %154
  %160 = icmp slt i32 %159, -1
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = zext i32 %158 to i64
  %163 = load double, ptr %2, align 8, !tbaa !38
  br label %164

164:                                              ; preds = %161, %173
  %165 = phi double [ %163, %161 ], [ %174, %173 ]
  %166 = phi i64 [ 0, %161 ], [ %167, %173 ]
  %167 = add nuw nsw i64 %166, 1
  %168 = getelementptr inbounds double, ptr %2, i64 %167
  %169 = load double, ptr %168, align 8, !tbaa !38
  %170 = fcmp ogt double %165, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = getelementptr inbounds double, ptr %2, i64 %166
  store double %169, ptr %172, align 8, !tbaa !38
  store double %165, ptr %168, align 8, !tbaa !38
  br label %173

173:                                              ; preds = %164, %171
  %174 = phi double [ %169, %164 ], [ %165, %171 ]
  %175 = icmp eq i64 %167, %162
  br i1 %175, label %176, label %164, !llvm.loop !68

176:                                              ; preds = %173, %155
  %177 = add nuw nsw i32 %157, 1
  %178 = icmp eq i32 %177, %154
  br i1 %178, label %179, label %155, !llvm.loop !69

179:                                              ; preds = %176, %150
  %180 = phi i32 [ 0, %150 ], [ %154, %176 ]
  ret i32 %180
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL10insert_hitEPNS_24BCyl_Intersection_StructES1_Pi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = load i32, ptr %2, align 4, !tbaa !34
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %1, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !71
  %7 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %0, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %9, %3
  %10 = phi i64 [ %14, %9 ], [ 0, %3 ]
  %11 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %1, i64 %10, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = fcmp ogt double %8, %12
  %14 = add nuw i64 %10, 1
  br i1 %13, label %9, label %15, !llvm.loop !73

15:                                               ; preds = %9
  %16 = trunc i64 %10 to i32
  %17 = load i32, ptr %2, align 4, !tbaa !34
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %1, i64 %10
  %21 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %20, i64 1
  %22 = sub nsw i32 %17, %16
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 40
  %25 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %21, ptr noundef %20, i64 noundef %24) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !71
  %26 = load i32, ptr %2, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i32 [ %26, %19 ], [ %17, %15 ]
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Create_BCylEiPdS0_S0_S0_(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #10
  store i32 %0, ptr %6, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 557, ptr noundef nonnull @.str.2) #10
  %10 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 8
  store ptr %9, ptr %10, align 8, !tbaa !45
  %11 = load i32, ptr %6, align 8, !tbaa !44
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 40
  %15 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %14, ptr noundef nonnull @.str, i32 noundef 561, ptr noundef nonnull @.str.3) #10
  %16 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !52
  %17 = load i32, ptr %6, align 8, !tbaa !44
  %18 = shl nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 40
  %21 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %20, ptr noundef nonnull @.str, i32 noundef 562, ptr noundef nonnull @.str.3) #10
  %22 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !59
  %23 = load i32, ptr %6, align 8, !tbaa !44
  %24 = shl nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 40
  %27 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %26, ptr noundef nonnull @.str, i32 noundef 564, ptr noundef nonnull @.str.3) #10
  %28 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !40
  %29 = load i32, ptr %6, align 8, !tbaa !44
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %31, ptr noundef nonnull @.str, i32 noundef 568, ptr noundef nonnull @.str.4) #10
  %33 = load i32, ptr %6, align 8, !tbaa !44
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  %36 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %35, ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.4) #10
  %37 = load i32, ptr %6, align 8, !tbaa !44
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %39, ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.4) #10
  %41 = load i32, ptr %6, align 8, !tbaa !44
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 571, ptr noundef nonnull @.str.4) #10
  %45 = load i32, ptr %6, align 8, !tbaa !44
  %46 = shl nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %48, ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.4) #10
  %50 = load i32, ptr %6, align 8, !tbaa !44
  %51 = shl nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %53, ptr noundef nonnull @.str, i32 noundef 574, ptr noundef nonnull @.str.4) #10
  %55 = load i32, ptr %6, align 8, !tbaa !44
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %181

57:                                               ; preds = %5, %174
  %58 = phi i64 [ %177, %174 ], [ 0, %5 ]
  %59 = phi i32 [ %176, %174 ], [ 0, %5 ]
  %60 = phi i32 [ %120, %174 ], [ 0, %5 ]
  %61 = getelementptr inbounds i32, ptr %32, i64 %58
  %62 = getelementptr inbounds i32, ptr %36, i64 %58
  %63 = getelementptr inbounds i32, ptr %40, i64 %58
  %64 = getelementptr inbounds i32, ptr %44, i64 %58
  %65 = icmp sgt i32 %60, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = getelementptr inbounds double, ptr %1, i64 %58
  %68 = load double, ptr %67, align 8, !tbaa !38
  %69 = zext nneg i32 %60 to i64
  br label %70

70:                                               ; preds = %66, %75
  %71 = phi i64 [ 0, %66 ], [ %76, %75 ]
  %72 = getelementptr inbounds double, ptr %49, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !38
  %74 = fcmp oeq double %68, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, %69
  br i1 %77, label %83, label %70, !llvm.loop !74

78:                                               ; preds = %70
  %79 = trunc i64 %71 to i32
  br label %80

80:                                               ; preds = %78, %57
  %81 = phi i32 [ 0, %57 ], [ %79, %78 ]
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %83, label %90

83:                                               ; preds = %75, %80
  %84 = phi i32 [ %81, %80 ], [ %60, %75 ]
  %85 = getelementptr inbounds double, ptr %1, i64 %58
  %86 = load double, ptr %85, align 8, !tbaa !38
  %87 = add nsw i32 %60, 1
  %88 = sext i32 %60 to i64
  %89 = getelementptr inbounds double, ptr %49, i64 %88
  store double %86, ptr %89, align 8, !tbaa !38
  br label %90

90:                                               ; preds = %83, %80
  %91 = phi i32 [ %84, %83 ], [ %81, %80 ]
  %92 = phi i32 [ %87, %83 ], [ %60, %80 ]
  store i32 %91, ptr %61, align 4, !tbaa !34
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = getelementptr inbounds double, ptr %2, i64 %58
  %96 = load double, ptr %95, align 8, !tbaa !38
  %97 = zext nneg i32 %92 to i64
  br label %98

98:                                               ; preds = %94, %103
  %99 = phi i64 [ 0, %94 ], [ %104, %103 ]
  %100 = getelementptr inbounds double, ptr %49, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !38
  %102 = fcmp oeq double %96, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = add nuw nsw i64 %99, 1
  %105 = icmp eq i64 %104, %97
  br i1 %105, label %111, label %98, !llvm.loop !75

106:                                              ; preds = %98
  %107 = trunc i64 %99 to i32
  br label %108

108:                                              ; preds = %106, %90
  %109 = phi i32 [ 0, %90 ], [ %107, %106 ]
  %110 = icmp eq i32 %109, %92
  br i1 %110, label %111, label %118

111:                                              ; preds = %103, %108
  %112 = phi i32 [ %109, %108 ], [ %92, %103 ]
  %113 = getelementptr inbounds double, ptr %2, i64 %58
  %114 = load double, ptr %113, align 8, !tbaa !38
  %115 = add nsw i32 %92, 1
  %116 = sext i32 %92 to i64
  %117 = getelementptr inbounds double, ptr %49, i64 %116
  store double %114, ptr %117, align 8, !tbaa !38
  br label %118

118:                                              ; preds = %111, %108
  %119 = phi i32 [ %112, %111 ], [ %109, %108 ]
  %120 = phi i32 [ %115, %111 ], [ %92, %108 ]
  store i32 %119, ptr %62, align 4, !tbaa !34
  %121 = icmp sgt i32 %59, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = getelementptr inbounds double, ptr %3, i64 %58
  %124 = load double, ptr %123, align 8, !tbaa !38
  %125 = zext nneg i32 %59 to i64
  br label %126

126:                                              ; preds = %122, %131
  %127 = phi i64 [ 0, %122 ], [ %132, %131 ]
  %128 = getelementptr inbounds double, ptr %54, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !38
  %130 = fcmp oeq double %124, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = add nuw nsw i64 %127, 1
  %133 = icmp eq i64 %132, %125
  br i1 %133, label %139, label %126, !llvm.loop !76

134:                                              ; preds = %126
  %135 = trunc i64 %127 to i32
  br label %136

136:                                              ; preds = %134, %118
  %137 = phi i32 [ 0, %118 ], [ %135, %134 ]
  %138 = icmp eq i32 %137, %59
  br i1 %138, label %139, label %146

139:                                              ; preds = %131, %136
  %140 = phi i32 [ %137, %136 ], [ %59, %131 ]
  %141 = getelementptr inbounds double, ptr %3, i64 %58
  %142 = load double, ptr %141, align 8, !tbaa !38
  %143 = add nsw i32 %59, 1
  %144 = sext i32 %59 to i64
  %145 = getelementptr inbounds double, ptr %54, i64 %144
  store double %142, ptr %145, align 8, !tbaa !38
  br label %146

146:                                              ; preds = %139, %136
  %147 = phi i32 [ %140, %139 ], [ %137, %136 ]
  %148 = phi i32 [ %143, %139 ], [ %59, %136 ]
  store i32 %147, ptr %63, align 4, !tbaa !34
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = getelementptr inbounds double, ptr %4, i64 %58
  %152 = load double, ptr %151, align 8, !tbaa !38
  %153 = zext nneg i32 %148 to i64
  br label %154

154:                                              ; preds = %150, %159
  %155 = phi i64 [ 0, %150 ], [ %160, %159 ]
  %156 = getelementptr inbounds double, ptr %54, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !38
  %158 = fcmp oeq double %152, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = add nuw nsw i64 %155, 1
  %161 = icmp eq i64 %160, %153
  br i1 %161, label %167, label %154, !llvm.loop !77

162:                                              ; preds = %154
  %163 = trunc i64 %155 to i32
  br label %164

164:                                              ; preds = %162, %146
  %165 = phi i32 [ 0, %146 ], [ %163, %162 ]
  %166 = icmp eq i32 %165, %148
  br i1 %166, label %167, label %174

167:                                              ; preds = %159, %164
  %168 = phi i32 [ %165, %164 ], [ %148, %159 ]
  %169 = getelementptr inbounds double, ptr %4, i64 %58
  %170 = load double, ptr %169, align 8, !tbaa !38
  %171 = add nsw i32 %148, 1
  %172 = sext i32 %148 to i64
  %173 = getelementptr inbounds double, ptr %54, i64 %172
  store double %170, ptr %173, align 8, !tbaa !38
  br label %174

174:                                              ; preds = %167, %164
  %175 = phi i32 [ %168, %167 ], [ %165, %164 ]
  %176 = phi i32 [ %171, %167 ], [ %148, %164 ]
  store i32 %175, ptr %64, align 4, !tbaa !34
  %177 = add nuw nsw i64 %58, 1
  %178 = load i32, ptr %6, align 8, !tbaa !44
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %57, label %181, !llvm.loop !78

181:                                              ; preds = %174, %5
  %182 = phi i32 [ 0, %5 ], [ %120, %174 ]
  %183 = phi i32 [ 0, %5 ], [ %176, %174 ]
  %184 = sext i32 %182 to i64
  %185 = shl nsw i64 %184, 3
  %186 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %185, ptr noundef nonnull @.str, i32 noundef 651, ptr noundef nonnull @.str.2) #10
  %187 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 3
  store ptr %186, ptr %187, align 8, !tbaa !60
  %188 = sext i32 %183 to i64
  %189 = shl nsw i64 %188, 3
  %190 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %189, ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.2) #10
  %191 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 4
  store ptr %190, ptr %191, align 8, !tbaa !56
  %192 = icmp sgt i32 %182, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %181
  %194 = zext nneg i32 %182 to i64
  br label %200

195:                                              ; preds = %200, %181
  %196 = icmp sgt i32 %183, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %195
  %198 = load ptr, ptr %191, align 8, !tbaa !56
  %199 = zext nneg i32 %183 to i64
  br label %209

200:                                              ; preds = %193, %200
  %201 = phi i64 [ 0, %193 ], [ %207, %200 ]
  %202 = getelementptr inbounds double, ptr %49, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !38
  %204 = tail call noundef double @_ZN3pov3SqrEd(double noundef %203) #10
  %205 = load ptr, ptr %187, align 8, !tbaa !60
  %206 = getelementptr inbounds double, ptr %205, i64 %201
  store double %204, ptr %206, align 8, !tbaa !38
  %207 = add nuw nsw i64 %201, 1
  %208 = icmp eq i64 %207, %194
  br i1 %208, label %195, label %200, !llvm.loop !79

209:                                              ; preds = %197, %209
  %210 = phi i64 [ 0, %197 ], [ %214, %209 ]
  %211 = getelementptr inbounds double, ptr %54, i64 %210
  %212 = load double, ptr %211, align 8, !tbaa !38
  %213 = getelementptr inbounds double, ptr %198, i64 %210
  store double %212, ptr %213, align 8, !tbaa !38
  %214 = add nuw nsw i64 %210, 1
  %215 = icmp eq i64 %214, %199
  br i1 %215, label %216, label %209, !llvm.loop !80

216:                                              ; preds = %209, %195
  %217 = trunc i32 %182 to i16
  %218 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 1
  store i16 %217, ptr %218, align 4, !tbaa !58
  %219 = trunc i32 %183 to i16
  %220 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 2
  store i16 %219, ptr %220, align 2, !tbaa !51
  %221 = load i32, ptr %6, align 8, !tbaa !44
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %246

223:                                              ; preds = %216
  %224 = load ptr, ptr %10, align 8, !tbaa !45
  %225 = zext nneg i32 %221 to i64
  br label %226

226:                                              ; preds = %223, %226
  %227 = phi i64 [ 0, %223 ], [ %244, %226 ]
  %228 = getelementptr inbounds i32, ptr %32, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !34
  %230 = trunc i32 %229 to i16
  %231 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %224, i64 %227
  store i16 %230, ptr %231, align 2, !tbaa !65
  %232 = getelementptr inbounds i32, ptr %36, i64 %227
  %233 = load i32, ptr %232, align 4, !tbaa !34
  %234 = trunc i32 %233 to i16
  %235 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %224, i64 %227, i32 1
  store i16 %234, ptr %235, align 2, !tbaa !66
  %236 = getelementptr inbounds i32, ptr %40, i64 %227
  %237 = load i32, ptr %236, align 4, !tbaa !34
  %238 = trunc i32 %237 to i16
  %239 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %224, i64 %227, i32 2
  store i16 %238, ptr %239, align 2, !tbaa !67
  %240 = getelementptr inbounds i32, ptr %44, i64 %227
  %241 = load i32, ptr %240, align 4, !tbaa !34
  %242 = trunc i32 %241 to i16
  %243 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %224, i64 %227, i32 3
  store i16 %242, ptr %243, align 2, !tbaa !63
  %244 = add nuw nsw i64 %227, 1
  %245 = icmp eq i64 %244, %225
  br i1 %245, label %246, label %226, !llvm.loop !81

246:                                              ; preds = %226, %216
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %54, ptr noundef nonnull @.str, i32 noundef 684) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %49, ptr noundef nonnull @.str, i32 noundef 685) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %44, ptr noundef nonnull @.str, i32 noundef 686) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef 687) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 688) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %32, ptr noundef nonnull @.str, i32 noundef 689) #10
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #5 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov12Destroy_BCylEPNS_11BCyl_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 726) #10
  store ptr null, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 728) #10
  store ptr null, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 730) #10
  store ptr null, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 732) #10
  store ptr null, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 734) #10
  store ptr null, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 736) #10
  store ptr null, ptr %12, align 8, !tbaa !40
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 738) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !36, i64 0}
!40 = !{!41, !43, i64 40}
!41 = !{!"_ZTSN3pov11BCyl_StructE", !35, i64 0, !42, i64 4, !42, i64 6, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!42 = !{!"short", !36, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!41, !35, i64 0}
!45 = !{!41, !43, i64 48}
!46 = !{!47, !35, i64 0}
!47 = !{!"_ZTSN3pov24BCyl_Intersection_StructE", !35, i64 0, !36, i64 8, !36, i64 24}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"bcyl.cpp:_ZN3povL24intersect_bound_elementsEPNS_11BCyl_StructEPdS2_"}
!51 = !{!41, !42, i64 6}
!52 = !{!41, !43, i64 32}
!53 = distinct !{!53, !49, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!41, !43, i64 16}
!57 = distinct !{!57, !49}
!58 = !{!41, !42, i64 4}
!59 = !{!41, !43, i64 24}
!60 = !{!41, !43, i64 8}
!61 = distinct !{!61, !49}
!62 = !{!"bcyl.cpp:_ZN3povL24intersect_thick_cylinderEPNS_11BCyl_StructEPNS_17BCyl_Entry_StructEPd"}
!63 = !{!64, !42, i64 6}
!64 = !{!"_ZTSN3pov17BCyl_Entry_StructE", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!65 = !{!64, !42, i64 0}
!66 = !{!64, !42, i64 2}
!67 = !{!64, !42, i64 4}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = !{!"bcyl.cpp:_ZN3povL10insert_hitEPNS_24BCyl_Intersection_StructES1_Pi"}
!71 = !{i64 0, i64 4, !34, i64 8, i64 16, !72, i64 24, i64 16, !72}
!72 = !{!36, !36, i64 0}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
