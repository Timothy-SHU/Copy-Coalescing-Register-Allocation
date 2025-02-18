; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_instance.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_instance.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.InstanceRayObject = type { %struct.RayObject, ptr, ptr, ptr, [4 x [4 x float]], [4 x [4 x float]] }
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"InstanceRayObject\00", align 1
@_ZL12instance_api = internal global %struct.RayObjectAPI { ptr @_ZL31RE_rayobject_instance_intersectP9RayObjectP5Isect, ptr null, ptr null, ptr @_ZL26RE_rayobject_instance_freeP9RayObject, ptr @_ZL24RE_rayobject_instance_bbP9RayObjectPfS1_, ptr @_ZL26RE_rayobject_instance_costP9RayObject, ptr @_ZL29RE_rayobject_instance_hint_bbP9RayObjectP7RayHintPfS3_ }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @RE_rayobject_instance_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 176, ptr noundef nonnull @.str)
  store ptr @_ZL12instance_api, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 5
  tail call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef %1)
  %11 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 4
  %12 = tail call zeroext i1 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10)
  %13 = ptrtoint ptr %6 to i64
  %14 = or i64 %13, 2
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL31RE_rayobject_instance_intersectP9RayObjectP5Isect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp ne ptr %5, %7
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  store ptr %13, ptr %4, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %11, %2
  %15 = load float, ptr %1, align 4, !tbaa !50
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 4
  tail call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %1)
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %20)
  %35 = load float, ptr %20, align 4, !tbaa !50
  %36 = load float, ptr %22, align 4, !tbaa !50
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %37)
  %39 = load float, ptr %24, align 4, !tbaa !50
  %40 = tail call noundef float @llvm.fmuladd.f32(float %39, float %39, float %38)
  %41 = fcmp ogt float %40, 0x38AA95A5C0000000
  br i1 %41, label %42, label %51

42:                                               ; preds = %14
  %43 = tail call float @sqrtf(float noundef %40) #6
  %44 = fdiv float 1.000000e+00, %43
  %45 = load float, ptr %20, align 4, !tbaa !50
  %46 = fmul float %45, %44
  store float %46, ptr %20, align 4, !tbaa !50
  %47 = load float, ptr %22, align 4, !tbaa !50
  %48 = fmul float %44, %47
  store float %48, ptr %22, align 4, !tbaa !50
  %49 = load float, ptr %24, align 4, !tbaa !50
  %50 = fmul float %44, %49
  br label %52

51:                                               ; preds = %14
  store float 0.000000e+00, ptr %20, align 4, !tbaa !50
  store float 0.000000e+00, ptr %22, align 4, !tbaa !50
  br label %52

52:                                               ; preds = %42, %51
  %53 = phi float [ 0.000000e+00, %51 ], [ %50, %42 ]
  %54 = phi float [ 0.000000e+00, %51 ], [ %43, %42 ]
  store float %53, ptr %24, align 4, !tbaa !50
  %55 = load float, ptr %32, align 8, !tbaa !51
  %56 = fmul float %54, %55
  store float %56, ptr %32, align 8, !tbaa !51
  br label %57

57:                                               ; preds = %52, %57
  %58 = phi i64 [ 0, %52 ], [ %77, %57 ]
  %59 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fdiv float 1.000000e+00, %60
  %62 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %58
  store float %61, ptr %62, align 4, !tbaa !50
  %63 = fcmp olt float %61, 0.000000e+00
  %64 = zext i1 %63 to i32
  %65 = shl nuw nsw i64 %58, 1
  %66 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %65
  store i32 %64, ptr %66, align 4, !tbaa !52
  %67 = xor i1 %63, true
  %68 = zext i1 %67 to i32
  %69 = or disjoint i64 %65, 1
  %70 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %69
  store i32 %68, ptr %70, align 4, !tbaa !52
  %71 = select i1 %63, i32 3, i32 0
  %72 = trunc i64 %58 to i32
  %73 = add nuw nsw i32 %71, %72
  store i32 %73, ptr %66, align 4, !tbaa !52
  %74 = select i1 %63, i32 0, i32 3
  %75 = trunc i64 %58 to i32
  %76 = add nuw nsw i32 %74, %75
  store i32 %76, ptr %70, align 4, !tbaa !52
  %77 = add nuw nsw i64 %58, 1
  %78 = icmp eq i64 %77, 3
  br i1 %78, label %79, label %57, !llvm.loop !53

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = tail call i32 @RE_rayobject_intersect(ptr noundef %81, ptr noundef nonnull %1)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store float %33, ptr %32, align 8, !tbaa !51
  br label %109

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %86 = load float, ptr %32, align 8, !tbaa !51
  %87 = load float, ptr %20, align 4, !tbaa !50
  %88 = fmul float %86, %87
  store float %88, ptr %3, align 4, !tbaa !50
  %89 = load float, ptr %22, align 4, !tbaa !50
  %90 = fmul float %86, %89
  %91 = getelementptr inbounds float, ptr %3, i64 1
  store float %90, ptr %91, align 4, !tbaa !50
  %92 = load float, ptr %24, align 4, !tbaa !50
  %93 = fmul float %86, %92
  %94 = getelementptr inbounds float, ptr %3, i64 2
  store float %93, ptr %94, align 4, !tbaa !50
  %95 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 5
  call void @mul_mat3_m4_v3(ptr noundef nonnull %95, ptr noundef nonnull %3)
  %96 = load float, ptr %3, align 4, !tbaa !50
  %97 = load float, ptr %91, align 4, !tbaa !50
  %98 = fmul float %97, %97
  %99 = call float @llvm.fmuladd.f32(float %96, float %96, float %98)
  %100 = load float, ptr %94, align 4, !tbaa !50
  %101 = call noundef float @llvm.fmuladd.f32(float %100, float %100, float %99)
  %102 = call noundef float @sqrtf(float noundef %101) #6
  store float %102, ptr %32, align 8, !tbaa !51
  %103 = load ptr, ptr %6, align 8, !tbaa !43
  %104 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  store ptr %103, ptr %104, align 8, !tbaa !56
  %105 = ptrtoint ptr %0 to i64
  %106 = or i64 %105, 2
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %107, ptr %108, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  br label %109

109:                                              ; preds = %85, %84
  store float %15, ptr %1, align 4, !tbaa !50
  store float %17, ptr %16, align 4, !tbaa !50
  store float %19, ptr %18, align 4, !tbaa !50
  store float %21, ptr %20, align 4, !tbaa !50
  store float %23, ptr %22, align 4, !tbaa !50
  store float %25, ptr %24, align 4, !tbaa !50
  store float %27, ptr %26, align 4, !tbaa !50
  store float %29, ptr %28, align 4, !tbaa !50
  store float %31, ptr %30, align 4, !tbaa !50
  br i1 %10, label %112, label %110

110:                                              ; preds = %109
  %111 = load ptr, ptr %6, align 8, !tbaa !43
  store ptr %111, ptr %4, align 8, !tbaa !45
  br label %112

112:                                              ; preds = %110, %109
  br label %113

113:                                              ; preds = %112, %113
  %114 = phi i64 [ %131, %113 ], [ 0, %112 ]
  %115 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !50
  %117 = fcmp olt float %116, 0.000000e+00
  %118 = zext i1 %117 to i32
  %119 = shl nuw nsw i64 %114, 1
  %120 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %119
  store i32 %118, ptr %120, align 4, !tbaa !52
  %121 = xor i1 %117, true
  %122 = zext i1 %121 to i32
  %123 = or disjoint i64 %119, 1
  %124 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %123
  store i32 %122, ptr %124, align 4, !tbaa !52
  %125 = select i1 %117, i32 3, i32 0
  %126 = trunc i64 %114 to i32
  %127 = add nuw nsw i32 %125, %126
  store i32 %127, ptr %120, align 4, !tbaa !52
  %128 = select i1 %117, i32 0, i32 3
  %129 = trunc i64 %114 to i32
  %130 = add nuw nsw i32 %128, %129
  store i32 %130, ptr %124, align 4, !tbaa !52
  %131 = add nuw nsw i64 %114, 1
  %132 = icmp eq i64 %131, 3
  br i1 %132, label %133, label %113, !llvm.loop !58

133:                                              ; preds = %113
  ret i32 %82
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL26RE_rayobject_instance_freeP9RayObject(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24RE_rayobject_instance_bbP9RayObjectPfS1_(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !50
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !50
  %9 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %10, align 4, !tbaa !50
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  call void @RE_rayobject_merge_bb(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %13 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = getelementptr inbounds float, ptr %2, i64 2
  br label %20

20:                                               ; preds = %3, %62
  %21 = phi i32 [ 0, %3 ], [ %63, %62 ]
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %33, %22 ]
  %24 = trunc i64 %23 to i32
  %25 = shl nuw nsw i32 1, %24
  %26 = and i32 %25, %21
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %23
  %29 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %23
  %30 = select i1 %27, ptr %29, ptr %28
  %31 = load float, ptr %30, align 4, !tbaa !50
  %32 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %23
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = add nuw nsw i64 %23, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %22, !llvm.loop !59

35:                                               ; preds = %22
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %6)
  %36 = load float, ptr %1, align 4, !tbaa !50
  %37 = load float, ptr %6, align 4, !tbaa !50
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store float %37, ptr %1, align 4, !tbaa !50
  br label %40

40:                                               ; preds = %39, %35
  %41 = load float, ptr %14, align 4, !tbaa !50
  %42 = load float, ptr %15, align 4, !tbaa !50
  %43 = fcmp ogt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store float %42, ptr %14, align 4, !tbaa !50
  br label %45

45:                                               ; preds = %44, %40
  %46 = load float, ptr %16, align 4, !tbaa !50
  %47 = load float, ptr %17, align 4, !tbaa !50
  %48 = fcmp ogt float %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store float %47, ptr %16, align 4, !tbaa !50
  br label %50

50:                                               ; preds = %49, %45
  %51 = load float, ptr %2, align 4, !tbaa !50
  %52 = fcmp olt float %51, %37
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store float %37, ptr %2, align 4, !tbaa !50
  br label %54

54:                                               ; preds = %53, %50
  %55 = load float, ptr %18, align 4, !tbaa !50
  %56 = fcmp olt float %55, %42
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store float %42, ptr %18, align 4, !tbaa !50
  br label %58

58:                                               ; preds = %57, %54
  %59 = load float, ptr %19, align 4, !tbaa !50
  %60 = fcmp olt float %59, %47
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store float %47, ptr %19, align 4, !tbaa !50
  br label %62

62:                                               ; preds = %58, %61
  %63 = add nuw nsw i32 %21, 1
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %20, !llvm.loop !60

65:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZL26RE_rayobject_instance_costP9RayObject(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = tail call float @RE_rayobject_cost(ptr noundef %3)
  %5 = fadd float %4, 1.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL29RE_rayobject_instance_hint_bbP9RayObjectP7RayHintPfS3_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RE_rayobject_cost(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"_ZTS17InstanceRayObject", !40, i64 0, !35, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 112}
!40 = !{!"_ZTS9RayObject", !35, i64 0, !41, i64 8}
!41 = !{!"_ZTS16RayObjectControl", !35, i64 0, !35, i64 8}
!42 = !{!39, !35, i64 24}
!43 = !{!39, !35, i64 32}
!44 = !{!39, !35, i64 40}
!45 = !{!46, !35, i64 144}
!46 = !{!"_ZTS5Isect", !36, i64 0, !36, i64 12, !47, i64 24, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 76, !48, i64 88, !48, i64 92, !48, i64 96, !48, i64 100, !35, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !49, i64 144, !35, i64 160, !35, i64 168}
!47 = !{!"float", !36, i64 0}
!48 = !{!"int", !36, i64 0}
!49 = !{!"_ZTSN5IsectUt_E", !35, i64 0, !35, i64 8}
!50 = !{!47, !47, i64 0}
!51 = !{!46, !47, i64 24}
!52 = !{!48, !48, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!46, !35, i64 128}
!57 = !{!46, !35, i64 160}
!58 = distinct !{!58, !54, !55}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
