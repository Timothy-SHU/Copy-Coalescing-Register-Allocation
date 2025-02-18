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
%"struct.pov::Qelem_Struct" = type { double, ptr }
%"struct.pov::Rayinfo_Struct" = type { [3 x double], [3 x double], [3 x i32], [3 x i32] }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }

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
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@_ZN3pov13backtraceFlagE = external local_unnamed_addr global i32, align 4
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"priority queue is empty.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Priority queue overflow.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"bounding box node\00", align 1
@_ZN3povL4AxisE = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Reallocing Finite to %d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov20Initialize_BBox_CodeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1)
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 4096, ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %1, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !34
  store i32 0, ptr %1, align 8, !tbaa !40
  %4 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %1, i64 0, i32 1
  store i32 256, ptr %4, align 4, !tbaa !41
  store ptr %1, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov21Create_Priority_QueueEj(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1)
  %3 = zext i32 %0 to i64
  %4 = shl nuw nsw i64 %3, 4
  %5 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %4, ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.1)
  %6 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !34
  store i32 0, ptr %2, align 8, !tbaa !40
  %7 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %2, i64 0, i32 1
  store i32 %0, ptr %7, align 4, !tbaa !41
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Deinitialize_BBox_CodeEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 267)
  store ptr null, ptr %4, align 8, !tbaa !34
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 269)
  br label %6

6:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Destroy_Priority_QueueEPNS_21Priority_Queue_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 267)
  store ptr null, ptr %4, align 8, !tbaa !34
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 269)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !43
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2, !tbaa !43
  %9 = icmp sgt i16 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %17, %12 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  tail call void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef %16)
  %17 = add nuw nsw i64 %13, 1
  %18 = load i16, ptr %4, align 2, !tbaa !43
  %19 = sext i16 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %12, label %21, !llvm.loop !48

21:                                               ; preds = %12, %7
  %22 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef 316)
  store ptr null, ptr %22, align 8, !tbaa !47
  store i16 0, ptr %4, align 2, !tbaa !43
  store ptr null, ptr %22, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %21, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 323)
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %4 = icmp eq ptr %1, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = load float, ptr %0, align 4, !tbaa !51
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds double, ptr %3, i64 1
  %24 = getelementptr inbounds double, ptr %3, i64 2
  br label %25

25:                                               ; preds = %5, %25
  %26 = phi i32 [ 1, %5 ], [ %60, %25 ]
  %27 = phi double [ -2.000000e+10, %5 ], [ %49, %25 ]
  %28 = phi double [ -2.000000e+10, %5 ], [ %54, %25 ]
  %29 = phi double [ -2.000000e+10, %5 ], [ %59, %25 ]
  %30 = phi double [ 2.000000e+10, %5 ], [ %47, %25 ]
  %31 = phi double [ 2.000000e+10, %5 ], [ %52, %25 ]
  %32 = phi double [ 2.000000e+10, %5 ], [ %57, %25 ]
  store double %7, ptr %3, align 16, !tbaa !53
  store double %10, ptr %23, align 8, !tbaa !53
  store double %13, ptr %24, align 16, !tbaa !53
  %33 = and i32 %26, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, double 0.000000e+00, double %16
  %36 = fadd double %35, %7
  store double %36, ptr %3, align 16, !tbaa !53
  %37 = and i32 %26, 2
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, double 0.000000e+00, double %19
  %40 = fadd double %39, %10
  store double %40, ptr %23, align 8, !tbaa !53
  %41 = and i32 %26, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, double 0.000000e+00, double %22
  %44 = fadd double %43, %13
  store double %44, ptr %24, align 16, !tbaa !53
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %1)
  %45 = load double, ptr %3, align 16, !tbaa !53
  %46 = fcmp olt double %45, %30
  %47 = select i1 %46, double %45, double %30
  %48 = fcmp ogt double %45, %27
  %49 = select i1 %48, double %45, double %27
  %50 = load double, ptr %23, align 8, !tbaa !53
  %51 = fcmp olt double %50, %31
  %52 = select i1 %51, double %50, double %31
  %53 = fcmp ogt double %50, %28
  %54 = select i1 %53, double %50, double %28
  %55 = load double, ptr %24, align 16, !tbaa !53
  %56 = fcmp olt double %55, %32
  %57 = select i1 %56, double %55, double %32
  %58 = fcmp ogt double %55, %29
  %59 = select i1 %58, double %55, double %29
  %60 = add nuw nsw i32 %26, 1
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %25, !llvm.loop !55

62:                                               ; preds = %25
  %63 = fcmp olt double %47, -1.000000e+10
  %64 = select i1 %63, double -1.000000e+10, double %47
  %65 = fcmp olt double %52, -1.000000e+10
  %66 = select i1 %65, double -1.000000e+10, double %52
  %67 = fcmp olt double %57, -1.000000e+10
  %68 = select i1 %67, double -1.000000e+10, double %57
  %69 = fcmp ogt double %49, 1.000000e+10
  %70 = select i1 %69, double 1.000000e+10, double %49
  %71 = fcmp ogt double %54, 1.000000e+10
  %72 = select i1 %71, double 1.000000e+10, double %54
  %73 = fcmp ogt double %59, 1.000000e+10
  %74 = select i1 %73, double 1.000000e+10, double %59
  %75 = fptrunc double %64 to float
  store float %75, ptr %0, align 4, !tbaa !51
  %76 = fptrunc double %66 to float
  store float %76, ptr %8, align 4, !tbaa !51
  %77 = fptrunc double %68 to float
  store float %77, ptr %11, align 4, !tbaa !51
  %78 = fsub double %70, %64
  %79 = fptrunc double %78 to float
  store float %79, ptr %14, align 4, !tbaa !51
  %80 = fsub double %72, %66
  %81 = fptrunc double %80 to float
  store float %81, ptr %17, align 4, !tbaa !51
  %82 = fsub double %74, %68
  %83 = fptrunc double %82 to float
  store float %83, ptr %20, align 4, !tbaa !51
  br label %84

84:                                               ; preds = %2, %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Recompute_Inverse_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %4 = icmp eq ptr %1, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = load float, ptr %0, align 4, !tbaa !51
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds double, ptr %3, i64 1
  %24 = getelementptr inbounds double, ptr %3, i64 2
  br label %25

25:                                               ; preds = %5, %25
  %26 = phi i32 [ 1, %5 ], [ %60, %25 ]
  %27 = phi double [ -2.000000e+10, %5 ], [ %49, %25 ]
  %28 = phi double [ -2.000000e+10, %5 ], [ %54, %25 ]
  %29 = phi double [ -2.000000e+10, %5 ], [ %59, %25 ]
  %30 = phi double [ 2.000000e+10, %5 ], [ %47, %25 ]
  %31 = phi double [ 2.000000e+10, %5 ], [ %52, %25 ]
  %32 = phi double [ 2.000000e+10, %5 ], [ %57, %25 ]
  store double %7, ptr %3, align 16, !tbaa !53
  store double %10, ptr %23, align 8, !tbaa !53
  store double %13, ptr %24, align 16, !tbaa !53
  %33 = and i32 %26, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, double 0.000000e+00, double %16
  %36 = fadd double %35, %7
  store double %36, ptr %3, align 16, !tbaa !53
  %37 = and i32 %26, 2
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, double 0.000000e+00, double %19
  %40 = fadd double %39, %10
  store double %40, ptr %23, align 8, !tbaa !53
  %41 = and i32 %26, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, double 0.000000e+00, double %22
  %44 = fadd double %43, %13
  store double %44, ptr %24, align 16, !tbaa !53
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %1)
  %45 = load double, ptr %3, align 16, !tbaa !53
  %46 = fcmp olt double %45, %30
  %47 = select i1 %46, double %45, double %30
  %48 = fcmp ogt double %45, %27
  %49 = select i1 %48, double %45, double %27
  %50 = load double, ptr %23, align 8, !tbaa !53
  %51 = fcmp olt double %50, %31
  %52 = select i1 %51, double %50, double %31
  %53 = fcmp ogt double %50, %28
  %54 = select i1 %53, double %50, double %28
  %55 = load double, ptr %24, align 16, !tbaa !53
  %56 = fcmp olt double %55, %32
  %57 = select i1 %56, double %55, double %32
  %58 = fcmp ogt double %55, %29
  %59 = select i1 %58, double %55, double %29
  %60 = add nuw nsw i32 %26, 1
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %25, !llvm.loop !56

62:                                               ; preds = %25
  %63 = fcmp olt double %47, -1.000000e+10
  %64 = select i1 %63, double -1.000000e+10, double %47
  %65 = fcmp olt double %52, -1.000000e+10
  %66 = select i1 %65, double -1.000000e+10, double %52
  %67 = fcmp olt double %57, -1.000000e+10
  %68 = select i1 %67, double -1.000000e+10, double %57
  %69 = fcmp ogt double %49, 1.000000e+10
  %70 = select i1 %69, double 1.000000e+10, double %49
  %71 = fcmp ogt double %54, 1.000000e+10
  %72 = select i1 %71, double 1.000000e+10, double %54
  %73 = fcmp ogt double %59, 1.000000e+10
  %74 = select i1 %73, double 1.000000e+10, double %59
  %75 = fptrunc double %64 to float
  store float %75, ptr %0, align 4, !tbaa !51
  %76 = fptrunc double %66 to float
  store float %76, ptr %8, align 4, !tbaa !51
  %77 = fptrunc double %68 to float
  store float %77, ptr %11, align 4, !tbaa !51
  %78 = fsub double %70, %64
  %79 = fptrunc double %78 to float
  store float %79, ptr %14, align 4, !tbaa !51
  %80 = fsub double %72, %66
  %81 = fptrunc double %80 to float
  store float %81, ptr %17, align 4, !tbaa !51
  %82 = fsub double %74, %68
  %83 = fptrunc double %82 to float
  store float %83, ptr %20, align 4, !tbaa !51
  br label %84

84:                                               ; preds = %2, %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  store i64 %1, ptr %6, align 8, !tbaa !57
  %7 = shl nsw i64 %1, 1
  store i64 %7, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !57
  %8 = icmp sgt i64 %1, 0
  br i1 %8, label %9, label %193

9:                                                ; preds = %5
  %10 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %1), !range !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %14, %12 ], [ %1, %9 ]
  %14 = load i64, ptr %6, align 8, !tbaa !57
  call void @_ZN3pov12Do_CooperateEi(i32 noundef 0)
  %15 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6, i64 noundef %13, i64 noundef %14), !range !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %12, label %17, !llvm.loop !60

17:                                               ; preds = %12, %9
  %18 = icmp sgt i64 %3, 0
  br i1 %18, label %19, label %282

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !42
  %21 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !43
  %25 = sext i16 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = add nsw i64 %26, 8
  %28 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %22, i64 noundef %27, ptr noundef nonnull @.str, i32 noundef 557, ptr noundef nonnull @.str.2)
  store ptr %28, ptr %21, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load i16, ptr %23, align 2, !tbaa !43
  %31 = sext i16 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef nonnull %29, ptr noundef %28, i64 noundef %32)
  %34 = load i16, ptr %23, align 2, !tbaa !43
  %35 = add i16 %34, 1
  store i16 %35, ptr %23, align 2, !tbaa !43
  %36 = call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6)
  store i16 0, ptr %36, align 8, !tbaa !61
  %37 = trunc i64 %3 to i16
  %38 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 1
  store i16 %37, ptr %38, align 2, !tbaa !43
  %39 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2
  %40 = and i64 %3, 4294967295
  %41 = icmp eq i64 %40, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  br i1 %41, label %46, label %42

42:                                               ; preds = %19
  %43 = shl i64 %3, 32
  %44 = ashr exact i64 %43, 29
  %45 = call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %44, ptr noundef nonnull @.str, i32 noundef 1442, ptr noundef nonnull @.str.6)
  br label %46

46:                                               ; preds = %19, %42
  %47 = phi ptr [ %45, %42 ], [ null, %19 ]
  %48 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !47
  %49 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 3
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %58, %50 ]
  %52 = phi i16 [ 0, %46 ], [ %57, %50 ]
  %53 = getelementptr inbounds ptr, ptr %4, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = load ptr, ptr %49, align 8, !tbaa !47
  %56 = getelementptr inbounds ptr, ptr %55, i64 %51
  store ptr %54, ptr %56, align 8, !tbaa !42
  %57 = add i16 %52, 1
  %58 = sext i16 %57 to i64
  %59 = icmp slt i64 %58, %3
  br i1 %59, label %50, label %60, !llvm.loop !62

60:                                               ; preds = %50, %60
  %61 = phi i64 [ %103, %60 ], [ 0, %50 ]
  %62 = phi double [ %80, %60 ], [ -2.000000e+10, %50 ]
  %63 = phi double [ %91, %60 ], [ -2.000000e+10, %50 ]
  %64 = phi double [ %102, %60 ], [ -2.000000e+10, %50 ]
  %65 = phi double [ %78, %60 ], [ 2.000000e+10, %50 ]
  %66 = phi double [ %89, %60 ], [ 2.000000e+10, %50 ]
  %67 = phi double [ %100, %60 ], [ 2.000000e+10, %50 ]
  %68 = getelementptr inbounds ptr, ptr %4, i64 %61
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2
  %71 = load float, ptr %70, align 4, !tbaa !51
  %72 = fpext float %71 to double
  %73 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !51
  %75 = fpext float %74 to double
  %76 = fadd double %72, %75
  %77 = fcmp ogt double %65, %72
  %78 = select i1 %77, double %72, double %65
  %79 = fcmp ogt double %76, %62
  %80 = select i1 %79, double %76, double %62
  %81 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2, i32 0, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !51
  %83 = fpext float %82 to double
  %84 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2, i32 1, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !51
  %86 = fpext float %85 to double
  %87 = fadd double %83, %86
  %88 = fcmp ogt double %66, %83
  %89 = select i1 %88, double %83, double %66
  %90 = fcmp ogt double %87, %63
  %91 = select i1 %90, double %87, double %63
  %92 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2, i32 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !51
  %94 = fpext float %93 to double
  %95 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %69, i64 0, i32 2, i32 1, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = fpext float %96 to double
  %98 = fadd double %94, %97
  %99 = fcmp ogt double %67, %94
  %100 = select i1 %99, double %94, double %67
  %101 = fcmp ogt double %98, %64
  %102 = select i1 %101, double %98, double %64
  %103 = add nuw nsw i64 %61, 1
  %104 = icmp eq i64 %103, %3
  br i1 %104, label %105, label %60, !llvm.loop !63

105:                                              ; preds = %60
  %106 = fptrunc double %78 to float
  store float %106, ptr %39, align 4, !tbaa !51
  %107 = fptrunc double %89 to float
  %108 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2, i32 0, i64 1
  store float %107, ptr %108, align 4, !tbaa !51
  %109 = fptrunc double %100 to float
  %110 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2, i32 0, i64 2
  store float %109, ptr %110, align 4, !tbaa !51
  %111 = fsub double %80, %78
  %112 = fptrunc double %111 to float
  %113 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2, i32 1
  store float %112, ptr %113, align 4, !tbaa !51
  %114 = fsub double %91, %89
  %115 = fptrunc double %114 to float
  %116 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2, i32 1, i64 1
  store float %115, ptr %116, align 4, !tbaa !51
  %117 = fsub double %102, %100
  %118 = fptrunc double %117 to float
  %119 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %36, i64 0, i32 2, i32 1, i64 2
  store float %118, ptr %119, align 4, !tbaa !51
  %120 = load ptr, ptr %21, align 8, !tbaa !47
  store ptr %36, ptr %120, align 8, !tbaa !42
  %121 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2
  %122 = load ptr, ptr %21, align 8, !tbaa !47
  %123 = load i16, ptr %23, align 2, !tbaa !43
  %124 = sext i16 %123 to i64
  %125 = icmp sgt i16 %123, 0
  br i1 %125, label %126, label %171

126:                                              ; preds = %105, %126
  %127 = phi i64 [ %169, %126 ], [ 0, %105 ]
  %128 = phi double [ %146, %126 ], [ -2.000000e+10, %105 ]
  %129 = phi double [ %157, %126 ], [ -2.000000e+10, %105 ]
  %130 = phi double [ %168, %126 ], [ -2.000000e+10, %105 ]
  %131 = phi double [ %144, %126 ], [ 2.000000e+10, %105 ]
  %132 = phi double [ %155, %126 ], [ 2.000000e+10, %105 ]
  %133 = phi double [ %166, %126 ], [ 2.000000e+10, %105 ]
  %134 = getelementptr inbounds ptr, ptr %122, i64 %127
  %135 = load ptr, ptr %134, align 8, !tbaa !42
  %136 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2
  %137 = load float, ptr %136, align 4, !tbaa !51
  %138 = fpext float %137 to double
  %139 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2, i32 1
  %140 = load float, ptr %139, align 4, !tbaa !51
  %141 = fpext float %140 to double
  %142 = fadd double %138, %141
  %143 = fcmp ogt double %131, %138
  %144 = select i1 %143, double %138, double %131
  %145 = fcmp ogt double %142, %128
  %146 = select i1 %145, double %142, double %128
  %147 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2, i32 0, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !51
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2, i32 1, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !51
  %152 = fpext float %151 to double
  %153 = fadd double %149, %152
  %154 = fcmp ogt double %132, %149
  %155 = select i1 %154, double %149, double %132
  %156 = fcmp ogt double %153, %129
  %157 = select i1 %156, double %153, double %129
  %158 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2, i32 0, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !51
  %160 = fpext float %159 to double
  %161 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %135, i64 0, i32 2, i32 1, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !51
  %163 = fpext float %162 to double
  %164 = fadd double %160, %163
  %165 = fcmp ogt double %133, %160
  %166 = select i1 %165, double %160, double %133
  %167 = fcmp ogt double %164, %130
  %168 = select i1 %167, double %164, double %130
  %169 = add nuw nsw i64 %127, 1
  %170 = icmp eq i64 %169, %124
  br i1 %170, label %171, label %126, !llvm.loop !63

171:                                              ; preds = %126, %105
  %172 = phi double [ 2.000000e+10, %105 ], [ %166, %126 ]
  %173 = phi double [ 2.000000e+10, %105 ], [ %155, %126 ]
  %174 = phi double [ 2.000000e+10, %105 ], [ %144, %126 ]
  %175 = phi double [ -2.000000e+10, %105 ], [ %168, %126 ]
  %176 = phi double [ -2.000000e+10, %105 ], [ %157, %126 ]
  %177 = phi double [ -2.000000e+10, %105 ], [ %146, %126 ]
  %178 = fptrunc double %174 to float
  store float %178, ptr %121, align 4, !tbaa !51
  %179 = fptrunc double %173 to float
  %180 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2, i32 0, i64 1
  store float %179, ptr %180, align 4, !tbaa !51
  %181 = fptrunc double %172 to float
  %182 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2, i32 0, i64 2
  store float %181, ptr %182, align 4, !tbaa !51
  %183 = fsub double %177, %174
  %184 = fptrunc double %183 to float
  %185 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2, i32 1
  store float %184, ptr %185, align 4, !tbaa !51
  %186 = fsub double %176, %173
  %187 = fptrunc double %186 to float
  %188 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2, i32 1, i64 1
  store float %187, ptr %188, align 4, !tbaa !51
  %189 = fsub double %175, %172
  %190 = fptrunc double %189 to float
  %191 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %20, i64 0, i32 2, i32 1, i64 2
  store float %190, ptr %191, align 4, !tbaa !51
  store i16 1, ptr %20, align 8, !tbaa !61
  %192 = load ptr, ptr %122, align 8, !tbaa !42
  br label %280

193:                                              ; preds = %5
  %194 = icmp sgt i64 %3, 0
  br i1 %194, label %195, label %282

195:                                              ; preds = %193
  %196 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6)
  store i16 0, ptr %196, align 8, !tbaa !61
  %197 = trunc i64 %3 to i16
  %198 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 1
  store i16 %197, ptr %198, align 2, !tbaa !43
  %199 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2
  %200 = and i64 %3, 4294967295
  %201 = icmp eq i64 %200, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %199, i8 0, i64 24, i1 false)
  br i1 %201, label %206, label %202

202:                                              ; preds = %195
  %203 = shl i64 %3, 32
  %204 = ashr exact i64 %203, 29
  %205 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %204, ptr noundef nonnull @.str, i32 noundef 1442, ptr noundef nonnull @.str.6)
  br label %206

206:                                              ; preds = %195, %202
  %207 = phi ptr [ %205, %202 ], [ null, %195 ]
  %208 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 3
  store ptr %207, ptr %208, align 8, !tbaa !47
  %209 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 3
  br label %210

210:                                              ; preds = %206, %210
  %211 = phi i64 [ 0, %206 ], [ %218, %210 ]
  %212 = phi i16 [ 0, %206 ], [ %217, %210 ]
  %213 = getelementptr inbounds ptr, ptr %4, i64 %211
  %214 = load ptr, ptr %213, align 8, !tbaa !42
  %215 = load ptr, ptr %209, align 8, !tbaa !47
  %216 = getelementptr inbounds ptr, ptr %215, i64 %211
  store ptr %214, ptr %216, align 8, !tbaa !42
  %217 = add i16 %212, 1
  %218 = sext i16 %217 to i64
  %219 = icmp slt i64 %218, %3
  br i1 %219, label %210, label %220, !llvm.loop !64

220:                                              ; preds = %210, %220
  %221 = phi i64 [ %263, %220 ], [ 0, %210 ]
  %222 = phi double [ %240, %220 ], [ -2.000000e+10, %210 ]
  %223 = phi double [ %251, %220 ], [ -2.000000e+10, %210 ]
  %224 = phi double [ %262, %220 ], [ -2.000000e+10, %210 ]
  %225 = phi double [ %238, %220 ], [ 2.000000e+10, %210 ]
  %226 = phi double [ %249, %220 ], [ 2.000000e+10, %210 ]
  %227 = phi double [ %260, %220 ], [ 2.000000e+10, %210 ]
  %228 = getelementptr inbounds ptr, ptr %4, i64 %221
  %229 = load ptr, ptr %228, align 8, !tbaa !42
  %230 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2
  %231 = load float, ptr %230, align 4, !tbaa !51
  %232 = fpext float %231 to double
  %233 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2, i32 1
  %234 = load float, ptr %233, align 4, !tbaa !51
  %235 = fpext float %234 to double
  %236 = fadd double %232, %235
  %237 = fcmp ogt double %225, %232
  %238 = select i1 %237, double %232, double %225
  %239 = fcmp ogt double %236, %222
  %240 = select i1 %239, double %236, double %222
  %241 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2, i32 0, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !51
  %243 = fpext float %242 to double
  %244 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2, i32 1, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !51
  %246 = fpext float %245 to double
  %247 = fadd double %243, %246
  %248 = fcmp ogt double %226, %243
  %249 = select i1 %248, double %243, double %226
  %250 = fcmp ogt double %247, %223
  %251 = select i1 %250, double %247, double %223
  %252 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2, i32 0, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !51
  %254 = fpext float %253 to double
  %255 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %229, i64 0, i32 2, i32 1, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !51
  %257 = fpext float %256 to double
  %258 = fadd double %254, %257
  %259 = fcmp ogt double %227, %254
  %260 = select i1 %259, double %254, double %227
  %261 = fcmp ogt double %258, %224
  %262 = select i1 %261, double %258, double %224
  %263 = add nuw nsw i64 %221, 1
  %264 = icmp eq i64 %263, %3
  br i1 %264, label %265, label %220, !llvm.loop !63

265:                                              ; preds = %220
  %266 = fptrunc double %238 to float
  store float %266, ptr %199, align 4, !tbaa !51
  %267 = fptrunc double %249 to float
  %268 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2, i32 0, i64 1
  store float %267, ptr %268, align 4, !tbaa !51
  %269 = fptrunc double %260 to float
  %270 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2, i32 0, i64 2
  store float %269, ptr %270, align 4, !tbaa !51
  %271 = fsub double %240, %238
  %272 = fptrunc double %271 to float
  %273 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2, i32 1
  store float %272, ptr %273, align 4, !tbaa !51
  %274 = fsub double %251, %249
  %275 = fptrunc double %274 to float
  %276 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2, i32 1, i64 1
  store float %275, ptr %276, align 4, !tbaa !51
  %277 = fsub double %262, %260
  %278 = fptrunc double %277 to float
  %279 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %196, i64 0, i32 2, i32 1, i64 2
  store float %278, ptr %279, align 4, !tbaa !51
  store ptr %196, ptr %0, align 8, !tbaa !42
  br label %280

280:                                              ; preds = %171, %265
  %281 = phi ptr [ %196, %265 ], [ %192, %171 ]
  store i16 1, ptr %281, align 8, !tbaa !61
  br label %282

282:                                              ; preds = %280, %193, %17
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %343, %5
  %7 = phi i64 [ %3, %5 ], [ %344, %343 ]
  %8 = phi i32 [ poison, %5 ], [ %346, %343 ]
  %9 = phi i1 [ false, %5 ], [ true, %343 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = icmp slt i64 %7, %4
  br i1 %11, label %12, label %61

12:                                               ; preds = %6, %12
  %13 = phi i64 [ %55, %12 ], [ %7, %6 ]
  %14 = phi double [ %32, %12 ], [ -2.000000e+10, %6 ]
  %15 = phi double [ %43, %12 ], [ -2.000000e+10, %6 ]
  %16 = phi double [ %54, %12 ], [ -2.000000e+10, %6 ]
  %17 = phi double [ %26, %12 ], [ 2.000000e+10, %6 ]
  %18 = phi double [ %37, %12 ], [ 2.000000e+10, %6 ]
  %19 = phi double [ %48, %12 ], [ 2.000000e+10, %6 ]
  %20 = getelementptr inbounds ptr, ptr %10, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fpext float %23 to double
  %25 = fcmp ogt double %17, %24
  %26 = select i1 %25, double %24, double %17
  %27 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = fadd float %23, %28
  %30 = fpext float %29 to double
  %31 = fcmp olt double %14, %30
  %32 = select i1 %31, double %24, double %14
  %33 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2, i32 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = fpext float %34 to double
  %36 = fcmp ogt double %18, %35
  %37 = select i1 %36, double %35, double %18
  %38 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2, i32 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = fadd float %34, %39
  %41 = fpext float %40 to double
  %42 = fcmp olt double %15, %41
  %43 = select i1 %42, double %35, double %15
  %44 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2, i32 0, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = fpext float %45 to double
  %47 = fcmp ogt double %19, %46
  %48 = select i1 %47, double %46, double %19
  %49 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %21, i64 0, i32 2, i32 1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = fadd float %45, %50
  %52 = fpext float %51 to double
  %53 = fcmp olt double %16, %52
  %54 = select i1 %53, double %46, double %16
  %55 = add nsw i64 %13, 1
  %56 = icmp eq i64 %55, %4
  br i1 %56, label %57, label %12, !llvm.loop !65

57:                                               ; preds = %12
  %58 = fsub double %32, %26
  %59 = fsub double %43, %37
  %60 = fsub double %54, %48
  br label %61

61:                                               ; preds = %57, %6
  %62 = phi double [ -4.000000e+10, %6 ], [ %58, %57 ]
  %63 = phi double [ -4.000000e+10, %6 ], [ %59, %57 ]
  %64 = phi double [ -4.000000e+10, %6 ], [ %60, %57 ]
  %65 = fcmp ogt double %62, -2.000000e+10
  %66 = select i1 %65, double %62, double -2.000000e+10
  %67 = fcmp ogt double %63, %66
  %68 = select i1 %67, double %63, double %66
  %69 = zext i1 %67 to i32
  %70 = fcmp ogt double %64, %68
  %71 = select i1 %70, i32 2, i32 %69
  store i32 %71, ptr @_ZN3povL4AxisE, align 4, !tbaa !66
  %72 = sub nsw i64 %4, %7
  %73 = icmp slt i64 %72, 1
  br i1 %73, label %347, label %74

74:                                               ; preds = %61
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1)
  %75 = load ptr, ptr %1, align 8, !tbaa !42
  %76 = getelementptr inbounds ptr, ptr %75, i64 %7
  tail call void @spec_qsort(ptr noundef %76, i64 noundef %72, i64 noundef 8, ptr noundef nonnull @_ZN3povL9compboxesEPKvS1_)
  %77 = shl i64 %72, 3
  %78 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %77, ptr noundef nonnull @.str, i32 noundef 1816, ptr noundef nonnull @.str.3)
  %79 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %77, ptr noundef nonnull @.str, i32 noundef 1817, ptr noundef nonnull @.str.3)
  %80 = load ptr, ptr %1, align 8, !tbaa !42
  %81 = add nsw i64 %4, -1
  %82 = icmp sgt i64 %81, %7
  %83 = tail call i64 @llvm.smin.i64(i64 %7, i64 %81)
  %84 = select i1 %82, i64 1, i64 -1
  %85 = add nsw i64 %84, %81
  %86 = icmp eq i64 %85, %7
  br i1 %86, label %140, label %87

87:                                               ; preds = %74, %87
  %88 = phi i64 [ %138, %87 ], [ %7, %74 ]
  %89 = phi double [ %127, %87 ], [ 2.000000e+10, %74 ]
  %90 = phi double [ %116, %87 ], [ 2.000000e+10, %74 ]
  %91 = phi double [ %105, %87 ], [ 2.000000e+10, %74 ]
  %92 = phi double [ %107, %87 ], [ -2.000000e+10, %74 ]
  %93 = phi double [ %118, %87 ], [ -2.000000e+10, %74 ]
  %94 = phi double [ %129, %87 ], [ -2.000000e+10, %74 ]
  %95 = getelementptr inbounds ptr, ptr %80, i64 %88
  %96 = load ptr, ptr %95, align 8, !tbaa !42
  %97 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2
  %98 = load float, ptr %97, align 4, !tbaa !51
  %99 = fpext float %98 to double
  %100 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2, i32 1
  %101 = load float, ptr %100, align 4, !tbaa !51
  %102 = fpext float %101 to double
  %103 = fadd double %99, %102
  %104 = fcmp ogt double %91, %99
  %105 = select i1 %104, double %99, double %91
  %106 = fcmp ogt double %103, %92
  %107 = select i1 %106, double %103, double %92
  %108 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2, i32 0, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !51
  %110 = fpext float %109 to double
  %111 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2, i32 1, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !51
  %113 = fpext float %112 to double
  %114 = fadd double %110, %113
  %115 = fcmp ogt double %90, %110
  %116 = select i1 %115, double %110, double %90
  %117 = fcmp ogt double %114, %93
  %118 = select i1 %117, double %114, double %93
  %119 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2, i32 0, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !51
  %121 = fpext float %120 to double
  %122 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %96, i64 0, i32 2, i32 1, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !51
  %124 = fpext float %123 to double
  %125 = fadd double %121, %124
  %126 = fcmp ogt double %89, %121
  %127 = select i1 %126, double %121, double %89
  %128 = fcmp ogt double %125, %94
  %129 = select i1 %128, double %125, double %94
  %130 = fsub double %107, %105
  %131 = fsub double %118, %116
  %132 = fsub double %129, %127
  %133 = fadd double %131, %132
  %134 = fmul double %131, %132
  %135 = tail call double @llvm.fmuladd.f64(double %130, double %133, double %134)
  %136 = sub nsw i64 %88, %83
  %137 = getelementptr inbounds double, ptr %78, i64 %136
  store double %135, ptr %137, align 8, !tbaa !53
  %138 = add nsw i64 %88, %84
  %139 = icmp eq i64 %88, %81
  br i1 %139, label %140, label %87, !llvm.loop !67

140:                                              ; preds = %87, %74
  %141 = icmp sgt i64 %4, %7
  %142 = select i1 %141, i64 -1, i64 1
  %143 = add nsw i64 %142, %7
  %144 = icmp eq i64 %143, %81
  br i1 %144, label %198, label %145

145:                                              ; preds = %140, %145
  %146 = phi i64 [ %196, %145 ], [ %81, %140 ]
  %147 = phi double [ %185, %145 ], [ 2.000000e+10, %140 ]
  %148 = phi double [ %174, %145 ], [ 2.000000e+10, %140 ]
  %149 = phi double [ %163, %145 ], [ 2.000000e+10, %140 ]
  %150 = phi double [ %165, %145 ], [ -2.000000e+10, %140 ]
  %151 = phi double [ %176, %145 ], [ -2.000000e+10, %140 ]
  %152 = phi double [ %187, %145 ], [ -2.000000e+10, %140 ]
  %153 = getelementptr inbounds ptr, ptr %80, i64 %146
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  %155 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2
  %156 = load float, ptr %155, align 4, !tbaa !51
  %157 = fpext float %156 to double
  %158 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !51
  %160 = fpext float %159 to double
  %161 = fadd double %157, %160
  %162 = fcmp ogt double %149, %157
  %163 = select i1 %162, double %157, double %149
  %164 = fcmp ogt double %161, %150
  %165 = select i1 %164, double %161, double %150
  %166 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2, i32 0, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !51
  %168 = fpext float %167 to double
  %169 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2, i32 1, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !51
  %171 = fpext float %170 to double
  %172 = fadd double %168, %171
  %173 = fcmp ogt double %148, %168
  %174 = select i1 %173, double %168, double %148
  %175 = fcmp ogt double %172, %151
  %176 = select i1 %175, double %172, double %151
  %177 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2, i32 0, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !51
  %179 = fpext float %178 to double
  %180 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %154, i64 0, i32 2, i32 1, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !51
  %182 = fpext float %181 to double
  %183 = fadd double %179, %182
  %184 = fcmp ogt double %147, %179
  %185 = select i1 %184, double %179, double %147
  %186 = fcmp ogt double %183, %152
  %187 = select i1 %186, double %183, double %152
  %188 = fsub double %165, %163
  %189 = fsub double %176, %174
  %190 = fsub double %187, %185
  %191 = fadd double %189, %190
  %192 = fmul double %189, %190
  %193 = tail call double @llvm.fmuladd.f64(double %188, double %191, double %192)
  %194 = sub nsw i64 %146, %83
  %195 = getelementptr inbounds double, ptr %79, i64 %194
  store double %193, ptr %195, align 8, !tbaa !53
  %196 = add nsw i64 %146, %142
  %197 = icmp eq i64 %146, %7
  br i1 %197, label %198, label %145, !llvm.loop !67

198:                                              ; preds = %145, %140
  %199 = add nsw i64 %72, -1
  %200 = icmp eq i64 %72, 1
  br i1 %200, label %226, label %201

201:                                              ; preds = %198
  %202 = sitofp i64 %72 to double
  %203 = fadd double %202, -3.000000e+00
  %204 = load double, ptr %79, align 8, !tbaa !53
  %205 = fmul double %203, %204
  %206 = tail call i64 @llvm.smax.i64(i64 %199, i64 1)
  br label %207

207:                                              ; preds = %201, %207
  %208 = phi double [ %224, %207 ], [ %205, %201 ]
  %209 = phi i64 [ %223, %207 ], [ -1, %201 ]
  %210 = phi i64 [ %211, %207 ], [ 0, %201 ]
  %211 = add nuw nsw i64 %210, 1
  %212 = sitofp i64 %211 to double
  %213 = getelementptr inbounds double, ptr %78, i64 %210
  %214 = load double, ptr %213, align 8, !tbaa !53
  %215 = sub nsw i64 %199, %210
  %216 = sitofp i64 %215 to double
  %217 = getelementptr inbounds double, ptr %79, i64 %211
  %218 = load double, ptr %217, align 8, !tbaa !53
  %219 = fmul double %218, %216
  %220 = tail call double @llvm.fmuladd.f64(double %212, double %214, double %219)
  %221 = fcmp olt double %220, %208
  %222 = add nsw i64 %210, %7
  %223 = select i1 %221, i64 %222, i64 %209
  %224 = select i1 %221, double %220, double %208
  %225 = icmp eq i64 %211, %206
  br i1 %225, label %226, label %207, !llvm.loop !68

226:                                              ; preds = %207, %198
  %227 = phi i64 [ -1, %198 ], [ %223, %207 ]
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %78, ptr noundef nonnull @.str, i32 noundef 1846)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %79, ptr noundef nonnull @.str, i32 noundef 1847)
  %228 = icmp slt i64 %72, 5
  %229 = icmp slt i64 %227, 0
  %230 = select i1 %228, i1 true, i1 %229
  br i1 %230, label %231, label %343

231:                                              ; preds = %226
  %232 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6)
  store i16 0, ptr %232, align 8, !tbaa !61
  %233 = trunc i64 %72 to i16
  %234 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !43
  %235 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2
  %236 = and i64 %72, 4294967295
  %237 = icmp eq i64 %236, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %235, i8 0, i64 24, i1 false)
  br i1 %237, label %242, label %238

238:                                              ; preds = %231
  %239 = shl i64 %72, 32
  %240 = ashr exact i64 %239, 29
  %241 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %240, ptr noundef nonnull @.str, i32 noundef 1442, ptr noundef nonnull @.str.6)
  br label %242

242:                                              ; preds = %231, %238
  %243 = phi ptr [ %241, %238 ], [ null, %231 ]
  %244 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 3
  store ptr %243, ptr %244, align 8, !tbaa !47
  %245 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 3
  %246 = tail call i64 @llvm.smax.i64(i64 %72, i64 1)
  br label %247

247:                                              ; preds = %242, %247
  %248 = phi i64 [ 0, %242 ], [ %255, %247 ]
  %249 = load ptr, ptr %1, align 8, !tbaa !42
  %250 = getelementptr ptr, ptr %249, i64 %248
  %251 = getelementptr ptr, ptr %250, i64 %7
  %252 = load ptr, ptr %251, align 8, !tbaa !42
  %253 = load ptr, ptr %245, align 8, !tbaa !47
  %254 = getelementptr inbounds ptr, ptr %253, i64 %248
  store ptr %252, ptr %254, align 8, !tbaa !42
  %255 = add nuw nsw i64 %248, 1
  %256 = icmp eq i64 %255, %246
  br i1 %256, label %257, label %247, !llvm.loop !69

257:                                              ; preds = %247
  %258 = load ptr, ptr %1, align 8, !tbaa !42
  %259 = icmp slt i64 %7, %4
  br i1 %259, label %260, label %305

260:                                              ; preds = %257, %260
  %261 = phi i64 [ %303, %260 ], [ %7, %257 ]
  %262 = phi double [ %280, %260 ], [ -2.000000e+10, %257 ]
  %263 = phi double [ %291, %260 ], [ -2.000000e+10, %257 ]
  %264 = phi double [ %302, %260 ], [ -2.000000e+10, %257 ]
  %265 = phi double [ %278, %260 ], [ 2.000000e+10, %257 ]
  %266 = phi double [ %289, %260 ], [ 2.000000e+10, %257 ]
  %267 = phi double [ %300, %260 ], [ 2.000000e+10, %257 ]
  %268 = getelementptr inbounds ptr, ptr %258, i64 %261
  %269 = load ptr, ptr %268, align 8, !tbaa !42
  %270 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2
  %271 = load float, ptr %270, align 4, !tbaa !51
  %272 = fpext float %271 to double
  %273 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2, i32 1
  %274 = load float, ptr %273, align 4, !tbaa !51
  %275 = fpext float %274 to double
  %276 = fadd double %272, %275
  %277 = fcmp ogt double %265, %272
  %278 = select i1 %277, double %272, double %265
  %279 = fcmp ogt double %276, %262
  %280 = select i1 %279, double %276, double %262
  %281 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2, i32 0, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !51
  %283 = fpext float %282 to double
  %284 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2, i32 1, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !51
  %286 = fpext float %285 to double
  %287 = fadd double %283, %286
  %288 = fcmp ogt double %266, %283
  %289 = select i1 %288, double %283, double %266
  %290 = fcmp ogt double %287, %263
  %291 = select i1 %290, double %287, double %263
  %292 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2, i32 0, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !51
  %294 = fpext float %293 to double
  %295 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %269, i64 0, i32 2, i32 1, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !51
  %297 = fpext float %296 to double
  %298 = fadd double %294, %297
  %299 = fcmp ogt double %267, %294
  %300 = select i1 %299, double %294, double %267
  %301 = fcmp ogt double %298, %264
  %302 = select i1 %301, double %298, double %264
  %303 = add nsw i64 %261, 1
  %304 = icmp eq i64 %303, %4
  br i1 %304, label %305, label %260, !llvm.loop !63

305:                                              ; preds = %260, %257
  %306 = phi double [ 2.000000e+10, %257 ], [ %300, %260 ]
  %307 = phi double [ 2.000000e+10, %257 ], [ %289, %260 ]
  %308 = phi double [ 2.000000e+10, %257 ], [ %278, %260 ]
  %309 = phi double [ -2.000000e+10, %257 ], [ %302, %260 ]
  %310 = phi double [ -2.000000e+10, %257 ], [ %291, %260 ]
  %311 = phi double [ -2.000000e+10, %257 ], [ %280, %260 ]
  %312 = fptrunc double %308 to float
  store float %312, ptr %235, align 4, !tbaa !51
  %313 = fptrunc double %307 to float
  %314 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2, i32 0, i64 1
  store float %313, ptr %314, align 4, !tbaa !51
  %315 = fptrunc double %306 to float
  %316 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2, i32 0, i64 2
  store float %315, ptr %316, align 4, !tbaa !51
  %317 = fsub double %311, %308
  %318 = fptrunc double %317 to float
  %319 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2, i32 1
  store float %318, ptr %319, align 4, !tbaa !51
  %320 = fsub double %310, %307
  %321 = fptrunc double %320 to float
  %322 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2, i32 1, i64 1
  store float %321, ptr %322, align 4, !tbaa !51
  %323 = fsub double %309, %306
  %324 = fptrunc double %323 to float
  %325 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %232, i64 0, i32 2, i32 1, i64 2
  store float %324, ptr %325, align 4, !tbaa !51
  store ptr %232, ptr %0, align 8, !tbaa !42
  %326 = load i64, ptr %2, align 8, !tbaa !57
  %327 = load i64, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !57
  %328 = icmp slt i64 %326, %327
  br i1 %328, label %338, label %329

329:                                              ; preds = %305
  %330 = sitofp i64 %327 to double
  %331 = fmul double %330, 1.500000e+00
  %332 = fptosi double %331 to i64
  store i64 %332, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !57
  %333 = tail call noundef i32 (ptr, ...) @_ZN3pov10Debug_InfoEPKcz(ptr noundef nonnull @.str.7, i64 noundef %332)
  %334 = load ptr, ptr %1, align 8, !tbaa !42
  %335 = load i64, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !57
  %336 = shl i64 %335, 3
  %337 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %334, i64 noundef %336, ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.3)
  store ptr %337, ptr %1, align 8, !tbaa !42
  br label %338

338:                                              ; preds = %329, %305
  %339 = load ptr, ptr %1, align 8, !tbaa !42
  %340 = load i64, ptr %2, align 8, !tbaa !57
  %341 = getelementptr inbounds ptr, ptr %339, i64 %340
  store ptr %232, ptr %341, align 8, !tbaa !42
  %342 = add nsw i64 %340, 1
  store i64 %342, ptr %2, align 8, !tbaa !57
  br label %347

343:                                              ; preds = %226
  %344 = add nuw nsw i64 %227, 1
  %345 = tail call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_16BBox_Tree_StructERS2_Plll(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %7, i64 noundef %344), !range !59
  %346 = select i1 %9, i32 %8, i32 0
  br label %6

347:                                              ; preds = %61, %338
  %348 = select i1 %9, i32 %8, i32 1
  ret i32 %348
}

declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov20Build_Bounding_SlabsEPPNS_16BBox_Tree_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 5), align 8, !tbaa !70
  store i64 0, ptr @_ZN3pov20numberOfLightSourcesE, align 8, !tbaa !57
  store i64 0, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  store i64 0, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1, %31
  %6 = phi ptr [ %35, %31 ], [ %3, %1 ]
  %7 = phi i64 [ %19, %31 ], [ 0, %1 ]
  %8 = phi i64 [ %33, %31 ], [ 0, %1 ]
  %9 = phi i64 [ %32, %31 ], [ 0, %1 ]
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !72
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %6, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = add nsw i64 %7, 1
  store i64 %17, ptr @_ZN3pov20numberOfLightSourcesE, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %5, %14
  %19 = phi i64 [ %17, %14 ], [ %7, %5 ]
  %20 = phi ptr [ %16, %14 ], [ %6, %5 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %20, i64 0, i32 13
  %24 = load i32, ptr %23, align 4, !tbaa !77
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = add nsw i64 %8, 1
  store i64 %28, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  br label %31

29:                                               ; preds = %22
  %30 = add nsw i64 %9, 1
  store i64 %30, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  br label %31

31:                                               ; preds = %27, %29, %18
  %32 = phi i64 [ %9, %27 ], [ %30, %29 ], [ %9, %18 ]
  %33 = phi i64 [ %28, %27 ], [ %8, %29 ], [ %8, %18 ]
  %34 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !79

37:                                               ; preds = %31, %1
  %38 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !80, !range !86, !noundef !87
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  %42 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  %43 = add nsw i64 %42, %41
  %44 = load i64, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 31), align 8, !tbaa !88
  %45 = icmp slt i64 %43, %44
  %46 = icmp slt i64 %43, 1
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %37
  store i8 0, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !80
  br label %140

49:                                               ; preds = %40
  store i8 1, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 30), align 4, !tbaa !80
  %50 = shl nsw i64 %41, 1
  store i64 %50, ptr @_ZN3povL14maxfinitecountE, align 8, !tbaa !57
  store ptr null, ptr %2, align 8, !tbaa !42
  %51 = icmp sgt i64 %41, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = shl i64 %41, 4
  %54 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %53, ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.3)
  store ptr %54, ptr %2, align 8, !tbaa !42
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = shl i64 %56, 3
  %60 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %59, ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.3)
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %68, %61
  %66 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %83, label %77

68:                                               ; preds = %61, %68
  %69 = phi i64 [ %74, %68 ], [ 0, %61 ]
  %70 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6)
  %71 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %70, i64 0, i32 3
  store ptr null, ptr %71, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %70, i8 0, i64 28, i1 false)
  %72 = load ptr, ptr %2, align 8, !tbaa !42
  %73 = getelementptr inbounds ptr, ptr %72, i64 %69
  store ptr %70, ptr %73, align 8, !tbaa !42
  %74 = add nuw nsw i64 %69, 1
  %75 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %68, label %65, !llvm.loop !89

77:                                               ; preds = %83, %65
  %78 = phi i64 [ %66, %65 ], [ %89, %83 ]
  %79 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 5), align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %132, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %2, align 8
  br label %91

83:                                               ; preds = %65, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %65 ]
  %85 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.6)
  %86 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %85, i64 0, i32 3
  store ptr null, ptr %86, align 8, !tbaa !47
  %87 = getelementptr inbounds ptr, ptr %62, i64 %84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %85, i8 0, i64 28, i1 false)
  store ptr %85, ptr %87, align 8, !tbaa !42
  %88 = add nuw nsw i64 %84, 1
  %89 = load i64, ptr @_ZN3pov23numberOfInfiniteObjectsE, align 8, !tbaa !57
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %83, label %77, !llvm.loop !90

91:                                               ; preds = %81, %126
  %92 = phi ptr [ %79, %81 ], [ %130, %126 ]
  %93 = phi i64 [ 0, %81 ], [ %128, %126 ]
  %94 = phi i64 [ 0, %81 ], [ %127, %126 ]
  %95 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %92, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !72
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %92, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  br label %102

102:                                              ; preds = %91, %99
  %103 = phi ptr [ %101, %99 ], [ %92, %91 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %103, i64 0, i32 13
  %107 = load i32, ptr %106, align 4, !tbaa !77
  %108 = and i32 %107, 512
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds ptr, ptr %62, i64 %93
  %112 = load ptr, ptr %111, align 8, !tbaa !42
  store i16 1, ptr %112, align 8, !tbaa !61
  %113 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %103, i64 0, i32 9
  %114 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %112, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %114, ptr noundef nonnull align 8 dereferenceable(24) %113, i64 24, i1 false), !tbaa.struct !91
  %115 = load ptr, ptr %111, align 8, !tbaa !42
  %116 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %115, i64 0, i32 3
  store ptr %103, ptr %116, align 8, !tbaa !47
  %117 = add nsw i64 %93, 1
  br label %126

118:                                              ; preds = %105
  %119 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %103, i64 0, i32 9
  %120 = getelementptr inbounds ptr, ptr %82, i64 %94
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %121, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(24) %119, i64 24, i1 false), !tbaa.struct !91
  %123 = load ptr, ptr %120, align 8, !tbaa !42
  %124 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %123, i64 0, i32 3
  store ptr %103, ptr %124, align 8, !tbaa !47
  %125 = add nsw i64 %94, 1
  br label %126

126:                                              ; preds = %102, %118, %110
  %127 = phi i64 [ %94, %110 ], [ %125, %118 ], [ %94, %102 ]
  %128 = phi i64 [ %117, %110 ], [ %93, %118 ], [ %93, %102 ]
  %129 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %92, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !42
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %91, !llvm.loop !93

132:                                              ; preds = %126, %77
  %133 = load i64, ptr @_ZN3pov21numberOfFiniteObjectsE, align 8, !tbaa !57
  call void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(ptr noundef %0, i64 noundef %133, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %78, ptr noundef %62)
  %134 = load ptr, ptr %2, align 8, !tbaa !42
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %134, ptr noundef nonnull @.str, i32 noundef 780)
  store ptr null, ptr %2, align 8, !tbaa !42
  br label %137

137:                                              ; preds = %136, %132
  %138 = icmp eq ptr %62, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %62, ptr noundef nonnull @.str, i32 noundef 785)
  br label %140

140:                                              ; preds = %137, %139, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Destroy_Bounding_SlabsEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3pov11Root_ObjectE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(ptr noundef nonnull %1)
  store ptr null, ptr @_ZN3pov11Root_ObjectE, align 8, !tbaa !42
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov19Intersect_BBox_TreeEPNS_16BBox_Tree_StructEPNS_10Ray_StructEPNS_10istk_entryEPPNS_13Object_StructEb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.pov::Qelem_Struct", align 8
  %7 = alloca %"struct.pov::Rayinfo_Struct", align 8
  %8 = alloca %"struct.pov::istk_entry", align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #9
  %9 = load double, ptr %1, align 8, !tbaa !53
  store double %9, ptr %7, align 8, !tbaa !53
  %10 = getelementptr inbounds double, ptr %1, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = getelementptr inbounds double, ptr %7, i64 1
  store double %11, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds double, ptr %7, i64 2
  store double %14, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !53
  %18 = fcmp une double %17, 0.000000e+00
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !66
  br i1 %18, label %21, label %27

21:                                               ; preds = %5
  %22 = fdiv double 1.000000e+00, %17
  %23 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 1
  store double %22, ptr %23, align 8, !tbaa !53
  %24 = fcmp ogt double %17, 0.000000e+00
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !66
  br label %27

27:                                               ; preds = %21, %5
  %28 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !53
  %30 = fcmp une double %29, 0.000000e+00
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 2, i64 1
  store i32 %31, ptr %32, align 4, !tbaa !66
  br i1 %30, label %33, label %39

33:                                               ; preds = %27
  %34 = fdiv double 1.000000e+00, %29
  %35 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 1, i64 1
  store double %34, ptr %35, align 8, !tbaa !53
  %36 = fcmp ogt double %29, 0.000000e+00
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 3, i64 1
  store i32 %37, ptr %38, align 8, !tbaa !66
  br label %39

39:                                               ; preds = %33, %27
  %40 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %41 = load double, ptr %40, align 8, !tbaa !53
  %42 = fcmp une double %41, 0.000000e+00
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 2, i64 2
  store i32 %43, ptr %44, align 8, !tbaa !66
  br i1 %42, label %45, label %51

45:                                               ; preds = %39
  %46 = fdiv double 1.000000e+00, %41
  %47 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 1, i64 2
  store double %46, ptr %47, align 8, !tbaa !53
  %48 = fcmp ogt double %41, 0.000000e+00
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %7, i64 0, i32 3, i64 2
  store i32 %49, ptr %50, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %39, %45
  %52 = getelementptr inbounds %"struct.pov::istk_entry", ptr %8, i64 0, i32 5
  store ptr null, ptr %52, align 8, !tbaa !94
  %53 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  store i32 0, ptr %53, align 8, !tbaa !40
  %54 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 111), align 8, !tbaa !96
  %55 = add nsw i64 %54, 1
  store i64 %55, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 111), align 8, !tbaa !96
  %56 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr noundef nonnull %53, ptr noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %7)
  %57 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  %58 = load i32, ptr %57, align 8, !tbaa !40
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %175, label %60

60:                                               ; preds = %51, %167
  %61 = phi ptr [ %169, %167 ], [ %57, %51 ]
  %62 = phi i32 [ %168, %167 ], [ 0, %51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %63 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %61, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 1
  %66 = load double, ptr %65, align 8, !tbaa !98
  %67 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 1, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !100
  %69 = load i32, ptr %61, align 8, !tbaa !40
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 %70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false), !tbaa.struct !101
  %72 = load i32, ptr %61, align 8, !tbaa !40
  %73 = add i32 %72, -1
  store i32 %73, ptr %61, align 8, !tbaa !40
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %101, label %75

75:                                               ; preds = %60, %98
  %76 = phi i32 [ %99, %98 ], [ 2, %60 ]
  %77 = phi i32 [ %90, %98 ], [ 1, %60 ]
  %78 = icmp eq i32 %76, %73
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !98
  %83 = or disjoint i32 %76, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !98
  %87 = fcmp olt double %82, %86
  %88 = select i1 %87, i32 %76, i32 %83
  br label %89

89:                                               ; preds = %79, %75
  %90 = phi i32 [ %76, %75 ], [ %88, %79 ]
  %91 = sext i32 %77 to i64
  %92 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !98
  %94 = sext i32 %90 to i64
  %95 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %64, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !98
  %97 = fcmp ogt double %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %92, i64 16, i1 false), !tbaa.struct !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, ptr noundef nonnull align 8 dereferenceable(16) %95, i64 16, i1 false), !tbaa.struct !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !101
  %99 = shl nsw i32 %90, 1
  %100 = icmp sgt i32 %99, %73
  br i1 %100, label %101, label %75, !llvm.loop !102

101:                                              ; preds = %89, %98, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %102 = load double, ptr %2, align 8, !tbaa !103
  %103 = fcmp ogt double %66, %102
  br i1 %103, label %172, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 1
  %106 = load i16, ptr %105, align 2, !tbaa !43
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = load i16, ptr %105, align 2, !tbaa !43
  %110 = icmp sgt i16 %109, 0
  br i1 %110, label %111, label %167

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 3
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi i64 [ 0, %111 ], [ %120, %113 ]
  %115 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  %116 = load ptr, ptr %112, align 8, !tbaa !47
  %117 = getelementptr inbounds ptr, ptr %116, i64 %114
  %118 = load ptr, ptr %117, align 8, !tbaa !42
  %119 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %118, i64 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr noundef %115, ptr noundef %118, ptr noundef nonnull %119, ptr noundef nonnull %7)
  %120 = add nuw nsw i64 %114, 1
  %121 = load i16, ptr %105, align 2, !tbaa !43
  %122 = sext i16 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %113, label %167, !llvm.loop !104

124:                                              ; preds = %104
  %125 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !66
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  %130 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %129, i64 0, i32 13
  %131 = load i32, ptr %130, align 4, !tbaa !77
  %132 = and i32 %131, 32768
  %133 = icmp ne i32 %132, 0
  %134 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !86
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %141, label %137

137:                                              ; preds = %127
  %138 = and i32 %131, 65536
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i1 true, i1 %135
  br i1 %140, label %157, label %141

141:                                              ; preds = %137, %127
  br i1 %126, label %149, label %142

142:                                              ; preds = %124, %141
  %143 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !47
  %145 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %144, i64 0, i32 13
  %146 = load i32, ptr %145, align 4, !tbaa !77
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %142, %141
  br i1 %4, label %150, label %167

150:                                              ; preds = %149
  %151 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !47
  %153 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %152, i64 0, i32 13
  %154 = load i32, ptr %153, align 4, !tbaa !77
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150, %142, %137
  %158 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %68, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !47
  %160 = call noundef zeroext i1 @_ZN3pov12IntersectionEPNS_10istk_entryEPNS_13Object_StructEPNS_10Ray_StructE(ptr noundef nonnull %8, ptr noundef %159, ptr noundef nonnull %1)
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load double, ptr %8, align 8, !tbaa !103
  %163 = load double, ptr %2, align 8, !tbaa !103
  %164 = fcmp olt double %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %8, i64 200, i1 false), !tbaa.struct !105
  %166 = load ptr, ptr %158, align 8, !tbaa !47
  store ptr %166, ptr %3, align 8, !tbaa !42
  br label %167

167:                                              ; preds = %113, %108, %149, %150, %161, %165, %157
  %168 = phi i32 [ %62, %150 ], [ 1, %165 ], [ %62, %161 ], [ %62, %157 ], [ %62, %149 ], [ %62, %108 ], [ %62, %113 ]
  %169 = load ptr, ptr @_ZN3povL11Frame_QueueE, align 8, !tbaa !42
  %170 = load i32, ptr %169, align 8, !tbaa !40
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %60, !llvm.loop !106

172:                                              ; preds = %101, %167
  %173 = phi i32 [ %168, %167 ], [ %62, %101 ]
  %174 = icmp ne i32 %173, 0
  br label %175

175:                                              ; preds = %172, %51
  %176 = phi i1 [ false, %51 ], [ %174, %172 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  ret i1 %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load double, ptr %0, align 8, !tbaa !53
  store double %3, ptr %1, align 8, !tbaa !53
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds double, ptr %1, i64 1
  store double %5, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds double, ptr %1, i64 2
  store double %8, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = fcmp une double %11, 0.000000e+00
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !66
  br i1 %12, label %15, label %22

15:                                               ; preds = %2
  %16 = fdiv double 1.000000e+00, %11
  %17 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1
  store double %16, ptr %17, align 8, !tbaa !53
  %18 = load double, ptr %10, align 8, !tbaa !53
  %19 = fcmp ogt double %18, 0.000000e+00
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3
  store i32 %20, ptr %21, align 4, !tbaa !66
  br label %22

22:                                               ; preds = %15, %2
  %23 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !53
  %25 = fcmp une double %24, 0.000000e+00
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !66
  br i1 %25, label %28, label %35

28:                                               ; preds = %22
  %29 = fdiv double 1.000000e+00, %24
  %30 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1, i64 1
  store double %29, ptr %30, align 8, !tbaa !53
  %31 = load double, ptr %23, align 8, !tbaa !53
  %32 = fcmp ogt double %31, 0.000000e+00
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3, i64 1
  store i32 %33, ptr %34, align 4, !tbaa !66
  br label %35

35:                                               ; preds = %28, %22
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !53
  %38 = fcmp une double %37, 0.000000e+00
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 2, i64 2
  store i32 %39, ptr %40, align 8, !tbaa !66
  br i1 %38, label %41, label %48

41:                                               ; preds = %35
  %42 = fdiv double 1.000000e+00, %37
  %43 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 1, i64 2
  store double %42, ptr %43, align 8, !tbaa !53
  %44 = load double, ptr %36, align 8, !tbaa !53
  %45 = fcmp ogt double %44, 0.000000e+00
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %1, i64 0, i32 3, i64 2
  store i32 %46, ptr %47, align 4, !tbaa !66
  br label %48

48:                                               ; preds = %41, %35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %"struct.pov::Qelem_Struct", align 8
  %6 = load i16, ptr %1, align 8, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %159

8:                                                ; preds = %4
  %9 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 108), align 16, !tbaa !96
  %10 = add nsw i64 %9, 1
  store i64 %10, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 108), align 16, !tbaa !96
  %11 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !66
  %17 = icmp eq i32 %16, 0
  %18 = load float, ptr %2, align 4, !tbaa !51
  %19 = fpext float %18 to double
  %20 = load double, ptr %3, align 8, !tbaa !53
  %21 = fsub double %19, %20
  %22 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !53
  %24 = fmul double %21, %23
  br i1 %17, label %31, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fpext float %27 to double
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %23, double %24)
  %30 = fcmp olt double %29, 0x3E7AD7F29ABCAF48
  br i1 %30, label %202, label %38

31:                                               ; preds = %14
  %32 = fcmp olt double %24, 0x3E7AD7F29ABCAF48
  br i1 %32, label %202, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = fpext float %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %36, double %23, double %24)
  br label %38

38:                                               ; preds = %25, %33
  %39 = phi double [ %24, %25 ], [ %37, %33 ]
  %40 = phi double [ %29, %25 ], [ %24, %33 ]
  %41 = fcmp ogt double %39, %40
  br i1 %41, label %202, label %53

42:                                               ; preds = %8
  %43 = load double, ptr %3, align 8, !tbaa !53
  %44 = load float, ptr %2, align 4, !tbaa !51
  %45 = fpext float %44 to double
  %46 = fcmp olt double %43, %45
  br i1 %46, label %202, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = fadd float %44, %49
  %51 = fpext float %50 to double
  %52 = fcmp ogt double %43, %51
  br i1 %52, label %202, label %53

53:                                               ; preds = %47, %38
  %54 = phi double [ %39, %38 ], [ -2.000000e+10, %47 ]
  %55 = phi double [ %40, %38 ], [ 2.000000e+10, %47 ]
  %56 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3, i64 1
  %61 = load i32, ptr %60, align 4, !tbaa !66
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !51
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !53
  %68 = fsub double %65, %67
  %69 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1, i64 1
  %70 = load double, ptr %69, align 8, !tbaa !53
  %71 = fmul double %68, %70
  %72 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !51
  %74 = fpext float %73 to double
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %70, double %71)
  %76 = select i1 %62, double %75, double %71
  %77 = select i1 %62, double %71, double %75
  %78 = fcmp olt double %77, %55
  br i1 %78, label %79, label %87

79:                                               ; preds = %59
  %80 = fcmp olt double %77, 0x3E7AD7F29ABCAF48
  br i1 %80, label %202, label %81

81:                                               ; preds = %79
  %82 = fcmp ogt double %76, %54
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = fcmp ogt double %76, %77
  br i1 %84, label %202, label %104

85:                                               ; preds = %81
  %86 = fcmp ogt double %54, %77
  br i1 %86, label %202, label %104

87:                                               ; preds = %59
  %88 = fcmp ogt double %76, %54
  br i1 %88, label %89, label %104

89:                                               ; preds = %87
  %90 = fcmp ogt double %76, %55
  br i1 %90, label %202, label %104

91:                                               ; preds = %53
  %92 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %93 = load double, ptr %92, align 8, !tbaa !53
  %94 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !51
  %96 = fpext float %95 to double
  %97 = fcmp olt double %93, %96
  br i1 %97, label %202, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !51
  %101 = fadd float %95, %100
  %102 = fpext float %101 to double
  %103 = fcmp ogt double %93, %102
  br i1 %103, label %202, label %104

104:                                              ; preds = %89, %85, %83, %98, %87
  %105 = phi double [ %54, %87 ], [ %54, %98 ], [ %54, %85 ], [ %76, %83 ], [ %76, %89 ]
  %106 = phi double [ %55, %87 ], [ %55, %98 ], [ %77, %85 ], [ %77, %83 ], [ %55, %89 ]
  %107 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 2, i64 2
  %108 = load i32, ptr %107, align 8, !tbaa !66
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 3, i64 2
  %112 = load i32, ptr %111, align 4, !tbaa !66
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !51
  %116 = fpext float %115 to double
  %117 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %118 = load double, ptr %117, align 8, !tbaa !53
  %119 = fsub double %116, %118
  %120 = getelementptr inbounds %"struct.pov::Rayinfo_Struct", ptr %3, i64 0, i32 1, i64 2
  %121 = load double, ptr %120, align 8, !tbaa !53
  %122 = fmul double %119, %121
  %123 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !51
  %125 = fpext float %124 to double
  %126 = tail call double @llvm.fmuladd.f64(double %125, double %121, double %122)
  %127 = select i1 %113, double %126, double %122
  %128 = select i1 %113, double %122, double %126
  %129 = fcmp olt double %128, %106
  br i1 %129, label %130, label %138

130:                                              ; preds = %110
  %131 = fcmp olt double %128, 0x3E7AD7F29ABCAF48
  br i1 %131, label %202, label %132

132:                                              ; preds = %130
  %133 = fcmp ogt double %127, %105
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = fcmp ogt double %127, %128
  br i1 %135, label %202, label %155

136:                                              ; preds = %132
  %137 = fcmp ogt double %105, %128
  br i1 %137, label %202, label %155

138:                                              ; preds = %110
  %139 = fcmp ogt double %127, %105
  br i1 %139, label %140, label %155

140:                                              ; preds = %138
  %141 = fcmp ogt double %127, %106
  br i1 %141, label %202, label %155

142:                                              ; preds = %104
  %143 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %144 = load double, ptr %143, align 8, !tbaa !53
  %145 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !51
  %147 = fpext float %146 to double
  %148 = fcmp olt double %144, %147
  br i1 %148, label %202, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !51
  %152 = fadd float %146, %151
  %153 = fpext float %152 to double
  %154 = fcmp ogt double %144, %153
  br i1 %154, label %202, label %155

155:                                              ; preds = %140, %134, %149, %136, %138
  %156 = phi double [ %105, %136 ], [ %105, %138 ], [ %105, %149 ], [ %127, %134 ], [ %127, %140 ]
  %157 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 109), align 8, !tbaa !96
  %158 = add nsw i64 %157, 1
  store i64 %158, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 109), align 8, !tbaa !96
  br label %159

159:                                              ; preds = %4, %155
  %160 = phi double [ %156, %155 ], [ -1.000000e+07, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %161 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 110), align 16, !tbaa !96
  %162 = add nsw i64 %161, 1
  store i64 %162, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 110), align 16, !tbaa !96
  %163 = load i32, ptr %0, align 8, !tbaa !40
  %164 = add i32 %163, 1
  store i32 %164, ptr %0, align 8, !tbaa !40
  %165 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !41
  %167 = icmp ult i32 %164, %166
  br i1 %167, label %182, label %168

168:                                              ; preds = %159
  %169 = icmp ugt i32 %164, 1073741822
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5)
  br label %172

172:                                              ; preds = %170, %168
  %173 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 112), align 16, !tbaa !96
  %174 = add nsw i64 %173, 1
  store i64 %174, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 112), align 16, !tbaa !96
  %175 = load i32, ptr %165, align 4, !tbaa !41
  %176 = shl i32 %175, 1
  store i32 %176, ptr %165, align 4, !tbaa !41
  %177 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  %179 = zext i32 %176 to i64
  %180 = shl nuw nsw i64 %179, 4
  %181 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %178, i64 noundef %180, ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.1)
  store ptr %181, ptr %177, align 8, !tbaa !34
  br label %182

182:                                              ; preds = %172, %159
  %183 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !34
  %185 = zext i32 %164 to i64
  %186 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %184, i64 %185
  store double %160, ptr %186, align 8, !tbaa !98
  %187 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %184, i64 %185, i32 1
  store ptr %1, ptr %187, align 8, !tbaa !100
  %188 = icmp sgt i32 %164, 1
  br i1 %188, label %189, label %201

189:                                              ; preds = %182, %199
  %190 = phi i32 [ %194, %199 ], [ %164, %182 ]
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %184, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !98
  %194 = lshr i32 %190, 1
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %184, i64 %195
  %197 = load double, ptr %196, align 8, !tbaa !98
  %198 = fcmp olt double %193, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %192, i64 16, i1 false), !tbaa.struct !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %192, ptr noundef nonnull align 8 dereferenceable(16) %196, i64 16, i1 false), !tbaa.struct !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %196, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !101
  %200 = icmp ugt i32 %190, 3
  br i1 %200, label %189, label %201, !llvm.loop !107

201:                                              ; preds = %189, %199, %182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %202

202:                                              ; preds = %142, %149, %140, %136, %134, %130, %91, %98, %89, %85, %83, %79, %42, %47, %38, %31, %25, %201
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %"struct.pov::Qelem_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %5 = load i32, ptr %0, align 8, !tbaa !40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !98
  store double %13, ptr %1, align 8, !tbaa !53
  %14 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  store ptr %15, ptr %2, align 8, !tbaa !42
  %16 = load i32, ptr %0, align 8, !tbaa !40
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !101
  %19 = load i32, ptr %0, align 8, !tbaa !40
  %20 = add i32 %19, -1
  store i32 %20, ptr %0, align 8, !tbaa !40
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %48, label %22

22:                                               ; preds = %9, %45
  %23 = phi i32 [ %46, %45 ], [ 2, %9 ]
  %24 = phi i32 [ %37, %45 ], [ 1, %9 ]
  %25 = icmp eq i32 %23, %20
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !98
  %30 = or disjoint i32 %23, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !98
  %34 = fcmp olt double %29, %33
  %35 = select i1 %34, i32 %23, i32 %30
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi i32 [ %23, %22 ], [ %35, %26 ]
  %38 = sext i32 %24 to i64
  %39 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !98
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds %"struct.pov::Qelem_Struct", ptr %11, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !98
  %44 = fcmp ogt double %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false), !tbaa.struct !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !101
  %46 = shl nsw i32 %37, 1
  %47 = icmp sgt i32 %46, %20
  br i1 %47, label %48, label %22, !llvm.loop !102

48:                                               ; preds = %45, %36, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret void
}

declare noundef zeroext i1 @_ZN3pov12IntersectionEPNS_10istk_entryEPNS_13Object_StructEPNS_10Ray_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @_ZN3povL9compboxesEPKvS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %5, i64 0, i32 2
  %7 = load i32, ptr @_ZN3povL4AxisE, align 4, !tbaa !66
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %3, i64 0, i32 2, i32 1, i64 %8
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = fpext float %13 to double
  %15 = tail call double @llvm.fmuladd.f64(double %11, double 2.000000e+00, double %14)
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %8
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", ptr %5, i64 0, i32 2, i32 1, i64 %8
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fpext float %21 to double
  %23 = tail call double @llvm.fmuladd.f64(double %19, double 2.000000e+00, double %22)
  %24 = fptrunc double %23 to float
  %25 = fcmp olt float %16, %24
  %26 = fcmp une float %16, %24
  %27 = zext i1 %26 to i32
  %28 = select i1 %25, i32 -1, i32 %27
  ret i32 %28
}

declare noundef i32 @_ZN3pov10Debug_InfoEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 8}
!35 = !{!"_ZTSN3pov21Priority_Queue_StructE", !36, i64 0, !36, i64 4, !39, i64 8}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 0}
!41 = !{!35, !36, i64 4}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !45, i64 2}
!44 = !{!"_ZTSN3pov16BBox_Tree_StructE", !45, i64 0, !45, i64 2, !46, i64 4, !39, i64 32}
!45 = !{!"short", !37, i64 0}
!46 = !{!"_ZTSN3pov19Bounding_Box_StructE", !37, i64 0, !37, i64 12}
!47 = !{!44, !39, i64 32}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !37, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !37, i64 0}
!55 = distinct !{!55, !49, !50}
!56 = distinct !{!56, !49, !50}
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !37, i64 0}
!59 = !{i32 0, i32 2}
!60 = distinct !{!60, !49, !50}
!61 = !{!44, !45, i64 0}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = !{!36, !36, i64 0}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = !{!71, !39, i64 32}
!71 = !{!"_ZTSN3pov12Frame_StructE", !39, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !39, i64 24, !39, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !37, i64 64, !37, i64 84, !37, i64 104, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160}
!72 = !{!73, !36, i64 8}
!73 = !{!"_ZTSN3pov13Object_StructE", !39, i64 0, !36, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !46, i64 72, !39, i64 96, !39, i64 104, !52, i64 112, !36, i64 116}
!74 = !{!75, !39, i64 120}
!75 = !{!"_ZTSN3pov19Light_Source_StructE", !39, i64 0, !36, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !46, i64 72, !39, i64 96, !39, i64 104, !52, i64 112, !36, i64 116, !39, i64 120, !37, i64 128, !37, i64 152, !37, i64 176, !37, i64 200, !37, i64 224, !37, i64 248, !54, i64 272, !54, i64 280, !54, i64 288, !54, i64 296, !54, i64 304, !39, i64 312, !37, i64 320, !37, i64 321, !37, i64 322, !76, i64 323, !76, i64 324, !37, i64 325, !37, i64 326, !37, i64 327, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !39, i64 376, !37, i64 384}
!76 = !{!"bool", !37, i64 0}
!77 = !{!73, !36, i64 116}
!78 = !{!73, !39, i64 16}
!79 = distinct !{!79, !49, !50}
!80 = !{!81, !76, i64 20804}
!81 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !36, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 4112, !37, i64 8208, !37, i64 12304, !37, i64 16400, !52, i64 20496, !52, i64 20500, !36, i64 20504, !36, i64 20508, !54, i64 20512, !76, i64 20520, !54, i64 20528, !36, i64 20536, !37, i64 20544, !36, i64 20744, !36, i64 20748, !36, i64 20752, !54, i64 20760, !54, i64 20768, !36, i64 20776, !36, i64 20780, !54, i64 20784, !54, i64 20792, !36, i64 20800, !76, i64 20804, !58, i64 20808, !36, i64 20816, !36, i64 20820, !36, i64 20824, !82, i64 20832, !54, i64 20920, !58, i64 20928, !54, i64 20936, !54, i64 20944, !54, i64 20952, !54, i64 20960, !54, i64 20968, !58, i64 20976, !36, i64 20984, !58, i64 20992, !36, i64 21000, !36, i64 21004, !36, i64 21008, !36, i64 21012, !36, i64 21016, !36, i64 21020, !54, i64 21024, !54, i64 21032, !54, i64 21040, !36, i64 21048, !36, i64 21052, !39, i64 21056, !39, i64 21064, !36, i64 21072, !76, i64 21076, !54, i64 21080, !54, i64 21088, !36, i64 21096, !36, i64 21100, !76, i64 21104, !84, i64 21108, !36, i64 21112, !37, i64 21116, !37, i64 25212, !37, i64 26772, !37, i64 30868, !36, i64 34964, !36, i64 34968, !58, i64 34976, !36, i64 34984, !36, i64 34988, !36, i64 34992, !85, i64 35000}
!82 = !{!"_ZTSN3pov8FRAMESEQE", !83, i64 0, !54, i64 8, !36, i64 16, !36, i64 20, !54, i64 24, !36, i64 32, !36, i64 36, !54, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !54, i64 72, !76, i64 80, !76, i64 81}
!83 = !{!"_ZTSN3pov9FRAMETYPEE", !37, i64 0}
!84 = !{!"_ZTSN3pov15Histogram_TypesE", !37, i64 0}
!85 = !{!"_ZTS9POVMSData", !36, i64 0, !36, i64 4, !37, i64 8}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = !{!81, !58, i64 20808}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = !{i64 0, i64 12, !92, i64 12, i64 12, !92}
!92 = !{!37, !37, i64 0}
!93 = distinct !{!93, !49, !50}
!94 = !{!95, !39, i64 96}
!95 = !{!"_ZTSN3pov10istk_entryE", !54, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !39, i64 96, !36, i64 104, !36, i64 108, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !39, i64 184, !39, i64 192}
!96 = !{!97, !97, i64 0}
!97 = !{!"long long", !37, i64 0}
!98 = !{!99, !54, i64 0}
!99 = !{!"_ZTSN3pov12Qelem_StructE", !54, i64 0, !39, i64 8}
!100 = !{!99, !39, i64 8}
!101 = !{i64 0, i64 8, !53, i64 8, i64 8, !42}
!102 = distinct !{!102, !49, !50}
!103 = !{!95, !54, i64 0}
!104 = distinct !{!104, !49, !50}
!105 = !{i64 0, i64 8, !53, i64 8, i64 24, !92, i64 32, i64 24, !92, i64 56, i64 24, !92, i64 80, i64 16, !92, i64 96, i64 8, !42, i64 104, i64 4, !66, i64 108, i64 4, !66, i64 112, i64 8, !53, i64 120, i64 8, !53, i64 128, i64 8, !53, i64 136, i64 8, !53, i64 144, i64 8, !53, i64 152, i64 8, !53, i64 160, i64 8, !53, i64 168, i64 8, !53, i64 176, i64 8, !53, i64 184, i64 8, !42, i64 192, i64 8, !42}
!106 = distinct !{!106, !49, !50}
!107 = distinct !{!107, !49, !50}
