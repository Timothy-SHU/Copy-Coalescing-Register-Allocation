; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.VlakPrimitive = type { ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.RayObjectControl = type { ptr, ptr }
%struct.RayObject = type { ptr, %struct.RayObjectControl }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @RE_rayface_from_vlak(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 5
  store ptr %1, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 6
  store ptr %2, ptr %13, align 8, !tbaa !45
  %14 = load float, ptr %4, align 4, !tbaa !46
  store float %14, ptr %0, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %4, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !46
  %18 = getelementptr inbounds float, ptr %4, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !46
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1
  %22 = load float, ptr %6, align 4, !tbaa !46
  store float %22, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1, i64 1
  store float %24, ptr %25, align 4, !tbaa !46
  %26 = getelementptr inbounds float, ptr %6, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1, i64 2
  store float %27, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2
  %30 = load float, ptr %8, align 4, !tbaa !46
  store float %30, ptr %29, align 4, !tbaa !46
  %31 = getelementptr inbounds float, ptr %8, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !46
  %33 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2, i64 1
  store float %32, ptr %33, align 4, !tbaa !46
  %34 = getelementptr inbounds float, ptr %8, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !46
  %36 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2, i64 2
  store float %35, ptr %36, align 4, !tbaa !46
  br i1 %11, label %46, label %37

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3
  %39 = load float, ptr %10, align 4, !tbaa !46
  store float %39, ptr %38, align 4, !tbaa !46
  %40 = getelementptr inbounds float, ptr %10, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !46
  %42 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3, i64 1
  store float %41, ptr %42, align 4, !tbaa !46
  %43 = getelementptr inbounds float, ptr %10, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !46
  %45 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3, i64 2
  store float %44, ptr %45, align 4, !tbaa !46
  br label %46

46:                                               ; preds = %3, %37
  %47 = phi i32 [ 1, %37 ], [ 0, %3 ]
  %48 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 4
  store i32 %47, ptr %48, align 4, !tbaa !48
  %49 = ptrtoint ptr %0 to i64
  %50 = or i64 %49, 1
  %51 = inttoptr i64 %50 to ptr
  ret ptr %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull ptr @RE_rayface_from_coords(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 6
  store ptr %2, ptr %9, align 8, !tbaa !45
  %10 = load float, ptr %3, align 4, !tbaa !46
  store float %10, ptr %0, align 4, !tbaa !46
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !46
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = getelementptr inbounds float, ptr %0, i64 2
  store float %15, ptr %16, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1
  %18 = load float, ptr %4, align 4, !tbaa !46
  store float %18, ptr %17, align 4, !tbaa !46
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1, i64 1
  store float %20, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds float, ptr %4, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 1, i64 2
  store float %23, ptr %24, align 4, !tbaa !46
  %25 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2
  %26 = load float, ptr %5, align 4, !tbaa !46
  store float %26, ptr %25, align 4, !tbaa !46
  %27 = getelementptr inbounds float, ptr %5, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2, i64 1
  store float %28, ptr %29, align 4, !tbaa !46
  %30 = getelementptr inbounds float, ptr %5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !46
  %32 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 2, i64 2
  store float %31, ptr %32, align 4, !tbaa !46
  %33 = icmp eq ptr %6, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3
  %36 = load float, ptr %6, align 4, !tbaa !46
  store float %36, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds float, ptr %6, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !46
  %39 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3, i64 1
  store float %38, ptr %39, align 4, !tbaa !46
  %40 = getelementptr inbounds float, ptr %6, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !46
  %42 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 3, i64 2
  store float %41, ptr %42, align 4, !tbaa !46
  br label %43

43:                                               ; preds = %7, %34
  %44 = phi i32 [ 1, %34 ], [ 0, %7 ]
  %45 = getelementptr inbounds %struct.RayFace, ptr %0, i64 0, i32 4
  store i32 %44, ptr %45, align 4, !tbaa !48
  %46 = ptrtoint ptr %0 to i64
  %47 = or i64 %46, 1
  %48 = inttoptr i64 %47 to ptr
  ret ptr %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @RE_vlakprimitive_from_vlak(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  store ptr %1, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.VlakPrimitive, ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = ptrtoint ptr %0 to i64
  %6 = or i64 %5, 3
  %7 = inttoptr i64 %6 to ptr
  ret ptr %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @RE_rayobject_raycast(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %23, %3 ]
  %5 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = fdiv float 1.000000e+00, %6
  %8 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 %4
  store float %7, ptr %8, align 4, !tbaa !46
  %9 = fcmp olt float %7, 0.000000e+00
  %10 = zext i1 %9 to i32
  %11 = shl nuw nsw i64 %4, 1
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %11
  store i32 %10, ptr %12, align 4, !tbaa !52
  %13 = xor i1 %9, true
  %14 = zext i1 %13 to i32
  %15 = or disjoint i64 %11, 1
  %16 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !52
  %17 = select i1 %9, i32 3, i32 0
  %18 = trunc i64 %4 to i32
  %19 = add nuw nsw i32 %17, %18
  store i32 %19, ptr %12, align 4, !tbaa !52
  %20 = select i1 %9, i32 0, i32 3
  %21 = trunc i64 %4 to i32
  %22 = add nuw nsw i32 %20, %21
  store i32 %22, ptr %16, align 4, !tbaa !52
  %23 = add nuw nsw i64 %4, 1
  %24 = icmp eq i64 %23, 3
  br i1 %24, label %25, label %3, !llvm.loop !53

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %31, ptr noundef %1)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %29, %25
  %37 = tail call i32 @RE_rayobject_intersect(ptr noundef %0, ptr noundef %1)
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ 1, %33 ], [ %39, %36 ]
  ret i32 %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @RE_rayobject_intersect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.RayFace, align 8
  %4 = alloca %struct.RayFace, align 8
  %5 = alloca %struct.RayFace, align 8
  %6 = ptrtoint ptr %0 to i64
  %7 = and i64 %6, 3
  switch i64 %7, label %1057 [
    i64 1, label %8
    i64 3, label %506
    i64 2, label %1051
  ]

8:                                                ; preds = %2
  %9 = and i64 %6, -4
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp ne ptr %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %1057, label %22

22:                                               ; preds = %16, %8
  %23 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !62
  switch i32 %24, label %115 [
    i32 1, label %25
    i32 2, label %59
    i32 3, label %99
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.VlakRen, ptr %27, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !63
  %30 = icmp sgt i8 %29, -1
  br i1 %30, label %56, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds %struct.VlakRen, ptr %27, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  br i1 %34, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 51
  %39 = load i32, ptr %38, align 4, !tbaa !65
  %40 = lshr i32 %39, 13
  %41 = and i32 %40, 1
  %42 = xor i32 %41, 1
  br label %56

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 53
  %45 = load i32, ptr %44, align 4, !tbaa !72
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !73
  %51 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !74
  %53 = and i32 %52, %50
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %48, %43, %37, %25
  %57 = phi i32 [ %42, %37 ], [ 0, %25 ], [ 0, %43 ], [ %55, %48 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %1057, label %115

59:                                               ; preds = %22
  %60 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.VlakRen, ptr %61, i64 0, i32 7
  %63 = load i8, ptr %62, align 1, !tbaa !63
  %64 = icmp sgt i8 %63, -1
  br i1 %64, label %90, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !56
  %68 = icmp eq i32 %67, 1
  %69 = getelementptr inbounds %struct.VlakRen, ptr %61, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !64
  br i1 %68, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Material, ptr %70, i64 0, i32 51
  %73 = load i32, ptr %72, align 4, !tbaa !65
  %74 = lshr i32 %73, 13
  %75 = and i32 %74, 1
  %76 = xor i32 %75, 1
  br label %90

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.Material, ptr %70, i64 0, i32 53
  %79 = load i32, ptr %78, align 4, !tbaa !72
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !74
  %87 = and i32 %86, %84
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %82, %77, %71, %59
  %91 = phi i32 [ %76, %71 ], [ 0, %59 ], [ 0, %77 ], [ %89, %82 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %1057, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.VlakRen, ptr %61, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !64
  %96 = getelementptr inbounds %struct.Material, ptr %95, i64 0, i32 2
  %97 = load i16, ptr %96, align 8, !tbaa !76
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %115, label %1057

99:                                               ; preds = %22
  %100 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !77
  %102 = getelementptr inbounds %struct.ObjectRen, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !78
  %104 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !80
  %106 = icmp eq ptr %103, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 53
  %109 = load i16, ptr %108, align 4, !tbaa !81
  %110 = and i16 %109, 1
  %111 = zext nneg i16 %110 to i32
  br label %112

112:                                              ; preds = %107, %99
  %113 = phi i32 [ 0, %99 ], [ %111, %107 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %1057, label %115

115:                                              ; preds = %112, %93, %56, %22
  %116 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %117 = load float, ptr %116, align 8, !tbaa !85
  %118 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %119 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 4
  %120 = load i32, ptr %119, align 4, !tbaa !48
  %121 = load float, ptr %10, align 4, !tbaa !46
  %122 = getelementptr inbounds float, ptr %10, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !46
  %124 = getelementptr inbounds float, ptr %10, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !46
  %126 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !46
  %128 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 1, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !46
  %130 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 1, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !46
  %132 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 2
  %133 = load float, ptr %132, align 4, !tbaa !46
  %134 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 2, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !46
  %136 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 2, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !46
  %138 = load float, ptr %118, align 4, !tbaa !46
  %139 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !46
  %141 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !46
  %143 = fsub float %133, %127
  %144 = fsub float %135, %129
  %145 = fsub float %137, %131
  %146 = fsub float %133, %121
  %147 = fsub float %135, %123
  %148 = fsub float %137, %125
  %149 = fneg float %142
  %150 = fmul float %147, %149
  %151 = tail call float @llvm.fmuladd.f32(float %140, float %148, float %150)
  %152 = fneg float %138
  %153 = fmul float %148, %152
  %154 = tail call float @llvm.fmuladd.f32(float %142, float %146, float %153)
  %155 = fneg float %140
  %156 = fmul float %146, %155
  %157 = tail call float @llvm.fmuladd.f32(float %138, float %147, float %156)
  %158 = fmul float %144, %154
  %159 = tail call float @llvm.fmuladd.f32(float %143, float %151, float %158)
  %160 = tail call noundef float @llvm.fmuladd.f32(float %145, float %157, float %159)
  %161 = load float, ptr %1, align 4, !tbaa !46
  %162 = fsub float %161, %133
  %163 = getelementptr inbounds float, ptr %1, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !46
  %165 = fsub float %164, %135
  %166 = getelementptr inbounds float, ptr %1, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !46
  %168 = fsub float %167, %137
  %169 = fmul float %154, %165
  %170 = tail call float @llvm.fmuladd.f32(float %162, float %151, float %169)
  %171 = tail call noundef float @llvm.fmuladd.f32(float %168, float %157, float %170)
  %172 = fcmp une float %160, 0.000000e+00
  br i1 %172, label %173, label %205

173:                                              ; preds = %115
  %174 = fdiv float 1.000000e+00, %160
  %175 = fmul float %174, %171
  %176 = fcmp olt float %175, 0xBE80000000000000
  %177 = fcmp ogt float %175, 0xBFEFFFFFC0000000
  %178 = and i1 %176, %177
  br i1 %178, label %179, label %205

179:                                              ; preds = %173
  %180 = fneg float %168
  %181 = fmul float %144, %180
  %182 = tail call float @llvm.fmuladd.f32(float %165, float %145, float %181)
  %183 = fneg float %162
  %184 = fmul float %145, %183
  %185 = tail call float @llvm.fmuladd.f32(float %168, float %143, float %184)
  %186 = fneg float %165
  %187 = fmul float %143, %186
  %188 = tail call float @llvm.fmuladd.f32(float %162, float %144, float %187)
  %189 = fmul float %140, %185
  %190 = tail call float @llvm.fmuladd.f32(float %182, float %138, float %189)
  %191 = tail call noundef float @llvm.fmuladd.f32(float %188, float %142, float %190)
  %192 = fmul float %174, %191
  %193 = fcmp olt float %192, 0xBE80000000000000
  %194 = fadd float %175, %192
  %195 = fcmp ogt float %194, 0xBFEFFFFFC0000000
  %196 = and i1 %193, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %179
  %198 = fmul float %147, %185
  %199 = tail call float @llvm.fmuladd.f32(float %182, float %146, float %198)
  %200 = tail call noundef float @llvm.fmuladd.f32(float %188, float %148, float %199)
  %201 = fmul float %174, %200
  %202 = fcmp ogt float %201, 0x3E80000000000000
  %203 = fcmp olt float %201, %117
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %257, label %205

205:                                              ; preds = %197, %179, %173, %115
  %206 = icmp eq i32 %120, 0
  br i1 %206, label %257, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 3
  %209 = load float, ptr %208, align 4, !tbaa !46
  %210 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 3, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !46
  %212 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 3, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !46
  %214 = fsub float %133, %209
  %215 = fsub float %135, %211
  %216 = fsub float %137, %213
  %217 = fmul float %154, %215
  %218 = tail call float @llvm.fmuladd.f32(float %214, float %151, float %217)
  %219 = tail call noundef float @llvm.fmuladd.f32(float %216, float %157, float %218)
  %220 = fcmp une float %219, 0.000000e+00
  br i1 %220, label %221, label %257

221:                                              ; preds = %207
  %222 = fdiv float 1.000000e+00, %219
  %223 = fmul float %171, %222
  %224 = fcmp olt float %223, 0xBE80000000000000
  %225 = fcmp ogt float %223, 0xBFEFFFFFC0000000
  %226 = and i1 %224, %225
  br i1 %226, label %227, label %257

227:                                              ; preds = %221
  %228 = fneg float %168
  %229 = fmul float %215, %228
  %230 = tail call float @llvm.fmuladd.f32(float %165, float %216, float %229)
  %231 = fneg float %162
  %232 = fmul float %216, %231
  %233 = tail call float @llvm.fmuladd.f32(float %168, float %214, float %232)
  %234 = fneg float %165
  %235 = fmul float %214, %234
  %236 = tail call float @llvm.fmuladd.f32(float %162, float %215, float %235)
  %237 = fmul float %140, %233
  %238 = tail call float @llvm.fmuladd.f32(float %230, float %138, float %237)
  %239 = tail call noundef float @llvm.fmuladd.f32(float %236, float %142, float %238)
  %240 = fmul float %222, %239
  %241 = fcmp olt float %240, 0xBE80000000000000
  %242 = fadd float %223, %240
  %243 = fcmp ogt float %242, 0xBFEFFFFFC0000000
  %244 = and i1 %241, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %227
  %246 = fmul float %147, %233
  %247 = tail call float @llvm.fmuladd.f32(float %230, float %146, float %246)
  %248 = tail call noundef float @llvm.fmuladd.f32(float %236, float %148, float %247)
  %249 = fmul float %222, %248
  %250 = fcmp ogt float %249, 0x3E80000000000000
  %251 = fcmp olt float %249, %117
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = fadd float %223, 1.000000e+00
  %255 = fadd float %254, %240
  %256 = fneg float %255
  br label %257

257:                                              ; preds = %227, %245, %253, %221, %207, %205, %197
  %258 = phi float [ %201, %197 ], [ %117, %205 ], [ %117, %221 ], [ %117, %207 ], [ %249, %253 ], [ %117, %245 ], [ %117, %227 ]
  %259 = phi float [ %175, %197 ], [ undef, %205 ], [ undef, %221 ], [ undef, %207 ], [ %256, %253 ], [ undef, %245 ], [ undef, %227 ]
  %260 = phi float [ %192, %197 ], [ undef, %205 ], [ undef, %221 ], [ undef, %207 ], [ %240, %253 ], [ %240, %245 ], [ %240, %227 ]
  %261 = phi i1 [ false, %197 ], [ true, %205 ], [ true, %221 ], [ true, %207 ], [ false, %253 ], [ true, %245 ], [ true, %227 ]
  %262 = phi i32 [ 1, %197 ], [ 0, %205 ], [ 0, %221 ], [ 0, %207 ], [ 2, %253 ], [ 0, %245 ], [ 0, %227 ]
  br i1 %261, label %1057, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  %265 = load i32, ptr %264, align 8, !tbaa !86
  %266 = and i32 %265, 2
  %267 = icmp eq i32 %266, 0
  %268 = fcmp uge float %258, 0x3FB99999A0000000
  %269 = select i1 %267, i1 true, i1 %268
  %270 = or i1 %15, %269
  br i1 %270, label %496, label %271

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !61
  %274 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !45
  %276 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !77
  %278 = load ptr, ptr %273, align 8, !tbaa !87
  %279 = icmp eq ptr %278, null
  br i1 %279, label %496, label %285

280:                                              ; preds = %322
  %281 = getelementptr inbounds ptr, ptr %287, i64 1
  %282 = add nuw nsw i32 %288, 1
  %283 = load ptr, ptr %281, align 8, !tbaa !87
  %284 = icmp eq ptr %283, null
  br i1 %284, label %328, label %285, !llvm.loop !88

285:                                              ; preds = %271, %280
  %286 = phi ptr [ %283, %280 ], [ %278, %271 ]
  %287 = phi ptr [ %281, %280 ], [ %273, %271 ]
  %288 = phi i32 [ %282, %280 ], [ 0, %271 ]
  %289 = phi i8 [ %323, %280 ], [ 0, %271 ]
  %290 = tail call ptr @RE_vertren_get_origindex(ptr noundef %277, ptr noundef nonnull %286, i32 noundef 0)
  %291 = and i8 %289, 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %322

293:                                              ; preds = %285
  %294 = icmp eq ptr %290, null
  br label %295

295:                                              ; preds = %293, %314
  %296 = phi i8 [ %289, %293 ], [ %315, %314 ]
  %297 = phi i32 [ 0, %293 ], [ %316, %314 ]
  %298 = phi ptr [ %275, %293 ], [ %317, %314 ]
  %299 = load ptr, ptr %298, align 8, !tbaa !87
  %300 = icmp eq ptr %299, null
  br i1 %300, label %322, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %287, align 8, !tbaa !87
  %303 = icmp eq ptr %302, %299
  %304 = select i1 %303, i1 true, i1 %294
  %305 = select i1 %303, i8 1, i8 %296
  br i1 %304, label %314, label %306

306:                                              ; preds = %301
  %307 = tail call ptr @RE_vertren_get_origindex(ptr noundef %277, ptr noundef nonnull %299, i32 noundef 0)
  %308 = icmp eq ptr %307, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %306
  %310 = load i32, ptr %290, align 4, !tbaa !52
  %311 = load i32, ptr %307, align 4, !tbaa !52
  %312 = icmp eq i32 %310, %311
  %313 = select i1 %312, i8 1, i8 %296
  br label %314

314:                                              ; preds = %301, %309, %306
  %315 = phi i8 [ %296, %306 ], [ %305, %301 ], [ %313, %309 ]
  %316 = add nuw nsw i32 %297, 1
  %317 = getelementptr inbounds ptr, ptr %298, i64 1
  %318 = and i8 %315, 1
  %319 = icmp eq i8 %318, 0
  %320 = icmp ult i32 %297, 3
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %295, label %322, !llvm.loop !89

322:                                              ; preds = %314, %295, %285
  %323 = phi i8 [ %289, %285 ], [ %315, %314 ], [ %296, %295 ]
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  %326 = icmp ult i32 %288, 3
  %327 = select i1 %325, i1 %326, i1 false
  br i1 %327, label %280, label %328, !llvm.loop !88

328:                                              ; preds = %322, %280
  br i1 %325, label %496, label %329

329:                                              ; preds = %328
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %330 = load ptr, ptr %11, align 8, !tbaa !60
  %331 = load ptr, ptr %272, align 8, !tbaa !61
  %332 = load ptr, ptr %331, align 8, !tbaa !34
  %333 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !40
  %335 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !41
  %337 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !42
  %339 = icmp eq ptr %338, null
  %340 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 5
  store ptr %330, ptr %340, align 8, !tbaa !43
  %341 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 6
  store ptr %331, ptr %341, align 8, !tbaa !45
  %342 = load float, ptr %332, align 4, !tbaa !46
  store float %342, ptr %4, align 8, !tbaa !46
  %343 = getelementptr inbounds float, ptr %332, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !46
  %345 = getelementptr inbounds float, ptr %4, i64 1
  store float %344, ptr %345, align 4, !tbaa !46
  %346 = getelementptr inbounds float, ptr %332, i64 2
  %347 = load float, ptr %346, align 4, !tbaa !46
  %348 = getelementptr inbounds float, ptr %4, i64 2
  store float %347, ptr %348, align 8, !tbaa !46
  %349 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1
  %350 = load float, ptr %334, align 4, !tbaa !46
  store float %350, ptr %349, align 8, !tbaa !46
  %351 = getelementptr inbounds float, ptr %334, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !46
  %353 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 1
  store float %352, ptr %353, align 4, !tbaa !46
  %354 = getelementptr inbounds float, ptr %334, i64 2
  %355 = load float, ptr %354, align 4, !tbaa !46
  %356 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 2
  store float %355, ptr %356, align 8, !tbaa !46
  %357 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2
  %358 = load float, ptr %336, align 4, !tbaa !46
  store float %358, ptr %357, align 8, !tbaa !46
  %359 = getelementptr inbounds float, ptr %336, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !46
  %361 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 1
  store float %360, ptr %361, align 4, !tbaa !46
  %362 = getelementptr inbounds float, ptr %336, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !46
  %364 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 2
  store float %363, ptr %364, align 8, !tbaa !46
  br i1 %339, label %374, label %365

365:                                              ; preds = %329
  %366 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  %367 = load float, ptr %338, align 4, !tbaa !46
  store float %367, ptr %366, align 8, !tbaa !46
  %368 = getelementptr inbounds float, ptr %338, i64 1
  %369 = load float, ptr %368, align 4, !tbaa !46
  %370 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 1
  store float %369, ptr %370, align 4, !tbaa !46
  %371 = getelementptr inbounds float, ptr %338, i64 2
  %372 = load float, ptr %371, align 4, !tbaa !46
  %373 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 2
  store float %372, ptr %373, align 8, !tbaa !46
  br label %374

374:                                              ; preds = %329, %365
  %375 = phi i32 [ 1, %365 ], [ 0, %329 ]
  %376 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  store i32 %375, ptr %376, align 4, !tbaa !48
  %377 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %330, i64 0, i32 19
  %378 = load i32, ptr %377, align 8, !tbaa !90
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %330, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %381, ptr noundef nonnull %4)
  call void @mul_m4_v3(ptr noundef nonnull %381, ptr noundef nonnull %349)
  call void @mul_m4_v3(ptr noundef nonnull %381, ptr noundef nonnull %357)
  %382 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  %383 = load i32, ptr %382, align 4, !tbaa !48
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %381, ptr noundef nonnull %386)
  br label %387

387:                                              ; preds = %385, %380, %374
  %388 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  %389 = load i32, ptr %388, align 4, !tbaa !48
  %390 = load float, ptr %4, align 8, !tbaa !46
  %391 = load float, ptr %345, align 4, !tbaa !46
  %392 = load float, ptr %348, align 8, !tbaa !46
  %393 = load float, ptr %349, align 8, !tbaa !46
  %394 = load float, ptr %353, align 4, !tbaa !46
  %395 = load float, ptr %356, align 8, !tbaa !46
  %396 = load float, ptr %357, align 8, !tbaa !46
  %397 = load float, ptr %361, align 4, !tbaa !46
  %398 = load float, ptr %364, align 8, !tbaa !46
  %399 = load float, ptr %118, align 4, !tbaa !46
  %400 = fneg float %399
  %401 = load float, ptr %139, align 4, !tbaa !46
  %402 = fneg float %401
  %403 = load float, ptr %141, align 4, !tbaa !46
  %404 = fneg float %403
  %405 = fsub float %396, %393
  %406 = fsub float %397, %394
  %407 = fsub float %398, %395
  %408 = fsub float %396, %390
  %409 = fsub float %397, %391
  %410 = fsub float %398, %392
  %411 = fmul float %409, %403
  %412 = call float @llvm.fmuladd.f32(float %402, float %410, float %411)
  %413 = fmul float %410, %399
  %414 = call float @llvm.fmuladd.f32(float %404, float %408, float %413)
  %415 = fmul float %408, %401
  %416 = call float @llvm.fmuladd.f32(float %400, float %409, float %415)
  %417 = fmul float %406, %414
  %418 = call float @llvm.fmuladd.f32(float %405, float %412, float %417)
  %419 = call noundef float @llvm.fmuladd.f32(float %407, float %416, float %418)
  %420 = load float, ptr %1, align 4, !tbaa !46
  %421 = fsub float %420, %396
  %422 = load float, ptr %163, align 4, !tbaa !46
  %423 = fsub float %422, %397
  %424 = load float, ptr %166, align 4, !tbaa !46
  %425 = fsub float %424, %398
  %426 = fmul float %414, %423
  %427 = call float @llvm.fmuladd.f32(float %421, float %412, float %426)
  %428 = call noundef float @llvm.fmuladd.f32(float %425, float %416, float %427)
  %429 = fcmp une float %419, 0.000000e+00
  br i1 %429, label %430, label %454

430:                                              ; preds = %387
  %431 = fdiv float 1.000000e+00, %419
  %432 = fmul float %431, %428
  %433 = fcmp olt float %432, 0xBE80000000000000
  %434 = fcmp ogt float %432, 0xBFEFFFFFC0000000
  %435 = and i1 %433, %434
  br i1 %435, label %436, label %454

436:                                              ; preds = %430
  %437 = fneg float %425
  %438 = fmul float %406, %437
  %439 = call float @llvm.fmuladd.f32(float %423, float %407, float %438)
  %440 = fneg float %421
  %441 = fmul float %407, %440
  %442 = call float @llvm.fmuladd.f32(float %425, float %405, float %441)
  %443 = fneg float %423
  %444 = fmul float %405, %443
  %445 = call float @llvm.fmuladd.f32(float %421, float %406, float %444)
  %446 = fmul float %442, %402
  %447 = call float @llvm.fmuladd.f32(float %439, float %400, float %446)
  %448 = call noundef float @llvm.fmuladd.f32(float %445, float %404, float %447)
  %449 = fmul float %431, %448
  %450 = fcmp olt float %449, 0xBE80000000000000
  %451 = fadd float %432, %449
  %452 = fcmp ogt float %451, 0xBFEFFFFFC0000000
  %453 = and i1 %450, %452
  br i1 %453, label %495, label %454

454:                                              ; preds = %436, %430, %387
  %455 = icmp eq i32 %389, 0
  br i1 %455, label %494, label %456

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  %458 = load float, ptr %457, align 8, !tbaa !46
  %459 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 1
  %460 = load float, ptr %459, align 4, !tbaa !46
  %461 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 2
  %462 = load float, ptr %461, align 8, !tbaa !46
  %463 = fsub float %396, %458
  %464 = fsub float %397, %460
  %465 = fsub float %398, %462
  %466 = fmul float %414, %464
  %467 = call float @llvm.fmuladd.f32(float %463, float %412, float %466)
  %468 = call noundef float @llvm.fmuladd.f32(float %465, float %416, float %467)
  %469 = fcmp une float %468, 0.000000e+00
  br i1 %469, label %470, label %494

470:                                              ; preds = %456
  %471 = fdiv float 1.000000e+00, %468
  %472 = fmul float %428, %471
  %473 = fcmp olt float %472, 0xBE80000000000000
  %474 = fcmp ogt float %472, 0xBFEFFFFFC0000000
  %475 = and i1 %473, %474
  br i1 %475, label %476, label %494

476:                                              ; preds = %470
  %477 = fneg float %425
  %478 = fmul float %464, %477
  %479 = call float @llvm.fmuladd.f32(float %423, float %465, float %478)
  %480 = fneg float %421
  %481 = fmul float %465, %480
  %482 = call float @llvm.fmuladd.f32(float %425, float %463, float %481)
  %483 = fneg float %423
  %484 = fmul float %463, %483
  %485 = call float @llvm.fmuladd.f32(float %421, float %464, float %484)
  %486 = fmul float %482, %402
  %487 = call float @llvm.fmuladd.f32(float %479, float %400, float %486)
  %488 = call noundef float @llvm.fmuladd.f32(float %485, float %404, float %487)
  %489 = fmul float %471, %488
  %490 = fcmp uge float %489, 0xBE80000000000000
  %491 = fadd float %472, %489
  %492 = fcmp ule float %491, 0xBFEFFFFFC0000000
  %493 = or i1 %490, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %476, %470, %456, %454
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  br label %1057

495:                                              ; preds = %476, %436
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  br label %496

496:                                              ; preds = %271, %263, %495, %328
  %497 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 14
  store i32 %262, ptr %497, align 8, !tbaa !91
  store float %258, ptr %116, align 8, !tbaa !85
  %498 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 12
  store float %260, ptr %498, align 8, !tbaa !92
  %499 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 13
  store float %259, ptr %499, align 4, !tbaa !93
  %500 = load ptr, ptr %13, align 8, !tbaa !43
  %501 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  store ptr %500, ptr %501, align 8, !tbaa !94
  %502 = getelementptr inbounds %struct.RayFace, ptr %10, i64 0, i32 6
  %503 = load ptr, ptr %502, align 8, !tbaa !45
  %504 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15, i32 1
  store ptr %503, ptr %504, align 8, !tbaa !95
  %505 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %0, ptr %505, align 8, !tbaa !59
  br label %1057

506:                                              ; preds = %2
  %507 = and i64 %6, -4
  %508 = inttoptr i64 %507 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  %509 = load ptr, ptr %508, align 8, !tbaa !49
  %510 = getelementptr inbounds %struct.VlakPrimitive, ptr %508, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !51
  %512 = load ptr, ptr %511, align 8, !tbaa !34
  %513 = getelementptr inbounds %struct.VlakRen, ptr %511, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !40
  %515 = getelementptr inbounds %struct.VlakRen, ptr %511, i64 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !41
  %517 = getelementptr inbounds %struct.VlakRen, ptr %511, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !42
  %519 = icmp eq ptr %518, null
  %520 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 5
  store ptr %509, ptr %520, align 8, !tbaa !43
  %521 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 6
  store ptr %511, ptr %521, align 8, !tbaa !45
  %522 = load float, ptr %512, align 4, !tbaa !46
  store float %522, ptr %5, align 8, !tbaa !46
  %523 = getelementptr inbounds float, ptr %512, i64 1
  %524 = load float, ptr %523, align 4, !tbaa !46
  %525 = getelementptr inbounds float, ptr %5, i64 1
  store float %524, ptr %525, align 4, !tbaa !46
  %526 = getelementptr inbounds float, ptr %512, i64 2
  %527 = load float, ptr %526, align 4, !tbaa !46
  %528 = getelementptr inbounds float, ptr %5, i64 2
  store float %527, ptr %528, align 8, !tbaa !46
  %529 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 1
  %530 = load float, ptr %514, align 4, !tbaa !46
  store float %530, ptr %529, align 8, !tbaa !46
  %531 = getelementptr inbounds float, ptr %514, i64 1
  %532 = load float, ptr %531, align 4, !tbaa !46
  %533 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 1, i64 1
  store float %532, ptr %533, align 4, !tbaa !46
  %534 = getelementptr inbounds float, ptr %514, i64 2
  %535 = load float, ptr %534, align 4, !tbaa !46
  %536 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 1, i64 2
  store float %535, ptr %536, align 8, !tbaa !46
  %537 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 2
  %538 = load float, ptr %516, align 4, !tbaa !46
  store float %538, ptr %537, align 8, !tbaa !46
  %539 = getelementptr inbounds float, ptr %516, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !46
  %541 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 2, i64 1
  store float %540, ptr %541, align 4, !tbaa !46
  %542 = getelementptr inbounds float, ptr %516, i64 2
  %543 = load float, ptr %542, align 4, !tbaa !46
  %544 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 2, i64 2
  store float %543, ptr %544, align 8, !tbaa !46
  br i1 %519, label %554, label %545

545:                                              ; preds = %506
  %546 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3
  %547 = load float, ptr %518, align 4, !tbaa !46
  store float %547, ptr %546, align 8, !tbaa !46
  %548 = getelementptr inbounds float, ptr %518, i64 1
  %549 = load float, ptr %548, align 4, !tbaa !46
  %550 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3, i64 1
  store float %549, ptr %550, align 4, !tbaa !46
  %551 = getelementptr inbounds float, ptr %518, i64 2
  %552 = load float, ptr %551, align 4, !tbaa !46
  %553 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3, i64 2
  store float %552, ptr %553, align 8, !tbaa !46
  br label %554

554:                                              ; preds = %506, %545
  %555 = phi i32 [ 1, %545 ], [ 0, %506 ]
  %556 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 4
  store i32 %555, ptr %556, align 4, !tbaa !48
  %557 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %509, i64 0, i32 19
  %558 = load i32, ptr %557, align 8, !tbaa !90
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %567, label %560

560:                                              ; preds = %554
  %561 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %509, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %561, ptr noundef nonnull %5)
  call void @mul_m4_v3(ptr noundef nonnull %561, ptr noundef nonnull %529)
  call void @mul_m4_v3(ptr noundef nonnull %561, ptr noundef nonnull %537)
  %562 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 4
  %563 = load i32, ptr %562, align 4, !tbaa !48
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %567, label %565

565:                                              ; preds = %560
  %566 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %561, ptr noundef nonnull %566)
  br label %567

567:                                              ; preds = %554, %560, %565
  %568 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %569 = load ptr, ptr %568, align 8, !tbaa !60
  %570 = load ptr, ptr %520, align 8, !tbaa !43
  %571 = icmp ne ptr %569, %570
  br i1 %571, label %577, label %572

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !61
  %575 = load ptr, ptr %521, align 8, !tbaa !45
  %576 = icmp eq ptr %574, %575
  br i1 %576, label %1049, label %577

577:                                              ; preds = %572, %567
  %578 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 10
  %579 = load i32, ptr %578, align 4, !tbaa !62
  switch i32 %579, label %668 [
    i32 1, label %580
    i32 2, label %613
    i32 3, label %652
  ]

580:                                              ; preds = %577
  %581 = load ptr, ptr %521, align 8, !tbaa !45
  %582 = getelementptr inbounds %struct.VlakRen, ptr %581, i64 0, i32 7
  %583 = load i8, ptr %582, align 1, !tbaa !63
  %584 = icmp sgt i8 %583, -1
  br i1 %584, label %610, label %585

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %587 = load i32, ptr %586, align 8, !tbaa !56
  %588 = icmp eq i32 %587, 1
  %589 = getelementptr inbounds %struct.VlakRen, ptr %581, i64 0, i32 5
  %590 = load ptr, ptr %589, align 8, !tbaa !64
  br i1 %588, label %591, label %597

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.Material, ptr %590, i64 0, i32 51
  %593 = load i32, ptr %592, align 4, !tbaa !65
  %594 = lshr i32 %593, 13
  %595 = and i32 %594, 1
  %596 = xor i32 %595, 1
  br label %610

597:                                              ; preds = %585
  %598 = getelementptr inbounds %struct.Material, ptr %590, i64 0, i32 53
  %599 = load i32, ptr %598, align 4, !tbaa !72
  %600 = and i32 %599, 1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %610, label %602

602:                                              ; preds = %597
  %603 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %604 = load i32, ptr %603, align 4, !tbaa !73
  %605 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %570, i64 0, i32 7
  %606 = load i32, ptr %605, align 8, !tbaa !74
  %607 = and i32 %606, %604
  %608 = icmp ne i32 %607, 0
  %609 = zext i1 %608 to i32
  br label %610

610:                                              ; preds = %602, %597, %591, %580
  %611 = phi i32 [ %596, %591 ], [ 0, %580 ], [ 0, %597 ], [ %609, %602 ]
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %1049, label %668

613:                                              ; preds = %577
  %614 = load ptr, ptr %521, align 8, !tbaa !45
  %615 = getelementptr inbounds %struct.VlakRen, ptr %614, i64 0, i32 7
  %616 = load i8, ptr %615, align 1, !tbaa !63
  %617 = icmp sgt i8 %616, -1
  br i1 %617, label %643, label %618

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %620 = load i32, ptr %619, align 8, !tbaa !56
  %621 = icmp eq i32 %620, 1
  %622 = getelementptr inbounds %struct.VlakRen, ptr %614, i64 0, i32 5
  %623 = load ptr, ptr %622, align 8, !tbaa !64
  br i1 %621, label %624, label %630

624:                                              ; preds = %618
  %625 = getelementptr inbounds %struct.Material, ptr %623, i64 0, i32 51
  %626 = load i32, ptr %625, align 4, !tbaa !65
  %627 = lshr i32 %626, 13
  %628 = and i32 %627, 1
  %629 = xor i32 %628, 1
  br label %643

630:                                              ; preds = %618
  %631 = getelementptr inbounds %struct.Material, ptr %623, i64 0, i32 53
  %632 = load i32, ptr %631, align 4, !tbaa !72
  %633 = and i32 %632, 1
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %643, label %635

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 8
  %637 = load i32, ptr %636, align 4, !tbaa !73
  %638 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %570, i64 0, i32 7
  %639 = load i32, ptr %638, align 8, !tbaa !74
  %640 = and i32 %639, %637
  %641 = icmp ne i32 %640, 0
  %642 = zext i1 %641 to i32
  br label %643

643:                                              ; preds = %635, %630, %624, %613
  %644 = phi i32 [ %629, %624 ], [ 0, %613 ], [ 0, %630 ], [ %642, %635 ]
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %1049, label %646

646:                                              ; preds = %643
  %647 = getelementptr inbounds %struct.VlakRen, ptr %614, i64 0, i32 5
  %648 = load ptr, ptr %647, align 8, !tbaa !64
  %649 = getelementptr inbounds %struct.Material, ptr %648, i64 0, i32 2
  %650 = load i16, ptr %649, align 8, !tbaa !76
  %651 = icmp eq i16 %650, 0
  br i1 %651, label %668, label %1049

652:                                              ; preds = %577
  %653 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %570, i64 0, i32 2
  %654 = load ptr, ptr %653, align 8, !tbaa !77
  %655 = getelementptr inbounds %struct.ObjectRen, ptr %654, i64 0, i32 2
  %656 = load ptr, ptr %655, align 8, !tbaa !78
  %657 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 11
  %658 = load ptr, ptr %657, align 8, !tbaa !80
  %659 = icmp eq ptr %656, %658
  br i1 %659, label %665, label %660

660:                                              ; preds = %652
  %661 = getelementptr inbounds %struct.Object, ptr %656, i64 0, i32 53
  %662 = load i16, ptr %661, align 4, !tbaa !81
  %663 = and i16 %662, 1
  %664 = zext nneg i16 %663 to i32
  br label %665

665:                                              ; preds = %660, %652
  %666 = phi i32 [ 0, %652 ], [ %664, %660 ]
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %1049, label %668

668:                                              ; preds = %665, %646, %610, %577
  %669 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %670 = load float, ptr %669, align 8, !tbaa !85
  %671 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %672 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 4
  %673 = load i32, ptr %672, align 4, !tbaa !48
  %674 = load float, ptr %5, align 8, !tbaa !46
  %675 = load float, ptr %525, align 4, !tbaa !46
  %676 = load float, ptr %528, align 8, !tbaa !46
  %677 = load float, ptr %529, align 8, !tbaa !46
  %678 = load float, ptr %533, align 4, !tbaa !46
  %679 = load float, ptr %536, align 8, !tbaa !46
  %680 = load float, ptr %537, align 8, !tbaa !46
  %681 = load float, ptr %541, align 4, !tbaa !46
  %682 = load float, ptr %544, align 8, !tbaa !46
  %683 = load float, ptr %671, align 4, !tbaa !46
  %684 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %685 = load float, ptr %684, align 4, !tbaa !46
  %686 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %687 = load float, ptr %686, align 4, !tbaa !46
  %688 = fsub float %680, %677
  %689 = fsub float %681, %678
  %690 = fsub float %682, %679
  %691 = fsub float %680, %674
  %692 = fsub float %681, %675
  %693 = fsub float %682, %676
  %694 = fneg float %687
  %695 = fmul float %692, %694
  %696 = call float @llvm.fmuladd.f32(float %685, float %693, float %695)
  %697 = fneg float %683
  %698 = fmul float %693, %697
  %699 = call float @llvm.fmuladd.f32(float %687, float %691, float %698)
  %700 = fneg float %685
  %701 = fmul float %691, %700
  %702 = call float @llvm.fmuladd.f32(float %683, float %692, float %701)
  %703 = fmul float %689, %699
  %704 = call float @llvm.fmuladd.f32(float %688, float %696, float %703)
  %705 = call noundef float @llvm.fmuladd.f32(float %690, float %702, float %704)
  %706 = load float, ptr %1, align 4, !tbaa !46
  %707 = fsub float %706, %680
  %708 = getelementptr inbounds float, ptr %1, i64 1
  %709 = load float, ptr %708, align 4, !tbaa !46
  %710 = fsub float %709, %681
  %711 = getelementptr inbounds float, ptr %1, i64 2
  %712 = load float, ptr %711, align 4, !tbaa !46
  %713 = fsub float %712, %682
  %714 = fmul float %699, %710
  %715 = call float @llvm.fmuladd.f32(float %707, float %696, float %714)
  %716 = call noundef float @llvm.fmuladd.f32(float %713, float %702, float %715)
  %717 = fcmp une float %705, 0.000000e+00
  br i1 %717, label %718, label %750

718:                                              ; preds = %668
  %719 = fdiv float 1.000000e+00, %705
  %720 = fmul float %719, %716
  %721 = fcmp olt float %720, 0xBE80000000000000
  %722 = fcmp ogt float %720, 0xBFEFFFFFC0000000
  %723 = and i1 %721, %722
  br i1 %723, label %724, label %750

724:                                              ; preds = %718
  %725 = fneg float %713
  %726 = fmul float %689, %725
  %727 = call float @llvm.fmuladd.f32(float %710, float %690, float %726)
  %728 = fneg float %707
  %729 = fmul float %690, %728
  %730 = call float @llvm.fmuladd.f32(float %713, float %688, float %729)
  %731 = fneg float %710
  %732 = fmul float %688, %731
  %733 = call float @llvm.fmuladd.f32(float %707, float %689, float %732)
  %734 = fmul float %685, %730
  %735 = call float @llvm.fmuladd.f32(float %727, float %683, float %734)
  %736 = call noundef float @llvm.fmuladd.f32(float %733, float %687, float %735)
  %737 = fmul float %719, %736
  %738 = fcmp olt float %737, 0xBE80000000000000
  %739 = fadd float %720, %737
  %740 = fcmp ogt float %739, 0xBFEFFFFFC0000000
  %741 = and i1 %738, %740
  br i1 %741, label %742, label %750

742:                                              ; preds = %724
  %743 = fmul float %692, %730
  %744 = call float @llvm.fmuladd.f32(float %727, float %691, float %743)
  %745 = call noundef float @llvm.fmuladd.f32(float %733, float %693, float %744)
  %746 = fmul float %719, %745
  %747 = fcmp ogt float %746, 0x3E80000000000000
  %748 = fcmp olt float %746, %670
  %749 = select i1 %747, i1 %748, i1 false
  br i1 %749, label %802, label %750

750:                                              ; preds = %742, %724, %718, %668
  %751 = icmp eq i32 %673, 0
  br i1 %751, label %802, label %752

752:                                              ; preds = %750
  %753 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3
  %754 = load float, ptr %753, align 8, !tbaa !46
  %755 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3, i64 1
  %756 = load float, ptr %755, align 4, !tbaa !46
  %757 = getelementptr inbounds %struct.RayFace, ptr %5, i64 0, i32 3, i64 2
  %758 = load float, ptr %757, align 8, !tbaa !46
  %759 = fsub float %680, %754
  %760 = fsub float %681, %756
  %761 = fsub float %682, %758
  %762 = fmul float %699, %760
  %763 = call float @llvm.fmuladd.f32(float %759, float %696, float %762)
  %764 = call noundef float @llvm.fmuladd.f32(float %761, float %702, float %763)
  %765 = fcmp une float %764, 0.000000e+00
  br i1 %765, label %766, label %802

766:                                              ; preds = %752
  %767 = fdiv float 1.000000e+00, %764
  %768 = fmul float %716, %767
  %769 = fcmp olt float %768, 0xBE80000000000000
  %770 = fcmp ogt float %768, 0xBFEFFFFFC0000000
  %771 = and i1 %769, %770
  br i1 %771, label %772, label %802

772:                                              ; preds = %766
  %773 = fneg float %713
  %774 = fmul float %760, %773
  %775 = call float @llvm.fmuladd.f32(float %710, float %761, float %774)
  %776 = fneg float %707
  %777 = fmul float %761, %776
  %778 = call float @llvm.fmuladd.f32(float %713, float %759, float %777)
  %779 = fneg float %710
  %780 = fmul float %759, %779
  %781 = call float @llvm.fmuladd.f32(float %707, float %760, float %780)
  %782 = fmul float %685, %778
  %783 = call float @llvm.fmuladd.f32(float %775, float %683, float %782)
  %784 = call noundef float @llvm.fmuladd.f32(float %781, float %687, float %783)
  %785 = fmul float %767, %784
  %786 = fcmp olt float %785, 0xBE80000000000000
  %787 = fadd float %768, %785
  %788 = fcmp ogt float %787, 0xBFEFFFFFC0000000
  %789 = and i1 %786, %788
  br i1 %789, label %790, label %802

790:                                              ; preds = %772
  %791 = fmul float %692, %778
  %792 = call float @llvm.fmuladd.f32(float %775, float %691, float %791)
  %793 = call noundef float @llvm.fmuladd.f32(float %781, float %693, float %792)
  %794 = fmul float %767, %793
  %795 = fcmp ogt float %794, 0x3E80000000000000
  %796 = fcmp olt float %794, %670
  %797 = select i1 %795, i1 %796, i1 false
  br i1 %797, label %798, label %802

798:                                              ; preds = %790
  %799 = fadd float %768, 1.000000e+00
  %800 = fadd float %799, %785
  %801 = fneg float %800
  br label %802

802:                                              ; preds = %772, %790, %798, %766, %752, %750, %742
  %803 = phi float [ %746, %742 ], [ %670, %750 ], [ %670, %766 ], [ %670, %752 ], [ %794, %798 ], [ %670, %790 ], [ %670, %772 ]
  %804 = phi float [ %720, %742 ], [ undef, %750 ], [ undef, %766 ], [ undef, %752 ], [ %801, %798 ], [ undef, %790 ], [ undef, %772 ]
  %805 = phi float [ %737, %742 ], [ undef, %750 ], [ undef, %766 ], [ undef, %752 ], [ %785, %798 ], [ %785, %790 ], [ %785, %772 ]
  %806 = phi i1 [ false, %742 ], [ true, %750 ], [ true, %766 ], [ true, %752 ], [ false, %798 ], [ true, %790 ], [ true, %772 ]
  %807 = phi i32 [ 1, %742 ], [ 0, %750 ], [ 0, %766 ], [ 0, %752 ], [ 2, %798 ], [ 0, %790 ], [ 0, %772 ]
  br i1 %806, label %1049, label %808

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  %810 = load i32, ptr %809, align 8, !tbaa !86
  %811 = and i32 %810, 2
  %812 = icmp eq i32 %811, 0
  %813 = fcmp uge float %803, 0x3FB99999A0000000
  %814 = select i1 %812, i1 true, i1 %813
  %815 = or i1 %571, %814
  br i1 %815, label %1040, label %816

816:                                              ; preds = %808
  %817 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  %818 = load ptr, ptr %817, align 8, !tbaa !61
  %819 = load ptr, ptr %521, align 8, !tbaa !45
  %820 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %570, i64 0, i32 2
  %821 = load ptr, ptr %820, align 8, !tbaa !77
  %822 = load ptr, ptr %818, align 8, !tbaa !87
  %823 = icmp eq ptr %822, null
  br i1 %823, label %1040, label %829

824:                                              ; preds = %866
  %825 = getelementptr inbounds ptr, ptr %831, i64 1
  %826 = add nuw nsw i32 %832, 1
  %827 = load ptr, ptr %825, align 8, !tbaa !87
  %828 = icmp eq ptr %827, null
  br i1 %828, label %872, label %829, !llvm.loop !88

829:                                              ; preds = %816, %824
  %830 = phi ptr [ %827, %824 ], [ %822, %816 ]
  %831 = phi ptr [ %825, %824 ], [ %818, %816 ]
  %832 = phi i32 [ %826, %824 ], [ 0, %816 ]
  %833 = phi i8 [ %867, %824 ], [ 0, %816 ]
  %834 = call ptr @RE_vertren_get_origindex(ptr noundef %821, ptr noundef nonnull %830, i32 noundef 0)
  %835 = and i8 %833, 1
  %836 = icmp eq i8 %835, 0
  br i1 %836, label %837, label %866

837:                                              ; preds = %829
  %838 = icmp eq ptr %834, null
  br label %839

839:                                              ; preds = %837, %858
  %840 = phi i8 [ %833, %837 ], [ %859, %858 ]
  %841 = phi i32 [ 0, %837 ], [ %860, %858 ]
  %842 = phi ptr [ %819, %837 ], [ %861, %858 ]
  %843 = load ptr, ptr %842, align 8, !tbaa !87
  %844 = icmp eq ptr %843, null
  br i1 %844, label %866, label %845

845:                                              ; preds = %839
  %846 = load ptr, ptr %831, align 8, !tbaa !87
  %847 = icmp eq ptr %846, %843
  %848 = select i1 %847, i1 true, i1 %838
  %849 = select i1 %847, i8 1, i8 %840
  br i1 %848, label %858, label %850

850:                                              ; preds = %845
  %851 = call ptr @RE_vertren_get_origindex(ptr noundef %821, ptr noundef nonnull %843, i32 noundef 0)
  %852 = icmp eq ptr %851, null
  br i1 %852, label %858, label %853

853:                                              ; preds = %850
  %854 = load i32, ptr %834, align 4, !tbaa !52
  %855 = load i32, ptr %851, align 4, !tbaa !52
  %856 = icmp eq i32 %854, %855
  %857 = select i1 %856, i8 1, i8 %840
  br label %858

858:                                              ; preds = %845, %853, %850
  %859 = phi i8 [ %840, %850 ], [ %849, %845 ], [ %857, %853 ]
  %860 = add nuw nsw i32 %841, 1
  %861 = getelementptr inbounds ptr, ptr %842, i64 1
  %862 = and i8 %859, 1
  %863 = icmp eq i8 %862, 0
  %864 = icmp ult i32 %841, 3
  %865 = select i1 %863, i1 %864, i1 false
  br i1 %865, label %839, label %866, !llvm.loop !89

866:                                              ; preds = %858, %839, %829
  %867 = phi i8 [ %833, %829 ], [ %859, %858 ], [ %840, %839 ]
  %868 = and i8 %867, 1
  %869 = icmp eq i8 %868, 0
  %870 = icmp ult i32 %832, 3
  %871 = select i1 %869, i1 %870, i1 false
  br i1 %871, label %824, label %872, !llvm.loop !88

872:                                              ; preds = %866, %824
  br i1 %869, label %1040, label %873

873:                                              ; preds = %872
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %874 = load ptr, ptr %568, align 8, !tbaa !60
  %875 = load ptr, ptr %817, align 8, !tbaa !61
  %876 = load ptr, ptr %875, align 8, !tbaa !34
  %877 = getelementptr inbounds %struct.VlakRen, ptr %875, i64 0, i32 1
  %878 = load ptr, ptr %877, align 8, !tbaa !40
  %879 = getelementptr inbounds %struct.VlakRen, ptr %875, i64 0, i32 2
  %880 = load ptr, ptr %879, align 8, !tbaa !41
  %881 = getelementptr inbounds %struct.VlakRen, ptr %875, i64 0, i32 3
  %882 = load ptr, ptr %881, align 8, !tbaa !42
  %883 = icmp eq ptr %882, null
  %884 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 5
  store ptr %874, ptr %884, align 8, !tbaa !43
  %885 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 6
  store ptr %875, ptr %885, align 8, !tbaa !45
  %886 = load float, ptr %876, align 4, !tbaa !46
  store float %886, ptr %3, align 8, !tbaa !46
  %887 = getelementptr inbounds float, ptr %876, i64 1
  %888 = load float, ptr %887, align 4, !tbaa !46
  %889 = getelementptr inbounds float, ptr %3, i64 1
  store float %888, ptr %889, align 4, !tbaa !46
  %890 = getelementptr inbounds float, ptr %876, i64 2
  %891 = load float, ptr %890, align 4, !tbaa !46
  %892 = getelementptr inbounds float, ptr %3, i64 2
  store float %891, ptr %892, align 8, !tbaa !46
  %893 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 1
  %894 = load float, ptr %878, align 4, !tbaa !46
  store float %894, ptr %893, align 8, !tbaa !46
  %895 = getelementptr inbounds float, ptr %878, i64 1
  %896 = load float, ptr %895, align 4, !tbaa !46
  %897 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 1, i64 1
  store float %896, ptr %897, align 4, !tbaa !46
  %898 = getelementptr inbounds float, ptr %878, i64 2
  %899 = load float, ptr %898, align 4, !tbaa !46
  %900 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 1, i64 2
  store float %899, ptr %900, align 8, !tbaa !46
  %901 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 2
  %902 = load float, ptr %880, align 4, !tbaa !46
  store float %902, ptr %901, align 8, !tbaa !46
  %903 = getelementptr inbounds float, ptr %880, i64 1
  %904 = load float, ptr %903, align 4, !tbaa !46
  %905 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 2, i64 1
  store float %904, ptr %905, align 4, !tbaa !46
  %906 = getelementptr inbounds float, ptr %880, i64 2
  %907 = load float, ptr %906, align 4, !tbaa !46
  %908 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 2, i64 2
  store float %907, ptr %908, align 8, !tbaa !46
  br i1 %883, label %918, label %909

909:                                              ; preds = %873
  %910 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3
  %911 = load float, ptr %882, align 4, !tbaa !46
  store float %911, ptr %910, align 8, !tbaa !46
  %912 = getelementptr inbounds float, ptr %882, i64 1
  %913 = load float, ptr %912, align 4, !tbaa !46
  %914 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3, i64 1
  store float %913, ptr %914, align 4, !tbaa !46
  %915 = getelementptr inbounds float, ptr %882, i64 2
  %916 = load float, ptr %915, align 4, !tbaa !46
  %917 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3, i64 2
  store float %916, ptr %917, align 8, !tbaa !46
  br label %918

918:                                              ; preds = %873, %909
  %919 = phi i32 [ 1, %909 ], [ 0, %873 ]
  %920 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 4
  store i32 %919, ptr %920, align 4, !tbaa !48
  %921 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %874, i64 0, i32 19
  %922 = load i32, ptr %921, align 8, !tbaa !90
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %931, label %924

924:                                              ; preds = %918
  %925 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %874, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %925, ptr noundef nonnull %3)
  call void @mul_m4_v3(ptr noundef nonnull %925, ptr noundef nonnull %893)
  call void @mul_m4_v3(ptr noundef nonnull %925, ptr noundef nonnull %901)
  %926 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 4
  %927 = load i32, ptr %926, align 4, !tbaa !48
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %931, label %929

929:                                              ; preds = %924
  %930 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %925, ptr noundef nonnull %930)
  br label %931

931:                                              ; preds = %929, %924, %918
  %932 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 4
  %933 = load i32, ptr %932, align 4, !tbaa !48
  %934 = load float, ptr %3, align 8, !tbaa !46
  %935 = load float, ptr %889, align 4, !tbaa !46
  %936 = load float, ptr %892, align 8, !tbaa !46
  %937 = load float, ptr %893, align 8, !tbaa !46
  %938 = load float, ptr %897, align 4, !tbaa !46
  %939 = load float, ptr %900, align 8, !tbaa !46
  %940 = load float, ptr %901, align 8, !tbaa !46
  %941 = load float, ptr %905, align 4, !tbaa !46
  %942 = load float, ptr %908, align 8, !tbaa !46
  %943 = load float, ptr %671, align 4, !tbaa !46
  %944 = fneg float %943
  %945 = load float, ptr %684, align 4, !tbaa !46
  %946 = fneg float %945
  %947 = load float, ptr %686, align 4, !tbaa !46
  %948 = fneg float %947
  %949 = fsub float %940, %937
  %950 = fsub float %941, %938
  %951 = fsub float %942, %939
  %952 = fsub float %940, %934
  %953 = fsub float %941, %935
  %954 = fsub float %942, %936
  %955 = fmul float %953, %947
  %956 = call float @llvm.fmuladd.f32(float %946, float %954, float %955)
  %957 = fmul float %954, %943
  %958 = call float @llvm.fmuladd.f32(float %948, float %952, float %957)
  %959 = fmul float %952, %945
  %960 = call float @llvm.fmuladd.f32(float %944, float %953, float %959)
  %961 = fmul float %950, %958
  %962 = call float @llvm.fmuladd.f32(float %949, float %956, float %961)
  %963 = call noundef float @llvm.fmuladd.f32(float %951, float %960, float %962)
  %964 = load float, ptr %1, align 4, !tbaa !46
  %965 = fsub float %964, %940
  %966 = load float, ptr %708, align 4, !tbaa !46
  %967 = fsub float %966, %941
  %968 = load float, ptr %711, align 4, !tbaa !46
  %969 = fsub float %968, %942
  %970 = fmul float %958, %967
  %971 = call float @llvm.fmuladd.f32(float %965, float %956, float %970)
  %972 = call noundef float @llvm.fmuladd.f32(float %969, float %960, float %971)
  %973 = fcmp une float %963, 0.000000e+00
  br i1 %973, label %974, label %998

974:                                              ; preds = %931
  %975 = fdiv float 1.000000e+00, %963
  %976 = fmul float %975, %972
  %977 = fcmp olt float %976, 0xBE80000000000000
  %978 = fcmp ogt float %976, 0xBFEFFFFFC0000000
  %979 = and i1 %977, %978
  br i1 %979, label %980, label %998

980:                                              ; preds = %974
  %981 = fneg float %969
  %982 = fmul float %950, %981
  %983 = call float @llvm.fmuladd.f32(float %967, float %951, float %982)
  %984 = fneg float %965
  %985 = fmul float %951, %984
  %986 = call float @llvm.fmuladd.f32(float %969, float %949, float %985)
  %987 = fneg float %967
  %988 = fmul float %949, %987
  %989 = call float @llvm.fmuladd.f32(float %965, float %950, float %988)
  %990 = fmul float %986, %946
  %991 = call float @llvm.fmuladd.f32(float %983, float %944, float %990)
  %992 = call noundef float @llvm.fmuladd.f32(float %989, float %948, float %991)
  %993 = fmul float %975, %992
  %994 = fcmp olt float %993, 0xBE80000000000000
  %995 = fadd float %976, %993
  %996 = fcmp ogt float %995, 0xBFEFFFFFC0000000
  %997 = and i1 %994, %996
  br i1 %997, label %1039, label %998

998:                                              ; preds = %980, %974, %931
  %999 = icmp eq i32 %933, 0
  br i1 %999, label %1038, label %1000

1000:                                             ; preds = %998
  %1001 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3
  %1002 = load float, ptr %1001, align 8, !tbaa !46
  %1003 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3, i64 1
  %1004 = load float, ptr %1003, align 4, !tbaa !46
  %1005 = getelementptr inbounds %struct.RayFace, ptr %3, i64 0, i32 3, i64 2
  %1006 = load float, ptr %1005, align 8, !tbaa !46
  %1007 = fsub float %940, %1002
  %1008 = fsub float %941, %1004
  %1009 = fsub float %942, %1006
  %1010 = fmul float %958, %1008
  %1011 = call float @llvm.fmuladd.f32(float %1007, float %956, float %1010)
  %1012 = call noundef float @llvm.fmuladd.f32(float %1009, float %960, float %1011)
  %1013 = fcmp une float %1012, 0.000000e+00
  br i1 %1013, label %1014, label %1038

1014:                                             ; preds = %1000
  %1015 = fdiv float 1.000000e+00, %1012
  %1016 = fmul float %972, %1015
  %1017 = fcmp olt float %1016, 0xBE80000000000000
  %1018 = fcmp ogt float %1016, 0xBFEFFFFFC0000000
  %1019 = and i1 %1017, %1018
  br i1 %1019, label %1020, label %1038

1020:                                             ; preds = %1014
  %1021 = fneg float %969
  %1022 = fmul float %1008, %1021
  %1023 = call float @llvm.fmuladd.f32(float %967, float %1009, float %1022)
  %1024 = fneg float %965
  %1025 = fmul float %1009, %1024
  %1026 = call float @llvm.fmuladd.f32(float %969, float %1007, float %1025)
  %1027 = fneg float %967
  %1028 = fmul float %1007, %1027
  %1029 = call float @llvm.fmuladd.f32(float %965, float %1008, float %1028)
  %1030 = fmul float %1026, %946
  %1031 = call float @llvm.fmuladd.f32(float %1023, float %944, float %1030)
  %1032 = call noundef float @llvm.fmuladd.f32(float %1029, float %948, float %1031)
  %1033 = fmul float %1015, %1032
  %1034 = fcmp uge float %1033, 0xBE80000000000000
  %1035 = fadd float %1016, %1033
  %1036 = fcmp ule float %1035, 0xBFEFFFFFC0000000
  %1037 = or i1 %1034, %1036
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1020, %1014, %1000, %998
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  br label %1049

1039:                                             ; preds = %1020, %980
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  br label %1040

1040:                                             ; preds = %816, %808, %1039, %872
  %1041 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 14
  store i32 %807, ptr %1041, align 8, !tbaa !91
  store float %803, ptr %669, align 8, !tbaa !85
  %1042 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 12
  store float %805, ptr %1042, align 8, !tbaa !92
  %1043 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 13
  store float %804, ptr %1043, align 4, !tbaa !93
  %1044 = load ptr, ptr %520, align 8, !tbaa !43
  %1045 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  store ptr %1044, ptr %1045, align 8, !tbaa !94
  %1046 = load ptr, ptr %521, align 8, !tbaa !45
  %1047 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15, i32 1
  store ptr %1046, ptr %1047, align 8, !tbaa !95
  %1048 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 17
  store ptr %0, ptr %1048, align 8, !tbaa !59
  br label %1049

1049:                                             ; preds = %1038, %572, %610, %643, %646, %665, %802, %1040
  %1050 = phi i32 [ 1, %1040 ], [ 0, %572 ], [ 0, %610 ], [ 0, %643 ], [ 0, %646 ], [ 0, %665 ], [ 0, %802 ], [ 0, %1038 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  br label %1057

1051:                                             ; preds = %2
  %1052 = and i64 %6, -4
  %1053 = inttoptr i64 %1052 to ptr
  %1054 = load ptr, ptr %1053, align 8, !tbaa !96
  %1055 = load ptr, ptr %1054, align 8, !tbaa !99
  %1056 = tail call noundef i32 %1055(ptr noundef nonnull %1053, ptr noundef %1)
  br label %1057

1057:                                             ; preds = %496, %257, %112, %93, %90, %56, %16, %494, %2, %1051, %1049
  %1058 = phi i32 [ %1050, %1049 ], [ %1056, %1051 ], [ 0, %2 ], [ 1, %496 ], [ 0, %16 ], [ 0, %56 ], [ 0, %90 ], [ 0, %93 ], [ 0, %112 ], [ 0, %257 ], [ 0, %494 ]
  ret i32 %1058
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local void @RE_rayobject_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, -4
  %5 = inttoptr i64 %4 to ptr
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.RayObjectAPI, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  tail call void %8(ptr noundef nonnull %5, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @RE_rayobject_done(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4
  %4 = inttoptr i64 %3 to ptr
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.RayObjectAPI, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  tail call void %7(ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @RE_rayobject_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4
  %4 = inttoptr i64 %3 to ptr
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.RayObjectAPI, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  tail call void %7(ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @RE_rayobject_cost(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 3
  %4 = icmp eq i64 %3, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = and i64 %2, -4
  %7 = inttoptr i64 %6 to ptr
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.RayObjectAPI, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = tail call noundef float %10(ptr noundef nonnull %7)
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi float [ %11, %5 ], [ 1.000000e+00, %1 ]
  ret float %13
}

; Function Attrs: mustprogress uwtable
define dso_local void @RE_rayobject_merge_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.RayFace, align 8
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  switch i64 %6, label %335 [
    i64 1, label %7
    i64 3, label %148
    i64 2, label %329
  ]

7:                                                ; preds = %3
  %8 = and i64 %5, -4
  %9 = inttoptr i64 %8 to ptr
  %10 = load float, ptr %1, align 4, !tbaa !46
  %11 = load float, ptr %9, align 8, !tbaa !46
  %12 = fcmp ogt float %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %1, align 4, !tbaa !46
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !46
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store float %18, ptr %15, align 4, !tbaa !46
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %25 = load float, ptr %24, align 8, !tbaa !46
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store float %25, ptr %22, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %27, %21
  %29 = load float, ptr %2, align 4, !tbaa !46
  %30 = load float, ptr %9, align 8, !tbaa !46
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store float %30, ptr %2, align 4, !tbaa !46
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !46
  %36 = load float, ptr %17, align 4, !tbaa !46
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !46
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds float, ptr %2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !46
  %42 = load float, ptr %24, align 8, !tbaa !46
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float %42, ptr %40, align 4, !tbaa !46
  br label %45

45:                                               ; preds = %44, %39
  %46 = load float, ptr %1, align 4, !tbaa !46
  %47 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1
  %48 = load float, ptr %47, align 8, !tbaa !46
  %49 = fcmp ogt float %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store float %48, ptr %1, align 4, !tbaa !46
  br label %51

51:                                               ; preds = %50, %45
  %52 = load float, ptr %15, align 4, !tbaa !46
  %53 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !46
  %55 = fcmp ogt float %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store float %54, ptr %15, align 4, !tbaa !46
  br label %57

57:                                               ; preds = %56, %51
  %58 = load float, ptr %22, align 4, !tbaa !46
  %59 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 1, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !46
  %61 = fcmp ogt float %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store float %60, ptr %22, align 4, !tbaa !46
  br label %63

63:                                               ; preds = %62, %57
  %64 = load float, ptr %2, align 4, !tbaa !46
  %65 = load float, ptr %47, align 8, !tbaa !46
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store float %65, ptr %2, align 4, !tbaa !46
  br label %68

68:                                               ; preds = %67, %63
  %69 = load float, ptr %34, align 4, !tbaa !46
  %70 = load float, ptr %53, align 4, !tbaa !46
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store float %70, ptr %34, align 4, !tbaa !46
  br label %73

73:                                               ; preds = %72, %68
  %74 = load float, ptr %40, align 4, !tbaa !46
  %75 = load float, ptr %59, align 8, !tbaa !46
  %76 = fcmp olt float %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store float %75, ptr %40, align 4, !tbaa !46
  br label %78

78:                                               ; preds = %77, %73
  %79 = load float, ptr %1, align 4, !tbaa !46
  %80 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !46
  %82 = fcmp ogt float %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store float %81, ptr %1, align 4, !tbaa !46
  br label %84

84:                                               ; preds = %83, %78
  %85 = load float, ptr %15, align 4, !tbaa !46
  %86 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !46
  %88 = fcmp ogt float %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store float %87, ptr %15, align 4, !tbaa !46
  br label %90

90:                                               ; preds = %89, %84
  %91 = load float, ptr %22, align 4, !tbaa !46
  %92 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 2, i64 2
  %93 = load float, ptr %92, align 8, !tbaa !46
  %94 = fcmp ogt float %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store float %93, ptr %22, align 4, !tbaa !46
  br label %96

96:                                               ; preds = %95, %90
  %97 = load float, ptr %2, align 4, !tbaa !46
  %98 = load float, ptr %80, align 8, !tbaa !46
  %99 = fcmp olt float %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store float %98, ptr %2, align 4, !tbaa !46
  br label %101

101:                                              ; preds = %100, %96
  %102 = load float, ptr %34, align 4, !tbaa !46
  %103 = load float, ptr %86, align 4, !tbaa !46
  %104 = fcmp olt float %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store float %103, ptr %34, align 4, !tbaa !46
  br label %106

106:                                              ; preds = %105, %101
  %107 = load float, ptr %40, align 4, !tbaa !46
  %108 = load float, ptr %92, align 8, !tbaa !46
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store float %108, ptr %40, align 4, !tbaa !46
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !48
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %335, label %115

115:                                              ; preds = %111
  %116 = load float, ptr %1, align 4, !tbaa !46
  %117 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3
  %118 = load float, ptr %117, align 8, !tbaa !46
  %119 = fcmp ogt float %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store float %118, ptr %1, align 4, !tbaa !46
  br label %121

121:                                              ; preds = %120, %115
  %122 = load float, ptr %15, align 4, !tbaa !46
  %123 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !46
  %125 = fcmp ogt float %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store float %124, ptr %15, align 4, !tbaa !46
  br label %127

127:                                              ; preds = %126, %121
  %128 = load float, ptr %22, align 4, !tbaa !46
  %129 = getelementptr inbounds %struct.RayFace, ptr %9, i64 0, i32 3, i64 2
  %130 = load float, ptr %129, align 8, !tbaa !46
  %131 = fcmp ogt float %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store float %130, ptr %22, align 4, !tbaa !46
  br label %133

133:                                              ; preds = %132, %127
  %134 = load float, ptr %2, align 4, !tbaa !46
  %135 = load float, ptr %117, align 8, !tbaa !46
  %136 = fcmp olt float %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store float %135, ptr %2, align 4, !tbaa !46
  br label %138

138:                                              ; preds = %137, %133
  %139 = load float, ptr %34, align 4, !tbaa !46
  %140 = load float, ptr %123, align 4, !tbaa !46
  %141 = fcmp olt float %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store float %140, ptr %34, align 4, !tbaa !46
  br label %143

143:                                              ; preds = %142, %138
  %144 = load float, ptr %40, align 4, !tbaa !46
  %145 = load float, ptr %129, align 8, !tbaa !46
  %146 = fcmp olt float %144, %145
  br i1 %146, label %147, label %335

147:                                              ; preds = %143
  store float %145, ptr %40, align 4, !tbaa !46
  br label %335

148:                                              ; preds = %3
  %149 = and i64 %5, -4
  %150 = inttoptr i64 %149 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = getelementptr inbounds %struct.VlakPrimitive, ptr %150, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !51
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !40
  %157 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !41
  %159 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 5
  store ptr %151, ptr %162, align 8, !tbaa !43
  %163 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 6
  store ptr %153, ptr %163, align 8, !tbaa !45
  %164 = load float, ptr %154, align 4, !tbaa !46
  store float %164, ptr %4, align 8, !tbaa !46
  %165 = getelementptr inbounds float, ptr %154, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !46
  %167 = getelementptr inbounds float, ptr %4, i64 1
  store float %166, ptr %167, align 4, !tbaa !46
  %168 = getelementptr inbounds float, ptr %154, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !46
  %170 = getelementptr inbounds float, ptr %4, i64 2
  store float %169, ptr %170, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1
  %172 = load float, ptr %156, align 4, !tbaa !46
  store float %172, ptr %171, align 8, !tbaa !46
  %173 = getelementptr inbounds float, ptr %156, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !46
  %175 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 1
  store float %174, ptr %175, align 4, !tbaa !46
  %176 = getelementptr inbounds float, ptr %156, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !46
  %178 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 1, i64 2
  store float %177, ptr %178, align 8, !tbaa !46
  %179 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2
  %180 = load float, ptr %158, align 4, !tbaa !46
  store float %180, ptr %179, align 8, !tbaa !46
  %181 = getelementptr inbounds float, ptr %158, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !46
  %183 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 1
  store float %182, ptr %183, align 4, !tbaa !46
  %184 = getelementptr inbounds float, ptr %158, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !46
  %186 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 2, i64 2
  store float %185, ptr %186, align 8, !tbaa !46
  br i1 %161, label %196, label %187

187:                                              ; preds = %148
  %188 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  %189 = load float, ptr %160, align 4, !tbaa !46
  store float %189, ptr %188, align 8, !tbaa !46
  %190 = getelementptr inbounds float, ptr %160, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !46
  %192 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 1
  store float %191, ptr %192, align 4, !tbaa !46
  %193 = getelementptr inbounds float, ptr %160, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !46
  %195 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 2
  store float %194, ptr %195, align 8, !tbaa !46
  br label %196

196:                                              ; preds = %148, %187
  %197 = phi i32 [ 1, %187 ], [ 0, %148 ]
  %198 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  store i32 %197, ptr %198, align 4, !tbaa !48
  %199 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %151, i64 0, i32 19
  %200 = load i32, ptr %199, align 8, !tbaa !90
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %151, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %4)
  call void @mul_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %171)
  call void @mul_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %179)
  %204 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  %205 = load i32, ptr %204, align 4, !tbaa !48
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  call void @mul_m4_v3(ptr noundef nonnull %203, ptr noundef nonnull %208)
  br label %209

209:                                              ; preds = %196, %202, %207
  %210 = load float, ptr %1, align 4, !tbaa !46
  %211 = load float, ptr %4, align 8, !tbaa !46
  %212 = fcmp ogt float %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store float %211, ptr %1, align 4, !tbaa !46
  br label %214

214:                                              ; preds = %213, %209
  %215 = getelementptr inbounds float, ptr %1, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !46
  %217 = load float, ptr %167, align 4, !tbaa !46
  %218 = fcmp ogt float %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store float %217, ptr %215, align 4, !tbaa !46
  br label %220

220:                                              ; preds = %219, %214
  %221 = getelementptr inbounds float, ptr %1, i64 2
  %222 = load float, ptr %221, align 4, !tbaa !46
  %223 = load float, ptr %170, align 8, !tbaa !46
  %224 = fcmp ogt float %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store float %223, ptr %221, align 4, !tbaa !46
  br label %226

226:                                              ; preds = %225, %220
  %227 = load float, ptr %2, align 4, !tbaa !46
  %228 = fcmp olt float %227, %211
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store float %211, ptr %2, align 4, !tbaa !46
  br label %230

230:                                              ; preds = %229, %226
  %231 = getelementptr inbounds float, ptr %2, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !46
  %233 = fcmp olt float %232, %217
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store float %217, ptr %231, align 4, !tbaa !46
  br label %235

235:                                              ; preds = %234, %230
  %236 = getelementptr inbounds float, ptr %2, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !46
  %238 = fcmp olt float %237, %223
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store float %223, ptr %236, align 4, !tbaa !46
  br label %240

240:                                              ; preds = %239, %235
  %241 = load float, ptr %1, align 4, !tbaa !46
  %242 = load float, ptr %171, align 8, !tbaa !46
  %243 = fcmp ogt float %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store float %242, ptr %1, align 4, !tbaa !46
  br label %245

245:                                              ; preds = %244, %240
  %246 = load float, ptr %215, align 4, !tbaa !46
  %247 = load float, ptr %175, align 4, !tbaa !46
  %248 = fcmp ogt float %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store float %247, ptr %215, align 4, !tbaa !46
  br label %250

250:                                              ; preds = %249, %245
  %251 = load float, ptr %221, align 4, !tbaa !46
  %252 = load float, ptr %178, align 8, !tbaa !46
  %253 = fcmp ogt float %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store float %252, ptr %221, align 4, !tbaa !46
  br label %255

255:                                              ; preds = %254, %250
  %256 = load float, ptr %2, align 4, !tbaa !46
  %257 = fcmp olt float %256, %242
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store float %242, ptr %2, align 4, !tbaa !46
  br label %259

259:                                              ; preds = %258, %255
  %260 = load float, ptr %231, align 4, !tbaa !46
  %261 = fcmp olt float %260, %247
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store float %247, ptr %231, align 4, !tbaa !46
  br label %263

263:                                              ; preds = %262, %259
  %264 = load float, ptr %236, align 4, !tbaa !46
  %265 = fcmp olt float %264, %252
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store float %252, ptr %236, align 4, !tbaa !46
  br label %267

267:                                              ; preds = %266, %263
  %268 = load float, ptr %1, align 4, !tbaa !46
  %269 = load float, ptr %179, align 8, !tbaa !46
  %270 = fcmp ogt float %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  store float %269, ptr %1, align 4, !tbaa !46
  br label %272

272:                                              ; preds = %271, %267
  %273 = load float, ptr %215, align 4, !tbaa !46
  %274 = load float, ptr %183, align 4, !tbaa !46
  %275 = fcmp ogt float %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store float %274, ptr %215, align 4, !tbaa !46
  br label %277

277:                                              ; preds = %276, %272
  %278 = load float, ptr %221, align 4, !tbaa !46
  %279 = load float, ptr %186, align 8, !tbaa !46
  %280 = fcmp ogt float %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  store float %279, ptr %221, align 4, !tbaa !46
  br label %282

282:                                              ; preds = %281, %277
  %283 = load float, ptr %2, align 4, !tbaa !46
  %284 = fcmp olt float %283, %269
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store float %269, ptr %2, align 4, !tbaa !46
  br label %286

286:                                              ; preds = %285, %282
  %287 = load float, ptr %231, align 4, !tbaa !46
  %288 = fcmp olt float %287, %274
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store float %274, ptr %231, align 4, !tbaa !46
  br label %290

290:                                              ; preds = %289, %286
  %291 = load float, ptr %236, align 4, !tbaa !46
  %292 = fcmp olt float %291, %279
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store float %279, ptr %236, align 4, !tbaa !46
  br label %294

294:                                              ; preds = %293, %290
  %295 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 4
  %296 = load i32, ptr %295, align 4, !tbaa !48
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %328, label %298

298:                                              ; preds = %294
  %299 = load float, ptr %1, align 4, !tbaa !46
  %300 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3
  %301 = load float, ptr %300, align 8, !tbaa !46
  %302 = fcmp ogt float %299, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  store float %301, ptr %1, align 4, !tbaa !46
  br label %304

304:                                              ; preds = %303, %298
  %305 = load float, ptr %215, align 4, !tbaa !46
  %306 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !46
  %308 = fcmp ogt float %305, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store float %307, ptr %215, align 4, !tbaa !46
  br label %310

310:                                              ; preds = %309, %304
  %311 = load float, ptr %221, align 4, !tbaa !46
  %312 = getelementptr inbounds %struct.RayFace, ptr %4, i64 0, i32 3, i64 2
  %313 = load float, ptr %312, align 8, !tbaa !46
  %314 = fcmp ogt float %311, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  store float %313, ptr %221, align 4, !tbaa !46
  br label %316

316:                                              ; preds = %315, %310
  %317 = load float, ptr %2, align 4, !tbaa !46
  %318 = fcmp olt float %317, %301
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  store float %301, ptr %2, align 4, !tbaa !46
  br label %320

320:                                              ; preds = %319, %316
  %321 = load float, ptr %231, align 4, !tbaa !46
  %322 = fcmp olt float %321, %307
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store float %307, ptr %231, align 4, !tbaa !46
  br label %324

324:                                              ; preds = %323, %320
  %325 = load float, ptr %236, align 4, !tbaa !46
  %326 = fcmp olt float %325, %313
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  store float %313, ptr %236, align 4, !tbaa !46
  br label %328

328:                                              ; preds = %324, %327, %294
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  br label %335

329:                                              ; preds = %3
  %330 = and i64 %5, -4
  %331 = inttoptr i64 %330 to ptr
  %332 = load ptr, ptr %331, align 8, !tbaa !96
  %333 = getelementptr inbounds %struct.RayObjectAPI, ptr %332, i64 0, i32 4
  %334 = load ptr, ptr %333, align 8, !tbaa !105
  tail call void %334(ptr noundef nonnull %331, ptr noundef %1, ptr noundef %2)
  br label %335

335:                                              ; preds = %3, %111, %147, %143, %328, %329
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @RE_rayobject_hint_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = and i64 %5, -4
  %10 = inttoptr i64 %9 to ptr
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.RayObjectAPI, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  tail call void %13(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @RE_rayobjectcontrol_test_break(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.RayObjectControl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !108
  %7 = tail call noundef i32 %3(ptr noundef %6)
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @RE_rayobject_set_control(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 3
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = and i64 %4, -4
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %struct.RayObject, ptr %9, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.RayObject, ptr %9, i64 0, i32 1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !110
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTS7VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !36, i64 8}
!41 = !{!35, !36, i64 16}
!42 = !{!35, !36, i64 24}
!43 = !{!44, !36, i64 64}
!44 = !{!"_ZTS7RayFace", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !39, i64 60, !36, i64 64, !36, i64 72}
!45 = !{!44, !36, i64 72}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{!44, !39, i64 60}
!49 = !{!50, !36, i64 0}
!50 = !{!"_ZTS13VlakPrimitive", !36, i64 0, !36, i64 8}
!51 = !{!50, !36, i64 8}
!52 = !{!39, !39, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !39, i64 88}
!57 = !{!"_ZTS5Isect", !37, i64 0, !37, i64 12, !47, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !47, i64 112, !47, i64 116, !39, i64 120, !58, i64 128, !58, i64 144, !36, i64 160, !36, i64 168}
!58 = !{!"_ZTSN5IsectUt_E", !36, i64 0, !36, i64 8}
!59 = !{!57, !36, i64 160}
!60 = !{!57, !36, i64 144}
!61 = !{!57, !36, i64 152}
!62 = !{!57, !39, i64 100}
!63 = !{!35, !37, i64 57}
!64 = !{!35, !36, i64 48}
!65 = !{!66, !39, i64 396}
!66 = !{!"_ZTS8Material", !67, i64 0, !36, i64 120, !68, i64 128, !68, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !69, i64 224, !70, i64 312, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !47, i64 348, !47, i64 352, !68, i64 356, !68, i64 358, !68, i64 360, !37, i64 362, !37, i64 363, !47, i64 364, !47, i64 368, !68, i64 372, !68, i64 374, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !68, i64 392, !68, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !68, i64 412, !68, i64 414, !68, i64 416, !68, i64 418, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !47, i64 456, !37, i64 460, !47, i64 524, !47, i64 528, !47, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !68, i64 544, !68, i64 546, !68, i64 548, !37, i64 550, !37, i64 551, !68, i64 552, !68, i64 554, !47, i64 556, !47, i64 560, !37, i64 564, !47, i64 580, !47, i64 584, !68, i64 588, !68, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !68, i64 612, !68, i64 614, !47, i64 616, !47, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !47, i64 800, !47, i64 804, !47, i64 808, !47, i64 812, !47, i64 816, !68, i64 820, !68, i64 822, !37, i64 824, !37, i64 836, !47, i64 848, !47, i64 852, !47, i64 856, !47, i64 860, !47, i64 864, !47, i64 868, !47, i64 872, !68, i64 876, !68, i64 878, !39, i64 880, !68, i64 884, !68, i64 886, !37, i64 888, !68, i64 904, !68, i64 906, !68, i64 908, !68, i64 910, !68, i64 912, !37, i64 914, !36, i64 920, !71, i64 928}
!67 = !{!"_ZTS2ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !68, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!68 = !{!"short", !37, i64 0}
!69 = !{!"_ZTS14VolumeSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !47, i64 52, !47, i64 56, !47, i64 60, !68, i64 64, !68, i64 66, !68, i64 68, !68, i64 70, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84}
!70 = !{!"_ZTS12GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!71 = !{!"_ZTS8ListBase", !36, i64 0, !36, i64 8}
!72 = !{!66, !39, i64 404}
!73 = !{!57, !39, i64 92}
!74 = !{!75, !39, i64 48}
!75 = !{!"_ZTS17ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !68, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!76 = !{!66, !68, i64 128}
!77 = !{!75, !36, i64 16}
!78 = !{!79, !36, i64 16}
!79 = !{!"_ZTS9ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!80 = !{!57, !36, i64 104}
!81 = !{!82, !68, i64 948}
!82 = !{!"_ZTS6Object", !67, i64 0, !36, i64 120, !36, i64 128, !68, i64 136, !68, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !83, i64 312, !36, i64 360, !71, i64 368, !71, i64 384, !71, i64 400, !71, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !68, i64 948, !68, i64 950, !68, i64 952, !68, i64 954, !68, i64 956, !68, i64 958, !68, i64 960, !68, i64 962, !68, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !68, i64 1036, !68, i64 1038, !68, i64 1040, !37, i64 1042, !37, i64 1043, !68, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !71, i64 1056, !71, i64 1072, !71, i64 1088, !71, i64 1104, !47, i64 1120, !68, i64 1124, !68, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !68, i64 1162, !37, i64 1164, !71, i64 1176, !71, i64 1192, !71, i64 1208, !71, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !68, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !84, i64 1304, !84, i64 1312, !39, i64 1320, !39, i64 1324, !71, i64 1328, !71, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !71, i64 1400, !36, i64 1416}
!83 = !{!"_ZTS16bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !68, i64 16, !68, i64 18, !68, i64 20, !68, i64 22, !68, i64 24, !68, i64 26, !68, i64 28, !68, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!84 = !{!"long", !37, i64 0}
!85 = !{!57, !47, i64 24}
!86 = !{!57, !39, i64 96}
!87 = !{!36, !36, i64 0}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
!90 = !{!75, !39, i64 280}
!91 = !{!57, !39, i64 120}
!92 = !{!57, !47, i64 112}
!93 = !{!57, !47, i64 116}
!94 = !{!57, !36, i64 128}
!95 = !{!57, !36, i64 136}
!96 = !{!97, !36, i64 0}
!97 = !{!"_ZTS9RayObject", !36, i64 0, !98, i64 8}
!98 = !{!"_ZTS16RayObjectControl", !36, i64 0, !36, i64 8}
!99 = !{!100, !36, i64 0}
!100 = !{!"_ZTS12RayObjectAPI", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!101 = !{!100, !36, i64 8}
!102 = !{!100, !36, i64 16}
!103 = !{!100, !36, i64 24}
!104 = !{!100, !36, i64 40}
!105 = !{!100, !36, i64 32}
!106 = !{!100, !36, i64 48}
!107 = !{!98, !36, i64 8}
!108 = !{!98, !36, i64 0}
!109 = !{!97, !36, i64 8}
!110 = !{!97, !36, i64 16}
