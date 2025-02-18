; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_iterators.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.foreachScreenObjectVert_userData = type { ptr, ptr, %struct.ViewContext, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.foreachScreenVert_userData = type { ptr, ptr, %struct.ViewContext, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.foreachScreenEdge_userData = type { ptr, ptr, %struct.ViewContext, %struct.rctf, i32 }
%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.foreachScreenFace_userData = type { ptr, ptr, %struct.ViewContext, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8

; Function Attrs: nounwind uwtable
define dso_local void @meshobject_foreachScreenVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenObjectVert_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %10 = tail call ptr @mesh_get_derived_deform(ptr noundef %6, ptr noundef %8, i64 noundef %9) #4
  %11 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  store ptr %1, ptr %5, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %13, align 8, !tbaa !49
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %18, ptr noundef nonnull %21) #4
  br label %22

22:                                               ; preds = %16, %4
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 71
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  call void %24(ptr noundef %10, ptr noundef nonnull @meshobject_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #4
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  call void %26(ptr noundef %10) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @meshobject_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !66
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %20 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = call i32 @ED_view3d_project_float_object(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  call void %27(ptr noundef %29, ptr noundef %14, ptr noundef nonnull %6, i32 noundef %1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %31

30:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %31

31:                                               ; preds = %26, %5, %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @mesh_foreachScreenVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenVert_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #4
  %13 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  store ptr %1, ptr %5, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !73
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = load ptr, ptr %7, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %20, ptr noundef nonnull %22) #4
  br label %23

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %9, align 8, !tbaa !69
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %25, i8 noundef zeroext 1) #4
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 71
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  call void %27(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #4
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  call void %29(ptr noundef %12) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #4
  ret void
}

declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mesh_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #4
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !77
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %16 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !73
  %20 = call i32 @ED_view3d_project_float_object(ptr noundef %17, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %19) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  call void %23(ptr noundef %25, ptr noundef %10, ptr noundef nonnull %6, i32 noundef %1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %27

26:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %27

27:                                               ; preds = %22, %5, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mesh_foreachScreenEdge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenEdge_userData, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #4
  %13 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  %14 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3
  store float 0.000000e+00, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 2
  store float 0.000000e+00, ptr %15, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !85
  %20 = sitofp i16 %19 to float
  %21 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 1
  store float %20, ptr %21, align 4, !tbaa !89
  %22 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 6
  %23 = load i16, ptr %22, align 2, !tbaa !90
  %24 = sitofp i16 %23 to float
  %25 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 3
  store float %24, ptr %25, align 4, !tbaa !91
  store ptr %1, ptr %5, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !93
  %27 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 4
  store i32 %3, ptr %27, align 8, !tbaa !94
  %28 = and i32 %3, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = load ptr, ptr %7, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %32, ptr noundef nonnull %34) #4
  br label %35

35:                                               ; preds = %30, %4
  %36 = load ptr, ptr %9, align 8, !tbaa !69
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %37, i8 noundef zeroext 2) #4
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 72
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  call void %39(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenEdge__mapFunc, ptr noundef nonnull %5) #4
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  call void %41(ptr noundef %12) #4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_foreachScreenEdge__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @BM_edge_at_index(ptr noundef %9, i32 noundef %1) #4
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !77
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %16 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !94
  %18 = and i32 %17, -3
  store i32 %18, ptr %16, align 8, !tbaa !94
  %19 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = call i32 @ED_view3d_project_float_object(ptr noundef %20, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %18) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load ptr, ptr %19, align 8, !tbaa !97
  %25 = call i32 @ED_view3d_project_float_object(ptr noundef %24, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %18) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, ptr %16, align 8, !tbaa !94
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 3
  %33 = call zeroext i8 @BLI_rctf_isect_segment(ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %27
  %36 = load ptr, ptr %0, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  call void %36(ptr noundef %38, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %40

39:                                               ; preds = %31, %23, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %40

40:                                               ; preds = %4, %35, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mesh_foreachScreenFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenFace_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #4
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #4
  %13 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  store ptr %1, ptr %5, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !101
  %16 = load ptr, ptr %9, align 8, !tbaa !69
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %17, i8 noundef zeroext 8) #4
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  call void %19(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenFace__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #4
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  call void %21(ptr noundef %12) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_foreachScreenFace__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @BM_face_at_index(ptr noundef %8, i32 noundef %1) #4
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !77
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !101
  %19 = call i32 @ED_view3d_project_float_object(ptr noundef %16, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %18) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load ptr, ptr %0, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  call void %22(ptr noundef %24, ptr noundef %9, ptr noundef nonnull %5, i32 noundef %1) #4
  br label %25

25:                                               ; preds = %21, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %26

26:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nurbs_foreachScreenVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %10) #4
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = load ptr, ptr %7, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %16, ptr noundef nonnull %18) #4
  br label %19

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr %11, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %109, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  %25 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %22, %106
  %28 = phi ptr [ %20, %22 ], [ %107, %106 ]
  %29 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !105
  %31 = icmp eq i16 %30, 1
  %32 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 6
  br i1 %31, label %41, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 7
  %35 = load i32, ptr %32, align 8, !tbaa !107
  %36 = load i32, ptr %34, align 4, !tbaa !108
  %37 = mul nsw i32 %36, %35
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 17
  br label %86

41:                                               ; preds = %27
  %42 = load i32, ptr %32, align 8, !tbaa !107
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %106

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 18
  br label %46

46:                                               ; preds = %44, %81
  %47 = phi i64 [ 0, %44 ], [ %82, %81 ]
  %48 = load ptr, ptr %45, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 %47
  %50 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 %47, i32 10
  %51 = load i8, ptr %50, align 2, !tbaa !110
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %54 = load i16, ptr %24, align 8, !tbaa !112
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %25, align 8, !tbaa !84
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1
  %60 = call i32 @ED_view3d_project_float_object(ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %5, i32 noundef 7) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %78, label %80

62:                                               ; preds = %53
  %63 = load ptr, ptr %26, align 8, !tbaa !84
  %64 = call i32 @ED_view3d_project_float_object(ptr noundef %63, ptr noundef %49, ptr noundef nonnull %5, i32 noundef 7) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void %1(ptr noundef %2, ptr noundef nonnull %28, ptr noundef null, ptr noundef %49, i32 noundef 0, ptr noundef nonnull %5) #4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load ptr, ptr %26, align 8, !tbaa !84
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1
  %70 = call i32 @ED_view3d_project_float_object(ptr noundef %68, ptr noundef nonnull %69, ptr noundef nonnull %5, i32 noundef 7) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void %1(ptr noundef %2, ptr noundef nonnull %28, ptr noundef null, ptr noundef %49, i32 noundef 1, ptr noundef nonnull %5) #4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load ptr, ptr %26, align 8, !tbaa !84
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 2
  %76 = call i32 @ED_view3d_project_float_object(ptr noundef %74, ptr noundef nonnull %75, ptr noundef nonnull %5, i32 noundef 7) #4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %57
  %79 = phi i32 [ 1, %57 ], [ 2, %73 ]
  call void %1(ptr noundef %2, ptr noundef nonnull %28, ptr noundef null, ptr noundef %49, i32 noundef %79, ptr noundef nonnull %5) #4
  br label %80

80:                                               ; preds = %78, %73, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %81

81:                                               ; preds = %80, %46
  %82 = add nuw nsw i64 %47, 1
  %83 = load i32, ptr %32, align 8, !tbaa !107
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %46, label %106, !llvm.loop !115

86:                                               ; preds = %39, %99
  %87 = phi i64 [ 0, %39 ], [ %100, %99 ]
  %88 = load ptr, ptr %40, align 8, !tbaa !118
  %89 = getelementptr inbounds %struct.BPoint, ptr %88, i64 %87
  %90 = getelementptr inbounds %struct.BPoint, ptr %88, i64 %87, i32 4
  %91 = load i16, ptr %90, align 2, !tbaa !119
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %94 = load ptr, ptr %23, align 8, !tbaa !84
  %95 = call i32 @ED_view3d_project_float_object(ptr noundef %94, ptr noundef %89, ptr noundef nonnull %6, i32 noundef 7) #4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  call void %1(ptr noundef %2, ptr noundef nonnull %28, ptr noundef %89, ptr noundef null, i32 noundef -1, ptr noundef nonnull %6) #4
  br label %98

98:                                               ; preds = %97, %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %99

99:                                               ; preds = %98, %86
  %100 = add nuw nsw i64 %87, 1
  %101 = load i32, ptr %32, align 8, !tbaa !107
  %102 = load i32, ptr %34, align 4, !tbaa !108
  %103 = mul nsw i32 %102, %101
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %86, label %106, !llvm.loop !121

106:                                              ; preds = %99, %81, %33, %41
  %107 = load ptr, ptr %28, align 8, !tbaa !43
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %27, !llvm.loop !122

109:                                              ; preds = %106, %19
  ret void
}

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mball_foreachScreenElem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %23
  %17 = phi ptr [ %12, %14 ], [ %24, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %18 = load ptr, ptr %15, align 8, !tbaa !84
  %19 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 7
  %20 = call i32 @ED_view3d_project_float_object(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %5, i32 noundef %3) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void %1(ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %5) #4
  br label %23

23:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  %24 = load ptr, ptr %17, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !125

26:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lattice_foreachScreenVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = tail call ptr @BKE_displist_find(ptr noundef nonnull %16, i32 noundef 7) #4
  br label %20

20:                                               ; preds = %4, %18
  %21 = phi ptr [ %19, %18 ], [ null, %4 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.DispList, ptr %21, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi ptr [ %25, %23 ], [ null, %20 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !126
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct.Lattice, ptr %29, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !134
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.Lattice, ptr %29, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !135
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.Lattice, ptr %29, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !136
  %39 = sext i16 %38 to i32
  %40 = mul i32 %36, %39
  %41 = and i32 %3, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %45, ptr noundef nonnull %46) #4
  br label %47

47:                                               ; preds = %43, %26
  %48 = icmp sgt i32 %40, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %51

51:                                               ; preds = %49, %65
  %52 = phi ptr [ %14, %49 ], [ %67, %65 ]
  %53 = phi i32 [ 0, %49 ], [ %66, %65 ]
  %54 = phi ptr [ %27, %49 ], [ %68, %65 ]
  %55 = getelementptr inbounds %struct.BPoint, ptr %52, i64 0, i32 4
  %56 = load i16, ptr %55, align 2, !tbaa !119
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %59 = load ptr, ptr %50, align 8, !tbaa !84
  %60 = select i1 %22, ptr %52, ptr %54
  %61 = call i32 @ED_view3d_project_float_object(ptr noundef %59, ptr noundef %60, ptr noundef nonnull %5, i32 noundef %3) #4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void %1(ptr noundef %2, ptr noundef %52, ptr noundef nonnull %5) #4
  br label %64

64:                                               ; preds = %63, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %65

65:                                               ; preds = %51, %64
  %66 = add nuw nsw i32 %53, 1
  %67 = getelementptr inbounds %struct.BPoint, ptr %52, i64 1
  %68 = getelementptr inbounds float, ptr %54, i64 3
  %69 = icmp eq i32 %66, %40
  br i1 %69, label %70, label %51, !llvm.loop !137

70:                                               ; preds = %65, %47
  ret void
}

declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @armature_foreachScreenBone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %48
  %19 = phi ptr [ %13, %15 ], [ %49, %48 ]
  %20 = load i32, ptr %16, align 8, !tbaa !140
  %21 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !141
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !143
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %31 = load ptr, ptr %17, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 7
  %33 = call i32 @ED_view3d_project_float_object(ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %5, i32 noundef %3) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store float 1.200000e+04, ptr %5, align 4, !tbaa !144
  br label %36

36:                                               ; preds = %30, %35
  %37 = phi i32 [ 0, %35 ], [ 1, %30 ]
  %38 = load ptr, ptr %17, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 8
  %40 = call i32 @ED_view3d_project_float_object(ptr noundef %38, ptr noundef nonnull %39, ptr noundef nonnull %6, i32 noundef %3) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store float 1.200000e+04, ptr %6, align 4, !tbaa !144
  br label %43

43:                                               ; preds = %36, %42
  %44 = phi i32 [ %37, %42 ], [ 1, %36 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #4
  br label %47

47:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %48

48:                                               ; preds = %25, %47, %18
  %49 = load ptr, ptr %19, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %18, !llvm.loop !145

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pose_foreachScreenBone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %13, %50
  %19 = phi ptr [ %11, %13 ], [ %51, %50 ]
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %23 = load i32, ptr %22, align 8, !tbaa !149
  %24 = load i32, ptr %16, align 8, !tbaa !140
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !151
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %33 = load ptr, ptr %17, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 31
  %35 = call i32 @ED_view3d_project_float_object(ptr noundef %33, ptr noundef nonnull %34, ptr noundef nonnull %5, i32 noundef %3) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store float 1.200000e+04, ptr %5, align 4, !tbaa !144
  br label %38

38:                                               ; preds = %32, %37
  %39 = phi i32 [ 0, %37 ], [ 1, %32 ]
  %40 = load ptr, ptr %17, align 8, !tbaa !84
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 32
  %42 = call i32 @ED_view3d_project_float_object(ptr noundef %40, ptr noundef nonnull %41, ptr noundef nonnull %6, i32 noundef %3) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store float 1.200000e+04, ptr %6, align 4, !tbaa !144
  br label %45

45:                                               ; preds = %38, %44
  %46 = phi i32 [ %39, %44 ], [ 1, %38 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #4
  br label %49

49:                                               ; preds = %48, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %50

50:                                               ; preds = %27, %49, %18
  %51 = load ptr, ptr %19, align 8, !tbaa !43
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !llvm.loop !152

53:                                               ; preds = %50, %4
  ret void
}

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect_segment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!35 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !37, i64 0}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !44}
!43 = !{!36, !36, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !36, i64 0}
!46 = !{!"foreachScreenObjectVert_userData", !36, i64 0, !36, i64 8, !35, i64 16, !47, i64 80}
!47 = !{!"int", !37, i64 0}
!48 = !{!46, !36, i64 8}
!49 = !{!46, !47, i64 80}
!50 = !{!35, !36, i64 40}
!51 = !{!35, !36, i64 16}
!52 = !{!53, !36, i64 1488}
!53 = !{!"DerivedMesh", !54, i64 0, !54, i64 200, !54, i64 400, !54, i64 600, !54, i64 800, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !36, i64 1032, !36, i64 1040, !47, i64 1048, !55, i64 1052, !47, i64 1056, !47, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!54 = !{!"CustomData", !36, i64 0, !37, i64 8, !47, i64 172, !47, i64 176, !47, i64 180, !36, i64 184, !36, i64 192}
!55 = !{!"float", !37, i64 0}
!56 = !{!53, !36, i64 1680}
!57 = !{!46, !36, i64 24}
!58 = !{!59, !36, i64 296}
!59 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !61, i64 136, !61, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !62, i64 312, !36, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !47, i64 432, !47, i64 436, !36, i64 440, !36, i64 448, !47, i64 456, !47, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !47, i64 944, !61, i64 948, !61, i64 950, !61, i64 952, !61, i64 954, !61, i64 956, !61, i64 958, !61, i64 960, !61, i64 962, !61, i64 964, !37, i64 966, !37, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !61, i64 1036, !61, i64 1038, !61, i64 1040, !37, i64 1042, !37, i64 1043, !61, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !55, i64 1120, !61, i64 1124, !61, i64 1126, !37, i64 1128, !47, i64 1144, !47, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !61, i64 1162, !37, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !61, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !41, i64 1304, !41, i64 1312, !47, i64 1320, !47, i64 1324, !63, i64 1328, !63, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !63, i64 1400, !36, i64 1416}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !61, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !36, i64 112}
!61 = !{!"short", !37, i64 0}
!62 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!63 = !{!"ListBase", !36, i64 0, !36, i64 8}
!64 = !{!65, !36, i64 232}
!65 = !{!"Mesh", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !54, i64 280, !54, i64 480, !54, i64 680, !54, i64 880, !54, i64 1080, !47, i64 1280, !47, i64 1284, !47, i64 1288, !47, i64 1292, !47, i64 1296, !47, i64 1300, !47, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !47, i64 1344, !61, i64 1348, !61, i64 1350, !55, i64 1352, !47, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !61, i64 1366, !36, i64 1368}
!66 = !{!67, !37, i64 18}
!67 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!68 = !{!46, !36, i64 40}
!69 = !{!35, !36, i64 48}
!70 = !{!71, !36, i64 0}
!71 = !{!"foreachScreenVert_userData", !36, i64 0, !36, i64 8, !35, i64 16, !47, i64 80}
!72 = !{!71, !36, i64 8}
!73 = !{!71, !47, i64 80}
!74 = !{!75, !36, i64 0}
!75 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !47, i64 16, !36, i64 24, !47, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !36, i64 64, !47, i64 72, !36, i64 80, !47, i64 88, !61, i64 92, !61, i64 94, !36, i64 96, !47, i64 104}
!76 = !{!71, !36, i64 64}
!77 = !{!78, !37, i64 13}
!78 = !{!"BMHeader", !36, i64 0, !47, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!79 = !{!71, !36, i64 40}
!80 = !{!81, !55, i64 80}
!81 = !{!"foreachScreenEdge_userData", !36, i64 0, !36, i64 8, !35, i64 16, !82, i64 80, !47, i64 96}
!82 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!83 = !{!81, !55, i64 88}
!84 = !{!35, !36, i64 24}
!85 = !{!86, !61, i64 208}
!86 = !{!"ARegion", !36, i64 0, !36, i64 8, !87, i64 16, !88, i64 176, !88, i64 192, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !55, i64 220, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !61, i64 232, !61, i64 234, !61, i64 236, !61, i64 238, !36, i64 240, !63, i64 248, !63, i64 264, !63, i64 280, !63, i64 296, !63, i64 312, !63, i64 328, !63, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!87 = !{!"View2D", !82, i64 0, !82, i64 16, !88, i64 32, !88, i64 48, !88, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !36, i64 128, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!88 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!89 = !{!81, !55, i64 84}
!90 = !{!86, !61, i64 210}
!91 = !{!81, !55, i64 92}
!92 = !{!81, !36, i64 0}
!93 = !{!81, !36, i64 8}
!94 = !{!81, !47, i64 96}
!95 = !{!53, !36, i64 1496}
!96 = !{!81, !36, i64 64}
!97 = !{!81, !36, i64 40}
!98 = !{!99, !36, i64 0}
!99 = !{!"foreachScreenFace_userData", !36, i64 0, !36, i64 8, !35, i64 16, !47, i64 80}
!100 = !{!99, !36, i64 8}
!101 = !{!99, !47, i64 80}
!102 = !{!53, !36, i64 1512}
!103 = !{!99, !36, i64 64}
!104 = !{!99, !36, i64 40}
!105 = !{!106, !61, i64 16}
!106 = !{!"Nurb", !36, i64 0, !36, i64 8, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !47, i64 24, !47, i64 28, !37, i64 32, !61, i64 36, !61, i64 38, !61, i64 40, !61, i64 42, !61, i64 44, !61, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !61, i64 80, !61, i64 82, !47, i64 84}
!107 = !{!106, !47, i64 24}
!108 = !{!106, !47, i64 28}
!109 = !{!106, !36, i64 72}
!110 = !{!111, !37, i64 54}
!111 = !{!"BezTriple", !37, i64 0, !55, i64 36, !55, i64 40, !55, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !55, i64 56, !55, i64 60, !55, i64 64, !37, i64 68}
!112 = !{!113, !61, i64 248}
!113 = !{!"Curve", !60, i64 0, !36, i64 120, !36, i64 128, !63, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !61, i64 244, !61, i64 246, !61, i64 248, !61, i64 250, !55, i64 252, !55, i64 256, !47, i64 260, !61, i64 264, !61, i64 266, !47, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !61, i64 284, !61, i64 286, !61, i64 288, !61, i64 290, !47, i64 292, !47, i64 296, !37, i64 300, !61, i64 304, !37, i64 306, !37, i64 307, !55, i64 308, !55, i64 312, !55, i64 316, !55, i64 320, !55, i64 324, !55, i64 328, !55, i64 332, !55, i64 336, !55, i64 340, !55, i64 344, !47, i64 348, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !47, i64 488, !47, i64 492, !36, i64 496, !114, i64 504, !55, i64 512, !55, i64 516, !55, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!114 = !{!"CharInfo", !61, i64 0, !61, i64 2, !37, i64 4, !37, i64 5, !61, i64 6}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!106, !36, i64 64}
!119 = !{!120, !61, i64 26}
!120 = !{!"BPoint", !37, i64 0, !55, i64 16, !55, i64 20, !61, i64 24, !61, i64 26, !55, i64 28, !55, i64 32}
!121 = distinct !{!121, !116, !117}
!122 = distinct !{!122, !116, !117}
!123 = !{!124, !36, i64 160}
!124 = !{!"MetaBall", !60, i64 0, !36, i64 120, !63, i64 128, !63, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !61, i64 186, !61, i64 188, !61, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !55, i64 228, !55, i64 232, !55, i64 236, !36, i64 240}
!125 = distinct !{!125, !116, !117}
!126 = !{!127, !36, i64 272}
!127 = !{!"Lattice", !60, i64 0, !36, i64 120, !61, i64 128, !61, i64 130, !61, i64 132, !61, i64 134, !61, i64 136, !61, i64 138, !61, i64 140, !61, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !47, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!128 = !{!129, !36, i64 0}
!129 = !{!"EditLatt", !36, i64 0, !47, i64 8, !37, i64 12}
!130 = !{!127, !36, i64 176}
!131 = !{!59, !36, i64 1280}
!132 = !{!133, !36, i64 32}
!133 = !{!"DispList", !36, i64 0, !36, i64 8, !61, i64 16, !61, i64 18, !47, i64 20, !47, i64 24, !61, i64 28, !61, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !47, i64 56, !47, i64 60, !36, i64 64}
!134 = !{!127, !61, i64 128}
!135 = !{!127, !61, i64 130}
!136 = !{!127, !61, i64 132}
!137 = distinct !{!137, !116, !117}
!138 = !{!139, !36, i64 160}
!139 = !{!"bArmature", !60, i64 0, !36, i64 120, !63, i64 128, !63, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !61, i64 208, !61, i64 210, !47, i64 212, !47, i64 216, !47, i64 220, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252}
!140 = !{!139, !47, i64 216}
!141 = !{!142, !47, i64 136}
!142 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !55, i64 104, !37, i64 108, !37, i64 120, !47, i64 132, !47, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !61, i64 180}
!143 = !{!142, !47, i64 132}
!144 = !{!55, !55, i64 0}
!145 = distinct !{!145, !116, !117}
!146 = !{!59, !36, i64 288}
!147 = !{!148, !36, i64 120}
!148 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !63, i64 24, !37, i64 40, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !63, i64 144, !63, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !55, i64 264, !61, i64 268, !61, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !55, i64 524, !55, i64 528, !55, i64 532, !36, i64 536}
!149 = !{!150, !47, i64 320}
!150 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !63, i64 32, !37, i64 48, !55, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !47, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !37, i64 308, !47, i64 320, !61, i64 324, !37, i64 326}
!151 = !{!150, !47, i64 176}
!152 = distinct !{!152, !116, !117}
