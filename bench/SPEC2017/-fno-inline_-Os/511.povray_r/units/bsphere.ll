; ModuleID = 'bsphere.cpp'
source_filename = "bsphere.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::BSphere_Tree_Struct" = type { i16, [3 x double], double, ptr }

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov9VLinComb2EPddPKddS2_ = comdat any

$_ZN3pov3SqrEd = comdat any

@_ZN3povL11maxelementsE = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bsphere.cpp\00", align 1
@_ZN3povL4AxisE = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"blob bounding hierarchy\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Reallocing elements to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bounding slabs\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !34
  %5 = shl nsw i32 %1, 1
  store i32 %5, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1) #8, !range !38
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %12, %10 ], [ %1, %7 ]
  %12 = load i32, ptr %4, align 4, !tbaa !34
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 0) #8
  %13 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %11, i32 noundef %12) #8, !range !38
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %10, label %15, !llvm.loop !39

15:                                               ; preds = %10, %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !41 {
  %6 = load ptr, ptr %1, align 8, !tbaa !42
  %7 = tail call fastcc noundef i32 @_ZN3povL9find_axisEPPNS_19BSphere_Tree_StructEii(ptr noundef %6, i32 noundef %3, i32 noundef %4) #8, !range !44
  store i32 %7, ptr @_ZN3povL4AxisE, align 4, !tbaa !34
  %8 = sub nsw i32 %4, %3
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %107, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %4, -1
  br label %12

12:                                               ; preds = %10, %100
  %13 = phi i32 [ %8, %10 ], [ %105, %100 ]
  %14 = phi i32 [ 1, %10 ], [ 0, %100 ]
  %15 = phi i32 [ %3, %10 ], [ %101, %100 ]
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1) #8
  %16 = load ptr, ptr %1, align 8, !tbaa !42
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = zext nneg i32 %13 to i64
  tail call void @spec_qsort(ptr noundef %18, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @_ZN3povL13comp_elementsEPKvS1_) #8
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %20, ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #8
  %22 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %20, ptr noundef nonnull @.str, i32 noundef 452, ptr noundef nonnull @.str.1) #8
  %23 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @_ZN3povL16build_area_tableEPPNS_19BSphere_Tree_StructEiiPd(ptr noundef %23, i32 noundef %15, i32 noundef %11, ptr noundef %21) #8
  %24 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @_ZN3povL16build_area_tableEPPNS_19BSphere_Tree_StructEiiPd(ptr noundef %24, i32 noundef %11, i32 noundef %15, ptr noundef %22) #8
  %25 = icmp ugt i32 %13, 1
  br i1 %25, label %26, label %55

26:                                               ; preds = %12
  %27 = add nsw i32 %13, -1
  %28 = load double, ptr %22, align 8, !tbaa !45
  %29 = add nsw i32 %13, -3
  %30 = sitofp i32 %29 to double
  %31 = fmul double %28, %30
  %32 = zext i32 %27 to i64
  br label %33

33:                                               ; preds = %26, %33
  %34 = phi i64 [ 0, %26 ], [ %37, %33 ]
  %35 = phi double [ %31, %26 ], [ %53, %33 ]
  %36 = phi i32 [ -1, %26 ], [ %52, %33 ]
  %37 = add nuw nsw i64 %34, 1
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = getelementptr inbounds double, ptr %21, i64 %34
  %41 = load double, ptr %40, align 8, !tbaa !45
  %42 = trunc i64 %34 to i32
  %43 = sub i32 %27, %42
  %44 = sitofp i32 %43 to double
  %45 = getelementptr inbounds double, ptr %22, i64 %37
  %46 = load double, ptr %45, align 8, !tbaa !45
  %47 = fmul double %46, %44
  %48 = tail call double @llvm.fmuladd.f64(double %39, double %41, double %47)
  %49 = fcmp olt double %48, %35
  %50 = trunc i64 %34 to i32
  %51 = add i32 %15, %50
  %52 = select i1 %49, i32 %51, i32 %36
  %53 = select i1 %49, double %48, double %35
  %54 = icmp eq i64 %37, %32
  br i1 %54, label %55, label %33, !llvm.loop !47

55:                                               ; preds = %33, %12
  %56 = phi i32 [ -1, %12 ], [ %52, %33 ]
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef 481) #8
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %22, ptr noundef nonnull @.str, i32 noundef 482) #8
  %57 = icmp slt i32 %13, 5
  %58 = icmp slt i32 %56, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %55
  %61 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 491, ptr noundef nonnull @.str.1) #8
  %62 = trunc i32 %13 to i16
  store i16 %62, ptr %61, align 8, !tbaa !48
  %63 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %20, ptr noundef nonnull @.str, i32 noundef 495, ptr noundef nonnull @.str.1) #8
  %64 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %61, i64 0, i32 3
  store ptr %63, ptr %64, align 8, !tbaa !51
  %65 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %66 = zext nneg i32 %65 to i64
  br label %67

67:                                               ; preds = %60, %67
  %68 = phi i64 [ 0, %60 ], [ %75, %67 ]
  %69 = load ptr, ptr %1, align 8, !tbaa !42
  %70 = getelementptr ptr, ptr %69, i64 %68
  %71 = getelementptr ptr, ptr %70, i64 %17
  %72 = load ptr, ptr %71, align 8, !tbaa !42
  %73 = load ptr, ptr %64, align 8, !tbaa !51
  %74 = getelementptr inbounds ptr, ptr %73, i64 %68
  store ptr %72, ptr %74, align 8, !tbaa !42
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, %66
  br i1 %76, label %77, label %67, !llvm.loop !52

77:                                               ; preds = %67
  tail call fastcc void @_ZN3povL15recompute_boundEPNS_19BSphere_Tree_StructE(ptr noundef nonnull %61) #8
  store ptr %61, ptr %0, align 8, !tbaa !42
  %78 = load i32, ptr %2, align 4, !tbaa !34
  %79 = load i32, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load ptr, ptr %1, align 8, !tbaa !42
  br label %94

83:                                               ; preds = %77
  %84 = sitofp i32 %79 to double
  %85 = fmul double %84, 1.500000e+00
  %86 = fptosi double %85 to i32
  store i32 %86, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %87 = tail call noundef i32 (ptr, ...) @_ZN3pov10Debug_InfoEPKcz(ptr noundef nonnull @.str.2, i32 noundef %86) #8
  %88 = load ptr, ptr %1, align 8, !tbaa !42
  %89 = load i32, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 3
  %92 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %88, i64 noundef %91, ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @.str.3) #8
  store ptr %92, ptr %1, align 8, !tbaa !42
  %93 = load i32, ptr %2, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %81, %83
  %95 = phi i32 [ %78, %81 ], [ %93, %83 ]
  %96 = phi ptr [ %82, %81 ], [ %92, %83 ]
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  store ptr %61, ptr %98, align 8, !tbaa !42
  %99 = add nsw i32 %95, 1
  store i32 %99, ptr %2, align 4, !tbaa !34
  br label %107

100:                                              ; preds = %55
  %101 = add nuw nsw i32 %56, 1
  %102 = tail call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %15, i32 noundef %101) #8, !range !38
  %103 = load ptr, ptr %1, align 8, !tbaa !42
  %104 = tail call fastcc noundef i32 @_ZN3povL9find_axisEPPNS_19BSphere_Tree_StructEii(ptr noundef %103, i32 noundef %101, i32 noundef %4) #8, !range !44
  store i32 %104, ptr @_ZN3povL4AxisE, align 4, !tbaa !34
  %105 = sub nsw i32 %4, %101
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %12

107:                                              ; preds = %100, %5, %94
  %108 = phi i32 [ %14, %94 ], [ 1, %5 ], [ 0, %100 ]
  ret i32 %108
}

; Function Attrs: optsize
declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8, !tbaa !48
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !51
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  tail call void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %12) #8
  %13 = add nuw nsw i64 %9, 1
  %14 = load i16, ptr %0, align 8, !tbaa !48
  %15 = sext i16 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !53

17:                                               ; preds = %8
  %18 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef 651) #8
  store ptr null, ptr %18, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %17, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 654) #8
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN3povL9find_axisEPPNS_19BSphere_Tree_StructEii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !54 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %7 = icmp slt i32 %1, %2
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %10 = load double, ptr %9, align 16, !tbaa !45
  br label %39

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %14 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %15 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %16 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %17 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %18 = sext i32 %1 to i64
  br label %19

19:                                               ; preds = %11, %19
  %20 = phi i64 [ %18, %11 ], [ %36, %19 ]
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %22, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %4, ptr noundef nonnull %23) #8
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %25 = load double, ptr %24, align 8, !tbaa !45
  store double %25, ptr %5, align 16, !tbaa !45
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %27 = load double, ptr %26, align 8, !tbaa !45
  store double %27, ptr %6, align 16, !tbaa !45
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
  %29 = load double, ptr %28, align 8, !tbaa !45
  store double %29, ptr %12, align 8, !tbaa !45
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
  %31 = load double, ptr %30, align 8, !tbaa !45
  store double %31, ptr %14, align 8, !tbaa !45
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  %33 = load double, ptr %32, align 8, !tbaa !45
  store double %33, ptr %15, align 16, !tbaa !45
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  %35 = load double, ptr %34, align 8, !tbaa !45
  store double %35, ptr %17, align 16, !tbaa !45
  %36 = add nsw i64 %20, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %19, !llvm.loop !55

39:                                               ; preds = %19, %8
  %40 = phi double [ %10, %8 ], [ %35, %19 ]
  %41 = load double, ptr %6, align 16, !tbaa !45
  %42 = load double, ptr %5, align 16, !tbaa !45
  %43 = fsub double %41, %42
  %44 = fcmp ogt double %43, -2.000000e+10
  %45 = select i1 %44, double %43, double -2.000000e+10
  %46 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %47 = load double, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !45
  %50 = fsub double %47, %49
  %51 = fcmp ogt double %50, %45
  %52 = zext i1 %51 to i32
  %53 = select i1 %51, double %50, double %45
  %54 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %55 = load double, ptr %54, align 16, !tbaa !45
  %56 = fsub double %40, %55
  %57 = fcmp ogt double %56, %53
  %58 = select i1 %57, i32 2, i32 %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 %58
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @_ZN3povL13comp_elementsEPKvS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load i32, ptr @_ZN3povL4AxisE, align 4, !tbaa !34
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %3, i64 0, i32 1, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %1, align 8, !tbaa !42
  %9 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %8, i64 0, i32 1, i64 %5
  %10 = load double, ptr %9, align 8, !tbaa !45
  %11 = fadd double %10, 0xBE7AD7F29ABCAF48
  %12 = fcmp olt double %7, %11
  %13 = fadd double %10, 0x3E7AD7F29ABCAF48
  %14 = fcmp ogt double %7, %13
  %15 = zext i1 %14 to i32
  %16 = select i1 %12, i32 -1, i32 %15
  ret i32 %16
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL16build_area_tableEPPNS_19BSphere_Tree_StructEiiPd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !PGOFuncName !57 {
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = icmp slt i32 %1, %2
  %8 = select i1 %7, i32 1, i32 -1
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %11, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %6, ptr noundef nonnull %12) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !42
  %14 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %13, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !58
  store double %15, ptr %5, align 8, !tbaa !45
  %16 = add nsw i32 %8, %2
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %36, label %18

18:                                               ; preds = %4
  %19 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %20 = sext i32 %8 to i64
  %21 = sext i32 %19 to i64
  %22 = sext i32 %2 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi double [ %15, %18 ], [ %31, %23 ]
  %25 = phi i64 [ %9, %18 ], [ %34, %23 ]
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %27, i64 0, i32 1
  %29 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %27, i64 0, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !58
  call fastcc void @_ZN3povL13merge_spheresEPdS0_S0_dS0_d(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %6, double noundef %24, ptr noundef nonnull %28, double noundef %30) #8
  %31 = load double, ptr %5, align 8, !tbaa !45
  %32 = sub nsw i64 %25, %21
  %33 = getelementptr inbounds double, ptr %3, i64 %32
  store double %31, ptr %33, align 8, !tbaa !45
  %34 = add i64 %25, %20
  %35 = icmp eq i64 %25, %22
  br i1 %35, label %36, label %23, !llvm.loop !59

36:                                               ; preds = %23, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL15recompute_boundEPNS_19BSphere_Tree_StructE(ptr noundef %0) unnamed_addr #3 !PGOFuncName !60 {
  %2 = alloca double, align 8
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %4 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %6, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %3, ptr noundef nonnull %7) #8
  %8 = load ptr, ptr %4, align 8, !tbaa !51
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %9, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !58
  store double %11, ptr %2, align 8, !tbaa !45
  %12 = load i16, ptr %0, align 8, !tbaa !48
  %13 = icmp sgt i16 %12, 1
  br i1 %13, label %14, label %29

14:                                               ; preds = %1, %14
  %15 = phi i64 [ %23, %14 ], [ 1, %1 ]
  %16 = load double, ptr %2, align 8, !tbaa !45
  %17 = load ptr, ptr %4, align 8, !tbaa !51
  %18 = getelementptr inbounds ptr, ptr %17, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %19, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !58
  call fastcc void @_ZN3povL13merge_spheresEPdS0_S0_dS0_d(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %16, ptr noundef nonnull %20, double noundef %22) #8
  %23 = add nuw nsw i64 %15, 1
  %24 = load i16, ptr %0, align 8, !tbaa !48
  %25 = sext i16 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %14, label %27, !llvm.loop !61

27:                                               ; preds = %14
  %28 = load double, ptr %2, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi double [ %28, %27 ], [ %11, %1 ]
  %31 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %31, ptr noundef nonnull %3) #8
  %32 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 2
  store double %30, ptr %32, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov10Debug_InfoEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  store double %3, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  %4 = load double, ptr %0, align 8, !tbaa !45
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !45
  %4 = load double, ptr %1, align 8, !tbaa !45
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL13merge_spheresEPdS0_S0_dS0_d(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, double noundef %3, ptr noundef %4, double noundef %5) unnamed_addr #3 !PGOFuncName !62 {
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %4) #8
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %8) #8
  %9 = call double @sqrt(double noundef %3) #10
  %10 = call double @sqrt(double noundef %5) #10
  %11 = load double, ptr %7, align 8, !tbaa !45
  %12 = fadd double %9, %11
  %13 = fcmp ugt double %12, %10
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %4) #8
  br label %33

15:                                               ; preds = %6
  %16 = fadd double %10, %11
  %17 = fcmp ugt double %16, %9
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %2) #8
  br label %33

19:                                               ; preds = %15
  %20 = fsub double %9, %10
  %21 = fdiv double %20, %11
  %22 = fadd double %21, 1.000000e+00
  %23 = fmul double %22, 5.000000e-01
  %24 = fsub double %10, %9
  %25 = fdiv double %24, %11
  %26 = fadd double %25, 1.000000e+00
  %27 = fmul double %26, 5.000000e-01
  call void @_ZN3pov9VLinComb2EPddPKddS2_(ptr noundef %0, double noundef %23, ptr noundef %2, double noundef %27, ptr noundef %4) #8
  %28 = load double, ptr %7, align 8, !tbaa !45
  %29 = fadd double %9, %28
  %30 = fadd double %10, %29
  %31 = fmul double %30, 5.000000e-01
  %32 = call noundef double @_ZN3pov3SqrEd(double noundef %31) #8
  br label %33

33:                                               ; preds = %19, %18, %14
  %34 = phi double [ %32, %19 ], [ %3, %18 ], [ %5, %14 ]
  store double %34, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !45
  %5 = load double, ptr %2, align 8, !tbaa !45
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !45
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !45
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !45
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9VLinComb2EPddPKddS2_(ptr noundef %0, double noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat {
  %6 = load double, ptr %2, align 8, !tbaa !45
  %7 = load double, ptr %4, align 8, !tbaa !45
  %8 = fmul double %7, %3
  %9 = tail call double @llvm.fmuladd.f64(double %1, double %6, double %8)
  store double %9, ptr %0, align 8, !tbaa !45
  %10 = getelementptr inbounds double, ptr %2, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds double, ptr %4, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = fmul double %13, %3
  %15 = tail call double @llvm.fmuladd.f64(double %1, double %11, double %14)
  %16 = getelementptr inbounds double, ptr %0, i64 1
  store double %15, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds double, ptr %2, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds double, ptr %4, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = fmul double %20, %3
  %22 = tail call double @llvm.fmuladd.f64(double %1, double %18, double %21)
  %23 = getelementptr inbounds double, ptr %0, i64 2
  store double %22, ptr %23, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #3 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }

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
!38 = !{i32 0, i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"bsphere.cpp:_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{i32 0, i32 3}
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !36, i64 0}
!47 = distinct !{!47, !40}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN3pov19BSphere_Tree_StructE", !50, i64 0, !36, i64 8, !46, i64 32, !43, i64 40}
!50 = !{!"short", !36, i64 0}
!51 = !{!49, !43, i64 40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = !{!"bsphere.cpp:_ZN3povL9find_axisEPPNS_19BSphere_Tree_StructEii"}
!55 = distinct !{!55, !40}
!56 = !{!"bsphere.cpp:_ZN3povL13comp_elementsEPKvS1_"}
!57 = !{!"bsphere.cpp:_ZN3povL16build_area_tableEPPNS_19BSphere_Tree_StructEiiPd"}
!58 = !{!49, !46, i64 32}
!59 = distinct !{!59, !40}
!60 = !{!"bsphere.cpp:_ZN3povL15recompute_boundEPNS_19BSphere_Tree_StructE"}
!61 = distinct !{!61, !40}
!62 = !{!"bsphere.cpp:_ZN3povL13merge_spheresEPdS0_S0_dS0_d"}
