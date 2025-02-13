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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @RE_rayobject_instance_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 176, ptr noundef nonnull @.str) #10
  store ptr @_ZL12instance_api, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 5
  tail call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef %1) #10
  %11 = getelementptr inbounds %struct.InstanceRayObject, ptr %6, i64 0, i32 4
  %12 = tail call zeroext i1 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #10
  %13 = ptrtoint ptr %6 to i64
  %14 = or i64 %13, 2
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZL31RE_rayobject_instance_intersectP9RayObjectP5Isect(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !45 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp ne ptr %8, %10
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  store ptr %16, ptr %7, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %14, %2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %3, ptr noundef nonnull %1) #10
  %18 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %4, ptr noundef nonnull %18) #10
  %19 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %5, ptr noundef nonnull %19) #10
  %20 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 4
  tail call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %1) #10
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %18) #10
  %23 = tail call fastcc noundef float @_ZL12normalize_v3Pf(ptr noundef nonnull %18) #10
  %24 = load float, ptr %20, align 8, !tbaa !51
  %25 = fmul float %23, %24
  store float %25, ptr %20, align 8, !tbaa !51
  br label %26

26:                                               ; preds = %17, %26
  %27 = phi i64 [ 0, %17 ], [ %42, %26 ]
  %28 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !52
  %30 = fdiv float 1.000000e+00, %29
  %31 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %27
  store float %30, ptr %31, align 4, !tbaa !52
  %32 = fcmp olt float %30, 0.000000e+00
  %33 = shl nuw nsw i64 %27, 1
  %34 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %33
  %35 = or disjoint i64 %33, 1
  %36 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %35
  %37 = select i1 %32, i32 3, i32 0
  %38 = trunc i64 %27 to i32
  %39 = add nuw nsw i32 %37, %38
  store i32 %39, ptr %34, align 4, !tbaa !53
  %40 = select i1 %32, i32 0, i32 3
  %41 = add nuw nsw i32 %40, %38
  store i32 %41, ptr %36, align 4, !tbaa !53
  %42 = add nuw nsw i64 %27, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %26, !llvm.loop !54

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = tail call i32 @RE_rayobject_intersect(ptr noundef %46, ptr noundef nonnull %1) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %50 = load float, ptr %20, align 8, !tbaa !51
  call fastcc void @_ZL11mul_v3_v3flPfPKff(ptr noundef nonnull %6, ptr noundef nonnull %18, float noundef %50) #10
  %51 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 5
  call void @mul_mat3_m4_v3(ptr noundef nonnull %51, ptr noundef nonnull %6) #10
  %52 = call fastcc noundef float @_ZL6len_v3PKf(ptr noundef nonnull %6) #10
  %53 = load ptr, ptr %9, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  store ptr %53, ptr %54, align 8, !tbaa !56
  %55 = ptrtoint ptr %0 to i64
  %56 = or i64 %55, 2
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %57, ptr %58, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %59

59:                                               ; preds = %44, %49
  %60 = phi float [ %52, %49 ], [ %21, %44 ]
  store float %60, ptr %20, align 8
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %1, ptr noundef nonnull %3) #10
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %18, ptr noundef nonnull %4) #10
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %19, ptr noundef nonnull %5) #10
  br i1 %13, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %9, align 8, !tbaa !43
  store ptr %62, ptr %7, align 8, !tbaa !46
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %64
  %65 = phi i64 [ %78, %64 ], [ 0, %63 ]
  %66 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %65
  %67 = load float, ptr %66, align 4, !tbaa !52
  %68 = fcmp olt float %67, 0.000000e+00
  %69 = shl nuw nsw i64 %65, 1
  %70 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %69
  %71 = or disjoint i64 %69, 1
  %72 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %71
  %73 = select i1 %68, i32 3, i32 0
  %74 = trunc i64 %65 to i32
  %75 = add nuw nsw i32 %73, %74
  store i32 %75, ptr %70, align 4, !tbaa !53
  %76 = select i1 %68, i32 0, i32 3
  %77 = add nuw nsw i32 %76, %74
  store i32 %77, ptr %72, align 4, !tbaa !53
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp eq i64 %78, 3
  br i1 %79, label %80, label %64, !llvm.loop !58

80:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL26RE_rayobject_instance_freeP9RayObject(ptr noundef %0) #0 !PGOFuncName !59 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL24RE_rayobject_instance_bbP9RayObjectPfS1_(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 !PGOFuncName !60 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %7, align 8, !tbaa !52
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !52
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %8, align 8, !tbaa !52
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  call void @RE_rayobject_merge_bb(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %11 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = getelementptr inbounds float, ptr %2, i64 2
  br label %18

18:                                               ; preds = %3, %60
  %19 = phi i32 [ 0, %3 ], [ %61, %60 ]
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %31, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = shl nuw nsw i32 1, %22
  %24 = and i32 %23, %19
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %21
  %27 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %21
  %28 = select i1 %25, ptr %27, ptr %26
  %29 = load float, ptr %28, align 4, !tbaa !52
  %30 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %21
  store float %29, ptr %30, align 4, !tbaa !52
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %31, 3
  br i1 %32, label %33, label %20, !llvm.loop !61

33:                                               ; preds = %20
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %6) #10
  %34 = load float, ptr %1, align 4, !tbaa !52
  %35 = load float, ptr %6, align 4, !tbaa !52
  %36 = fcmp ogt float %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store float %35, ptr %1, align 4, !tbaa !52
  br label %38

38:                                               ; preds = %37, %33
  %39 = load float, ptr %12, align 4, !tbaa !52
  %40 = load float, ptr %13, align 4, !tbaa !52
  %41 = fcmp ogt float %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store float %40, ptr %12, align 4, !tbaa !52
  br label %43

43:                                               ; preds = %42, %38
  %44 = load float, ptr %14, align 4, !tbaa !52
  %45 = load float, ptr %15, align 4, !tbaa !52
  %46 = fcmp ogt float %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store float %45, ptr %14, align 4, !tbaa !52
  br label %48

48:                                               ; preds = %47, %43
  %49 = load float, ptr %2, align 4, !tbaa !52
  %50 = fcmp olt float %49, %35
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store float %35, ptr %2, align 4, !tbaa !52
  br label %52

52:                                               ; preds = %51, %48
  %53 = load float, ptr %16, align 4, !tbaa !52
  %54 = fcmp olt float %53, %40
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store float %40, ptr %16, align 4, !tbaa !52
  br label %56

56:                                               ; preds = %55, %52
  %57 = load float, ptr %17, align 4, !tbaa !52
  %58 = fcmp olt float %57, %45
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store float %45, ptr %17, align 4, !tbaa !52
  br label %60

60:                                               ; preds = %56, %59
  %61 = add nuw nsw i32 %19, 1
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %18, !llvm.loop !62

63:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef float @_ZL26RE_rayobject_instance_costP9RayObject(ptr nocapture noundef readonly %0) #0 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.InstanceRayObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = tail call float @RE_rayobject_cost(ptr noundef %3) #10
  %5 = fadd float %4, 1.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZL29RE_rayobject_instance_hint_bbP9RayObjectP7RayHintPfS3_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 !PGOFuncName !64 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10copy_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !65 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL12normalize_v3Pf(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !66 {
  %2 = tail call fastcc noundef float @_ZL15normalize_v3_v3PfPKf(ptr noundef %0, ptr noundef %0) #10
  ret float %2
}

; Function Attrs: optsize
declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11mul_v3_v3flPfPKff(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !67 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL6len_v3PKf(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !68 {
  %2 = tail call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef %0, ptr noundef %0) #10
  %3 = tail call float @sqrtf(float noundef %2) #12
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL15normalize_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !69 {
  %3 = tail call fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr noundef %1, ptr noundef %1) #10
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @_ZL11mul_v3_v3flPfPKff(ptr noundef %0, ptr noundef %1, float noundef %7) #10
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @_ZL7zero_v3Pf(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @_ZL8dot_v3v3PKfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !70 {
  %3 = load float, ptr %0, align 4, !tbaa !52
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZL7zero_v3Pf(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !71 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !52
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RE_rayobject_cost(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!45 = !{!"rayobject_instance.cpp:_ZL31RE_rayobject_instance_intersectP9RayObjectP5Isect"}
!46 = !{!47, !35, i64 144}
!47 = !{!"_ZTS5Isect", !36, i64 0, !36, i64 12, !48, i64 24, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 76, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !35, i64 104, !48, i64 112, !48, i64 116, !49, i64 120, !50, i64 128, !50, i64 144, !35, i64 160, !35, i64 168}
!48 = !{!"float", !36, i64 0}
!49 = !{!"int", !36, i64 0}
!50 = !{!"_ZTSN5IsectUt_E", !35, i64 0, !35, i64 8}
!51 = !{!47, !48, i64 24}
!52 = !{!48, !48, i64 0}
!53 = !{!49, !49, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!47, !35, i64 128}
!57 = !{!47, !35, i64 160}
!58 = distinct !{!58, !55}
!59 = !{!"rayobject_instance.cpp:_ZL26RE_rayobject_instance_freeP9RayObject"}
!60 = !{!"rayobject_instance.cpp:_ZL24RE_rayobject_instance_bbP9RayObjectPfS1_"}
!61 = distinct !{!61, !55}
!62 = distinct !{!62, !55}
!63 = !{!"rayobject_instance.cpp:_ZL26RE_rayobject_instance_costP9RayObject"}
!64 = !{!"rayobject_instance.cpp:_ZL29RE_rayobject_instance_hint_bbP9RayObjectP7RayHintPfS3_"}
!65 = !{!"rayobject_instance.cpp:_ZL10copy_v3_v3PfPKf"}
!66 = !{!"rayobject_instance.cpp:_ZL12normalize_v3Pf"}
!67 = !{!"rayobject_instance.cpp:_ZL11mul_v3_v3flPfPKff"}
!68 = !{!"rayobject_instance.cpp:_ZL6len_v3PKf"}
!69 = !{!"rayobject_instance.cpp:_ZL15normalize_v3_v3PfPKf"}
!70 = !{!"rayobject_instance.cpp:_ZL8dot_v3v3PKfS0_"}
!71 = !{!"rayobject_instance.cpp:_ZL7zero_v3Pf"}
