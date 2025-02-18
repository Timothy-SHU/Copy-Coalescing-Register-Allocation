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
%struct._gh_Entry = type { ptr, ptr, ptr }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BB_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %6, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BB_expand(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %16, %3 ]
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp olt float %6, %8
  %10 = select i1 %9, float %6, float %8
  store float %10, ptr %5, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 %4
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = load float, ptr %7, align 4, !tbaa !34
  %14 = fcmp ogt float %12, %13
  %15 = select i1 %14, float %12, float %13
  store float %15, ptr %11, align 4, !tbaa !34
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %3, !llvm.loop !38

18:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BB_expand_with_bb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %17, %3 ]
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp olt float %6, %8
  %10 = select i1 %9, float %6, float %8
  store float %10, ptr %5, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.BB, ptr %0, i64 0, i32 1, i64 %4
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.BB, ptr %1, i64 0, i32 1, i64 %4
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp ogt float %12, %14
  %16 = select i1 %15, float %12, float %14
  store float %16, ptr %11, align 4, !tbaa !34
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %3, !llvm.loop !41

19:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @BB_widest_axis(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
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
  br i1 %12, label %13, label %3, !llvm.loop !42

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
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %12, label %13, label %2, !llvm.loop !43

13:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pbvh_grow_nodes(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = sitofp i32 %4 to double
  %10 = fmul double %9, 1.330000e+00
  %11 = fptosi double %10 to i32
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %1)
  store i32 %12, ptr %3, align 8, !tbaa !44
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %14 = sext i32 %12 to i64
  %15 = mul nsw i64 %14, 184
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str) #18
  store ptr %16, ptr %7, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !51
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %8, i64 %20, i1 false)
  %21 = load ptr, ptr %7, align 8, !tbaa !49
  %22 = load i32, ptr %17, align 4, !tbaa !51
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %21, i64 %23
  %25 = load i32, ptr %3, align 8, !tbaa !44
  %26 = sub nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 184
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %28, i1 false)
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %29(ptr noundef %8) #18
  br label %30

30:                                               ; preds = %6, %2
  %31 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 %1, ptr %31, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_pbvh_count_grid_quads(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
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
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !50
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
  %27 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %18, i32 noundef %3, i32 noundef %26, i32 noundef %23) #18
  %28 = icmp eq i8 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %25, %29
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %24, !llvm.loop !53

33:                                               ; preds = %24
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp eq i32 %34, %5
  br i1 %35, label %38, label %21, !llvm.loop !54

36:                                               ; preds = %11
  %37 = add nsw i32 %13, %6
  br label %38

38:                                               ; preds = %33, %20, %36
  %39 = phi i32 [ %37, %36 ], [ %13, %20 ], [ %30, %33 ]
  %40 = add nuw nsw i64 %12, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %42, label %11, !llvm.loop !55

42:                                               ; preds = %38, %4
  %43 = phi i32 [ 0, %4 ], [ %39, %38 ]
  ret i32 %43
}

declare zeroext i8 @paint_is_grid_face_hidden(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_build_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #4 {
  %7 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  store i32 0, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  store ptr %1, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  store ptr %2, ptr %9, align 8, !tbaa !58
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %11 = ashr i32 %4, 5
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.1) #18
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 19
  store ptr %15, ptr %16, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  store i32 %4, ptr %17, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 10000, ptr %18, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  store ptr %5, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %21, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %7, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.BB, ptr %7, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BB, ptr %7, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.BB, ptr %7, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %24, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %22, align 4, !tbaa !34
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %26 = sext i32 %3 to i64
  %27 = mul nsw i64 %26, 36
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.2) #18
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %100

30:                                               ; preds = %6
  %31 = zext nneg i32 %3 to i64
  br label %32

32:                                               ; preds = %30, %97
  %33 = phi i64 [ 0, %30 ], [ %98, %97 ]
  %34 = getelementptr inbounds %struct.MFace, ptr %1, i64 %33
  %35 = getelementptr inbounds %struct.MFace, ptr %1, i64 %33, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !63
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i64 3, i64 4
  %39 = getelementptr inbounds %struct.BBC, ptr %28, i64 %33
  %40 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %41, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %39, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.BB, ptr %39, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BB, ptr %39, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.BB, ptr %39, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %44, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %42, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %32, %66
  %46 = phi i64 [ 0, %32 ], [ %67, %66 ]
  %47 = getelementptr inbounds i32, ptr %34, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.MVert, ptr %2, i64 %49
  br label %51

51:                                               ; preds = %45, %51
  %52 = phi i64 [ 0, %45 ], [ %64, %51 ]
  %53 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds float, ptr %50, i64 %52
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fcmp olt float %54, %56
  %58 = select i1 %57, float %54, float %56
  store float %58, ptr %53, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.BB, ptr %39, i64 0, i32 1, i64 %52
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %55, align 4, !tbaa !34
  %62 = fcmp ogt float %60, %61
  %63 = select i1 %62, float %60, float %61
  store float %63, ptr %59, align 4, !tbaa !34
  %64 = add nuw nsw i64 %52, 1
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %51, !llvm.loop !38

66:                                               ; preds = %51
  %67 = add nuw nsw i64 %46, 1
  %68 = icmp eq i64 %67, %38
  br i1 %68, label %69, label %45, !llvm.loop !67

69:                                               ; preds = %66, %69
  %70 = phi i64 [ %78, %69 ], [ 0, %66 ]
  %71 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.BBC, ptr %28, i64 %33, i32 1, i64 %70
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = fadd float %72, %74
  %76 = fmul float %75, 5.000000e-01
  %77 = getelementptr inbounds %struct.BBC, ptr %28, i64 %33, i32 2, i64 %70
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = add nuw nsw i64 %70, 1
  %79 = icmp eq i64 %78, 3
  br i1 %79, label %80, label %69, !llvm.loop !43

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.BBC, ptr %28, i64 %33, i32 2
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ 0, %80 ], [ %95, %82 ]
  %84 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = getelementptr inbounds float, ptr %81, i64 %83
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = fcmp olt float %85, %87
  %89 = select i1 %88, float %85, float %87
  store float %89, ptr %84, align 4, !tbaa !34
  %90 = getelementptr inbounds %struct.BB, ptr %7, i64 0, i32 1, i64 %83
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = load float, ptr %86, align 4, !tbaa !34
  %93 = fcmp ogt float %91, %92
  %94 = select i1 %93, float %91, float %92
  store float %94, ptr %90, align 4, !tbaa !34
  %95 = add nuw nsw i64 %83, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %82, !llvm.loop !38

97:                                               ; preds = %82
  %98 = add nuw nsw i64 %33, 1
  %99 = icmp eq i64 %98, %31
  br i1 %99, label %100, label %32, !llvm.loop !68

100:                                              ; preds = %97, %6
  %101 = icmp eq i32 %3, 0
  br i1 %101, label %141, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !69
  %105 = icmp eq i32 %104, %3
  br i1 %105, label %139, label %106

106:                                              ; preds = %102
  store i32 %3, ptr %103, align 8, !tbaa !69
  %107 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %111(ptr noundef nonnull %108) #18
  br label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !70
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %117(ptr noundef nonnull %114) #18
  br label %118

118:                                              ; preds = %116, %112
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %120 = shl nsw i64 %26, 2
  %121 = tail call ptr %119(i64 noundef %120, ptr noundef nonnull @.str.9) #18
  store ptr %121, ptr %113, align 8, !tbaa !70
  %122 = icmp sgt i32 %3, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = zext nneg i32 %3 to i64
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi i64 [ 0, %123 ], [ %129, %125 ]
  %127 = getelementptr inbounds i32, ptr %121, i64 %126
  %128 = trunc i64 %126 to i32
  store i32 %128, ptr %127, align 4, !tbaa !52
  %129 = add nuw nsw i64 %126, 1
  %130 = icmp eq i64 %129, %124
  br i1 %130, label %131, label %125, !llvm.loop !71

131:                                              ; preds = %125, %118
  %132 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 0, ptr %132, align 4, !tbaa !51
  %133 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !44
  %135 = icmp slt i32 %134, 100
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  store i32 100, ptr %133, align 8, !tbaa !44
  %137 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %138 = tail call ptr %137(i64 noundef 18400, ptr noundef nonnull @.str.10) #18
  store ptr %138, ptr %107, align 8, !tbaa !49
  br label %139

139:                                              ; preds = %102, %131, %136
  %140 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 1, ptr %140, align 4, !tbaa !51
  call fastcc void @build_sub(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %28, i32 noundef 0, i32 noundef %3)
  br label %141

141:                                              ; preds = %139, %100
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %142(ptr noundef %28) #18
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %144 = load ptr, ptr %16, align 8, !tbaa !59
  call void %143(ptr noundef %144) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_build_grids(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #4 {
  %9 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !72
  store i32 1, ptr %0, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  store ptr %1, ptr %12, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  store ptr %2, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  store ptr %5, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  store ptr %6, ptr %15, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 17
  store i32 %3, ptr %16, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 4 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !78
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  store ptr %7, ptr %18, align 8, !tbaa !79
  %19 = add nsw i32 %11, -1
  %20 = mul nsw i32 %19, %19
  %21 = udiv i32 10000, %20
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 1)
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 %22, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %25, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %9, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.BB, ptr %9, i64 0, i32 1
  %27 = getelementptr inbounds %struct.BB, ptr %9, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.BB, ptr %9, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %28, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %26, align 4, !tbaa !34
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %30 = sext i32 %3 to i64
  %31 = mul nsw i64 %30, 36
  %32 = tail call ptr %29(i64 noundef %31, ptr noundef nonnull @.str.2) #18
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %8
  %35 = mul i32 %11, %11
  %36 = icmp eq i32 %11, 0
  %37 = getelementptr inbounds %struct.CCGKey, ptr %4, i64 0, i32 1
  %38 = tail call i32 @llvm.umax.i32(i32 %35, i32 1)
  %39 = zext nneg i32 %3 to i64
  %40 = zext i32 %38 to i64
  br label %41

41:                                               ; preds = %34, %105
  %42 = phi i64 [ 0, %34 ], [ %106, %105 ]
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.BBC, ptr %32, i64 %42
  %46 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %47, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %45, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.BB, ptr %45, i64 0, i32 1
  %49 = getelementptr inbounds %struct.BB, ptr %45, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.BB, ptr %45, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %50, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %48, align 4, !tbaa !34
  br i1 %36, label %76, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %37, align 4, !tbaa !80
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %51, %73
  %55 = phi i64 [ 0, %51 ], [ %74, %73 ]
  %56 = mul nsw i64 %55, %53
  %57 = getelementptr inbounds i8, ptr %44, i64 %56
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi i64 [ 0, %54 ], [ %71, %58 ]
  %60 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %57, i64 %59
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fcmp olt float %61, %63
  %65 = select i1 %64, float %61, float %63
  store float %65, ptr %60, align 4, !tbaa !34
  %66 = getelementptr inbounds %struct.BB, ptr %45, i64 0, i32 1, i64 %59
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = load float, ptr %62, align 4, !tbaa !34
  %69 = fcmp ogt float %67, %68
  %70 = select i1 %69, float %67, float %68
  store float %70, ptr %66, align 4, !tbaa !34
  %71 = add nuw nsw i64 %59, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %58, !llvm.loop !38

73:                                               ; preds = %58
  %74 = add nuw nsw i64 %55, 1
  %75 = icmp eq i64 %74, %40
  br i1 %75, label %76, label %54, !llvm.loop !81

76:                                               ; preds = %73, %41
  br label %77

77:                                               ; preds = %76, %77
  %78 = phi i64 [ %86, %77 ], [ 0, %76 ]
  %79 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.BBC, ptr %32, i64 %42, i32 1, i64 %78
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = fadd float %80, %82
  %84 = fmul float %83, 5.000000e-01
  %85 = getelementptr inbounds %struct.BBC, ptr %32, i64 %42, i32 2, i64 %78
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = add nuw nsw i64 %78, 1
  %87 = icmp eq i64 %86, 3
  br i1 %87, label %88, label %77, !llvm.loop !43

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.BBC, ptr %32, i64 %42, i32 2
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %103, %90 ]
  %92 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %89, i64 %91
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fcmp olt float %93, %95
  %97 = select i1 %96, float %93, float %95
  store float %97, ptr %92, align 4, !tbaa !34
  %98 = getelementptr inbounds %struct.BB, ptr %9, i64 0, i32 1, i64 %91
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = load float, ptr %94, align 4, !tbaa !34
  %101 = fcmp ogt float %99, %100
  %102 = select i1 %101, float %99, float %100
  store float %102, ptr %98, align 4, !tbaa !34
  %103 = add nuw nsw i64 %91, 1
  %104 = icmp eq i64 %103, 3
  br i1 %104, label %105, label %90, !llvm.loop !38

105:                                              ; preds = %90
  %106 = add nuw nsw i64 %42, 1
  %107 = icmp eq i64 %106, %39
  br i1 %107, label %108, label %41, !llvm.loop !82

108:                                              ; preds = %105, %8
  %109 = icmp eq i32 %3, 0
  br i1 %109, label %149, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 6
  %112 = load i32, ptr %111, align 8, !tbaa !69
  %113 = icmp eq i32 %112, %3
  br i1 %113, label %147, label %114

114:                                              ; preds = %110
  store i32 %3, ptr %111, align 8, !tbaa !69
  %115 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !49
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %119(ptr noundef nonnull %116) #18
  br label %120

120:                                              ; preds = %118, %114
  %121 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %125(ptr noundef nonnull %122) #18
  br label %126

126:                                              ; preds = %124, %120
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %128 = shl nsw i64 %30, 2
  %129 = tail call ptr %127(i64 noundef %128, ptr noundef nonnull @.str.9) #18
  store ptr %129, ptr %121, align 8, !tbaa !70
  %130 = icmp sgt i32 %3, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = zext nneg i32 %3 to i64
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %137, %133 ]
  %135 = getelementptr inbounds i32, ptr %129, i64 %134
  %136 = trunc i64 %134 to i32
  store i32 %136, ptr %135, align 4, !tbaa !52
  %137 = add nuw nsw i64 %134, 1
  %138 = icmp eq i64 %137, %132
  br i1 %138, label %139, label %133, !llvm.loop !71

139:                                              ; preds = %133, %126
  %140 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 0, ptr %140, align 4, !tbaa !51
  %141 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !44
  %143 = icmp slt i32 %142, 100
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  store i32 100, ptr %141, align 8, !tbaa !44
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %146 = tail call ptr %145(i64 noundef 18400, ptr noundef nonnull @.str.10) #18
  store ptr %146, ptr %115, align 8, !tbaa !49
  br label %147

147:                                              ; preds = %110, %139, %144
  %148 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 1, ptr %148, align 4, !tbaa !51
  call fastcc void @build_sub(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %9, ptr noundef %32, i32 noundef 0, i32 noundef %3)
  br label %149

149:                                              ; preds = %147, %108
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %150(ptr noundef %32) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pbvh_new() local_unnamed_addr #4 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %2 = tail call ptr %1(i64 noundef 208, ptr noundef nonnull @.str.3) #18
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %52
  %8 = phi i64 [ 0, %5 ], [ %53, %52 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 10
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @GPU_free_pbvh_buffers(ptr noundef nonnull %16) #18
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %24(ptr noundef nonnull %21) #18
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %30(ptr noundef nonnull %27) #18
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %36(ptr noundef nonnull %33) #18
  store ptr null, ptr %32, align 8, !tbaa !88
  br label %37

37:                                               ; preds = %31, %35
  %38 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @BLI_gset_free(ptr noundef nonnull %39, ptr noundef null) #18
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @BLI_gset_free(ptr noundef nonnull %44, ptr noundef null) #18
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @BLI_gset_free(ptr noundef nonnull %49, ptr noundef null) #18
  br label %52

52:                                               ; preds = %7, %51, %47
  %53 = add nuw nsw i64 %8, 1
  %54 = load i32, ptr %2, align 4, !tbaa !51
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %7, label %57, !llvm.loop !92

57:                                               ; preds = %52, %1
  %58 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %59 = load i8, ptr %58, align 8, !tbaa !93
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !58
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %66(ptr noundef nonnull %63) #18
  %67 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %71(ptr noundef nonnull %68) #18
  br label %72

72:                                               ; preds = %61, %70, %65, %57
  %73 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %77(ptr noundef nonnull %74) #18
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %83(ptr noundef nonnull %80) #18
  br label %84

84:                                               ; preds = %82, %78
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %85(ptr noundef %0) #18
  ret void
}

declare void @GPU_free_pbvh_buffers(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_node_layer_disp_free(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %6(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_free_layer_disp(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %15
  %8 = phi i64 [ 0, %5 ], [ %16, %15 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %14(ptr noundef nonnull %11) #18
  store ptr null, ptr %10, align 8, !tbaa !88
  br label %15

15:                                               ; preds = %7, %13
  %16 = add nuw nsw i64 %8, 1
  %17 = load i32, ptr %2, align 4, !tbaa !51
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %7, label %20, !llvm.loop !94

20:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = alloca %struct.PBVHIter, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %6) #18
  store ptr %0, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5
  %10 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 6
  store i32 100, ptr %11, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  store ptr %13, ptr %9, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 4
  store i32 1, ptr %15, align 8, !tbaa !104
  %16 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %5, %43
  %19 = phi ptr [ %47, %43 ], [ %16, %5 ]
  %20 = phi i32 [ %46, %43 ], [ 0, %5 ]
  %21 = phi i32 [ %45, %43 ], [ 0, %5 ]
  %22 = phi ptr [ %44, %43 ], [ null, %5 ]
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %19, i64 0, i32 10
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %18
  %28 = icmp eq i32 %21, %20
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = icmp eq i32 %21, 0
  %31 = shl nsw i32 %20, 1
  %32 = select i1 %30, i32 32, i32 %31
  %33 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !50
  %34 = sext i32 %32 to i64
  %35 = shl nsw i64 %34, 3
  %36 = call ptr %33(ptr noundef %22, i64 noundef %35, ptr noundef nonnull @__func__.BKE_pbvh_search_gather) #18
  br label %37

37:                                               ; preds = %29, %27
  %38 = phi ptr [ %36, %29 ], [ %22, %27 ]
  %39 = phi i32 [ %32, %29 ], [ %20, %27 ]
  %40 = sext i32 %21 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %19, ptr %41, align 8, !tbaa !50
  %42 = add nsw i32 %21, 1
  br label %43

43:                                               ; preds = %37, %18
  %44 = phi ptr [ %38, %37 ], [ %22, %18 ]
  %45 = phi i32 [ %42, %37 ], [ %21, %18 ]
  %46 = phi i32 [ %39, %37 ], [ %20, %18 ]
  %47 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %18, !llvm.loop !105

49:                                               ; preds = %43, %5
  %50 = phi ptr [ null, %5 ], [ %44, %43 ]
  %51 = phi i32 [ 0, %5 ], [ %45, %43 ]
  %52 = load i32, ptr %11, align 8, !tbaa !100
  %53 = icmp sgt i32 %52, 100
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %56 = load ptr, ptr %10, align 8, !tbaa !99
  call void %55(ptr noundef %56) #18
  br label %57

57:                                               ; preds = %49, %54
  %58 = icmp eq i32 %51, 0
  %59 = icmp ne ptr %50, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %62(ptr noundef nonnull %50) #18
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi ptr [ null, %61 ], [ %50, %57 ]
  store ptr %64, ptr %3, align 8, !tbaa !50
  store i32 %51, ptr %4, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %6) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pbvh_iter_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %128, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.PBVHIter, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %5, %125
  %11 = phi i32 [ %3, %5 ], [ %126, %125 ]
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %2, align 8, !tbaa !104
  %13 = load ptr, ptr %6, align 8, !tbaa !99
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.PBVHStack, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = icmp eq ptr %16, null
  br i1 %17, label %128, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.PBVHStack, ptr %13, i64 %14, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !103
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %128

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 8, !tbaa !97
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !tbaa !98
  %27 = tail call zeroext i8 %23(ptr noundef nonnull %16, ptr noundef %26) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %125, label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 0, i32 10
  %31 = load i16, ptr %30, align 8
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %128

34:                                               ; preds = %29
  %35 = load i32, ptr %2, align 8, !tbaa !104
  %36 = load i32, ptr %9, align 8, !tbaa !100
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = shl nsw i32 %36, 1
  store i32 %39, ptr %9, align 8, !tbaa !100
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 4
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.14) #18
  %44 = load ptr, ptr %6, align 8, !tbaa !99
  %45 = load i32, ptr %2, align 8, !tbaa !104
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %44, i64 %47, i1 false)
  %48 = load i32, ptr %9, align 8, !tbaa !100
  %49 = icmp sgt i32 %48, 100
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %52 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %51(ptr noundef %52) #18
  br label %53

53:                                               ; preds = %50, %38
  store ptr %43, ptr %6, align 8, !tbaa !99
  br label %54

54:                                               ; preds = %34, %53
  %55 = load ptr, ptr %6, align 8, !tbaa !99
  %56 = load i32, ptr %2, align 8, !tbaa !104
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.PBVHStack, ptr %55, i64 %57
  store ptr %16, ptr %58, align 8, !tbaa !101
  %59 = getelementptr inbounds %struct.PBVHStack, ptr %55, i64 %57, i32 1
  store i32 1, ptr %59, align 8, !tbaa !103
  %60 = add nsw i32 %56, 1
  store i32 %60, ptr %2, align 8, !tbaa !104
  %61 = load ptr, ptr %0, align 8, !tbaa !95
  %62 = getelementptr inbounds %struct.PBVH, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct.PBVHNode, ptr %16, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !106
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.PBVHNode, ptr %63, i64 %66
  %68 = getelementptr inbounds %struct.PBVHNode, ptr %67, i64 1
  %69 = load i32, ptr %9, align 8, !tbaa !100
  %70 = icmp eq i32 %60, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %54
  %72 = shl nsw i32 %69, 1
  store i32 %72, ptr %9, align 8, !tbaa !100
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %74 = sext i32 %72 to i64
  %75 = shl nsw i64 %74, 4
  %76 = tail call ptr %73(i64 noundef %75, ptr noundef nonnull @.str.14) #18
  %77 = load ptr, ptr %6, align 8, !tbaa !99
  %78 = load i32, ptr %2, align 8, !tbaa !104
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %77, i64 %80, i1 false)
  %81 = load i32, ptr %9, align 8, !tbaa !100
  %82 = icmp sgt i32 %81, 100
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %85 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %84(ptr noundef %85) #18
  br label %86

86:                                               ; preds = %83, %71
  store ptr %76, ptr %6, align 8, !tbaa !99
  br label %87

87:                                               ; preds = %54, %86
  %88 = load ptr, ptr %6, align 8, !tbaa !99
  %89 = load i32, ptr %2, align 8, !tbaa !104
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.PBVHStack, ptr %88, i64 %90
  store ptr %68, ptr %91, align 8, !tbaa !101
  %92 = getelementptr inbounds %struct.PBVHStack, ptr %88, i64 %90, i32 1
  store i32 0, ptr %92, align 8, !tbaa !103
  %93 = add nsw i32 %89, 1
  store i32 %93, ptr %2, align 8, !tbaa !104
  %94 = load ptr, ptr %0, align 8, !tbaa !95
  %95 = getelementptr inbounds %struct.PBVH, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = load i32, ptr %64, align 8, !tbaa !106
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.PBVHNode, ptr %96, i64 %98
  %100 = load i32, ptr %9, align 8, !tbaa !100
  %101 = icmp eq i32 %93, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %87
  %103 = shl nsw i32 %100, 1
  store i32 %103, ptr %9, align 8, !tbaa !100
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %105 = sext i32 %103 to i64
  %106 = shl nsw i64 %105, 4
  %107 = tail call ptr %104(i64 noundef %106, ptr noundef nonnull @.str.14) #18
  %108 = load ptr, ptr %6, align 8, !tbaa !99
  %109 = load i32, ptr %2, align 8, !tbaa !104
  %110 = sext i32 %109 to i64
  %111 = shl nsw i64 %110, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %107, ptr align 8 %108, i64 %111, i1 false)
  %112 = load i32, ptr %9, align 8, !tbaa !100
  %113 = icmp sgt i32 %112, 100
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %116 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %115(ptr noundef %116) #18
  br label %117

117:                                              ; preds = %114, %102
  store ptr %107, ptr %6, align 8, !tbaa !99
  br label %118

118:                                              ; preds = %87, %117
  %119 = load ptr, ptr %6, align 8, !tbaa !99
  %120 = load i32, ptr %2, align 8, !tbaa !104
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.PBVHStack, ptr %119, i64 %121
  store ptr %99, ptr %122, align 8, !tbaa !101
  %123 = getelementptr inbounds %struct.PBVHStack, ptr %119, i64 %121, i32 1
  store i32 0, ptr %123, align 8, !tbaa !103
  %124 = add nsw i32 %120, 1
  store i32 %124, ptr %2, align 8, !tbaa !104
  br label %125

125:                                              ; preds = %118, %25
  %126 = load i32, ptr %2, align 8, !tbaa !104
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %10, !llvm.loop !107

128:                                              ; preds = %10, %18, %29, %125, %1
  %129 = phi ptr [ null, %1 ], [ null, %10 ], [ %16, %18 ], [ %16, %29 ], [ null, %125 ]
  ret ptr %129
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_search_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.PBVHIter, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %6) #18
  store ptr %0, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5
  %10 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 6
  store i32 100, ptr %11, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  store ptr %13, ptr %9, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 4
  store i32 1, ptr %15, align 8, !tbaa !104
  %16 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %5, %25
  %19 = phi ptr [ %26, %25 ], [ %16, %5 ]
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %19, i64 0, i32 10
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void %3(ptr noundef nonnull %19, ptr noundef %4) #18
  br label %25

25:                                               ; preds = %24, %18
  %26 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !108

28:                                               ; preds = %25, %5
  %29 = load i32, ptr %11, align 8, !tbaa !100
  %30 = icmp sgt i32 %29, 100
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %33 = load ptr, ptr %10, align 8, !tbaa !99
  call void %32(ptr noundef %33) #18
  br label %34

34:                                               ; preds = %28, %31
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BKE_pbvh_node_get_tmin(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 11
  %3 = load float, ptr %2, align 4, !tbaa !109
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local void @pbvh_update_BB_redraw(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
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
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  br i1 %8, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %17, i64 0, i32 10
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call fastcc void @update_node_vb(ptr noundef %0, ptr noundef %17)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !110
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
  br i1 %43, label %44, label %14, !llvm.loop !112

44:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_node_vb(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.BB, align 4
  %4 = alloca %struct.PBVHVertexIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %6, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %9, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %7, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %184, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #18
  call void @pbvh_vertex_iter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0)
  %15 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 5
  store i32 0, ptr %15, align 4, !tbaa !113
  %16 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 12
  store i32 0, ptr %4, align 8, !tbaa !117
  %17 = load i32, ptr %16, align 8, !tbaa !118
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %183

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 6
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 11
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 15
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 4
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 2
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 3
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 1
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 7
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 8
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 10
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 13
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 14
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 16
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 22
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 25
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 17
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18, i32 0, i32 1
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 18
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 19, i32 0, i32 1
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 23
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 26
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 21
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 27
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %4, i64 0, i32 24
  br label %59

59:                                               ; preds = %19, %178
  %60 = phi i32 [ 0, %19 ], [ %180, %178 ]
  %61 = load ptr, ptr %20, align 8, !tbaa !119
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %21, align 4, !tbaa !120
  store i32 %64, ptr %22, align 4, !tbaa !121
  store i32 %64, ptr %23, align 8, !tbaa !122
  %65 = load ptr, ptr %24, align 8, !tbaa !123
  %66 = sext i32 %60 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !52
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %61, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !50
  store ptr %71, ptr %25, align 8, !tbaa !124
  br label %74

72:                                               ; preds = %59
  %73 = load i32, ptr %26, align 8, !tbaa !125
  store i32 %73, ptr %27, align 4, !tbaa !121
  store i32 1, ptr %28, align 8, !tbaa !122
  br label %74

74:                                               ; preds = %72, %63
  store i32 0, ptr %29, align 8, !tbaa !126
  %75 = load i32, ptr %30, align 8, !tbaa !122
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %178

77:                                               ; preds = %74, %173
  store i32 0, ptr %31, align 4, !tbaa !127
  %78 = load i32, ptr %32, align 4, !tbaa !121
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %173

80:                                               ; preds = %77, %166
  %81 = phi i32 [ %168, %166 ], [ 0, %77 ]
  %82 = load ptr, ptr %33, align 8, !tbaa !124
  %83 = icmp eq ptr %82, null
  br i1 %83, label %119, label %84

84:                                               ; preds = %80
  store ptr %82, ptr %35, align 8, !tbaa !128
  %85 = load ptr, ptr %34, align 8, !tbaa !129
  %86 = getelementptr inbounds %struct.CCGKey, ptr %85, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !130
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %82, i64 %88
  store ptr %89, ptr %36, align 8, !tbaa !131
  %90 = getelementptr inbounds %struct.CCGKey, ptr %85, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !132
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.CCGKey, ptr %85, i64 0, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !133
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %82, i64 %96
  br label %98

98:                                               ; preds = %84, %93
  %99 = phi ptr [ %97, %93 ], [ null, %84 ]
  store ptr %99, ptr %37, align 8, !tbaa !134
  %100 = getelementptr inbounds %struct.CCGKey, ptr %85, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !80
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %82, i64 %102
  store ptr %103, ptr %33, align 8, !tbaa !124
  %104 = load ptr, ptr %38, align 8, !tbaa !135
  %105 = icmp eq ptr %104, null
  br i1 %105, label %150, label %106

106:                                              ; preds = %98
  %107 = load i32, ptr %29, align 8, !tbaa !126
  %108 = load i32, ptr %39, align 4, !tbaa !120
  %109 = mul nsw i32 %108, %107
  %110 = add nsw i32 %109, %81
  %111 = ashr i32 %110, 5
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %104, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !52
  %115 = and i32 %110, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %150, label %166

119:                                              ; preds = %80
  %120 = load ptr, ptr %40, align 8, !tbaa !136
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %41, align 8, !tbaa !137
  %124 = sext i32 %81 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !52
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127
  store ptr %128, ptr %42, align 8, !tbaa !138
  store ptr %128, ptr %43, align 8, !tbaa !128
  %129 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127, i32 1
  store ptr %129, ptr %44, align 8, !tbaa !139
  %130 = load ptr, ptr %45, align 8, !tbaa !140
  %131 = icmp eq ptr %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %122
  %133 = getelementptr inbounds float, ptr %130, i64 %127
  store ptr %133, ptr %46, align 8, !tbaa !134
  br label %150

134:                                              ; preds = %119
  %135 = load ptr, ptr %47, align 8, !tbaa !141
  %136 = icmp eq ptr %135, null
  %137 = load ptr, ptr %51, align 8
  %138 = select i1 %136, ptr %137, ptr %135
  %139 = select i1 %136, ptr %52, ptr %49
  %140 = select i1 %136, ptr %50, ptr %48
  %141 = getelementptr inbounds %struct._gh_Entry, ptr %138, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !142
  store ptr %142, ptr %139, align 8, !tbaa !144
  call void @BLI_ghashIterator_step(ptr noundef nonnull %140) #18
  %143 = load ptr, ptr %53, align 8, !tbaa !144
  %144 = getelementptr inbounds %struct.BMVert, ptr %143, i64 0, i32 2
  store ptr %144, ptr %54, align 8, !tbaa !128
  %145 = getelementptr inbounds %struct.BMVert, ptr %143, i64 0, i32 3
  store ptr %145, ptr %55, align 8, !tbaa !131
  %146 = load ptr, ptr %143, align 8, !tbaa !145
  %147 = load i32, ptr %56, align 8, !tbaa !148
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %146, i64 %148
  store ptr %149, ptr %57, align 8, !tbaa !134
  br label %150

150:                                              ; preds = %134, %132, %122, %98, %106
  %151 = load ptr, ptr %58, align 8, !tbaa !128
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i64 [ 0, %150 ], [ %164, %152 ]
  %154 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %153
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = getelementptr inbounds float, ptr %151, i64 %153
  %157 = load float, ptr %156, align 4, !tbaa !34
  %158 = fcmp olt float %155, %157
  %159 = select i1 %158, float %155, float %157
  store float %159, ptr %154, align 4, !tbaa !34
  %160 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1, i64 %153
  %161 = load float, ptr %160, align 4, !tbaa !34
  %162 = fcmp ogt float %161, %157
  %163 = select i1 %162, float %161, float %157
  store float %163, ptr %160, align 4, !tbaa !34
  %164 = add nuw nsw i64 %153, 1
  %165 = icmp eq i64 %164, 3
  br i1 %165, label %166, label %152, !llvm.loop !38

166:                                              ; preds = %152, %106
  %167 = load i32, ptr %31, align 4, !tbaa !127
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %31, align 4, !tbaa !127
  %169 = load i32, ptr %15, align 4, !tbaa !113
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %15, align 4, !tbaa !113
  %171 = load i32, ptr %32, align 4, !tbaa !121
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %80, label %173, !llvm.loop !149

173:                                              ; preds = %166, %77
  %174 = load i32, ptr %29, align 8, !tbaa !126
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %29, align 8, !tbaa !126
  %176 = load i32, ptr %30, align 8, !tbaa !122
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %77, label %178, !llvm.loop !150

178:                                              ; preds = %173, %74
  %179 = load i32, ptr %4, align 8, !tbaa !117
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %4, align 8, !tbaa !117
  %181 = load i32, ptr %16, align 8, !tbaa !118
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %59, label %183, !llvm.loop !151

183:                                              ; preds = %178, %14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #18
  br label %226

184:                                              ; preds = %2
  %185 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !49
  %187 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !106
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.PBVHNode, ptr %186, i64 %189, i32 1
  br label %191

191:                                              ; preds = %184, %191
  %192 = phi i64 [ 0, %184 ], [ %205, %191 ]
  %193 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %192
  %194 = load float, ptr %193, align 4, !tbaa !34
  %195 = getelementptr inbounds [3 x float], ptr %190, i64 0, i64 %192
  %196 = load float, ptr %195, align 4, !tbaa !34
  %197 = fcmp olt float %194, %196
  %198 = select i1 %197, float %194, float %196
  store float %198, ptr %193, align 4, !tbaa !34
  %199 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1, i64 %192
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = getelementptr inbounds %struct.PBVHNode, ptr %186, i64 %189, i32 1, i32 1, i64 %192
  %202 = load float, ptr %201, align 4, !tbaa !34
  %203 = fcmp ogt float %200, %202
  %204 = select i1 %203, float %200, float %202
  store float %204, ptr %199, align 4, !tbaa !34
  %205 = add nuw nsw i64 %192, 1
  %206 = icmp eq i64 %205, 3
  br i1 %206, label %207, label %191, !llvm.loop !41

207:                                              ; preds = %191
  %208 = getelementptr %struct.PBVHNode, ptr %186, i64 %189
  %209 = getelementptr %struct.PBVHNode, ptr %208, i64 1, i32 1
  br label %210

210:                                              ; preds = %207, %210
  %211 = phi i64 [ 0, %207 ], [ %224, %210 ]
  %212 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %211
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = getelementptr inbounds [3 x float], ptr %209, i64 0, i64 %211
  %215 = load float, ptr %214, align 4, !tbaa !34
  %216 = fcmp olt float %213, %215
  %217 = select i1 %216, float %213, float %215
  store float %217, ptr %212, align 4, !tbaa !34
  %218 = getelementptr inbounds %struct.BB, ptr %3, i64 0, i32 1, i64 %211
  %219 = load float, ptr %218, align 4, !tbaa !34
  %220 = getelementptr %struct.PBVHNode, ptr %208, i64 1, i32 1, i32 1, i64 %211
  %221 = load float, ptr %220, align 4, !tbaa !34
  %222 = fcmp ogt float %219, %221
  %223 = select i1 %222, float %219, float %221
  store float %223, ptr %218, align 4, !tbaa !34
  %224 = add nuw nsw i64 %211, 1
  %225 = icmp eq i64 %224, 3
  br i1 %225, label %226, label %210, !llvm.loop !41

226:                                              ; preds = %210, %183
  %227 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %227, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %3
  %10 = sext i32 %1 to i64
  %11 = inttoptr i64 %10 to ptr
  call void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef nonnull @update_search_cb, ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %12 = and i32 %1, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !50
  %16 = load i32, ptr %5, align 4, !tbaa !52
  tail call fastcc void @pbvh_update_normals(ptr noundef %0, ptr noundef %15, i32 noundef %16, ptr noundef %2)
  br label %17

17:                                               ; preds = %14, %9
  %18 = and i32 %1, 44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !50
  %22 = load i32, ptr %5, align 4, !tbaa !52
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %1, 8
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  %31 = zext nneg i32 %22 to i64
  br label %32

32:                                               ; preds = %59, %24
  %33 = phi i64 [ 0, %24 ], [ %60, %59 ]
  %34 = getelementptr inbounds ptr, ptr %21, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  br i1 %26, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 10
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call fastcc void @update_node_vb(ptr noundef %0, ptr noundef %35)
  br label %42

42:                                               ; preds = %41, %36, %32
  br i1 %28, label %51, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 10
  %45 = load i16, ptr %44, align 8
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 2
  %50 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa.struct !110
  br label %51

51:                                               ; preds = %48, %43, %42
  br i1 %30, label %59, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 10
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 32
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = and i16 %54, -33
  store i16 %58, ptr %53, align 8
  br label %59

59:                                               ; preds = %57, %52, %51
  %60 = add nuw nsw i64 %33, 1
  %61 = icmp eq i64 %60, %31
  br i1 %61, label %62, label %32, !llvm.loop !112

62:                                               ; preds = %59, %20, %17
  %63 = and i32 %1, 12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8, !tbaa !49
  %67 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef %66, i32 noundef %1), !range !152
  br label %68

68:                                               ; preds = %65, %62
  %69 = load ptr, ptr %4, align 8, !tbaa !50
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %72(ptr noundef nonnull %69) #18
  br label %73

73:                                               ; preds = %68, %71, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @update_search_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #8 {
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

; Function Attrs: nounwind uwtable
define internal fastcc void @pbvh_update_normals(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  %6 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %6, label %191 [
    i32 2, label %7
    i32 0, label %8
  ]

7:                                                ; preds = %4
  tail call void @pbvh_bmesh_normals_update(ptr noundef %1, i32 noundef %2) #18
  br label %191

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 12
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.15) #18
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %23 = icmp eq ptr %3, null
  %24 = getelementptr inbounds float, ptr %5, i64 1
  %25 = getelementptr inbounds float, ptr %5, i64 2
  %26 = zext nneg i32 %2 to i64
  br label %32

27:                                               ; preds = %120, %8
  %28 = icmp sgt i32 %2, 0
  br i1 %28, label %29, label %189

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %31 = zext nneg i32 %2 to i64
  br label %123

32:                                               ; preds = %16, %120
  %33 = phi i64 [ 0, %16 ], [ %121, %120 ]
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 10
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %120, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = getelementptr inbounds %struct.PBVHNode, ptr %35, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !154
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %120

46:                                               ; preds = %40
  %47 = zext nneg i32 %44 to i64
  br label %48

48:                                               ; preds = %46, %117
  %49 = phi i64 [ 0, %46 ], [ %118, %117 ]
  %50 = load ptr, ptr %17, align 8, !tbaa !57
  %51 = getelementptr inbounds i32, ptr %42, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !52
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MFace, ptr %50, i64 %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %55 = getelementptr inbounds %struct.MFace, ptr %50, i64 %53, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !63
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 3, i64 4
  %59 = load i32, ptr %54, align 4, !tbaa !66
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MFace, ptr %50, i64 %53, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !155
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MFace, ptr %50, i64 %53, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !156
  %66 = zext i32 %65 to i64
  br i1 %57, label %75, label %67

67:                                               ; preds = %48
  %68 = load ptr, ptr %18, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.MVert, ptr %68, i64 %60
  %70 = getelementptr inbounds %struct.MVert, ptr %68, i64 %63
  %71 = getelementptr inbounds %struct.MVert, ptr %68, i64 %66
  %72 = zext i32 %56 to i64
  %73 = getelementptr inbounds %struct.MVert, ptr %68, i64 %72
  %74 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef nonnull %73) #18
  br label %81

75:                                               ; preds = %48
  %76 = load ptr, ptr %19, align 8, !tbaa !58
  %77 = getelementptr inbounds %struct.MVert, ptr %76, i64 %60
  %78 = getelementptr inbounds %struct.MVert, ptr %76, i64 %63
  %79 = getelementptr inbounds %struct.MVert, ptr %76, i64 %66
  %80 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %77, ptr noundef %78, ptr noundef %79) #18
  br label %81

81:                                               ; preds = %75, %67
  %82 = load ptr, ptr %20, align 8, !tbaa !58
  br label %83

83:                                               ; preds = %81, %104
  %84 = phi i64 [ 0, %81 ], [ %105, %104 ]
  %85 = getelementptr inbounds i32, ptr %54, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !52
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %82, i64 %87, i32 2
  %89 = load i8, ptr %88, align 2, !tbaa !157
  %90 = icmp sgt i8 %89, -1
  br i1 %90, label %104, label %91

91:                                               ; preds = %83
  %92 = load float, ptr %5, align 4, !tbaa !34
  %93 = getelementptr inbounds [3 x float], ptr %14, i64 %87
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = fadd float %92, %94
  store float %95, ptr %93, align 4, !tbaa !34
  %96 = load float, ptr %21, align 4, !tbaa !34
  %97 = getelementptr inbounds [3 x float], ptr %14, i64 %87, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = fadd float %96, %98
  store float %99, ptr %97, align 4, !tbaa !34
  %100 = load float, ptr %22, align 4, !tbaa !34
  %101 = getelementptr inbounds [3 x float], ptr %14, i64 %87, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = fadd float %100, %102
  store float %103, ptr %101, align 4, !tbaa !34
  br label %104

104:                                              ; preds = %91, %83
  %105 = add nuw nsw i64 %84, 1
  %106 = icmp eq i64 %105, %58
  br i1 %106, label %107, label %83, !llvm.loop !159

107:                                              ; preds = %104
  br i1 %23, label %117, label %108

108:                                              ; preds = %107
  %109 = load i32, ptr %51, align 4, !tbaa !52
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float], ptr %3, i64 %110
  %112 = load float, ptr %5, align 4, !tbaa !34
  store float %112, ptr %111, align 4, !tbaa !34
  %113 = load float, ptr %24, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %111, i64 1
  store float %113, ptr %114, align 4, !tbaa !34
  %115 = load float, ptr %25, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %111, i64 2
  store float %115, ptr %116, align 4, !tbaa !34
  br label %117

117:                                              ; preds = %108, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  %118 = add nuw nsw i64 %49, 1
  %119 = icmp eq i64 %118, %47
  br i1 %119, label %120, label %48, !llvm.loop !160

120:                                              ; preds = %117, %40, %32
  %121 = add nuw nsw i64 %33, 1
  %122 = icmp eq i64 %121, %26
  br i1 %122, label %27, label %32, !llvm.loop !161

123:                                              ; preds = %29, %186
  %124 = phi i64 [ 0, %29 ], [ %187, %186 ]
  %125 = getelementptr inbounds ptr, ptr %1, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  %127 = getelementptr inbounds %struct.PBVHNode, ptr %126, i64 0, i32 10
  %128 = load i16, ptr %127, align 8
  %129 = and i16 %128, 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %186, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.PBVHNode, ptr %126, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  %134 = getelementptr inbounds %struct.PBVHNode, ptr %126, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !162
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %183

137:                                              ; preds = %131
  %138 = zext nneg i32 %135 to i64
  br label %139

139:                                              ; preds = %137, %180
  %140 = phi i64 [ 0, %137 ], [ %181, %180 ]
  %141 = getelementptr inbounds i32, ptr %133, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !52
  %143 = load ptr, ptr %30, align 8, !tbaa !58
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.MVert, ptr %143, i64 %144, i32 2
  %146 = load i8, ptr %145, align 2, !tbaa !157
  %147 = icmp sgt i8 %146, -1
  br i1 %147, label %180, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds [3 x float], ptr %14, i64 %144
  %150 = load float, ptr %149, align 4, !tbaa !34
  %151 = getelementptr inbounds float, ptr %149, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = getelementptr inbounds float, ptr %149, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = fmul float %152, %152
  %156 = call float @llvm.fmuladd.f32(float %150, float %150, float %155)
  %157 = call float @llvm.fmuladd.f32(float %154, float %154, float %156)
  %158 = fcmp ogt float %157, 0x38AA95A5C0000000
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = call float @sqrtf(float noundef %157) #18
  %161 = fdiv float 1.000000e+00, %160
  %162 = fmul float %150, %161
  %163 = fmul float %152, %161
  %164 = fmul float %154, %161
  br label %165

165:                                              ; preds = %148, %159
  %166 = phi float [ %163, %159 ], [ 0.000000e+00, %148 ]
  %167 = phi float [ %162, %159 ], [ 0.000000e+00, %148 ]
  %168 = phi float [ %164, %159 ], [ 0.000000e+00, %148 ]
  %169 = getelementptr inbounds %struct.MVert, ptr %143, i64 %144, i32 1
  %170 = fmul float %167, 3.276700e+04
  %171 = fptosi float %170 to i16
  store i16 %171, ptr %169, align 2, !tbaa !163
  %172 = fmul float %166, 3.276700e+04
  %173 = fptosi float %172 to i16
  %174 = getelementptr inbounds i16, ptr %169, i64 1
  store i16 %173, ptr %174, align 2, !tbaa !163
  %175 = fmul float %168, 3.276700e+04
  %176 = fptosi float %175 to i16
  %177 = getelementptr inbounds i16, ptr %169, i64 2
  store i16 %176, ptr %177, align 2, !tbaa !163
  %178 = load i8, ptr %145, align 2, !tbaa !157
  %179 = and i8 %178, 127
  store i8 %179, ptr %145, align 2, !tbaa !157
  br label %180

180:                                              ; preds = %165, %139
  %181 = add nuw nsw i64 %140, 1
  %182 = icmp eq i64 %181, %138
  br i1 %182, label %183, label %139, !llvm.loop !164

183:                                              ; preds = %180, %131
  %184 = load i16, ptr %127, align 8
  %185 = and i16 %184, -3
  store i16 %185, ptr %127, align 8
  br label %186

186:                                              ; preds = %183, %123
  %187 = add nuw nsw i64 %124, 1
  %188 = icmp eq i64 %187, %31
  br i1 %188, label %189, label %123, !llvm.loop !165

189:                                              ; preds = %186, %27
  %190 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %190(ptr noundef %14) #18
  br label %191

191:                                              ; preds = %4, %189, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #4 {
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
  %16 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %17 = and i32 %2, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %4, align 8
  %21 = and i16 %20, 8
  %22 = zext nneg i16 %21 to i32
  %23 = or disjoint i32 %16, %22
  %24 = and i16 %20, -9
  store i16 %24, ptr %4, align 8
  br label %48

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !106
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.PBVHNode, ptr %27, i64 %30
  %32 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef %31, i32 noundef %2), !range !152
  %33 = load ptr, ptr %26, align 8, !tbaa !49
  %34 = load i32, ptr %28, align 8, !tbaa !106
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.PBVHNode, ptr %33, i64 %35
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %36, i64 1
  %38 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %2), !range !152
  %39 = or i32 %38, %32
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  tail call fastcc void @update_node_vb(ptr noundef %0, ptr noundef %1)
  br label %43

43:                                               ; preds = %42, %25
  %44 = icmp ult i32 %39, 8
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 2
  %47 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, i64 24, i1 false), !tbaa.struct !110
  br label %48

48:                                               ; preds = %45, %43, %15, %19
  %49 = phi i32 [ %23, %19 ], [ %16, %15 ], [ %39, %43 ], [ %39, %45 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_redraw_BB(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = alloca %struct.PBVHIter, align 8
  %5 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %7, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %10, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %8, align 4, !tbaa !34
  store ptr %0, ptr %4, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 5
  %13 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %12, ptr %13, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 6
  store i32 100, ptr %14, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  store ptr %16, ptr %12, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.PBVHIter, ptr %4, i64 0, i32 4
  store i32 1, ptr %18, align 8, !tbaa !104
  %19 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %3, %45
  %22 = phi ptr [ %46, %45 ], [ %19, %3 ]
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 10
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %43, %29 ]
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 %30
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp olt float %32, %34
  %36 = select i1 %35, float %32, float %34
  store float %36, ptr %31, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1, i64 %30
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 1, i32 1, i64 %30
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fcmp ogt float %38, %40
  %42 = select i1 %41, float %38, float %40
  store float %42, ptr %37, align 4, !tbaa !34
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %29, !llvm.loop !41

45:                                               ; preds = %29, %21
  %46 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %4)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %21, !llvm.loop !166

48:                                               ; preds = %45, %3
  %49 = load i32, ptr %14, align 8, !tbaa !100
  %50 = icmp sgt i32 %49, 100
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %53 = load ptr, ptr %13, align 8, !tbaa !99
  call void %52(ptr noundef %53) #18
  br label %54

54:                                               ; preds = %48, %51
  %55 = load float, ptr %5, align 4, !tbaa !34
  store float %55, ptr %1, align 4, !tbaa !34
  %56 = load float, ptr %7, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %1, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = load float, ptr %6, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %1, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = load float, ptr %8, align 4, !tbaa !34
  store float %60, ptr %2, align 4, !tbaa !34
  %61 = load float, ptr %10, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %2, i64 1
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = load float, ptr %9, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %2, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_get_grid_updates(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = alloca %struct.PBVHIter, align 8
  %6 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BKE_pbvh_get_grid_updates) #18
  store ptr %0, ptr %5, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %9, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 6
  store i32 100, ptr %11, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  store ptr %13, ptr %9, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.PBVHIter, ptr %5, i64 0, i32 4
  store i32 1, ptr %15, align 8, !tbaa !104
  %16 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %5)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  %20 = icmp eq i32 %1, 0
  br label %21

21:                                               ; preds = %18, %54
  %22 = phi ptr [ %16, %18 ], [ %55, %54 ]
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 10
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !154
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %22, i64 0, i32 4
  br label %33

33:                                               ; preds = %31, %45
  %34 = phi i64 [ 0, %31 ], [ %46, %45 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !75
  %36 = load ptr, ptr %32, align 8, !tbaa !153
  %37 = getelementptr inbounds i32, ptr %36, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !52
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %35, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef %41) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  call void @BLI_gset_insert(ptr noundef %7, ptr noundef %41) #18
  br label %45

45:                                               ; preds = %33, %44
  %46 = add nuw nsw i64 %34, 1
  %47 = load i32, ptr %28, align 8, !tbaa !154
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %33, label %50, !llvm.loop !167

50:                                               ; preds = %45, %27
  br i1 %20, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %23, align 8
  %53 = and i16 %52, -3
  store i16 %53, ptr %23, align 8
  br label %54

54:                                               ; preds = %50, %51, %21
  %55 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %5)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %21, !llvm.loop !168

57:                                               ; preds = %54, %4
  %58 = load i32, ptr %11, align 8, !tbaa !100
  %59 = icmp sgt i32 %58, 100
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %62 = load ptr, ptr %10, align 8, !tbaa !99
  call void %61(ptr noundef %62) #18
  br label %63

63:                                               ; preds = %57, %60
  %64 = call i32 @BLI_gset_size(ptr noundef %7) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, ptr %3, align 4, !tbaa !52
  store ptr null, ptr %2, align 8, !tbaa !50
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #18
  br label %86

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %69 = sext i32 %64 to i64
  %70 = shl nsw i64 %69, 3
  %71 = call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.4) #18
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %7) #18
  %72 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !141
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %67, %75
  %76 = phi ptr [ %83, %75 ], [ %73, %67 ]
  %77 = phi i32 [ %82, %75 ], [ 0, %67 ]
  %78 = getelementptr inbounds %struct._gh_Entry, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !142
  %80 = zext i32 %77 to i64
  %81 = getelementptr inbounds ptr, ptr %71, i64 %80
  store ptr %79, ptr %81, align 8, !tbaa !50
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #18
  %82 = add i32 %77, 1
  %83 = load ptr, ptr %72, align 8, !tbaa !141
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %75, !llvm.loop !169

85:                                               ; preds = %75, %67
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #18
  store i32 %64, ptr %3, align 4, !tbaa !52
  store ptr %71, ptr %2, align 8, !tbaa !50
  br label %86

86:                                               ; preds = %85, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %5) #18
  ret void
}

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_pbvh_type(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pbvh_bounding_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  store float %11, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  store float %19, ptr %2, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %2, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 0, i32 1, i32 1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  br label %29

25:                                               ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %27, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %25, %7
  %30 = phi float [ 0.000000e+00, %25 ], [ %24, %7 ]
  %31 = getelementptr inbounds float, ptr %2, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_grid_hidden(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_get_grid_key(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_get_bmesh(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_update(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 62
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_rebuild_draw(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 112
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_redraw(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 48
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_normals_update(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #10 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  store ptr %8, ptr %2, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %6, %4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  store ptr %13, ptr %3, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_node_num_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #4 {
  %5 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %5, label %43 [
    i32 1, label %6
    i32 0, label %16
    i32 2, label %29
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !171
  %11 = mul i32 %10, %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 %11, ptr %3, align 4, !tbaa !52
  br label %14

14:                                               ; preds = %13, %6
  %15 = icmp eq ptr %2, null
  br i1 %15, label %43, label %41

16:                                               ; preds = %4
  %17 = icmp eq ptr %3, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !162
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !172
  %23 = add i32 %22, %20
  store i32 %23, ptr %3, align 4, !tbaa !52
  br label %24

24:                                               ; preds = %18, %16
  %25 = icmp eq ptr %2, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !162
  br label %41

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = tail call i32 @BLI_gset_size(ptr noundef %31) #18
  %33 = icmp eq ptr %3, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = tail call i32 @BLI_gset_size(ptr noundef %36) #18
  %38 = add nsw i32 %37, %32
  store i32 %38, ptr %3, align 4, !tbaa !52
  br label %39

39:                                               ; preds = %34, %29
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39, %14, %26
  %42 = phi i32 [ %28, %26 ], [ %11, %14 ], [ %32, %39 ]
  store i32 %42, ptr %2, align 4, !tbaa !52
  br label %43

43:                                               ; preds = %41, %39, %24, %14, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_grids(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #10 {
  %9 = load i32, ptr %0, align 8, !tbaa !56
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
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  store ptr %14, ptr %2, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %12, %10
  %16 = icmp eq ptr %3, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !154
  store i32 %19, ptr %3, align 4, !tbaa !52
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq ptr %4, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !77
  store i32 %24, ptr %4, align 4, !tbaa !52
  br label %25

25:                                               ; preds = %22, %20
  %26 = icmp eq ptr %5, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !173
  store i32 %29, ptr %5, align 4, !tbaa !52
  br label %30

30:                                               ; preds = %27, %25
  %31 = icmp eq ptr %6, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  store ptr %34, ptr %6, align 8, !tbaa !50
  br label %35

35:                                               ; preds = %32, %30
  %36 = icmp eq ptr %7, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  br label %57

40:                                               ; preds = %8, %8
  %41 = icmp eq ptr %2, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store ptr null, ptr %2, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %42, %40
  %44 = icmp eq ptr %3, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  store i32 0, ptr %3, align 4, !tbaa !52
  br label %46

46:                                               ; preds = %45, %43
  %47 = icmp eq ptr %4, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  store i32 0, ptr %4, align 4, !tbaa !52
  br label %49

49:                                               ; preds = %48, %46
  %50 = icmp eq ptr %5, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 0, ptr %5, align 4, !tbaa !52
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp eq ptr %6, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  store ptr null, ptr %6, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %54, %52
  %56 = icmp eq ptr %7, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55, %37
  %58 = phi ptr [ %39, %37 ], [ null, %55 ]
  store ptr %58, ptr %7, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %57, %55, %35, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %1, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %2, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_original_BB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %1, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %2, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_get_proxies(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !174
  %6 = icmp sgt i32 %5, 0
  %7 = icmp eq ptr %1, null
  br i1 %6, label %8, label %14

8:                                                ; preds = %3
  br i1 %7, label %12, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  store ptr %11, ptr %1, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %9, %8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %20, label %18

14:                                               ; preds = %3
  br i1 %7, label %16, label %15

15:                                               ; preds = %14
  store ptr null, ptr %1, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %15, %14
  %17 = icmp eq ptr %2, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %5, %12 ], [ 0, %16 ]
  store i32 %19, ptr %2, align 4, !tbaa !52
  br label %20

20:                                               ; preds = %18, %16, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_raycast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #4 {
  %7 = alloca %struct.PBVHIter, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.RaycastData, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #18
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4) #18
  %10 = getelementptr inbounds %struct.RaycastData, ptr %9, i64 0, i32 1
  store i8 %5, ptr %10, align 4, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %7) #18
  store ptr %0, ptr %7, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 1
  store ptr @ray_aabb_intersect, ptr %11, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 2
  store ptr %9, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 5
  %14 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 6
  store i32 100, ptr %15, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  store ptr %17, ptr %13, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 4
  store i32 1, ptr %19, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %123, %6
  %21 = phi ptr [ null, %6 ], [ %124, %123 ]
  %22 = icmp eq ptr %21, null
  br label %23

23:                                               ; preds = %127, %20
  %24 = load i32, ptr %19, align 8, !tbaa !104
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %115, label %26

26:                                               ; preds = %23, %41
  %27 = phi i32 [ %42, %41 ], [ %24, %23 ]
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %19, align 8, !tbaa !104
  %29 = load ptr, ptr %14, align 8, !tbaa !99
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.PBVHStack, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = icmp eq ptr %32, null
  br i1 %33, label %115, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %11, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %12, align 8, !tbaa !98
  %39 = call zeroext i8 %35(ptr noundef nonnull %32, ptr noundef %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %108
  %42 = load i32, ptr %19, align 8, !tbaa !104
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %115, label %26, !llvm.loop !179

44:                                               ; preds = %37, %34
  %45 = getelementptr inbounds %struct.PBVHNode, ptr %32, i64 0, i32 10
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %115

49:                                               ; preds = %44
  %50 = load ptr, ptr %7, align 8, !tbaa !95
  %51 = getelementptr inbounds %struct.PBVH, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.PBVHNode, ptr %32, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !106
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.PBVHNode, ptr %52, i64 %55
  %57 = getelementptr inbounds %struct.PBVHNode, ptr %56, i64 1
  %58 = load i32, ptr %19, align 8, !tbaa !104
  %59 = load i32, ptr %15, align 8, !tbaa !100
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %49
  %62 = shl nsw i32 %59, 1
  store i32 %62, ptr %15, align 8, !tbaa !100
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %64 = sext i32 %62 to i64
  %65 = shl nsw i64 %64, 4
  %66 = call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.14) #18
  %67 = load ptr, ptr %14, align 8, !tbaa !99
  %68 = load i32, ptr %19, align 8, !tbaa !104
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %66, ptr align 8 %67, i64 %70, i1 false)
  %71 = load i32, ptr %15, align 8, !tbaa !100
  %72 = icmp sgt i32 %71, 100
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %75 = load ptr, ptr %14, align 8, !tbaa !99
  call void %74(ptr noundef %75) #18
  br label %76

76:                                               ; preds = %73, %61
  store ptr %66, ptr %14, align 8, !tbaa !99
  br label %77

77:                                               ; preds = %76, %49
  %78 = load ptr, ptr %14, align 8, !tbaa !99
  %79 = load i32, ptr %19, align 8, !tbaa !104
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.PBVHStack, ptr %78, i64 %80
  store ptr %57, ptr %81, align 8, !tbaa !101
  %82 = getelementptr inbounds %struct.PBVHStack, ptr %78, i64 %80, i32 1
  store i32 0, ptr %82, align 8, !tbaa !103
  %83 = add nsw i32 %79, 1
  store i32 %83, ptr %19, align 8, !tbaa !104
  %84 = load ptr, ptr %7, align 8, !tbaa !95
  %85 = getelementptr inbounds %struct.PBVH, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !49
  %87 = load i32, ptr %53, align 8, !tbaa !106
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.PBVHNode, ptr %86, i64 %88
  %90 = load i32, ptr %15, align 8, !tbaa !100
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %77
  %93 = shl nsw i32 %90, 1
  store i32 %93, ptr %15, align 8, !tbaa !100
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %95 = sext i32 %93 to i64
  %96 = shl nsw i64 %95, 4
  %97 = call ptr %94(i64 noundef %96, ptr noundef nonnull @.str.14) #18
  %98 = load ptr, ptr %14, align 8, !tbaa !99
  %99 = load i32, ptr %19, align 8, !tbaa !104
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %97, ptr align 8 %98, i64 %101, i1 false)
  %102 = load i32, ptr %15, align 8, !tbaa !100
  %103 = icmp sgt i32 %102, 100
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %106 = load ptr, ptr %14, align 8, !tbaa !99
  call void %105(ptr noundef %106) #18
  br label %107

107:                                              ; preds = %104, %92
  store ptr %97, ptr %14, align 8, !tbaa !99
  br label %108

108:                                              ; preds = %107, %77
  %109 = load ptr, ptr %14, align 8, !tbaa !99
  %110 = load i32, ptr %19, align 8, !tbaa !104
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.PBVHStack, ptr %109, i64 %111
  store ptr %89, ptr %112, align 8, !tbaa !101
  %113 = getelementptr inbounds %struct.PBVHStack, ptr %109, i64 %111, i32 1
  store i32 0, ptr %113, align 8, !tbaa !103
  %114 = add nsw i32 %110, 1
  store i32 %114, ptr %19, align 8, !tbaa !104
  br label %41

115:                                              ; preds = %41, %26, %44, %23
  %116 = phi ptr [ null, %23 ], [ null, %41 ], [ null, %26 ], [ %32, %44 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.PBVHNode, ptr %116, i64 0, i32 10
  %120 = load i16, ptr %119, align 8
  %121 = and i16 %120, 1
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19
  store ptr %116, ptr %124, align 8, !tbaa !180
  %125 = getelementptr inbounds %struct.node_tree, ptr %124, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %125, i8 0, i64 16, i1 false)
  br i1 %22, label %20, label %126, !llvm.loop !182

126:                                              ; preds = %123
  call fastcc void @node_tree_insert(ptr noundef nonnull %21, ptr noundef nonnull %124)
  br label %127

127:                                              ; preds = %126, %118
  br label %23, !llvm.loop !182

128:                                              ; preds = %115
  %129 = load i32, ptr %15, align 8, !tbaa !100
  %130 = icmp sgt i32 %129, 100
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %133 = load ptr, ptr %14, align 8, !tbaa !99
  call void %132(ptr noundef %133) #18
  br label %134

134:                                              ; preds = %131, %128
  %135 = icmp eq ptr %21, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store float 0x47EFFFFFE0000000, ptr %8, align 4, !tbaa !34
  call fastcc void @traverse_tree(ptr noundef nonnull %21, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8)
  call fastcc void @free_tree(ptr noundef nonnull %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  br label %137

137:                                              ; preds = %134, %136
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #18
  ret void
}

declare void @isect_ray_aabb_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ray_aabb_intersect(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.RaycastData, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4, !tbaa !176
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = getelementptr inbounds float, ptr %3, i64 2
  %10 = getelementptr inbounds float, ptr %4, i64 1
  br i1 %7, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %8, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %9, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  store float %19, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  store float %21, ptr %10, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 2, i32 1, i64 2
  br label %35

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  store float %25, ptr %3, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  store float %27, ptr %8, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  store float %29, ptr %9, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %4, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  store float %33, ptr %10, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 2
  br label %35

35:                                               ; preds = %23, %11
  %36 = phi ptr [ %34, %23 ], [ %22, %11 ]
  %37 = getelementptr inbounds float, ptr %4, i64 2
  %38 = load float, ptr %36, align 4, !tbaa !34
  store float %38, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 11
  %40 = call zeroext i8 @isect_ray_aabb(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %39) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i8 %40
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ray_face_intersection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) local_unnamed_addr #4 {
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %9 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #18
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
  %18 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load float, ptr %8, align 4, !tbaa !34
  %22 = load float, ptr %6, align 4, !tbaa !34
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %11
  %25 = load float, ptr %8, align 4, !tbaa !34
  store float %25, ptr %6, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %15, %17, %20, %24
  %27 = phi i8 [ 1, %24 ], [ 0, %20 ], [ 0, %17 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  ret i8 %27
}

declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_pbvh_node_raycast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %274

16:                                               ; preds = %7
  %17 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %17, label %274 [
    i32 0, label %18
    i32 1, label %126
    i32 2, label %271
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !154
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %274

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 9
  %29 = icmp eq ptr %2, null
  %30 = zext nneg i32 %24 to i64
  br label %31

31:                                               ; preds = %26, %122
  %32 = phi i64 [ 0, %26 ], [ %124, %122 ]
  %33 = phi i8 [ 0, %26 ], [ %123, %122 ]
  %34 = load ptr, ptr %27, align 8, !tbaa !57
  %35 = getelementptr inbounds i32, ptr %22, i64 %32
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MFace, ptr %34, i64 %37
  %39 = load ptr, ptr %28, align 8, !tbaa !87
  %40 = getelementptr inbounds [4 x i32], ptr %39, i64 %32
  %41 = call zeroext i8 @paint_is_face_hidden(ptr noundef %38, ptr noundef %20) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %122

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.MFace, ptr %34, i64 %37, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !63
  %46 = icmp eq i32 %45, 0
  br i1 %29, label %85, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %40, align 4, !tbaa !52
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x float], ptr %2, i64 %49
  %51 = getelementptr inbounds i32, ptr %40, i64 1
  %52 = load i32, ptr %51, align 4, !tbaa !52
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x float], ptr %2, i64 %53
  %55 = getelementptr inbounds i32, ptr %40, i64 2
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float], ptr %2, i64 %57
  br i1 %46, label %64, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds i32, ptr %40, i64 3
  %61 = load i32, ptr %60, align 4, !tbaa !52
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x float], ptr %2, i64 %62
  br label %64

64:                                               ; preds = %59, %47
  %65 = phi ptr [ %63, %59 ], [ null, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %66 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %50, ptr noundef nonnull %54, ptr noundef nonnull %58, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load float, ptr %11, align 4, !tbaa !34
  %70 = load float, ptr %6, align 4, !tbaa !34
  %71 = fcmp olt float %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %68, %64
  %73 = icmp eq ptr %65, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  %75 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %50, ptr noundef nonnull %58, ptr noundef nonnull %65, ptr noundef nonnull %11, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load float, ptr %11, align 4, !tbaa !34
  %79 = load float, ptr %6, align 4, !tbaa !34
  %80 = fcmp olt float %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %68
  %82 = load float, ptr %11, align 4, !tbaa !34
  store float %82, ptr %6, align 4, !tbaa !34
  br label %83

83:                                               ; preds = %72, %74, %77, %81
  %84 = phi i8 [ 1, %81 ], [ 0, %77 ], [ 0, %74 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  br label %119

85:                                               ; preds = %43
  %86 = load i32, ptr %38, align 4, !tbaa !66
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %20, i64 %87
  %89 = getelementptr inbounds %struct.MFace, ptr %34, i64 %37, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !155
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MVert, ptr %20, i64 %91
  %93 = getelementptr inbounds %struct.MFace, ptr %34, i64 %37, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !156
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.MVert, ptr %20, i64 %95
  %97 = zext i32 %45 to i64
  %98 = getelementptr inbounds %struct.MVert, ptr %20, i64 %97
  %99 = select i1 %46, ptr null, ptr %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %100 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef %88, ptr noundef %92, ptr noundef %96, ptr noundef nonnull %10, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %85
  %103 = load float, ptr %10, align 4, !tbaa !34
  %104 = load float, ptr %6, align 4, !tbaa !34
  %105 = fcmp olt float %103, %104
  br i1 %105, label %115, label %106

106:                                              ; preds = %102, %85
  %107 = icmp eq ptr %99, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  %109 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef %88, ptr noundef %96, ptr noundef nonnull %99, ptr noundef nonnull %10, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load float, ptr %10, align 4, !tbaa !34
  %113 = load float, ptr %6, align 4, !tbaa !34
  %114 = fcmp olt float %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111, %102
  %116 = load float, ptr %10, align 4, !tbaa !34
  store float %116, ptr %6, align 4, !tbaa !34
  br label %117

117:                                              ; preds = %106, %108, %111, %115
  %118 = phi i8 [ 1, %115 ], [ 0, %111 ], [ 0, %108 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  br label %119

119:                                              ; preds = %117, %83
  %120 = phi i8 [ %84, %83 ], [ %118, %117 ]
  %121 = or i8 %120, %33
  br label %122

122:                                              ; preds = %119, %31
  %123 = phi i8 [ %121, %119 ], [ %33, %31 ]
  %124 = add nuw nsw i64 %32, 1
  %125 = icmp eq i64 %124, %30
  br i1 %125, label %274, label %31, !llvm.loop !183

126:                                              ; preds = %16
  %127 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !154
  %129 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !173
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %132, label %274

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %134 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %135 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %136 = add i32 %130, -1
  %137 = icmp sgt i32 %130, 1
  %138 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 1
  %139 = mul nsw i32 %130, %130
  %140 = zext nneg i32 %139 to i64
  %141 = zext nneg i32 %128 to i64
  %142 = zext i32 %136 to i64
  %143 = zext i32 %136 to i64
  br label %144

144:                                              ; preds = %132, %266
  %145 = phi i64 [ 0, %132 ], [ %269, %266 ]
  %146 = phi ptr [ %2, %132 ], [ %268, %266 ]
  %147 = phi i8 [ 0, %132 ], [ %267, %266 ]
  %148 = load ptr, ptr %133, align 8, !tbaa !73
  %149 = load ptr, ptr %134, align 8, !tbaa !153
  %150 = getelementptr inbounds i32, ptr %149, i64 %145
  %151 = load i32, ptr %150, align 4, !tbaa !52
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %148, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !50
  %155 = icmp eq ptr %154, null
  br i1 %155, label %266, label %156

156:                                              ; preds = %144
  %157 = load ptr, ptr %135, align 8, !tbaa !79
  %158 = getelementptr inbounds ptr, ptr %157, i64 %152
  %159 = load ptr, ptr %158, align 8, !tbaa !50
  br i1 %137, label %160, label %261

160:                                              ; preds = %156
  %161 = icmp eq ptr %159, null
  %162 = icmp eq ptr %146, null
  br label %163

163:                                              ; preds = %160, %259
  %164 = phi i64 [ 0, %160 ], [ %166, %259 ]
  %165 = phi i8 [ %147, %160 ], [ %256, %259 ]
  %166 = add nuw nsw i64 %164, 1
  %167 = trunc i64 %166 to i32
  %168 = mul i32 %130, %167
  %169 = zext i32 %168 to i64
  %170 = trunc i64 %164 to i32
  %171 = mul i32 %130, %170
  %172 = zext i32 %171 to i64
  %173 = trunc i64 %164 to i32
  %174 = trunc i64 %164 to i32
  %175 = trunc i64 %166 to i32
  br label %176

176:                                              ; preds = %163, %255
  %177 = phi i64 [ 0, %163 ], [ %257, %255 ]
  %178 = phi i8 [ %165, %163 ], [ %256, %255 ]
  br i1 %161, label %183, label %179

179:                                              ; preds = %176
  %180 = trunc i64 %177 to i32
  %181 = call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %159, i32 noundef %130, i32 noundef %180, i32 noundef %173) #18
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %255

183:                                              ; preds = %179, %176
  br i1 %162, label %211, label %184

184:                                              ; preds = %183
  %185 = add nuw nsw i64 %177, %172
  %186 = getelementptr inbounds [3 x float], ptr %146, i64 %185
  %187 = add nuw nsw i64 %185, 1
  %188 = getelementptr inbounds [3 x float], ptr %146, i64 %187
  %189 = add nuw nsw i64 %177, %169
  %190 = add nuw nsw i64 %189, 1
  %191 = getelementptr inbounds [3 x float], ptr %146, i64 %190
  %192 = getelementptr inbounds [3 x float], ptr %146, i64 %189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %193 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %186, ptr noundef nonnull %188, ptr noundef nonnull %191, ptr noundef nonnull %9, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %184
  %196 = load float, ptr %9, align 4, !tbaa !34
  %197 = load float, ptr %6, align 4, !tbaa !34
  %198 = fcmp olt float %196, %197
  br i1 %198, label %206, label %199

199:                                              ; preds = %184, %195
  %200 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %186, ptr noundef nonnull %191, ptr noundef nonnull %192, ptr noundef nonnull %9, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load float, ptr %9, align 4, !tbaa !34
  %204 = load float, ptr %6, align 4, !tbaa !34
  %205 = fcmp olt float %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202, %195
  %207 = load float, ptr %9, align 4, !tbaa !34
  store float %207, ptr %6, align 4, !tbaa !34
  br label %208

208:                                              ; preds = %199, %202, %206
  %209 = phi i8 [ 1, %206 ], [ 0, %202 ], [ 0, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  %210 = or i8 %209, %178
  br label %255

211:                                              ; preds = %183
  %212 = load i32, ptr %129, align 4, !tbaa !72
  %213 = mul nsw i32 %212, %174
  %214 = trunc i64 %177 to i32
  %215 = add nsw i32 %213, %214
  %216 = load i32, ptr %138, align 4, !tbaa !80
  %217 = mul nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %154, i64 %218
  %220 = add nuw nsw i64 %177, 1
  %221 = trunc i64 %220 to i32
  %222 = add nsw i32 %213, %221
  %223 = mul nsw i32 %222, %216
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %154, i64 %224
  %226 = mul nsw i32 %212, %175
  %227 = trunc i64 %220 to i32
  %228 = add nsw i32 %226, %227
  %229 = mul nsw i32 %228, %216
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %154, i64 %230
  %232 = trunc i64 %177 to i32
  %233 = add nsw i32 %226, %232
  %234 = mul nsw i32 %233, %216
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %154, i64 %235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %237 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %219, ptr noundef nonnull %225, ptr noundef nonnull %231, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %211
  %240 = load float, ptr %8, align 4, !tbaa !34
  %241 = load float, ptr %6, align 4, !tbaa !34
  %242 = fcmp olt float %240, %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %211, %239
  %244 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %219, ptr noundef nonnull %231, ptr noundef nonnull %236, ptr noundef nonnull %8, ptr noundef null, float noundef 0x3FB99999A0000000) #18
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = load float, ptr %8, align 4, !tbaa !34
  %248 = load float, ptr %6, align 4, !tbaa !34
  %249 = fcmp olt float %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %246, %239
  %251 = load float, ptr %8, align 4, !tbaa !34
  store float %251, ptr %6, align 4, !tbaa !34
  br label %252

252:                                              ; preds = %243, %246, %250
  %253 = phi i8 [ 1, %250 ], [ 0, %246 ], [ 0, %243 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  %254 = or i8 %253, %178
  br label %255

255:                                              ; preds = %252, %208, %179
  %256 = phi i8 [ %178, %179 ], [ %210, %208 ], [ %254, %252 ]
  %257 = add nuw nsw i64 %177, 1
  %258 = icmp eq i64 %257, %143
  br i1 %258, label %259, label %176, !llvm.loop !184

259:                                              ; preds = %255
  %260 = icmp eq i64 %166, %142
  br i1 %260, label %261, label %163, !llvm.loop !185

261:                                              ; preds = %259, %156
  %262 = phi i8 [ %147, %156 ], [ %256, %259 ]
  %263 = icmp eq ptr %146, null
  %264 = getelementptr inbounds [3 x float], ptr %146, i64 %140
  %265 = select i1 %263, ptr null, ptr %264
  br label %266

266:                                              ; preds = %261, %144
  %267 = phi i8 [ %262, %261 ], [ %147, %144 ]
  %268 = phi ptr [ %265, %261 ], [ %146, %144 ]
  %269 = add nuw nsw i64 %145, 1
  %270 = icmp eq i64 %269, %141
  br i1 %270, label %274, label %144, !llvm.loop !186

271:                                              ; preds = %16
  %272 = trunc i32 %3 to i8
  %273 = tail call zeroext i8 @pbvh_bmesh_node_raycast(ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %272) #18
  br label %274

274:                                              ; preds = %266, %122, %126, %18, %271, %16, %7
  %275 = phi i8 [ 0, %7 ], [ 0, %16 ], [ %273, %271 ], [ 0, %18 ], [ 0, %126 ], [ %123, %122 ], [ %267, %266 ]
  ret i8 %275
}

declare zeroext i8 @pbvh_bmesh_node_raycast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_raycast_project_ray_root(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.IsectRayAABBData, align 4
  %12 = alloca [3 x float], align 4
  %13 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %114, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  %17 = icmp eq i8 %1, 0
  %18 = getelementptr inbounds float, ptr %8, i64 1
  %19 = getelementptr inbounds float, ptr %8, i64 2
  %20 = getelementptr inbounds float, ptr %9, i64 1
  %21 = getelementptr inbounds float, ptr %9, i64 2
  br i1 %17, label %34, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %8, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2, i32 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  store float %26, ptr %18, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2, i32 0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  store float %28, ptr %19, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  store float %30, ptr %9, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2, i32 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  store float %32, ptr %20, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 2, i32 1, i64 2
  br label %46

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  store float %36, ptr %8, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1, i32 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  store float %38, ptr %18, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1, i32 0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %19, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  store float %42, ptr %9, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1, i32 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  store float %44, ptr %20, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 0, i32 1, i32 1, i64 2
  br label %46

46:                                               ; preds = %34, %22
  %47 = phi ptr [ %45, %34 ], [ %33, %22 ]
  %48 = load float, ptr %47, align 4, !tbaa !34
  store float %48, ptr %21, align 4, !tbaa !34
  call void @mid_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %49 = load float, ptr %9, align 4, !tbaa !34
  %50 = load float, ptr %10, align 4, !tbaa !34
  %51 = fsub float %49, %50
  %52 = getelementptr inbounds float, ptr %9, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %10, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fsub float %53, %55
  %57 = getelementptr inbounds float, ptr %9, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %10, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = fsub float %58, %60
  %62 = fadd float %51, 0x3F50624DE0000000
  %63 = fadd float %56, 0x3F50624DE0000000
  %64 = fadd float %61, 0x3F50624DE0000000
  %65 = call float @llvm.fmuladd.f32(float %62, float 0x3FF00418A0000000, float %50)
  store float %65, ptr %9, align 4, !tbaa !34
  %66 = call float @llvm.fmuladd.f32(float %63, float 0x3FF00418A0000000, float %55)
  store float %66, ptr %52, align 4, !tbaa !34
  %67 = call float @llvm.fmuladd.f32(float %64, float 0x3FF00418A0000000, float %60)
  store float %67, ptr %57, align 4, !tbaa !34
  %68 = call float @llvm.fmuladd.f32(float %62, float 0xBFF00418A0000000, float %50)
  store float %68, ptr %8, align 4, !tbaa !34
  %69 = call float @llvm.fmuladd.f32(float %63, float 0xBFF00418A0000000, float %55)
  %70 = getelementptr inbounds float, ptr %8, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = call float @llvm.fmuladd.f32(float %64, float 0xBFF00418A0000000, float %60)
  %72 = getelementptr inbounds float, ptr %8, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %4) #18
  %73 = call zeroext i8 @isect_ray_aabb(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %113, label %75

75:                                               ; preds = %46
  %76 = load float, ptr %4, align 4, !tbaa !34
  %77 = fneg float %76
  store float %77, ptr %12, align 4, !tbaa !34
  %78 = getelementptr inbounds float, ptr %4, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = fneg float %79
  %81 = getelementptr inbounds float, ptr %12, i64 1
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = getelementptr inbounds float, ptr %4, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fneg float %83
  %85 = getelementptr inbounds float, ptr %12, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  call void @isect_ray_aabb_initialize(ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %12) #18
  %86 = call zeroext i8 @isect_ray_aabb(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %75
  %89 = load float, ptr %6, align 4, !tbaa !34
  %90 = load float, ptr %2, align 4, !tbaa !34
  %91 = load float, ptr %4, align 4, !tbaa !34
  %92 = call float @llvm.fmuladd.f32(float %91, float %89, float %90)
  store float %92, ptr %2, align 4, !tbaa !34
  %93 = getelementptr inbounds float, ptr %2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = load float, ptr %78, align 4, !tbaa !34
  %96 = call float @llvm.fmuladd.f32(float %95, float %89, float %94)
  store float %96, ptr %93, align 4, !tbaa !34
  %97 = getelementptr inbounds float, ptr %2, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = load float, ptr %82, align 4, !tbaa !34
  %100 = call float @llvm.fmuladd.f32(float %99, float %89, float %98)
  store float %100, ptr %97, align 4, !tbaa !34
  %101 = load float, ptr %7, align 4, !tbaa !34
  %102 = load float, ptr %3, align 4, !tbaa !34
  %103 = load float, ptr %12, align 4, !tbaa !34
  %104 = call float @llvm.fmuladd.f32(float %103, float %101, float %102)
  store float %104, ptr %3, align 4, !tbaa !34
  %105 = getelementptr inbounds float, ptr %3, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = load float, ptr %81, align 4, !tbaa !34
  %108 = call float @llvm.fmuladd.f32(float %107, float %101, float %106)
  store float %108, ptr %105, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = load float, ptr %85, align 4, !tbaa !34
  %112 = call float @llvm.fmuladd.f32(float %111, float %101, float %110)
  store float %112, ptr %109, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %75, %46, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %114

114:                                              ; preds = %113, %5
  ret void
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @isect_ray_aabb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_node_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = load ptr, ptr %1, align 8, !tbaa !187
  %10 = getelementptr inbounds %struct.PBVHNodeDrawData, ptr %1, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !189
  tail call void @GPU_draw_pbvh_buffers(ptr noundef %8, ptr noundef %9, i8 noundef zeroext %11) #18
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

declare void @GPU_draw_pbvh_buffers(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  store float %8, ptr %5, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %5, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %5, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  store float %16, ptr %6, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %6, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %6, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = getelementptr inbounds float, ptr %4, i64 1
  %26 = getelementptr inbounds float, ptr %4, i64 2
  br label %27

27:                                               ; preds = %62, %2
  %28 = phi i64 [ 0, %2 ], [ %72, %62 ]
  %29 = phi i32 [ 0, %2 ], [ %71, %62 ]
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %43, %30 ]
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 %28, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fcmp ogt float %33, 0.000000e+00
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %31
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %31
  %37 = select i1 %34, ptr %5, ptr %6
  %38 = select i1 %34, ptr %6, ptr %5
  %39 = getelementptr inbounds float, ptr %37, i64 %31
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %35, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %38, i64 %31
  %42 = load float, ptr %41, align 4, !tbaa !34
  store float %42, ptr %36, align 4, !tbaa !34
  %43 = add nuw nsw i64 %31, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %30, !llvm.loop !190

45:                                               ; preds = %30
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 %28
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = load float, ptr %3, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %46, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = load float, ptr %23, align 4, !tbaa !34
  %52 = fmul float %50, %51
  %53 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %52)
  %54 = getelementptr inbounds float, ptr %46, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = load float, ptr %24, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %53)
  %58 = getelementptr inbounds [4 x float], ptr %1, i64 %28, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fadd float %57, %59
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %74, label %62

62:                                               ; preds = %45
  %63 = load float, ptr %4, align 4, !tbaa !34
  %64 = load float, ptr %25, align 4, !tbaa !34
  %65 = fmul float %50, %64
  %66 = tail call float @llvm.fmuladd.f32(float %47, float %63, float %65)
  %67 = load float, ptr %26, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %55, float %67, float %66)
  %69 = fadd float %59, %68
  %70 = fcmp ult float %69, 0.000000e+00
  %71 = select i1 %70, i32 %29, i32 2
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %27, !llvm.loop !191

74:                                               ; preds = %45, %62
  %75 = phi i32 [ 1, %45 ], [ %71, %62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  %76 = icmp ne i32 %75, 1
  %77 = zext i1 %76 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  ret i8 %77
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_pbvh_node_planes_exclude_AABB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  store float %8, ptr %5, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %5, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %5, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  store float %16, ptr %6, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %6, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 1, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %6, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = getelementptr inbounds float, ptr %4, i64 1
  %26 = getelementptr inbounds float, ptr %4, i64 2
  br label %27

27:                                               ; preds = %62, %2
  %28 = phi i64 [ 0, %2 ], [ %72, %62 ]
  %29 = phi i32 [ 0, %2 ], [ %71, %62 ]
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %43, %30 ]
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 %28, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fcmp ogt float %33, 0.000000e+00
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %31
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %31
  %37 = select i1 %34, ptr %5, ptr %6
  %38 = select i1 %34, ptr %6, ptr %5
  %39 = getelementptr inbounds float, ptr %37, i64 %31
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %35, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %38, i64 %31
  %42 = load float, ptr %41, align 4, !tbaa !34
  store float %42, ptr %36, align 4, !tbaa !34
  %43 = add nuw nsw i64 %31, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %30, !llvm.loop !190

45:                                               ; preds = %30
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 %28
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = load float, ptr %3, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %46, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = load float, ptr %23, align 4, !tbaa !34
  %52 = fmul float %50, %51
  %53 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %52)
  %54 = getelementptr inbounds float, ptr %46, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = load float, ptr %24, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %53)
  %58 = getelementptr inbounds [4 x float], ptr %1, i64 %28, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fadd float %57, %59
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %74, label %62

62:                                               ; preds = %45
  %63 = load float, ptr %4, align 4, !tbaa !34
  %64 = load float, ptr %25, align 4, !tbaa !34
  %65 = fmul float %50, %64
  %66 = tail call float @llvm.fmuladd.f32(float %47, float %63, float %65)
  %67 = load float, ptr %26, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %55, float %67, float %66)
  %69 = fadd float %59, %68
  %70 = fcmp ult float %69, 0.000000e+00
  %71 = select i1 %70, i32 %29, i32 2
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %27, !llvm.loop !191

74:                                               ; preds = %45, %62
  %75 = phi i32 [ 1, %45 ], [ %71, %62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  ret i8 %77
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = alloca %struct.PBVHIter, align 8
  %7 = alloca %struct.PBVHIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  br label %16

16:                                               ; preds = %13, %32
  %17 = phi i64 [ 0, %13 ], [ %33, %32 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %18, i64 %17, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = load i8, ptr %15, align 1, !tbaa !192
  %26 = tail call zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr noundef nonnull %20, ptr noundef %24, i8 noundef zeroext %25) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %18, i64 %17, i32 10
  %30 = load i16, ptr %29, align 8
  %31 = or i16 %30, 16
  store i16 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %16, %22, %28
  %33 = add nuw nsw i64 %17, 1
  %34 = load i32, ptr %10, align 4, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %16, label %37, !llvm.loop !193

37:                                               ; preds = %32, %5
  %38 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  call void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef nonnull @update_search_cb, ptr noundef nonnull inttoptr (i64 18 to ptr), ptr noundef nonnull %8, ptr noundef nonnull %9)
  %39 = load ptr, ptr %8, align 8, !tbaa !50
  %40 = load i32, ptr %9, align 4, !tbaa !52
  tail call fastcc void @pbvh_update_normals(ptr noundef %0, ptr noundef %39, i32 noundef %40, ptr noundef %2)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %142

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %45 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %46 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %47 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %48 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %49 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  %50 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %51 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %52 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  %53 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %54 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %55 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  %56 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  %57 = zext nneg i32 %40 to i64
  br label %58

58:                                               ; preds = %42, %139
  %59 = phi i64 [ 0, %42 ], [ %140, %139 ]
  %60 = getelementptr inbounds ptr, ptr %39, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 10
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 64
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %58
  %67 = load ptr, ptr %61, align 8, !tbaa !83
  tail call void @GPU_free_pbvh_buffers(ptr noundef %67) #18
  %68 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %68, label %93 [
    i32 1, label %69
    i32 0, label %77
    i32 2, label %87
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !153
  %72 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !154
  %74 = load ptr, ptr %46, align 8, !tbaa !79
  %75 = load i32, ptr %47, align 8, !tbaa !173
  %76 = tail call ptr @GPU_build_grid_pbvh_buffers(ptr noundef %71, i32 noundef %73, ptr noundef %74, i32 noundef %75) #18
  br label %91

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  %80 = load ptr, ptr %44, align 8, !tbaa !57
  %81 = load ptr, ptr %45, align 8, !tbaa !58
  %82 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !153
  %84 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 5
  %85 = load i32, ptr %84, align 8, !tbaa !154
  %86 = tail call ptr @GPU_build_mesh_pbvh_buffers(ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %83, i32 noundef %85) #18
  br label %91

87:                                               ; preds = %66
  %88 = load i32, ptr %43, align 4, !tbaa !194
  %89 = and i32 %88, 1
  %90 = tail call ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef %89) #18
  br label %91

91:                                               ; preds = %69, %77, %87
  %92 = phi ptr [ %90, %87 ], [ %86, %77 ], [ %76, %69 ]
  store ptr %92, ptr %61, align 8, !tbaa !83
  br label %93

93:                                               ; preds = %91, %66
  %94 = load i16, ptr %62, align 8
  %95 = and i16 %94, -65
  store i16 %95, ptr %62, align 8
  br label %96

96:                                               ; preds = %93, %58
  %97 = load i16, ptr %62, align 8
  %98 = and i16 %97, 16
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %139, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %101, label %136 [
    i32 1, label %102
    i32 0, label %111
    i32 2, label %126
  ]

102:                                              ; preds = %100
  %103 = load ptr, ptr %61, align 8, !tbaa !83
  %104 = load ptr, ptr %53, align 8, !tbaa !73
  %105 = load ptr, ptr %54, align 8, !tbaa !76
  %106 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !153
  %108 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 5
  %109 = load i32, ptr %108, align 8, !tbaa !154
  %110 = load i8, ptr %56, align 1, !tbaa !192
  tail call void @GPU_update_grid_pbvh_buffers(ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %107, i32 noundef %109, ptr noundef nonnull %55, i8 noundef zeroext %110) #18
  br label %136

111:                                              ; preds = %100
  %112 = load ptr, ptr %61, align 8, !tbaa !83
  %113 = load ptr, ptr %50, align 8, !tbaa !58
  %114 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !86
  %116 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 7
  %117 = load i32, ptr %116, align 8, !tbaa !162
  %118 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 8
  %119 = load i32, ptr %118, align 4, !tbaa !172
  %120 = add i32 %119, %117
  %121 = load ptr, ptr %51, align 8, !tbaa !62
  %122 = tail call ptr @CustomData_get_layer(ptr noundef %121, i32 noundef 34) #18
  %123 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  %125 = load i8, ptr %52, align 1, !tbaa !192
  tail call void @GPU_update_mesh_pbvh_buffers(ptr noundef %112, ptr noundef %113, ptr noundef %115, i32 noundef %120, ptr noundef %122, ptr noundef %124, i8 noundef zeroext %125) #18
  br label %136

126:                                              ; preds = %100
  %127 = load ptr, ptr %61, align 8, !tbaa !83
  %128 = load ptr, ptr %48, align 8, !tbaa !170
  %129 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 15
  %130 = load ptr, ptr %129, align 8, !tbaa !89
  %131 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 16
  %132 = load ptr, ptr %131, align 8, !tbaa !90
  %133 = getelementptr inbounds %struct.PBVHNode, ptr %61, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !91
  %135 = load i8, ptr %49, align 1, !tbaa !192
  tail call void @GPU_update_bmesh_pbvh_buffers(ptr noundef %127, ptr noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %134, i8 noundef zeroext %135) #18
  br label %136

136:                                              ; preds = %126, %111, %102, %100
  %137 = load i16, ptr %62, align 8
  %138 = and i16 %137, -17
  store i16 %138, ptr %62, align 8
  br label %139

139:                                              ; preds = %136, %96
  %140 = add nuw nsw i64 %59, 1
  %141 = icmp eq i64 %140, %57
  br i1 %141, label %142, label %58, !llvm.loop !195

142:                                              ; preds = %139, %37
  %143 = icmp eq ptr %39, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %145(ptr noundef nonnull %39) #18
  br label %146

146:                                              ; preds = %144, %142
  %147 = icmp eq ptr %1, null
  br i1 %147, label %178, label %148

148:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %7) #18
  store ptr %0, ptr %7, align 8, !tbaa !95
  %149 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 1
  store ptr @BKE_pbvh_node_planes_contain_AABB, ptr %149, align 8, !tbaa !97
  %150 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 2
  store ptr %1, ptr %150, align 8, !tbaa !98
  %151 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 5
  %152 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !99
  %153 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 6
  store i32 100, ptr %153, align 8, !tbaa !100
  %154 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !49
  store ptr %155, ptr %151, align 8, !tbaa !101
  %156 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %156, align 8, !tbaa !103
  %157 = getelementptr inbounds %struct.PBVHIter, ptr %7, i64 0, i32 4
  store i32 1, ptr %157, align 8, !tbaa !104
  %158 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %7)
  %159 = icmp eq ptr %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %148, %168
  %161 = phi ptr [ %169, %168 ], [ %158, %148 ]
  %162 = getelementptr inbounds %struct.PBVHNode, ptr %161, i64 0, i32 10
  %163 = load i16, ptr %162, align 8
  %164 = and i16 %163, 129
  %165 = icmp eq i16 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load ptr, ptr %161, align 8, !tbaa !83
  call void @GPU_draw_pbvh_buffers(ptr noundef %167, ptr noundef %3, i8 noundef zeroext %4) #18
  br label %168

168:                                              ; preds = %166, %160
  %169 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %7)
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %160, !llvm.loop !108

171:                                              ; preds = %168, %148
  %172 = load i32, ptr %153, align 8, !tbaa !100
  %173 = icmp sgt i32 %172, 100
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %176 = load ptr, ptr %152, align 8, !tbaa !99
  call void %175(ptr noundef %176) #18
  br label %177

177:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %7) #18
  br label %207

178:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 1648, ptr nonnull %6) #18
  store ptr %0, ptr %6, align 8, !tbaa !95
  %179 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 1
  %180 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5
  %181 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %179, i8 0, i64 16, i1 false)
  store ptr %180, ptr %181, align 8, !tbaa !99
  %182 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 6
  store i32 100, ptr %182, align 8, !tbaa !100
  %183 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !49
  store ptr %184, ptr %180, align 8, !tbaa !101
  %185 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 5, i64 0, i32 1
  store i32 0, ptr %185, align 8, !tbaa !103
  %186 = getelementptr inbounds %struct.PBVHIter, ptr %6, i64 0, i32 4
  store i32 1, ptr %186, align 8, !tbaa !104
  %187 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %188 = icmp eq ptr %187, null
  br i1 %188, label %200, label %189

189:                                              ; preds = %178, %197
  %190 = phi ptr [ %198, %197 ], [ %187, %178 ]
  %191 = getelementptr inbounds %struct.PBVHNode, ptr %190, i64 0, i32 10
  %192 = load i16, ptr %191, align 8
  %193 = and i16 %192, 129
  %194 = icmp eq i16 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load ptr, ptr %190, align 8, !tbaa !83
  call void @GPU_draw_pbvh_buffers(ptr noundef %196, ptr noundef %3, i8 noundef zeroext %4) #18
  br label %197

197:                                              ; preds = %195, %189
  %198 = call fastcc ptr @pbvh_iter_next(ptr noundef nonnull %6)
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %189, !llvm.loop !108

200:                                              ; preds = %197, %178
  %201 = load i32, ptr %182, align 8, !tbaa !100
  %202 = icmp sgt i32 %201, 100
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %205 = load ptr, ptr %181, align 8, !tbaa !99
  call void %204(ptr noundef %205) #18
  br label %206

206:                                              ; preds = %200, %203
  call void @llvm.lifetime.end.p0(i64 1648, ptr nonnull %6) #18
  br label %207

207:                                              ; preds = %206, %177
  %208 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !196
  %209 = icmp eq i16 %208, 14
  br i1 %209, label %210, label %229

210:                                              ; preds = %207
  call void @GPU_init_draw_pbvh_BB() #18
  %211 = load i32, ptr %38, align 4, !tbaa !51
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi i64 [ 0, %213 ], [ %224, %215 ]
  %217 = load ptr, ptr %214, align 8, !tbaa !49
  %218 = getelementptr inbounds %struct.PBVHNode, ptr %217, i64 %216, i32 1
  %219 = getelementptr inbounds %struct.PBVHNode, ptr %217, i64 %216, i32 1, i32 1
  %220 = getelementptr inbounds %struct.PBVHNode, ptr %217, i64 %216, i32 10
  %221 = load i16, ptr %220, align 8
  %222 = trunc i16 %221 to i8
  %223 = and i8 %222, 1
  call void @GPU_draw_pbvh_BB(ptr noundef nonnull %218, ptr noundef nonnull %219, i8 noundef zeroext %223) #18
  %224 = add nuw nsw i64 %216, 1
  %225 = load i32, ptr %38, align 4, !tbaa !51
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %215, label %228, !llvm.loop !199

228:                                              ; preds = %215, %210
  call void @GPU_end_draw_pbvh_BB() #18
  br label %229

229:                                              ; preds = %228, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_pbvh_grids_update(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  store ptr %1, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 14
  store ptr %2, ptr %8, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 15
  store ptr %3, ptr %9, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %34, label %17

17:                                               ; preds = %13, %6
  store ptr %4, ptr %10, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  store ptr %5, ptr %18, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %30, %24 ]
  %26 = load ptr, ptr %23, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %26, i64 %25, i32 10
  %28 = load i16, ptr %27, align 8
  %29 = or i16 %28, 112
  store i16 %29, ptr %27, align 8
  %30 = add nuw nsw i64 %25, 1
  %31 = load i32, ptr %19, align 4, !tbaa !51
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %24, label %34, !llvm.loop !200

34:                                               ; preds = %24, %17, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pbvh_node_layer_disp_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %7, label %21 [
    i32 1, label %8
    i32 0, label %14
    i32 2, label %17
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !154
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = mul i32 %12, %10
  br label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !162
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = tail call i32 @BLI_gset_size(ptr noundef %19) #18
  br label %21

21:                                               ; preds = %6, %8, %14, %17
  %22 = phi i32 [ 0, %6 ], [ %20, %17 ], [ %16, %14 ], [ %13, %8 ]
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %24 = sext i32 %22 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.5) #18
  store ptr %26, ptr %3, align 8, !tbaa !88
  br label %27

27:                                               ; preds = %21, %2
  %28 = load ptr, ptr %3, align 8, !tbaa !88
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_pbvh_get_vertCos(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = mul nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %6(i64 noundef %11, ptr noundef nonnull @.str.6) #18
  %13 = load i32, ptr %7, align 4, !tbaa !60
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %27, %15 ], [ %3, %5 ]
  %17 = phi ptr [ %28, %15 ], [ %12, %5 ]
  %18 = phi i32 [ %26, %15 ], [ 0, %5 ]
  %19 = load float, ptr %16, align 4, !tbaa !34
  store float %19, ptr %17, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %16, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %17, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %16, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %17, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = add nuw nsw i32 %18, 1
  %27 = getelementptr inbounds %struct.MVert, ptr %16, i64 1
  %28 = getelementptr inbounds float, ptr %17, i64 3
  %29 = icmp eq i32 %26, %13
  br i1 %29, label %30, label %15, !llvm.loop !201

30:                                               ; preds = %15, %5, %1
  %31 = phi ptr [ null, %1 ], [ %12, %5 ], [ %12, %15 ]
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_apply_vertCos(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !93
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !50
  %16 = tail call ptr %15(ptr noundef nonnull %12) #18
  store ptr %16, ptr %11, align 8, !tbaa !58
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = tail call ptr %17(ptr noundef %19) #18
  store ptr %20, ptr %18, align 8, !tbaa !57
  store i8 1, ptr %7, align 8, !tbaa !93
  br label %21

21:                                               ; preds = %10, %14, %2
  %22 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %126, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 4, !tbaa !60
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %45, %31 ]
  %33 = phi ptr [ %23, %29 ], [ %46, %31 ]
  %34 = getelementptr inbounds [3 x float], ptr %1, i64 %32
  %35 = load float, ptr %34, align 4, !tbaa !34
  store float %35, ptr %33, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %34, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %33, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %34, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %33, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.MVert, ptr %33, i64 0, i32 2
  %43 = load i8, ptr %42, align 2, !tbaa !157
  %44 = or i8 %43, -128
  store i8 %44, ptr %42, align 2, !tbaa !157
  %45 = add nuw nsw i64 %32, 1
  %46 = getelementptr inbounds %struct.MVert, ptr %33, i64 1
  %47 = icmp eq i64 %45, %30
  br i1 %47, label %48, label %31, !llvm.loop !202

48:                                               ; preds = %31, %25
  %49 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !69
  tail call void @BKE_mesh_calc_normals_tessface(ptr noundef nonnull %23, i32 noundef %27, ptr noundef %50, i32 noundef %52, ptr noundef null) #18
  %53 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ 0, %56 ], [ %64, %58 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.PBVHNode, ptr %60, i64 %59, i32 10
  %62 = load i16, ptr %61, align 8
  %63 = or i16 %62, 62
  store i16 %63, ptr %61, align 8
  %64 = add nuw nsw i64 %59, 1
  %65 = load i32, ptr %53, align 4, !tbaa !51
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %58, label %68, !llvm.loop !203

68:                                               ; preds = %58, %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %69 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !49
  %71 = icmp eq ptr %70, null
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  call void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef nonnull @update_search_cb, ptr noundef nonnull inttoptr (i64 4 to ptr), ptr noundef nonnull %5, ptr noundef nonnull %6)
  %73 = load ptr, ptr %5, align 8, !tbaa !50
  %74 = load i32, ptr %6, align 4, !tbaa !52
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = zext nneg i32 %74 to i64
  br label %78

78:                                               ; preds = %87, %76
  %79 = phi i64 [ 0, %76 ], [ %88, %87 ]
  %80 = getelementptr inbounds ptr, ptr %73, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.PBVHNode, ptr %81, i64 0, i32 10
  %83 = load i16, ptr %82, align 8
  %84 = and i16 %83, 4
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  tail call fastcc void @update_node_vb(ptr noundef %0, ptr noundef %81)
  br label %87

87:                                               ; preds = %86, %78
  %88 = add nuw nsw i64 %79, 1
  %89 = icmp eq i64 %88, %77
  br i1 %89, label %90, label %78, !llvm.loop !112

90:                                               ; preds = %87, %72
  %91 = load ptr, ptr %69, align 8, !tbaa !49
  %92 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef %91, i32 noundef 4), !range !152
  %93 = icmp eq ptr %73, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %95(ptr noundef nonnull %73) #18
  br label %96

96:                                               ; preds = %68, %90, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %97 = load ptr, ptr %69, align 8, !tbaa !49
  %98 = icmp eq ptr %97, null
  br i1 %98, label %125, label %99

99:                                               ; preds = %96
  call void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef nonnull @update_search_cb, ptr noundef nonnull inttoptr (i64 8 to ptr), ptr noundef nonnull %3, ptr noundef nonnull %4)
  %100 = load ptr, ptr %3, align 8, !tbaa !50
  %101 = load i32, ptr %4, align 4, !tbaa !52
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = zext nneg i32 %101 to i64
  br label %105

105:                                              ; preds = %116, %103
  %106 = phi i64 [ 0, %103 ], [ %117, %116 ]
  %107 = getelementptr inbounds ptr, ptr %100, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !50
  %109 = getelementptr inbounds %struct.PBVHNode, ptr %108, i64 0, i32 10
  %110 = load i16, ptr %109, align 8
  %111 = and i16 %110, 8
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.PBVHNode, ptr %108, i64 0, i32 2
  %115 = getelementptr inbounds %struct.PBVHNode, ptr %108, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa.struct !110
  br label %116

116:                                              ; preds = %113, %105
  %117 = add nuw nsw i64 %106, 1
  %118 = icmp eq i64 %117, %104
  br i1 %118, label %119, label %105, !llvm.loop !112

119:                                              ; preds = %116, %99
  %120 = load ptr, ptr %69, align 8, !tbaa !49
  %121 = tail call fastcc i32 @pbvh_flush_bb(ptr noundef %0, ptr noundef %120, i32 noundef 8), !range !152
  %122 = icmp eq ptr %100, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %124(ptr noundef nonnull %100) #18
  br label %125

125:                                              ; preds = %96, %119, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %126

126:                                              ; preds = %125, %21
  ret void
}

declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_pbvh_isDeformed(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 8, !tbaa !93
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_pbvh_node_add_proxy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !174
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !174
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !50
  %11 = sext i32 %5 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(ptr noundef nonnull %7, i64 noundef %12, ptr noundef nonnull @__func__.BKE_pbvh_node_add_proxy) #18
  br label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %16 = tail call ptr %15(i64 noundef 8, ptr noundef nonnull @.str.7) #18
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %13, %9 ]
  store ptr %18, ptr %6, align 8, !tbaa !175
  %19 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %19, label %33 [
    i32 1, label %20
    i32 0, label %26
    i32 2, label %29
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !154
  %23 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !171
  %25 = mul i32 %24, %22
  br label %33

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !162
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = tail call i32 @BLI_gset_size(ptr noundef %31) #18
  br label %33

33:                                               ; preds = %17, %20, %26, %29
  %34 = phi i32 [ undef, %17 ], [ %32, %29 ], [ %28, %26 ], [ %25, %20 ]
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %36 = sext i32 %34 to i64
  %37 = mul nsw i64 %36, 12
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.8) #18
  %39 = load ptr, ptr %6, align 8, !tbaa !175
  %40 = sext i32 %4 to i64
  %41 = getelementptr inbounds %struct.PBVHProxyNode, ptr %39, i64 %40
  store ptr %38, ptr %41, align 8, !tbaa !204
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_node_free_proxies(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !174
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %10 = load ptr, ptr %6, align 8, !tbaa !175
  %11 = getelementptr inbounds %struct.PBVHProxyNode, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !204
  tail call void %9(ptr noundef %12) #18
  %13 = load ptr, ptr %6, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.PBVHProxyNode, ptr %13, i64 %8
  store ptr null, ptr %14, align 8, !tbaa !204
  %15 = add nuw nsw i64 %8, 1
  %16 = load i32, ptr %2, align 8, !tbaa !174
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %7, label %19, !llvm.loop !206

19:                                               ; preds = %7, %1
  %20 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 13
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  tail call void %21(ptr noundef %23) #18
  store ptr null, ptr %22, align 8, !tbaa !175
  store i32 0, ptr %20, align 8, !tbaa !174
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_gather_proxies(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %35
  %10 = phi i64 [ 0, %7 ], [ %39, %35 ]
  %11 = phi i32 [ 0, %7 ], [ %38, %35 ]
  %12 = phi i32 [ 0, %7 ], [ %37, %35 ]
  %13 = phi ptr [ null, %7 ], [ %36, %35 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 %10
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %14, i64 %10, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !174
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %9
  %20 = icmp eq i32 %12, %11
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = icmp eq i32 %12, 0
  %23 = shl nsw i32 %11, 1
  %24 = select i1 %22, i32 32, i32 %23
  %25 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !50
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr %25(ptr noundef %13, i64 noundef %27, ptr noundef nonnull @__func__.BKE_pbvh_gather_proxies) #18
  br label %29

29:                                               ; preds = %21, %19
  %30 = phi ptr [ %28, %21 ], [ %13, %19 ]
  %31 = phi i32 [ %24, %21 ], [ %11, %19 ]
  %32 = sext i32 %12 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  store ptr %15, ptr %33, align 8, !tbaa !50
  %34 = add nsw i32 %12, 1
  br label %35

35:                                               ; preds = %9, %29
  %36 = phi ptr [ %30, %29 ], [ %13, %9 ]
  %37 = phi i32 [ %34, %29 ], [ %12, %9 ]
  %38 = phi i32 [ %31, %29 ], [ %11, %9 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = load i32, ptr %4, align 4, !tbaa !51
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %9, label %43, !llvm.loop !207

43:                                               ; preds = %35, %3
  %44 = phi ptr [ null, %3 ], [ %36, %35 ]
  %45 = phi i32 [ 0, %3 ], [ %37, %35 ]
  %46 = icmp eq i32 %45, 0
  %47 = icmp ne ptr %44, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %50(ptr noundef nonnull %44) #18
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ null, %49 ], [ %44, %43 ]
  store ptr %52, ptr %1, align 8, !tbaa !50
  store i32 %45, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pbvh_vertex_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 7
  store ptr null, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 25
  %7 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 22
  store ptr null, ptr %7, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load i32, ptr %0, align 8, !tbaa !56
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !154
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !173
  %17 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %4, %10
  %20 = phi ptr [ %12, %10 ], [ null, %4 ]
  %21 = phi ptr [ %18, %10 ], [ null, %4 ]
  %22 = phi i32 [ %14, %10 ], [ 0, %4 ]
  %23 = phi i32 [ %16, %10 ], [ 0, %4 ]
  switch i32 %8, label %44 [
    i32 1, label %24
    i32 0, label %30
    i32 2, label %36
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !154
  %27 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !171
  %29 = mul i32 %28, %26
  br label %44

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !162
  %33 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 8
  %34 = load i32, ptr %33, align 4, !tbaa !172
  %35 = add i32 %34, %32
  br label %44

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = tail call i32 @BLI_gset_size(ptr noundef %38) #18
  %40 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = tail call i32 @BLI_gset_size(ptr noundef %41) #18
  %43 = add nsw i32 %42, %39
  br label %44

44:                                               ; preds = %19, %24, %30, %36
  %45 = phi i32 [ undef, %19 ], [ %39, %36 ], [ %32, %30 ], [ %29, %24 ]
  %46 = phi i32 [ undef, %19 ], [ %43, %36 ], [ %35, %30 ], [ %29, %24 ]
  %47 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 8
  store ptr %51, ptr %52, align 8, !tbaa !129
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 6
  store ptr %21, ptr %53, align 8, !tbaa !119
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 11
  store ptr %20, ptr %54, align 8, !tbaa !123
  %55 = icmp eq ptr %21, null
  %56 = select i1 %55, i32 1, i32 %22
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 12
  store i32 %56, ptr %57, align 8, !tbaa !118
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 13
  store i32 %23, ptr %58, align 4, !tbaa !120
  %59 = icmp eq i32 %3, 0
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 15
  %61 = select i1 %59, i32 %46, i32 %45
  store i32 %61, ptr %60, align 8, !tbaa !125
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 16
  store ptr %48, ptr %62, align 8, !tbaa !137
  %63 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 14
  store ptr %50, ptr %63, align 8, !tbaa !136
  %64 = load i32, ptr %0, align 8, !tbaa !56
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %79

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 18
  %68 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %69 = load ptr, ptr %68, align 8, !tbaa !90
  tail call void @BLI_ghashIterator_init(ptr noundef nonnull %67, ptr noundef %69) #18
  %70 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 19
  %71 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  tail call void @BLI_ghashIterator_init(ptr noundef nonnull %70, ptr noundef %72) #18
  %73 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %74 = load ptr, ptr %73, align 8, !tbaa !170
  %75 = getelementptr inbounds %struct.BMesh, ptr %74, i64 0, i32 24
  %76 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 20
  store ptr %75, ptr %76, align 8, !tbaa !208
  %77 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %75, i32 noundef 34) #18
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 21
  store i32 %77, ptr %78, align 8, !tbaa !148
  br label %79

79:                                               ; preds = %66, %44
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 10
  store ptr null, ptr %80, align 8, !tbaa !135
  %81 = load ptr, ptr %53, align 8, !tbaa !119
  %82 = icmp ne ptr %81, null
  %83 = icmp eq i32 %3, 1
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 9
  store ptr %87, ptr %88, align 8, !tbaa !209
  br label %89

89:                                               ; preds = %85, %79
  %90 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 27
  store ptr null, ptr %90, align 8, !tbaa !134
  %91 = load i32, ptr %0, align 8, !tbaa !56
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = tail call ptr @CustomData_get_layer(ptr noundef %95, i32 noundef 34) #18
  %97 = getelementptr inbounds %struct.PBVHVertexIter, ptr %2, i64 0, i32 17
  store ptr %96, ptr %97, align 8, !tbaa !140
  br label %98

98:                                               ; preds = %93, %89
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pbvh_show_diffuse_color_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %3, label %23 [
    i32 1, label %4
    i32 0, label %8
    i32 2, label %15
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !210
  %7 = icmp ne i32 %6, 0
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %10, i32 noundef 34) #18
  %14 = icmp ne ptr %13, null
  br label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 24
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 34) #18
  %22 = icmp ne i32 %21, -1
  br label %23

23:                                               ; preds = %15, %19, %8, %12, %2, %4
  %24 = phi i1 [ false, %2 ], [ %7, %4 ], [ false, %8 ], [ %14, %12 ], [ false, %15 ], [ %22, %19 ]
  %25 = xor i1 %24, true
  %26 = icmp ne i8 %1, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 21
  store i8 %28, ptr %29, align 1, !tbaa !192
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_sub(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp slt i32 %10, %5
  br i1 %11, label %360, label %12

12:                                               ; preds = %6
  %13 = icmp slt i32 %5, 2
  br i1 %13, label %90, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = sext i32 %23 to i64
  %25 = add i32 %5, %4
  %26 = getelementptr inbounds %struct.MFace, ptr %16, i64 %24, i32 6
  %27 = getelementptr inbounds %struct.MFace, ptr %16, i64 %24, i32 4
  %28 = sext i32 %25 to i64
  %29 = sext i32 %4 to i64
  br label %30

30:                                               ; preds = %50, %18
  %31 = phi i64 [ %32, %50 ], [ %28, %18 ]
  %32 = add nsw i64 %31, -1
  %33 = icmp sgt i64 %32, %29
  br i1 %33, label %34, label %90

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, ptr %20, i64 %32
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = sext i32 %36 to i64
  %38 = load i8, ptr %26, align 1, !tbaa !211
  %39 = getelementptr inbounds %struct.MFace, ptr %16, i64 %37, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !211
  %41 = xor i8 %40, %38
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i16, ptr %27, align 4, !tbaa !212
  %46 = getelementptr inbounds %struct.MFace, ptr %16, i64 %37, i32 4
  %47 = load i16, ptr %46, align 4, !tbaa !212
  %48 = icmp eq i16 %45, %47
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %44, %34
  %51 = phi i32 [ 0, %34 ], [ %49, %44 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %360, label %30, !llvm.loop !213

53:                                               ; preds = %14
  %54 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = sext i32 %4 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !52
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.DMFlagMat, ptr %55, i64 %61
  %63 = add i32 %5, %4
  %64 = getelementptr inbounds %struct.DMFlagMat, ptr %55, i64 %61, i32 1
  %65 = sext i32 %63 to i64
  %66 = sext i32 %4 to i64
  br label %67

67:                                               ; preds = %87, %53
  %68 = phi i64 [ %69, %87 ], [ %65, %53 ]
  %69 = add nsw i64 %68, -1
  %70 = icmp sgt i64 %69, %66
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = getelementptr inbounds i32, ptr %57, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !52
  %74 = sext i32 %73 to i64
  %75 = load i8, ptr %64, align 2, !tbaa !214
  %76 = getelementptr inbounds %struct.DMFlagMat, ptr %55, i64 %74, i32 1
  %77 = load i8, ptr %76, align 2, !tbaa !214
  %78 = xor i8 %77, %75
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.DMFlagMat, ptr %55, i64 %74
  %83 = load i16, ptr %62, align 2, !tbaa !216
  %84 = load i16, ptr %82, align 2, !tbaa !216
  %85 = icmp eq i16 %83, %84
  %86 = zext i1 %85 to i32
  br label %87

87:                                               ; preds = %81, %71
  %88 = phi i32 [ 0, %71 ], [ %86, %81 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %360, label %67, !llvm.loop !217

90:                                               ; preds = %30, %67, %12
  %91 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = sext i32 %1 to i64
  %94 = getelementptr inbounds %struct.PBVHNode, ptr %92, i64 %93, i32 10
  %95 = load i16, ptr %94, align 8
  %96 = or i16 %95, 1
  store i16 %96, ptr %94, align 8
  %97 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  %99 = sext i32 %4 to i64
  %100 = getelementptr inbounds i32, ptr %98, i64 %99
  %101 = load ptr, ptr %91, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 4
  store ptr %100, ptr %102, align 8, !tbaa !153
  %103 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 5
  store i32 %5, ptr %103, align 8, !tbaa !154
  %104 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1
  %105 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %105, align 4, !tbaa !34
  %106 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %106, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %104, align 4, !tbaa !34
  %107 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 1
  %108 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %109, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %107, align 4, !tbaa !34
  %110 = icmp sgt i32 %5, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %90
  %112 = add i32 %5, %4
  %113 = sext i32 %112 to i64
  br label %116

114:                                              ; preds = %123
  %115 = icmp sgt i64 %118, %99
  br i1 %115, label %116, label %139, !llvm.loop !218

116:                                              ; preds = %114, %111
  %117 = phi i64 [ %113, %111 ], [ %118, %114 ]
  %118 = add nsw i64 %117, -1
  %119 = getelementptr inbounds i32, ptr %98, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !52
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.BBC, ptr %3, i64 %121
  br label %123

123:                                              ; preds = %123, %116
  %124 = phi i64 [ 0, %116 ], [ %137, %123 ]
  %125 = getelementptr inbounds [3 x float], ptr %104, i64 0, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = getelementptr inbounds [3 x float], ptr %122, i64 0, i64 %124
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = fcmp olt float %126, %128
  %130 = select i1 %129, float %126, float %128
  store float %130, ptr %125, align 4, !tbaa !34
  %131 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 1, i32 1, i64 %124
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = getelementptr inbounds %struct.BB, ptr %122, i64 0, i32 1, i64 %124
  %134 = load float, ptr %133, align 4, !tbaa !34
  %135 = fcmp ogt float %132, %134
  %136 = select i1 %135, float %132, float %134
  store float %136, ptr %131, align 4, !tbaa !34
  %137 = add nuw nsw i64 %124, 1
  %138 = icmp eq i64 %137, 3
  br i1 %138, label %114, label %123, !llvm.loop !41

139:                                              ; preds = %114, %90
  %140 = getelementptr inbounds %struct.PBVHNode, ptr %101, i64 %93, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !tbaa.struct !110
  %141 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  %143 = icmp eq ptr %142, null
  %144 = load ptr, ptr %91, align 8, !tbaa !49
  %145 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 5
  br i1 %143, label %301, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 8
  store i32 0, ptr %147, align 4, !tbaa !172
  %148 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 7
  store i32 0, ptr %148, align 8, !tbaa !162
  %149 = load i32, ptr %145, align 8, !tbaa !154
  %150 = shl nsw i32 %149, 1
  %151 = tail call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @.str.11, i32 noundef %150) #18
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %153 = sext i32 %149 to i64
  %154 = shl nsw i64 %153, 4
  %155 = tail call ptr %152(i64 noundef %154, ptr noundef nonnull @.str.12) #18
  %156 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 9
  store ptr %155, ptr %156, align 8, !tbaa !87
  %157 = icmp sgt i32 %149, 0
  br i1 %157, label %158, label %226

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 4
  %160 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 19
  %161 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 9
  %162 = zext nneg i32 %149 to i64
  br label %163

163:                                              ; preds = %158, %217
  %164 = phi i64 [ 0, %158 ], [ %222, %217 ]
  %165 = phi i8 [ 0, %158 ], [ %221, %217 ]
  %166 = load ptr, ptr %141, align 8, !tbaa !57
  %167 = load ptr, ptr %159, align 8, !tbaa !153
  %168 = getelementptr inbounds i32, ptr %167, i64 %164
  %169 = load i32, ptr %168, align 4, !tbaa !52
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.MFace, ptr %166, i64 %170
  %172 = getelementptr inbounds %struct.MFace, ptr %166, i64 %170, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !63
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i64 3, i64 4
  br label %176

176:                                              ; preds = %163, %211
  %177 = phi i64 [ 0, %163 ], [ %215, %211 ]
  %178 = getelementptr inbounds i32, ptr %171, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !66
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to ptr
  %182 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %151, ptr noundef %181) #18
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %207

184:                                              ; preds = %176
  %185 = load ptr, ptr %160, align 8, !tbaa !59
  %186 = ashr i32 %179, 5
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !52
  %190 = and i32 %179, 31
  %191 = shl nuw i32 1, %190
  %192 = and i32 %189, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %184
  %195 = load i32, ptr %147, align 4, !tbaa !52
  %196 = xor i32 %195, -1
  br label %200

197:                                              ; preds = %184
  %198 = or i32 %189, %191
  store i32 %198, ptr %188, align 4, !tbaa !52
  %199 = load i32, ptr %148, align 4, !tbaa !52
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %199, %197 ], [ %195, %194 ]
  %202 = phi ptr [ %148, %197 ], [ %147, %194 ]
  %203 = phi i32 [ %199, %197 ], [ %196, %194 ]
  %204 = add i32 %201, 1
  store i32 %204, ptr %202, align 4, !tbaa !52
  %205 = zext i32 %203 to i64
  %206 = inttoptr i64 %205 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %151, ptr noundef %181, ptr noundef %206) #18
  br label %211

207:                                              ; preds = %176
  %208 = load ptr, ptr %182, align 8, !tbaa !50
  %209 = ptrtoint ptr %208 to i64
  %210 = trunc i64 %209 to i32
  br label %211

211:                                              ; preds = %207, %200
  %212 = phi i32 [ %203, %200 ], [ %210, %207 ]
  %213 = load ptr, ptr %156, align 8, !tbaa !87
  %214 = getelementptr inbounds [4 x i32], ptr %213, i64 %164, i64 %177
  store i32 %212, ptr %214, align 4, !tbaa !52
  %215 = add nuw nsw i64 %177, 1
  %216 = icmp eq i64 %215, %175
  br i1 %216, label %217, label %176, !llvm.loop !219

217:                                              ; preds = %211
  %218 = load ptr, ptr %161, align 8, !tbaa !58
  %219 = tail call zeroext i8 @paint_is_face_hidden(ptr noundef %171, ptr noundef %218) #18
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %220, i8 1, i8 %165
  %222 = add nuw nsw i64 %164, 1
  %223 = icmp eq i64 %222, %162
  br i1 %223, label %224, label %163, !llvm.loop !220

224:                                              ; preds = %217
  %225 = icmp eq i8 %221, 0
  br label %226

226:                                              ; preds = %224, %146
  %227 = phi i1 [ true, %146 ], [ %225, %224 ]
  %228 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %229 = load i32, ptr %148, align 8, !tbaa !162
  %230 = load i32, ptr %147, align 4, !tbaa !172
  %231 = add i32 %230, %229
  %232 = zext i32 %231 to i64
  %233 = shl nuw nsw i64 %232, 2
  %234 = tail call ptr %228(i64 noundef %233, ptr noundef nonnull @.str.13) #18
  %235 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 6
  store ptr %234, ptr %235, align 8, !tbaa !86
  %236 = tail call ptr @BLI_ghashIterator_new(ptr noundef %151) #18
  %237 = getelementptr inbounds %struct.GHashIterator, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !141
  %239 = icmp eq ptr %238, null
  br i1 %239, label %262, label %240

240:                                              ; preds = %226, %251
  %241 = phi ptr [ %260, %251 ], [ %238, %226 ]
  %242 = getelementptr inbounds %struct._gh_Entry, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !221
  %244 = ptrtoint ptr %243 to i64
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load i32, ptr %148, align 8, !tbaa !162
  %249 = xor i32 %245, -1
  %250 = add i32 %248, %249
  br label %251

251:                                              ; preds = %247, %240
  %252 = phi i32 [ %250, %247 ], [ %245, %240 ]
  %253 = getelementptr inbounds %struct._gh_Entry, ptr %241, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !142
  %255 = ptrtoint ptr %254 to i64
  %256 = trunc i64 %255 to i32
  %257 = load ptr, ptr %235, align 8, !tbaa !86
  %258 = sext i32 %252 to i64
  %259 = getelementptr inbounds i32, ptr %257, i64 %258
  store i32 %256, ptr %259, align 4, !tbaa !52
  tail call void @BLI_ghashIterator_step(ptr noundef %236) #18
  %260 = load ptr, ptr %237, align 8, !tbaa !141
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %240, !llvm.loop !222

262:                                              ; preds = %251, %226
  tail call void @BLI_ghashIterator_free(ptr noundef %236) #18
  %263 = icmp sgt i32 %149, 0
  br i1 %263, label %264, label %294

264:                                              ; preds = %262
  %265 = load ptr, ptr %141, align 8, !tbaa !57
  %266 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !153
  %268 = load ptr, ptr %156, align 8, !tbaa !87
  %269 = zext nneg i32 %149 to i64
  br label %270

270:                                              ; preds = %264, %291
  %271 = phi i64 [ 0, %264 ], [ %292, %291 ]
  %272 = getelementptr inbounds i32, ptr %267, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !52
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.MFace, ptr %265, i64 %274, i32 3
  %276 = load i32, ptr %275, align 4, !tbaa !63
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, i64 3, i64 4
  br label %279

279:                                              ; preds = %270, %288
  %280 = phi i64 [ 0, %270 ], [ %289, %288 ]
  %281 = getelementptr inbounds [4 x i32], ptr %268, i64 %271, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !52
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load i32, ptr %148, align 8, !tbaa !162
  %286 = xor i32 %282, -1
  %287 = add i32 %285, %286
  store i32 %287, ptr %281, align 4, !tbaa !52
  br label %288

288:                                              ; preds = %284, %279
  %289 = add nuw nsw i64 %280, 1
  %290 = icmp eq i64 %289, %278
  br i1 %290, label %291, label %279, !llvm.loop !223

291:                                              ; preds = %288
  %292 = add nuw nsw i64 %271, 1
  %293 = icmp eq i64 %292, %269
  br i1 %293, label %294, label %270, !llvm.loop !224

294:                                              ; preds = %291, %262
  %295 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 10
  %296 = load i16, ptr %295, align 8
  %297 = or i16 %296, 240
  %298 = and i16 %296, -241
  %299 = or disjoint i16 %298, 112
  %300 = select i1 %227, i16 %297, i16 %299
  store i16 %300, ptr %295, align 8
  tail call void @BLI_ghash_free(ptr noundef %151, ptr noundef null, ptr noundef null) #18
  br label %678

301:                                              ; preds = %139
  %302 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 18
  %303 = load ptr, ptr %302, align 8, !tbaa !79
  %304 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 4
  %305 = load ptr, ptr %304, align 8, !tbaa !153
  %306 = load i32, ptr %145, align 8, !tbaa !154
  %307 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 12, i32 2
  %308 = load i32, ptr %307, align 8, !tbaa !173
  %309 = add i32 %308, -1
  %310 = mul nsw i32 %309, %309
  %311 = icmp sgt i32 %306, 0
  br i1 %311, label %312, label %348

312:                                              ; preds = %301
  %313 = icmp sgt i32 %308, 1
  %314 = zext nneg i32 %306 to i64
  br label %315

315:                                              ; preds = %342, %312
  %316 = phi i64 [ 0, %312 ], [ %344, %342 ]
  %317 = phi i32 [ 0, %312 ], [ %343, %342 ]
  %318 = getelementptr inbounds i32, ptr %305, i64 %316
  %319 = load i32, ptr %318, align 4, !tbaa !52
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %303, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !50
  %323 = icmp eq ptr %322, null
  br i1 %323, label %340, label %324

324:                                              ; preds = %315
  br i1 %313, label %325, label %342

325:                                              ; preds = %324, %337
  %326 = phi i32 [ %334, %337 ], [ %317, %324 ]
  %327 = phi i32 [ %338, %337 ], [ 0, %324 ]
  br label %328

328:                                              ; preds = %328, %325
  %329 = phi i32 [ %326, %325 ], [ %334, %328 ]
  %330 = phi i32 [ 0, %325 ], [ %335, %328 ]
  %331 = tail call zeroext i8 @paint_is_grid_face_hidden(ptr noundef nonnull %322, i32 noundef %308, i32 noundef %330, i32 noundef %327) #18
  %332 = icmp eq i8 %331, 0
  %333 = zext i1 %332 to i32
  %334 = add nsw i32 %329, %333
  %335 = add nuw nsw i32 %330, 1
  %336 = icmp eq i32 %335, %309
  br i1 %336, label %337, label %328, !llvm.loop !53

337:                                              ; preds = %328
  %338 = add nuw nsw i32 %327, 1
  %339 = icmp eq i32 %338, %309
  br i1 %339, label %342, label %325, !llvm.loop !54

340:                                              ; preds = %315
  %341 = add nsw i32 %317, %310
  br label %342

342:                                              ; preds = %337, %340, %324
  %343 = phi i32 [ %341, %340 ], [ %317, %324 ], [ %334, %337 ]
  %344 = add nuw nsw i64 %316, 1
  %345 = icmp eq i64 %344, %314
  br i1 %345, label %346, label %315, !llvm.loop !55

346:                                              ; preds = %342
  %347 = icmp eq i32 %343, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %301, %346
  %349 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 10
  %350 = load i16, ptr %349, align 8
  %351 = or i16 %350, 128
  store i16 %351, ptr %349, align 8
  br label %356

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 10
  %354 = load i16, ptr %353, align 8
  %355 = and i16 %354, -129
  store i16 %355, ptr %353, align 8
  br label %356

356:                                              ; preds = %352, %348
  %357 = getelementptr inbounds %struct.PBVHNode, ptr %144, i64 %93, i32 10
  %358 = load i16, ptr %357, align 8
  %359 = or i16 %358, 112
  store i16 %359, ptr %357, align 8
  br label %678

360:                                              ; preds = %50, %87, %6
  %361 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %362 = load i32, ptr %361, align 4, !tbaa !51
  %363 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !49
  %365 = sext i32 %1 to i64
  %366 = getelementptr inbounds %struct.PBVHNode, ptr %364, i64 %365, i32 3
  store i32 %362, ptr %366, align 8, !tbaa !106
  %367 = add nsw i32 %362, 2
  %368 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 3
  %369 = load i32, ptr %368, align 8, !tbaa !44
  %370 = icmp slt i32 %369, %367
  br i1 %370, label %371, label %392

371:                                              ; preds = %360
  %372 = sitofp i32 %369 to double
  %373 = fmul double %372, 1.330000e+00
  %374 = fptosi double %373 to i32
  %375 = tail call i32 @llvm.smax.i32(i32 %374, i32 %367)
  store i32 %375, ptr %368, align 8, !tbaa !44
  %376 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %377 = sext i32 %375 to i64
  %378 = mul nsw i64 %377, 184
  %379 = tail call ptr %376(i64 noundef %378, ptr noundef nonnull @.str) #18
  store ptr %379, ptr %363, align 8, !tbaa !49
  %380 = load i32, ptr %361, align 4, !tbaa !51
  %381 = sext i32 %380 to i64
  %382 = mul nsw i64 %381, 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %379, ptr align 8 %364, i64 %382, i1 false)
  %383 = load ptr, ptr %363, align 8, !tbaa !49
  %384 = load i32, ptr %361, align 4, !tbaa !51
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.PBVHNode, ptr %383, i64 %385
  %387 = load i32, ptr %368, align 8, !tbaa !44
  %388 = sub nsw i32 %387, %384
  %389 = sext i32 %388 to i64
  %390 = mul nsw i64 %389, 184
  tail call void @llvm.memset.p0.i64(ptr align 8 %386, i8 0, i64 %390, i1 false)
  %391 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %391(ptr noundef %364) #18
  br label %392

392:                                              ; preds = %360, %371
  store i32 %367, ptr %361, align 4, !tbaa !51
  %393 = load ptr, ptr %363, align 8, !tbaa !49
  %394 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1
  %395 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %395, align 4, !tbaa !34
  %396 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %396, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %394, align 4, !tbaa !34
  %397 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 1
  %398 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %398, align 4, !tbaa !34
  %399 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %399, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %397, align 4, !tbaa !34
  %400 = icmp sgt i32 %5, 0
  br i1 %400, label %401, label %432

401:                                              ; preds = %392
  %402 = add i32 %5, %4
  %403 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !70
  %405 = sext i32 %402 to i64
  %406 = sext i32 %4 to i64
  br label %409

407:                                              ; preds = %416
  %408 = icmp sgt i64 %411, %406
  br i1 %408, label %409, label %432, !llvm.loop !218

409:                                              ; preds = %407, %401
  %410 = phi i64 [ %405, %401 ], [ %411, %407 ]
  %411 = add nsw i64 %410, -1
  %412 = getelementptr inbounds i32, ptr %404, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !52
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.BBC, ptr %3, i64 %414
  br label %416

416:                                              ; preds = %416, %409
  %417 = phi i64 [ 0, %409 ], [ %430, %416 ]
  %418 = getelementptr inbounds [3 x float], ptr %394, i64 0, i64 %417
  %419 = load float, ptr %418, align 4, !tbaa !34
  %420 = getelementptr inbounds [3 x float], ptr %415, i64 0, i64 %417
  %421 = load float, ptr %420, align 4, !tbaa !34
  %422 = fcmp olt float %419, %421
  %423 = select i1 %422, float %419, float %421
  store float %423, ptr %418, align 4, !tbaa !34
  %424 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 1, i32 1, i64 %417
  %425 = load float, ptr %424, align 4, !tbaa !34
  %426 = getelementptr inbounds %struct.BB, ptr %415, i64 0, i32 1, i64 %417
  %427 = load float, ptr %426, align 4, !tbaa !34
  %428 = fcmp ogt float %425, %427
  %429 = select i1 %428, float %425, float %427
  store float %429, ptr %424, align 4, !tbaa !34
  %430 = add nuw nsw i64 %417, 1
  %431 = icmp eq i64 %430, 3
  br i1 %431, label %407, label %416, !llvm.loop !41

432:                                              ; preds = %407, %392
  %433 = getelementptr inbounds %struct.PBVHNode, ptr %393, i64 %365, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %433, ptr noundef nonnull align 8 dereferenceable(24) %394, i64 24, i1 false), !tbaa.struct !110
  br i1 %11, label %434, label %537

434:                                              ; preds = %432
  %435 = icmp eq ptr %2, null
  br i1 %435, label %436, label %472

436:                                              ; preds = %434
  %437 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x47EFFFFFE0000000, ptr %437, align 4, !tbaa !34
  %438 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0x47EFFFFFE0000000, ptr %438, align 4, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr %8, align 4, !tbaa !34
  %439 = getelementptr inbounds %struct.BB, ptr %8, i64 0, i32 1
  %440 = getelementptr inbounds %struct.BB, ptr %8, i64 0, i32 1, i64 2
  store float 0xC7EFFFFFE0000000, ptr %440, align 4, !tbaa !34
  %441 = getelementptr inbounds %struct.BB, ptr %8, i64 0, i32 1, i64 1
  store float 0xC7EFFFFFE0000000, ptr %441, align 4, !tbaa !34
  store float 0xC7EFFFFFE0000000, ptr %439, align 4, !tbaa !34
  %442 = icmp sgt i32 %5, 0
  br i1 %442, label %443, label %472

443:                                              ; preds = %436
  %444 = add i32 %5, %4
  %445 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %446 = load ptr, ptr %445, align 8, !tbaa !70
  %447 = sext i32 %444 to i64
  %448 = sext i32 %4 to i64
  br label %451

449:                                              ; preds = %458
  %450 = icmp sgt i64 %453, %448
  br i1 %450, label %451, label %472, !llvm.loop !225

451:                                              ; preds = %443, %449
  %452 = phi i64 [ %447, %443 ], [ %453, %449 ]
  %453 = add nsw i64 %452, -1
  %454 = getelementptr inbounds i32, ptr %446, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !52
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.BBC, ptr %3, i64 %456, i32 2
  br label %458

458:                                              ; preds = %451, %458
  %459 = phi i64 [ 0, %451 ], [ %470, %458 ]
  %460 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %459
  %461 = load float, ptr %460, align 4, !tbaa !34
  %462 = getelementptr inbounds float, ptr %457, i64 %459
  %463 = load float, ptr %462, align 4, !tbaa !34
  %464 = fcmp olt float %461, %463
  %465 = select i1 %464, float %461, float %463
  store float %465, ptr %460, align 4, !tbaa !34
  %466 = getelementptr inbounds %struct.BB, ptr %8, i64 0, i32 1, i64 %459
  %467 = load float, ptr %466, align 4, !tbaa !34
  %468 = fcmp ogt float %467, %463
  %469 = select i1 %468, float %467, float %463
  store float %469, ptr %466, align 4, !tbaa !34
  %470 = add nuw nsw i64 %459, 1
  %471 = icmp eq i64 %470, 3
  br i1 %471, label %449, label %458, !llvm.loop !38

472:                                              ; preds = %449, %436, %434
  %473 = phi ptr [ %2, %434 ], [ %8, %436 ], [ %8, %449 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  br label %474

474:                                              ; preds = %472, %474
  %475 = phi i64 [ 0, %472 ], [ %482, %474 ]
  %476 = getelementptr inbounds %struct.BB, ptr %473, i64 0, i32 1, i64 %475
  %477 = load float, ptr %476, align 4, !tbaa !34
  %478 = getelementptr inbounds [3 x float], ptr %473, i64 0, i64 %475
  %479 = load float, ptr %478, align 4, !tbaa !34
  %480 = fsub float %477, %479
  %481 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %475
  store float %480, ptr %481, align 4, !tbaa !34
  %482 = add nuw nsw i64 %475, 1
  %483 = icmp eq i64 %482, 3
  br i1 %483, label %484, label %474, !llvm.loop !42

484:                                              ; preds = %474
  %485 = load float, ptr %7, align 4, !tbaa !34
  %486 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !34
  %488 = fcmp ule float %485, %487
  %489 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %490 = load float, ptr %489, align 4, !tbaa !34
  %491 = select i1 %488, float %487, float %485
  %492 = zext i1 %488 to i64
  %493 = fcmp ogt float %491, %490
  %494 = select i1 %493, i64 %492, i64 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  %495 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %496 = load ptr, ptr %495, align 8, !tbaa !70
  %497 = add nsw i32 %5, %4
  %498 = add nsw i32 %497, -1
  %499 = getelementptr inbounds %struct.BB, ptr %473, i64 0, i32 1, i64 %494
  %500 = load float, ptr %499, align 4, !tbaa !34
  %501 = getelementptr inbounds [3 x float], ptr %473, i64 0, i64 %494
  %502 = load float, ptr %501, align 4, !tbaa !34
  %503 = fadd float %500, %502
  %504 = fmul float %503, 5.000000e-01
  br label %505

505:                                              ; preds = %533, %484
  %506 = phi i32 [ %498, %484 ], [ %531, %533 ]
  %507 = phi i32 [ %4, %484 ], [ %536, %533 ]
  %508 = sext i32 %507 to i64
  br label %509

509:                                              ; preds = %509, %505
  %510 = phi i64 [ %517, %509 ], [ %508, %505 ]
  %511 = getelementptr inbounds i32, ptr %496, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !52
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.BBC, ptr %3, i64 %513, i32 2, i64 %494
  %515 = load float, ptr %514, align 4, !tbaa !34
  %516 = fcmp olt float %515, %504
  %517 = add i64 %510, 1
  br i1 %516, label %509, label %518, !llvm.loop !226

518:                                              ; preds = %509
  %519 = trunc i64 %510 to i32
  %520 = sext i32 %506 to i64
  br label %521

521:                                              ; preds = %521, %518
  %522 = phi i64 [ %529, %521 ], [ %520, %518 ]
  %523 = getelementptr inbounds i32, ptr %496, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !52
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.BBC, ptr %3, i64 %525, i32 2, i64 %494
  %527 = load float, ptr %526, align 4, !tbaa !34
  %528 = fcmp ogt float %527, %504
  %529 = add i64 %522, -1
  br i1 %528, label %521, label %530, !llvm.loop !227

530:                                              ; preds = %521
  %531 = trunc i64 %522 to i32
  %532 = icmp slt i32 %519, %531
  br i1 %532, label %533, label %666

533:                                              ; preds = %530
  %534 = getelementptr inbounds i32, ptr %496, i64 %510
  %535 = getelementptr inbounds i32, ptr %496, i64 %522
  store i32 %524, ptr %534, align 4, !tbaa !52
  store i32 %512, ptr %535, align 4, !tbaa !52
  %536 = add nsw i32 %519, 1
  br label %505, !llvm.loop !228

537:                                              ; preds = %432
  %538 = add nsw i32 %5, %4
  %539 = add nsw i32 %538, -1
  %540 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 10
  %541 = load ptr, ptr %540, align 8, !tbaa !57
  %542 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 16
  %543 = load ptr, ptr %542, align 8, !tbaa !76
  %544 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 5
  %545 = load ptr, ptr %544, align 8, !tbaa !70
  %546 = icmp eq ptr %541, null
  %547 = sext i32 %4 to i64
  %548 = getelementptr inbounds i32, ptr %545, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !52
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.MFace, ptr %541, i64 %550
  %552 = getelementptr inbounds %struct.DMFlagMat, ptr %543, i64 %550
  %553 = select i1 %546, ptr %552, ptr %551
  %554 = getelementptr inbounds %struct.MFace, ptr %553, i64 0, i32 6
  %555 = getelementptr inbounds %struct.MFace, ptr %553, i64 0, i32 4
  %556 = getelementptr inbounds %struct.MFace, ptr %553, i64 0, i32 4
  %557 = getelementptr inbounds %struct.DMFlagMat, ptr %553, i64 0, i32 1
  br label %558

558:                                              ; preds = %656, %537
  %559 = phi i32 [ %4, %537 ], [ %665, %656 ]
  %560 = phi i32 [ %539, %537 ], [ %653, %656 ]
  %561 = sext i32 %559 to i64
  br i1 %546, label %564, label %562

562:                                              ; preds = %558
  %563 = load i8, ptr %554, align 1, !tbaa !211
  br label %566

564:                                              ; preds = %558
  %565 = load i8, ptr %557, align 2, !tbaa !214
  br label %608

566:                                              ; preds = %582, %562
  %567 = phi i64 [ %585, %582 ], [ %561, %562 ]
  %568 = getelementptr inbounds i32, ptr %545, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !52
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.MFace, ptr %541, i64 %570, i32 6
  %572 = load i8, ptr %571, align 1, !tbaa !211
  %573 = xor i8 %572, %563
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %576, label %582

576:                                              ; preds = %566
  %577 = load i16, ptr %555, align 4, !tbaa !212
  %578 = getelementptr inbounds %struct.MFace, ptr %541, i64 %570, i32 4
  %579 = load i16, ptr %578, align 4, !tbaa !212
  %580 = icmp eq i16 %577, %579
  %581 = zext i1 %580 to i32
  br label %582

582:                                              ; preds = %576, %566
  %583 = phi i32 [ 0, %566 ], [ %581, %576 ]
  %584 = icmp eq i32 %583, 0
  %585 = add i64 %567, 1
  br i1 %584, label %586, label %566, !llvm.loop !229

586:                                              ; preds = %582
  %587 = sext i32 %560 to i64
  br label %588

588:                                              ; preds = %604, %586
  %589 = phi i64 [ %607, %604 ], [ %587, %586 ]
  %590 = getelementptr inbounds i32, ptr %545, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !52
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.MFace, ptr %541, i64 %592, i32 6
  %594 = load i8, ptr %593, align 1, !tbaa !211
  %595 = xor i8 %594, %563
  %596 = and i8 %595, 1
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %598, label %604

598:                                              ; preds = %588
  %599 = load i16, ptr %556, align 4, !tbaa !212
  %600 = getelementptr inbounds %struct.MFace, ptr %541, i64 %592, i32 4
  %601 = load i16, ptr %600, align 4, !tbaa !212
  %602 = icmp eq i16 %599, %601
  %603 = zext i1 %602 to i32
  br label %604

604:                                              ; preds = %598, %588
  %605 = phi i32 [ 0, %588 ], [ %603, %598 ]
  %606 = icmp eq i32 %605, 0
  %607 = add i64 %589, -1
  br i1 %606, label %588, label %650, !llvm.loop !230

608:                                              ; preds = %624, %564
  %609 = phi i64 [ %627, %624 ], [ %561, %564 ]
  %610 = getelementptr inbounds i32, ptr %545, i64 %609
  %611 = load i32, ptr %610, align 4, !tbaa !52
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.DMFlagMat, ptr %543, i64 %612, i32 1
  %614 = load i8, ptr %613, align 2, !tbaa !214
  %615 = xor i8 %614, %565
  %616 = and i8 %615, 1
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %624

618:                                              ; preds = %608
  %619 = getelementptr inbounds %struct.DMFlagMat, ptr %543, i64 %612
  %620 = load i16, ptr %553, align 2, !tbaa !216
  %621 = load i16, ptr %619, align 2, !tbaa !216
  %622 = icmp eq i16 %620, %621
  %623 = zext i1 %622 to i32
  br label %624

624:                                              ; preds = %618, %608
  %625 = phi i32 [ 0, %608 ], [ %623, %618 ]
  %626 = icmp eq i32 %625, 0
  %627 = add i64 %609, 1
  br i1 %626, label %628, label %608, !llvm.loop !231

628:                                              ; preds = %624
  %629 = sext i32 %560 to i64
  br label %630

630:                                              ; preds = %646, %628
  %631 = phi i64 [ %649, %646 ], [ %629, %628 ]
  %632 = getelementptr inbounds i32, ptr %545, i64 %631
  %633 = load i32, ptr %632, align 4, !tbaa !52
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.DMFlagMat, ptr %543, i64 %634, i32 1
  %636 = load i8, ptr %635, align 2, !tbaa !214
  %637 = xor i8 %636, %565
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %640, label %646

640:                                              ; preds = %630
  %641 = getelementptr inbounds %struct.DMFlagMat, ptr %543, i64 %634
  %642 = load i16, ptr %553, align 2, !tbaa !216
  %643 = load i16, ptr %641, align 2, !tbaa !216
  %644 = icmp eq i16 %642, %643
  %645 = zext i1 %644 to i32
  br label %646

646:                                              ; preds = %640, %630
  %647 = phi i32 [ 0, %630 ], [ %645, %640 ]
  %648 = icmp eq i32 %647, 0
  %649 = add i64 %631, -1
  br i1 %648, label %630, label %650, !llvm.loop !232

650:                                              ; preds = %604, %646
  %651 = phi i64 [ %609, %646 ], [ %567, %604 ]
  %652 = phi i64 [ %631, %646 ], [ %589, %604 ]
  %653 = trunc i64 %652 to i32
  %654 = trunc i64 %651 to i32
  %655 = icmp slt i32 %654, %653
  br i1 %655, label %656, label %666

656:                                              ; preds = %650
  %657 = shl i64 %651, 32
  %658 = ashr exact i64 %657, 32
  %659 = getelementptr inbounds i32, ptr %545, i64 %658
  %660 = load i32, ptr %659, align 4, !tbaa !52
  %661 = shl i64 %652, 32
  %662 = ashr exact i64 %661, 32
  %663 = getelementptr inbounds i32, ptr %545, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !52
  store i32 %664, ptr %659, align 4, !tbaa !52
  store i32 %660, ptr %663, align 4, !tbaa !52
  %665 = add nsw i32 %654, 1
  br label %558, !llvm.loop !233

666:                                              ; preds = %650, %530
  %667 = phi i32 [ %519, %530 ], [ %654, %650 ]
  %668 = load ptr, ptr %363, align 8, !tbaa !49
  %669 = getelementptr inbounds %struct.PBVHNode, ptr %668, i64 %365, i32 3
  %670 = load i32, ptr %669, align 8, !tbaa !106
  %671 = sub nsw i32 %667, %4
  tail call fastcc void @build_sub(ptr noundef %0, i32 noundef %670, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef %671)
  %672 = load ptr, ptr %363, align 8, !tbaa !49
  %673 = getelementptr inbounds %struct.PBVHNode, ptr %672, i64 %365, i32 3
  %674 = load i32, ptr %673, align 8, !tbaa !106
  %675 = add nsw i32 %674, 1
  %676 = add nsw i32 %5, %4
  %677 = sub i32 %676, %667
  tail call fastcc void @build_sub(ptr noundef %0, i32 noundef %675, ptr noundef null, ptr noundef %3, i32 noundef %667, i32 noundef %677)
  br label %678

678:                                              ; preds = %356, %294, %666
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret void
}

declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i8 @paint_is_face_hidden(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #7

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #7

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #7

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @pbvh_bmesh_normals_update(ptr noundef, i32 noundef) local_unnamed_addr #7

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tree_insert(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #15 {
  br label %3

3:                                                ; preds = %17, %12, %2
  %4 = phi ptr [ %0, %2 ], [ %14, %12 ], [ %19, %17 ]
  %5 = load ptr, ptr %1, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %5, i64 0, i32 11
  %7 = load float, ptr %6, align 4, !tbaa !109
  %8 = load ptr, ptr %4, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %8, i64 0, i32 11
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = fcmp olt float %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.node_tree, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !234
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3

16:                                               ; preds = %12
  store ptr %1, ptr %13, align 8, !tbaa !234
  br label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.node_tree, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !235
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %3

21:                                               ; preds = %17
  store ptr %1, ptr %18, align 8, !tbaa !235
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @traverse_tree(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  br label %5

5:                                                ; preds = %11, %4
  %6 = phi ptr [ %0, %4 ], [ %14, %11 ]
  %7 = getelementptr inbounds %struct.node_tree, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @traverse_tree(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr %6, align 8, !tbaa !180
  tail call void %1(ptr noundef %12, ptr noundef %2, ptr noundef %3) #18
  %13 = getelementptr inbounds %struct.node_tree, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_tree(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.node_tree, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !234
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @free_tree(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !234
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.node_tree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @free_tree(ptr noundef nonnull %8)
  store ptr null, ptr %7, align 8, !tbaa !235
  br label %11

11:                                               ; preds = %10, %6
  tail call void @free(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

declare zeroext i8 @GPU_pbvh_buffers_diffuse_changed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @GPU_build_grid_pbvh_buffers(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @GPU_build_mesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @GPU_build_bmesh_pbvh_buffers(i32 noundef) local_unnamed_addr #7

declare void @GPU_update_grid_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @GPU_update_mesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @GPU_update_bmesh_pbvh_buffers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @GPU_init_draw_pbvh_BB() local_unnamed_addr #7

declare void @GPU_draw_pbvh_BB(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @GPU_end_draw_pbvh_BB() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = !{!45, !46, i64 16}
!45 = !{!"PBVH", !46, i64 0, !46, i64 4, !47, i64 8, !46, i64 16, !46, i64 20, !47, i64 24, !46, i64 32, !46, i64 36, !46, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !48, i64 72, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !46, i64 144, !47, i64 152, !47, i64 160, !36, i64 168, !36, i64 169, !47, i64 176, !35, i64 184, !35, i64 188, !46, i64 192, !46, i64 196, !47, i64 200}
!46 = !{!"int", !36, i64 0}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!"CCGKey", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!49 = !{!45, !47, i64 8}
!50 = !{!47, !47, i64 0}
!51 = !{!45, !46, i64 20}
!52 = !{!46, !46, i64 0}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40}
!56 = !{!45, !46, i64 0}
!57 = !{!45, !47, i64 56}
!58 = !{!45, !47, i64 48}
!59 = !{!45, !47, i64 160}
!60 = !{!45, !46, i64 36}
!61 = !{!45, !46, i64 40}
!62 = !{!45, !47, i64 64}
!63 = !{!64, !46, i64 12}
!64 = !{!"MFace", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !65, i64 16, !36, i64 18, !36, i64 19}
!65 = !{!"short", !36, i64 0}
!66 = !{!64, !46, i64 0}
!67 = distinct !{!67, !39, !40}
!68 = distinct !{!68, !39, !40}
!69 = !{!45, !46, i64 32}
!70 = !{!45, !47, i64 24}
!71 = distinct !{!71, !39, !40}
!72 = !{!48, !46, i64 8}
!73 = !{!45, !47, i64 112}
!74 = !{!45, !47, i64 120}
!75 = !{!45, !47, i64 128}
!76 = !{!45, !47, i64 136}
!77 = !{!45, !46, i64 144}
!78 = !{i64 0, i64 4, !52, i64 4, i64 4, !52, i64 8, i64 4, !52, i64 12, i64 4, !52, i64 16, i64 4, !52, i64 20, i64 4, !52, i64 24, i64 4, !52, i64 28, i64 4, !52, i64 32, i64 4, !52, i64 36, i64 4, !52}
!79 = !{!45, !47, i64 152}
!80 = !{!48, !46, i64 4}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = !{!84, !47, i64 0}
!84 = !{!"PBVHNode", !47, i64 0, !85, i64 8, !85, i64 32, !46, i64 56, !47, i64 64, !46, i64 72, !47, i64 80, !46, i64 88, !46, i64 92, !47, i64 96, !46, i64 104, !35, i64 108, !47, i64 112, !46, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !46, i64 176}
!85 = !{!"", !36, i64 0, !36, i64 12}
!86 = !{!84, !47, i64 80}
!87 = !{!84, !47, i64 96}
!88 = !{!84, !47, i64 112}
!89 = !{!84, !47, i64 136}
!90 = !{!84, !47, i64 144}
!91 = !{!84, !47, i64 152}
!92 = distinct !{!92, !39, !40}
!93 = !{!45, !36, i64 168}
!94 = distinct !{!94, !39, !40}
!95 = !{!96, !47, i64 0}
!96 = !{!"PBVHIter", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !46, i64 32, !36, i64 40, !46, i64 1640}
!97 = !{!96, !47, i64 8}
!98 = !{!96, !47, i64 16}
!99 = !{!96, !47, i64 24}
!100 = !{!96, !46, i64 1640}
!101 = !{!102, !47, i64 0}
!102 = !{!"PBVHStack", !47, i64 0, !46, i64 8}
!103 = !{!102, !46, i64 8}
!104 = !{!96, !46, i64 32}
!105 = distinct !{!105, !39, !40}
!106 = !{!84, !46, i64 56}
!107 = distinct !{!107, !39, !40}
!108 = distinct !{!108, !39, !40}
!109 = !{!84, !35, i64 108}
!110 = !{i64 0, i64 12, !111, i64 12, i64 12, !111}
!111 = !{!36, !36, i64 0}
!112 = distinct !{!112, !39, !40}
!113 = !{!114, !46, i64 20}
!114 = !{!"PBVHVertexIter", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !46, i64 72, !46, i64 76, !47, i64 80, !46, i64 88, !47, i64 96, !47, i64 104, !115, i64 112, !115, i64 136, !47, i64 160, !46, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !47, i64 200, !47, i64 208, !47, i64 216}
!115 = !{!"GSetIterator", !116, i64 0}
!116 = !{!"GHashIterator", !47, i64 0, !47, i64 8, !46, i64 16}
!117 = !{!114, !46, i64 0}
!118 = !{!114, !46, i64 72}
!119 = !{!114, !47, i64 24}
!120 = !{!114, !46, i64 76}
!121 = !{!114, !46, i64 4}
!122 = !{!114, !46, i64 8}
!123 = !{!114, !47, i64 64}
!124 = !{!114, !47, i64 32}
!125 = !{!114, !46, i64 88}
!126 = !{!114, !46, i64 16}
!127 = !{!114, !46, i64 12}
!128 = !{!114, !47, i64 192}
!129 = !{!114, !47, i64 40}
!130 = !{!48, !46, i64 20}
!131 = !{!114, !47, i64 208}
!132 = !{!48, !46, i64 36}
!133 = !{!48, !46, i64 24}
!134 = !{!114, !47, i64 216}
!135 = !{!114, !47, i64 56}
!136 = !{!114, !47, i64 80}
!137 = !{!114, !47, i64 96}
!138 = !{!114, !47, i64 176}
!139 = !{!114, !47, i64 200}
!140 = !{!114, !47, i64 104}
!141 = !{!116, !47, i64 8}
!142 = !{!143, !47, i64 8}
!143 = !{!"_gh_Entry", !47, i64 0, !47, i64 8, !47, i64 16}
!144 = !{!114, !47, i64 184}
!145 = !{!146, !47, i64 0}
!146 = !{!"BMVert", !147, i64 0, !47, i64 16, !36, i64 24, !36, i64 36, !47, i64 48}
!147 = !{!"BMHeader", !47, i64 0, !46, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!148 = !{!114, !46, i64 168}
!149 = distinct !{!149, !39, !40}
!150 = distinct !{!150, !39, !40}
!151 = distinct !{!151, !39, !40}
!152 = !{i32 0, i32 16}
!153 = !{!84, !47, i64 64}
!154 = !{!84, !46, i64 72}
!155 = !{!64, !46, i64 4}
!156 = !{!64, !46, i64 8}
!157 = !{!158, !36, i64 18}
!158 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!159 = distinct !{!159, !39, !40}
!160 = distinct !{!160, !39, !40}
!161 = distinct !{!161, !39, !40}
!162 = !{!84, !46, i64 88}
!163 = !{!65, !65, i64 0}
!164 = distinct !{!164, !39, !40}
!165 = distinct !{!165, !39, !40}
!166 = distinct !{!166, !39, !40}
!167 = distinct !{!167, !39, !40}
!168 = distinct !{!168, !39, !40}
!169 = distinct !{!169, !39, !40}
!170 = !{!45, !47, i64 176}
!171 = !{!45, !46, i64 84}
!172 = !{!84, !46, i64 92}
!173 = !{!45, !46, i64 80}
!174 = !{!84, !46, i64 120}
!175 = !{!84, !47, i64 128}
!176 = !{!177, !36, i64 36}
!177 = !{!"", !178, i64 0, !36, i64 36}
!178 = !{!"", !36, i64 0, !36, i64 12, !36, i64 24}
!179 = distinct !{!179, !39, !40}
!180 = !{!181, !47, i64 0}
!181 = !{!"node_tree", !47, i64 0, !47, i64 8, !47, i64 16}
!182 = distinct !{!182, !39, !40}
!183 = distinct !{!183, !39, !40}
!184 = distinct !{!184, !39, !40}
!185 = distinct !{!185, !39, !40}
!186 = distinct !{!186, !39, !40}
!187 = !{!188, !47, i64 0}
!188 = !{!"", !47, i64 0, !36, i64 8}
!189 = !{!188, !36, i64 8}
!190 = distinct !{!190, !39, !40}
!191 = distinct !{!191, !39, !40}
!192 = !{!45, !36, i64 169}
!193 = distinct !{!193, !39, !40}
!194 = !{!45, !46, i64 4}
!195 = distinct !{!195, !39, !40}
!196 = !{!197, !65, i64 2092}
!197 = !{!"Global", !47, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !198, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !65, i64 2084, !65, i64 2086, !65, i64 2088, !36, i64 2090, !65, i64 2092, !46, i64 2096, !46, i64 2100, !36, i64 2104, !46, i64 2108, !46, i64 2112, !36, i64 2116}
!198 = !{!"ListBase", !47, i64 0, !47, i64 8}
!199 = distinct !{!199, !39, !40}
!200 = distinct !{!200, !39, !40}
!201 = distinct !{!201, !39, !40}
!202 = distinct !{!202, !39, !40}
!203 = distinct !{!203, !39, !40}
!204 = !{!205, !47, i64 0}
!205 = !{!"", !47, i64 0}
!206 = distinct !{!206, !39, !40}
!207 = distinct !{!207, !39, !40}
!208 = !{!114, !47, i64 160}
!209 = !{!114, !47, i64 48}
!210 = !{!45, !46, i64 108}
!211 = !{!64, !36, i64 19}
!212 = !{!64, !65, i64 16}
!213 = distinct !{!213, !39, !40}
!214 = !{!215, !36, i64 2}
!215 = !{!"DMFlagMat", !65, i64 0, !36, i64 2}
!216 = !{!215, !65, i64 0}
!217 = distinct !{!217, !39, !40}
!218 = distinct !{!218, !39, !40}
!219 = distinct !{!219, !39, !40}
!220 = distinct !{!220, !39, !40}
!221 = !{!143, !47, i64 16}
!222 = distinct !{!222, !39, !40}
!223 = distinct !{!223, !39, !40}
!224 = distinct !{!224, !39, !40}
!225 = distinct !{!225, !39, !40}
!226 = distinct !{!226, !39, !40}
!227 = distinct !{!227, !39, !40}
!228 = distinct !{!228, !40}
!229 = distinct !{!229, !39, !40}
!230 = distinct !{!230, !39, !40}
!231 = distinct !{!231, !39, !40}
!232 = distinct !{!232, !39, !40}
!233 = distinct !{!233, !40}
!234 = !{!181, !47, i64 8}
!235 = !{!181, !47, i64 16}
