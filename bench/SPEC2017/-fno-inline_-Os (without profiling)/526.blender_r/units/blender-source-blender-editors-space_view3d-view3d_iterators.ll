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
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @meshobject_foreachScreenVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenObjectVert_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !11
  %10 = tail call ptr @mesh_get_derived_deform(ptr noundef %6, ptr noundef %8, i64 noundef %9) #6
  %11 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !13
  store ptr %1, ptr %5, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %13, align 8, !tbaa !20
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %18, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %16, %4
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 71
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  call void %24(ptr noundef %10, ptr noundef nonnull @meshobject_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  call void %26(ptr noundef %10) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @meshobject_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !37
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %20 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !20
  %24 = call i32 @ED_view3d_project_float_object(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  call void %27(ptr noundef %29, ptr noundef nonnull %14, ptr noundef nonnull %6, i32 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %31

30:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %31

31:                                               ; preds = %26, %5, %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mesh_foreachScreenVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenVert_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !11
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !13
  store ptr %1, ptr %5, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !44
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = load ptr, ptr %7, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %20, ptr noundef nonnull %22) #6
  br label %23

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %9, align 8, !tbaa !40
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %25, i8 noundef zeroext 1) #6
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 71
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  call void %27(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  call void %29(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #6
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %14 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = call i32 @ED_view3d_project_float_object(ptr noundef %15, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load ptr, ptr %0, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  call void %21(ptr noundef %23, ptr noundef %10, ptr noundef nonnull %6, i32 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %25

24:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %25

25:                                               ; preds = %20, %5, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mesh_foreachScreenEdge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenEdge_userData, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !11
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !13
  %14 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3
  store float 0.000000e+00, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 2
  store float 0.000000e+00, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !54
  %20 = sitofp i16 %19 to float
  %21 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 1
  store float %20, ptr %21, align 4, !tbaa !58
  %22 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 6
  %23 = load i16, ptr %22, align 2, !tbaa !59
  %24 = sitofp i16 %23 to float
  %25 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 3, i32 3
  store float %24, ptr %25, align 4, !tbaa !60
  store ptr %1, ptr %5, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %5, i64 0, i32 4
  store i32 %3, ptr %27, align 8, !tbaa !63
  %28 = and i32 %3, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = load ptr, ptr %7, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %32, ptr noundef nonnull %34) #6
  br label %35

35:                                               ; preds = %30, %4
  %36 = load ptr, ptr %9, align 8, !tbaa !40
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %37, i8 noundef zeroext 2) #6
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 72
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  call void %39(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenEdge__mapFunc, ptr noundef nonnull %5) #6
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  call void %41(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenEdge__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = tail call ptr @BM_edge_at_index(ptr noundef %9, i32 noundef %1) #6
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %14 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !63
  %16 = and i32 %15, -3
  store i32 %16, ptr %14, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = call i32 @ED_view3d_project_float_object(ptr noundef %18, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %16) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load ptr, ptr %17, align 8, !tbaa !66
  %23 = call i32 @ED_view3d_project_float_object(ptr noundef %22, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %16) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, ptr %14, align 8, !tbaa !63
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 3
  %31 = call zeroext i8 @BLI_rctf_isect_segment(ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr %0, align 8, !tbaa !61
  %35 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  call void %34(ptr noundef %36, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %38

37:                                               ; preds = %29, %21, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %38

38:                                               ; preds = %4, %33, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mesh_foreachScreenFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.foreachScreenFace_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !11
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !13
  store ptr %1, ptr %5, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !70
  %16 = load ptr, ptr %9, align 8, !tbaa !40
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %17, i8 noundef zeroext 8) #6
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  call void %19(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenFace__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  call void %21(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenFace__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr @BM_face_at_index(ptr noundef %8, i32 noundef %1) #6
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %13 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = call i32 @ED_view3d_project_float_object(ptr noundef %14, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  call void %20(ptr noundef %22, ptr noundef %9, ptr noundef nonnull %5, i32 noundef %1) #6
  br label %23

23:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %24

24:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nurbs_foreachScreenVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %10) #6
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = load ptr, ptr %7, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %16, ptr noundef nonnull %18) #6
  br label %19

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr %11, align 8, !tbaa !14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %112, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  br label %25

25:                                               ; preds = %22, %109
  %26 = phi ptr [ %20, %22 ], [ %110, %109 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !74
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  br i1 %29, label %39, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 7
  %33 = load i32, ptr %30, align 8, !tbaa !76
  %34 = load i32, ptr %32, align 4, !tbaa !77
  %35 = mul nsw i32 %34, %33
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  br label %85

39:                                               ; preds = %25
  %40 = load i32, ptr %30, align 8, !tbaa !76
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 18
  br label %44

44:                                               ; preds = %42, %80
  %45 = phi i32 [ %40, %42 ], [ %81, %80 ]
  %46 = phi i64 [ 0, %42 ], [ %82, %80 ]
  %47 = load ptr, ptr %43, align 8, !tbaa !78
  %48 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 %46
  %49 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 %46, i32 10
  %50 = load i8, ptr %49, align 2, !tbaa !79
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %53 = load i16, ptr %24, align 8, !tbaa !81
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  %56 = load ptr, ptr %23, align 8, !tbaa !53
  br i1 %55, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %48, i64 0, i64 1
  %59 = call i32 @ED_view3d_project_float_object(ptr noundef %56, ptr noundef nonnull %58, ptr noundef nonnull %5, i32 noundef 7) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %78

61:                                               ; preds = %52
  %62 = call i32 @ED_view3d_project_float_object(ptr noundef %56, ptr noundef nonnull %48, ptr noundef nonnull %5, i32 noundef 7) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %48, i32 noundef 0, ptr noundef nonnull %5) #6
  br label %65

65:                                               ; preds = %64, %61
  %66 = load ptr, ptr %23, align 8, !tbaa !53
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %48, i64 0, i64 1
  %68 = call i32 @ED_view3d_project_float_object(ptr noundef %66, ptr noundef nonnull %67, ptr noundef nonnull %5, i32 noundef 7) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %48, i32 noundef 1, ptr noundef nonnull %5) #6
  br label %71

71:                                               ; preds = %70, %65
  %72 = load ptr, ptr %23, align 8, !tbaa !53
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %48, i64 0, i64 2
  %74 = call i32 @ED_view3d_project_float_object(ptr noundef %72, ptr noundef nonnull %73, ptr noundef nonnull %5, i32 noundef 7) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %57
  %77 = phi i32 [ 1, %57 ], [ 2, %71 ]
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %48, i32 noundef %77, ptr noundef nonnull %5) #6
  br label %78

78:                                               ; preds = %76, %71, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %79 = load i32, ptr %30, align 8, !tbaa !76
  br label %80

80:                                               ; preds = %78, %44
  %81 = phi i32 [ %79, %78 ], [ %45, %44 ]
  %82 = add nuw nsw i64 %46, 1
  %83 = sext i32 %81 to i64
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %44, label %109, !llvm.loop !84

85:                                               ; preds = %37, %102
  %86 = phi i32 [ %34, %37 ], [ %103, %102 ]
  %87 = phi i32 [ %33, %37 ], [ %104, %102 ]
  %88 = phi i64 [ 0, %37 ], [ %105, %102 ]
  %89 = load ptr, ptr %38, align 8, !tbaa !86
  %90 = getelementptr inbounds %struct.BPoint, ptr %89, i64 %88
  %91 = getelementptr inbounds %struct.BPoint, ptr %89, i64 %88, i32 4
  %92 = load i16, ptr %91, align 2, !tbaa !87
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %95 = load ptr, ptr %23, align 8, !tbaa !53
  %96 = call i32 @ED_view3d_project_float_object(ptr noundef %95, ptr noundef nonnull %90, ptr noundef nonnull %6, i32 noundef 7) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %90, ptr noundef null, i32 noundef -1, ptr noundef nonnull %6) #6
  br label %99

99:                                               ; preds = %98, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  %100 = load i32, ptr %30, align 8, !tbaa !76
  %101 = load i32, ptr %32, align 4, !tbaa !77
  br label %102

102:                                              ; preds = %99, %85
  %103 = phi i32 [ %101, %99 ], [ %86, %85 ]
  %104 = phi i32 [ %100, %99 ], [ %87, %85 ]
  %105 = add nuw nsw i64 %88, 1
  %106 = mul nsw i32 %103, %104
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %85, label %109, !llvm.loop !89

109:                                              ; preds = %102, %80, %31, %39
  %110 = load ptr, ptr %26, align 8, !tbaa !14
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %25, !llvm.loop !90

112:                                              ; preds = %109, %19
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mball_foreachScreenElem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %23
  %17 = phi ptr [ %12, %14 ], [ %24, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %18 = load ptr, ptr %15, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 7
  %20 = call i32 @ED_view3d_project_float_object(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %5, i32 noundef %3) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void %1(ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %5) #6
  br label %23

23:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %24 = load ptr, ptr %17, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !93

26:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lattice_foreachScreenVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = tail call ptr @BKE_displist_find(ptr noundef nonnull %16, i32 noundef 7) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DispList, ptr %19, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  br label %24

24:                                               ; preds = %4, %18, %21
  %25 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %4 ]
  %26 = phi ptr [ %23, %21 ], [ null, %18 ], [ null, %4 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !94
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !102
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !103
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %34, %31
  %36 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 4
  %37 = load i16, ptr %36, align 4, !tbaa !104
  %38 = sext i16 %37 to i32
  %39 = mul i32 %35, %38
  %40 = and i32 %3, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %44, ptr noundef nonnull %45) #6
  br label %46

46:                                               ; preds = %42, %24
  %47 = icmp sgt i32 %39, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %50

50:                                               ; preds = %48, %64
  %51 = phi ptr [ %14, %48 ], [ %66, %64 ]
  %52 = phi i32 [ 0, %48 ], [ %65, %64 ]
  %53 = phi ptr [ %26, %48 ], [ %67, %64 ]
  %54 = getelementptr inbounds %struct.BPoint, ptr %51, i64 0, i32 4
  %55 = load i16, ptr %54, align 2, !tbaa !87
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %58 = load ptr, ptr %49, align 8, !tbaa !53
  %59 = select i1 %25, ptr %51, ptr %53
  %60 = call i32 @ED_view3d_project_float_object(ptr noundef %58, ptr noundef %59, ptr noundef nonnull %5, i32 noundef %3) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void %1(ptr noundef %2, ptr noundef nonnull %51, ptr noundef nonnull %5) #6
  br label %63

63:                                               ; preds = %62, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %64

64:                                               ; preds = %50, %63
  %65 = add nuw nsw i32 %52, 1
  %66 = getelementptr inbounds %struct.BPoint, ptr %51, i64 1
  %67 = getelementptr inbounds float, ptr %53, i64 3
  %68 = icmp eq i32 %65, %39
  br i1 %68, label %69, label %50, !llvm.loop !105

69:                                               ; preds = %64, %46
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @armature_foreachScreenBone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %44
  %19 = phi ptr [ %13, %15 ], [ %45, %44 ]
  %20 = load i32, ptr %16, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !111
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %31 = load ptr, ptr %17, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 7
  %33 = call i32 @ED_view3d_project_float_object(ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %5, i32 noundef %3) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store float 1.200000e+04, ptr %5, align 4, !tbaa !112
  br label %36

36:                                               ; preds = %30, %35
  %37 = load ptr, ptr %17, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 8
  %39 = call i32 @ED_view3d_project_float_object(ptr noundef %37, ptr noundef nonnull %38, ptr noundef nonnull %6, i32 noundef %3) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store float 1.200000e+04, ptr %6, align 4, !tbaa !112
  br i1 %34, label %42, label %43

42:                                               ; preds = %36, %41
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %44

44:                                               ; preds = %25, %43, %18
  %45 = load ptr, ptr %19, align 8, !tbaa !14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %18, !llvm.loop !113

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pose_foreachScreenBone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %13, %46
  %19 = phi ptr [ %11, %13 ], [ %47, %46 ]
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %23 = load i32, ptr %22, align 8, !tbaa !117
  %24 = load i32, ptr %16, align 8, !tbaa !108
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !119
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %33 = load ptr, ptr %17, align 8, !tbaa !53
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 31
  %35 = call i32 @ED_view3d_project_float_object(ptr noundef %33, ptr noundef nonnull %34, ptr noundef nonnull %5, i32 noundef %3) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store float 1.200000e+04, ptr %5, align 4, !tbaa !112
  br label %38

38:                                               ; preds = %32, %37
  %39 = load ptr, ptr %17, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 32
  %41 = call i32 @ED_view3d_project_float_object(ptr noundef %39, ptr noundef nonnull %40, ptr noundef nonnull %6, i32 noundef %3) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store float 1.200000e+04, ptr %6, align 4, !tbaa !112
  br i1 %36, label %44, label %45

44:                                               ; preds = %38, %43
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  br label %45

45:                                               ; preds = %44, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %46

46:                                               ; preds = %27, %45, %18
  %47 = load ptr, ptr %19, align 8, !tbaa !14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %18, !llvm.loop !120

49:                                               ; preds = %46, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !121
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_segment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !14, i64 40, i64 8, !14, i64 48, i64 8, !14, i64 56, i64 8, !15}
!14 = !{!7, !7, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !7, i64 0}
!17 = !{!"foreachScreenObjectVert_userData", !7, i64 0, !7, i64 8, !6, i64 16, !18, i64 80}
!18 = !{!"int", !8, i64 0}
!19 = !{!17, !7, i64 8}
!20 = !{!17, !18, i64 80}
!21 = !{!6, !7, i64 40}
!22 = !{!6, !7, i64 16}
!23 = !{!24, !7, i64 1488}
!24 = !{!"DerivedMesh", !25, i64 0, !25, i64 200, !25, i64 400, !25, i64 600, !25, i64 800, !18, i64 1000, !18, i64 1004, !18, i64 1008, !18, i64 1012, !18, i64 1016, !18, i64 1020, !18, i64 1024, !7, i64 1032, !7, i64 1040, !18, i64 1048, !26, i64 1052, !18, i64 1056, !18, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!25 = !{!"CustomData", !7, i64 0, !8, i64 8, !18, i64 172, !18, i64 176, !18, i64 180, !7, i64 184, !7, i64 192}
!26 = !{!"float", !8, i64 0}
!27 = !{!24, !7, i64 1680}
!28 = !{!17, !7, i64 24}
!29 = !{!30, !7, i64 296}
!30 = !{!"Object", !31, i64 0, !7, i64 120, !7, i64 128, !32, i64 136, !32, i64 138, !18, i64 140, !18, i64 144, !18, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !33, i64 312, !7, i64 360, !34, i64 368, !34, i64 384, !34, i64 400, !34, i64 416, !18, i64 432, !18, i64 436, !7, i64 440, !7, i64 448, !18, i64 456, !18, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !26, i64 616, !26, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !18, i64 944, !32, i64 948, !32, i64 950, !32, i64 952, !32, i64 954, !32, i64 956, !32, i64 958, !32, i64 960, !32, i64 962, !32, i64 964, !8, i64 966, !8, i64 967, !18, i64 968, !18, i64 972, !18, i64 976, !18, i64 980, !18, i64 984, !26, i64 988, !26, i64 992, !26, i64 996, !26, i64 1000, !26, i64 1004, !26, i64 1008, !26, i64 1012, !26, i64 1016, !26, i64 1020, !26, i64 1024, !26, i64 1028, !26, i64 1032, !32, i64 1036, !32, i64 1038, !32, i64 1040, !8, i64 1042, !8, i64 1043, !32, i64 1044, !8, i64 1046, !8, i64 1047, !26, i64 1048, !26, i64 1052, !34, i64 1056, !34, i64 1072, !34, i64 1088, !34, i64 1104, !26, i64 1120, !32, i64 1124, !32, i64 1126, !8, i64 1128, !18, i64 1144, !18, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !32, i64 1162, !8, i64 1164, !34, i64 1176, !34, i64 1192, !34, i64 1208, !34, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !32, i64 1266, !26, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !12, i64 1304, !12, i64 1312, !18, i64 1320, !18, i64 1324, !34, i64 1328, !34, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !34, i64 1400, !7, i64 1416}
!31 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !32, i64 98, !18, i64 100, !18, i64 104, !18, i64 108, !7, i64 112}
!32 = !{!"short", !8, i64 0}
!33 = !{!"bAnimVizSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !32, i64 16, !32, i64 18, !32, i64 20, !32, i64 22, !32, i64 24, !32, i64 26, !32, i64 28, !32, i64 30, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44}
!34 = !{!"ListBase", !7, i64 0, !7, i64 8}
!35 = !{!36, !7, i64 232}
!36 = !{!"Mesh", !31, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !25, i64 280, !25, i64 480, !25, i64 680, !25, i64 880, !25, i64 1080, !18, i64 1280, !18, i64 1284, !18, i64 1288, !18, i64 1292, !18, i64 1296, !18, i64 1300, !18, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !18, i64 1344, !32, i64 1348, !32, i64 1350, !26, i64 1352, !18, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !32, i64 1366, !7, i64 1368}
!37 = !{!38, !8, i64 18}
!38 = !{!"MVert", !8, i64 0, !8, i64 12, !8, i64 18, !8, i64 19}
!39 = !{!17, !7, i64 40}
!40 = !{!6, !7, i64 48}
!41 = !{!42, !7, i64 0}
!42 = !{!"foreachScreenVert_userData", !7, i64 0, !7, i64 8, !6, i64 16, !18, i64 80}
!43 = !{!42, !7, i64 8}
!44 = !{!42, !18, i64 80}
!45 = !{!46, !7, i64 0}
!46 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !18, i64 16, !7, i64 24, !18, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !18, i64 72, !7, i64 80, !18, i64 88, !32, i64 92, !32, i64 94, !7, i64 96, !18, i64 104}
!47 = !{!42, !7, i64 64}
!48 = !{!42, !7, i64 40}
!49 = !{!50, !26, i64 80}
!50 = !{!"foreachScreenEdge_userData", !7, i64 0, !7, i64 8, !6, i64 16, !51, i64 80, !18, i64 96}
!51 = !{!"rctf", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!52 = !{!50, !26, i64 88}
!53 = !{!6, !7, i64 24}
!54 = !{!55, !32, i64 208}
!55 = !{!"ARegion", !7, i64 0, !7, i64 8, !56, i64 16, !57, i64 176, !57, i64 192, !32, i64 208, !32, i64 210, !32, i64 212, !32, i64 214, !32, i64 216, !32, i64 218, !26, i64 220, !32, i64 224, !32, i64 226, !32, i64 228, !32, i64 230, !32, i64 232, !32, i64 234, !32, i64 236, !32, i64 238, !7, i64 240, !34, i64 248, !34, i64 264, !34, i64 280, !34, i64 296, !34, i64 312, !34, i64 328, !34, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!56 = !{!"View2D", !51, i64 0, !51, i64 16, !57, i64 32, !57, i64 48, !57, i64 64, !8, i64 80, !8, i64 88, !26, i64 96, !26, i64 100, !32, i64 104, !32, i64 106, !32, i64 108, !32, i64 110, !32, i64 112, !32, i64 114, !32, i64 116, !32, i64 118, !32, i64 120, !32, i64 122, !32, i64 124, !32, i64 126, !7, i64 128, !18, i64 136, !18, i64 140, !7, i64 144, !7, i64 152}
!57 = !{!"rcti", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!58 = !{!50, !26, i64 84}
!59 = !{!55, !32, i64 210}
!60 = !{!50, !26, i64 92}
!61 = !{!50, !7, i64 0}
!62 = !{!50, !7, i64 8}
!63 = !{!50, !18, i64 96}
!64 = !{!24, !7, i64 1496}
!65 = !{!50, !7, i64 64}
!66 = !{!50, !7, i64 40}
!67 = !{!68, !7, i64 0}
!68 = !{!"foreachScreenFace_userData", !7, i64 0, !7, i64 8, !6, i64 16, !18, i64 80}
!69 = !{!68, !7, i64 8}
!70 = !{!68, !18, i64 80}
!71 = !{!24, !7, i64 1512}
!72 = !{!68, !7, i64 64}
!73 = !{!68, !7, i64 40}
!74 = !{!75, !32, i64 16}
!75 = !{!"Nurb", !7, i64 0, !7, i64 8, !32, i64 16, !32, i64 18, !32, i64 20, !32, i64 22, !18, i64 24, !18, i64 28, !8, i64 32, !32, i64 36, !32, i64 38, !32, i64 40, !32, i64 42, !32, i64 44, !32, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !32, i64 80, !32, i64 82, !18, i64 84}
!76 = !{!75, !18, i64 24}
!77 = !{!75, !18, i64 28}
!78 = !{!75, !7, i64 72}
!79 = !{!80, !8, i64 54}
!80 = !{!"BezTriple", !8, i64 0, !26, i64 36, !26, i64 40, !26, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !26, i64 56, !26, i64 60, !26, i64 64, !8, i64 68}
!81 = !{!82, !32, i64 248}
!82 = !{!"Curve", !31, i64 0, !7, i64 120, !7, i64 128, !34, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !32, i64 244, !32, i64 246, !32, i64 248, !32, i64 250, !26, i64 252, !26, i64 256, !18, i64 260, !32, i64 264, !32, i64 266, !18, i64 268, !26, i64 272, !26, i64 276, !26, i64 280, !32, i64 284, !32, i64 286, !32, i64 288, !32, i64 290, !18, i64 292, !18, i64 296, !8, i64 300, !32, i64 304, !8, i64 306, !8, i64 307, !26, i64 308, !26, i64 312, !26, i64 316, !26, i64 320, !26, i64 324, !26, i64 328, !26, i64 332, !26, i64 336, !26, i64 340, !26, i64 344, !18, i64 348, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !18, i64 488, !18, i64 492, !7, i64 496, !83, i64 504, !26, i64 512, !26, i64 516, !26, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!83 = !{!"CharInfo", !32, i64 0, !32, i64 2, !8, i64 4, !8, i64 5, !32, i64 6}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!75, !7, i64 64}
!87 = !{!88, !32, i64 26}
!88 = !{!"BPoint", !8, i64 0, !26, i64 16, !26, i64 20, !32, i64 24, !32, i64 26, !26, i64 28, !26, i64 32}
!89 = distinct !{!89, !85}
!90 = distinct !{!90, !85}
!91 = !{!92, !7, i64 160}
!92 = !{!"MetaBall", !31, i64 0, !7, i64 120, !34, i64 128, !34, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !32, i64 186, !32, i64 188, !32, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !26, i64 228, !26, i64 232, !26, i64 236, !7, i64 240}
!93 = distinct !{!93, !85}
!94 = !{!95, !7, i64 272}
!95 = !{!"Lattice", !31, i64 0, !7, i64 120, !32, i64 128, !32, i64 130, !32, i64 132, !32, i64 134, !32, i64 136, !32, i64 138, !32, i64 140, !32, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !18, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!96 = !{!97, !7, i64 0}
!97 = !{!"EditLatt", !7, i64 0, !18, i64 8, !8, i64 12}
!98 = !{!95, !7, i64 176}
!99 = !{!30, !7, i64 1280}
!100 = !{!101, !7, i64 32}
!101 = !{!"DispList", !7, i64 0, !7, i64 8, !32, i64 16, !32, i64 18, !18, i64 20, !18, i64 24, !32, i64 28, !32, i64 30, !7, i64 32, !7, i64 40, !7, i64 48, !18, i64 56, !18, i64 60, !7, i64 64}
!102 = !{!95, !32, i64 128}
!103 = !{!95, !32, i64 130}
!104 = !{!95, !32, i64 132}
!105 = distinct !{!105, !85}
!106 = !{!107, !7, i64 160}
!107 = !{!"bArmature", !31, i64 0, !7, i64 120, !34, i64 128, !34, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !18, i64 192, !18, i64 196, !18, i64 200, !18, i64 204, !32, i64 208, !32, i64 210, !18, i64 212, !18, i64 216, !18, i64 220, !32, i64 224, !32, i64 226, !32, i64 228, !32, i64 230, !18, i64 232, !18, i64 236, !18, i64 240, !18, i64 244, !18, i64 248, !18, i64 252}
!108 = !{!107, !18, i64 216}
!109 = !{!110, !18, i64 136}
!110 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !26, i64 104, !8, i64 108, !8, i64 120, !18, i64 132, !18, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !32, i64 180}
!111 = !{!110, !18, i64 132}
!112 = !{!26, !26, i64 0}
!113 = distinct !{!113, !85}
!114 = !{!30, !7, i64 288}
!115 = !{!116, !7, i64 120}
!116 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !34, i64 24, !8, i64 40, !32, i64 104, !32, i64 106, !32, i64 108, !32, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !34, i64 144, !34, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !26, i64 264, !32, i64 268, !32, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !26, i64 524, !26, i64 528, !26, i64 532, !7, i64 536}
!117 = !{!118, !18, i64 320}
!118 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !34, i64 32, !8, i64 48, !26, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !18, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !26, i64 268, !26, i64 272, !26, i64 276, !26, i64 280, !26, i64 284, !26, i64 288, !26, i64 292, !26, i64 296, !26, i64 300, !26, i64 304, !8, i64 308, !18, i64 320, !32, i64 324, !8, i64 326}
!119 = !{!118, !18, i64 176}
!120 = distinct !{!120, !85}
!121 = !{!122, !8, i64 13}
!122 = !{!"BMHeader", !7, i64 0, !18, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
