; ModuleID = 'blender/source/blender/blenkernel/intern/pbvh.c'
source_filename = "blender/source/blender/blenkernel/intern/pbvh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.BB = type { [3 x float], [3 x float] }
%struct.BBC = type { [3 x float], [3 x float], [3 x float] }
%struct.PBVH = type { i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.CCGKey, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, ptr, float, float, i32, i32, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PBVHNode = type { ptr, %struct.BB, %struct.BB, i32, ptr, i32, ptr, i32, i32, ptr, i16, float, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.PBVHIter = type { ptr, ptr, ptr, ptr, i32, [100 x %struct.PBVHStack], i32 }
%struct.PBVHStack = type { ptr, i32 }
%struct.PBVHVertexIter = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, %struct.GSetIterator, %struct.GSetIterator, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.RaycastData = type { %struct.IsectRayAABBData, i8 }
%struct.IsectRayAABBData = type { [3 x float], [3 x float], [3 x i32] }
%struct.node_tree = type { ptr, ptr, ptr }
%struct.PBVHNodeDrawData = type { ptr, i8 }
%struct.PBVHProxyNode = type { ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DMFlagMat = type { i16, i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"bvh nodes\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"bvh->vert_bitmap\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prim_bbc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pbvh\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_pbvh_search_gather = private unnamed_addr constant [23 x i8] c"BKE_pbvh_search_gather\00", align 1
@__func__.BKE_pbvh_get_grid_updates = private unnamed_addr constant [26 x i8] c"BKE_pbvh_get_grid_updates\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PBVH Grid Faces\00", align 1
@__const.BKE_pbvh_raycast_project_ray_root.offset_vec = private unnamed_addr constant [3 x float] [float 0x3F50624DE0000000, float 0x3F50624DE0000000, float 0x3F50624DE0000000], align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"layer disp\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"BKE_pbvh_get_vertCoords\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_pbvh_node_add_proxy = private unnamed_addr constant [24 x i8] c"BKE_pbvh_node_add_proxy\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"PBVHNodeProxy\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"PBVHNodeProxy.co\00", align 1
@__func__.BKE_pbvh_gather_proxies = private unnamed_addr constant [24 x i8] c"BKE_pbvh_gather_proxies\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"bvh prim indices\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bvh initial nodes\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"build_mesh_leaf_node gh\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"bvh node face vert indices\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"bvh node vert indices\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PBVHStack\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"bvh temp vnors\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BB_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 1
  store <2 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %2, align 4, !tbaa !34
  store <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BB_expand(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %14, %3 ]
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call fastcc float @min_ff(float noundef %6, float noundef %8) #22
  store float %9, ptr %5, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 %4
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %7, align 4, !tbaa !34
  %13 = tail call fastcc float @max_ff(float noundef %11, float noundef %12) #22
  store float %13, ptr %10, align 4, !tbaa !34
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %3, !llvm.loop !38

16:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !40 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !41 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BB_expand_with_bb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %15, %3 ]
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call fastcc float @min_ff(float noundef %6, float noundef %8) #22
  store float %9, ptr %5, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 %4
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.BB, ptr %1, i64 0, i32 1, i64 %4
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call fastcc float @max_ff(float noundef %11, float noundef %13) #22
  store float %14, ptr %10, align 4, !tbaa !34
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %3, !llvm.loop !42

17:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @BB_widest_axis(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %4
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %3, !llvm.loop !43

13:                                               ; preds = %3
  %14 = load float, ptr %2, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fcmp ule float %14, %16
  %18 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = select i1 %17, float %16, float %14
  %21 = zext i1 %17 to i32
  %22 = fcmp ogt float %20, %19
  %23 = select i1 %22, i32 %21, i32 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BBC_update_centroid(ptr nocapture noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.BBC, ptr %0, i64 0, i32 1, i64 %3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fadd float %5, %7
  %9 = fmul float %8, 5.000000e-01
  %10 = getelementptr inbounds %struct.BBC, ptr %0, i64 0, i32 2, i64 %3
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %2, !llvm.loop !44

13:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pbvh_grow_nodes(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = sitofp i32 %4 to double
  %10 = fmul double %9, 1.330000e+00
  %11 = fptosi double %10 to i32
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %1)
  store i32 %12, ptr %3, align 8, !tbaa !45
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %14 = sext i32 %12 to i64
  %15 = mul nsw i64 %14, 184
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str) #24
  store ptr %16, ptr %7, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %8, i64 %20, i1 false)
  %21 = load ptr, ptr %7, align 8, !tbaa !50
  %22 = load i32, ptr %17, align 4, !tbaa !52
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 %23
  %25 = load i32, ptr %3, align 8, !tbaa !45
  %26 = sub nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 184
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %28, i1 false)
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %29(ptr noundef %8) #24
  br label %30

30:                                               ; preds = %6, %2
  %31 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 %1, ptr %31, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_pbvh_count_grid_quads(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = add i32 %3, -1
  %6 = mul nsw i32 %5, %5
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 1
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %8, %38
  %12 = phi i64 [ 0, %8 ], [ %40, %38 ]
  %13 = phi i32 [ 0, %8 ], [ %39, %38 ]
  %14 = getelementptr inbounds i32, ptr %1, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %11
  br i1 %9, label %21, label %38

21:                                               ; preds = %20, %33
  %22 = phi i32 [ %30, %33 ], [ %13, %20 ]
  %23 = phi i32 [ %34, %33 ], [ 0, %20 ]
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %22, %21 ], [ %30, %24 ]
  %26 = phi i32 [ 0, %21 ], [ %31, %24 ]
  %27 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %18, i32 noundef %3, i32 noundef %26, i32 noundef %23) #24
  %28 = icmp eq i8 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %25, %29
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %24, !llvm.loop !54

33:                                               ; preds = %24
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp eq i32 %34, %5
  br i1 %35, label %38, label %21, !llvm.loop !55

36:                                               ; preds = %11
  %37 = add nsw i32 %13, %6
  br label %38

38:                                               ; preds = %33, %20, %36
  %39 = phi i32 [ %37, %36 ], [ %13, %20 ], [ %30, %33 ]
  %40 = add nuw nsw i64 %12, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %42, label %11, !llvm.loop !56

42:                                               ; preds = %38, %4
  %43 = phi i32 [ 0, %4 ], [ %39, %38 ]
  ret i32 %43
}

; Function Attrs: optsize
declare zeroext i8 @paint_is_grid_face_hidden(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_build_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  store i32 0, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  store ptr %1, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  store ptr %2, ptr %9, align 8, !tbaa !59
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %11 = ashr i32 %4, 5
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.1) #24
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 19
  store ptr %15, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  store i32 %4, ptr %17, align 4, !tbaa !61
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 10000, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  store ptr %5, ptr %19, align 8, !tbaa !63
  call void @BB_reset(ptr noundef nonnull %7) #22
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %21 = sext i32 %3 to i64
  %22 = mul nsw i64 %21, 36
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.2) #24
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %6
  %26 = zext nneg i32 %3 to i64
  br label %27

27:                                               ; preds = %25, %43
  %28 = phi i64 [ 0, %25 ], [ %45, %43 ]
  %29 = getelementptr inbounds %struct.MFace, ptr %1, i64 %28
  %30 = getelementptr inbounds %struct.MFace, ptr %1, i64 %28, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i64 3, i64 4
  %34 = getelementptr inbounds %struct.BBC, ptr %23, i64 %28
  tail call void @BB_reset(ptr noundef %34) #22
  br label %35

35:                                               ; preds = %27, %35
  %36 = phi i64 [ 0, %27 ], [ %41, %35 ]
  %37 = getelementptr inbounds i32, ptr %29, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.MVert, ptr %2, i64 %39
  tail call void @BB_expand(ptr noundef %34, ptr noundef %40) #22
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %35, !llvm.loop !68

43:                                               ; preds = %35
  tail call void @BBC_update_centroid(ptr noundef %34) #22
  %44 = getelementptr inbounds %struct.BBC, ptr %23, i64 %28, i32 2
  call void @BB_expand(ptr noundef nonnull %7, ptr noundef nonnull %44) #22
  %45 = add nuw nsw i64 %28, 1
  %46 = icmp eq i64 %45, %26
  br i1 %46, label %47, label %27, !llvm.loop !69

47:                                               ; preds = %43, %6
  %48 = icmp eq i32 %3, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call fastcc void @pbvh_build(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %23, i32 noundef %3) #22
  br label %50

50:                                               ; preds = %49, %47
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %51(ptr noundef %23) #24
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %53 = load ptr, ptr %16, align 8, !tbaa !60
  call void %52(ptr noundef %53) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_build(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !70 {
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp eq i32 %6, %3
  br i1 %7, label %71, label %8

8:                                                ; preds = %4
  store i32 %3, ptr %5, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %13(ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %19(ptr noundef nonnull %16) #24
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %22 = sext i32 %3 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.9) #24
  store ptr %24, ptr %15, align 8, !tbaa !72
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = zext nneg i32 %3 to i64
  %28 = add nuw nsw i64 %27, 3
  %29 = and i64 %28, 4294967292
  %30 = add nsw i64 %27, -1
  %31 = insertelement <4 x i64> poison, i64 %30, i64 0
  %32 = shufflevector <4 x i64> %31, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %59, %26
  %34 = phi i64 [ 0, %26 ], [ %60, %59 ]
  %35 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %26 ], [ %61, %59 ]
  %36 = trunc i64 %34 to i32
  %37 = icmp ule <4 x i64> %35, %32
  %38 = extractelement <4 x i1> %37, i64 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr inbounds i32, ptr %24, i64 %34
  store i32 %36, ptr %40, align 4, !tbaa !53
  br label %41

41:                                               ; preds = %39, %33
  %42 = extractelement <4 x i1> %37, i64 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = or disjoint i64 %34, 1
  %45 = getelementptr inbounds i32, ptr %24, i64 %44
  %46 = or disjoint i32 %36, 1
  store i32 %46, ptr %45, align 4, !tbaa !53
  br label %47

47:                                               ; preds = %43, %41
  %48 = extractelement <4 x i1> %37, i64 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = or disjoint i64 %34, 2
  %51 = getelementptr inbounds i32, ptr %24, i64 %50
  %52 = or disjoint i32 %36, 2
  store i32 %52, ptr %51, align 4, !tbaa !53
  br label %53

53:                                               ; preds = %49, %47
  %54 = extractelement <4 x i1> %37, i64 3
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = or disjoint i64 %34, 3
  %57 = getelementptr inbounds i32, ptr %24, i64 %56
  %58 = or disjoint i32 %36, 3
  store i32 %58, ptr %57, align 4, !tbaa !53
  br label %59

59:                                               ; preds = %55, %53
  %60 = add i64 %34, 4
  %61 = add <4 x i64> %35, <i64 4, i64 4, i64 4, i64 4>
  %62 = icmp eq i64 %60, %29
  br i1 %62, label %63, label %33, !llvm.loop !73

63:                                               ; preds = %59, %20
  %64 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 0, ptr %64, align 4, !tbaa !52
  %65 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !45
  %67 = icmp slt i32 %66, 100
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  store i32 100, ptr %65, align 8, !tbaa !45
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %70 = tail call ptr %69(i64 noundef 18400, ptr noundef nonnull @.str.10) #24
  store ptr %70, ptr %9, align 8, !tbaa !50
  br label %71

71:                                               ; preds = %63, %68, %4
  %72 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 1, ptr %72, align 4, !tbaa !52
  tail call fastcc void @build_sub(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_build_grids(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 {
  %9 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  %10 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !76
  store i32 1, ptr %0, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  store ptr %1, ptr %12, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  store ptr %2, ptr %13, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  store ptr %6, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 17
  store i32 %3, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 4 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !82
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  store ptr %7, ptr %18, align 8, !tbaa !83
  %19 = add nsw i32 %11, -1
  %20 = mul nsw i32 %19, %19
  %21 = udiv i32 10000, %20
  %22 = tail call fastcc i32 @max_ii(i32 noundef %21) #22
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 %22, ptr %23, align 8, !tbaa !62
  call void @BB_reset(ptr noundef nonnull %9) #22
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %25 = sext i32 %3 to i64
  %26 = mul nsw i64 %25, 36
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.2) #24
  %28 = icmp sgt i32 %3, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %8
  %30 = mul i32 %11, %11
  %31 = icmp eq i32 %11, 0
  %32 = tail call i32 @llvm.umax.i32(i32 %30, i32 1)
  %33 = zext nneg i32 %3 to i64
  br label %34

34:                                               ; preds = %29, %44
  %35 = phi i64 [ 0, %29 ], [ %46, %44 ]
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.BBC, ptr %27, i64 %35
  tail call void @BB_reset(ptr noundef %38) #22
  br i1 %31, label %44, label %39

39:                                               ; preds = %34, %39
  %40 = phi i32 [ %42, %39 ], [ 0, %34 ]
  %41 = tail call fastcc ptr @CCG_elem_offset_co(ptr noundef %4, ptr noundef %37, i32 noundef %40) #22
  tail call void @BB_expand(ptr noundef %38, ptr noundef %41) #22
  %42 = add nuw i32 %40, 1
  %43 = icmp eq i32 %42, %32
  br i1 %43, label %44, label %39, !llvm.loop !84

44:                                               ; preds = %39, %34
  tail call void @BBC_update_centroid(ptr noundef %38) #22
  %45 = getelementptr inbounds %struct.BBC, ptr %27, i64 %35, i32 2
  call void @BB_expand(ptr noundef nonnull %9, ptr noundef nonnull %45) #22
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, %33
  br i1 %47, label %48, label %34, !llvm.loop !85

48:                                               ; preds = %44, %8
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  call fastcc void @pbvh_build(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %27, i32 noundef %3) #22
  br label %51

51:                                               ; preds = %50, %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %52(ptr noundef %27) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #3 !PGOFuncName !86 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !87 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pbvh_new() local_unnamed_addr #5 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %2 = tail call ptr %1(i64 noundef 208, ptr noundef nonnull @.str.3) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_free(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %46
  %8 = phi i64 [ 0, %5 ], [ %47, %46 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 10
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %10, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @GPU_free_pbvh_buffers(ptr noundef nonnull %16) #24
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %24(ptr noundef nonnull %21) #24
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %30(ptr noundef nonnull %27) #24
  br label %31

31:                                               ; preds = %29, %25
  tail call void @BKE_pbvh_node_layer_disp_free(ptr noundef nonnull %10) #22
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @BLI_gset_free(ptr noundef nonnull %33, ptr noundef null) #24
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @BLI_gset_free(ptr noundef nonnull %38, ptr noundef null) #24
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @BLI_gset_free(ptr noundef nonnull %43, ptr noundef null) #24
  br label %46

46:                                               ; preds = %7, %45, %41
  %47 = add nuw nsw i64 %8, 1
  %48 = load i32, ptr %2, align 4, !tbaa !52
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %7, label %51, !llvm.loop !96

51:                                               ; preds = %46, %1
  %52 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %53 = load i8, ptr %52, align 8, !tbaa !97
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %60(ptr noundef nonnull %57) #24
  %61 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %65(ptr noundef nonnull %62) #24
  br label %66

66:                                               ; preds = %55, %64, %59, %51
  %67 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %71(ptr noundef nonnull %68) #24
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %77(ptr noundef nonnull %74) #24
  br label %78

78:                                               ; preds = %76, %72
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %79(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare void @GPU_free_pbvh_buffers(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_node_layer_disp_free(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %6(ptr noundef nonnull %3) #24
  store ptr null, ptr %2, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_free_layer_disp(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8
  tail call void @BKE_pbvh_node_layer_disp_free(ptr noundef %10) #22
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %2, align 4, !tbaa !52
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !99

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #5 {
  %6 = alloca %struct.PBVHIter, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %6) #23
  call fastcc void @pbvh_iter_begin(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %7 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5, %34
  %10 = phi ptr [ %38, %34 ], [ %7, %5 ]
  %11 = phi i32 [ %37, %34 ], [ 0, %5 ]
  %12 = phi i32 [ %36, %34 ], [ 0, %5 ]
  %13 = phi ptr [ %35, %34 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 10
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %9
  %19 = icmp eq i32 %12, %11
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = icmp eq i32 %11, 0
  %22 = shl nsw i32 %11, 1
  %23 = select i1 %21, i32 32, i32 %22
  %24 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !51
  %25 = sext i32 %23 to i64
  %26 = shl nsw i64 %25, 3
  %27 = call ptr %24(ptr noundef %13, i64 noundef %26, ptr noundef nonnull @__func__.BKE_pbvh_search_gather) #24
  br label %28

28:                                               ; preds = %20, %18
  %29 = phi ptr [ %27, %20 ], [ %13, %18 ]
  %30 = phi i32 [ %23, %20 ], [ %11, %18 ]
  %31 = sext i32 %12 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  store ptr %10, ptr %32, align 8, !tbaa !51
  %33 = add nsw i32 %12, 1
  br label %34

34:                                               ; preds = %28, %9
  %35 = phi ptr [ %29, %28 ], [ %13, %9 ]
  %36 = phi i32 [ %33, %28 ], [ %12, %9 ]
  %37 = phi i32 [ %30, %28 ], [ %11, %9 ]
  %38 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %9, !llvm.loop !100

40:                                               ; preds = %34, %5
  %41 = phi ptr [ null, %5 ], [ %35, %34 ]
  %42 = phi i32 [ 0, %5 ], [ %36, %34 ]
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %6) #22
  %43 = icmp eq i32 %42, 0
  %44 = icmp ne ptr %41, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %47(ptr noundef nonnull %41) #24
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ null, %46 ], [ %41, %40 ]
  store ptr %49, ptr %3, align 8, !tbaa !51
  store i32 %42, ptr %4, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @pbvh_iter_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !PGOFuncName !101 {
  store ptr %1, ptr %0, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 2
  store ptr %3, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !106
  %9 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 6
  store i32 100, ptr %9, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  store ptr %11, ptr %7, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 4
  store i32 1, ptr %13, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pbvh_iter_next(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %5, %48
  %10 = phi i32 [ %3, %5 ], [ %49, %48 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %2, align 8, !tbaa !111
  %12 = load ptr, ptr %6, align 8, !tbaa !106
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.PBVHStack, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.PBVHStack, ptr %12, i64 %13, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !110
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load ptr, ptr %7, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !tbaa !105
  %26 = tail call zeroext i8 %22(ptr noundef nonnull %15, ptr noundef %25) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %15, i64 0, i32 10
  %30 = load i16, ptr %29, align 8
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  tail call fastcc void @pbvh_stack_push(ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef 1) #22
  %34 = load ptr, ptr %0, align 8, !tbaa !102
  %35 = getelementptr inbounds %struct.PBVH, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %15, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !113
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.PBVHNode, ptr %36, i64 %39
  %41 = getelementptr inbounds %struct.PBVHNode, ptr %40, i64 1
  tail call fastcc void @pbvh_stack_push(ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef 0) #22
  %42 = load ptr, ptr %0, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.PBVH, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = load i32, ptr %37, align 8, !tbaa !113
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.PBVHNode, ptr %44, i64 %46
  tail call fastcc void @pbvh_stack_push(ptr noundef nonnull %0, ptr noundef %47, i32 noundef 0) #22
  br label %48

48:                                               ; preds = %33, %24
  %49 = load i32, ptr %2, align 8, !tbaa !111
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %9, !llvm.loop !114

51:                                               ; preds = %9, %17, %28, %48, %1
  %52 = phi ptr [ null, %1 ], [ null, %48 ], [ %15, %28 ], [ %15, %17 ], [ null, %9 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_iter_end(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !107
  %4 = icmp sgt i32 %3, 100
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  tail call void %6(ptr noundef %8) #24
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_search_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = alloca %struct.PBVHIter, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %6) #23
  call fastcc void @pbvh_iter_begin(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %7 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 10
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  call void %3(ptr noundef nonnull %10, ptr noundef %4) #24
  br label %16

16:                                               ; preds = %15, %9
  %17 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !116

19:                                               ; preds = %16, %5
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BKE_pbvh_node_get_tmin(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 11
  %3 = load float, ptr %2, align 4, !tbaa !117
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pbvh_update_BB_redraw(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  %7 = and i32 %3, 4
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %3, 8
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 32
  %12 = icmp eq i32 %11, 0
  %13 = zext nneg i32 %2 to i64
  br label %14

14:                                               ; preds = %6, %41
  %15 = phi i64 [ 0, %6 ], [ %42, %41 ]
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  br i1 %8, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 10
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call fastcc void @update_node_vb(ptr noundef %0, ptr noundef nonnull %17) #22
  br label %24

24:                                               ; preds = %23, %18, %14
  br i1 %10, label %33, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 10
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 2
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !118
  br label %33

33:                                               ; preds = %30, %25, %24
  br i1 %12, label %41, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 10
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = and i16 %36, -33
  store i16 %40, ptr %35, align 8
  br label %41

41:                                               ; preds = %39, %34, %33
  %42 = add nuw nsw i64 %15, 1
  %43 = icmp eq i64 %42, %13
  br i1 %43, label %44, label %14, !llvm.loop !120

44:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_node_vb(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !121 {
  %3 = alloca %struct.BB, align 4
  %4 = alloca %struct.PBVHVertexIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @BB_reset(ptr noundef nonnull %3) #22
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %165, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #23
  call void @pbvh_vertex_iter_init(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !122
  %11 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 12
  store i32 0, ptr %4, align 8, !tbaa !126
  %12 = load i32, ptr %11, align 8, !tbaa !127
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %164

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 6
  %16 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %17 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 11
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 4
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 3
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 8
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 10
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 14
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 16
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 22
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 25
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 17
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 21
  br label %38

38:                                               ; preds = %14, %158
  %39 = phi i32 [ %12, %14 ], [ %159, %158 ]
  %40 = phi i32 [ 0, %14 ], [ %161, %158 ]
  %41 = phi i32 [ 0, %14 ], [ %162, %158 ]
  %42 = load ptr, ptr %15, align 8, !tbaa !128
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, ptr %21, align 8, !tbaa !129
  store i32 %45, ptr %17, align 4, !tbaa !130
  store i32 1, ptr %18, align 8, !tbaa !131
  store i32 0, ptr %22, align 8, !tbaa !132
  br label %56

46:                                               ; preds = %38
  %47 = load i32, ptr %16, align 4, !tbaa !133
  store i32 %47, ptr %17, align 4, !tbaa !130
  store i32 %47, ptr %18, align 8, !tbaa !131
  %48 = load ptr, ptr %19, align 8, !tbaa !134
  %49 = sext i32 %41 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %42, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  store ptr %54, ptr %20, align 8, !tbaa !135
  store i32 0, ptr %22, align 8, !tbaa !132
  %55 = icmp sgt i32 %47, 0
  br i1 %55, label %56, label %158

56:                                               ; preds = %44, %46
  %57 = phi i32 [ %47, %46 ], [ 1, %44 ]
  %58 = phi i32 [ %47, %46 ], [ %45, %44 ]
  br label %59

59:                                               ; preds = %56, %146
  %60 = phi i32 [ %147, %146 ], [ %58, %56 ]
  %61 = phi i32 [ %148, %146 ], [ %57, %56 ]
  %62 = phi i32 [ %153, %146 ], [ 0, %56 ]
  %63 = phi i32 [ %150, %146 ], [ %58, %56 ]
  %64 = phi i32 [ %151, %146 ], [ %40, %56 ]
  %65 = phi i32 [ %152, %146 ], [ %58, %56 ]
  store i32 0, ptr %23, align 4, !tbaa !136
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %146

67:                                               ; preds = %59, %135
  %68 = phi i32 [ %136, %135 ], [ %60, %59 ]
  %69 = phi i32 [ %137, %135 ], [ %63, %59 ]
  %70 = phi i32 [ %141, %135 ], [ %64, %59 ]
  %71 = phi i32 [ %140, %135 ], [ 0, %59 ]
  %72 = load ptr, ptr %20, align 8, !tbaa !135
  %73 = icmp eq ptr %72, null
  br i1 %73, label %100, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %24, align 8, !tbaa !137
  store ptr %72, ptr %25, align 8, !tbaa !138
  %76 = call fastcc ptr @CCG_elem_no(ptr noundef %75, ptr noundef nonnull %72) #22
  store ptr %76, ptr %26, align 8, !tbaa !139
  %77 = getelementptr inbounds %struct.CCGKey, ptr %75, i64 0, i32 9
  %78 = load i32, ptr %77, align 4, !tbaa !140
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %75, ptr noundef nonnull %72) #22
  br label %82

82:                                               ; preds = %74, %80
  %83 = phi ptr [ %81, %80 ], [ null, %74 ]
  store ptr %83, ptr %27, align 8, !tbaa !141
  %84 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %75, ptr noundef nonnull %72) #22
  store ptr %84, ptr %20, align 8, !tbaa !135
  %85 = load ptr, ptr %28, align 8, !tbaa !142
  %86 = icmp eq ptr %85, null
  br i1 %86, label %130, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %22, align 8, !tbaa !132
  %89 = load i32, ptr %16, align 4, !tbaa !133
  %90 = mul nsw i32 %89, %88
  %91 = add nsw i32 %90, %71
  %92 = ashr i32 %91, 5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %85, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !53
  %96 = and i32 %91, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %130, label %135

100:                                              ; preds = %67
  %101 = load ptr, ptr %29, align 8, !tbaa !143
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %30, align 8, !tbaa !144
  %105 = sext i32 %71 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !53
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.MVert, ptr %101, i64 %108
  store ptr %109, ptr %31, align 8, !tbaa !145
  store ptr %109, ptr %25, align 8, !tbaa !138
  %110 = getelementptr inbounds %struct.MVert, ptr %101, i64 %108, i32 1
  store ptr %110, ptr %32, align 8, !tbaa !146
  %111 = load ptr, ptr %33, align 8, !tbaa !147
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113

113:                                              ; preds = %103
  %114 = getelementptr inbounds float, ptr %111, i64 %108
  store ptr %114, ptr %27, align 8, !tbaa !141
  br label %130

115:                                              ; preds = %100
  %116 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %34) #22, !range !148
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, ptr %34, ptr %35
  %119 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %118) #22
  store ptr %119, ptr %36, align 8, !tbaa !149
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %118) #22
  %120 = load ptr, ptr %36, align 8, !tbaa !149
  %121 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2
  store ptr %121, ptr %25, align 8, !tbaa !138
  %122 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 3
  store ptr %122, ptr %26, align 8, !tbaa !139
  %123 = load ptr, ptr %120, align 8, !tbaa !150
  %124 = load i32, ptr %37, align 8, !tbaa !153
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %123, i64 %125
  store ptr %126, ptr %27, align 8, !tbaa !141
  %127 = load i32, ptr %23, align 4, !tbaa !136
  %128 = load i32, ptr %10, align 4, !tbaa !122
  %129 = load i32, ptr %17, align 4, !tbaa !130
  br label %130

130:                                              ; preds = %115, %113, %103, %82, %87
  %131 = phi i32 [ %129, %115 ], [ %68, %113 ], [ %68, %103 ], [ %68, %82 ], [ %68, %87 ]
  %132 = phi i32 [ %128, %115 ], [ %70, %113 ], [ %70, %103 ], [ %70, %82 ], [ %70, %87 ]
  %133 = phi i32 [ %127, %115 ], [ %71, %113 ], [ %71, %103 ], [ %71, %82 ], [ %71, %87 ]
  %134 = phi ptr [ %121, %115 ], [ %109, %113 ], [ %109, %103 ], [ %72, %82 ], [ %72, %87 ]
  call void @BB_expand(ptr noundef nonnull %3, ptr noundef %134) #22
  br label %135

135:                                              ; preds = %87, %130
  %136 = phi i32 [ %68, %87 ], [ %131, %130 ]
  %137 = phi i32 [ %69, %87 ], [ %131, %130 ]
  %138 = phi i32 [ %70, %87 ], [ %132, %130 ]
  %139 = phi i32 [ %71, %87 ], [ %133, %130 ]
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %23, align 4, !tbaa !136
  %141 = add nsw i32 %138, 1
  store i32 %141, ptr %10, align 4, !tbaa !122
  %142 = icmp slt i32 %140, %137
  br i1 %142, label %67, label %143, !llvm.loop !154

143:                                              ; preds = %135
  %144 = load i32, ptr %22, align 8, !tbaa !132
  %145 = load i32, ptr %18, align 8, !tbaa !131
  br label %146

146:                                              ; preds = %143, %59
  %147 = phi i32 [ %136, %143 ], [ %60, %59 ]
  %148 = phi i32 [ %145, %143 ], [ %61, %59 ]
  %149 = phi i32 [ %144, %143 ], [ %62, %59 ]
  %150 = phi i32 [ %137, %143 ], [ %63, %59 ]
  %151 = phi i32 [ %141, %143 ], [ %64, %59 ]
  %152 = phi i32 [ %137, %143 ], [ %65, %59 ]
  %153 = add nsw i32 %149, 1
  store i32 %153, ptr %22, align 8, !tbaa !132
  %154 = icmp slt i32 %153, %148
  br i1 %154, label %59, label %155, !llvm.loop !155

155:                                              ; preds = %146
  %156 = load i32, ptr %4, align 8, !tbaa !126
  %157 = load i32, ptr %11, align 8, !tbaa !127
  br label %158

158:                                              ; preds = %155, %46
  %159 = phi i32 [ %157, %155 ], [ %39, %46 ]
  %160 = phi i32 [ %156, %155 ], [ %41, %46 ]
  %161 = phi i32 [ %151, %155 ], [ %40, %46 ]
  %162 = add nsw i32 %160, 1
  store i32 %162, ptr %4, align 8, !tbaa !126
  %163 = icmp slt i32 %162, %159
  br i1 %163, label %38, label %164, !llvm.loop !156

164:                                              ; preds = %158, %9
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #23
  br label %174

165:                                              ; preds = %2
  %166 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !50
  %168 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 3
  %169 = load i32, ptr %168, align 8, !tbaa !113
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.PBVHNode, ptr %167, i64 %170, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %3, ptr noundef nonnull %171) #22
  %172 = getelementptr %struct.PBVHNode, ptr %167, i64 %170
  %173 = getelementptr %struct.PBVHNode, ptr %172, i64 1, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %3, ptr noundef %173) #22
  br label %174

174:                                              ; preds = %165, %164
  %175 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %175, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = sext i32 %1 to i64
  %11 = inttoptr i64 %10 to ptr
  call void @BKE_pbvh_search_gather(ptr noundef nonnull %0, ptr noundef nonnull @update_search_cb, ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %12 = and i32 %1, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !51
  %16 = load i32, ptr %5, align 4, !tbaa !53
  tail call fastcc void @pbvh_update_normals(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %16, ptr noundef %2) #22
  br label %17

17:                                               ; preds = %14, %9
  %18 = and i32 %1, 44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !51
  %22 = load i32, ptr %5, align 4, !tbaa !53
  tail call void @pbvh_update_BB_redraw(ptr noundef nonnull %0, ptr noundef %21, i32 noundef %22, i32 noundef %1) #22
  br label %23

23:                                               ; preds = %20, %17
  %24 = and i32 %1, 12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 8, !tbaa !50
  %28 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %1) #22, !range !157
  br label %29

29:                                               ; preds = %26, %23
  %30 = load ptr, ptr %4, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %33(ptr noundef nonnull %30) #24
  br label %34

34:                                               ; preds = %29, %32, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @update_search_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = ptrtoint ptr %1 to i64
  %9 = trunc i64 %8 to i32
  %10 = and i32 %5, %9
  %11 = icmp ne i32 %10, 0
  %12 = or i1 %7, %11
  %13 = zext i1 %12 to i8
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_update_normals(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #5 !PGOFuncName !159 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %7, label %153 [
    i32 2, label %8
    i32 0, label %9
  ]

8:                                                ; preds = %4
  tail call void @pbvh_bmesh_normals_update(ptr noundef %1, i32 noundef %2) #24
  br label %153

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.15) #24
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %151

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %22 = icmp eq ptr %3, null
  %23 = zext nneg i32 %2 to i64
  br label %28

24:                                               ; preds = %107
  br i1 %16, label %25, label %151

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %27 = zext nneg i32 %2 to i64
  br label %110

28:                                               ; preds = %17, %107
  %29 = phi i64 [ 0, %17 ], [ %108, %107 ]
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %31, i64 0, i32 10
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %107, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %31, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !160
  %39 = getelementptr inbounds %struct.PBVHNode, ptr %31, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !161
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %36
  %43 = zext nneg i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %104
  %45 = phi i64 [ 0, %42 ], [ %105, %104 ]
  %46 = load ptr, ptr %18, align 8, !tbaa !58
  %47 = getelementptr inbounds i32, ptr %38, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !53
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.MFace, ptr %46, i64 %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %51 = getelementptr inbounds %struct.MFace, ptr %46, i64 %49, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !64
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i64 3, i64 4
  %55 = load ptr, ptr %19, align 8, !tbaa !59
  %56 = load i32, ptr %50, align 4, !tbaa !67
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MVert, ptr %55, i64 %57
  %59 = getelementptr inbounds %struct.MFace, ptr %46, i64 %49, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !162
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.MVert, ptr %55, i64 %61
  %63 = getelementptr inbounds %struct.MFace, ptr %46, i64 %49, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !163
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MVert, ptr %55, i64 %65
  br i1 %53, label %71, label %67

67:                                               ; preds = %44
  %68 = zext i32 %52 to i64
  %69 = getelementptr inbounds %struct.MVert, ptr %55, i64 %68
  %70 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef %58, ptr noundef %62, ptr noundef %66, ptr noundef nonnull %69) #24
  br label %73

71:                                               ; preds = %44
  %72 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %58, ptr noundef %62, ptr noundef %66) #24
  br label %73

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr %19, align 8, !tbaa !59
  br label %75

75:                                               ; preds = %73, %96
  %76 = phi i64 [ 0, %73 ], [ %97, %96 ]
  %77 = getelementptr inbounds i32, ptr %50, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !53
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.MVert, ptr %74, i64 %79, i32 2
  %81 = load i8, ptr %80, align 2, !tbaa !164
  %82 = icmp sgt i8 %81, -1
  br i1 %82, label %96, label %83

83:                                               ; preds = %75
  %84 = load float, ptr %5, align 4, !tbaa !34
  %85 = getelementptr inbounds [3 x float], ptr %15, i64 %79
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fadd float %84, %86
  store float %87, ptr %85, align 4, !tbaa !34
  %88 = load float, ptr %20, align 4, !tbaa !34
  %89 = getelementptr inbounds [3 x float], ptr %15, i64 %79, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = fadd float %88, %90
  store float %91, ptr %89, align 4, !tbaa !34
  %92 = load float, ptr %21, align 4, !tbaa !34
  %93 = getelementptr inbounds [3 x float], ptr %15, i64 %79, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = fadd float %92, %94
  store float %95, ptr %93, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %83, %75
  %97 = add nuw nsw i64 %76, 1
  %98 = icmp eq i64 %97, %54
  br i1 %98, label %99, label %75, !llvm.loop !166

99:                                               ; preds = %96
  br i1 %22, label %104, label %100

100:                                              ; preds = %99
  %101 = load i32, ptr %47, align 4, !tbaa !53
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x float], ptr %3, i64 %102
  call fastcc void @copy_v3_v3(ptr noundef nonnull %103, ptr noundef nonnull %5) #22
  br label %104

104:                                              ; preds = %100, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  %105 = add nuw nsw i64 %45, 1
  %106 = icmp eq i64 %105, %43
  br i1 %106, label %107, label %44, !llvm.loop !167

107:                                              ; preds = %104, %36, %28
  %108 = add nuw nsw i64 %29, 1
  %109 = icmp eq i64 %108, %23
  br i1 %109, label %24, label %28, !llvm.loop !168

110:                                              ; preds = %25, %148
  %111 = phi i64 [ 0, %25 ], [ %149, %148 ]
  %112 = getelementptr inbounds ptr, ptr %1, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !51
  %114 = getelementptr inbounds %struct.PBVHNode, ptr %113, i64 0, i32 10
  %115 = load i16, ptr %114, align 8
  %116 = and i16 %115, 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %148, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.PBVHNode, ptr %113, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  %121 = getelementptr inbounds %struct.PBVHNode, ptr %113, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !169
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = zext nneg i32 %122 to i64
  br label %126

126:                                              ; preds = %124, %140
  %127 = phi i64 [ 0, %124 ], [ %141, %140 ]
  %128 = getelementptr inbounds i32, ptr %120, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !53
  %130 = load ptr, ptr %26, align 8, !tbaa !59
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.MVert, ptr %130, i64 %131, i32 2
  %133 = load i8, ptr %132, align 2, !tbaa !164
  %134 = icmp sgt i8 %133, -1
  br i1 %134, label %140, label %135

135:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %136 = getelementptr inbounds [3 x float], ptr %15, i64 %131
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %136) #22
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #22
  %137 = getelementptr inbounds %struct.MVert, ptr %130, i64 %131, i32 1
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %137, ptr noundef nonnull %6) #22
  %138 = load i8, ptr %132, align 2, !tbaa !164
  %139 = and i8 %138, 127
  store i8 %139, ptr %132, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  br label %140

140:                                              ; preds = %135, %126
  %141 = add nuw nsw i64 %127, 1
  %142 = icmp eq i64 %141, %125
  br i1 %142, label %143, label %126, !llvm.loop !170

143:                                              ; preds = %140
  %144 = load i16, ptr %114, align 8
  br label %145

145:                                              ; preds = %143, %118
  %146 = phi i16 [ %144, %143 ], [ %115, %118 ]
  %147 = and i16 %146, -3
  store i16 %147, ptr %114, align 8
  br label %148

148:                                              ; preds = %145, %110
  %149 = add nuw nsw i64 %111, 1
  %150 = icmp eq i64 %149, %27
  br i1 %150, label %151, label %110, !llvm.loop !171

151:                                              ; preds = %148, %9, %24
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %152(ptr noundef %15) #24
  br label %153

153:                                              ; preds = %4, %151, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !172 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = and i32 %2, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = and i32 %6, 4
  %14 = and i16 %5, -5
  store i16 %14, ptr %4, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i16 [ %14, %12 ], [ %5, %9 ]
  %17 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %18 = and i32 %2, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = and i16 %16, 8
  %22 = zext nneg i16 %21 to i32
  %23 = or disjoint i32 %17, %22
  %24 = and i16 %16, -9
  store i16 %24, ptr %4, align 8
  br label %48

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !113
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.PBVHNode, ptr %27, i64 %30
  %32 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef %31, i32 noundef %2) #22, !range !157
  %33 = load ptr, ptr %26, align 8, !tbaa !50
  %34 = load i32, ptr %28, align 8, !tbaa !113
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.PBVHNode, ptr %33, i64 %35
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %36, i64 1
  %38 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %2) #22, !range !157
  %39 = or i32 %38, %32
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  tail call fastcc void @update_node_vb(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  br label %43

43:                                               ; preds = %42, %25
  %44 = icmp ult i32 %39, 8
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 2
  %47 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, i64 24, i1 false), !tbaa.struct !118
  br label %48

48:                                               ; preds = %45, %43, %15, %20
  %49 = phi i32 [ %23, %20 ], [ %17, %15 ], [ %39, %43 ], [ %39, %45 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_redraw_BB(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = alloca %struct.PBVHIter, align 8
  %5 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @BB_reset(ptr noundef nonnull %5) #22
  call fastcc void @pbvh_iter_begin(ptr noundef nonnull %4, ptr noundef %0, ptr noundef null, ptr noundef null) #22
  %6 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %4) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 10
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %5, ptr noundef nonnull %15) #22
  br label %16

16:                                               ; preds = %14, %8
  %17 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %4) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !173

19:                                               ; preds = %16, %3
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %4) #22
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #22
  %20 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %20) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !174 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_get_grid_updates(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 {
  %5 = alloca %struct.PBVHIter, align 8
  %6 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %7 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BKE_pbvh_get_grid_updates) #24
  call fastcc void @pbvh_iter_begin(ptr noundef nonnull %5, ptr noundef %0, ptr noundef null, ptr noundef null) #22
  %8 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %5) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  %12 = icmp eq i32 %1, 0
  br label %13

13:                                               ; preds = %10, %46
  %14 = phi ptr [ %8, %10 ], [ %47, %46 ]
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 10
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !161
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 4
  br label %25

25:                                               ; preds = %23, %37
  %26 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %27 = load ptr, ptr %11, align 8, !tbaa !79
  %28 = load ptr, ptr %24, align 8, !tbaa !160
  %29 = getelementptr inbounds i32, ptr %28, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %27, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef %33) #24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  call void @BLI_gset_insert(ptr noundef %7, ptr noundef %33) #24
  br label %37

37:                                               ; preds = %25, %36
  %38 = add nuw nsw i64 %26, 1
  %39 = load i32, ptr %20, align 8, !tbaa !161
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %25, label %42, !llvm.loop !175

42:                                               ; preds = %37, %19
  br i1 %12, label %46, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %15, align 8
  %45 = and i16 %44, -3
  store i16 %45, ptr %15, align 8
  br label %46

46:                                               ; preds = %42, %43, %13
  %47 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %5) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %13, !llvm.loop !176

49:                                               ; preds = %46, %4
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %5) #22
  %50 = call i32 @BLI_gset_size(ptr noundef %7) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, ptr %3, align 4, !tbaa !53
  store ptr null, ptr %2, align 8, !tbaa !51
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #24
  br label %69

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %55 = sext i32 %50 to i64
  %56 = shl nsw i64 %55, 3
  %57 = call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.4) #24
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %6, ptr noundef %7) #22
  %58 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #22, !range !148
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53, %60
  %61 = phi i32 [ %65, %60 ], [ 0, %53 ]
  %62 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %6) #22
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds ptr, ptr %57, i64 %63
  store ptr %62, ptr %64, align 8, !tbaa !51
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %6) #22
  %65 = add i32 %61, 1
  %66 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #22, !range !148
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %60, label %68, !llvm.loop !177

68:                                               ; preds = %60, %53
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #24
  store i32 %50, ptr %3, align 4, !tbaa !53
  store ptr %57, ptr %2, align 8, !tbaa !51
  br label %69

69:                                               ; preds = %68, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !178 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !179 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #22, !range !148
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !180 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #5 !PGOFuncName !181 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_pbvh_type(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !57
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pbvh_bounding_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %10) #22
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %11) #22
  br label %13

12:                                               ; preds = %3
  tail call fastcc void @zero_v3(ptr noundef %1) #22
  tail call fastcc void @zero_v3(ptr noundef %2) #22
  br label %13

13:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !182 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_grid_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_get_grid_key(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_get_bmesh(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_update(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 62
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_rebuild_draw(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 112
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_redraw(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 48
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_normals_update(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_fully_hidden_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -129
  %7 = select i1 %3, i16 0, i16 128
  %8 = or disjoint i16 %6, %7
  store i16 %8, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #10 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  store ptr %8, ptr %2, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %6, %4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %3, align 8, !tbaa !51
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_node_num_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #5 {
  %5 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %5, label %43 [
    i32 1, label %6
    i32 0, label %16
    i32 2, label %29
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !184
  %11 = mul i32 %10, %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 %11, ptr %3, align 4, !tbaa !53
  br label %14

14:                                               ; preds = %13, %6
  %15 = icmp eq ptr %2, null
  br i1 %15, label %43, label %41

16:                                               ; preds = %4
  %17 = icmp eq ptr %3, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !169
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !185
  %23 = add i32 %22, %20
  store i32 %23, ptr %3, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %18, %16
  %25 = icmp eq ptr %2, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !169
  br label %41

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = tail call i32 @BLI_gset_size(ptr noundef %31) #24
  %33 = icmp eq ptr %3, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = tail call i32 @BLI_gset_size(ptr noundef %36) #24
  %38 = add nsw i32 %37, %32
  store i32 %38, ptr %3, align 4, !tbaa !53
  br label %39

39:                                               ; preds = %34, %29
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39, %14, %26
  %42 = phi i32 [ %28, %26 ], [ %11, %14 ], [ %32, %39 ]
  store i32 %42, ptr %2, align 4, !tbaa !53
  br label %43

43:                                               ; preds = %41, %39, %24, %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_grids(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #10 {
  %9 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %9, label %59 [
    i32 1, label %10
    i32 0, label %40
    i32 2, label %40
  ]

10:                                               ; preds = %8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  store ptr %14, ptr %2, align 8, !tbaa !51
  br label %15

15:                                               ; preds = %12, %10
  %16 = icmp eq ptr %3, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !161
  store i32 %19, ptr %3, align 4, !tbaa !53
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq ptr %4, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !81
  store i32 %24, ptr %4, align 4, !tbaa !53
  br label %25

25:                                               ; preds = %22, %20
  %26 = icmp eq ptr %5, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !186
  store i32 %29, ptr %5, align 4, !tbaa !53
  br label %30

30:                                               ; preds = %27, %25
  %31 = icmp eq ptr %6, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  store ptr %34, ptr %6, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %32, %30
  %36 = icmp eq ptr %7, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  br label %57

40:                                               ; preds = %8, %8
  %41 = icmp eq ptr %2, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store ptr null, ptr %2, align 8, !tbaa !51
  br label %43

43:                                               ; preds = %42, %40
  %44 = icmp eq ptr %3, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  store i32 0, ptr %3, align 4, !tbaa !53
  br label %46

46:                                               ; preds = %45, %43
  %47 = icmp eq ptr %4, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  store i32 0, ptr %4, align 4, !tbaa !53
  br label %49

49:                                               ; preds = %48, %46
  %50 = icmp eq ptr %5, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 0, ptr %5, align 4, !tbaa !53
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp eq ptr %6, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  store ptr null, ptr %6, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %54, %52
  %56 = icmp eq ptr %7, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55, %37
  %58 = phi ptr [ %39, %37 ], [ null, %55 ]
  store ptr %58, ptr %7, align 8, !tbaa !51
  br label %59

59:                                               ; preds = %57, %55, %35, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %4) #22
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_original_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %4) #22
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_proxies(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = icmp sgt i32 %5, 0
  %7 = icmp eq ptr %1, null
  br i1 %6, label %8, label %14

8:                                                ; preds = %3
  br i1 %7, label %12, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  store ptr %11, ptr %1, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %9, %8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %20, label %18

14:                                               ; preds = %3
  br i1 %7, label %16, label %15

15:                                               ; preds = %14
  store ptr null, ptr %1, align 8, !tbaa !51
  br label %16

16:                                               ; preds = %15, %14
  %17 = icmp eq ptr %2, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %5, %12 ], [ 0, %16 ]
  store i32 %19, ptr %2, align 4, !tbaa !53
  br label %20

20:                                               ; preds = %18, %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_raycast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = alloca %struct.RaycastData, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #23
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4) #24
  %8 = getelementptr inbounds %struct.RaycastData, ptr %7, i64 0, i32 1
  store i8 %5, ptr %8, align 4, !tbaa !189
  call fastcc void @BKE_pbvh_search_callback_occluded(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #23
  ret void
}

; Function Attrs: optsize
declare void @isect_ray_aabb_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BKE_pbvh_search_callback_occluded(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !192 {
  %5 = alloca %struct.PBVHIter, align 8
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %5) #23
  call fastcc void @pbvh_iter_begin(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull @ray_aabb_intersect, ptr noundef %1) #22
  %7 = call fastcc ptr @pbvh_iter_next_occluded(ptr noundef nonnull %5) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %5) #22
  br label %29

10:                                               ; preds = %4, %22
  %11 = phi ptr [ %24, %22 ], [ %7, %4 ]
  %12 = phi ptr [ %23, %22 ], [ null, %4 ]
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %11, i64 0, i32 10
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #25
  store ptr %11, ptr %18, align 8, !tbaa !193
  %19 = getelementptr inbounds %struct.node_tree, ptr %18, i64 0, i32 1
  %20 = icmp eq ptr %12, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call fastcc void @node_tree_insert(ptr noundef nonnull %12, ptr noundef nonnull %18) #22
  br label %22

22:                                               ; preds = %21, %17, %10
  %23 = phi ptr [ %12, %10 ], [ %12, %21 ], [ %18, %17 ]
  %24 = call fastcc ptr @pbvh_iter_next_occluded(ptr noundef nonnull %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !195

26:                                               ; preds = %22
  call fastcc void @pbvh_iter_end(ptr noundef nonnull %5) #22
  %27 = icmp eq ptr %23, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  store float 0x47EFFFFFE0000000, ptr %6, align 4, !tbaa !34
  call fastcc void @traverse_tree(ptr noundef nonnull %23, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #22
  call fastcc void @free_tree(ptr noundef nonnull %23) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %29

29:                                               ; preds = %9, %28, %26
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ray_aabb_intersect(ptr noundef %0, ptr noundef %1) #5 !PGOFuncName !196 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.RaycastData, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4, !tbaa !189
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @BKE_pbvh_node_get_original_BB(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  br label %10

9:                                                ; preds = %2
  call void @BKE_pbvh_node_get_BB(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  br label %10

10:                                               ; preds = %9, %8
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 11
  %12 = call zeroext i8 @isect_ray_aabb(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ray_face_intersection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) local_unnamed_addr #5 {
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %9 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #24
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load float, ptr %8, align 4, !tbaa !34
  %13 = load float, ptr %6, align 4, !tbaa !34
  %14 = fcmp olt float %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %7
  %16 = icmp eq ptr %5, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load float, ptr %8, align 4, !tbaa !34
  %22 = load float, ptr %6, align 4, !tbaa !34
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %11
  %25 = phi float [ %21, %20 ], [ %12, %11 ]
  store float %25, ptr %6, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %15, %17, %20, %24
  %27 = phi i8 [ 1, %24 ], [ 0, %20 ], [ 0, %17 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  ret i8 %27
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_pbvh_node_raycast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #5 {
  %8 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ]

14:                                               ; preds = %12
  %15 = tail call fastcc zeroext i8 @pbvh_faces_node_raycast(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #22, !range !148
  br label %21

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @pbvh_grids_node_raycast(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #22, !range !148
  br label %21

18:                                               ; preds = %12
  %19 = trunc i32 %3 to i8
  %20 = tail call zeroext i8 @pbvh_bmesh_node_raycast(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %19) #24
  br label %21

21:                                               ; preds = %14, %16, %18, %12, %7
  %22 = phi i8 [ 0, %7 ], [ 0, %12 ], [ %20, %18 ], [ %17, %16 ], [ %15, %14 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pbvh_faces_node_raycast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #5 !PGOFuncName !197 {
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !161
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 9
  %17 = icmp eq ptr %2, null
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %14, %74
  %20 = phi i64 [ 0, %14 ], [ %76, %74 ]
  %21 = phi i8 [ 0, %14 ], [ %75, %74 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !58
  %23 = getelementptr inbounds i32, ptr %10, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MFace, ptr %22, i64 %25
  %27 = load ptr, ptr %16, align 8, !tbaa !92
  %28 = getelementptr inbounds [4 x i32], ptr %27, i64 %20
  %29 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %26, ptr noundef %8) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.MFace, ptr %22, i64 %25, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !64
  %34 = icmp eq i32 %33, 0
  br i1 %17, label %55, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %28, align 4, !tbaa !53
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x float], ptr %2, i64 %37
  %39 = getelementptr inbounds i32, ptr %28, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x float], ptr %2, i64 %41
  %43 = getelementptr inbounds i32, ptr %28, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !53
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x float], ptr %2, i64 %45
  br i1 %34, label %52, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds i32, ptr %28, i64 3
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %2, i64 %50
  br label %52

52:                                               ; preds = %35, %47
  %53 = phi ptr [ %51, %47 ], [ null, %35 ]
  %54 = tail call zeroext i8 @ray_face_intersection(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %38, ptr noundef nonnull %42, ptr noundef nonnull %46, ptr noundef %53, ptr noundef %5) #22, !range !148
  br label %71

55:                                               ; preds = %31
  %56 = load i32, ptr %26, align 4, !tbaa !67
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MVert, ptr %8, i64 %57
  %59 = getelementptr inbounds %struct.MFace, ptr %22, i64 %25, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !162
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.MVert, ptr %8, i64 %61
  %63 = getelementptr inbounds %struct.MFace, ptr %22, i64 %25, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !163
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MVert, ptr %8, i64 %65
  %67 = zext i32 %33 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %8, i64 %67
  %69 = select i1 %34, ptr null, ptr %68
  %70 = tail call zeroext i8 @ray_face_intersection(ptr noundef %3, ptr noundef %4, ptr noundef %58, ptr noundef %62, ptr noundef %66, ptr noundef %69, ptr noundef %5) #22, !range !148
  br label %71

71:                                               ; preds = %55, %52
  %72 = phi i8 [ %54, %52 ], [ %70, %55 ]
  %73 = or i8 %72, %21
  br label %74

74:                                               ; preds = %19, %71
  %75 = phi i8 [ %73, %71 ], [ %21, %19 ]
  %76 = add nuw nsw i64 %20, 1
  %77 = icmp eq i64 %76, %18
  br i1 %77, label %78, label %19, !llvm.loop !198

78:                                               ; preds = %74, %6
  %79 = phi i8 [ 0, %6 ], [ %75, %74 ]
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pbvh_grids_node_raycast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #5 !PGOFuncName !199 {
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !186
  %12 = icmp sgt i32 %8, 0
  br i1 %12, label %13, label %100

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %17 = add i32 %11, -1
  %18 = icmp sgt i32 %11, 1
  %19 = mul nsw i32 %11, %11
  %20 = zext nneg i32 %19 to i64
  %21 = zext nneg i32 %8 to i64
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %13, %95
  %24 = phi i64 [ 0, %13 ], [ %98, %95 ]
  %25 = phi ptr [ %2, %13 ], [ %97, %95 ]
  %26 = phi i8 [ 0, %13 ], [ %96, %95 ]
  %27 = load ptr, ptr %14, align 8, !tbaa !77
  %28 = load ptr, ptr %15, align 8, !tbaa !160
  %29 = getelementptr inbounds i32, ptr %28, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %27, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %95, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %16, align 8, !tbaa !83
  %37 = getelementptr inbounds ptr, ptr %36, i64 %31
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  br i1 %18, label %39, label %90

39:                                               ; preds = %35
  %40 = icmp eq ptr %38, null
  %41 = icmp eq ptr %25, null
  br label %42

42:                                               ; preds = %39, %88
  %43 = phi i64 [ 0, %39 ], [ %45, %88 ]
  %44 = phi i8 [ %26, %39 ], [ %85, %88 ]
  %45 = add nuw nsw i64 %43, 1
  %46 = trunc i64 %43 to i32
  %47 = mul i32 %11, %46
  %48 = zext i32 %47 to i64
  %49 = trunc i64 %45 to i32
  %50 = mul i32 %11, %49
  %51 = zext i32 %50 to i64
  %52 = trunc i64 %43 to i32
  %53 = trunc i64 %43 to i32
  %54 = trunc i64 %45 to i32
  br label %55

55:                                               ; preds = %42, %84
  %56 = phi i64 [ 0, %42 ], [ %86, %84 ]
  %57 = phi i8 [ %44, %42 ], [ %85, %84 ]
  br i1 %40, label %62, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %56 to i32
  %60 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %38, i32 noundef %11, i32 noundef %59, i32 noundef %52) #24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58, %55
  br i1 %41, label %74, label %63

63:                                               ; preds = %62
  %64 = add nuw nsw i64 %56, %48
  %65 = getelementptr inbounds [3 x float], ptr %25, i64 %64
  %66 = add nuw nsw i64 %64, 1
  %67 = getelementptr inbounds [3 x float], ptr %25, i64 %66
  %68 = add nuw nsw i64 %56, %51
  %69 = add nuw nsw i64 %68, 1
  %70 = getelementptr inbounds [3 x float], ptr %25, i64 %69
  %71 = getelementptr inbounds [3 x float], ptr %25, i64 %68
  %72 = tail call zeroext i8 @ray_face_intersection(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %67, ptr noundef nonnull %70, ptr noundef nonnull %71, ptr noundef %5) #22, !range !148
  %73 = or i8 %72, %57
  br label %84

74:                                               ; preds = %62
  %75 = trunc i64 %56 to i32
  %76 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %9, ptr noundef nonnull %33, i32 noundef %75, i32 noundef %53) #22
  %77 = trunc i64 %56 to i32
  %78 = add i32 %77, 1
  %79 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %9, ptr noundef nonnull %33, i32 noundef %78, i32 noundef %53) #22
  %80 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %9, ptr noundef nonnull %33, i32 noundef %78, i32 noundef %54) #22
  %81 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %9, ptr noundef nonnull %33, i32 noundef %75, i32 noundef %54) #22
  %82 = tail call zeroext i8 @ray_face_intersection(ptr noundef %3, ptr noundef %4, ptr noundef %76, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %5) #22, !range !148
  %83 = or i8 %82, %57
  br label %84

84:                                               ; preds = %63, %74, %58
  %85 = phi i8 [ %57, %58 ], [ %73, %63 ], [ %83, %74 ]
  %86 = add nuw nsw i64 %56, 1
  %87 = icmp eq i64 %86, %22
  br i1 %87, label %88, label %55, !llvm.loop !200

88:                                               ; preds = %84
  %89 = icmp eq i64 %45, %22
  br i1 %89, label %90, label %42, !llvm.loop !201

90:                                               ; preds = %88, %35
  %91 = phi i8 [ %26, %35 ], [ %85, %88 ]
  %92 = icmp eq ptr %25, null
  %93 = getelementptr inbounds [3 x float], ptr %25, i64 %20
  %94 = select i1 %92, ptr null, ptr %93
  br label %95

95:                                               ; preds = %23, %90
  %96 = phi i8 [ %91, %90 ], [ %26, %23 ]
  %97 = phi ptr [ %94, %90 ], [ %25, %23 ]
  %98 = add nuw nsw i64 %24, 1
  %99 = icmp eq i64 %98, %21
  br i1 %99, label %100, label %23, !llvm.loop !202

100:                                              ; preds = %95, %6
  %101 = phi i8 [ 0, %6 ], [ %96, %95 ]
  ret i8 %101
}

; Function Attrs: optsize
declare zeroext i8 @pbvh_bmesh_node_raycast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_raycast_project_ray_root(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.IsectRayAABBData, align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  %18 = icmp eq i8 %1, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  call void @BKE_pbvh_node_get_original_BB(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  br label %21

20:                                               ; preds = %17
  call void @BKE_pbvh_node_get_BB(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  br label %21

21:                                               ; preds = %20, %19
  call void @mid_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull @__const.BKE_pbvh_raycast_project_ray_root.offset_vec) #22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0x3FF00418A0000000) #22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0xBFF00418A0000000) #22
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %12, ptr noundef %2, ptr noundef %4) #24
  %22 = call zeroext i8 @isect_ray_aabb(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %13, ptr noundef %4, float noundef -1.000000e+00) #22
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %12, ptr noundef %3, ptr noundef nonnull %13) #24
  %25 = call zeroext i8 @isect_ray_aabb(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load float, ptr %6, align 4, !tbaa !34
  call fastcc void @madd_v3_v3v3fl(ptr noundef %2, ptr noundef %2, ptr noundef %4, float noundef %28) #22
  %29 = load float, ptr %7, align 4, !tbaa !34
  call fastcc void @madd_v3_v3v3fl(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %13, float noundef %29) #22
  br label %30

30:                                               ; preds = %24, %21, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !203 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !204 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #10 !PGOFuncName !205 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_aabb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !206 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_node_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !88
  %9 = load ptr, ptr %1, align 8, !tbaa !207
  %10 = getelementptr inbounds %struct.PBVHNodeDrawData, ptr %1, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !209
  tail call void @GPU_draw_pbvh_buffers(ptr noundef %8, ptr noundef %9, i8 noundef zeroext %11) #24
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @GPU_draw_pbvh_buffers(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @BKE_pbvh_node_get_BB(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %5 = call fastcc i32 @test_planes_aabb(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #22, !range !210
  %6 = icmp ne i32 %5, 1
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @test_planes_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #14 !PGOFuncName !211 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  br label %6

6:                                                ; preds = %3, %31
  %7 = phi i64 [ 0, %3 ], [ %36, %31 ]
  %8 = phi i32 [ 0, %3 ], [ %35, %31 ]
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %22, %9 ]
  %11 = getelementptr inbounds [4 x float], ptr %2, i64 %7, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp ogt float %12, 0.000000e+00
  %14 = select i1 %13, ptr %0, ptr %1
  %15 = select i1 %13, ptr %1, ptr %0
  %16 = getelementptr inbounds float, ptr %15, i64 %10
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 %10
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %10
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %10
  store float %17, ptr %21, align 4
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %9, !llvm.loop !212

24:                                               ; preds = %9
  %25 = getelementptr inbounds [4 x float], ptr %2, i64 %7
  %26 = call fastcc float @dot_v3v3(ptr noundef %25, ptr noundef nonnull %4) #22
  %27 = getelementptr inbounds [4 x float], ptr %2, i64 %7, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fadd float %26, %28
  %30 = fcmp ogt float %29, 0.000000e+00
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = call fastcc float @dot_v3v3(ptr noundef nonnull %25, ptr noundef nonnull %5) #22
  %33 = fadd float %28, %32
  %34 = fcmp ult float %33, 0.000000e+00
  %35 = select i1 %34, i32 %8, i32 2
  %36 = add nuw nsw i64 %7, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %6, !llvm.loop !213

38:                                               ; preds = %31, %24
  %39 = phi i32 [ 1, %24 ], [ %35, %31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_pbvh_node_planes_exclude_AABB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @BKE_pbvh_node_get_BB(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %5 = call fastcc i32 @test_planes_aabb(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #22, !range !210
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = alloca %struct.PBVHNodeDrawData, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  store ptr %3, ptr %6, align 8, !tbaa !207
  %9 = getelementptr inbounds %struct.PBVHNodeDrawData, ptr %6, i64 0, i32 1
  store i8 %4, ptr %9, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 %16
  tail call fastcc void @pbvh_node_check_diffuse_changed(ptr noundef nonnull %0, ptr noundef %18) #22
  %19 = add nuw nsw i64 %16, 1
  %20 = load i32, ptr %10, align 4, !tbaa !52
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %15, label %23, !llvm.loop !214

23:                                               ; preds = %15, %5
  call void @BKE_pbvh_search_gather(ptr noundef nonnull %0, ptr noundef nonnull @update_search_cb, ptr noundef nonnull inttoptr (i64 18 to ptr), ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %24 = load ptr, ptr %7, align 8, !tbaa !51
  %25 = load i32, ptr %8, align 4, !tbaa !53
  tail call fastcc void @pbvh_update_normals(ptr noundef nonnull %0, ptr noundef %24, i32 noundef %25, ptr noundef %2) #22
  tail call fastcc void @pbvh_update_draw_buffers(ptr noundef nonnull %0, ptr noundef %24, i32 noundef %25) #22
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %28(ptr noundef nonnull %24) #24
  br label %29

29:                                               ; preds = %27, %23
  %30 = icmp eq ptr %1, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @BKE_pbvh_search_callback(ptr noundef nonnull %0, ptr noundef nonnull @BKE_pbvh_node_planes_contain_AABB, ptr noundef nonnull %1, ptr noundef nonnull @BKE_pbvh_node_draw, ptr noundef nonnull %6) #22
  br label %33

32:                                               ; preds = %29
  call void @BKE_pbvh_search_callback(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @BKE_pbvh_node_draw, ptr noundef nonnull %6) #22
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !215
  %35 = icmp eq i16 %34, 14
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call fastcc void @pbvh_draw_BB(ptr noundef nonnull %0) #22
  br label %37

37:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_node_check_diffuse_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !218 {
  %3 = load ptr, ptr %1, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  %9 = load i8, ptr %8, align 1, !tbaa !219
  %10 = tail call zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext %9) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %14 = load i16, ptr %13, align 8
  %15 = or i16 %14, 16
  store i16 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %2, %12, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_update_draw_buffers(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !220 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %102

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  %13 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  %17 = zext nneg i32 %2 to i64
  br label %18

18:                                               ; preds = %5, %99
  %19 = phi i64 [ 0, %5 ], [ %100, %99 ]
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 10
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 64
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %21, align 8, !tbaa !88
  tail call void @GPU_free_pbvh_buffers(ptr noundef %27) #24
  %28 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %28, label %53 [
    i32 1, label %29
    i32 0, label %37
    i32 2, label %47
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !160
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !161
  %34 = load ptr, ptr %9, align 8, !tbaa !83
  %35 = load i32, ptr %10, align 8, !tbaa !186
  %36 = tail call ptr @GPU_build_grid_pbvh_buffers(ptr noundef %31, i32 noundef %33, ptr noundef %34, i32 noundef %35) #24
  br label %51

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = load ptr, ptr %7, align 8, !tbaa !58
  %41 = load ptr, ptr %8, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !161
  %46 = tail call ptr @GPU_build_mesh_pbvh_buffers(ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %43, i32 noundef %45) #24
  br label %51

47:                                               ; preds = %26
  %48 = load i32, ptr %6, align 4, !tbaa !221
  %49 = and i32 %48, 1
  %50 = tail call ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef %49) #24
  br label %51

51:                                               ; preds = %29, %37, %47
  %52 = phi ptr [ %50, %47 ], [ %46, %37 ], [ %36, %29 ]
  store ptr %52, ptr %21, align 8, !tbaa !88
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i16, ptr %22, align 8
  %55 = and i16 %54, -65
  store i16 %55, ptr %22, align 8
  br label %56

56:                                               ; preds = %53, %18
  %57 = phi i16 [ %55, %53 ], [ %23, %18 ]
  %58 = and i16 %57, 16
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %61, label %96 [
    i32 1, label %62
    i32 0, label %71
    i32 2, label %86
  ]

62:                                               ; preds = %60
  %63 = load ptr, ptr %21, align 8, !tbaa !88
  %64 = load ptr, ptr %14, align 8, !tbaa !77
  %65 = load ptr, ptr %15, align 8, !tbaa !80
  %66 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  %68 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !161
  %70 = load i8, ptr %12, align 1, !tbaa !219
  tail call void @GPU_update_grid_pbvh_buffers(ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %67, i32 noundef %69, ptr noundef nonnull %16, i8 noundef zeroext %70) #24
  br label %96

71:                                               ; preds = %60
  %72 = load ptr, ptr %21, align 8, !tbaa !88
  %73 = load ptr, ptr %8, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !91
  %76 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !169
  %78 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 8
  %79 = load i32, ptr %78, align 4, !tbaa !185
  %80 = add i32 %79, %77
  %81 = load ptr, ptr %13, align 8, !tbaa !63
  %82 = tail call ptr @CustomData_get_layer(ptr noundef %81, i32 noundef 34) #24
  %83 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 9
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  %85 = load i8, ptr %12, align 1, !tbaa !219
  tail call void @GPU_update_mesh_pbvh_buffers(ptr noundef %72, ptr noundef %73, ptr noundef %75, i32 noundef %80, ptr noundef %82, ptr noundef %84, i8 noundef zeroext %85) #24
  br label %96

86:                                               ; preds = %60
  %87 = load ptr, ptr %21, align 8, !tbaa !88
  %88 = load ptr, ptr %11, align 8, !tbaa !183
  %89 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 15
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 16
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  %95 = load i8, ptr %12, align 1, !tbaa !219
  tail call void @GPU_update_bmesh_pbvh_buffers(ptr noundef %87, ptr noundef %88, ptr noundef %90, ptr noundef %92, ptr noundef %94, i8 noundef zeroext %95) #24
  br label %96

96:                                               ; preds = %60, %86, %71, %62
  %97 = load i16, ptr %22, align 8
  %98 = and i16 %97, -17
  store i16 %98, ptr %22, align 8
  br label %99

99:                                               ; preds = %56, %96
  %100 = add nuw nsw i64 %19, 1
  %101 = icmp eq i64 %100, %17
  br i1 %101, label %102, label %18, !llvm.loop !222

102:                                              ; preds = %99, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_draw_BB(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !223 {
  tail call void @GPU_init_draw_pbvh_BB() #24
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 1
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 1, i32 1
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 10
  %13 = load i16, ptr %12, align 8
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 1
  tail call void @GPU_draw_pbvh_BB(ptr noundef nonnull %10, ptr noundef nonnull %11, i8 noundef zeroext %15) #24
  %16 = add nuw nsw i64 %8, 1
  %17 = load i32, ptr %2, align 4, !tbaa !52
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %7, label %20, !llvm.loop !224

20:                                               ; preds = %7, %1
  tail call void @GPU_end_draw_pbvh_BB() #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pbvh_grids_update(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 {
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  store ptr %1, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  store ptr %2, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  store ptr %3, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %32, label %17

17:                                               ; preds = %13, %6
  store ptr %4, ptr %10, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  store ptr %5, ptr %18, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %28, %24 ]
  %26 = load ptr, ptr %23, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %26, i64 %25
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %27) #22
  %28 = add nuw nsw i64 %25, 1
  %29 = load i32, ptr %19, align 4, !tbaa !52
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %24, label %32, !llvm.loop !225

32:                                               ; preds = %24, %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pbvh_node_layer_disp_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !53
  call void @BKE_pbvh_node_num_verts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef null) #22
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %9 = load i32, ptr %3, align 4, !tbaa !53
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = call ptr %8(i64 noundef %11, ptr noundef nonnull @.str.5) #24
  store ptr %12, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ %12, %7 ], [ %5, %2 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_pbvh_get_vertCos(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = mul nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %6(i64 noundef %11, ptr noundef nonnull @.str.6) #24
  %13 = load i32, ptr %7, align 4, !tbaa !61
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %20, %15 ], [ %3, %5 ]
  %17 = phi ptr [ %21, %15 ], [ %12, %5 ]
  %18 = phi i32 [ %19, %15 ], [ 0, %5 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %17, ptr noundef nonnull %16) #22
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.MVert, ptr %16, i64 1
  %21 = getelementptr inbounds float, ptr %17, i64 3
  %22 = load i32, ptr %7, align 4, !tbaa !61
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %15, label %24, !llvm.loop !226

24:                                               ; preds = %15, %5, %1
  %25 = phi ptr [ null, %1 ], [ %12, %5 ], [ %12, %15 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_apply_vertCos(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %4 = load i8, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %12 = tail call ptr %11(ptr noundef nonnull %8) #24
  store ptr %12, ptr %7, align 8, !tbaa !59
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = tail call ptr %13(ptr noundef %15) #24
  store ptr %16, ptr %14, align 8, !tbaa !58
  store i8 1, ptr %3, align 8, !tbaa !97
  br label %17

17:                                               ; preds = %6, %10, %2
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !61
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %32, %25 ], [ 0, %21 ]
  %27 = phi ptr [ %33, %25 ], [ %19, %21 ]
  %28 = getelementptr inbounds [3 x float], ptr %1, i64 %26
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef %28) #22
  %29 = getelementptr inbounds %struct.MVert, ptr %27, i64 0, i32 2
  %30 = load i8, ptr %29, align 2, !tbaa !164
  %31 = or i8 %30, -128
  store i8 %31, ptr %29, align 2, !tbaa !164
  %32 = add nuw nsw i64 %26, 1
  %33 = getelementptr inbounds %struct.MVert, ptr %27, i64 1
  %34 = load i32, ptr %22, align 4, !tbaa !61
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %25, label %37, !llvm.loop !227

37:                                               ; preds = %25
  %38 = load ptr, ptr %18, align 8, !tbaa !59
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi ptr [ %19, %21 ], [ %38, %37 ]
  %41 = phi i32 [ %23, %21 ], [ %34, %37 ]
  %42 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !71
  tail call void @BKE_mesh_calc_normals_tessface(ptr noundef %40, i32 noundef %41, ptr noundef %43, i32 noundef %45, ptr noundef null) #24
  %46 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !52
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %55, %51 ]
  %53 = load ptr, ptr %50, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.PBVHNode, ptr %53, i64 %52
  tail call void @BKE_pbvh_node_mark_update(ptr noundef %54) #22
  %55 = add nuw nsw i64 %52, 1
  %56 = load i32, ptr %46, align 4, !tbaa !52
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %51, label %59, !llvm.loop !228

59:                                               ; preds = %51, %39
  tail call void @BKE_pbvh_update(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #22
  tail call void @BKE_pbvh_update(ptr noundef nonnull %0, i32 noundef 8, ptr noundef null) #22
  br label %60

60:                                               ; preds = %59, %17
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_pbvh_isDeformed(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 8, !tbaa !97
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_pbvh_node_add_proxy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !187
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !51
  %12 = sext i32 %6 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %11(ptr noundef nonnull %8, i64 noundef %13, ptr noundef nonnull @__func__.BKE_pbvh_node_add_proxy) #24
  br label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.7) #24
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %14, %10 ]
  store ptr %19, ptr %7, align 8, !tbaa !188
  call void @BKE_pbvh_node_num_verts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef null) #22
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %21 = load i32, ptr %3, align 4, !tbaa !53
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %22, 12
  %24 = call ptr %20(i64 noundef %23, ptr noundef nonnull @.str.8) #24
  %25 = load ptr, ptr %7, align 8, !tbaa !188
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds %struct.PBVHProxyNode, ptr %25, i64 %26
  store ptr %24, ptr %27, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_node_free_proxies(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = icmp sgt i32 %3, 0
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  br i1 %4, label %7, label %19

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %13, %7 ], [ %6, %1 ]
  %9 = phi i64 [ %15, %7 ], [ 0, %1 ]
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.PBVHProxyNode, ptr %8, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  tail call void %10(ptr noundef %12) #24
  %13 = load ptr, ptr %5, align 8, !tbaa !188
  %14 = getelementptr inbounds %struct.PBVHProxyNode, ptr %13, i64 %9
  store ptr null, ptr %14, align 8, !tbaa !229
  %15 = add nuw nsw i64 %9, 1
  %16 = load i32, ptr %2, align 8, !tbaa !187
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %7, label %19, !llvm.loop !231

19:                                               ; preds = %7, %1
  %20 = phi ptr [ %6, %1 ], [ %13, %7 ]
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  tail call void %21(ptr noundef %20) #24
  store ptr null, ptr %22, align 8, !tbaa !188
  store i32 0, ptr %2, align 8, !tbaa !187
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_gather_proxies(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %39
  %10 = phi i32 [ %5, %7 ], [ %40, %39 ]
  %11 = phi i32 [ %5, %7 ], [ %41, %39 ]
  %12 = phi i64 [ 0, %7 ], [ %45, %39 ]
  %13 = phi i32 [ 0, %7 ], [ %44, %39 ]
  %14 = phi i32 [ 0, %7 ], [ %43, %39 ]
  %15 = phi ptr [ null, %7 ], [ %42, %39 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 %12
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 %12, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !187
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %9
  %22 = icmp eq i32 %14, %13
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = icmp eq i32 %13, 0
  %25 = shl nsw i32 %13, 1
  %26 = select i1 %24, i32 32, i32 %25
  %27 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !51
  %28 = sext i32 %26 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr %27(ptr noundef %15, i64 noundef %29, ptr noundef nonnull @__func__.BKE_pbvh_gather_proxies) #24
  %31 = load i32, ptr %4, align 4, !tbaa !52
  br label %32

32:                                               ; preds = %23, %21
  %33 = phi i32 [ %31, %23 ], [ %10, %21 ]
  %34 = phi ptr [ %30, %23 ], [ %15, %21 ]
  %35 = phi i32 [ %26, %23 ], [ %13, %21 ]
  %36 = sext i32 %14 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %17, ptr %37, align 8, !tbaa !51
  %38 = add nsw i32 %14, 1
  br label %39

39:                                               ; preds = %9, %32
  %40 = phi i32 [ %33, %32 ], [ %10, %9 ]
  %41 = phi i32 [ %33, %32 ], [ %11, %9 ]
  %42 = phi ptr [ %34, %32 ], [ %15, %9 ]
  %43 = phi i32 [ %38, %32 ], [ %14, %9 ]
  %44 = phi i32 [ %35, %32 ], [ %13, %9 ]
  %45 = add nuw nsw i64 %12, 1
  %46 = sext i32 %41 to i64
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %9, label %48, !llvm.loop !232

48:                                               ; preds = %39
  %49 = icmp eq i32 %43, 0
  %50 = icmp ne ptr %42, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %53(ptr noundef nonnull %42) #24
  br label %54

54:                                               ; preds = %3, %52, %48
  %55 = phi i32 [ 0, %52 ], [ %43, %48 ], [ 0, %3 ]
  %56 = phi ptr [ null, %52 ], [ %42, %48 ], [ null, %3 ]
  store ptr %56, ptr %1, align 8, !tbaa !51
  store i32 %55, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pbvh_vertex_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  %13 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !135
  %14 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 25
  %15 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 22
  store ptr null, ptr %15, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @BKE_pbvh_node_get_grids(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef null) #22
  call void @BKE_pbvh_node_num_verts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #22
  call void @BKE_pbvh_node_get_verts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %6) #22
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 8
  store ptr %16, ptr %17, align 8, !tbaa !137
  %18 = load ptr, ptr %5, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !128
  %20 = load ptr, ptr %7, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 11
  store ptr %20, ptr %21, align 8, !tbaa !134
  %22 = icmp eq ptr %18, null
  %23 = load i32, ptr %9, align 4
  %24 = select i1 %22, i32 1, i32 %23
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 12
  store i32 %24, ptr %25, align 8, !tbaa !127
  %26 = load i32, ptr %10, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 13
  store i32 %26, ptr %27, align 4, !tbaa !133
  %28 = icmp eq i32 %3, 0
  %29 = load i32, ptr %12, align 4
  %30 = load i32, ptr %11, align 4
  %31 = select i1 %28, i32 %29, i32 %30
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 15
  store i32 %31, ptr %32, align 8
  %33 = load ptr, ptr %8, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 16
  store ptr %33, ptr %34, align 8, !tbaa !144
  %35 = load ptr, ptr %6, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 14
  store ptr %35, ptr %36, align 8, !tbaa !143
  %37 = load i32, ptr %0, align 8, !tbaa !57
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %53

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 18
  %41 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !94
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %40, ptr noundef %42) #22
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 19
  %44 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %43, ptr noundef %45) #22
  %46 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %47 = load ptr, ptr %46, align 8, !tbaa !183
  %48 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 24
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 20
  store ptr %48, ptr %49, align 8, !tbaa !233
  %50 = call i32 @CustomData_get_offset(ptr noundef nonnull %48, i32 noundef 34) #24
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 21
  store i32 %50, ptr %51, align 8, !tbaa !153
  %52 = load ptr, ptr %19, align 8, !tbaa !128
  br label %53

53:                                               ; preds = %39, %4
  %54 = phi ptr [ %52, %39 ], [ %18, %4 ]
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 10
  store ptr null, ptr %55, align 8, !tbaa !142
  %56 = icmp ne ptr %54, null
  %57 = icmp eq i32 %3, 1
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 9
  store ptr %61, ptr %62, align 8, !tbaa !234
  br label %63

63:                                               ; preds = %59, %53
  %64 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 27
  store ptr null, ptr %64, align 8, !tbaa !141
  %65 = load i32, ptr %0, align 8, !tbaa !57
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %69 = load ptr, ptr %68, align 8, !tbaa !63
  %70 = call ptr @CustomData_get_layer(ptr noundef %69, i32 noundef 34) #24
  %71 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 17
  store ptr %70, ptr %71, align 8, !tbaa !147
  br label %72

72:                                               ; preds = %67, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pbvh_show_diffuse_color_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %3, label %23 [
    i32 1, label %4
    i32 0, label %8
    i32 2, label %15
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !235
  %7 = icmp ne i32 %6, 0
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %10, i32 noundef 34) #24
  %14 = icmp ne ptr %13, null
  br label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !183
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 24
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 34) #24
  %22 = icmp ne i32 %21, -1
  br label %23

23:                                               ; preds = %15, %19, %8, %12, %2, %4
  %24 = phi i1 [ false, %2 ], [ %7, %4 ], [ false, %8 ], [ %14, %12 ], [ false, %15 ], [ %22, %19 ]
  %25 = xor i1 %24, true
  %26 = icmp ne i8 %1, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  store i8 %28, ptr %29, align 1, !tbaa !219
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_sub(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 !PGOFuncName !236 {
  %7 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp slt i32 %9, %5
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @leaf_needs_material_split(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5) #22, !range !237
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call fastcc void @build_leaf(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5) #22
  br label %74

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %19, i64 %20, i32 3
  store i32 %17, ptr %21, align 8, !tbaa !113
  %22 = add nsw i32 %17, 2
  tail call void @pbvh_grow_nodes(ptr noundef nonnull %0, i32 noundef %22) #22
  %23 = load ptr, ptr %18, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %20
  tail call fastcc void @update_vb(ptr noundef nonnull %0, ptr noundef %24, ptr noundef %3, i32 noundef %4, i32 noundef %5) #22
  br i1 %10, label %25, label %58

25:                                               ; preds = %15
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  call void @BB_reset(ptr noundef nonnull %7) #22
  %28 = icmp sgt i32 %5, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %27
  %30 = add i32 %5, %4
  %31 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = sext i32 %30 to i64
  %34 = sext i32 %4 to i64
  br label %35

35:                                               ; preds = %29, %35
  %36 = phi i64 [ %33, %29 ], [ %37, %35 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds i32, ptr %32, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.BBC, ptr %3, i64 %40, i32 2
  call void @BB_expand(ptr noundef nonnull %7, ptr noundef nonnull %41) #22
  %42 = icmp sgt i64 %37, %34
  br i1 %42, label %35, label %43, !llvm.loop !238

43:                                               ; preds = %35, %27, %25
  %44 = phi ptr [ %2, %25 ], [ %7, %27 ], [ %7, %35 ]
  %45 = call i32 @BB_widest_axis(ptr noundef nonnull %44) #22, !range !210
  %46 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !72
  %48 = add nsw i32 %5, %4
  %49 = add nsw i32 %48, -1
  %50 = zext nneg i32 %45 to i64
  %51 = getelementptr inbounds %struct.BB, ptr %44, i64 0, i32 1, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds [3 x float], ptr %44, i64 0, i64 %50
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fadd float %52, %54
  %56 = fmul float %55, 5.000000e-01
  %57 = tail call fastcc i32 @partition_indices(ptr noundef %47, i32 noundef %4, i32 noundef %49, i32 noundef %45, float noundef %56, ptr noundef %3) #22
  br label %62

58:                                               ; preds = %15
  %59 = add nsw i32 %5, %4
  %60 = add nsw i32 %59, -1
  %61 = tail call fastcc i32 @partition_indices_material(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %60) #22
  br label %62

62:                                               ; preds = %58, %43
  %63 = phi i32 [ %59, %58 ], [ %48, %43 ]
  %64 = phi i32 [ %61, %58 ], [ %57, %43 ]
  %65 = load ptr, ptr %18, align 8, !tbaa !50
  %66 = getelementptr inbounds %struct.PBVHNode, ptr %65, i64 %20, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !113
  %68 = sub nsw i32 %64, %4
  tail call fastcc void @build_sub(ptr noundef nonnull %0, i32 noundef %67, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef %68) #22
  %69 = load ptr, ptr %18, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.PBVHNode, ptr %69, i64 %20, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !113
  %72 = add nsw i32 %71, 1
  %73 = sub i32 %63, %64
  tail call fastcc void @build_sub(ptr noundef nonnull %0, i32 noundef %72, ptr noundef null, ptr noundef %3, i32 noundef %64, i32 noundef %73) #22
  br label %74

74:                                               ; preds = %62, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @leaf_needs_material_split(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !PGOFuncName !239 {
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %53, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MFace, ptr %7, i64 %15
  %17 = add i32 %2, %1
  %18 = sext i32 %17 to i64
  br label %19

19:                                               ; preds = %23, %9
  %20 = phi i64 [ %21, %23 ], [ %18, %9 ]
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %21, %12
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = getelementptr inbounds i32, ptr %11, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MFace, ptr %7, i64 %26
  %28 = tail call fastcc i32 @face_materials_match(ptr noundef nonnull %16, ptr noundef nonnull %27) #22, !range !237
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %19, !llvm.loop !240

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.DMFlagMat, ptr %32, i64 %38
  %40 = add i32 %2, %1
  %41 = sext i32 %40 to i64
  br label %42

42:                                               ; preds = %46, %30
  %43 = phi i64 [ %44, %46 ], [ %41, %30 ]
  %44 = add nsw i64 %43, -1
  %45 = icmp sgt i64 %44, %35
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds i32, ptr %34, i64 %44
  %48 = load i32, ptr %47, align 4, !tbaa !53
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.DMFlagMat, ptr %32, i64 %49
  %51 = tail call fastcc i32 @grid_materials_match(ptr noundef %39, ptr noundef %50) #22, !range !237
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %42, !llvm.loop !241

53:                                               ; preds = %19, %23, %42, %46, %3
  %54 = phi i32 [ 0, %3 ], [ 0, %42 ], [ 1, %46 ], [ 0, %19 ], [ 1, %23 ]
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_leaf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !242 {
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = or i16 %10, 1
  store i16 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load ptr, ptr %6, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 %8, i32 4
  store ptr %15, ptr %17, align 8, !tbaa !160
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 %8, i32 5
  store i32 %4, ptr %18, align 8, !tbaa !161
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 %8
  tail call fastcc void @update_vb(ptr noundef %0, ptr noundef %19, ptr noundef %2, i32 noundef %3, i32 noundef %4) #22
  %20 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %6, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %8
  br i1 %22, label %26, label %25

25:                                               ; preds = %5
  tail call fastcc void @build_mesh_leaf_node(ptr noundef nonnull %0, ptr noundef %24) #22
  br label %27

26:                                               ; preds = %5
  tail call fastcc void @build_grid_leaf_node(ptr noundef nonnull %0, ptr noundef %24) #22
  br label %27

27:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_vb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #13 !PGOFuncName !243 {
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 1
  tail call void @BB_reset(ptr noundef nonnull %6) #22
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = add i32 %4, %3
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %11 = sext i32 %9 to i64
  %12 = sext i32 %3 to i64
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i64 [ %11, %8 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = load ptr, ptr %10, align 8, !tbaa !72
  %17 = getelementptr inbounds i32, ptr %16, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.BBC, ptr %2, i64 %19
  tail call void @BB_expand_with_bb(ptr noundef nonnull %6, ptr noundef %20) #22
  %21 = icmp sgt i64 %15, %12
  br i1 %21, label %13, label %22, !llvm.loop !244

22:                                               ; preds = %13, %5
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !118
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @partition_indices(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #1 !PGOFuncName !245 {
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %38, %6
  %9 = phi i32 [ %2, %6 ], [ %35, %38 ]
  %10 = phi i32 [ %1, %6 ], [ %40, %38 ]
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ %20, %12 ], [ %11, %8 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.BBC, ptr %5, i64 %16, i32 2, i64 %7
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp olt float %18, %4
  %20 = add i64 %13, 1
  br i1 %19, label %12, label %21, !llvm.loop !246

21:                                               ; preds = %12
  %22 = getelementptr inbounds i32, ptr %0, i64 %13
  %23 = trunc i64 %13 to i32
  %24 = sext i32 %9 to i64
  br label %25

25:                                               ; preds = %25, %21
  %26 = phi i64 [ %33, %25 ], [ %24, %21 ]
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.BBC, ptr %5, i64 %29, i32 2, i64 %7
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fcmp ogt float %31, %4
  %33 = add i64 %26, -1
  br i1 %32, label %25, label %34, !llvm.loop !247

34:                                               ; preds = %25
  %35 = trunc i64 %26 to i32
  %36 = icmp slt i32 %23, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  ret i32 %23

38:                                               ; preds = %34
  %39 = getelementptr inbounds i32, ptr %0, i64 %26
  store i32 %28, ptr %22, align 4, !tbaa !53
  store i32 %15, ptr %39, align 4, !tbaa !53
  %40 = add nsw i32 %23, 1
  br label %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @partition_indices_material(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 !PGOFuncName !248 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %5, null
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MFace, ptr %5, i64 %14
  %16 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %14
  %17 = select i1 %10, ptr %16, ptr %15
  br label %18

18:                                               ; preds = %69, %3
  %19 = phi i32 [ %1, %3 ], [ %78, %69 ]
  %20 = phi i32 [ %2, %3 ], [ %65, %69 ]
  %21 = sext i32 %19 to i64
  br i1 %10, label %42, label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %30, %22 ], [ %21, %18 ]
  %24 = getelementptr inbounds i32, ptr %9, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MFace, ptr %5, i64 %26
  %28 = tail call fastcc i32 @face_materials_match(ptr noundef %17, ptr noundef nonnull %27) #22, !range !237
  %29 = icmp eq i32 %28, 0
  %30 = add i64 %23, 1
  br i1 %29, label %31, label %22, !llvm.loop !249

31:                                               ; preds = %22
  %32 = sext i32 %20 to i64
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ %41, %33 ], [ %32, %31 ]
  %35 = getelementptr inbounds i32, ptr %9, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MFace, ptr %5, i64 %37
  %39 = tail call fastcc i32 @face_materials_match(ptr noundef %17, ptr noundef nonnull %38) #22, !range !237
  %40 = icmp eq i32 %39, 0
  %41 = add i64 %34, -1
  br i1 %40, label %33, label %62, !llvm.loop !250

42:                                               ; preds = %18, %42
  %43 = phi i64 [ %50, %42 ], [ %21, %18 ]
  %44 = getelementptr inbounds i32, ptr %9, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %46
  %48 = tail call fastcc i32 @grid_materials_match(ptr noundef %17, ptr noundef %47) #22, !range !237
  %49 = icmp eq i32 %48, 0
  %50 = add i64 %43, 1
  br i1 %49, label %51, label %42, !llvm.loop !251

51:                                               ; preds = %42
  %52 = sext i32 %20 to i64
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i64 [ %61, %53 ], [ %52, %51 ]
  %55 = getelementptr inbounds i32, ptr %9, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.DMFlagMat, ptr %7, i64 %57
  %59 = tail call fastcc i32 @grid_materials_match(ptr noundef %17, ptr noundef %58) #22, !range !237
  %60 = icmp eq i32 %59, 0
  %61 = add i64 %54, -1
  br i1 %60, label %53, label %62, !llvm.loop !252

62:                                               ; preds = %33, %53
  %63 = phi i64 [ %43, %53 ], [ %23, %33 ]
  %64 = phi i64 [ %54, %53 ], [ %34, %33 ]
  %65 = trunc i64 %64 to i32
  %66 = trunc i64 %63 to i32
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  ret i32 %66

69:                                               ; preds = %62
  %70 = shl i64 %63, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds i32, ptr %9, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !53
  %74 = shl i64 %64, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds i32, ptr %9, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !53
  store i32 %77, ptr %72, align 4, !tbaa !53
  store i32 %73, ptr %76, align 4, !tbaa !53
  %78 = add nsw i32 %66, 1
  br label %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @face_materials_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !254
  %5 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !254
  %7 = xor i8 %6, %4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !255
  %13 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !255
  %15 = icmp eq i16 %12, %14
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %10 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @grid_materials_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !256 {
  %3 = getelementptr inbounds %struct.DMFlagMat, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 2, !tbaa !257
  %5 = getelementptr inbounds %struct.DMFlagMat, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 2, !tbaa !257
  %7 = xor i8 %6, %4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i16, ptr %0, align 2, !tbaa !259
  %12 = load i16, ptr %1, align 2, !tbaa !259
  %13 = icmp eq i16 %11, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_mesh_leaf_node(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !260 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 8
  store i32 0, ptr %3, align 4, !tbaa !185
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !161
  %7 = shl nsw i32 %6, 1
  %8 = tail call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @.str.11, i32 noundef %7) #24
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %10 = sext i32 %6 to i64
  %11 = shl nsw i64 %10, 4
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.12) #24
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !92
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %19 = zext nneg i32 %6 to i64
  br label %20

20:                                               ; preds = %15, %42
  %21 = phi i64 [ 0, %15 ], [ %47, %42 ]
  %22 = phi i8 [ 0, %15 ], [ %46, %42 ]
  %23 = load ptr, ptr %16, align 8, !tbaa !58
  %24 = load ptr, ptr %17, align 8, !tbaa !160
  %25 = getelementptr inbounds i32, ptr %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MFace, ptr %23, i64 %27
  %29 = getelementptr inbounds %struct.MFace, ptr %23, i64 %27, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !64
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i64 3, i64 4
  br label %33

33:                                               ; preds = %20, %33
  %34 = phi i64 [ 0, %20 ], [ %40, %33 ]
  %35 = getelementptr inbounds i32, ptr %28, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !67
  %37 = tail call fastcc i32 @map_insert_vert(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %36) #22
  %38 = load ptr, ptr %13, align 8, !tbaa !92
  %39 = getelementptr inbounds [4 x i32], ptr %38, i64 %21, i64 %34
  store i32 %37, ptr %39, align 4, !tbaa !53
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, %32
  br i1 %41, label %42, label %33, !llvm.loop !261

42:                                               ; preds = %33
  %43 = load ptr, ptr %18, align 8, !tbaa !59
  %44 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef nonnull %28, ptr noundef %43) #24
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i8 1, i8 %22
  %47 = add nuw nsw i64 %21, 1
  %48 = icmp eq i64 %47, %19
  br i1 %48, label %49, label %20, !llvm.loop !262

49:                                               ; preds = %42
  %50 = icmp eq i8 %46, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %49, %2
  %53 = phi i32 [ 1, %2 ], [ %51, %49 ]
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %55 = load i32, ptr %4, align 8, !tbaa !169
  %56 = load i32, ptr %3, align 4, !tbaa !185
  %57 = add i32 %56, %55
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 2
  %60 = tail call ptr %54(i64 noundef %59, ptr noundef nonnull @.str.13) #24
  %61 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 6
  store ptr %60, ptr %61, align 8, !tbaa !91
  %62 = tail call ptr @BLI_ghashIterator_new(ptr noundef %8) #24
  %63 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %62) #22, !range !148
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %52, %74
  %66 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %62) #22
  %67 = ptrtoint ptr %66 to i64
  %68 = trunc i64 %67 to i32
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, ptr %4, align 8, !tbaa !169
  %72 = xor i32 %68, -1
  %73 = add i32 %71, %72
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i32 [ %73, %70 ], [ %68, %65 ]
  %76 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %62) #22
  %77 = ptrtoint ptr %76 to i64
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %61, align 8, !tbaa !91
  %80 = sext i32 %75 to i64
  %81 = getelementptr inbounds i32, ptr %79, i64 %80
  store i32 %78, ptr %81, align 4, !tbaa !53
  tail call void @BLI_ghashIterator_step(ptr noundef %62) #24
  %82 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %62) #22, !range !148
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %65, label %84, !llvm.loop !263

84:                                               ; preds = %74, %52
  tail call void @BLI_ghashIterator_free(ptr noundef %62) #24
  br i1 %14, label %85, label %116

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %87 = load ptr, ptr %86, align 8, !tbaa !58
  %88 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !160
  %90 = load ptr, ptr %13, align 8, !tbaa !92
  %91 = zext nneg i32 %6 to i64
  br label %92

92:                                               ; preds = %85, %113
  %93 = phi i64 [ 0, %85 ], [ %114, %113 ]
  %94 = getelementptr inbounds i32, ptr %89, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !53
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.MFace, ptr %87, i64 %96, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !64
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i64 3, i64 4
  br label %101

101:                                              ; preds = %92, %110
  %102 = phi i64 [ 0, %92 ], [ %111, %110 ]
  %103 = getelementptr inbounds [4 x i32], ptr %90, i64 %93, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !53
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, ptr %4, align 8, !tbaa !169
  %108 = xor i32 %104, -1
  %109 = add i32 %107, %108
  store i32 %109, ptr %103, align 4, !tbaa !53
  br label %110

110:                                              ; preds = %101, %106
  %111 = add nuw nsw i64 %102, 1
  %112 = icmp eq i64 %111, %100
  br i1 %112, label %113, label %101, !llvm.loop !264

113:                                              ; preds = %110
  %114 = add nuw nsw i64 %93, 1
  %115 = icmp eq i64 %114, %91
  br i1 %115, label %116, label %92, !llvm.loop !265

116:                                              ; preds = %113, %84
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef nonnull %1) #22
  tail call void @BKE_pbvh_node_fully_hidden_set(ptr noundef nonnull %1, i32 noundef %53) #22
  tail call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef null) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_grid_leaf_node(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !186
  %11 = tail call i32 @BKE_pbvh_count_grid_quads(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef %10) #22
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  tail call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %1, i32 noundef %13) #22
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @map_insert_vert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !267 {
  %6 = sext i32 %4 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %1, ptr noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = ashr i32 %4, 5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = and i32 %4, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = load i32, ptr %2, align 4, !tbaa !53
  %23 = xor i32 %22, -1
  br label %27

24:                                               ; preds = %10
  %25 = or i32 %16, %18
  store i32 %25, ptr %15, align 4, !tbaa !53
  %26 = load i32, ptr %3, align 4, !tbaa !53
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %26, %24 ], [ %22, %21 ]
  %29 = phi ptr [ %3, %24 ], [ %2, %21 ]
  %30 = phi i32 [ %26, %24 ], [ %23, %21 ]
  %31 = add i32 %28, 1
  store i32 %31, ptr %29, align 4, !tbaa !53
  %32 = zext i32 %30 to i64
  %33 = inttoptr i64 %32 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %1, ptr noundef %7, ptr noundef %33) #24
  br label %38

34:                                               ; preds = %5
  %35 = load ptr, ptr %8, align 8, !tbaa !51
  %36 = ptrtoint ptr %35 to i64
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i32 [ %30, %27 ], [ %37, %34 ]
  ret i32 %39
}

; Function Attrs: optsize
declare zeroext i8 @paint_is_face_hidden(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !268 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !270 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !271
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !274
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !275 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !276
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_stack_push(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !277 {
  %4 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  br label %30

12:                                               ; preds = %3
  %13 = shl nsw i32 %5, 1
  store i32 %13, ptr %6, align 8, !tbaa !107
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 4
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.14) #24
  %18 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = load i32, ptr %4, align 8, !tbaa !111
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %19, i64 %22, i1 false)
  %23 = load i32, ptr %6, align 8, !tbaa !107
  %24 = icmp sgt i32 %23, 100
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %27 = load ptr, ptr %18, align 8, !tbaa !106
  tail call void %26(ptr noundef %27) #24
  br label %28

28:                                               ; preds = %25, %12
  store ptr %17, ptr %18, align 8, !tbaa !106
  %29 = load i32, ptr %4, align 8, !tbaa !111
  br label %30

30:                                               ; preds = %9, %28
  %31 = phi i32 [ %5, %9 ], [ %29, %28 ]
  %32 = phi ptr [ %11, %9 ], [ %17, %28 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.PBVHStack, ptr %32, i64 %33
  store ptr %1, ptr %34, align 8, !tbaa !108
  %35 = getelementptr inbounds %struct.PBVHStack, ptr %32, i64 %33, i32 1
  store i32 %2, ptr %35, align 8, !tbaa !110
  %36 = add nsw i32 %31, 1
  store i32 %36, ptr %4, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !279
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !280 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !281
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !282 {
  %3 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef 1) #22
  ret ptr %3
}

; Function Attrs: optsize
declare void @pbvh_bmesh_normals_update(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !283 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !284 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !285
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !286 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #22
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #24
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !287 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pbvh_iter_next_occluded(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !288 {
  %2 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %5, %44
  %10 = phi i32 [ %3, %5 ], [ %45, %44 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %2, align 8, !tbaa !111
  %12 = load ptr, ptr %6, align 8, !tbaa !106
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.PBVHStack, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %7, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 8, !tbaa !105
  %22 = tail call zeroext i8 %18(ptr noundef nonnull %15, ptr noundef %21) #24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %20, %17
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %15, i64 0, i32 10
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.PBVH, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.PBVHNode, ptr %15, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !113
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.PBVHNode, ptr %32, i64 %35
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %36, i64 1
  tail call fastcc void @pbvh_stack_push(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef 0) #22
  %38 = load ptr, ptr %0, align 8, !tbaa !102
  %39 = getelementptr inbounds %struct.PBVH, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = load i32, ptr %33, align 8, !tbaa !113
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.PBVHNode, ptr %40, i64 %42
  tail call fastcc void @pbvh_stack_push(ptr noundef nonnull %0, ptr noundef %43, i32 noundef 0) #22
  br label %44

44:                                               ; preds = %29, %20
  %45 = load i32, ptr %2, align 8, !tbaa !111
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %9, !llvm.loop !289

47:                                               ; preds = %9, %24, %44, %1
  %48 = phi ptr [ null, %1 ], [ null, %44 ], [ %15, %24 ], [ null, %9 ]
  ret ptr %48
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tree_insert(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #15 !PGOFuncName !290 {
  %3 = load ptr, ptr %1, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !117
  br label %6

6:                                                ; preds = %16, %2
  %7 = phi ptr [ %0, %2 ], [ %17, %16 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %8, i64 0, i32 11
  %10 = load float, ptr %9, align 4, !tbaa !117
  %11 = fcmp olt float %5, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.node_tree, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !291
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %20
  %17 = phi ptr [ %14, %12 ], [ %22, %20 ]
  br label %6

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.node_tree, ptr %7, i64 0, i32 1
  br label %26

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.node_tree, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !292
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.node_tree, ptr %7, i64 0, i32 2
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %19, %18 ]
  store ptr %1, ptr %27, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @traverse_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !293 {
  br label %5

5:                                                ; preds = %11, %4
  %6 = phi ptr [ %0, %4 ], [ %14, %11 ]
  %7 = getelementptr inbounds %struct.node_tree, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !291
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @traverse_tree(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr %6, align 8, !tbaa !193
  tail call void %1(ptr noundef %12, ptr noundef %2, ptr noundef %3) #24
  %13 = getelementptr inbounds %struct.node_tree, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !292
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_tree(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.node_tree, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @free_tree(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 8, !tbaa !291
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.node_tree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !292
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @free_tree(ptr noundef nonnull %8) #22
  br label %11

11:                                               ; preds = %10, %6
  tail call void @free(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !PGOFuncName !295 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !PGOFuncName !296 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #22
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GPU_build_grid_pbvh_buffers(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GPU_build_mesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_update_grid_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_update_mesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_update_bmesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_init_draw_pbvh_BB() local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_draw_pbvh_BB(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GPU_end_draw_pbvh_BB() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize allocsize(0) }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"pbvh.c:min_ff"}
!41 = !{!"pbvh.c:max_ff"}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = !{!46, !47, i64 16}
!46 = !{!"PBVH", !47, i64 0, !47, i64 4, !48, i64 8, !47, i64 16, !47, i64 20, !48, i64 24, !47, i64 32, !47, i64 36, !47, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !49, i64 72, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !47, i64 144, !48, i64 152, !48, i64 160, !36, i64 168, !36, i64 169, !48, i64 176, !35, i64 184, !35, i64 188, !47, i64 192, !47, i64 196, !48, i64 200}
!47 = !{!"int", !36, i64 0}
!48 = !{!"any pointer", !36, i64 0}
!49 = !{!"CCGKey", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!50 = !{!46, !48, i64 8}
!51 = !{!48, !48, i64 0}
!52 = !{!46, !47, i64 20}
!53 = !{!47, !47, i64 0}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = !{!46, !47, i64 0}
!58 = !{!46, !48, i64 56}
!59 = !{!46, !48, i64 48}
!60 = !{!46, !48, i64 160}
!61 = !{!46, !47, i64 36}
!62 = !{!46, !47, i64 40}
!63 = !{!46, !48, i64 64}
!64 = !{!65, !47, i64 12}
!65 = !{!"MFace", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !66, i64 16, !36, i64 18, !36, i64 19}
!66 = !{!"short", !36, i64 0}
!67 = !{!65, !47, i64 0}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !39}
!70 = !{!"pbvh.c:pbvh_build"}
!71 = !{!46, !47, i64 32}
!72 = !{!46, !48, i64 24}
!73 = distinct !{!73, !39, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!49, !47, i64 8}
!77 = !{!46, !48, i64 112}
!78 = !{!46, !48, i64 120}
!79 = !{!46, !48, i64 128}
!80 = !{!46, !48, i64 136}
!81 = !{!46, !47, i64 144}
!82 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53, i64 16, i64 4, !53, i64 20, i64 4, !53, i64 24, i64 4, !53, i64 28, i64 4, !53, i64 32, i64 4, !53, i64 36, i64 4, !53}
!83 = !{!46, !48, i64 152}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = !{!"pbvh.c:max_ii"}
!87 = !{!"pbvh.c:CCG_elem_offset_co"}
!88 = !{!89, !48, i64 0}
!89 = !{!"PBVHNode", !48, i64 0, !90, i64 8, !90, i64 32, !47, i64 56, !48, i64 64, !47, i64 72, !48, i64 80, !47, i64 88, !47, i64 92, !48, i64 96, !47, i64 104, !35, i64 108, !48, i64 112, !47, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !47, i64 176}
!90 = !{!"", !36, i64 0, !36, i64 12}
!91 = !{!89, !48, i64 80}
!92 = !{!89, !48, i64 96}
!93 = !{!89, !48, i64 136}
!94 = !{!89, !48, i64 144}
!95 = !{!89, !48, i64 152}
!96 = distinct !{!96, !39}
!97 = !{!46, !36, i64 168}
!98 = !{!89, !48, i64 112}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = !{!"pbvh.c:pbvh_iter_begin"}
!102 = !{!103, !48, i64 0}
!103 = !{!"PBVHIter", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !47, i64 32, !36, i64 40, !47, i64 1640}
!104 = !{!103, !48, i64 8}
!105 = !{!103, !48, i64 16}
!106 = !{!103, !48, i64 24}
!107 = !{!103, !47, i64 1640}
!108 = !{!109, !48, i64 0}
!109 = !{!"PBVHStack", !48, i64 0, !47, i64 8}
!110 = !{!109, !47, i64 8}
!111 = !{!103, !47, i64 32}
!112 = !{!"pbvh.c:pbvh_iter_next"}
!113 = !{!89, !47, i64 56}
!114 = distinct !{!114, !39}
!115 = !{!"pbvh.c:pbvh_iter_end"}
!116 = distinct !{!116, !39}
!117 = !{!89, !35, i64 108}
!118 = !{i64 0, i64 12, !119, i64 12, i64 12, !119}
!119 = !{!36, !36, i64 0}
!120 = distinct !{!120, !39}
!121 = !{!"pbvh.c:update_node_vb"}
!122 = !{!123, !47, i64 20}
!123 = !{!"PBVHVertexIter", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !47, i64 72, !47, i64 76, !48, i64 80, !47, i64 88, !48, i64 96, !48, i64 104, !124, i64 112, !124, i64 136, !48, i64 160, !47, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216}
!124 = !{!"GSetIterator", !125, i64 0}
!125 = !{!"GHashIterator", !48, i64 0, !48, i64 8, !47, i64 16}
!126 = !{!123, !47, i64 0}
!127 = !{!123, !47, i64 72}
!128 = !{!123, !48, i64 24}
!129 = !{!123, !47, i64 88}
!130 = !{!123, !47, i64 4}
!131 = !{!123, !47, i64 8}
!132 = !{!123, !47, i64 16}
!133 = !{!123, !47, i64 76}
!134 = !{!123, !48, i64 64}
!135 = !{!123, !48, i64 32}
!136 = !{!123, !47, i64 12}
!137 = !{!123, !48, i64 40}
!138 = !{!123, !48, i64 192}
!139 = !{!123, !48, i64 208}
!140 = !{!49, !47, i64 36}
!141 = !{!123, !48, i64 216}
!142 = !{!123, !48, i64 56}
!143 = !{!123, !48, i64 80}
!144 = !{!123, !48, i64 96}
!145 = !{!123, !48, i64 176}
!146 = !{!123, !48, i64 200}
!147 = !{!123, !48, i64 104}
!148 = !{i8 0, i8 2}
!149 = !{!123, !48, i64 184}
!150 = !{!151, !48, i64 0}
!151 = !{!"BMVert", !152, i64 0, !48, i64 16, !36, i64 24, !36, i64 36, !48, i64 48}
!152 = !{!"BMHeader", !48, i64 0, !47, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!153 = !{!123, !47, i64 168}
!154 = distinct !{!154, !39}
!155 = distinct !{!155, !39}
!156 = distinct !{!156, !39}
!157 = !{i32 0, i32 16}
!158 = !{!"pbvh.c:update_search_cb"}
!159 = !{!"pbvh.c:pbvh_update_normals"}
!160 = !{!89, !48, i64 64}
!161 = !{!89, !47, i64 72}
!162 = !{!65, !47, i64 4}
!163 = !{!65, !47, i64 8}
!164 = !{!165, !36, i64 18}
!165 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!166 = distinct !{!166, !39}
!167 = distinct !{!167, !39}
!168 = distinct !{!168, !39}
!169 = !{!89, !47, i64 88}
!170 = distinct !{!170, !39}
!171 = distinct !{!171, !39}
!172 = !{!"pbvh.c:pbvh_flush_bb"}
!173 = distinct !{!173, !39}
!174 = !{!"pbvh.c:copy_v3_v3"}
!175 = distinct !{!175, !39}
!176 = distinct !{!176, !39}
!177 = distinct !{!177, !39}
!178 = !{!"pbvh.c:BLI_gsetIterator_init"}
!179 = !{!"pbvh.c:BLI_gsetIterator_done"}
!180 = !{!"pbvh.c:BLI_gsetIterator_getKey"}
!181 = !{!"pbvh.c:BLI_gsetIterator_step"}
!182 = !{!"pbvh.c:zero_v3"}
!183 = !{!46, !48, i64 176}
!184 = !{!46, !47, i64 84}
!185 = !{!89, !47, i64 92}
!186 = !{!46, !47, i64 80}
!187 = !{!89, !47, i64 120}
!188 = !{!89, !48, i64 128}
!189 = !{!190, !36, i64 36}
!190 = !{!"", !191, i64 0, !36, i64 36}
!191 = !{!"", !36, i64 0, !36, i64 12, !36, i64 24}
!192 = !{!"pbvh.c:BKE_pbvh_search_callback_occluded"}
!193 = !{!194, !48, i64 0}
!194 = !{!"node_tree", !48, i64 0, !48, i64 8, !48, i64 16}
!195 = distinct !{!195, !39}
!196 = !{!"pbvh.c:ray_aabb_intersect"}
!197 = !{!"pbvh.c:pbvh_faces_node_raycast"}
!198 = distinct !{!198, !39}
!199 = !{!"pbvh.c:pbvh_grids_node_raycast"}
!200 = distinct !{!200, !39}
!201 = distinct !{!201, !39}
!202 = distinct !{!202, !39}
!203 = !{!"pbvh.c:sub_v3_v3v3"}
!204 = !{!"pbvh.c:add_v3_v3"}
!205 = !{!"pbvh.c:madd_v3_v3v3fl"}
!206 = !{!"pbvh.c:mul_v3_v3fl"}
!207 = !{!208, !48, i64 0}
!208 = !{!"", !48, i64 0, !36, i64 8}
!209 = !{!208, !36, i64 8}
!210 = !{i32 0, i32 3}
!211 = !{!"pbvh.c:test_planes_aabb"}
!212 = distinct !{!212, !39}
!213 = distinct !{!213, !39}
!214 = distinct !{!214, !39}
!215 = !{!216, !66, i64 2092}
!216 = !{!"Global", !48, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !217, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !66, i64 2084, !66, i64 2086, !66, i64 2088, !36, i64 2090, !66, i64 2092, !47, i64 2096, !47, i64 2100, !36, i64 2104, !47, i64 2108, !47, i64 2112, !36, i64 2116}
!217 = !{!"ListBase", !48, i64 0, !48, i64 8}
!218 = !{!"pbvh.c:pbvh_node_check_diffuse_changed"}
!219 = !{!46, !36, i64 169}
!220 = !{!"pbvh.c:pbvh_update_draw_buffers"}
!221 = !{!46, !47, i64 4}
!222 = distinct !{!222, !39}
!223 = !{!"pbvh.c:pbvh_draw_BB"}
!224 = distinct !{!224, !39}
!225 = distinct !{!225, !39}
!226 = distinct !{!226, !39}
!227 = distinct !{!227, !39}
!228 = distinct !{!228, !39}
!229 = !{!230, !48, i64 0}
!230 = !{!"", !48, i64 0}
!231 = distinct !{!231, !39}
!232 = distinct !{!232, !39}
!233 = !{!123, !48, i64 160}
!234 = !{!123, !48, i64 48}
!235 = !{!46, !47, i64 108}
!236 = !{!"pbvh.c:build_sub"}
!237 = !{i32 0, i32 2}
!238 = distinct !{!238, !39}
!239 = !{!"pbvh.c:leaf_needs_material_split"}
!240 = distinct !{!240, !39}
!241 = distinct !{!241, !39}
!242 = !{!"pbvh.c:build_leaf"}
!243 = !{!"pbvh.c:update_vb"}
!244 = distinct !{!244, !39}
!245 = !{!"pbvh.c:partition_indices"}
!246 = distinct !{!246, !39}
!247 = distinct !{!247, !39}
!248 = !{!"pbvh.c:partition_indices_material"}
!249 = distinct !{!249, !39}
!250 = distinct !{!250, !39}
!251 = distinct !{!251, !39}
!252 = distinct !{!252, !39}
!253 = !{!"pbvh.c:face_materials_match"}
!254 = !{!65, !36, i64 19}
!255 = !{!65, !66, i64 16}
!256 = !{!"pbvh.c:grid_materials_match"}
!257 = !{!258, !36, i64 2}
!258 = !{!"DMFlagMat", !66, i64 0, !36, i64 2}
!259 = !{!258, !66, i64 0}
!260 = !{!"pbvh.c:build_mesh_leaf_node"}
!261 = distinct !{!261, !39}
!262 = distinct !{!262, !39}
!263 = distinct !{!263, !39}
!264 = distinct !{!264, !39}
!265 = distinct !{!265, !39}
!266 = !{!"pbvh.c:build_grid_leaf_node"}
!267 = !{!"pbvh.c:map_insert_vert"}
!268 = !{!"pbvh.c:BLI_ghashIterator_done"}
!269 = !{!125, !48, i64 8}
!270 = !{!"pbvh.c:BLI_ghashIterator_getValue"}
!271 = !{!272, !48, i64 16}
!272 = !{!"_gh_Entry", !48, i64 0, !48, i64 8, !48, i64 16}
!273 = !{!"pbvh.c:BLI_ghashIterator_getKey"}
!274 = !{!272, !48, i64 8}
!275 = !{!"pbvh.c:CCG_elem_offset"}
!276 = !{!49, !47, i64 4}
!277 = !{!"pbvh.c:pbvh_stack_push"}
!278 = !{!"pbvh.c:CCG_elem_no"}
!279 = !{!49, !47, i64 20}
!280 = !{!"pbvh.c:CCG_elem_mask"}
!281 = !{!49, !47, i64 24}
!282 = !{!"pbvh.c:CCG_elem_next"}
!283 = !{!"pbvh.c:normalize_v3"}
!284 = !{!"pbvh.c:normal_float_to_short_v3"}
!285 = !{!66, !66, i64 0}
!286 = !{!"pbvh.c:normalize_v3_v3"}
!287 = !{!"pbvh.c:dot_v3v3"}
!288 = !{!"pbvh.c:pbvh_iter_next_occluded"}
!289 = distinct !{!289, !39}
!290 = !{!"pbvh.c:node_tree_insert"}
!291 = !{!194, !48, i64 8}
!292 = !{!194, !48, i64 16}
!293 = !{!"pbvh.c:traverse_tree"}
!294 = !{!"pbvh.c:free_tree"}
!295 = !{!"pbvh.c:CCG_grid_elem_co"}
!296 = !{!"pbvh.c:CCG_grid_elem"}
