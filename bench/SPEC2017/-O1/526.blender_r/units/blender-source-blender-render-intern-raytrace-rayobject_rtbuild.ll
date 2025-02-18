; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_rtbuild.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_rtbuild.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%struct.RTBuilder = type { %struct.anon, [3 x ptr], [3 x ptr], i32, [33 x i32], [6 x float] }
%struct.anon = type { ptr, ptr, i32 }
%"struct.RTBuilder::Object" = type { ptr, float, [6 x float], i32 }
%struct.SweepCost = type { [6 x float], float }

$_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_ = comdat any

$_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_ = comdat any

$_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag = comdat any

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"RTBuilder\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RTBuilder.objects\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RTBuilder.sorted_objects\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"RTBuilder.HeuristicSweep\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

; Function Attrs: mustprogress uwtable
define dso_local ptr @rtbuild_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 232, ptr noundef nonnull @.str)
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = sext i32 %0 to i64
  %6 = mul nsw i64 %5, 40
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.1)
  %8 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  %11 = getelementptr i8, ptr %3, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %11, i8 0, i64 128, i1 false), !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %12 = getelementptr i8, ptr %3, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !tbaa !34
  br label %13

13:                                               ; preds = %1, %13
  %14 = phi i64 [ 0, %1 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 2, i64 %14
  store ptr null, ptr %15, align 8, !tbaa !34
  %16 = add nuw nsw i64 %14, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %13, !llvm.loop !43

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5
  %20 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5, i64 2
  store float 0x46293E5940000000, ptr %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5, i64 1
  store float 0x46293E5940000000, ptr %21, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %19, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5, i64 3
  %23 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5, i64 5
  store float 0xC6293E5940000000, ptr %23, align 4, !tbaa !46
  %24 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 5, i64 4
  store float 0xC6293E5940000000, ptr %24, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %22, align 4, !tbaa !46
  store ptr %7, ptr %9, align 8, !tbaa !48
  store ptr %7, ptr %3, align 8, !tbaa !49
  store i32 %0, ptr %10, align 8, !tbaa !50
  %25 = shl nsw i64 %5, 3
  br label %27

26:                                               ; preds = %27
  ret ptr %3

27:                                               ; preds = %18, %27
  %28 = phi i64 [ 0, %18 ], [ %33, %27 ]
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef %25, ptr noundef nonnull @.str.2)
  %31 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 1, i64 %28
  store ptr %30, ptr %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 2, i64 %28
  store ptr %30, ptr %32, align 8, !tbaa !34
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %26, label %27, !llvm.loop !51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @rtbuild_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %5, %1
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %2)
  br label %4

7:                                                ; preds = %16
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %0)
  ret void

9:                                                ; preds = %4, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12)
  br label %16

16:                                               ; preds = %9, %14
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %7, label %9, !llvm.loop !52
}

; Function Attrs: mustprogress uwtable
define dso_local void @rtbuild_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %4 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %3, align 16, !tbaa !46
  %6 = getelementptr inbounds float, ptr %3, i64 3
  %7 = getelementptr inbounds float, ptr %3, i64 5
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %3, i64 4
  store float 0xC6293E5940000000, ptr %8, align 16, !tbaa !46
  store float 0xC6293E5940000000, ptr %6, align 4, !tbaa !46
  call void @RE_rayobject_merge_bb(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %6)
  %9 = load float, ptr %3, align 16, !tbaa !46
  %10 = load float, ptr %6, align 4, !tbaa !46
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %71, label %12

12:                                               ; preds = %2
  %13 = load float, ptr %5, align 4, !tbaa !46
  %14 = load float, ptr %8, align 16, !tbaa !46
  %15 = fcmp ogt float %13, %14
  br i1 %15, label %71, label %16

16:                                               ; preds = %12
  %17 = load float, ptr %4, align 8, !tbaa !46
  %18 = load float, ptr %7, align 4, !tbaa !46
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %71, label %20

20:                                               ; preds = %16
  %21 = call float @llvm.fabs.f32(float %9)
  %22 = fcmp ueq float %21, 0x7FF0000000000000
  %23 = call float @llvm.fabs.f32(float %13)
  %24 = fcmp ueq float %23, 0x7FF0000000000000
  %25 = or i1 %22, %24
  %26 = call float @llvm.fabs.f32(float %17)
  %27 = fcmp ueq float %26, 0x7FF0000000000000
  %28 = or i1 %25, %27
  br i1 %28, label %71, label %29

29:                                               ; preds = %20
  %30 = call float @llvm.fabs.f32(float %10)
  %31 = fcmp ueq float %30, 0x7FF0000000000000
  %32 = call float @llvm.fabs.f32(float %14)
  %33 = fcmp ueq float %32, 0x7FF0000000000000
  %34 = or i1 %31, %33
  %35 = call float @llvm.fabs.f32(float %18)
  %36 = fcmp ueq float %35, 0x7FF0000000000000
  %37 = or i1 %34, %36
  br i1 %37, label %71, label %38

38:                                               ; preds = %29
  %39 = fcmp oeq float %9, %10
  %40 = fcmp oeq float %13, %14
  %41 = and i1 %39, %40
  %42 = fcmp oeq float %17, %18
  %43 = and i1 %41, %42
  br i1 %43, label %71, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2
  store float %9, ptr %47, align 4, !tbaa !46
  %48 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2, i64 1
  store float %13, ptr %48, align 4, !tbaa !46
  %49 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2, i64 2
  store float %17, ptr %49, align 4, !tbaa !46
  %50 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2, i64 3
  %51 = load float, ptr %6, align 4, !tbaa !46
  store float %51, ptr %50, align 4, !tbaa !46
  %52 = load float, ptr %8, align 16, !tbaa !46
  %53 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2, i64 4
  store float %52, ptr %53, align 4, !tbaa !46
  %54 = load float, ptr %7, align 4, !tbaa !46
  %55 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2, i64 5
  store float %54, ptr %55, align 4, !tbaa !46
  store ptr %1, ptr %46, align 8, !tbaa !53
  %56 = call float @RE_rayobject_cost(ptr noundef %1)
  %57 = load ptr, ptr %45, align 8, !tbaa !48
  %58 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %57, i64 0, i32 1
  store float %56, ptr %58, align 8, !tbaa !55
  br label %62

59:                                               ; preds = %62
  %60 = load ptr, ptr %45, align 8, !tbaa !48
  %61 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %60, i64 1
  store ptr %61, ptr %45, align 8, !tbaa !48
  br label %71

62:                                               ; preds = %44, %62
  %63 = phi i64 [ 0, %44 ], [ %69, %62 ]
  %64 = load ptr, ptr %45, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  store ptr %64, ptr %66, align 8, !tbaa !34
  %67 = load ptr, ptr %65, align 8, !tbaa !34
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %68, ptr %65, align 8, !tbaa !34
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %59, label %62, !llvm.loop !56

71:                                               ; preds = %38, %29, %20, %2, %12, %16, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RE_rayobject_cost(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @rtbuild_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local void @rtbuild_done(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %400
  %4 = phi i64 [ 0, %2 ], [ %401, %400 ]
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %400, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @RE_rayobjectcontrol_test_break(ptr noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %403

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = trunc i64 %4 to i32
  switch i32 %15, label %400 [
    i32 0, label %16
    i32 1, label %144
    i32 2, label %272
  ]

16:                                               ; preds = %11
  %17 = icmp eq ptr %12, %14
  br i1 %17, label %400, label %18

18:                                               ; preds = %16
  %19 = ptrtoint ptr %14 to i64
  %20 = ptrtoint ptr %12 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = tail call i64 @llvm.ctlz.i64(i64 %22, i1 true), !range !57
  %24 = shl nuw nsw i64 %23, 1
  %25 = xor i64 %24, 126
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %12, ptr noundef %14, i64 noundef %25, ptr nonnull @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi0EEbRKT_S5_)
  %26 = icmp sgt i64 %21, 128
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds ptr, ptr %12, i64 1
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %400, label %99

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %12, i64 8
  br label %35

32:                                               ; preds = %70
  %33 = getelementptr inbounds ptr, ptr %12, i64 16
  %34 = icmp eq ptr %33, %14
  br i1 %34, label %400, label %75

35:                                               ; preds = %30, %70
  %36 = phi ptr [ %31, %30 ], [ %73, %70 ]
  %37 = phi i64 [ 8, %30 ], [ %72, %70 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !34
  %39 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %38, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !46
  %41 = load ptr, ptr %12, align 8, !tbaa !34
  %42 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %41, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = fcmp une float %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = fcmp olt float %40, %43
  br label %51

47:                                               ; preds = %35
  %48 = load ptr, ptr %38, align 8, !tbaa !53
  %49 = load ptr, ptr %41, align 8, !tbaa !53
  %50 = icmp ult ptr %48, %49
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i1 [ %46, %45 ], [ %50, %47 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %37, i1 false)
  br label %70

54:                                               ; preds = %51, %69
  %55 = phi ptr [ %56, %69 ], [ %36, %51 ]
  %56 = getelementptr inbounds ptr, ptr %55, i64 -1
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %57, i64 0, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !46
  %60 = fcmp une float %40, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = fcmp olt float %40, %59
  br label %67

63:                                               ; preds = %54
  %64 = load ptr, ptr %38, align 8, !tbaa !53
  %65 = load ptr, ptr %57, align 8, !tbaa !53
  %66 = icmp ult ptr %64, %65
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i1 [ %62, %61 ], [ %66, %63 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store ptr %57, ptr %55, align 8, !tbaa !34
  br label %54, !llvm.loop !58

70:                                               ; preds = %67, %53
  %71 = phi ptr [ %12, %53 ], [ %55, %67 ]
  store ptr %38, ptr %71, align 8, !tbaa !34
  %72 = add nuw nsw i64 %37, 8
  %73 = getelementptr inbounds i8, ptr %12, i64 %72
  %74 = icmp eq i64 %72, 128
  br i1 %74, label %32, label %35, !llvm.loop !59

75:                                               ; preds = %32, %96
  %76 = phi ptr [ %97, %96 ], [ %33, %32 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %77, i64 0, i32 2
  %79 = load float, ptr %78, align 4, !tbaa !46
  br label %80

80:                                               ; preds = %95, %75
  %81 = phi ptr [ %76, %75 ], [ %82, %95 ]
  %82 = getelementptr inbounds ptr, ptr %81, i64 -1
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2
  %85 = load float, ptr %84, align 4, !tbaa !46
  %86 = fcmp une float %79, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = fcmp olt float %79, %85
  br label %93

89:                                               ; preds = %80
  %90 = load ptr, ptr %77, align 8, !tbaa !53
  %91 = load ptr, ptr %83, align 8, !tbaa !53
  %92 = icmp ult ptr %90, %91
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi i1 [ %88, %87 ], [ %92, %89 ]
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store ptr %83, ptr %81, align 8, !tbaa !34
  br label %80, !llvm.loop !58

96:                                               ; preds = %93
  store ptr %77, ptr %81, align 8, !tbaa !34
  %97 = getelementptr inbounds ptr, ptr %76, i64 1
  %98 = icmp eq ptr %97, %14
  br i1 %98, label %400, label %75, !llvm.loop !60

99:                                               ; preds = %27, %140
  %100 = phi ptr [ %142, %140 ], [ %28, %27 ]
  %101 = phi ptr [ %100, %140 ], [ %12, %27 ]
  %102 = load ptr, ptr %100, align 8, !tbaa !34
  %103 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %102, i64 0, i32 2
  %104 = load float, ptr %103, align 4, !tbaa !46
  %105 = load ptr, ptr %12, align 8, !tbaa !34
  %106 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %105, i64 0, i32 2
  %107 = load float, ptr %106, align 4, !tbaa !46
  %108 = fcmp une float %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = fcmp olt float %104, %107
  br label %115

111:                                              ; preds = %99
  %112 = load ptr, ptr %102, align 8, !tbaa !53
  %113 = load ptr, ptr %105, align 8, !tbaa !53
  %114 = icmp ult ptr %112, %113
  br label %115

115:                                              ; preds = %111, %109
  %116 = phi i1 [ %110, %109 ], [ %114, %111 ]
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = getelementptr inbounds ptr, ptr %101, i64 2
  %119 = ptrtoint ptr %100 to i64
  %120 = sub i64 %119, %20
  %121 = ashr exact i64 %120, 3
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds ptr, ptr %118, i64 %122
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %123, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %120, i1 false)
  br label %140

124:                                              ; preds = %115, %139
  %125 = phi ptr [ %126, %139 ], [ %100, %115 ]
  %126 = getelementptr inbounds ptr, ptr %125, i64 -1
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  %128 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %127, i64 0, i32 2
  %129 = load float, ptr %128, align 4, !tbaa !46
  %130 = fcmp une float %104, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = fcmp olt float %104, %129
  br label %137

133:                                              ; preds = %124
  %134 = load ptr, ptr %102, align 8, !tbaa !53
  %135 = load ptr, ptr %127, align 8, !tbaa !53
  %136 = icmp ult ptr %134, %135
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i1 [ %132, %131 ], [ %136, %133 ]
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  store ptr %127, ptr %125, align 8, !tbaa !34
  br label %124, !llvm.loop !58

140:                                              ; preds = %137, %117
  %141 = phi ptr [ %12, %117 ], [ %125, %137 ]
  store ptr %102, ptr %141, align 8, !tbaa !34
  %142 = getelementptr inbounds ptr, ptr %100, i64 1
  %143 = icmp eq ptr %142, %14
  br i1 %143, label %400, label %99, !llvm.loop !59

144:                                              ; preds = %11
  %145 = icmp eq ptr %12, %14
  br i1 %145, label %400, label %146

146:                                              ; preds = %144
  %147 = ptrtoint ptr %14 to i64
  %148 = ptrtoint ptr %12 to i64
  %149 = sub i64 %147, %148
  %150 = ashr exact i64 %149, 3
  %151 = tail call i64 @llvm.ctlz.i64(i64 %150, i1 true), !range !57
  %152 = shl nuw nsw i64 %151, 1
  %153 = xor i64 %152, 126
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %12, ptr noundef %14, i64 noundef %153, ptr nonnull @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi1EEbRKT_S5_)
  %154 = icmp sgt i64 %149, 128
  br i1 %154, label %158, label %155

155:                                              ; preds = %146
  %156 = getelementptr inbounds ptr, ptr %12, i64 1
  %157 = icmp eq ptr %156, %14
  br i1 %157, label %400, label %227

158:                                              ; preds = %146
  %159 = getelementptr i8, ptr %12, i64 8
  br label %163

160:                                              ; preds = %198
  %161 = getelementptr inbounds ptr, ptr %12, i64 16
  %162 = icmp eq ptr %161, %14
  br i1 %162, label %400, label %203

163:                                              ; preds = %158, %198
  %164 = phi ptr [ %159, %158 ], [ %201, %198 ]
  %165 = phi i64 [ 8, %158 ], [ %200, %198 ]
  %166 = load ptr, ptr %164, align 8, !tbaa !34
  %167 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %166, i64 0, i32 2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !46
  %169 = load ptr, ptr %12, align 8, !tbaa !34
  %170 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %169, i64 0, i32 2, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !46
  %172 = fcmp une float %168, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = fcmp olt float %168, %171
  br label %179

175:                                              ; preds = %163
  %176 = load ptr, ptr %166, align 8, !tbaa !53
  %177 = load ptr, ptr %169, align 8, !tbaa !53
  %178 = icmp ult ptr %176, %177
  br label %179

179:                                              ; preds = %175, %173
  %180 = phi i1 [ %174, %173 ], [ %178, %175 ]
  br i1 %180, label %181, label %182

181:                                              ; preds = %179
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %159, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %165, i1 false)
  br label %198

182:                                              ; preds = %179, %197
  %183 = phi ptr [ %184, %197 ], [ %164, %179 ]
  %184 = getelementptr inbounds ptr, ptr %183, i64 -1
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %185, i64 0, i32 2, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !46
  %188 = fcmp une float %168, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = fcmp olt float %168, %187
  br label %195

191:                                              ; preds = %182
  %192 = load ptr, ptr %166, align 8, !tbaa !53
  %193 = load ptr, ptr %185, align 8, !tbaa !53
  %194 = icmp ult ptr %192, %193
  br label %195

195:                                              ; preds = %191, %189
  %196 = phi i1 [ %190, %189 ], [ %194, %191 ]
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  store ptr %185, ptr %183, align 8, !tbaa !34
  br label %182, !llvm.loop !58

198:                                              ; preds = %195, %181
  %199 = phi ptr [ %12, %181 ], [ %183, %195 ]
  store ptr %166, ptr %199, align 8, !tbaa !34
  %200 = add nuw nsw i64 %165, 8
  %201 = getelementptr inbounds i8, ptr %12, i64 %200
  %202 = icmp eq i64 %200, 128
  br i1 %202, label %160, label %163, !llvm.loop !59

203:                                              ; preds = %160, %224
  %204 = phi ptr [ %225, %224 ], [ %161, %160 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %205, i64 0, i32 2, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !46
  br label %208

208:                                              ; preds = %223, %203
  %209 = phi ptr [ %204, %203 ], [ %210, %223 ]
  %210 = getelementptr inbounds ptr, ptr %209, i64 -1
  %211 = load ptr, ptr %210, align 8, !tbaa !34
  %212 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %211, i64 0, i32 2, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !46
  %214 = fcmp une float %207, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = fcmp olt float %207, %213
  br label %221

217:                                              ; preds = %208
  %218 = load ptr, ptr %205, align 8, !tbaa !53
  %219 = load ptr, ptr %211, align 8, !tbaa !53
  %220 = icmp ult ptr %218, %219
  br label %221

221:                                              ; preds = %217, %215
  %222 = phi i1 [ %216, %215 ], [ %220, %217 ]
  br i1 %222, label %223, label %224

223:                                              ; preds = %221
  store ptr %211, ptr %209, align 8, !tbaa !34
  br label %208, !llvm.loop !58

224:                                              ; preds = %221
  store ptr %205, ptr %209, align 8, !tbaa !34
  %225 = getelementptr inbounds ptr, ptr %204, i64 1
  %226 = icmp eq ptr %225, %14
  br i1 %226, label %400, label %203, !llvm.loop !60

227:                                              ; preds = %155, %268
  %228 = phi ptr [ %270, %268 ], [ %156, %155 ]
  %229 = phi ptr [ %228, %268 ], [ %12, %155 ]
  %230 = load ptr, ptr %228, align 8, !tbaa !34
  %231 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %230, i64 0, i32 2, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !46
  %233 = load ptr, ptr %12, align 8, !tbaa !34
  %234 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %233, i64 0, i32 2, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !46
  %236 = fcmp une float %232, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %227
  %238 = fcmp olt float %232, %235
  br label %243

239:                                              ; preds = %227
  %240 = load ptr, ptr %230, align 8, !tbaa !53
  %241 = load ptr, ptr %233, align 8, !tbaa !53
  %242 = icmp ult ptr %240, %241
  br label %243

243:                                              ; preds = %239, %237
  %244 = phi i1 [ %238, %237 ], [ %242, %239 ]
  br i1 %244, label %245, label %252

245:                                              ; preds = %243
  %246 = getelementptr inbounds ptr, ptr %229, i64 2
  %247 = ptrtoint ptr %228 to i64
  %248 = sub i64 %247, %148
  %249 = ashr exact i64 %248, 3
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds ptr, ptr %246, i64 %250
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %251, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %248, i1 false)
  br label %268

252:                                              ; preds = %243, %267
  %253 = phi ptr [ %254, %267 ], [ %228, %243 ]
  %254 = getelementptr inbounds ptr, ptr %253, i64 -1
  %255 = load ptr, ptr %254, align 8, !tbaa !34
  %256 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %255, i64 0, i32 2, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !46
  %258 = fcmp une float %232, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = fcmp olt float %232, %257
  br label %265

261:                                              ; preds = %252
  %262 = load ptr, ptr %230, align 8, !tbaa !53
  %263 = load ptr, ptr %255, align 8, !tbaa !53
  %264 = icmp ult ptr %262, %263
  br label %265

265:                                              ; preds = %261, %259
  %266 = phi i1 [ %260, %259 ], [ %264, %261 ]
  br i1 %266, label %267, label %268

267:                                              ; preds = %265
  store ptr %255, ptr %253, align 8, !tbaa !34
  br label %252, !llvm.loop !58

268:                                              ; preds = %265, %245
  %269 = phi ptr [ %12, %245 ], [ %253, %265 ]
  store ptr %230, ptr %269, align 8, !tbaa !34
  %270 = getelementptr inbounds ptr, ptr %228, i64 1
  %271 = icmp eq ptr %270, %14
  br i1 %271, label %400, label %227, !llvm.loop !59

272:                                              ; preds = %11
  %273 = icmp eq ptr %12, %14
  br i1 %273, label %400, label %274

274:                                              ; preds = %272
  %275 = ptrtoint ptr %14 to i64
  %276 = ptrtoint ptr %12 to i64
  %277 = sub i64 %275, %276
  %278 = ashr exact i64 %277, 3
  %279 = tail call i64 @llvm.ctlz.i64(i64 %278, i1 true), !range !57
  %280 = shl nuw nsw i64 %279, 1
  %281 = xor i64 %280, 126
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %12, ptr noundef %14, i64 noundef %281, ptr nonnull @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi2EEbRKT_S5_)
  %282 = icmp sgt i64 %277, 128
  br i1 %282, label %286, label %283

283:                                              ; preds = %274
  %284 = getelementptr inbounds ptr, ptr %12, i64 1
  %285 = icmp eq ptr %284, %14
  br i1 %285, label %400, label %355

286:                                              ; preds = %274
  %287 = getelementptr i8, ptr %12, i64 8
  br label %291

288:                                              ; preds = %326
  %289 = getelementptr inbounds ptr, ptr %12, i64 16
  %290 = icmp eq ptr %289, %14
  br i1 %290, label %400, label %331

291:                                              ; preds = %286, %326
  %292 = phi ptr [ %287, %286 ], [ %329, %326 ]
  %293 = phi i64 [ 8, %286 ], [ %328, %326 ]
  %294 = load ptr, ptr %292, align 8, !tbaa !34
  %295 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %294, i64 0, i32 2, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !46
  %297 = load ptr, ptr %12, align 8, !tbaa !34
  %298 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %297, i64 0, i32 2, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !46
  %300 = fcmp une float %296, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %291
  %302 = fcmp olt float %296, %299
  br label %307

303:                                              ; preds = %291
  %304 = load ptr, ptr %294, align 8, !tbaa !53
  %305 = load ptr, ptr %297, align 8, !tbaa !53
  %306 = icmp ult ptr %304, %305
  br label %307

307:                                              ; preds = %303, %301
  %308 = phi i1 [ %302, %301 ], [ %306, %303 ]
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %287, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %293, i1 false)
  br label %326

310:                                              ; preds = %307, %325
  %311 = phi ptr [ %312, %325 ], [ %292, %307 ]
  %312 = getelementptr inbounds ptr, ptr %311, i64 -1
  %313 = load ptr, ptr %312, align 8, !tbaa !34
  %314 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %313, i64 0, i32 2, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !46
  %316 = fcmp une float %296, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %310
  %318 = fcmp olt float %296, %315
  br label %323

319:                                              ; preds = %310
  %320 = load ptr, ptr %294, align 8, !tbaa !53
  %321 = load ptr, ptr %313, align 8, !tbaa !53
  %322 = icmp ult ptr %320, %321
  br label %323

323:                                              ; preds = %319, %317
  %324 = phi i1 [ %318, %317 ], [ %322, %319 ]
  br i1 %324, label %325, label %326

325:                                              ; preds = %323
  store ptr %313, ptr %311, align 8, !tbaa !34
  br label %310, !llvm.loop !58

326:                                              ; preds = %323, %309
  %327 = phi ptr [ %12, %309 ], [ %311, %323 ]
  store ptr %294, ptr %327, align 8, !tbaa !34
  %328 = add nuw nsw i64 %293, 8
  %329 = getelementptr inbounds i8, ptr %12, i64 %328
  %330 = icmp eq i64 %328, 128
  br i1 %330, label %288, label %291, !llvm.loop !59

331:                                              ; preds = %288, %352
  %332 = phi ptr [ %353, %352 ], [ %289, %288 ]
  %333 = load ptr, ptr %332, align 8, !tbaa !34
  %334 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %333, i64 0, i32 2, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !46
  br label %336

336:                                              ; preds = %351, %331
  %337 = phi ptr [ %332, %331 ], [ %338, %351 ]
  %338 = getelementptr inbounds ptr, ptr %337, i64 -1
  %339 = load ptr, ptr %338, align 8, !tbaa !34
  %340 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %339, i64 0, i32 2, i64 2
  %341 = load float, ptr %340, align 4, !tbaa !46
  %342 = fcmp une float %335, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %336
  %344 = fcmp olt float %335, %341
  br label %349

345:                                              ; preds = %336
  %346 = load ptr, ptr %333, align 8, !tbaa !53
  %347 = load ptr, ptr %339, align 8, !tbaa !53
  %348 = icmp ult ptr %346, %347
  br label %349

349:                                              ; preds = %345, %343
  %350 = phi i1 [ %344, %343 ], [ %348, %345 ]
  br i1 %350, label %351, label %352

351:                                              ; preds = %349
  store ptr %339, ptr %337, align 8, !tbaa !34
  br label %336, !llvm.loop !58

352:                                              ; preds = %349
  store ptr %333, ptr %337, align 8, !tbaa !34
  %353 = getelementptr inbounds ptr, ptr %332, i64 1
  %354 = icmp eq ptr %353, %14
  br i1 %354, label %400, label %331, !llvm.loop !60

355:                                              ; preds = %283, %396
  %356 = phi ptr [ %398, %396 ], [ %284, %283 ]
  %357 = phi ptr [ %356, %396 ], [ %12, %283 ]
  %358 = load ptr, ptr %356, align 8, !tbaa !34
  %359 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %358, i64 0, i32 2, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !46
  %361 = load ptr, ptr %12, align 8, !tbaa !34
  %362 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %361, i64 0, i32 2, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !46
  %364 = fcmp une float %360, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %355
  %366 = fcmp olt float %360, %363
  br label %371

367:                                              ; preds = %355
  %368 = load ptr, ptr %358, align 8, !tbaa !53
  %369 = load ptr, ptr %361, align 8, !tbaa !53
  %370 = icmp ult ptr %368, %369
  br label %371

371:                                              ; preds = %367, %365
  %372 = phi i1 [ %366, %365 ], [ %370, %367 ]
  br i1 %372, label %373, label %380

373:                                              ; preds = %371
  %374 = getelementptr inbounds ptr, ptr %357, i64 2
  %375 = ptrtoint ptr %356 to i64
  %376 = sub i64 %375, %276
  %377 = ashr exact i64 %376, 3
  %378 = sub nsw i64 0, %377
  %379 = getelementptr inbounds ptr, ptr %374, i64 %378
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %379, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %376, i1 false)
  br label %396

380:                                              ; preds = %371, %395
  %381 = phi ptr [ %382, %395 ], [ %356, %371 ]
  %382 = getelementptr inbounds ptr, ptr %381, i64 -1
  %383 = load ptr, ptr %382, align 8, !tbaa !34
  %384 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %383, i64 0, i32 2, i64 2
  %385 = load float, ptr %384, align 4, !tbaa !46
  %386 = fcmp une float %360, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %380
  %388 = fcmp olt float %360, %385
  br label %393

389:                                              ; preds = %380
  %390 = load ptr, ptr %358, align 8, !tbaa !53
  %391 = load ptr, ptr %383, align 8, !tbaa !53
  %392 = icmp ult ptr %390, %391
  br label %393

393:                                              ; preds = %389, %387
  %394 = phi i1 [ %388, %387 ], [ %392, %389 ]
  br i1 %394, label %395, label %396

395:                                              ; preds = %393
  store ptr %383, ptr %381, align 8, !tbaa !34
  br label %380, !llvm.loop !58

396:                                              ; preds = %393, %373
  %397 = phi ptr [ %12, %373 ], [ %381, %393 ]
  store ptr %358, ptr %397, align 8, !tbaa !34
  %398 = getelementptr inbounds ptr, ptr %356, i64 1
  %399 = icmp eq ptr %398, %14
  br i1 %399, label %400, label %355, !llvm.loop !59

400:                                              ; preds = %396, %352, %268, %224, %140, %96, %283, %288, %155, %160, %27, %32, %272, %144, %16, %11, %3
  %401 = add nuw nsw i64 %4, 1
  %402 = icmp eq i64 %401, 3
  br i1 %402, label %403, label %3, !llvm.loop !61

403:                                              ; preds = %8, %400
  ret void
}

declare i32 @RE_rayobjectcontrol_test_break(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @rtbuild_get_primitive(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rtbuild_get_child(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef returned writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 3
  store i32 -1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr i8, ptr %2, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %6 = getelementptr i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !tbaa !34
  br label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ 0, %3 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 2, i64 %8
  store ptr null, ptr %9, align 8, !tbaa !34
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %7, !llvm.loop !43

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5
  %14 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5, i64 2
  store float 0x46293E5940000000, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5, i64 1
  store float 0x46293E5940000000, ptr %15, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %13, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5, i64 3
  %17 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5, i64 5
  store float 0xC6293E5940000000, ptr %17, align 4, !tbaa !46
  %18 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 5, i64 4
  store float 0xC6293E5940000000, ptr %18, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !46
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 %19
  %21 = add nsw i32 %1, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 %22
  br label %25

24:                                               ; preds = %41
  ret ptr %2

25:                                               ; preds = %12, %41
  %26 = phi i64 [ 0, %12 ], [ %44, %41 ]
  %27 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %20, align 4, !tbaa !42
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %28, i64 %32
  %34 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 1, i64 %26
  store ptr %33, ptr %34, align 8, !tbaa !34
  %35 = load ptr, ptr %27, align 8, !tbaa !34
  %36 = load i32, ptr %23, align 4, !tbaa !42
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  br label %41

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 1, i64 %26
  store ptr null, ptr %40, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %30, %39
  %42 = phi ptr [ %38, %30 ], [ null, %39 ]
  %43 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 2, i64 %26
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = add nuw nsw i64 %26, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %24, label %25, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define dso_local void @rtbuild_merge_bb(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !46
  %6 = fcmp oeq float %5, 0x46293E5940000000
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 3
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %9, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @RE_rayobject_merge_bb(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %14)
  %19 = getelementptr inbounds ptr, ptr %16, i64 1
  %20 = load ptr, ptr %10, align 8, !tbaa !34
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %15, !llvm.loop !63

22:                                               ; preds = %15, %7, %3
  %23 = load float, ptr %1, align 4, !tbaa !46
  %24 = load float, ptr %4, align 8, !tbaa !46
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store float %24, ptr %1, align 4, !tbaa !46
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !46
  %32 = fcmp ogt float %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store float %31, ptr %28, align 4, !tbaa !46
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !46
  %39 = fcmp ogt float %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store float %38, ptr %35, align 4, !tbaa !46
  br label %41

41:                                               ; preds = %40, %34
  %42 = load float, ptr %2, align 4, !tbaa !46
  %43 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !46
  %45 = fcmp olt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store float %44, ptr %2, align 4, !tbaa !46
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !46
  %50 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 4
  %51 = load float, ptr %50, align 4, !tbaa !46
  %52 = fcmp olt float %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store float %51, ptr %48, align 4, !tbaa !46
  br label %54

54:                                               ; preds = %53, %47
  %55 = getelementptr inbounds float, ptr %2, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !46
  %57 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 5
  %58 = load float, ptr %57, align 4, !tbaa !46
  %59 = fcmp olt float %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store float %58, ptr %55, align 4, !tbaa !46
  br label %61

61:                                               ; preds = %60, %54
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @rtbuild_heuristic_object_split(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %248

13:                                               ; preds = %2
  %14 = sdiv i32 %11, 2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = shl i64 %9, 29
  %17 = ashr i64 %16, 32
  %18 = mul nsw i64 %17, 28
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.3)
  %20 = add nsw i32 %11, -1
  %21 = icmp sgt i32 %11, 0
  %22 = icmp sgt i32 %11, 1
  %23 = zext i32 %20 to i64
  %24 = zext i32 %20 to i64
  %25 = shl i64 %9, 29
  %26 = ashr i64 %25, 32
  br label %30

27:                                               ; preds = %240
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %19)
  %29 = sext i32 %245 to i64
  br label %253

30:                                               ; preds = %13, %240
  %31 = phi i64 [ 0, %13 ], [ %246, %240 ]
  %32 = phi i32 [ -1, %13 ], [ %245, %240 ]
  %33 = phi i32 [ %14, %13 ], [ %242, %240 ]
  %34 = phi float [ 0x47EFFFFFE0000000, %13 ], [ %241, %240 ]
  %35 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %31
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  br i1 %21, label %55, label %37

37:                                               ; preds = %131, %30
  br i1 %22, label %38, label %240

38:                                               ; preds = %37
  %39 = load ptr, ptr %36, align 8, !tbaa !34
  %40 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 1
  %41 = load float, ptr %40, align 8, !tbaa !55
  %42 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2, i64 5
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2, i64 4
  %45 = load float, ptr %44, align 4, !tbaa !46
  %46 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !46
  %48 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !46
  %50 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !46
  %52 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %39, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !46
  %54 = trunc i64 %31 to i32
  br label %136

55:                                               ; preds = %30, %131
  %56 = phi i64 [ %134, %131 ], [ %23, %30 ]
  %57 = icmp eq i64 %56, %24
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.SweepCost, ptr %19, i64 %56
  %60 = getelementptr inbounds ptr, ptr %36, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !46
  store float %63, ptr %59, align 4, !tbaa !46
  %64 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !46
  %66 = getelementptr inbounds float, ptr %59, i64 1
  store float %65, ptr %66, align 4, !tbaa !46
  %67 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !46
  %69 = getelementptr inbounds float, ptr %59, i64 2
  store float %68, ptr %69, align 4, !tbaa !46
  %70 = getelementptr inbounds float, ptr %59, i64 3
  %71 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2, i64 3
  %72 = load float, ptr %71, align 4, !tbaa !46
  store float %72, ptr %70, align 4, !tbaa !46
  %73 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2, i64 4
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = getelementptr inbounds float, ptr %59, i64 4
  store float %74, ptr %75, align 4, !tbaa !46
  %76 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 2, i64 5
  %77 = load float, ptr %76, align 4, !tbaa !46
  %78 = getelementptr inbounds float, ptr %59, i64 5
  store float %77, ptr %78, align 4, !tbaa !46
  %79 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %61, i64 0, i32 1
  %80 = load float, ptr %79, align 8, !tbaa !55
  br label %131

81:                                               ; preds = %55
  %82 = getelementptr inbounds ptr, ptr %36, i64 %56
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2
  %85 = load float, ptr %84, align 4, !tbaa !46
  %86 = getelementptr %struct.SweepCost, ptr %19, i64 %56
  %87 = getelementptr %struct.SweepCost, ptr %86, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !46
  %89 = fcmp olt float %85, %88
  %90 = select i1 %89, float %85, float %88
  store float %90, ptr %86, align 4, !tbaa !46
  %91 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !46
  %93 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 0, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !46
  %95 = fcmp olt float %92, %94
  %96 = select i1 %95, float %92, float %94
  %97 = getelementptr inbounds [6 x float], ptr %86, i64 0, i64 1
  store float %96, ptr %97, align 4, !tbaa !46
  %98 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !46
  %100 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 0, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !46
  %102 = fcmp olt float %99, %101
  %103 = select i1 %102, float %99, float %101
  %104 = getelementptr inbounds [6 x float], ptr %86, i64 0, i64 2
  store float %103, ptr %104, align 4, !tbaa !46
  %105 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2, i64 3
  %106 = load float, ptr %105, align 4, !tbaa !46
  %107 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 0, i64 3
  %108 = load float, ptr %107, align 4, !tbaa !46
  %109 = fcmp ogt float %106, %108
  %110 = select i1 %109, float %106, float %108
  %111 = getelementptr inbounds [6 x float], ptr %86, i64 0, i64 3
  store float %110, ptr %111, align 4, !tbaa !46
  %112 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2, i64 4
  %113 = load float, ptr %112, align 4, !tbaa !46
  %114 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 0, i64 4
  %115 = load float, ptr %114, align 4, !tbaa !46
  %116 = fcmp ogt float %113, %115
  %117 = select i1 %116, float %113, float %115
  %118 = getelementptr inbounds [6 x float], ptr %86, i64 0, i64 4
  store float %117, ptr %118, align 4, !tbaa !46
  %119 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 2, i64 5
  %120 = load float, ptr %119, align 4, !tbaa !46
  %121 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 0, i64 5
  %122 = load float, ptr %121, align 4, !tbaa !46
  %123 = fcmp ogt float %120, %122
  %124 = select i1 %123, float %120, float %122
  %125 = getelementptr inbounds [6 x float], ptr %86, i64 0, i64 5
  store float %124, ptr %125, align 4, !tbaa !46
  %126 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %83, i64 0, i32 1
  %127 = load float, ptr %126, align 8, !tbaa !55
  %128 = getelementptr %struct.SweepCost, ptr %86, i64 1, i32 1
  %129 = load float, ptr %128, align 4, !tbaa !64
  %130 = fadd float %127, %129
  br label %131

131:                                              ; preds = %58, %81
  %132 = phi float [ %80, %58 ], [ %130, %81 ]
  %133 = getelementptr inbounds %struct.SweepCost, ptr %19, i64 %56, i32 1
  store float %132, ptr %133, align 4, !tbaa !64
  %134 = add nsw i64 %56, -1
  %135 = icmp sgt i64 %56, 0
  br i1 %135, label %55, label %37, !llvm.loop !66

136:                                              ; preds = %38, %226
  %137 = phi i64 [ 1, %38 ], [ %237, %226 ]
  %138 = phi i32 [ %32, %38 ], [ %236, %226 ]
  %139 = phi i32 [ %33, %38 ], [ %235, %226 ]
  %140 = phi float [ %34, %38 ], [ %234, %226 ]
  %141 = phi float [ %53, %38 ], [ %233, %226 ]
  %142 = phi float [ %51, %38 ], [ %232, %226 ]
  %143 = phi float [ %49, %38 ], [ %231, %226 ]
  %144 = phi float [ %47, %38 ], [ %230, %226 ]
  %145 = phi float [ %45, %38 ], [ %229, %226 ]
  %146 = phi float [ %43, %38 ], [ %228, %226 ]
  %147 = phi float [ %41, %38 ], [ %227, %226 ]
  %148 = fsub float %144, %141
  %149 = fsub float %145, %142
  %150 = fsub float %146, %143
  %151 = fmul float %150, %148
  %152 = tail call float @llvm.fmuladd.f32(float %148, float %149, float %151)
  %153 = tail call float @llvm.fmuladd.f32(float %149, float %150, float %152)
  %154 = fmul float %153, 2.000000e+00
  %155 = fcmp olt float %154, 0.000000e+00
  %156 = select i1 %155, float 0.000000e+00, float %154
  %157 = fmul float %147, %156
  %158 = getelementptr inbounds %struct.SweepCost, ptr %19, i64 %137
  %159 = getelementptr inbounds float, ptr %158, i64 3
  %160 = load float, ptr %159, align 4, !tbaa !46
  %161 = load float, ptr %158, align 4, !tbaa !46
  %162 = fsub float %160, %161
  %163 = getelementptr inbounds float, ptr %158, i64 4
  %164 = load float, ptr %163, align 4, !tbaa !46
  %165 = getelementptr inbounds float, ptr %158, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !46
  %167 = fsub float %164, %166
  %168 = getelementptr inbounds float, ptr %158, i64 5
  %169 = load float, ptr %168, align 4, !tbaa !46
  %170 = getelementptr inbounds float, ptr %158, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !46
  %172 = fsub float %169, %171
  %173 = fmul float %162, %172
  %174 = tail call float @llvm.fmuladd.f32(float %162, float %167, float %173)
  %175 = tail call float @llvm.fmuladd.f32(float %167, float %172, float %174)
  %176 = fmul float %175, 2.000000e+00
  %177 = fcmp olt float %176, 0.000000e+00
  %178 = select i1 %177, float 0.000000e+00, float %176
  %179 = getelementptr inbounds %struct.SweepCost, ptr %19, i64 %137, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !64
  %181 = fmul float %180, %178
  %182 = fadd float %157, %181
  %183 = fcmp ule float %157, %140
  br i1 %183, label %184, label %226

184:                                              ; preds = %136
  %185 = fcmp olt float %182, %140
  br i1 %185, label %191, label %186

186:                                              ; preds = %184
  %187 = fcmp oeq float %182, %140
  %188 = sext i32 %138 to i64
  %189 = icmp slt i64 %31, %188
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %191, label %193

191:                                              ; preds = %186, %184
  %192 = trunc i64 %137 to i32
  br label %193

193:                                              ; preds = %191, %186
  %194 = phi float [ %182, %191 ], [ %140, %186 ]
  %195 = phi i32 [ %192, %191 ], [ %139, %186 ]
  %196 = phi i32 [ %54, %191 ], [ %138, %186 ]
  %197 = getelementptr inbounds ptr, ptr %36, i64 %137
  %198 = load ptr, ptr %197, align 8, !tbaa !34
  %199 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2
  %200 = load float, ptr %199, align 4, !tbaa !46
  %201 = fcmp ogt float %141, %200
  %202 = select i1 %201, float %200, float %141
  %203 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !46
  %205 = fcmp ogt float %142, %204
  %206 = select i1 %205, float %204, float %142
  %207 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !46
  %209 = fcmp ogt float %143, %208
  %210 = select i1 %209, float %208, float %143
  %211 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2, i64 3
  %212 = load float, ptr %211, align 4, !tbaa !46
  %213 = fcmp olt float %144, %212
  %214 = select i1 %213, float %212, float %144
  %215 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2, i64 4
  %216 = load float, ptr %215, align 4, !tbaa !46
  %217 = fcmp olt float %145, %216
  %218 = select i1 %217, float %216, float %145
  %219 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 2, i64 5
  %220 = load float, ptr %219, align 4, !tbaa !46
  %221 = fcmp olt float %146, %220
  %222 = select i1 %221, float %220, float %146
  %223 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %198, i64 0, i32 1
  %224 = load float, ptr %223, align 8, !tbaa !55
  %225 = fadd float %147, %224
  br label %226

226:                                              ; preds = %136, %193
  %227 = phi float [ %225, %193 ], [ %147, %136 ]
  %228 = phi float [ %222, %193 ], [ %146, %136 ]
  %229 = phi float [ %218, %193 ], [ %145, %136 ]
  %230 = phi float [ %214, %193 ], [ %144, %136 ]
  %231 = phi float [ %210, %193 ], [ %143, %136 ]
  %232 = phi float [ %206, %193 ], [ %142, %136 ]
  %233 = phi float [ %202, %193 ], [ %141, %136 ]
  %234 = phi float [ %194, %193 ], [ %140, %136 ]
  %235 = phi i32 [ %195, %193 ], [ %139, %136 ]
  %236 = phi i32 [ %196, %193 ], [ %138, %136 ]
  %237 = add nuw nsw i64 %137, 1
  %238 = icmp slt i64 %237, %26
  %239 = select i1 %183, i1 %238, i1 false
  br i1 %239, label %136, label %240, !llvm.loop !67

240:                                              ; preds = %226, %37
  %241 = phi float [ %34, %37 ], [ %234, %226 ]
  %242 = phi i32 [ %33, %37 ], [ %235, %226 ]
  %243 = phi i32 [ %32, %37 ], [ %236, %226 ]
  %244 = icmp ult i32 %243, 3
  %245 = select i1 %244, i32 %243, i32 0
  %246 = add nuw nsw i64 %31, 1
  %247 = icmp eq i64 %246, 3
  br i1 %247, label %27, label %30, !llvm.loop !68

248:                                              ; preds = %2
  switch i32 %11, label %252 [
    i32 2, label %253
    i32 1, label %249
  ]

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4
  store i32 0, ptr %250, align 4, !tbaa !42
  %251 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 1
  store i32 1, ptr %251, align 4, !tbaa !42
  br label %400

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %248, %252, %27
  %254 = phi i32 [ %242, %27 ], [ 1, %248 ], [ 0, %252 ]
  %255 = phi i64 [ %29, %27 ], [ 0, %248 ], [ -1, %252 ]
  %256 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4
  store i32 0, ptr %256, align 4, !tbaa !42
  %257 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 1
  store i32 %254, ptr %257, align 4, !tbaa !42
  %258 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 2
  store i32 %11, ptr %258, align 4, !tbaa !42
  %259 = icmp sgt i32 %254, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %255
  %262 = load ptr, ptr %261, align 8, !tbaa !34
  %263 = zext nneg i32 %254 to i64
  br label %272

264:                                              ; preds = %272, %253
  %265 = icmp slt i32 %254, %11
  br i1 %265, label %266, label %286

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %255
  %268 = load ptr, ptr %267, align 8, !tbaa !34
  %269 = sext i32 %254 to i64
  %270 = shl i64 %9, 29
  %271 = ashr i64 %270, 32
  br label %279

272:                                              ; preds = %260, %272
  %273 = phi i64 [ 0, %260 ], [ %277, %272 ]
  %274 = getelementptr inbounds ptr, ptr %262, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !34
  %276 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %275, i64 0, i32 3
  store i32 1, ptr %276, align 4, !tbaa !69
  %277 = add nuw nsw i64 %273, 1
  %278 = icmp eq i64 %277, %263
  br i1 %278, label %264, label %272, !llvm.loop !70

279:                                              ; preds = %266, %279
  %280 = phi i64 [ %269, %266 ], [ %284, %279 ]
  %281 = getelementptr inbounds ptr, ptr %268, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !34
  %283 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %282, i64 0, i32 3
  store i32 0, ptr %283, align 4, !tbaa !69
  %284 = add nsw i64 %280, 1
  %285 = icmp eq i64 %284, %271
  br i1 %285, label %286, label %279, !llvm.loop !71

286:                                              ; preds = %279, %264
  br label %287

287:                                              ; preds = %286, %397
  %288 = phi i64 [ %398, %397 ], [ 0, %286 ]
  %289 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !34
  %291 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %288
  %292 = load ptr, ptr %291, align 8, !tbaa !34
  %293 = ptrtoint ptr %292 to i64
  %294 = ptrtoint ptr %290 to i64
  %295 = sub i64 %293, %294
  %296 = ashr i64 %295, 5
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %298, label %330

298:                                              ; preds = %287
  %299 = and i64 %295, -32
  %300 = getelementptr i8, ptr %290, i64 %299
  br label %301

301:                                              ; preds = %298, %326
  %302 = phi i64 [ %328, %326 ], [ %296, %298 ]
  %303 = phi ptr [ %327, %326 ], [ %290, %298 ]
  %304 = load ptr, ptr %303, align 8, !tbaa !34
  %305 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %304, i64 0, i32 3
  %306 = load i32, ptr %305, align 4, !tbaa !69
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %363, label %308

308:                                              ; preds = %301
  %309 = getelementptr inbounds ptr, ptr %303, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !34
  %311 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %310, i64 0, i32 3
  %312 = load i32, ptr %311, align 4, !tbaa !69
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %357, label %314

314:                                              ; preds = %308
  %315 = getelementptr inbounds ptr, ptr %303, i64 2
  %316 = load ptr, ptr %315, align 8, !tbaa !34
  %317 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %316, i64 0, i32 3
  %318 = load i32, ptr %317, align 4, !tbaa !69
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %359, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds ptr, ptr %303, i64 3
  %322 = load ptr, ptr %321, align 8, !tbaa !34
  %323 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %322, i64 0, i32 3
  %324 = load i32, ptr %323, align 4, !tbaa !69
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %361, label %326

326:                                              ; preds = %320
  %327 = getelementptr inbounds ptr, ptr %303, i64 4
  %328 = add nsw i64 %302, -1
  %329 = icmp sgt i64 %302, 1
  br i1 %329, label %301, label %330, !llvm.loop !72

330:                                              ; preds = %326, %287
  %331 = phi ptr [ %290, %287 ], [ %300, %326 ]
  %332 = ptrtoint ptr %331 to i64
  %333 = sub i64 %293, %332
  %334 = ashr exact i64 %333, 3
  switch i64 %334, label %356 [
    i64 3, label %335
    i64 2, label %342
    i64 1, label %350
  ]

335:                                              ; preds = %330
  %336 = load ptr, ptr %331, align 8, !tbaa !34
  %337 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %336, i64 0, i32 3
  %338 = load i32, ptr %337, align 4, !tbaa !69
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %363, label %340

340:                                              ; preds = %335
  %341 = getelementptr inbounds ptr, ptr %331, i64 1
  br label %342

342:                                              ; preds = %340, %330
  %343 = phi ptr [ %331, %330 ], [ %341, %340 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !34
  %345 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %344, i64 0, i32 3
  %346 = load i32, ptr %345, align 4, !tbaa !69
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %363, label %348

348:                                              ; preds = %342
  %349 = getelementptr inbounds ptr, ptr %343, i64 1
  br label %350

350:                                              ; preds = %348, %330
  %351 = phi ptr [ %331, %330 ], [ %349, %348 ]
  %352 = load ptr, ptr %351, align 8, !tbaa !34
  %353 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %352, i64 0, i32 3
  %354 = load i32, ptr %353, align 4, !tbaa !69
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %363, label %356

356:                                              ; preds = %350, %330
  br label %363

357:                                              ; preds = %308
  %358 = getelementptr inbounds ptr, ptr %303, i64 1
  br label %363

359:                                              ; preds = %314
  %360 = getelementptr inbounds ptr, ptr %303, i64 2
  br label %363

361:                                              ; preds = %320
  %362 = getelementptr inbounds ptr, ptr %303, i64 3
  br label %363

363:                                              ; preds = %301, %357, %359, %361, %356, %350, %342, %335
  %364 = phi ptr [ %292, %356 ], [ %331, %335 ], [ %343, %342 ], [ %351, %350 ], [ %358, %357 ], [ %360, %359 ], [ %362, %361 ], [ %303, %301 ]
  %365 = icmp eq ptr %364, %292
  br i1 %365, label %397, label %366

366:                                              ; preds = %363
  %367 = ptrtoint ptr %364 to i64
  %368 = sub i64 %293, %367
  %369 = ashr exact i64 %368, 3
  br label %370

370:                                              ; preds = %384, %366
  %371 = phi i64 [ %369, %366 ], [ %385, %384 ]
  %372 = phi ptr [ undef, %366 ], [ %386, %384 ]
  %373 = phi i64 [ undef, %366 ], [ %387, %384 ]
  %374 = icmp sgt i64 %371, 0
  br i1 %374, label %375, label %388

375:                                              ; preds = %370
  %376 = shl i64 %371, 3
  %377 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %376, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #13
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %384

379:                                              ; preds = %375
  %380 = icmp eq i64 %371, 1
  br i1 %380, label %384, label %381

381:                                              ; preds = %379
  %382 = add nuw nsw i64 %371, 1
  %383 = lshr i64 %382, 1
  br label %384

384:                                              ; preds = %381, %379, %375
  %385 = phi i64 [ %371, %375 ], [ %383, %381 ], [ 0, %379 ]
  %386 = phi ptr [ %377, %375 ], [ %372, %381 ], [ %372, %379 ]
  %387 = phi i64 [ %371, %375 ], [ %373, %381 ], [ %373, %379 ]
  br i1 %378, label %370, label %388, !llvm.loop !73

388:                                              ; preds = %384, %370
  %389 = phi ptr [ %386, %384 ], [ null, %370 ]
  %390 = phi i64 [ %387, %384 ], [ 0, %370 ]
  %391 = icmp eq ptr %389, null
  %392 = select i1 %391, i64 0, i64 %390
  %393 = invoke noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %364, ptr noundef %292, ptr nonnull @_ZL13selected_nodePN9RTBuilder6ObjectE, i64 noundef %369, ptr noundef %389, i64 noundef %392)
          to label %394 unwind label %395

394:                                              ; preds = %388
  tail call void @_ZdlPv(ptr noundef %389) #12
  br label %397

395:                                              ; preds = %388
  %396 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %389) #12
  resume { ptr, i32 } %396

397:                                              ; preds = %363, %394
  %398 = add nuw nsw i64 %288, 1
  %399 = icmp eq i64 %398, 3
  br i1 %399, label %400, label %287, !llvm.loop !74

400:                                              ; preds = %397, %249
  %401 = phi i32 [ 1, %249 ], [ %1, %397 ]
  ret i32 %401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @bb_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = load float, ptr %0, align 4, !tbaa !46
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = fsub float %12, %14
  %16 = fmul float %5, %15
  %17 = tail call float @llvm.fmuladd.f32(float %5, float %10, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %17)
  %19 = fmul float %18, 2.000000e+00
  %20 = fcmp olt float %19, 0.000000e+00
  %21 = select i1 %20, float 0.000000e+00, float %19
  ret float %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL13selected_nodePN9RTBuilder6ObjectE(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @bb_volume(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = load float, ptr %0, align 4, !tbaa !46
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = fsub float %7, %9
  %11 = fmul float %5, %10
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = fsub float %13, %15
  %17 = fmul float %11, %16
  ret float %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bb_largest_axis(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = load float, ptr %0, align 4, !tbaa !46
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = fsub float %12, %14
  %16 = fcmp ogt float %5, %10
  %17 = fcmp ogt float %5, %15
  %18 = select i1 %17, i32 0, i32 2
  %19 = fcmp ogt float %10, %15
  %20 = select i1 %19, i32 1, i32 2
  %21 = select i1 %16, i32 %18, i32 %20
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @bb_fits_inside(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 3
  br i1 %7, label %18, label %8, !llvm.loop !75

8:                                                ; preds = %4, %5
  %9 = phi i64 [ 0, %4 ], [ %6, %5 ]
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %2, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %25, label %5

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %25, label %18, !llvm.loop !76

18:                                               ; preds = %5, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %5 ]
  %20 = getelementptr inbounds float, ptr %1, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !46
  %22 = getelementptr inbounds float, ptr %3, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %15

25:                                               ; preds = %8, %15, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %15 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi0EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !53
  %14 = load ptr, ptr %6, align 8, !tbaa !53
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi1EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !53
  %14 = load ptr, ptr %6, align 8, !tbaa !53
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi2EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !53
  %14 = load ptr, ptr %6, align 8, !tbaa !53
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = ptrtoint ptr %0 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %7
  %10 = icmp sgt i64 %9, 128
  br i1 %10, label %11, label %188

11:                                               ; preds = %4
  %12 = getelementptr inbounds ptr, ptr %0, i64 1
  br label %13

13:                                               ; preds = %11, %184
  %14 = phi i64 [ %9, %11 ], [ %186, %184 ]
  %15 = phi ptr [ %1, %11 ], [ %171, %184 ]
  %16 = phi i64 [ %2, %11 ], [ %137, %184 ]
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %136

18:                                               ; preds = %13
  %19 = lshr exact i64 %14, 3
  %20 = add nsw i64 %19, -2
  %21 = lshr i64 %20, 1
  %22 = add nsw i64 %19, -1
  %23 = sdiv i64 %22, 2
  %24 = and i64 %14, 8
  %25 = icmp eq i64 %24, 0
  %26 = ashr exact i64 %20, 1
  br label %27

27:                                               ; preds = %68, %18
  %28 = phi i64 [ %21, %18 ], [ %73, %68 ]
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp sgt i64 %23, %28
  br i1 %31, label %32, label %45

32:                                               ; preds = %27, %32
  %33 = phi i64 [ %40, %32 ], [ %28, %27 ]
  %34 = shl i64 %33, 1
  %35 = add i64 %34, 2
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = or disjoint i64 %34, 1
  %38 = getelementptr inbounds ptr, ptr %0, i64 %37
  %39 = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %38)
  %40 = select i1 %39, i64 %37, i64 %35
  %41 = getelementptr inbounds ptr, ptr %0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds ptr, ptr %0, i64 %33
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = icmp slt i64 %40, %23
  br i1 %44, label %32, label %45, !llvm.loop !77

45:                                               ; preds = %32, %27
  %46 = phi i64 [ %28, %27 ], [ %40, %32 ]
  %47 = icmp eq i64 %46, %26
  %48 = select i1 %25, i1 %47, i1 false
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = shl i64 %46, 1
  %51 = or disjoint i64 %50, 1
  %52 = getelementptr inbounds ptr, ptr %0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %0, i64 %46
  store ptr %53, ptr %54, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i64 [ %51, %49 ], [ %46, %45 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %30, ptr %6, align 8, !tbaa !34
  %57 = icmp sgt i64 %56, %28
  br i1 %57, label %58, label %68

58:                                               ; preds = %55, %64
  %59 = phi i64 [ %61, %64 ], [ %56, %55 ]
  %60 = add nsw i64 %59, -1
  %61 = sdiv i64 %60, 2
  %62 = getelementptr inbounds ptr, ptr %0, i64 %61
  %63 = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  %66 = getelementptr inbounds ptr, ptr %0, i64 %59
  store ptr %65, ptr %66, align 8, !tbaa !34
  %67 = icmp sgt i64 %61, %28
  br i1 %67, label %58, label %68, !llvm.loop !78

68:                                               ; preds = %64, %58, %55
  %69 = phi i64 [ %56, %55 ], [ %59, %58 ], [ %61, %64 ]
  %70 = load ptr, ptr %6, align 8, !tbaa !34
  %71 = getelementptr inbounds ptr, ptr %0, i64 %69
  store ptr %70, ptr %71, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %72 = icmp eq i64 %28, 0
  %73 = call i64 @llvm.usub.sat.i64(i64 %28, i64 1)
  br i1 %72, label %74, label %27, !llvm.loop !79

74:                                               ; preds = %68
  %75 = ptrtoint ptr %15 to i64
  %76 = sub i64 %75, %7
  %77 = icmp sgt i64 %76, 8
  br i1 %77, label %78, label %188

78:                                               ; preds = %74, %129
  %79 = phi ptr [ %80, %129 ], [ %15, %74 ]
  %80 = getelementptr inbounds ptr, ptr %79, i64 -1
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %82, ptr %80, align 8, !tbaa !34
  %83 = ptrtoint ptr %80 to i64
  %84 = sub i64 %83, %7
  %85 = ashr exact i64 %84, 3
  %86 = add nsw i64 %85, -1
  %87 = sdiv i64 %86, 2
  %88 = icmp sgt i64 %85, 2
  br i1 %88, label %89, label %102

89:                                               ; preds = %78, %89
  %90 = phi i64 [ %97, %89 ], [ 0, %78 ]
  %91 = shl i64 %90, 1
  %92 = add i64 %91, 2
  %93 = getelementptr inbounds ptr, ptr %0, i64 %92
  %94 = or disjoint i64 %91, 1
  %95 = getelementptr inbounds ptr, ptr %0, i64 %94
  %96 = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull align 8 dereferenceable(8) %95)
  %97 = select i1 %96, i64 %94, i64 %92
  %98 = getelementptr inbounds ptr, ptr %0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = getelementptr inbounds ptr, ptr %0, i64 %90
  store ptr %99, ptr %100, align 8, !tbaa !34
  %101 = icmp slt i64 %97, %87
  br i1 %101, label %89, label %102, !llvm.loop !77

102:                                              ; preds = %89, %78
  %103 = phi i64 [ 0, %78 ], [ %97, %89 ]
  %104 = and i64 %84, 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = add nsw i64 %85, -2
  %108 = ashr exact i64 %107, 1
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = shl i64 %103, 1
  %112 = or disjoint i64 %111, 1
  %113 = getelementptr inbounds ptr, ptr %0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = getelementptr inbounds ptr, ptr %0, i64 %103
  store ptr %114, ptr %115, align 8, !tbaa !34
  br label %116

116:                                              ; preds = %110, %106, %102
  %117 = phi i64 [ %112, %110 ], [ %103, %106 ], [ %103, %102 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %81, ptr %5, align 8, !tbaa !34
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116, %125
  %120 = phi i64 [ %122, %125 ], [ %117, %116 ]
  %121 = add nsw i64 %120, -1
  %122 = sdiv i64 %121, 2
  %123 = getelementptr inbounds ptr, ptr %0, i64 %122
  %124 = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load ptr, ptr %123, align 8, !tbaa !34
  %127 = getelementptr inbounds ptr, ptr %0, i64 %120
  store ptr %126, ptr %127, align 8, !tbaa !34
  %128 = icmp sgt i64 %120, 2
  br i1 %128, label %119, label %129, !llvm.loop !78

129:                                              ; preds = %119, %125, %116
  %130 = phi i64 [ %117, %116 ], [ %120, %119 ], [ %122, %125 ]
  %131 = load ptr, ptr %5, align 8, !tbaa !34
  %132 = getelementptr inbounds ptr, ptr %0, i64 %130
  store ptr %131, ptr %132, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %133 = ptrtoint ptr %80 to i64
  %134 = sub i64 %133, %7
  %135 = icmp sgt i64 %134, 8
  br i1 %135, label %78, label %188, !llvm.loop !80

136:                                              ; preds = %13
  %137 = add nsw i64 %16, -1
  %138 = lshr i64 %14, 4
  %139 = getelementptr inbounds ptr, ptr %0, i64 %138
  %140 = getelementptr inbounds ptr, ptr %15, i64 -1
  %141 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %139)
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef nonnull align 8 dereferenceable(8) %140)
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = load ptr, ptr %0, align 8, !tbaa !34
  %146 = load ptr, ptr %139, align 8, !tbaa !34
  store ptr %146, ptr %0, align 8, !tbaa !34
  store ptr %145, ptr %139, align 8, !tbaa !34
  br label %166

147:                                              ; preds = %142
  %148 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %140)
  %149 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %148, label %150, label %152

150:                                              ; preds = %147
  %151 = load ptr, ptr %140, align 8, !tbaa !34
  store ptr %151, ptr %0, align 8, !tbaa !34
  store ptr %149, ptr %140, align 8, !tbaa !34
  br label %166

152:                                              ; preds = %147
  %153 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %153, ptr %0, align 8, !tbaa !34
  store ptr %149, ptr %12, align 8, !tbaa !34
  br label %166

154:                                              ; preds = %136
  %155 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %140)
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load ptr, ptr %0, align 8, !tbaa !34
  %158 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %158, ptr %0, align 8, !tbaa !34
  store ptr %157, ptr %12, align 8, !tbaa !34
  br label %166

159:                                              ; preds = %154
  %160 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef nonnull align 8 dereferenceable(8) %140)
  %161 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %160, label %162, label %164

162:                                              ; preds = %159
  %163 = load ptr, ptr %140, align 8, !tbaa !34
  store ptr %163, ptr %0, align 8, !tbaa !34
  store ptr %161, ptr %140, align 8, !tbaa !34
  br label %166

164:                                              ; preds = %159
  %165 = load ptr, ptr %139, align 8, !tbaa !34
  store ptr %165, ptr %0, align 8, !tbaa !34
  store ptr %161, ptr %139, align 8, !tbaa !34
  br label %166

166:                                              ; preds = %144, %150, %152, %156, %162, %164
  br label %167

167:                                              ; preds = %166, %180
  %168 = phi ptr [ %176, %180 ], [ %15, %166 ]
  %169 = phi ptr [ %183, %180 ], [ %12, %166 ]
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %169, %167 ], [ %173, %170 ]
  %172 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %173 = getelementptr inbounds ptr, ptr %171, i64 1
  br i1 %172, label %170, label %174, !llvm.loop !81

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %176, %174 ], [ %168, %170 ]
  %176 = getelementptr inbounds ptr, ptr %175, i64 -1
  %177 = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %176)
  br i1 %177, label %174, label %178, !llvm.loop !82

178:                                              ; preds = %174
  %179 = icmp ult ptr %171, %176
  br i1 %179, label %180, label %184

180:                                              ; preds = %178
  %181 = load ptr, ptr %171, align 8, !tbaa !34
  %182 = load ptr, ptr %176, align 8, !tbaa !34
  store ptr %182, ptr %171, align 8, !tbaa !34
  store ptr %181, ptr %176, align 8, !tbaa !34
  %183 = getelementptr inbounds ptr, ptr %171, i64 1
  br label %167, !llvm.loop !83

184:                                              ; preds = %178
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %171, ptr noundef %15, i64 noundef %137, ptr %3)
  %185 = ptrtoint ptr %171 to i64
  %186 = sub i64 %185, %7
  %187 = icmp sgt i64 %186, 128
  br i1 %187, label %13, label %188, !llvm.loop !84

188:                                              ; preds = %184, %129, %4, %74
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat {
  %7 = icmp eq i64 %3, 1
  br i1 %7, label %59, label %8

8:                                                ; preds = %6
  %9 = icmp sgt i64 %3, %5
  br i1 %9, label %39, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %11, ptr %4, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %4, i64 1
  %13 = getelementptr inbounds ptr, ptr %0, i64 1
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %26
  %16 = phi ptr [ %29, %26 ], [ %13, %10 ]
  %17 = phi ptr [ %28, %26 ], [ %0, %10 ]
  %18 = phi ptr [ %27, %26 ], [ %12, %10 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !34
  %20 = tail call noundef zeroext i1 %2(ptr noundef %19)
  %21 = load ptr, ptr %16, align 8, !tbaa !34
  br i1 %20, label %22, label %24

22:                                               ; preds = %15
  store ptr %21, ptr %17, align 8, !tbaa !34
  %23 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %26

24:                                               ; preds = %15
  store ptr %21, ptr %18, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %18, i64 1
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi ptr [ %18, %22 ], [ %25, %24 ]
  %28 = phi ptr [ %23, %22 ], [ %17, %24 ]
  %29 = getelementptr inbounds ptr, ptr %16, i64 1
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %15, !llvm.loop !85

31:                                               ; preds = %26, %10
  %32 = phi ptr [ %12, %10 ], [ %27, %26 ]
  %33 = phi ptr [ %0, %10 ], [ %28, %26 ]
  %34 = icmp eq ptr %32, %4
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i64
  %37 = ptrtoint ptr %4 to i64
  %38 = sub i64 %36, %37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %33, ptr nonnull align 8 %4, i64 %38, i1 false)
  br label %59

39:                                               ; preds = %8
  %40 = sdiv i64 %3, 2
  %41 = getelementptr inbounds ptr, ptr %0, i64 %40
  %42 = tail call noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %0, ptr noundef %41, ptr %2, i64 noundef %40, ptr noundef %4, i64 noundef %5)
  %43 = sub nsw i64 %3, %40
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %39, %50
  %46 = phi ptr [ %52, %50 ], [ %41, %39 ]
  %47 = phi i64 [ %51, %50 ], [ %43, %39 ]
  %48 = load ptr, ptr %46, align 8, !tbaa !34
  %49 = tail call noundef zeroext i1 %2(ptr noundef %48)
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = add nsw i64 %47, -1
  %52 = getelementptr inbounds ptr, ptr %46, i64 1
  %53 = icmp eq i64 %51, 0
  br i1 %53, label %56, label %45, !llvm.loop !86

54:                                               ; preds = %45
  %55 = tail call noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef nonnull %46, ptr noundef %1, ptr %2, i64 noundef %47, ptr noundef %4, i64 noundef %5)
  br label %56

56:                                               ; preds = %50, %39, %54
  %57 = phi ptr [ %55, %54 ], [ %41, %39 ], [ %52, %50 ]
  %58 = tail call noundef ptr @_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %42, ptr noundef %41, ptr noundef %57)
  br label %59

59:                                               ; preds = %35, %31, %6, %56
  %60 = phi ptr [ %58, %56 ], [ %0, %6 ], [ %33, %31 ], [ %33, %35 ]
  ret ptr %60
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %111, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, %1
  br i1 %6, label %111, label %7

7:                                                ; preds = %5
  %8 = ptrtoint ptr %2 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %12, %9
  %14 = ashr exact i64 %13, 3
  %15 = sub nsw i64 %11, %14
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = icmp eq ptr %0, %1
  br i1 %18, label %111, label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %25, %19 ], [ %1, %17 ]
  %21 = phi ptr [ %24, %19 ], [ %0, %17 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = load ptr, ptr %20, align 8, !tbaa !34
  store ptr %23, ptr %21, align 8, !tbaa !34
  store ptr %22, ptr %20, align 8, !tbaa !34
  %24 = getelementptr inbounds ptr, ptr %21, i64 1
  %25 = getelementptr inbounds ptr, ptr %20, i64 1
  %26 = icmp eq ptr %24, %1
  br i1 %26, label %111, label %19, !llvm.loop !87

27:                                               ; preds = %7
  %28 = sub i64 %8, %12
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  br label %30

30:                                               ; preds = %96, %27
  %31 = phi i64 [ %11, %27 ], [ %97, %96 ]
  %32 = phi i64 [ %14, %27 ], [ %98, %96 ]
  %33 = phi ptr [ %0, %27 ], [ %99, %96 ]
  %34 = phi ptr [ undef, %27 ], [ %100, %96 ]
  %35 = sub nsw i64 %31, %32
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = icmp eq i64 %32, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = load ptr, ptr %33, align 8, !tbaa !34
  %41 = getelementptr inbounds ptr, ptr %33, i64 %31
  %42 = icmp eq i64 %31, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %33, i64 1
  %45 = shl nsw i64 %31, 3
  %46 = add nsw i64 %45, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr nonnull align 8 %44, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds ptr, ptr %41, i64 -1
  store ptr %40, ptr %48, align 8, !tbaa !34
  br label %111

49:                                               ; preds = %37
  %50 = icmp sgt i64 %35, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = getelementptr ptr, ptr %33, i64 %32
  br label %60

53:                                               ; preds = %60, %49
  %54 = phi ptr [ %33, %49 ], [ %66, %60 ]
  %55 = srem i64 %31, %32
  %56 = icmp eq i64 %55, 0
  %57 = sub nsw i64 %32, %55
  %58 = select i1 %56, i64 0, i64 %32
  %59 = select i1 %56, ptr %29, ptr %34
  br i1 %56, label %111, label %96

60:                                               ; preds = %51, %60
  %61 = phi i64 [ %68, %60 ], [ 0, %51 ]
  %62 = phi ptr [ %67, %60 ], [ %52, %51 ]
  %63 = phi ptr [ %66, %60 ], [ %33, %51 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  store ptr %65, ptr %63, align 8, !tbaa !34
  store ptr %64, ptr %62, align 8, !tbaa !34
  %66 = getelementptr inbounds ptr, ptr %63, i64 1
  %67 = getelementptr inbounds ptr, ptr %62, i64 1
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %35
  br i1 %69, label %53, label %60, !llvm.loop !88

70:                                               ; preds = %30
  %71 = icmp eq i64 %35, 1
  %72 = getelementptr inbounds ptr, ptr %33, i64 %31
  br i1 %71, label %73, label %85

73:                                               ; preds = %70
  %74 = getelementptr inbounds ptr, ptr %72, i64 -1
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %74, %33
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = ptrtoint ptr %74 to i64
  %79 = ptrtoint ptr %33 to i64
  %80 = sub i64 %78, %79
  %81 = ashr exact i64 %80, 3
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds ptr, ptr %72, i64 %82
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %83, ptr align 8 %33, i64 %80, i1 false)
  br label %84

84:                                               ; preds = %73, %77
  store ptr %75, ptr %33, align 8, !tbaa !34
  br label %111

85:                                               ; preds = %70
  %86 = sub i64 0, %35
  %87 = getelementptr inbounds ptr, ptr %72, i64 %86
  %88 = icmp sgt i64 %32, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %101, %85
  %90 = phi ptr [ %87, %85 ], [ %33, %101 ]
  %91 = srem i64 %31, %35
  %92 = icmp eq i64 %91, 0
  %93 = select i1 %92, i64 0, i64 %35
  %94 = select i1 %92, i64 %35, i64 %91
  %95 = select i1 %92, ptr %29, ptr %34
  br i1 %92, label %111, label %96

96:                                               ; preds = %89, %53
  %97 = phi i64 [ %58, %53 ], [ %93, %89 ]
  %98 = phi i64 [ %57, %53 ], [ %94, %89 ]
  %99 = phi ptr [ %54, %53 ], [ %90, %89 ]
  %100 = phi ptr [ %59, %53 ], [ %95, %89 ]
  br label %30, !llvm.loop !89

101:                                              ; preds = %85, %101
  %102 = phi i64 [ %109, %101 ], [ 0, %85 ]
  %103 = phi ptr [ %106, %101 ], [ %72, %85 ]
  %104 = phi ptr [ %105, %101 ], [ %87, %85 ]
  %105 = getelementptr inbounds ptr, ptr %104, i64 -1
  %106 = getelementptr inbounds ptr, ptr %103, i64 -1
  %107 = load ptr, ptr %105, align 8, !tbaa !34
  %108 = load ptr, ptr %106, align 8, !tbaa !34
  store ptr %108, ptr %105, align 8, !tbaa !34
  store ptr %107, ptr %106, align 8, !tbaa !34
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %32
  br i1 %110, label %89, label %101, !llvm.loop !90

111:                                              ; preds = %53, %89, %19, %17, %84, %47, %5, %3
  %112 = phi ptr [ %2, %3 ], [ %0, %5 ], [ %29, %47 ], [ %29, %84 ], [ %1, %17 ], [ %1, %19 ], [ %59, %53 ], [ %95, %89 ]
  ret ptr %112
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 72}
!39 = !{!"_ZTS9RTBuilder", !40, i64 0, !36, i64 24, !36, i64 48, !41, i64 72, !36, i64 76, !36, i64 208}
!40 = !{!"_ZTSN9RTBuilderUt_E", !35, i64 0, !35, i64 8, !41, i64 16}
!41 = !{!"int", !36, i64 0}
!42 = !{!41, !41, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!39, !35, i64 8}
!49 = !{!39, !35, i64 0}
!50 = !{!39, !41, i64 16}
!51 = distinct !{!51, !44, !45}
!52 = distinct !{!52, !44, !45}
!53 = !{!54, !35, i64 0}
!54 = !{!"_ZTSN9RTBuilder6ObjectE", !35, i64 0, !47, i64 8, !36, i64 12, !41, i64 36}
!55 = !{!54, !47, i64 8}
!56 = distinct !{!56, !44, !45}
!57 = !{i64 0, i64 65}
!58 = distinct !{!58, !44, !45}
!59 = distinct !{!59, !44, !45}
!60 = distinct !{!60, !44, !45}
!61 = distinct !{!61, !44, !45}
!62 = distinct !{!62, !44, !45}
!63 = distinct !{!63, !44, !45}
!64 = !{!65, !47, i64 24}
!65 = !{!"_ZTS9SweepCost", !36, i64 0, !47, i64 24}
!66 = distinct !{!66, !44, !45}
!67 = distinct !{!67, !44, !45}
!68 = distinct !{!68, !44, !45}
!69 = !{!54, !41, i64 36}
!70 = distinct !{!70, !44, !45}
!71 = distinct !{!71, !44, !45}
!72 = distinct !{!72, !44, !45}
!73 = distinct !{!73, !44, !45}
!74 = distinct !{!74, !44, !45}
!75 = distinct !{!75, !44, !45}
!76 = distinct !{!76, !44, !45}
!77 = distinct !{!77, !44, !45}
!78 = distinct !{!78, !44, !45}
!79 = distinct !{!79, !44, !45}
!80 = distinct !{!80, !44, !45}
!81 = distinct !{!81, !44, !45}
!82 = distinct !{!82, !44, !45}
!83 = distinct !{!83, !44, !45}
!84 = distinct !{!84, !44, !45}
!85 = distinct !{!85, !44, !45}
!86 = distinct !{!86, !44, !45}
!87 = distinct !{!87, !44, !45}
!88 = distinct !{!88, !44, !45}
!89 = distinct !{!89, !44, !45}
!90 = distinct !{!90, !44, !45}
