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
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %10 = tail call ptr @mesh_get_derived_deform(ptr noundef %6, ptr noundef %8, i64 noundef %9) #6
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
  tail call void @ED_view3d_clipping_local(ptr noundef %18, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %16, %4
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 71
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  call void %24(ptr noundef %10, ptr noundef nonnull @meshobject_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !56
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
define internal void @meshobject_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !57 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.MVert, ptr %12, i64 %13, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !67
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %20 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = call i32 @ED_view3d_project_float_object(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.foreachScreenObjectVert_userData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !48
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
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  store ptr %1, ptr %5, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !74
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = load ptr, ptr %7, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %20, ptr noundef nonnull %22) #6
  br label %23

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %9, align 8, !tbaa !70
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %25, i8 noundef zeroext 1) #6
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 71
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  call void %27(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenVert__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  call void %29(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenVert__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !77 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #6
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %14 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = call i32 @ED_view3d_project_float_object(ptr noundef %15, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load ptr, ptr %0, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.foreachScreenVert_userData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
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
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
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
  tail call void @ED_view3d_clipping_local(ptr noundef %32, ptr noundef nonnull %34) #6
  br label %35

35:                                               ; preds = %30, %4
  %36 = load ptr, ptr %9, align 8, !tbaa !70
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %37, i8 noundef zeroext 2) #6
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 72
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  call void %39(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenEdge__mapFunc, ptr noundef nonnull %5) #6
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  call void %41(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenEdge__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !96 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call ptr @BM_edge_at_index(ptr noundef %9, i32 noundef %1) #6
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %14 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = and i32 %15, -3
  store i32 %16, ptr %14, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 2, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = call i32 @ED_view3d_project_float_object(ptr noundef %18, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %16) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load ptr, ptr %17, align 8, !tbaa !98
  %23 = call i32 @ED_view3d_project_float_object(ptr noundef %22, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %16) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, ptr %14, align 8, !tbaa !94
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 3
  %31 = call zeroext i8 @BLI_rctf_isect_segment(ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr %0, align 8, !tbaa !92
  %35 = getelementptr inbounds %struct.foreachScreenEdge_userData, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !93
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
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !40
  %12 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %6, ptr noundef %8, ptr noundef %10, i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !42
  store ptr %1, ptr %5, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %5, i64 0, i32 3
  store i32 %3, ptr %15, align 8, !tbaa !102
  %16 = load ptr, ptr %9, align 8, !tbaa !70
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %17, i8 noundef zeroext 8) #6
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  call void %19(ptr noundef %12, ptr noundef nonnull @mesh_foreachScreenFace__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  call void %21(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_foreachScreenFace__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !104 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call ptr @BM_face_at_index(ptr noundef %8, i32 noundef %1) #6
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %13 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = call i32 @ED_view3d_project_float_object(ptr noundef %14, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.foreachScreenFace_userData, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !101
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
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %10) #6
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = load ptr, ptr %7, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %16, ptr noundef nonnull %18) #6
  br label %19

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr %11, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %112, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  br label %25

25:                                               ; preds = %22, %109
  %26 = phi ptr [ %20, %22 ], [ %110, %109 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !107
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  br i1 %29, label %39, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 7
  %33 = load i32, ptr %30, align 8, !tbaa !109
  %34 = load i32, ptr %32, align 4, !tbaa !110
  %35 = mul nsw i32 %34, %33
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  br label %85

39:                                               ; preds = %25
  %40 = load i32, ptr %30, align 8, !tbaa !109
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 18
  br label %44

44:                                               ; preds = %42, %80
  %45 = phi i32 [ %40, %42 ], [ %81, %80 ]
  %46 = phi i64 [ 0, %42 ], [ %82, %80 ]
  %47 = load ptr, ptr %43, align 8, !tbaa !111
  %48 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 %46
  %49 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 %46, i32 10
  %50 = load i8, ptr %49, align 2, !tbaa !112
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %53 = load i16, ptr %24, align 8, !tbaa !114
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  %56 = load ptr, ptr %23, align 8, !tbaa !84
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
  %66 = load ptr, ptr %23, align 8, !tbaa !84
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %48, i64 0, i64 1
  %68 = call i32 @ED_view3d_project_float_object(ptr noundef %66, ptr noundef nonnull %67, ptr noundef nonnull %5, i32 noundef 7) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %48, i32 noundef 1, ptr noundef nonnull %5) #6
  br label %71

71:                                               ; preds = %70, %65
  %72 = load ptr, ptr %23, align 8, !tbaa !84
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
  %79 = load i32, ptr %30, align 8, !tbaa !109
  br label %80

80:                                               ; preds = %78, %44
  %81 = phi i32 [ %79, %78 ], [ %45, %44 ]
  %82 = add nuw nsw i64 %46, 1
  %83 = sext i32 %81 to i64
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %44, label %109, !llvm.loop !117

85:                                               ; preds = %37, %102
  %86 = phi i32 [ %34, %37 ], [ %103, %102 ]
  %87 = phi i32 [ %33, %37 ], [ %104, %102 ]
  %88 = phi i64 [ 0, %37 ], [ %105, %102 ]
  %89 = load ptr, ptr %38, align 8, !tbaa !119
  %90 = getelementptr inbounds %struct.BPoint, ptr %89, i64 %88
  %91 = getelementptr inbounds %struct.BPoint, ptr %89, i64 %88, i32 4
  %92 = load i16, ptr %91, align 2, !tbaa !120
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %95 = load ptr, ptr %23, align 8, !tbaa !84
  %96 = call i32 @ED_view3d_project_float_object(ptr noundef %95, ptr noundef nonnull %90, ptr noundef nonnull %6, i32 noundef 7) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void %1(ptr noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %90, ptr noundef null, i32 noundef -1, ptr noundef nonnull %6) #6
  br label %99

99:                                               ; preds = %98, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  %100 = load i32, ptr %30, align 8, !tbaa !109
  %101 = load i32, ptr %32, align 4, !tbaa !110
  br label %102

102:                                              ; preds = %99, %85
  %103 = phi i32 [ %101, %99 ], [ %86, %85 ]
  %104 = phi i32 [ %100, %99 ], [ %87, %85 ]
  %105 = add nuw nsw i64 %88, 1
  %106 = mul nsw i32 %103, %104
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %85, label %109, !llvm.loop !122

109:                                              ; preds = %102, %80, %31, %39
  %110 = load ptr, ptr %26, align 8, !tbaa !43
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %25, !llvm.loop !123

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
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %23
  %17 = phi ptr [ %12, %14 ], [ %24, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %18 = load ptr, ptr %15, align 8, !tbaa !84
  %19 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 7
  %20 = call i32 @ED_view3d_project_float_object(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %5, i32 noundef %3) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void %1(ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %5) #6
  br label %23

23:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %24 = load ptr, ptr %17, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !126

26:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lattice_foreachScreenVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct.Lattice, ptr %12, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = tail call ptr @BKE_displist_find(ptr noundef nonnull %16, i32 noundef 7) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DispList, ptr %19, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !133
  br label %24

24:                                               ; preds = %4, %18, %21
  %25 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %4 ]
  %26 = phi ptr [ %23, %21 ], [ null, %18 ], [ null, %4 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !127
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !135
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !136
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %34, %31
  %36 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 4
  %37 = load i16, ptr %36, align 4, !tbaa !137
  %38 = sext i16 %37 to i32
  %39 = mul i32 %35, %38
  %40 = and i32 %3, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !50
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
  %55 = load i16, ptr %54, align 2, !tbaa !120
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %58 = load ptr, ptr %49, align 8, !tbaa !84
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
  br i1 %68, label %69, label %50, !llvm.loop !138

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
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %44
  %19 = phi ptr [ %13, %15 ], [ %45, %44 ]
  %20 = load i32, ptr %16, align 8, !tbaa !141
  %21 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !142
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !144
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %31 = load ptr, ptr %17, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 7
  %33 = call i32 @ED_view3d_project_float_object(ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %5, i32 noundef %3) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store float 1.200000e+04, ptr %5, align 4, !tbaa !145
  br label %36

36:                                               ; preds = %30, %35
  %37 = load ptr, ptr %17, align 8, !tbaa !84
  %38 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 8
  %39 = call i32 @ED_view3d_project_float_object(ptr noundef %37, ptr noundef nonnull %38, ptr noundef nonnull %6, i32 noundef %3) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store float 1.200000e+04, ptr %6, align 4, !tbaa !145
  br i1 %34, label %42, label %43

42:                                               ; preds = %36, %41
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %44

44:                                               ; preds = %25, %43, %18
  %45 = load ptr, ptr %19, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %18, !llvm.loop !146

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pose_foreachScreenBone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %13, %46
  %19 = phi ptr [ %11, %13 ], [ %47, %46 ]
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !148
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %23 = load i32, ptr %22, align 8, !tbaa !150
  %24 = load i32, ptr %16, align 8, !tbaa !141
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !152
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %33 = load ptr, ptr %17, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 31
  %35 = call i32 @ED_view3d_project_float_object(ptr noundef %33, ptr noundef nonnull %34, ptr noundef nonnull %5, i32 noundef %3) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store float 1.200000e+04, ptr %5, align 4, !tbaa !145
  br label %38

38:                                               ; preds = %32, %37
  %39 = load ptr, ptr %17, align 8, !tbaa !84
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 32
  %41 = call i32 @ED_view3d_project_float_object(ptr noundef %39, ptr noundef nonnull %40, ptr noundef nonnull %6, i32 noundef %3) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store float 1.200000e+04, ptr %6, align 4, !tbaa !145
  br i1 %36, label %44, label %45

44:                                               ; preds = %38, %43
  call void %1(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  br label %45

45:                                               ; preds = %44, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %46

46:                                               ; preds = %27, %45, %18
  %47 = load ptr, ptr %19, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %18, !llvm.loop !153

49:                                               ; preds = %46, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !155
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
!57 = !{!"view3d_iterators.c:meshobject_foreachScreenVert__mapFunc"}
!58 = !{!46, !36, i64 24}
!59 = !{!60, !36, i64 296}
!60 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !62, i64 136, !62, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !63, i64 312, !36, i64 360, !64, i64 368, !64, i64 384, !64, i64 400, !64, i64 416, !47, i64 432, !47, i64 436, !36, i64 440, !36, i64 448, !47, i64 456, !47, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !47, i64 944, !62, i64 948, !62, i64 950, !62, i64 952, !62, i64 954, !62, i64 956, !62, i64 958, !62, i64 960, !62, i64 962, !62, i64 964, !37, i64 966, !37, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !62, i64 1036, !62, i64 1038, !62, i64 1040, !37, i64 1042, !37, i64 1043, !62, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !64, i64 1056, !64, i64 1072, !64, i64 1088, !64, i64 1104, !55, i64 1120, !62, i64 1124, !62, i64 1126, !37, i64 1128, !47, i64 1144, !47, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !62, i64 1162, !37, i64 1164, !64, i64 1176, !64, i64 1192, !64, i64 1208, !64, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !62, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !41, i64 1304, !41, i64 1312, !47, i64 1320, !47, i64 1324, !64, i64 1328, !64, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !64, i64 1400, !36, i64 1416}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !62, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !36, i64 112}
!62 = !{!"short", !37, i64 0}
!63 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !62, i64 16, !62, i64 18, !62, i64 20, !62, i64 22, !62, i64 24, !62, i64 26, !62, i64 28, !62, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!64 = !{!"ListBase", !36, i64 0, !36, i64 8}
!65 = !{!66, !36, i64 232}
!66 = !{!"Mesh", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !54, i64 280, !54, i64 480, !54, i64 680, !54, i64 880, !54, i64 1080, !47, i64 1280, !47, i64 1284, !47, i64 1288, !47, i64 1292, !47, i64 1296, !47, i64 1300, !47, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !47, i64 1344, !62, i64 1348, !62, i64 1350, !55, i64 1352, !47, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !62, i64 1366, !36, i64 1368}
!67 = !{!68, !37, i64 18}
!68 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!69 = !{!46, !36, i64 40}
!70 = !{!35, !36, i64 48}
!71 = !{!72, !36, i64 0}
!72 = !{!"foreachScreenVert_userData", !36, i64 0, !36, i64 8, !35, i64 16, !47, i64 80}
!73 = !{!72, !36, i64 8}
!74 = !{!72, !47, i64 80}
!75 = !{!76, !36, i64 0}
!76 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !47, i64 16, !36, i64 24, !47, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !36, i64 64, !47, i64 72, !36, i64 80, !47, i64 88, !62, i64 92, !62, i64 94, !36, i64 96, !47, i64 104}
!77 = !{!"view3d_iterators.c:mesh_foreachScreenVert__mapFunc"}
!78 = !{!72, !36, i64 64}
!79 = !{!72, !36, i64 40}
!80 = !{!81, !55, i64 80}
!81 = !{!"foreachScreenEdge_userData", !36, i64 0, !36, i64 8, !35, i64 16, !82, i64 80, !47, i64 96}
!82 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!83 = !{!81, !55, i64 88}
!84 = !{!35, !36, i64 24}
!85 = !{!86, !62, i64 208}
!86 = !{!"ARegion", !36, i64 0, !36, i64 8, !87, i64 16, !88, i64 176, !88, i64 192, !62, i64 208, !62, i64 210, !62, i64 212, !62, i64 214, !62, i64 216, !62, i64 218, !55, i64 220, !62, i64 224, !62, i64 226, !62, i64 228, !62, i64 230, !62, i64 232, !62, i64 234, !62, i64 236, !62, i64 238, !36, i64 240, !64, i64 248, !64, i64 264, !64, i64 280, !64, i64 296, !64, i64 312, !64, i64 328, !64, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!87 = !{!"View2D", !82, i64 0, !82, i64 16, !88, i64 32, !88, i64 48, !88, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !62, i64 104, !62, i64 106, !62, i64 108, !62, i64 110, !62, i64 112, !62, i64 114, !62, i64 116, !62, i64 118, !62, i64 120, !62, i64 122, !62, i64 124, !62, i64 126, !36, i64 128, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!88 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!89 = !{!81, !55, i64 84}
!90 = !{!86, !62, i64 210}
!91 = !{!81, !55, i64 92}
!92 = !{!81, !36, i64 0}
!93 = !{!81, !36, i64 8}
!94 = !{!81, !47, i64 96}
!95 = !{!53, !36, i64 1496}
!96 = !{!"view3d_iterators.c:mesh_foreachScreenEdge__mapFunc"}
!97 = !{!81, !36, i64 64}
!98 = !{!81, !36, i64 40}
!99 = !{!100, !36, i64 0}
!100 = !{!"foreachScreenFace_userData", !36, i64 0, !36, i64 8, !35, i64 16, !47, i64 80}
!101 = !{!100, !36, i64 8}
!102 = !{!100, !47, i64 80}
!103 = !{!53, !36, i64 1512}
!104 = !{!"view3d_iterators.c:mesh_foreachScreenFace__mapFunc"}
!105 = !{!100, !36, i64 64}
!106 = !{!100, !36, i64 40}
!107 = !{!108, !62, i64 16}
!108 = !{!"Nurb", !36, i64 0, !36, i64 8, !62, i64 16, !62, i64 18, !62, i64 20, !62, i64 22, !47, i64 24, !47, i64 28, !37, i64 32, !62, i64 36, !62, i64 38, !62, i64 40, !62, i64 42, !62, i64 44, !62, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !62, i64 80, !62, i64 82, !47, i64 84}
!109 = !{!108, !47, i64 24}
!110 = !{!108, !47, i64 28}
!111 = !{!108, !36, i64 72}
!112 = !{!113, !37, i64 54}
!113 = !{!"BezTriple", !37, i64 0, !55, i64 36, !55, i64 40, !55, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !55, i64 56, !55, i64 60, !55, i64 64, !37, i64 68}
!114 = !{!115, !62, i64 248}
!115 = !{!"Curve", !61, i64 0, !36, i64 120, !36, i64 128, !64, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !62, i64 244, !62, i64 246, !62, i64 248, !62, i64 250, !55, i64 252, !55, i64 256, !47, i64 260, !62, i64 264, !62, i64 266, !47, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !62, i64 284, !62, i64 286, !62, i64 288, !62, i64 290, !47, i64 292, !47, i64 296, !37, i64 300, !62, i64 304, !37, i64 306, !37, i64 307, !55, i64 308, !55, i64 312, !55, i64 316, !55, i64 320, !55, i64 324, !55, i64 328, !55, i64 332, !55, i64 336, !55, i64 340, !55, i64 344, !47, i64 348, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !47, i64 488, !47, i64 492, !36, i64 496, !116, i64 504, !55, i64 512, !55, i64 516, !55, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!116 = !{!"CharInfo", !62, i64 0, !62, i64 2, !37, i64 4, !37, i64 5, !62, i64 6}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!108, !36, i64 64}
!120 = !{!121, !62, i64 26}
!121 = !{!"BPoint", !37, i64 0, !55, i64 16, !55, i64 20, !62, i64 24, !62, i64 26, !55, i64 28, !55, i64 32}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !118}
!124 = !{!125, !36, i64 160}
!125 = !{!"MetaBall", !61, i64 0, !36, i64 120, !64, i64 128, !64, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !62, i64 186, !62, i64 188, !62, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !55, i64 228, !55, i64 232, !55, i64 236, !36, i64 240}
!126 = distinct !{!126, !118}
!127 = !{!128, !36, i64 272}
!128 = !{!"Lattice", !61, i64 0, !36, i64 120, !62, i64 128, !62, i64 130, !62, i64 132, !62, i64 134, !62, i64 136, !62, i64 138, !62, i64 140, !62, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !47, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!129 = !{!130, !36, i64 0}
!130 = !{!"EditLatt", !36, i64 0, !47, i64 8, !37, i64 12}
!131 = !{!128, !36, i64 176}
!132 = !{!60, !36, i64 1280}
!133 = !{!134, !36, i64 32}
!134 = !{!"DispList", !36, i64 0, !36, i64 8, !62, i64 16, !62, i64 18, !47, i64 20, !47, i64 24, !62, i64 28, !62, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !47, i64 56, !47, i64 60, !36, i64 64}
!135 = !{!128, !62, i64 128}
!136 = !{!128, !62, i64 130}
!137 = !{!128, !62, i64 132}
!138 = distinct !{!138, !118}
!139 = !{!140, !36, i64 160}
!140 = !{!"bArmature", !61, i64 0, !36, i64 120, !64, i64 128, !64, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !62, i64 208, !62, i64 210, !47, i64 212, !47, i64 216, !47, i64 220, !62, i64 224, !62, i64 226, !62, i64 228, !62, i64 230, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252}
!141 = !{!140, !47, i64 216}
!142 = !{!143, !47, i64 136}
!143 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !55, i64 104, !37, i64 108, !37, i64 120, !47, i64 132, !47, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !62, i64 180}
!144 = !{!143, !47, i64 132}
!145 = !{!55, !55, i64 0}
!146 = distinct !{!146, !118}
!147 = !{!60, !36, i64 288}
!148 = !{!149, !36, i64 120}
!149 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !64, i64 24, !37, i64 40, !62, i64 104, !62, i64 106, !62, i64 108, !62, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !64, i64 144, !64, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !55, i64 264, !62, i64 268, !62, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !55, i64 524, !55, i64 528, !55, i64 532, !36, i64 536}
!150 = !{!151, !47, i64 320}
!151 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !64, i64 32, !37, i64 48, !55, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !47, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !37, i64 308, !47, i64 320, !62, i64 324, !37, i64 326}
!152 = !{!151, !47, i64 176}
!153 = distinct !{!153, !118}
!154 = !{!"view3d_iterators.c:_bm_elem_flag_test"}
!155 = !{!156, !37, i64 13}
!156 = !{!"BMHeader", !36, i64 0, !47, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
