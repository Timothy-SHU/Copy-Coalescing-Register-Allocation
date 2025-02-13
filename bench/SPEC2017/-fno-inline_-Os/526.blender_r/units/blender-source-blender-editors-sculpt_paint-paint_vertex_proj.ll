; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_vertex_proj.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_vertex_proj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.VertProjHandle = type { ptr, i8, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DMCoNo = type { [3 x float], [3 x float] }
%struct.VertProjUpdate = type { ptr, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.ED_vpaint_proj_handle_create = private unnamed_addr constant [29 x i8] c"ED_vpaint_proj_handle_create\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"vertexcosnos map\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_vpaint_proj_handle_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @__func__.ED_vpaint_proj_handle_create) #8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 24
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str) #8
  store ptr %13, ptr %5, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 1
  store i8 0, ptr %14, align 8, !tbaa !52
  tail call fastcc void @vpaint_proj_dm_map_cosnos_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #9
  %15 = load i8, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = load i32, ptr %9, align 8, !tbaa !47
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @__func__.ED_vpaint_proj_handle_create) #8
  br label %23

23:                                               ; preds = %3, %17
  %24 = phi ptr [ %22, %17 ], [ null, %3 ]
  %25 = phi ptr [ %1, %17 ], [ null, %3 ]
  %26 = phi ptr [ %0, %17 ], [ null, %3 ]
  %27 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 2
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 3
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 4
  store ptr %26, ptr %29, align 8
  %30 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %30, ptr %2, align 8, !tbaa !34
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_proj_dm_map_cosnos_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !54
  %7 = or i64 %6, 128
  %8 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %7) #8
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 71
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %17, i1 false)
  %18 = load ptr, ptr %9, align 8, !tbaa !55
  tail call void %18(ptr noundef nonnull %8, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_init__map_cb, ptr noundef nonnull %2, i32 noundef 1) #8
  br label %37

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 76
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 78
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %33, %27 ]
  %29 = phi ptr [ %24, %23 ], [ %34, %27 ]
  %30 = load ptr, ptr %25, align 8, !tbaa !57
  tail call void %30(ptr noundef nonnull %8, i32 noundef %28, ptr noundef %29) #8
  %31 = load ptr, ptr %26, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.DMCoNo, ptr %29, i64 0, i32 1
  tail call void %31(ptr noundef nonnull %8, i32 noundef %28, ptr noundef nonnull %32) #8
  %33 = add nuw nsw i32 %28, 1
  %34 = getelementptr inbounds %struct.DMCoNo, ptr %29, i64 1
  %35 = load i32, ptr %20, align 8, !tbaa !47
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !59

37:                                               ; preds = %27, %19, %12
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  tail call void %39(ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vpaint_proj_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @vpaint_proj_dm_map_cosnos_update(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_proj_dm_map_cosnos_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !62 {
  %4 = alloca %struct.VertProjUpdate, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  store ptr %0, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !54
  %14 = or i64 %13, 128
  %15 = tail call ptr @mesh_get_derived_final(ptr noundef %8, ptr noundef %10, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %15, i64 0, i32 71
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !47
  tail call void @fill_vn_fl(ptr noundef %21, i32 noundef %23, float noundef 0x47EFFFFFE0000000) #8
  %24 = load ptr, ptr %16, align 8, !tbaa !55
  call void %24(ptr noundef nonnull %15, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_update__map_cb, ptr noundef nonnull %4, i32 noundef 1) #8
  br label %25

25:                                               ; preds = %19, %3
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %15, i64 0, i32 95
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  call void %27(ptr noundef nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vpaint_proj_handle_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void %6(ptr noundef %8) #8
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void %10(ptr noundef %11) #8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @vpaint_proj_dm_map_cosnos_init__map_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #4 !PGOFuncName !70 {
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.DMCoNo, ptr %6, i64 %7, i32 1
  %9 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #9, !range !71
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  store i8 1, ptr %12, align 8, !tbaa !52
  br label %18

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.DMCoNo, ptr %6, i64 %7
  tail call fastcc void @copy_v3_v3(ptr noundef %14, ptr noundef %2) #9
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %3) #9
  br label %18

17:                                               ; preds = %13
  tail call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %8, ptr noundef %4) #9
  br label %18

18:                                               ; preds = %16, %17, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !72 {
  %2 = load float, ptr %0, align 4, !tbaa !73
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !74 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !75 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !76
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vpaint_proj_dm_map_cosnos_update__map_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 !PGOFuncName !77 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.DMCoNo, ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %11 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = call i32 @ED_view3d_project_float_object(ptr noundef %12, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = call fastcc float @len_squared_v2v2(ptr noundef %17, ptr noundef nonnull %6) #9
  %19 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds float, ptr %20, i64 %9
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = fcmp ule float %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  store float %18, ptr %21, align 4, !tbaa !73
  br label %31

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = getelementptr inbounds float, ptr %27, i64 %9
  %29 = load float, ptr %28, align 4, !tbaa !73
  %30 = fcmp une float %29, 0x47EFFFFFE0000000
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call fastcc void @copy_v3_v3(ptr noundef %10, ptr noundef %2) #9
  %32 = icmp eq ptr %3, null
  %33 = getelementptr inbounds %struct.DMCoNo, ptr %8, i64 %9, i32 1
  br i1 %32, label %36, label %35

34:                                               ; preds = %15, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %37

35:                                               ; preds = %31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %3) #9
  br label %37

36:                                               ; preds = %31
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %33, ptr noundef %4) #9
  br label %37

37:                                               ; preds = %35, %36, %34
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !78 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !79 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %2, align 4, !tbaa !73
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !80 {
  %3 = load float, ptr %0, align 4, !tbaa !73
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 296}
!39 = !{!"Object", !40, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !43, i64 312, !35, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !45, i64 1048, !45, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !45, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !45, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !46, i64 1304, !46, i64 1312, !42, i64 1320, !42, i64 1324, !44, i64 1328, !44, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !44, i64 1400, !35, i64 1416}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!44 = !{!"ListBase", !35, i64 0, !35, i64 8}
!45 = !{!"float", !36, i64 0}
!46 = !{!"long", !36, i64 0}
!47 = !{!48, !42, i64 1280}
!48 = !{!"Mesh", !40, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !49, i64 280, !49, i64 480, !49, i64 680, !49, i64 880, !49, i64 1080, !42, i64 1280, !42, i64 1284, !42, i64 1288, !42, i64 1292, !42, i64 1296, !42, i64 1300, !42, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !42, i64 1344, !41, i64 1348, !41, i64 1350, !45, i64 1352, !42, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!49 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!50 = !{!51, !35, i64 0}
!51 = !{!"VertProjHandle", !35, i64 0, !36, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!52 = !{!51, !36, i64 8}
!53 = !{!"paint_vertex_proj.c:vpaint_proj_dm_map_cosnos_init"}
!54 = !{!46, !46, i64 0}
!55 = !{!56, !35, i64 1488}
!56 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !35, i64 1032, !35, i64 1040, !42, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!57 = !{!56, !35, i64 1528}
!58 = !{!56, !35, i64 1544}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!56, !35, i64 1680}
!62 = !{!"paint_vertex_proj.c:vpaint_proj_dm_map_cosnos_update"}
!63 = !{!64, !35, i64 0}
!64 = !{!"VertProjUpdate", !35, i64 0, !35, i64 8, !35, i64 16}
!65 = !{!64, !35, i64 8}
!66 = !{!64, !35, i64 16}
!67 = !{!51, !35, i64 32}
!68 = !{!51, !35, i64 24}
!69 = !{!51, !35, i64 16}
!70 = !{!"paint_vertex_proj.c:vpaint_proj_dm_map_cosnos_init__map_cb"}
!71 = !{i8 0, i8 2}
!72 = !{!"paint_vertex_proj.c:is_zero_v3"}
!73 = !{!45, !45, i64 0}
!74 = !{!"paint_vertex_proj.c:copy_v3_v3"}
!75 = !{!"paint_vertex_proj.c:normal_short_to_float_v3"}
!76 = !{!41, !41, i64 0}
!77 = !{!"paint_vertex_proj.c:vpaint_proj_dm_map_cosnos_update__map_cb"}
!78 = !{!"paint_vertex_proj.c:len_squared_v2v2"}
!79 = !{!"paint_vertex_proj.c:sub_v2_v2v2"}
!80 = !{!"paint_vertex_proj.c:dot_v2v2"}
