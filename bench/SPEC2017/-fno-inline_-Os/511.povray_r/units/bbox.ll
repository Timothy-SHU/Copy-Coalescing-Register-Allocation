; ModuleID = 'bbox.cpp'
source_filename = "bbox.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Frame_Struct" = type { ptr, i32, i32, i32, ptr, ptr, double, double, double, [5 x float], [5 x float], [5 x float], ptr, ptr, ptr, ptr, ptr }
%"struct.pov::OPTIONS_STRUCT" = type { i32, i8, i8, i8, i32, i32, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], float, float, i32, i32, double, i8, double, i32, [25 x ptr], i32, i32, i32, double, double, i32, i32, double, double, i32, i8, i64, i32, i32, i32, %"struct.pov::FRAMESEQ", double, i64, double, double, double, double, double, i64, i32, i64, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, ptr, ptr, i32, i8, double, double, i32, i32, i8, i32, i32, [4096 x i8], [6 x %"struct.pov::shelldata"], [4096 x i8], [4096 x i8], i32, i32, i64, i32, i32, i32, %struct.POVMSData }
%"struct.pov::FRAMESEQ" = type { i32, double, i32, i32, double, i32, i32, double, i32, double, i32, double, i8, i8 }
%"struct.pov::shelldata" = type { i32, i32, [250 x i8] }
%struct.POVMSData = type { i32, i32, %union.anon }
%union.anon = type { ptr }
%"struct.pov::Priority_Queue_Struct" = type { i32, i32, ptr }
%"struct.pov::BBox_Tree_Struct" = type { i16, i16, %"struct.pov::Bounding_Box_Struct", ptr }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Light_Source_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, [5 x float], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [6 x ptr] }
%"struct.pov::Rayinfo_Struct" = type { [3 x double], [3 x double], [3 x i32], [3 x i32] }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Qelem_Struct" = type { double, ptr }

$_ZN3pov16Assign_BBox_VectERA3_dPf = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

@_ZN3pov21numberOfFiniteObjectsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN3pov23numberOfInfiniteObjectsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN3pov20numberOfLightSourcesE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN3pov11Root_ObjectE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN3povL11Frame_QueueE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"bbox.cpp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"priority queue\00", align 1
@_ZN3povL14maxfinitecountE = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@_ZN3pov5FrameE = external local_unnamed_addr global %"struct.pov::Frame_Struct", align 8
@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"bounding boxes\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16
@_ZN3pov13backtraceFlagE = external local_unnamed_addr global i32, align 4
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"priority queue is empty.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Priority queue overflow.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"bounding box node\00", align 1
@_ZN3povL4AxisE = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Reallocing Finite to %d\0A\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov20Initialize_BBox_CodeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov21Create_Priority_QueueEj(i32 noundef 256) #8
  store ptr %1, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov21Create_Priority_QueueEj(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #8
  %3 = zext i32 %0 to i64
  %4 = shl nuw nsw i64 %3, 4
  %5 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %4, ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.1) #8
  %6 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !38
  store i32 0, ptr %2, align 8, !tbaa !41
  %7 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %2, i64 0, i32 1
  store i32 %0, ptr %7, align 4, !tbaa !42
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Deinitialize_BBox_CodeEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN3pov22Destroy_Priority_QueueEPNS_21Priority_Queue_StructE(ptr noundef nonnull %1) #8
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Destroy_Priority_QueueEPNS_21Priority_Queue_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 267) #8
  store ptr null, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 269) #8
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !43
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef %13) #8
  %14 = add nuw nsw i64 %10, 1
  %15 = load i16, ptr %4, align 2, !tbaa !43
  %16 = sext i16 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %9, label %18, !llvm.loop !48

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 316) #8
  store i16 0, ptr %4, align 2, !tbaa !43
  store ptr null, ptr %19, align 8, !tbaa !47
  br label %21

21:                                               ; preds = %18, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 323) #8
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %8 = icmp eq ptr %1, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  call void @_ZN3pov16Assign_BBox_VectERA3_dPf(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %0) #8
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov16Assign_BBox_VectERA3_dPf(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %11 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %12 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %13 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %15 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %17 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %18

18:                                               ; preds = %9, %65
  %19 = phi i32 [ 1, %9 ], [ %67, %65 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  %20 = insertelement <2 x i32> poison, i32 %19, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = and <2 x i32> %21, <i32 1, i32 2>
  %23 = icmp eq <2 x i32> %22, zeroinitializer
  %24 = load <2 x double>, ptr %4, align 16
  %25 = select <2 x i1> %23, <2 x double> zeroinitializer, <2 x double> %24
  %26 = load <2 x double>, ptr %5, align 16, !tbaa !50
  %27 = fadd <2 x double> %26, %25
  store <2 x double> %27, ptr %5, align 16, !tbaa !50
  %28 = and i32 %19, 4
  %29 = icmp eq i32 %28, 0
  %30 = load double, ptr %12, align 16
  %31 = select i1 %29, double 0.000000e+00, double %30
  %32 = load double, ptr %13, align 16, !tbaa !50
  %33 = fadd double %32, %31
  store double %33, ptr %13, align 16, !tbaa !50
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  %34 = load double, ptr %5, align 16, !tbaa !50
  %35 = load double, ptr %6, align 16, !tbaa !50
  %36 = fcmp olt double %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  store double %34, ptr %6, align 16, !tbaa !50
  br label %38

38:                                               ; preds = %37, %18
  %39 = phi double [ %34, %37 ], [ %35, %18 ]
  %40 = load double, ptr %7, align 16, !tbaa !50
  %41 = fcmp ogt double %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store double %34, ptr %7, align 16, !tbaa !50
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi double [ %34, %42 ], [ %40, %38 ]
  %45 = load double, ptr %11, align 8, !tbaa !50
  %46 = load double, ptr %14, align 8, !tbaa !50
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store double %45, ptr %14, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi double [ %45, %48 ], [ %46, %43 ]
  %51 = load double, ptr %15, align 8, !tbaa !50
  %52 = fcmp ogt double %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store double %45, ptr %15, align 8, !tbaa !50
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi double [ %45, %53 ], [ %51, %49 ]
  %56 = load double, ptr %13, align 16, !tbaa !50
  %57 = load double, ptr %16, align 16, !tbaa !50
  %58 = fcmp olt double %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store double %56, ptr %16, align 16, !tbaa !50
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi double [ %56, %59 ], [ %57, %54 ]
  %62 = load double, ptr %17, align 16, !tbaa !50
  %63 = fcmp ogt double %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store double %56, ptr %17, align 16, !tbaa !50
  br label %65

65:                                               ; preds = %60, %64
  %66 = phi double [ %62, %60 ], [ %56, %64 ]
  %67 = add nuw nsw i32 %19, 1
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %18, !llvm.loop !52

69:                                               ; preds = %65
  %70 = fcmp olt double %39, -1.000000e+10
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  store double -1.000000e+10, ptr %6, align 16, !tbaa !50
  br label %72

72:                                               ; preds = %71, %69
  %73 = fcmp olt double %50, -1.000000e+10
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store double -1.000000e+10, ptr %14, align 8, !tbaa !50
  br label %75

75:                                               ; preds = %74, %72
  %76 = fcmp olt double %61, -1.000000e+10
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  store double -1.000000e+10, ptr %16, align 16, !tbaa !50
  br label %78

78:                                               ; preds = %77, %75
  %79 = fcmp ogt double %44, 1.000000e+10
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  store double 1.000000e+10, ptr %7, align 16, !tbaa !50
  br label %81

81:                                               ; preds = %80, %78
  %82 = fcmp ogt double %55, 1.000000e+10
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  store double 1.000000e+10, ptr %15, align 8, !tbaa !50
  br label %84

84:                                               ; preds = %83, %81
  %85 = fcmp ogt double %66, 1.000000e+10
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  store double 1.000000e+10, ptr %17, align 16, !tbaa !50
  br label %87

87:                                               ; preds = %86, %84
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %88

88:                                               ; preds = %2, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Assign_BBox_VectERA3_dPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !53
  %4 = fpext <2 x float> %3 to <2 x double>
  store <2 x double> %4, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %7, ptr %8, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !50
  store double %3, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !50
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %2, align 8, !tbaa !50
  %7 = fsub double %6, %4
  %8 = insertelement <4 x double> poison, double %4, i64 0
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %11 = load <2 x double>, ptr %5, align 8, !tbaa !50
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %8, <4 x double> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x double> %13, double %7, i64 3
  %15 = fptrunc <4 x double> %14 to <4 x float>
  store <4 x float> %15, ptr %0, align 4, !tbaa !53
  %16 = load <2 x double>, ptr %9, align 8, !tbaa !50
  %17 = fsub <2 x double> %16, %11
  %18 = fptrunc <2 x double> %17 to <2 x float>
  store <2 x float> %18, ptr %10, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Recompute_Inverse_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %8 = icmp eq ptr %1, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  call void @_ZN3pov16Assign_BBox_VectERA3_dPf(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %0) #8
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov16Assign_BBox_VectERA3_dPf(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %11 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %12 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %13 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %15 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %17 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %18

18:                                               ; preds = %9, %65
  %19 = phi i32 [ 1, %9 ], [ %67, %65 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  %20 = insertelement <2 x i32> poison, i32 %19, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = and <2 x i32> %21, <i32 1, i32 2>
  %23 = icmp eq <2 x i32> %22, zeroinitializer
  %24 = load <2 x double>, ptr %4, align 16
  %25 = select <2 x i1> %23, <2 x double> zeroinitializer, <2 x double> %24
  %26 = load <2 x double>, ptr %5, align 16, !tbaa !50
  %27 = fadd <2 x double> %26, %25
  store <2 x double> %27, ptr %5, align 16, !tbaa !50
  %28 = and i32 %19, 4
  %29 = icmp eq i32 %28, 0
  %30 = load double, ptr %12, align 16
  %31 = select i1 %29, double 0.000000e+00, double %30
  %32 = load double, ptr %13, align 16, !tbaa !50
  %33 = fadd double %32, %31
  store double %33, ptr %13, align 16, !tbaa !50
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  %34 = load double, ptr %5, align 16, !tbaa !50
  %35 = load double, ptr %6, align 16, !tbaa !50
  %36 = fcmp olt double %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  store double %34, ptr %6, align 16, !tbaa !50
  br label %38

38:                                               ; preds = %37, %18
  %39 = phi double [ %34, %37 ], [ %35, %18 ]
  %40 = load double, ptr %7, align 16, !tbaa !50
  %41 = fcmp ogt double %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store double %34, ptr %7, align 16, !tbaa !50
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi double [ %34, %42 ], [ %40, %38 ]
  %45 = load double, ptr %11, align 8, !tbaa !50
  %46 = load double, ptr %14, align 8, !tbaa !50
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store double %45, ptr %14, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi double [ %45, %48 ], [ %46, %43 ]
  %51 = load double, ptr %15, align 8, !tbaa !50
  %52 = fcmp ogt double %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store double %45, ptr %15, align 8, !tbaa !50
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi double [ %45, %53 ], [ %51, %49 ]
  %56 = load double, ptr %13, align 16, !tbaa !50
  %57 = load double, ptr %16, align 16, !tbaa !50
  %58 = fcmp olt double %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store double %56, ptr %16, align 16, !tbaa !50
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi double [ %56, %59 ], [ %57, %54 ]
  %62 = load double, ptr %17, align 16, !tbaa !50
  %63 = fcmp ogt double %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store double %56, ptr %17, align 16, !tbaa !50
  br label %65

65:                                               ; preds = %60, %64
  %66 = phi double [ %62, %60 ], [ %56, %64 ]
  %67 = add nuw nsw i32 %19, 1
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %18, !llvm.loop !55

69:                                               ; preds = %65
  %70 = fcmp olt double %39, -1.000000e+10
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  store double -1.000000e+10, ptr %6, align 16, !tbaa !50
  br label %72

72:                                               ; preds = %71, %69
  %73 = fcmp olt double %50, -1.000000e+10
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store double -1.000000e+10, ptr %14, align 8, !tbaa !50
  br label %75

75:                                               ; preds = %74, %72
  %76 = fcmp olt double %61, -1.000000e+10
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  store double -1.000000e+10, ptr %16, align 16, !tbaa !50
  br label %78

78:                                               ; preds = %77, %75
  %79 = fcmp ogt double %44, 1.000000e+10
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  store double 1.000000e+10, ptr %7, align 16, !tbaa !50
  br label %81

81:                                               ; preds = %80, %78
  %82 = fcmp ogt double %55, 1.000000e+10
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  store double 1.000000e+10, ptr %15, align 8, !tbaa !50
  br label %84

84:                                               ; preds = %83, %81
  %85 = fcmp ogt double %66, 1.000000e+10
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  store double 1.000000e+10, ptr %17, align 16, !tbaa !50
  br label %87

87:                                               ; preds = %86, %84
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %88

88:                                               ; preds = %2, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  store i64 %1, ptr %6, align 8, !tbaa !56
  %7 = shl nsw i64 %1, 1
  store i64 %7, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !56
  %8 = icmp sgt i64 %1, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %1) #8, !range !58
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %14, %12 ], [ %1, %9 ]
  %14 = load i64, ptr %6, align 8, !tbaa !56
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 0) #8
  %15 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6, i64 noundef %13, i64 noundef %14) #8, !range !58
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %12, label %17, !llvm.loop !59

17:                                               ; preds = %12, %9
  %18 = icmp sgt i64 %3, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !43
  %25 = sext i16 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = add nsw i64 %26, 8
  %28 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %22, i64 noundef %27, ptr noundef nonnull @.str, i32 noundef 557, ptr noundef nonnull @.str.2) #8
  store ptr %28, ptr %21, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load i16, ptr %23, align 2, !tbaa !43
  %31 = sext i16 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef nonnull %29, ptr noundef %28, i64 noundef %32) #8
  %34 = load i16, ptr %23, align 2, !tbaa !43
  %35 = add i16 %34, 1
  store i16 %35, ptr %23, align 2, !tbaa !43
  %36 = trunc i64 %3 to i32
  %37 = tail call fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef %36) #8
  %38 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %37, i64 0, i32 3
  br label %39

39:                                               ; preds = %19, %39
  %40 = phi i64 [ 0, %19 ], [ %47, %39 ]
  %41 = phi i16 [ 0, %19 ], [ %46, %39 ]
  %42 = getelementptr inbounds ptr, ptr %4, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = load ptr, ptr %38, align 8, !tbaa !47
  %45 = getelementptr inbounds ptr, ptr %44, i64 %40
  store ptr %43, ptr %45, align 8, !tbaa !34
  %46 = add i16 %41, 1
  %47 = sext i16 %46 to i64
  %48 = icmp slt i64 %47, %3
  br i1 %48, label %39, label %49, !llvm.loop !60

49:                                               ; preds = %39
  %50 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %37, i64 0, i32 2
  tail call fastcc void @_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll(ptr noundef nonnull %50, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %3) #8
  %51 = load ptr, ptr %21, align 8, !tbaa !47
  store ptr %37, ptr %51, align 8, !tbaa !34
  %52 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2
  %53 = load ptr, ptr %21, align 8, !tbaa !47
  %54 = load i16, ptr %23, align 2, !tbaa !43
  %55 = sext i16 %54 to i64
  tail call fastcc void @_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll(ptr noundef nonnull %52, ptr noundef %53, i64 noundef 0, i64 noundef %55) #8
  store i16 1, ptr %20, align 8, !tbaa !61
  %56 = load ptr, ptr %21, align 8, !tbaa !47
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  br label %76

58:                                               ; preds = %5
  %59 = icmp sgt i64 %3, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %58
  %61 = trunc i64 %3 to i32
  %62 = tail call fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef %61) #8
  %63 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %62, i64 0, i32 3
  br label %64

64:                                               ; preds = %60, %64
  %65 = phi i64 [ 0, %60 ], [ %72, %64 ]
  %66 = phi i16 [ 0, %60 ], [ %71, %64 ]
  %67 = getelementptr inbounds ptr, ptr %4, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = load ptr, ptr %63, align 8, !tbaa !47
  %70 = getelementptr inbounds ptr, ptr %69, i64 %65
  store ptr %68, ptr %70, align 8, !tbaa !34
  %71 = add i16 %66, 1
  %72 = sext i16 %71 to i64
  %73 = icmp slt i64 %72, %3
  br i1 %73, label %64, label %74, !llvm.loop !62

74:                                               ; preds = %64
  %75 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %62, i64 0, i32 2
  tail call fastcc void @_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll(ptr noundef nonnull %75, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %3) #8
  store ptr %62, ptr %0, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %49, %74
  %77 = phi ptr [ %62, %74 ], [ %57, %49 ]
  store i16 1, ptr %77, align 8, !tbaa !61
  br label %78

78:                                               ; preds = %76, %58, %17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr nocapture noundef writeonly %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 !PGOFuncName !63 {
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = tail call fastcc noundef i32 @_ZN3povL9find_axisEPPNS_16BBox_Tree_StructEll(ptr noundef %6, i64 noundef %3, i64 noundef %4) #8, !range !64
  store i32 %7, ptr @_ZN3povL4AxisE, align 4, !tbaa !65
  %8 = sub nsw i64 %4, %3
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %99, label %10

10:                                               ; preds = %5
  %11 = add nsw i64 %4, -1
  br label %12

12:                                               ; preds = %10, %92
  %13 = phi i64 [ %8, %10 ], [ %97, %92 ]
  %14 = phi i32 [ 1, %10 ], [ 0, %92 ]
  %15 = phi i64 [ %3, %10 ], [ %93, %92 ]
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1) #8
  %16 = load ptr, ptr %1, align 8, !tbaa !34
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  tail call void @spec_qsort(ptr noundef %17, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @_ZN3povL9compboxesEPKvS1_) #8
  %18 = shl i64 %13, 3
  %19 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %18, ptr noundef nonnull @.str, i32 noundef 1816, ptr noundef nonnull @.str.3) #8
  %20 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %18, ptr noundef nonnull @.str, i32 noundef 1817, ptr noundef nonnull @.str.3) #8
  %21 = load ptr, ptr %1, align 8, !tbaa !34
  tail call fastcc void @_ZN3povL16build_area_tableEPPNS_16BBox_Tree_StructEllPd(ptr noundef %21, i64 noundef %15, i64 noundef %11, ptr noundef %19) #8
  %22 = load ptr, ptr %1, align 8, !tbaa !34
  tail call fastcc void @_ZN3povL16build_area_tableEPPNS_16BBox_Tree_StructEllPd(ptr noundef %22, i64 noundef %11, i64 noundef %15, ptr noundef %20) #8
  %23 = add nsw i64 %13, -1
  %24 = icmp ugt i64 %13, 1
  br i1 %24, label %25, label %49

25:                                               ; preds = %12
  %26 = sitofp i64 %13 to double
  %27 = fadd double %26, -3.000000e+00
  %28 = load double, ptr %20, align 8, !tbaa !50
  %29 = fmul double %27, %28
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi double [ %47, %30 ], [ %29, %25 ]
  %32 = phi i64 [ %46, %30 ], [ -1, %25 ]
  %33 = phi i64 [ %34, %30 ], [ 0, %25 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = sitofp i64 %34 to double
  %36 = getelementptr inbounds double, ptr %19, i64 %33
  %37 = load double, ptr %36, align 8, !tbaa !50
  %38 = sub nsw i64 %23, %33
  %39 = sitofp i64 %38 to double
  %40 = getelementptr inbounds double, ptr %20, i64 %34
  %41 = load double, ptr %40, align 8, !tbaa !50
  %42 = fmul double %41, %39
  %43 = tail call double @llvm.fmuladd.f64(double %35, double %37, double %42)
  %44 = fcmp olt double %43, %31
  %45 = add nsw i64 %33, %15
  %46 = select i1 %44, i64 %45, i64 %32
  %47 = select i1 %44, double %43, double %31
  %48 = icmp eq i64 %34, %23
  br i1 %48, label %49, label %30, !llvm.loop !66

49:                                               ; preds = %30, %12
  %50 = phi i64 [ -1, %12 ], [ %46, %30 ]
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef 1846) #8
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %20, ptr noundef nonnull @.str, i32 noundef 1847) #8
  %51 = icmp slt i64 %13, 5
  %52 = icmp slt i64 %50, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = trunc i64 %13 to i32
  %56 = tail call fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef %55) #8
  %57 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %56, i64 0, i32 3
  %58 = tail call i64 @llvm.smax.i64(i64 %13, i64 1)
  br label %59

59:                                               ; preds = %54, %59
  %60 = phi i64 [ 0, %54 ], [ %67, %59 ]
  %61 = load ptr, ptr %1, align 8, !tbaa !34
  %62 = getelementptr ptr, ptr %61, i64 %60
  %63 = getelementptr ptr, ptr %62, i64 %15
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = load ptr, ptr %57, align 8, !tbaa !47
  %66 = getelementptr inbounds ptr, ptr %65, i64 %60
  store ptr %64, ptr %66, align 8, !tbaa !34
  %67 = add nuw nsw i64 %60, 1
  %68 = icmp eq i64 %67, %58
  br i1 %68, label %69, label %59, !llvm.loop !67

69:                                               ; preds = %59
  %70 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %56, i64 0, i32 2
  %71 = load ptr, ptr %1, align 8, !tbaa !34
  tail call fastcc void @_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll(ptr noundef nonnull %70, ptr noundef %71, i64 noundef %15, i64 noundef %4) #8
  store ptr %56, ptr %0, align 8, !tbaa !34
  %72 = load i64, ptr %2, align 8, !tbaa !56
  %73 = load i64, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !56
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load ptr, ptr %1, align 8, !tbaa !34
  br label %87

77:                                               ; preds = %69
  %78 = sitofp i64 %73 to double
  %79 = fmul double %78, 1.500000e+00
  %80 = fptosi double %79 to i64
  store i64 %80, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !56
  %81 = tail call noundef i32 (ptr, ...) @_ZN3pov10Debug_InfoEPKcz(ptr noundef nonnull @.str.7, i64 noundef %80) #8
  %82 = load ptr, ptr %1, align 8, !tbaa !34
  %83 = load i64, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !56
  %84 = shl i64 %83, 3
  %85 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %82, i64 noundef %84, ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.3) #8
  store ptr %85, ptr %1, align 8, !tbaa !34
  %86 = load i64, ptr %2, align 8, !tbaa !56
  br label %87

87:                                               ; preds = %75, %77
  %88 = phi i64 [ %72, %75 ], [ %86, %77 ]
  %89 = phi ptr [ %76, %75 ], [ %85, %77 ]
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  store ptr %56, ptr %90, align 8, !tbaa !34
  %91 = add nsw i64 %88, 1
  store i64 %91, ptr %2, align 8, !tbaa !56
  br label %99

92:                                               ; preds = %49
  %93 = add nuw nsw i64 %50, 1
  %94 = tail call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %15, i64 noundef %93) #8, !range !58
  %95 = load ptr, ptr %1, align 8, !tbaa !34
  %96 = tail call fastcc noundef i32 @_ZN3povL9find_axisEPPNS_16BBox_Tree_StructEll(ptr noundef %95, i64 noundef %93, i64 noundef %4) #8, !range !64
  store i32 %96, ptr @_ZN3povL4AxisE, align 4, !tbaa !65
  %97 = sub nsw i64 %4, %93
  %98 = icmp slt i64 %97, 1
  br i1 %98, label %99, label %12

99:                                               ; preds = %92, %5, %87
  %100 = phi i32 [ %14, %87 ], [ 1, %5 ], [ 0, %92 ]
  ret i32 %100
}

; Function Attrs: optsize
declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef %0) unnamed_addr #0 !PGOFuncName !68 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6) #8
  store i16 0, ptr %2, align 8, !tbaa !61
  %3 = trunc i32 %0 to i16
  %4 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %2, i64 0, i32 1
  store i16 %3, ptr %4, align 2, !tbaa !43
  %5 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %2, i64 0, i32 2
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = sext i32 %0 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %9, ptr noundef nonnull @.str, i32 noundef 1442, ptr noundef nonnull @.str.6) #8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ null, %1 ]
  %13 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 !PGOFuncName !69 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %7 = icmp slt i64 %2, %3
  br i1 %7, label %8, label %76

8:                                                ; preds = %4
  %9 = load double, ptr %6, align 16, !tbaa !50
  %10 = load double, ptr %5, align 16, !tbaa !50
  %11 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %12 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %13 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %15 = load double, ptr %11, align 8, !tbaa !50
  %16 = load double, ptr %12, align 8, !tbaa !50
  %17 = load double, ptr %13, align 16, !tbaa !50
  %18 = load double, ptr %14, align 16, !tbaa !50
  br label %19

19:                                               ; preds = %8, %72
  %20 = phi double [ %18, %8 ], [ %73, %72 ]
  %21 = phi double [ %17, %8 ], [ %69, %72 ]
  %22 = phi double [ %16, %8 ], [ %58, %72 ]
  %23 = phi double [ %15, %8 ], [ %54, %72 ]
  %24 = phi i64 [ %2, %8 ], [ %74, %72 ]
  %25 = phi double [ %10, %8 ], [ %39, %72 ]
  %26 = phi double [ %9, %8 ], [ %43, %72 ]
  %27 = getelementptr inbounds ptr, ptr %1, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = fpext float %33 to double
  %35 = fadd double %31, %34
  %36 = fcmp ogt double %25, %31
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store double %31, ptr %5, align 16, !tbaa !50
  br label %38

38:                                               ; preds = %37, %19
  %39 = phi double [ %31, %37 ], [ %25, %19 ]
  %40 = fcmp ogt double %35, %26
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store double %35, ptr %6, align 16, !tbaa !50
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi double [ %35, %41 ], [ %26, %38 ]
  %44 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2, i32 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !53
  %46 = fpext float %45 to double
  %47 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2, i32 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !53
  %49 = fpext float %48 to double
  %50 = fadd double %46, %49
  %51 = fcmp ogt double %23, %46
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store double %46, ptr %11, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %52, %42
  %54 = phi double [ %46, %52 ], [ %23, %42 ]
  %55 = fcmp ogt double %50, %22
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store double %50, ptr %12, align 8, !tbaa !50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi double [ %50, %56 ], [ %22, %53 ]
  %59 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2, i32 0, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !53
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %28, i64 0, i32 2, i32 1, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = fpext float %63 to double
  %65 = fadd double %61, %64
  %66 = fcmp ogt double %21, %61
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store double %61, ptr %13, align 16, !tbaa !50
  br label %68

68:                                               ; preds = %67, %57
  %69 = phi double [ %61, %67 ], [ %21, %57 ]
  %70 = fcmp ogt double %65, %20
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store double %65, ptr %14, align 16, !tbaa !50
  br label %72

72:                                               ; preds = %68, %71
  %73 = phi double [ %20, %68 ], [ %65, %71 ]
  %74 = add nsw i64 %24, 1
  %75 = icmp eq i64 %74, %3
  br i1 %75, label %76, label %19, !llvm.loop !70

76:                                               ; preds = %72, %4
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov20Build_Bounding_SlabsEPPNS_16BBox_Tree_StructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 5), align 8, !tbaa !71
  store i64 0, ptr @_ZN3pov20numberOfLightSourcesE, align 8, !tbaa !56
  store i64 0, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !56
  store i64 0, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1, %30
  %6 = phi ptr [ %35, %30 ], [ %3, %1 ]
  %7 = phi i64 [ %33, %30 ], [ 0, %1 ]
  %8 = phi i64 [ %32, %30 ], [ 0, %1 ]
  %9 = phi i64 [ %31, %30 ], [ 0, %1 ]
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %6, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = add nsw i64 %7, 1
  store i64 %17, ptr @_ZN3pov20numberOfLightSourcesE, align 8, !tbaa !56
  %18 = icmp eq ptr %16, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %5, %14
  %20 = phi i64 [ %17, %14 ], [ %7, %5 ]
  %21 = phi ptr [ %16, %14 ], [ %6, %5 ]
  %22 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !78
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = add nsw i64 %8, 1
  store i64 %27, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !56
  br label %30

28:                                               ; preds = %19
  %29 = add nsw i64 %9, 1
  store i64 %29, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !56
  br label %30

30:                                               ; preds = %26, %28, %14
  %31 = phi i64 [ %9, %26 ], [ %29, %28 ], [ %9, %14 ]
  %32 = phi i64 [ %27, %26 ], [ %8, %28 ], [ %8, %14 ]
  %33 = phi i64 [ %20, %26 ], [ %20, %28 ], [ %17, %14 ]
  %34 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !80

37:                                               ; preds = %30, %1
  %38 = phi i64 [ 0, %1 ], [ %32, %30 ]
  %39 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %40 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !81, !range !87, !noundef !88
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = add nsw i64 %38, %39
  %44 = load i64, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 31), align 8, !tbaa !89
  %45 = icmp slt i64 %43, %44
  %46 = icmp slt i64 %43, 1
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %37
  store i8 0, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !81
  br label %136

49:                                               ; preds = %42
  store i8 1, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !81
  %50 = shl nsw i64 %39, 1
  store i64 %50, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !56
  store ptr null, ptr %2, align 8, !tbaa !34
  %51 = icmp sgt i64 %39, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = shl i64 %39, 4
  %54 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %53, ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.3) #8
  store ptr %54, ptr %2, align 8, !tbaa !34
  %55 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !56
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi ptr [ %54, %52 ], [ null, %49 ]
  %58 = phi i64 [ %55, %52 ], [ %38, %49 ]
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = shl i64 %58, 3
  %62 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %61, ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.3) #8
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %62, %60 ], [ null, %56 ]
  %65 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !56
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %70, %63
  %68 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !56
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %81, label %77

70:                                               ; preds = %63, %70
  %71 = phi i64 [ %74, %70 ], [ 0, %63 ]
  %72 = tail call fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef 0) #8
  %73 = getelementptr inbounds ptr, ptr %57, i64 %71
  store ptr %72, ptr %73, align 8, !tbaa !34
  %74 = add nuw nsw i64 %71, 1
  %75 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !56
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %70, label %67, !llvm.loop !90

77:                                               ; preds = %81, %67
  %78 = phi i64 [ %68, %67 ], [ %86, %81 ]
  %79 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 5), align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %128, label %88

81:                                               ; preds = %67, %81
  %82 = phi i64 [ %85, %81 ], [ 0, %67 ]
  %83 = tail call fastcc noundef ptr @_ZN3povL16create_bbox_nodeEi(i32 noundef 0) #8
  %84 = getelementptr inbounds ptr, ptr %64, i64 %82
  store ptr %83, ptr %84, align 8, !tbaa !34
  %85 = add nuw nsw i64 %82, 1
  %86 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !56
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %81, label %77, !llvm.loop !91

88:                                               ; preds = %77, %122
  %89 = phi ptr [ %126, %122 ], [ %79, %77 ]
  %90 = phi i64 [ %124, %122 ], [ 0, %77 ]
  %91 = phi i64 [ %123, %122 ], [ 0, %77 ]
  %92 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !73
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %89, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !75
  %99 = icmp eq ptr %98, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %88, %96
  %101 = phi ptr [ %98, %96 ], [ %89, %88 ]
  %102 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %101, i64 0, i32 13
  %103 = load i32, ptr %102, align 4, !tbaa !78
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds ptr, ptr %64, i64 %90
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  store i16 1, ptr %108, align 8, !tbaa !61
  %109 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %101, i64 0, i32 9
  %110 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %108, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %110, ptr noundef nonnull align 8 dereferenceable(24) %109, i64 24, i1 false), !tbaa.struct !92
  %111 = load ptr, ptr %107, align 8, !tbaa !34
  %112 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %111, i64 0, i32 3
  store ptr %101, ptr %112, align 8, !tbaa !47
  %113 = add nsw i64 %90, 1
  br label %122

114:                                              ; preds = %100
  %115 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %101, i64 0, i32 9
  %116 = getelementptr inbounds ptr, ptr %57, i64 %91
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %117, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %118, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa.struct !92
  %119 = load ptr, ptr %116, align 8, !tbaa !34
  %120 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %119, i64 0, i32 3
  store ptr %101, ptr %120, align 8, !tbaa !47
  %121 = add nsw i64 %91, 1
  br label %122

122:                                              ; preds = %96, %114, %106
  %123 = phi i64 [ %91, %106 ], [ %121, %114 ], [ %91, %96 ]
  %124 = phi i64 [ %113, %106 ], [ %90, %114 ], [ %90, %96 ]
  %125 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %89, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %88, !llvm.loop !94

128:                                              ; preds = %122, %77
  %129 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !56
  call void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(ptr noundef %0, i64 noundef %129, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %78, ptr noundef %64) #8
  %130 = load ptr, ptr %2, align 8, !tbaa !34
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %130, ptr noundef nonnull @.str, i32 noundef 780) #8
  br label %133

133:                                              ; preds = %132, %128
  %134 = icmp eq ptr %64, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %133
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %64, ptr noundef nonnull @.str, i32 noundef 785) #8
  br label %136

136:                                              ; preds = %133, %135, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Destroy_Bounding_SlabsEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3pov11Root_ObjectE, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef nonnull %1) #8
  store ptr null, ptr @_ZN3pov11Root_ObjectE, align 8, !tbaa !34
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov19Intersect_BBox_TreeEPNS_16BBox_Tree_StructEPNS_10Ray_StructEPNS_10istk_entryEPPNS_13Object_StructEb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.pov::Rayinfo_Struct", align 8
  %9 = alloca %"struct.pov::istk_entry", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #9
  call void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(ptr noundef %1, ptr noundef nonnull %8) #8
  %10 = getelementptr inbounds %"struct.pov::istk_entry", ptr %9, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !95
  %11 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  store i32 0, ptr %11, align 8, !tbaa !41
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 111)) #8
  %12 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  %13 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr noundef %12, ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %8) #8
  %14 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %84, label %17

17:                                               ; preds = %5, %76
  %18 = phi ptr [ %78, %76 ], [ %14, %5 ]
  %19 = phi i32 [ %77, %76 ], [ 0, %5 ]
  call void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(ptr noundef nonnull %18, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %20 = load double, ptr %6, align 8, !tbaa !50
  %21 = load double, ptr %2, align 8, !tbaa !97
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %81, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !34
  %25 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %24, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !43
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = icmp sgt i16 %26, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %24, i64 0, i32 3
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %39, %32 ]
  %34 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  %35 = load ptr, ptr %31, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %37, i64 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr noundef %34, ptr noundef %37, ptr noundef nonnull %38, ptr noundef nonnull %8) #8
  %39 = add nuw nsw i64 %33, 1
  %40 = load i16, ptr %25, align 2, !tbaa !43
  %41 = sext i16 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %32, label %76, !llvm.loop !98

43:                                               ; preds = %23
  %44 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !65
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %24, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %47, i64 0, i32 13
  %49 = load i32, ptr %48, align 4, !tbaa !78
  br i1 %45, label %50, label %60

50:                                               ; preds = %43
  %51 = and i32 %49, 32768
  %52 = icmp ne i32 %51, 0
  %53 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !87
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = and i32 %49, 65536
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i1 true, i1 %54
  br i1 %59, label %67, label %63

60:                                               ; preds = %43
  %61 = and i32 %49, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %50, %56, %60
  %64 = and i32 %49, 1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %4, i1 %65, i1 false
  br i1 %66, label %67, label %76

67:                                               ; preds = %63, %60, %56
  %68 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %24, i64 0, i32 3
  %69 = call noundef zeroext i1 @_ZN3pov12IntersectionEPNS_10istk_entryEPNS_13Object_StructEPNS_10Ray_StructE(ptr noundef nonnull %9, ptr noundef nonnull %47, ptr noundef %1) #8
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load double, ptr %9, align 8, !tbaa !97
  %72 = load double, ptr %2, align 8, !tbaa !97
  %73 = fcmp olt double %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %9, i64 200, i1 false), !tbaa.struct !99
  %75 = load ptr, ptr %68, align 8, !tbaa !47
  store ptr %75, ptr %3, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %32, %28, %63, %70, %74, %67
  %77 = phi i32 [ 1, %74 ], [ %19, %70 ], [ %19, %67 ], [ %19, %63 ], [ %19, %28 ], [ %19, %32 ]
  %78 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !34
  %79 = load i32, ptr %78, align 8, !tbaa !41
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %17, !llvm.loop !100

81:                                               ; preds = %17, %76
  %82 = phi i32 [ %77, %76 ], [ %19, %17 ]
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %81, %5
  %85 = phi i1 [ false, %5 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i1 %85
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %1, ptr noundef %0) #8
  %3 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !50
  %5 = fcmp une double %4, 0.000000e+00
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !65
  br i1 %5, label %8, label %15

8:                                                ; preds = %2
  %9 = fdiv double 1.000000e+00, %4
  %10 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1
  store double %9, ptr %10, align 8, !tbaa !50
  %11 = load double, ptr %3, align 8, !tbaa !50
  %12 = fcmp ogt double %11, 0.000000e+00
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !65
  br label %15

15:                                               ; preds = %8, %2
  %16 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !50
  %18 = fcmp une double %17, 0.000000e+00
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !65
  br i1 %18, label %21, label %28

21:                                               ; preds = %15
  %22 = fdiv double 1.000000e+00, %17
  %23 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1, i64 1
  store double %22, ptr %23, align 8, !tbaa !50
  %24 = load double, ptr %16, align 8, !tbaa !50
  %25 = fcmp ogt double %24, 0.000000e+00
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !65
  br label %28

28:                                               ; preds = %21, %15
  %29 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %30 = load double, ptr %29, align 8, !tbaa !50
  %31 = fcmp une double %30, 0.000000e+00
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2, i64 2
  store i32 %32, ptr %33, align 8, !tbaa !65
  br i1 %31, label %34, label %41

34:                                               ; preds = %28
  %35 = fdiv double 1.000000e+00, %30
  %36 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1, i64 2
  store double %35, ptr %36, align 8, !tbaa !50
  %37 = load double, ptr %29, align 8, !tbaa !50
  %38 = fcmp ogt double %37, 0.000000e+00
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3, i64 2
  store i32 %39, ptr %40, align 4, !tbaa !65
  br label %41

41:                                               ; preds = %34, %28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !101
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 8, !tbaa !61
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %154

7:                                                ; preds = %4
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 108)) #8
  %8 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !65
  %14 = icmp eq i32 %13, 0
  %15 = load float, ptr %2, align 4, !tbaa !53
  %16 = fpext float %15 to double
  %17 = load double, ptr %3, align 8, !tbaa !50
  %18 = fsub double %16, %17
  %19 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !50
  %21 = fmul double %18, %20
  br i1 %14, label %28, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = fpext float %24 to double
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %20, double %21)
  %27 = fcmp olt double %26, 0x3E7AD7F29ABCAF48
  br i1 %27, label %156, label %35

28:                                               ; preds = %11
  %29 = fcmp olt double %21, 0x3E7AD7F29ABCAF48
  br i1 %29, label %156, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = fpext float %32 to double
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %20, double %21)
  br label %35

35:                                               ; preds = %22, %30
  %36 = phi double [ %21, %22 ], [ %34, %30 ]
  %37 = phi double [ %26, %22 ], [ %21, %30 ]
  %38 = fcmp ogt double %36, %37
  br i1 %38, label %156, label %50

39:                                               ; preds = %7
  %40 = load double, ptr %3, align 8, !tbaa !50
  %41 = load float, ptr %2, align 4, !tbaa !53
  %42 = fpext float %41 to double
  %43 = fcmp olt double %40, %42
  br i1 %43, label %156, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = fadd float %41, %46
  %48 = fpext float %47 to double
  %49 = fcmp ogt double %40, %48
  br i1 %49, label %156, label %50

50:                                               ; preds = %44, %35
  %51 = phi double [ %36, %35 ], [ -2.000000e+10, %44 ]
  %52 = phi double [ %37, %35 ], [ 2.000000e+10, %44 ]
  %53 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !65
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !53
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %64 = load double, ptr %63, align 8, !tbaa !50
  %65 = fsub double %62, %64
  %66 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !50
  %68 = fmul double %65, %67
  %69 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !53
  %71 = fpext float %70 to double
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %67, double %68)
  %73 = select i1 %59, double %72, double %68
  %74 = select i1 %59, double %68, double %72
  %75 = fcmp olt double %74, %52
  br i1 %75, label %76, label %84

76:                                               ; preds = %56
  %77 = fcmp olt double %74, 0x3E7AD7F29ABCAF48
  br i1 %77, label %156, label %78

78:                                               ; preds = %76
  %79 = fcmp ogt double %73, %51
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = fcmp ogt double %73, %74
  br i1 %81, label %156, label %101

82:                                               ; preds = %78
  %83 = fcmp ogt double %51, %74
  br i1 %83, label %156, label %101

84:                                               ; preds = %56
  %85 = fcmp ogt double %73, %51
  br i1 %85, label %86, label %101

86:                                               ; preds = %84
  %87 = fcmp ogt double %73, %52
  br i1 %87, label %156, label %101

88:                                               ; preds = %50
  %89 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %90 = load double, ptr %89, align 8, !tbaa !50
  %91 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !53
  %93 = fpext float %92 to double
  %94 = fcmp olt double %90, %93
  br i1 %94, label %156, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !53
  %98 = fadd float %92, %97
  %99 = fpext float %98 to double
  %100 = fcmp ogt double %90, %99
  br i1 %100, label %156, label %101

101:                                              ; preds = %86, %82, %80, %95, %84
  %102 = phi double [ %51, %84 ], [ %51, %95 ], [ %51, %82 ], [ %73, %80 ], [ %73, %86 ]
  %103 = phi double [ %52, %84 ], [ %52, %95 ], [ %74, %82 ], [ %74, %80 ], [ %52, %86 ]
  %104 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2, i64 2
  %105 = load i32, ptr %104, align 8, !tbaa !65
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %139, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3, i64 2
  %109 = load i32, ptr %108, align 4, !tbaa !65
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !53
  %113 = fpext float %112 to double
  %114 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %115 = load double, ptr %114, align 8, !tbaa !50
  %116 = fsub double %113, %115
  %117 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1, i64 2
  %118 = load double, ptr %117, align 8, !tbaa !50
  %119 = fmul double %116, %118
  %120 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = fpext float %121 to double
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %118, double %119)
  %124 = select i1 %110, double %123, double %119
  %125 = select i1 %110, double %119, double %123
  %126 = fcmp olt double %125, %103
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = fcmp olt double %125, 0x3E7AD7F29ABCAF48
  br i1 %128, label %156, label %129

129:                                              ; preds = %127
  %130 = fcmp ogt double %124, %102
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = fcmp ogt double %124, %125
  br i1 %132, label %156, label %152

133:                                              ; preds = %129
  %134 = fcmp ogt double %102, %125
  br i1 %134, label %156, label %152

135:                                              ; preds = %107
  %136 = fcmp ogt double %124, %102
  br i1 %136, label %137, label %152

137:                                              ; preds = %135
  %138 = fcmp ogt double %124, %103
  br i1 %138, label %156, label %152

139:                                              ; preds = %101
  %140 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %141 = load double, ptr %140, align 8, !tbaa !50
  %142 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !53
  %144 = fpext float %143 to double
  %145 = fcmp olt double %141, %144
  br i1 %145, label %156, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !53
  %149 = fadd float %143, %148
  %150 = fpext float %149 to double
  %151 = fcmp ogt double %141, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %137, %131, %146, %133, %135
  %153 = phi double [ %102, %133 ], [ %102, %135 ], [ %102, %146 ], [ %124, %131 ], [ %124, %137 ]
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 109)) #8
  br label %154

154:                                              ; preds = %4, %152
  %155 = phi double [ %153, %152 ], [ -1.000000e+07, %4 ]
  tail call fastcc void @_ZN3povL21priority_queue_insertEPNS_21Priority_Queue_StructEdPNS_16BBox_Tree_StructE(ptr noundef %0, double noundef %155, ptr noundef nonnull %1) #8
  br label %156

156:                                              ; preds = %139, %146, %137, %133, %131, %127, %88, %95, %86, %82, %80, %76, %39, %44, %35, %28, %22, %154
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %"struct.pov::Qelem_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %5 = load i32, ptr %0, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4) #8
  %9 = load i32, ptr %0, align 8, !tbaa !41
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  %12 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !103
  store double %15, ptr %1, align 8, !tbaa !50
  %16 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 1, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  store ptr %17, ptr %2, align 8, !tbaa !34
  %18 = zext i32 %11 to i64
  %19 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !106
  %20 = load i32, ptr %0, align 8, !tbaa !41
  %21 = add i32 %20, -1
  store i32 %21, ptr %0, align 8, !tbaa !41
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %49, label %23

23:                                               ; preds = %10, %46
  %24 = phi i32 [ %47, %46 ], [ 2, %10 ]
  %25 = phi i32 [ %38, %46 ], [ 1, %10 ]
  %26 = icmp eq i32 %24, %21
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !103
  %31 = or disjoint i32 %24, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !103
  %35 = fcmp olt double %30, %34
  %36 = select i1 %35, i32 %24, i32 %31
  br label %37

37:                                               ; preds = %27, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %27 ]
  %39 = sext i32 %25 to i64
  %40 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !103
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %13, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !103
  %45 = fcmp ogt double %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false), !tbaa.struct !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !106
  %47 = shl nsw i32 %38, 1
  %48 = icmp sgt i32 %47, %21
  br i1 %48, label %49, label %23, !llvm.loop !107

49:                                               ; preds = %46, %37, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov12IntersectionEPNS_10istk_entryEPNS_13Object_StructEPNS_10Ray_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL21priority_queue_insertEPNS_21Priority_Queue_StructEdPNS_16BBox_Tree_StructE(ptr nocapture noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !108 {
  %4 = alloca %"struct.pov::Qelem_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 110)) #8
  %5 = load i32, ptr %0, align 8, !tbaa !41
  %6 = add i32 %5, 1
  store i32 %6, ptr %0, align 8, !tbaa !41
  %7 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  br label %25

13:                                               ; preds = %3
  %14 = icmp ugt i32 %6, 1073741822
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5) #8
  br label %17

17:                                               ; preds = %15, %13
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 112)) #8
  %18 = load i32, ptr %7, align 4, !tbaa !42
  %19 = shl i32 %18, 1
  store i32 %19, ptr %7, align 4, !tbaa !42
  %20 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = zext i32 %19 to i64
  %23 = shl nuw nsw i64 %22, 4
  %24 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %21, i64 noundef %23, ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.1) #8
  store ptr %24, ptr %20, align 8, !tbaa !38
  br label %25

25:                                               ; preds = %10, %17
  %26 = phi ptr [ %12, %10 ], [ %24, %17 ]
  %27 = zext i32 %6 to i64
  %28 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %26, i64 %27
  store double %1, ptr %28, align 8, !tbaa !103
  %29 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %26, i64 %27, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !105
  %30 = icmp sgt i32 %6, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %25, %41
  %32 = phi i32 [ %36, %41 ], [ %6, %25 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %26, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !103
  %36 = lshr i32 %32, 1
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %26, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !103
  %40 = fcmp olt double %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !106
  %42 = icmp ugt i32 %32, 3
  br i1 %42, label %31, label %43, !llvm.loop !109

43:                                               ; preds = %31, %41, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !53
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !53
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !53
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !53
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN3povL9find_axisEPPNS_16BBox_Tree_StructEll(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !PGOFuncName !110 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %6 = icmp slt i64 %1, %2
  %7 = load double, ptr %5, align 16, !tbaa !50
  %8 = load double, ptr %4, align 16, !tbaa !50
  br i1 %6, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %15 = load double, ptr %14, align 16, !tbaa !50
  %16 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %17 = load double, ptr %16, align 16, !tbaa !50
  br label %60

18:                                               ; preds = %3
  %19 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %20 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %21 = load <2 x double>, ptr %19, align 8, !tbaa !50
  %22 = load <2 x double>, ptr %20, align 8, !tbaa !50
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %1, %18 ], [ %53, %23 ]
  %25 = phi double [ %8, %18 ], [ %35, %23 ]
  %26 = phi double [ %7, %18 ], [ %41, %23 ]
  %27 = phi <2 x double> [ %22, %18 ], [ %52, %23 ]
  %28 = phi <2 x double> [ %21, %18 ], [ %51, %23 ]
  %29 = getelementptr inbounds ptr, ptr %0, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %30, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = fpext float %32 to double
  %34 = fcmp ogt double %25, %33
  %35 = select i1 %34, double %33, double %25
  %36 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %30, i64 0, i32 2, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = fadd float %32, %37
  %39 = fpext float %38 to double
  %40 = fcmp olt double %26, %39
  %41 = select i1 %40, double %33, double %26
  %42 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %30, i64 0, i32 2, i32 0, i64 1
  %43 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %30, i64 0, i32 2, i32 1, i64 1
  %44 = load <2 x float>, ptr %42, align 4, !tbaa !53
  %45 = fpext <2 x float> %44 to <2 x double>
  %46 = load <2 x float>, ptr %43, align 4, !tbaa !53
  %47 = fadd <2 x float> %44, %46
  %48 = fpext <2 x float> %47 to <2 x double>
  %49 = fcmp olt <2 x double> %27, %48
  %50 = fcmp ogt <2 x double> %28, %45
  %51 = select <2 x i1> %50, <2 x double> %45, <2 x double> %28
  %52 = select <2 x i1> %49, <2 x double> %45, <2 x double> %27
  %53 = add nsw i64 %24, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %23, !llvm.loop !111

55:                                               ; preds = %23
  %56 = extractelement <2 x double> %51, i64 1
  %57 = extractelement <2 x double> %51, i64 0
  %58 = extractelement <2 x double> %52, i64 1
  %59 = extractelement <2 x double> %52, i64 0
  br label %60

60:                                               ; preds = %55, %9
  %61 = phi double [ %17, %9 ], [ %56, %55 ]
  %62 = phi double [ %15, %9 ], [ %58, %55 ]
  %63 = phi double [ %13, %9 ], [ %57, %55 ]
  %64 = phi double [ %11, %9 ], [ %59, %55 ]
  %65 = phi double [ %8, %9 ], [ %35, %55 ]
  %66 = phi double [ %7, %9 ], [ %41, %55 ]
  %67 = fsub double %66, %65
  %68 = fcmp ogt double %67, -2.000000e+10
  %69 = select i1 %68, double %67, double -2.000000e+10
  %70 = fsub double %64, %63
  %71 = fcmp ogt double %70, %69
  %72 = select i1 %71, double %70, double %69
  %73 = zext i1 %71 to i32
  %74 = fsub double %62, %61
  %75 = fcmp ogt double %74, %72
  %76 = select i1 %75, i32 2, i32 %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 %76
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @_ZN3povL9compboxesEPKvS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !112 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %5, i64 0, i32 2
  %7 = load i32, ptr @_ZN3povL4AxisE, align 4, !tbaa !65
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %3, i64 0, i32 2, i32 1, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %8
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %5, i64 0, i32 2, i32 1, i64 %8
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = insertelement <2 x float> poison, float %10, i64 0
  %18 = insertelement <2 x float> %17, float %14, i64 1
  %19 = fpext <2 x float> %18 to <2 x double>
  %20 = insertelement <2 x float> poison, float %12, i64 0
  %21 = insertelement <2 x float> %20, float %16, i64 1
  %22 = fpext <2 x float> %21 to <2 x double>
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %22)
  %24 = fptrunc <2 x double> %23 to <2 x float>
  %25 = extractelement <2 x float> %24, i64 0
  %26 = extractelement <2 x float> %24, i64 1
  %27 = fcmp olt float %25, %26
  %28 = fcmp une float %25, %26
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  ret i32 %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL16build_area_tableEPPNS_16BBox_Tree_StructEllPd(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !PGOFuncName !113 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %8 = icmp slt i64 %1, %2
  %9 = tail call i64 @llvm.smin.i64(i64 %1, i64 %2)
  %10 = select i1 %8, i64 1, i64 -1
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #8
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #8
  %11 = add nsw i64 %10, %2
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %79, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %15 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %16 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %17 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %18 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %19 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %20

20:                                               ; preds = %13, %68
  %21 = phi i64 [ %1, %13 ], [ %77, %68 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !53
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = fpext float %28 to double
  %30 = fadd double %26, %29
  %31 = load double, ptr %5, align 16, !tbaa !50
  %32 = fcmp ogt double %31, %26
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store double %26, ptr %5, align 16, !tbaa !50
  br label %34

34:                                               ; preds = %33, %20
  %35 = load double, ptr %6, align 16, !tbaa !50
  %36 = fcmp ogt double %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store double %30, ptr %6, align 16, !tbaa !50
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2, i32 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2, i32 1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fpext float %43 to double
  %45 = fadd double %41, %44
  %46 = load double, ptr %14, align 8, !tbaa !50
  %47 = fcmp ogt double %46, %41
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store double %41, ptr %14, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %48, %38
  %50 = load double, ptr %15, align 8, !tbaa !50
  %51 = fcmp ogt double %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store double %45, ptr %15, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2, i32 0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !53
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %23, i64 0, i32 2, i32 1, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !53
  %59 = fpext float %58 to double
  %60 = fadd double %56, %59
  %61 = load double, ptr %16, align 16, !tbaa !50
  %62 = fcmp ogt double %61, %56
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store double %56, ptr %16, align 16, !tbaa !50
  br label %64

64:                                               ; preds = %63, %53
  %65 = load double, ptr %17, align 16, !tbaa !50
  %66 = fcmp ogt double %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store double %60, ptr %17, align 16, !tbaa !50
  br label %68

68:                                               ; preds = %67, %64
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #8
  %69 = load double, ptr %7, align 16, !tbaa !50
  %70 = load double, ptr %18, align 8, !tbaa !50
  %71 = load double, ptr %19, align 16, !tbaa !50
  %72 = fadd double %70, %71
  %73 = fmul double %70, %71
  %74 = call double @llvm.fmuladd.f64(double %69, double %72, double %73)
  %75 = sub nsw i64 %21, %9
  %76 = getelementptr inbounds double, ptr %3, i64 %75
  store double %74, ptr %76, align 8, !tbaa !50
  %77 = add nsw i64 %21, %10
  %78 = icmp eq i64 %21, %2
  br i1 %78, label %79, label %20, !llvm.loop !114

79:                                               ; preds = %68, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov10Debug_InfoEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !50
  %5 = load double, ptr %2, align 8, !tbaa !50
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !50
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !50
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"_ZTSN3pov21Priority_Queue_StructE", !40, i64 0, !40, i64 4, !35, i64 8}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 0}
!42 = !{!39, !40, i64 4}
!43 = !{!44, !45, i64 2}
!44 = !{!"_ZTSN3pov16BBox_Tree_StructE", !45, i64 0, !45, i64 2, !46, i64 4, !35, i64 32}
!45 = !{!"short", !36, i64 0}
!46 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!47 = !{!44, !35, i64 32}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !36, i64 0}
!52 = distinct !{!52, !49}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !36, i64 0}
!55 = distinct !{!55, !49}
!56 = !{!57, !57, i64 0}
!57 = !{!"long", !36, i64 0}
!58 = !{i32 0, i32 2}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = !{!44, !45, i64 0}
!62 = distinct !{!62, !49}
!63 = !{!"bbox.cpp:_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll"}
!64 = !{i32 0, i32 3}
!65 = !{!40, !40, i64 0}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = !{!"bbox.cpp:_ZN3povL16create_bbox_nodeEi"}
!69 = !{!"bbox.cpp:_ZN3povL9calc_bboxEPNS_19Bounding_Box_StructEPPNS_16BBox_Tree_StructEll"}
!70 = distinct !{!70, !49}
!71 = !{!72, !35, i64 32}
!72 = !{!"_ZTSN3pov12Frame_StructE", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !35, i64 24, !35, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !36, i64 64, !36, i64 84, !36, i64 104, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160}
!73 = !{!74, !40, i64 8}
!74 = !{!"_ZTSN3pov13Object_StructE", !35, i64 0, !40, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !46, i64 72, !35, i64 96, !35, i64 104, !54, i64 112, !40, i64 116}
!75 = !{!76, !35, i64 120}
!76 = !{!"_ZTSN3pov19Light_Source_StructE", !35, i64 0, !40, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !46, i64 72, !35, i64 96, !35, i64 104, !54, i64 112, !40, i64 116, !35, i64 120, !36, i64 128, !36, i64 152, !36, i64 176, !36, i64 200, !36, i64 224, !36, i64 248, !51, i64 272, !51, i64 280, !51, i64 288, !51, i64 296, !51, i64 304, !35, i64 312, !36, i64 320, !36, i64 321, !36, i64 322, !77, i64 323, !77, i64 324, !36, i64 325, !36, i64 326, !36, i64 327, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !36, i64 384}
!77 = !{!"bool", !36, i64 0}
!78 = !{!74, !40, i64 116}
!79 = !{!74, !35, i64 16}
!80 = distinct !{!80, !49}
!81 = !{!82, !77, i64 20804}
!82 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !40, i64 0, !36, i64 4, !36, i64 5, !36, i64 6, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 4112, !36, i64 8208, !36, i64 12304, !36, i64 16400, !54, i64 20496, !54, i64 20500, !40, i64 20504, !40, i64 20508, !51, i64 20512, !77, i64 20520, !51, i64 20528, !40, i64 20536, !36, i64 20544, !40, i64 20744, !40, i64 20748, !40, i64 20752, !51, i64 20760, !51, i64 20768, !40, i64 20776, !40, i64 20780, !51, i64 20784, !51, i64 20792, !40, i64 20800, !77, i64 20804, !57, i64 20808, !40, i64 20816, !40, i64 20820, !40, i64 20824, !83, i64 20832, !51, i64 20920, !57, i64 20928, !51, i64 20936, !51, i64 20944, !51, i64 20952, !51, i64 20960, !51, i64 20968, !57, i64 20976, !40, i64 20984, !57, i64 20992, !40, i64 21000, !40, i64 21004, !40, i64 21008, !40, i64 21012, !40, i64 21016, !40, i64 21020, !51, i64 21024, !51, i64 21032, !51, i64 21040, !40, i64 21048, !40, i64 21052, !35, i64 21056, !35, i64 21064, !40, i64 21072, !77, i64 21076, !51, i64 21080, !51, i64 21088, !40, i64 21096, !40, i64 21100, !77, i64 21104, !85, i64 21108, !40, i64 21112, !36, i64 21116, !36, i64 25212, !36, i64 26772, !36, i64 30868, !40, i64 34964, !40, i64 34968, !57, i64 34976, !40, i64 34984, !40, i64 34988, !40, i64 34992, !86, i64 35000}
!83 = !{!"_ZTSN3pov8FRAMESEQE", !84, i64 0, !51, i64 8, !40, i64 16, !40, i64 20, !51, i64 24, !40, i64 32, !40, i64 36, !51, i64 40, !40, i64 48, !51, i64 56, !40, i64 64, !51, i64 72, !77, i64 80, !77, i64 81}
!84 = !{!"_ZTSN3pov9FRAMETYPEE", !36, i64 0}
!85 = !{!"_ZTSN3pov15Histogram_TypesE", !36, i64 0}
!86 = !{!"_ZTS9POVMSData", !40, i64 0, !40, i64 4, !36, i64 8}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!82, !57, i64 20808}
!90 = distinct !{!90, !49}
!91 = distinct !{!91, !49}
!92 = !{i64 0, i64 12, !93, i64 12, i64 12, !93}
!93 = !{!36, !36, i64 0}
!94 = distinct !{!94, !49}
!95 = !{!96, !35, i64 96}
!96 = !{!"_ZTSN3pov10istk_entryE", !51, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !35, i64 96, !40, i64 104, !40, i64 108, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !35, i64 184, !35, i64 192}
!97 = !{!96, !51, i64 0}
!98 = distinct !{!98, !49}
!99 = !{i64 0, i64 8, !50, i64 8, i64 24, !93, i64 32, i64 24, !93, i64 56, i64 24, !93, i64 80, i64 16, !93, i64 96, i64 8, !34, i64 104, i64 4, !65, i64 108, i64 4, !65, i64 112, i64 8, !50, i64 120, i64 8, !50, i64 128, i64 8, !50, i64 136, i64 8, !50, i64 144, i64 8, !50, i64 152, i64 8, !50, i64 160, i64 8, !50, i64 168, i64 8, !50, i64 176, i64 8, !50, i64 184, i64 8, !34, i64 192, i64 8, !34}
!100 = distinct !{!100, !49}
!101 = !{!102, !102, i64 0}
!102 = !{!"long long", !36, i64 0}
!103 = !{!104, !51, i64 0}
!104 = !{!"_ZTSN3pov12Qelem_StructE", !51, i64 0, !35, i64 8}
!105 = !{!104, !35, i64 8}
!106 = !{i64 0, i64 8, !50, i64 8, i64 8, !34}
!107 = distinct !{!107, !49}
!108 = !{!"bbox.cpp:_ZN3povL21priority_queue_insertEPNS_21Priority_Queue_StructEdPNS_16BBox_Tree_StructE"}
!109 = distinct !{!109, !49}
!110 = !{!"bbox.cpp:_ZN3povL9find_axisEPPNS_16BBox_Tree_StructEll"}
!111 = distinct !{!111, !49}
!112 = !{!"bbox.cpp:_ZN3povL9compboxesEPKvS1_"}
!113 = !{!"bbox.cpp:_ZN3povL16build_area_tableEPPNS_16BBox_Tree_StructEllPd"}
!114 = distinct !{!114, !49}
