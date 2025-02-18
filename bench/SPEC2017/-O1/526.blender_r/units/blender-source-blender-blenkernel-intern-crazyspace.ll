; ModuleID = 'blender/source/blender/blenkernel/intern/crazyspace.c'
source_filename = "blender/source/blender/blenkernel/intern/crazyspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"vertexcos map\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"defmats\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"crazy quats\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %2, %25
  %13 = phi ptr [ %27, %25 ], [ %10, %2 ]
  %14 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !56
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = xor i32 %20, -2147483648
  store i32 %24, ptr %19, align 4, !tbaa !56
  br label %25

25:                                               ; preds = %23, %18, %12
  %26 = phi i32 [ 1, %23 ], [ %14, %18 ], [ %14, %12 ]
  %27 = load ptr, ptr %13, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !57

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !60
  tail call void @makeDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %32, i32 noundef 0) #7
  br label %33

33:                                               ; preds = %2, %31, %29
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %35 = sext i32 %8 to i64
  %36 = mul nsw i64 %35, 12
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str) #7
  %38 = load ptr, ptr %5, align 8, !tbaa !46
  %39 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !60
  %40 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %0, ptr noundef %1, ptr noundef %38, i64 noundef %39) #7
  tail call void @mesh_get_mapped_verts_coords(ptr noundef %40, ptr noundef %37, i32 noundef %8) #7
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 95
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  tail call void %42(ptr noundef %40) #7
  %43 = load ptr, ptr %9, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %33, %57
  %46 = phi ptr [ %58, %57 ], [ %43, %33 ]
  %47 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !56
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = xor i32 %52, -2147483648
  store i32 %56, ptr %51, align 4, !tbaa !56
  br label %57

57:                                               ; preds = %55, %50, %45
  %58 = load ptr, ptr %46, align 8, !tbaa !53
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %45, !llvm.loop !57

60:                                               ; preds = %57, %33
  ret ptr %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @mesh_get_mapped_verts_coords(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_crazyspace_set_quats_editmesh(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  store ptr %14, ptr %8, align 8, !tbaa !68
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #7
  %15 = load ptr, ptr %12, align 8, !tbaa !66
  %16 = call ptr %15(ptr noundef nonnull %8) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %27, %18 ], [ 0, %5 ]
  %20 = phi ptr [ %26, %18 ], [ %16, %5 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !69
  %23 = and i8 %22, -17
  store i8 %23, ptr %21, align 1, !tbaa !69
  %24 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  store i32 %19, ptr %24, align 8, !tbaa !71
  %25 = load ptr, ptr %12, align 8, !tbaa !66
  %26 = call ptr %25(ptr noundef nonnull %8) #7
  %27 = add nuw nsw i32 %19, 1
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %18, !llvm.loop !72

29:                                               ; preds = %18, %5
  %30 = load ptr, ptr %0, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 7
  %32 = load i8, ptr %31, align 4, !tbaa !73
  %33 = and i8 %32, -2
  store i8 %33, ptr %31, align 4, !tbaa !73
  store i8 3, ptr %10, align 4, !tbaa !63
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !65
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  store ptr %35, ptr %8, align 8, !tbaa !68
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #7
  %36 = load ptr, ptr %12, align 8, !tbaa !66
  %37 = call ptr %36(ptr noundef nonnull %8) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %101, label %39

39:                                               ; preds = %29
  %40 = icmp eq i8 %4, 0
  %41 = icmp eq ptr %1, null
  br label %42

42:                                               ; preds = %39, %97
  %43 = phi ptr [ %37, %39 ], [ %99, %97 ]
  %44 = getelementptr inbounds %struct.BMFace, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  br label %46

46:                                               ; preds = %93, %42
  %47 = phi ptr [ %45, %42 ], [ %95, %93 ]
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !69
  %52 = and i8 %51, 18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %46
  %55 = and i8 %51, 1
  %56 = icmp ne i8 %55, 0
  %57 = or i1 %40, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !71
  %65 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !80
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !71
  %73 = sext i32 %64 to i64
  %74 = getelementptr inbounds [3 x float], ptr %2, i64 %73
  %75 = sext i32 %66 to i64
  %76 = getelementptr inbounds [3 x float], ptr %2, i64 %75
  %77 = sext i32 %72 to i64
  %78 = getelementptr inbounds [3 x float], ptr %2, i64 %77
  %79 = getelementptr inbounds [3 x float], ptr %1, i64 %73
  %80 = getelementptr inbounds [3 x float], ptr %1, i64 %75
  %81 = getelementptr inbounds [3 x float], ptr %1, i64 %77
  %82 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2
  %83 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %84 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  %85 = select i1 %41, ptr %84, ptr %81
  %86 = select i1 %41, ptr %83, ptr %80
  %87 = select i1 %41, ptr %82, ptr %79
  %88 = getelementptr inbounds [4 x float], ptr %3, i64 %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %6, ptr noundef %86, ptr noundef %85, ptr noundef %87)
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %7, ptr noundef %76, ptr noundef %78, ptr noundef %74)
  call void @sub_qt_qtqt(ptr noundef %88, ptr noundef nonnull %7, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %89 = load ptr, ptr %48, align 8, !tbaa !77
  %90 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %91 = load i8, ptr %90, align 1, !tbaa !69
  %92 = or i8 %91, 16
  store i8 %92, ptr %90, align 1, !tbaa !69
  br label %93

93:                                               ; preds = %54, %58, %46
  %94 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = icmp eq ptr %95, %45
  br i1 %96, label %97, label %46, !llvm.loop !81

97:                                               ; preds = %93
  %98 = load ptr, ptr %12, align 8, !tbaa !66
  %99 = call ptr %98(ptr noundef nonnull %8) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %42, !llvm.loop !82

101:                                              ; preds = %97, %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_crazyspace_set_quats_mesh(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %4 ]
  %14 = phi ptr [ %19, %12 ], [ %8, %4 ]
  %15 = getelementptr inbounds %struct.MVert, ptr %14, i64 0, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !85
  %17 = and i8 %16, -5
  store i8 %17, ptr %15, align 2, !tbaa !85
  %18 = add nuw nsw i32 %13, 1
  %19 = getelementptr inbounds %struct.MVert, ptr %14, i64 1
  %20 = icmp eq i32 %18, %10
  br i1 %20, label %21, label %12, !llvm.loop !87

21:                                               ; preds = %12, %4
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %25 = load i32, ptr %24, align 8, !tbaa !89
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = icmp eq ptr %1, null
  br label %31

31:                                               ; preds = %27, %87
  %32 = phi i32 [ 0, %27 ], [ %88, %87 ]
  %33 = phi ptr [ %29, %27 ], [ %89, %87 ]
  %34 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !91
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %31
  %38 = load i32, ptr %33, align 4, !tbaa !93
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MLoop, ptr %23, i64 %39
  %41 = zext nneg i32 %35 to i64
  %42 = getelementptr %struct.MLoop, ptr %40, i64 %41
  %43 = getelementptr %struct.MLoop, ptr %42, i64 -2
  %44 = getelementptr %struct.MLoop, ptr %42, i64 -1
  br label %45

45:                                               ; preds = %37, %82
  %46 = phi i32 [ %84, %82 ], [ 0, %37 ]
  %47 = phi ptr [ %83, %82 ], [ %40, %37 ]
  %48 = phi ptr [ %47, %82 ], [ %44, %37 ]
  %49 = phi ptr [ %48, %82 ], [ %43, %37 ]
  %50 = load i32, ptr %48, align 4, !tbaa !94
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %8, i64 %51
  %53 = getelementptr inbounds %struct.MVert, ptr %8, i64 %51, i32 2
  %54 = load i8, ptr %53, align 2, !tbaa !85
  %55 = and i8 %54, 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %45
  %58 = load i32, ptr %49, align 4, !tbaa !94
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [3 x float], ptr %2, i64 %59
  %61 = getelementptr inbounds [3 x float], ptr %2, i64 %51
  %62 = load i32, ptr %47, align 4, !tbaa !94
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [3 x float], ptr %2, i64 %63
  br i1 %30, label %69, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds [3 x float], ptr %1, i64 %59
  %67 = getelementptr inbounds [3 x float], ptr %1, i64 %51
  %68 = getelementptr inbounds [3 x float], ptr %1, i64 %63
  br label %72

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.MVert, ptr %8, i64 %59
  %71 = getelementptr inbounds %struct.MVert, ptr %8, i64 %63
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %66, %65 ], [ %70, %69 ]
  %74 = phi ptr [ %67, %65 ], [ %52, %69 ]
  %75 = phi ptr [ %68, %65 ], [ %71, %69 ]
  %76 = getelementptr inbounds [4 x float], ptr %3, i64 %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %5, ptr noundef %74, ptr noundef %75, ptr noundef %73)
  call fastcc void @tan_calc_quat_v3(ptr noundef nonnull %6, ptr noundef %61, ptr noundef %64, ptr noundef %60)
  call void @sub_qt_qtqt(ptr noundef %76, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %77 = load i32, ptr %48, align 4, !tbaa !94
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.MVert, ptr %8, i64 %78, i32 2
  %80 = load i8, ptr %79, align 2, !tbaa !85
  %81 = or i8 %80, 4
  store i8 %81, ptr %79, align 2, !tbaa !85
  br label %82

82:                                               ; preds = %72, %45
  %83 = getelementptr inbounds %struct.MLoop, ptr %47, i64 1
  %84 = add nuw nsw i32 %46, 1
  %85 = load i32, ptr %34, align 4, !tbaa !91
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %45, label %87, !llvm.loop !96

87:                                               ; preds = %82, %31
  %88 = add nuw nsw i32 %32, 1
  %89 = getelementptr inbounds %struct.MPoly, ptr %33, i64 1
  %90 = load i32, ptr %24, align 8, !tbaa !89
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %31, label %92, !llvm.loop !97

92:                                               ; preds = %87, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @editbmesh_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !98
  %8 = tail call i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %7) #7
  tail call void @modifiers_clearErrors(ptr noundef %1) #7
  %9 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %7) #7
  %10 = icmp ne ptr %9, null
  %11 = icmp sgt i32 %8, -1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %68

13:                                               ; preds = %5, %62
  %14 = phi ptr [ %64, %62 ], [ %9, %5 ]
  %15 = phi ptr [ %60, %62 ], [ null, %5 ]
  %16 = phi ptr [ %59, %62 ], [ null, %5 ]
  %17 = phi ptr [ %58, %62 ], [ null, %5 ]
  %18 = phi i32 [ %63, %62 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !54
  %21 = call ptr @modifierType_getInfo(i32 noundef %20) #7
  %22 = call zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %17) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !99
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %16, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = call ptr @getEditDerivedBMesh(ptr noundef %2, ptr noundef %1, ptr noundef null) #7
  %36 = call ptr @editbmesh_get_vertex_cos(ptr noundef %2, ptr noundef nonnull %6) #7
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %38 = load i32, ptr %6, align 4, !tbaa !98
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 36
  %41 = call ptr %37(i64 noundef %40, ptr noundef nonnull @.str.1) #7
  %42 = load i32, ptr %6, align 4, !tbaa !98
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34, %44
  %45 = phi i64 [ %47, %44 ], [ 0, %34 ]
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 %45
  call void @unit_m3(ptr noundef %46) #7
  %47 = add nuw nsw i64 %45, 1
  %48 = load i32, ptr %6, align 4, !tbaa !98
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %44, label %51, !llvm.loop !102

51:                                               ; preds = %44, %34, %32
  %52 = phi ptr [ %17, %32 ], [ %35, %34 ], [ %35, %44 ]
  %53 = phi ptr [ %16, %32 ], [ %41, %34 ], [ %41, %44 ]
  %54 = phi ptr [ %15, %32 ], [ %36, %34 ], [ %36, %44 ]
  %55 = load ptr, ptr %29, align 8, !tbaa !101
  %56 = load i32, ptr %6, align 4, !tbaa !98
  call void %55(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2, ptr noundef %52, ptr noundef %54, ptr noundef %53, i32 noundef %56) #7
  br label %57

57:                                               ; preds = %24, %28, %13, %51
  %58 = phi ptr [ %52, %51 ], [ %17, %13 ], [ %17, %28 ], [ %17, %24 ]
  %59 = phi ptr [ %53, %51 ], [ %16, %13 ], [ %16, %28 ], [ %16, %24 ]
  %60 = phi ptr [ %54, %51 ], [ %15, %13 ], [ %15, %28 ], [ %15, %24 ]
  %61 = phi i1 [ false, %51 ], [ false, %13 ], [ true, %28 ], [ true, %24 ]
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = add nuw nsw i32 %18, 1
  %64 = load ptr, ptr %14, align 8, !tbaa !103
  %65 = icmp ne ptr %64, null
  %66 = icmp slt i32 %18, %8
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %13, label %68, !llvm.loop !104

68:                                               ; preds = %62, %57, %5
  %69 = phi i32 [ 0, %5 ], [ %63, %62 ], [ %18, %57 ]
  %70 = phi ptr [ %9, %5 ], [ %64, %62 ], [ %14, %57 ]
  %71 = phi ptr [ null, %5 ], [ %58, %57 ], [ %58, %62 ]
  %72 = phi ptr [ null, %5 ], [ %59, %57 ], [ %59, %62 ]
  %73 = phi ptr [ null, %5 ], [ %60, %57 ], [ %60, %62 ]
  %74 = icmp ne ptr %70, null
  %75 = icmp sle i32 %69, %8
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %95

77:                                               ; preds = %68, %88
  %78 = phi ptr [ %90, %88 ], [ %70, %68 ]
  %79 = phi i32 [ %89, %88 ], [ 0, %68 ]
  %80 = phi i32 [ %91, %88 ], [ %69, %68 ]
  %81 = call zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef %0, ptr noundef nonnull %78, ptr noundef %71) #7
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = call zeroext i8 @modifier_isCorrectableDeformed(ptr noundef nonnull %78) #7
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 %79, %86
  br label %88

88:                                               ; preds = %83, %77
  %89 = phi i32 [ %79, %77 ], [ %87, %83 ]
  %90 = load ptr, ptr %78, align 8, !tbaa !103
  %91 = add nuw nsw i32 %80, 1
  %92 = icmp ne ptr %90, null
  %93 = icmp slt i32 %80, %8
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %77, label %95, !llvm.loop !105

95:                                               ; preds = %88, %68
  %96 = phi i32 [ 0, %68 ], [ %89, %88 ]
  %97 = icmp eq ptr %71, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 95
  %100 = load ptr, ptr %99, align 8, !tbaa !61
  call void %100(ptr noundef nonnull %71) #7
  br label %101

101:                                              ; preds = %98, %95
  store ptr %72, ptr %3, align 8, !tbaa !53
  store ptr %73, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %96
}

declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @modifiers_clearErrors(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @editbmesh_modifier_is_enabled(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @getEditDerivedBMesh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @editbmesh_get_vertex_cos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @modifier_isCorrectableDeformed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_sculpt_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !tbaa !98
  %7 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 2
  %11 = load i8, ptr %10, align 1, !tbaa !106
  %12 = icmp eq i8 %11, 0
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #7
  br i1 %12, label %14, label %100

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #7
  br label %14

14:                                               ; preds = %13, %9
  %15 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %6) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  br label %19

19:                                               ; preds = %17, %67
  %20 = phi ptr [ %15, %17 ], [ %68, %67 ]
  %21 = phi ptr [ null, %17 ], [ %66, %67 ]
  %22 = phi ptr [ null, %17 ], [ %64, %67 ]
  %23 = phi ptr [ null, %17 ], [ %63, %67 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !54
  %26 = call ptr @modifierType_getInfo(i32 noundef %25) #7
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 1) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !99
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = load ptr, ptr %18, align 8, !tbaa !34
  %37 = call ptr @mesh_create_derived(ptr noundef %36, ptr noundef null) #7
  %38 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %36, ptr noundef nonnull %5) #7
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %40 = load i32, ptr %5, align 4, !tbaa !98
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, 36
  %43 = call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.1) #7
  %44 = load i32, ptr %5, align 4, !tbaa !98
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %49, %46 ], [ 0, %35 ]
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 %47
  call void @unit_m3(ptr noundef %48) #7
  %49 = add nuw nsw i64 %47, 1
  %50 = load i32, ptr %5, align 4, !tbaa !98
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %46, label %53, !llvm.loop !108

53:                                               ; preds = %46, %35, %33
  %54 = phi ptr [ %23, %33 ], [ %38, %35 ], [ %38, %46 ]
  %55 = phi ptr [ %22, %33 ], [ %43, %35 ], [ %43, %46 ]
  %56 = phi ptr [ %21, %33 ], [ %37, %35 ], [ %37, %46 ]
  %57 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %5, align 4, !tbaa !98
  call void %58(ptr noundef nonnull %20, ptr noundef %1, ptr noundef %56, ptr noundef %54, ptr noundef %55, i32 noundef %61) #7
  br label %62

62:                                               ; preds = %29, %60, %53, %19
  %63 = phi ptr [ %23, %19 ], [ %54, %53 ], [ %54, %60 ], [ %23, %29 ]
  %64 = phi ptr [ %22, %19 ], [ %55, %53 ], [ %55, %60 ], [ %22, %29 ]
  %65 = phi i1 [ false, %19 ], [ true, %53 ], [ false, %60 ], [ false, %29 ]
  %66 = phi ptr [ %21, %19 ], [ %56, %53 ], [ %56, %60 ], [ %21, %29 ]
  br i1 %65, label %70, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %20, align 8, !tbaa !103
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %19, !llvm.loop !110

70:                                               ; preds = %67, %62, %14
  %71 = phi ptr [ %15, %14 ], [ %68, %67 ], [ %20, %62 ]
  %72 = phi ptr [ null, %14 ], [ %63, %62 ], [ %63, %67 ]
  %73 = phi ptr [ null, %14 ], [ %64, %62 ], [ %64, %67 ]
  %74 = phi ptr [ null, %14 ], [ %66, %62 ], [ %66, %67 ]
  %75 = icmp eq ptr %71, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %70, %90
  %77 = phi ptr [ %92, %90 ], [ %71, %70 ]
  %78 = phi i32 [ %91, %90 ], [ 0, %70 ]
  %79 = getelementptr inbounds %struct.ModifierData, ptr %77, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !54
  %81 = call ptr @modifierType_getInfo(i32 noundef %80) #7
  %82 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %77, i32 noundef 1) #7
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %81, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !99
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = add nsw i32 %78, %88
  br label %90

90:                                               ; preds = %76, %84
  %91 = phi i32 [ %89, %84 ], [ %78, %76 ]
  %92 = load ptr, ptr %77, align 8, !tbaa !103
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %76, !llvm.loop !111

94:                                               ; preds = %90, %70
  %95 = phi i32 [ 0, %70 ], [ %91, %90 ]
  %96 = icmp eq ptr %74, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %74, i64 0, i32 95
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  call void %99(ptr noundef nonnull %74) #7
  br label %100

100:                                              ; preds = %94, %97, %9
  %101 = phi ptr [ null, %9 ], [ %73, %97 ], [ %73, %94 ]
  %102 = phi ptr [ null, %9 ], [ %72, %97 ], [ %72, %94 ]
  %103 = phi i32 [ 0, %9 ], [ %95, %97 ], [ %95, %94 ]
  store ptr %101, ptr %2, align 8, !tbaa !53
  store ptr %102, ptr %3, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %103
}

declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_crazyspace_build_sculpt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.VirtualModifierData, align 8
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca i32, align 4
  %9 = tail call i32 @BKE_sculpt_get_first_deform_matrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %70, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !tbaa !53
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !53
  %14 = tail call ptr %13(ptr noundef %12) #7
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #7
  %15 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5) #7
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %15, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 26
  br label %21

21:                                               ; preds = %19, %43
  %22 = phi i32 [ 0, %19 ], [ %44, %43 ]
  %23 = phi ptr [ %15, %19 ], [ %45, %43 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !54
  %26 = call ptr @modifierType_getInfo(i32 noundef %25) #7
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 1) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !99
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = icmp eq ptr %35, null
  %37 = icmp ne i32 %22, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %26, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = load i32, ptr %20, align 8, !tbaa !84
  call void %41(ptr noundef nonnull %23, ptr noundef %1, ptr noundef null, ptr noundef %12, i32 noundef %42, i32 noundef 0) #7
  br label %43

43:                                               ; preds = %29, %39, %33, %21
  %44 = phi i32 [ %22, %21 ], [ 0, %33 ], [ 1, %39 ], [ %22, %29 ]
  %45 = load ptr, ptr %23, align 8, !tbaa !103
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !113

47:                                               ; preds = %43, %11
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 26
  %50 = load i32, ptr %49, align 8, !tbaa !84
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 4
  %53 = call ptr %48(i64 noundef %52, ptr noundef nonnull @.str.2) #7
  call void @BKE_crazyspace_set_quats_mesh(ptr noundef %17, ptr noundef %14, ptr noundef %12, ptr noundef %53)
  %54 = load i32, ptr %49, align 8, !tbaa !84
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47, %56
  %57 = phi i64 [ %63, %56 ], [ 0, %47 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  %58 = getelementptr inbounds [4 x float], ptr %53, i64 %57
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef %58) #7
  %59 = load ptr, ptr %2, align 8, !tbaa !53
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 %57
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %60) #7
  %61 = load ptr, ptr %2, align 8, !tbaa !53
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %61, i64 %57
  call void @copy_m3_m3(ptr noundef %62, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  %63 = add nuw nsw i64 %57, 1
  %64 = load i32, ptr %49, align 8, !tbaa !84
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %56, label %67, !llvm.loop !114

67:                                               ; preds = %56, %47
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %68(ptr noundef %14) #7
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %69(ptr noundef %53) #7
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #7
  br label %70

70:                                               ; preds = %67, %4
  %71 = load ptr, ptr %2, align 8, !tbaa !53
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %74 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = call ptr @BKE_mesh_vertexCos_get(ptr noundef %75, ptr noundef nonnull %8) #7
  store ptr %76, ptr %3, align 8, !tbaa !53
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %78 = load i32, ptr %8, align 4, !tbaa !98
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 36
  %81 = call ptr %77(i64 noundef %80, ptr noundef nonnull @.str.1) #7
  store ptr %81, ptr %2, align 8, !tbaa !53
  %82 = load i32, ptr %8, align 4, !tbaa !98
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73, %84
  %85 = phi i64 [ %88, %84 ], [ 0, %73 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !53
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %86, i64 %85
  call void @unit_m3(ptr noundef %87) #7
  %88 = add nuw nsw i64 %85, 1
  %89 = load i32, ptr %8, align 4, !tbaa !98
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %84, label %92, !llvm.loop !115

92:                                               ; preds = %84, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %93

93:                                               ; preds = %92, %70
  ret void
}

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tan_calc_quat_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %9 = load float, ptr %1, align 4, !tbaa !116
  %10 = load float, ptr %2, align 4, !tbaa !116
  %11 = fsub float %9, %10
  store float %11, ptr %5, align 4, !tbaa !116
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !116
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %5, i64 1
  store float %16, ptr %17, align 4, !tbaa !116
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !116
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !116
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %5, i64 2
  store float %22, ptr %23, align 4, !tbaa !116
  %24 = load float, ptr %3, align 4, !tbaa !116
  %25 = fsub float %9, %24
  store float %25, ptr %6, align 4, !tbaa !116
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !116
  %28 = fsub float %13, %27
  %29 = getelementptr inbounds float, ptr %6, i64 1
  store float %28, ptr %29, align 4, !tbaa !116
  %30 = getelementptr inbounds float, ptr %3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !116
  %32 = fsub float %19, %31
  %33 = getelementptr inbounds float, ptr %6, i64 2
  store float %32, ptr %33, align 4, !tbaa !116
  %34 = fneg float %22
  %35 = fmul float %28, %34
  %36 = tail call float @llvm.fmuladd.f32(float %16, float %32, float %35)
  store float %36, ptr %7, align 4, !tbaa !116
  %37 = fneg float %11
  %38 = fmul float %32, %37
  %39 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %38)
  %40 = getelementptr inbounds float, ptr %7, i64 1
  store float %39, ptr %40, align 4, !tbaa !116
  %41 = fneg float %16
  %42 = fmul float %25, %41
  %43 = tail call float @llvm.fmuladd.f32(float %11, float %28, float %42)
  %44 = getelementptr inbounds float, ptr %7, i64 2
  store float %43, ptr %44, align 4, !tbaa !116
  %45 = fmul float %39, %39
  %46 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %46)
  %48 = fcmp ogt float %47, 0x38AA95A5C0000000
  br i1 %48, label %49, label %59

49:                                               ; preds = %4
  %50 = tail call float @sqrtf(float noundef %47) #7
  %51 = fdiv float 1.000000e+00, %50
  %52 = load float, ptr %7, align 4, !tbaa !116
  %53 = fmul float %52, %51
  store float %53, ptr %7, align 4, !tbaa !116
  %54 = load float, ptr %40, align 4, !tbaa !116
  %55 = fmul float %51, %54
  store float %55, ptr %40, align 4, !tbaa !116
  %56 = load float, ptr %44, align 4, !tbaa !116
  %57 = fmul float %51, %56
  %58 = fcmp ogt float %50, 0x3E80000000000000
  store float %57, ptr %44, align 4, !tbaa !116
  br i1 %58, label %60, label %61

59:                                               ; preds = %4
  store float 0.000000e+00, ptr %7, align 4, !tbaa !116
  store float 0.000000e+00, ptr %40, align 4, !tbaa !116
  store float 0.000000e+00, ptr %44, align 4, !tbaa !116
  br label %61

60:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @tri_to_quat_ex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  br label %62

61:                                               ; preds = %59, %49
  tail call void @unit_qt(ptr noundef %0) #7
  br label %62

62:                                               ; preds = %61, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret void
}

declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @tri_to_quat_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 272}
!47 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !48, i64 280, !48, i64 480, !48, i64 680, !48, i64 880, !48, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!48 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!49 = !{!50, !37, i64 0}
!50 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!51 = !{!52, !41, i64 0}
!52 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!53 = !{!37, !37, i64 0}
!54 = !{!55, !41, i64 16}
!55 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!56 = !{!55, !41, i64 20}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!45, !45, i64 0}
!61 = !{!62, !37, i64 1680}
!62 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!63 = !{!64, !38, i64 60}
!64 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!65 = !{!64, !37, i64 40}
!66 = !{!64, !37, i64 48}
!67 = !{!52, !37, i64 32}
!68 = !{!38, !38, i64 0}
!69 = !{!70, !38, i64 13}
!70 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!71 = !{!70, !41, i64 8}
!72 = distinct !{!72, !58, !59}
!73 = !{!52, !38, i64 28}
!74 = !{!52, !37, i64 56}
!75 = !{!76, !37, i64 24}
!76 = !{!"BMFace", !70, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!77 = !{!78, !37, i64 16}
!78 = !{!"BMLoop", !70, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!79 = !{!78, !37, i64 64}
!80 = !{!78, !37, i64 56}
!81 = distinct !{!81, !58, !59}
!82 = distinct !{!82, !58, !59}
!83 = !{!47, !37, i64 232}
!84 = !{!47, !41, i64 1280}
!85 = !{!86, !38, i64 18}
!86 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!87 = distinct !{!87, !58, !59}
!88 = !{!47, !37, i64 184}
!89 = !{!47, !41, i64 1296}
!90 = !{!47, !37, i64 168}
!91 = !{!92, !41, i64 4}
!92 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!93 = !{!92, !41, i64 0}
!94 = !{!95, !41, i64 0}
!95 = !{!"MLoop", !41, i64 0, !41, i64 4}
!96 = distinct !{!96, !58, !59}
!97 = distinct !{!97, !58, !59}
!98 = !{!41, !41, i64 0}
!99 = !{!100, !41, i64 68}
!100 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!101 = !{!100, !37, i64 112}
!102 = distinct !{!102, !58, !59}
!103 = !{!55, !37, i64 0}
!104 = distinct !{!104, !58, !59}
!105 = distinct !{!105, !58, !59}
!106 = !{!107, !38, i64 113}
!107 = !{!"MultiresModifierData", !55, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!108 = distinct !{!108, !58, !59}
!109 = !{!100, !37, i64 96}
!110 = distinct !{!110, !58, !59}
!111 = distinct !{!111, !58, !59}
!112 = !{!100, !37, i64 88}
!113 = distinct !{!113, !58, !59}
!114 = distinct !{!114, !58, !59}
!115 = distinct !{!115, !58, !59}
!116 = !{!44, !44, i64 0}
