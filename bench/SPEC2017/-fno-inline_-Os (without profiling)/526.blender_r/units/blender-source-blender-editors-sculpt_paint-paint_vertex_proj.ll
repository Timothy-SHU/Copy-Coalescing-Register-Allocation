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
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @__func__.ED_vpaint_proj_handle_create) #8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !18
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 24
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str) #8
  store ptr %13, ptr %5, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 1
  store i8 0, ptr %14, align 8, !tbaa !23
  tail call fastcc void @vpaint_proj_dm_map_cosnos_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #9
  %15 = load i8, ptr %14, align 8, !tbaa !23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %19 = load i32, ptr %9, align 8, !tbaa !18
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
  %30 = load ptr, ptr %5, align 8, !tbaa !21
  store ptr %30, ptr %2, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_proj_dm_map_cosnos_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !24
  %7 = or i64 %6, 128
  %8 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %7) #8
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 71
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %17, i1 false)
  %18 = load ptr, ptr %9, align 8, !tbaa !25
  tail call void %18(ptr noundef nonnull %8, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_init__map_cb, ptr noundef nonnull %2, i32 noundef 1) #8
  br label %37

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !18
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !21
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 76
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 78
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %33, %27 ]
  %29 = phi ptr [ %24, %23 ], [ %34, %27 ]
  %30 = load ptr, ptr %25, align 8, !tbaa !27
  tail call void %30(ptr noundef nonnull %8, i32 noundef %28, ptr noundef %29) #8
  %31 = load ptr, ptr %26, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.DMCoNo, ptr %29, i64 0, i32 1
  tail call void %31(ptr noundef nonnull %8, i32 noundef %28, ptr noundef nonnull %32) #8
  %33 = add nuw nsw i32 %28, 1
  %34 = getelementptr inbounds %struct.DMCoNo, ptr %29, i64 1
  %35 = load i32, ptr %20, align 8, !tbaa !18
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !29

37:                                               ; preds = %27, %19, %12
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  tail call void %39(ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vpaint_proj_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @vpaint_proj_dm_map_cosnos_update(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #9
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_proj_dm_map_cosnos_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.VertProjUpdate, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  store ptr %0, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !24
  %14 = or i64 %13, 128
  %15 = tail call ptr @mesh_get_derived_final(ptr noundef %8, ptr noundef %10, i64 noundef %14) #8
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %15, i64 0, i32 71
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !18
  tail call void @fill_vn_fl(ptr noundef %21, i32 noundef %23, float noundef 0x47EFFFFFE0000000) #8
  %24 = load ptr, ptr %16, align 8, !tbaa !25
  call void %24(ptr noundef nonnull %15, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_update__map_cb, ptr noundef nonnull %4, i32 noundef 1) #8
  br label %25

25:                                               ; preds = %19, %3
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %15, i64 0, i32 95
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  call void %27(ptr noundef nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vpaint_proj_handle_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void %6(ptr noundef %8) #8
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %11 = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %10(ptr noundef %11) #8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %12(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @vpaint_proj_dm_map_cosnos_init__map_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #4 {
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.DMCoNo, ptr %6, i64 %7, i32 1
  %9 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #9, !range !39
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  store i8 1, ptr %12, align 8, !tbaa !23
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
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !40
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !40
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  store float %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !41
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !40
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !41
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vpaint_proj_dm_map_cosnos_update__map_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !32
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.DMCoNo, ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %11 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = call i32 @ED_view3d_project_float_object(ptr noundef %12, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = call fastcc float @len_squared_v2v2(ptr noundef %17, ptr noundef nonnull %6) #9
  %19 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds float, ptr %20, i64 %9
  %22 = load float, ptr %21, align 4, !tbaa !40
  %23 = fcmp ule float %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  store float %18, ptr %21, align 4, !tbaa !40
  br label %31

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds float, ptr %27, i64 %9
  %29 = load float, ptr %28, align 4, !tbaa !40
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
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !40
  %5 = load float, ptr %2, align 4, !tbaa !40
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !40
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !40
  %4 = load float, ptr %1, align 4, !tbaa !40
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !40
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 296}
!10 = !{!"Object", !11, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !12, i64 138, !13, i64 140, !13, i64 144, !13, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !14, i64 312, !6, i64 360, !15, i64 368, !15, i64 384, !15, i64 400, !15, i64 416, !13, i64 432, !13, i64 436, !6, i64 440, !6, i64 448, !13, i64 456, !13, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !16, i64 616, !16, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !13, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !7, i64 966, !7, i64 967, !13, i64 968, !13, i64 972, !13, i64 976, !13, i64 980, !13, i64 984, !16, i64 988, !16, i64 992, !16, i64 996, !16, i64 1000, !16, i64 1004, !16, i64 1008, !16, i64 1012, !16, i64 1016, !16, i64 1020, !16, i64 1024, !16, i64 1028, !16, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !7, i64 1042, !7, i64 1043, !12, i64 1044, !7, i64 1046, !7, i64 1047, !16, i64 1048, !16, i64 1052, !15, i64 1056, !15, i64 1072, !15, i64 1088, !15, i64 1104, !16, i64 1120, !12, i64 1124, !12, i64 1126, !7, i64 1128, !13, i64 1144, !13, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !12, i64 1162, !7, i64 1164, !15, i64 1176, !15, i64 1192, !15, i64 1208, !15, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !12, i64 1266, !16, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !17, i64 1304, !17, i64 1312, !13, i64 1320, !13, i64 1324, !15, i64 1328, !15, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !15, i64 1400, !6, i64 1416}
!11 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !12, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !6, i64 112}
!12 = !{!"short", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"bAnimVizSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!15 = !{!"ListBase", !6, i64 0, !6, i64 8}
!16 = !{!"float", !7, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!19, !13, i64 1280}
!19 = !{!"Mesh", !11, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !20, i64 280, !20, i64 480, !20, i64 680, !20, i64 880, !20, i64 1080, !13, i64 1280, !13, i64 1284, !13, i64 1288, !13, i64 1292, !13, i64 1296, !13, i64 1300, !13, i64 1304, !7, i64 1308, !7, i64 1320, !7, i64 1332, !13, i64 1344, !12, i64 1348, !12, i64 1350, !16, i64 1352, !13, i64 1356, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !12, i64 1366, !6, i64 1368}
!20 = !{!"CustomData", !6, i64 0, !7, i64 8, !13, i64 172, !13, i64 176, !13, i64 180, !6, i64 184, !6, i64 192}
!21 = !{!22, !6, i64 0}
!22 = !{!"VertProjHandle", !6, i64 0, !7, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!23 = !{!22, !7, i64 8}
!24 = !{!17, !17, i64 0}
!25 = !{!26, !6, i64 1488}
!26 = !{!"DerivedMesh", !20, i64 0, !20, i64 200, !20, i64 400, !20, i64 600, !20, i64 800, !13, i64 1000, !13, i64 1004, !13, i64 1008, !13, i64 1012, !13, i64 1016, !13, i64 1020, !13, i64 1024, !6, i64 1032, !6, i64 1040, !13, i64 1048, !16, i64 1052, !13, i64 1056, !13, i64 1060, !6, i64 1064, !7, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !6, i64 1176, !6, i64 1184, !6, i64 1192, !6, i64 1200, !6, i64 1208, !6, i64 1216, !6, i64 1224, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !6, i64 1464, !6, i64 1472, !6, i64 1480, !6, i64 1488, !6, i64 1496, !6, i64 1504, !6, i64 1512, !6, i64 1520, !6, i64 1528, !6, i64 1536, !6, i64 1544, !6, i64 1552, !6, i64 1560, !6, i64 1568, !6, i64 1576, !6, i64 1584, !6, i64 1592, !6, i64 1600, !6, i64 1608, !6, i64 1616, !6, i64 1624, !6, i64 1632, !6, i64 1640, !6, i64 1648, !6, i64 1656, !6, i64 1664, !6, i64 1672, !6, i64 1680}
!27 = !{!26, !6, i64 1528}
!28 = !{!26, !6, i64 1544}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!26, !6, i64 1680}
!32 = !{!33, !6, i64 0}
!33 = !{!"VertProjUpdate", !6, i64 0, !6, i64 8, !6, i64 16}
!34 = !{!33, !6, i64 8}
!35 = !{!33, !6, i64 16}
!36 = !{!22, !6, i64 32}
!37 = !{!22, !6, i64 24}
!38 = !{!22, !6, i64 16}
!39 = !{i8 0, i8 2}
!40 = !{!16, !16, i64 0}
!41 = !{!12, !12, i64 0}
