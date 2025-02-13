; ModuleID = 'blender/source/blender/blenkernel/intern/pbvh_bmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/pbvh_bmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.PBVHNode = type { ptr, %struct.BB, %struct.BB, i32, ptr, i32, ptr, i32, i32, ptr, i16, float, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.BB = type { [3 x float], [3 x float] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.PBVH = type { i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.CCGKey, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, ptr, float, float, i32, i32, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BBC = type { [3 x float], [3 x float], [3 x float] }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }
%struct.EdgeQueue = type { ptr, ptr, float, float }
%struct.EdgeQueueContext = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"PBVHNode\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bm_faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_pbvh_bmesh_node_save_orig = private unnamed_addr constant [30 x i8] c"BKE_pbvh_bmesh_node_save_orig\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prim_bbc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BBC\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"bm_unique_verts\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bm_other_verts\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"deleted_verts\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pbvh_bmesh_node_raycast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.GSetIterator, align 8
  %7 = alloca [3 x ptr], align 16
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 19
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 18
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %37, %18 ]
  %20 = phi i8 [ 0, %15 ], [ %36, %18 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !42
  %22 = getelementptr inbounds [3 x i32], ptr %21, i64 %19
  %23 = load ptr, ptr %17, align 8, !tbaa !43
  %24 = load i32, ptr %22, align 4, !tbaa !44
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %23, i64 %25
  %27 = getelementptr inbounds i32, ptr %22, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !44
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x float], ptr %23, i64 %29
  %31 = getelementptr inbounds i32, ptr %22, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !44
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x float], ptr %23, i64 %33
  %35 = tail call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %30, ptr noundef %34, ptr noundef null, ptr noundef %3) #13
  %36 = or i8 %35, %20
  %37 = add nuw nsw i64 %19, 1
  %38 = load i32, ptr %10, align 8, !tbaa !34
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %18, label %69, !llvm.loop !45

41:                                               ; preds = %9, %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %42 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %6, ptr noundef %43) #15
  %44 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #15, !range !48
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %48 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %49

49:                                               ; preds = %46, %63
  %50 = phi i8 [ 0, %46 ], [ %64, %63 ]
  %51 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %6) #15
  %52 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %51) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @BM_face_as_array_vert_tri(ptr noundef %51, ptr noundef nonnull %7) #13
  %55 = load ptr, ptr %7, align 16, !tbaa !49
  %56 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %47, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %48, align 16, !tbaa !49
  %60 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2
  %61 = call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %56, ptr noundef nonnull %58, ptr noundef nonnull %60, ptr noundef null, ptr noundef %3) #13
  %62 = or i8 %61, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %63

63:                                               ; preds = %54, %49
  %64 = phi i8 [ %50, %49 ], [ %62, %54 ]
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %6) #15
  %65 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #15, !range !48
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %49, label %67, !llvm.loop !50

67:                                               ; preds = %63, %41
  %68 = phi i8 [ 0, %41 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %69

69:                                               ; preds = %18, %13, %67
  %70 = phi i8 [ %68, %67 ], [ 0, %13 ], [ %36, %18 ]
  ret i8 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @ray_face_intersection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !51 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !52 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #15, !range !48
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !53 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !55
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !57 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_pbvh_bmesh_node_raycast_detail(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.GSetIterator, align 8
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %6, ptr noundef %15) #15
  %16 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #15, !range !48
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %20 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %21

21:                                               ; preds = %18, %38
  %22 = phi i8 [ 0, %18 ], [ %40, %38 ]
  %23 = phi ptr [ null, %18 ], [ %39, %38 ]
  %24 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %6) #15
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %24) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @BM_face_as_array_vert_tri(ptr noundef %24, ptr noundef nonnull %7) #13
  %28 = load ptr, ptr %7, align 16, !tbaa !49
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %19, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %20, align 16, !tbaa !49
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %34 = call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %29, ptr noundef nonnull %31, ptr noundef nonnull %33, ptr noundef null, ptr noundef %4) #13
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr %23, ptr %24
  %37 = select i1 %35, i8 %22, i8 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %38

38:                                               ; preds = %27, %21
  %39 = phi ptr [ %23, %21 ], [ %36, %27 ]
  %40 = phi i8 [ %22, %21 ], [ %37, %27 ]
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %6) #15
  %41 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %6) #15, !range !48
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %21, label %43, !llvm.loop !58

43:                                               ; preds = %38
  %44 = icmp eq i8 %40, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @BM_face_as_array_vert_tri(ptr noundef %39, ptr noundef nonnull %8) #13
  %46 = load ptr, ptr %8, align 16, !tbaa !49
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %51 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %47, ptr noundef nonnull %50) #15
  %52 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  %53 = load ptr, ptr %52, align 16, !tbaa !49
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  %55 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %54) #15
  %56 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %54, ptr noundef nonnull %47) #15
  %57 = call fastcc float @max_fff(float noundef %51, float noundef %55, float noundef %56) #15
  %58 = call float @sqrtf(float noundef %57) #13
  store float %58, ptr %3, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  br label %59

59:                                               ; preds = %13, %43, %45, %5
  %60 = phi i8 [ 0, %5 ], [ %40, %45 ], [ 0, %43 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  ret i8 %60
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !60 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #15
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #7 !PGOFuncName !61 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #15
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #15
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pbvh_bmesh_normals_update(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GSetIterator, align 8
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %45
  %8 = phi i64 [ 0, %5 ], [ %46, %45 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 10
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %17) #15
  %18 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %20
  %21 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #15
  call void @BM_face_normal_update(ptr noundef %21) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #15
  %22 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %20, label %24, !llvm.loop !62

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %26) #15
  %27 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %29
  %30 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #15
  call void @BM_vert_normal_update(ptr noundef %30) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #15
  %31 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %29, label %33, !llvm.loop !64

33:                                               ; preds = %29, %24
  %34 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %35) #15
  %36 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %38
  %39 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #15
  call void @BM_vert_normal_update(ptr noundef %39) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #15
  %40 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %38, label %42, !llvm.loop !66

42:                                               ; preds = %38, %33
  %43 = load i16, ptr %11, align 8
  %44 = and i16 %43, -3
  store i16 %44, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %45

45:                                               ; preds = %42, %7
  %46 = add nuw nsw i64 %8, 1
  %47 = icmp eq i64 %46, %6
  br i1 %47, label %48, label %7, !llvm.loop !67

48:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_build_bmesh(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  store i32 %4, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  store i32 %5, ptr %9, align 4, !tbaa !71
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  store ptr %1, ptr %10, align 8, !tbaa !72
  tail call void @BKE_pbvh_bmesh_detail_size_set(ptr noundef %0, float noundef 7.500000e-01) #15
  store i32 2, ptr %0, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  store ptr %3, ptr %11, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 100, ptr %12, align 8, !tbaa !75
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !76
  br label %18

18:                                               ; preds = %14, %6
  tail call fastcc void @pbvh_bmesh_node_layers_reset(ptr noundef nonnull %0) #15
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str) #13
  %21 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 1, ptr %22, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %20, i64 0, i32 10
  store i16 1, ptr %23, align 8
  %24 = load ptr, ptr %10, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !79
  %27 = tail call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %26) #13
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %20, i64 0, i32 15
  store ptr %27, ptr %28, align 8, !tbaa !47
  %29 = load ptr, ptr %10, align 8, !tbaa !72
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %29, i8 noundef zeroext 3, ptr noundef null) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %18, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %18 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !47
  call void @BLI_gset_insert(ptr noundef %34, ptr noundef nonnull %33) #13
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !84

37:                                               ; preds = %32, %18
  %38 = call fastcc zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef nonnull %0, i32 noundef 0) #15, !range !48
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call fastcc void @pbvh_bmesh_node_finalize(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #15
  br label %41

41:                                               ; preds = %40, %37
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_pbvh_bmesh_detail_size_set(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 23
  store float %1, ptr %3, align 8, !tbaa !85
  %4 = fmul float %1, 0x3FD99999A0000000
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 24
  store float %4, ptr %5, align 4, !tbaa !86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_node_layers_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !87 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %4, i8 noundef zeroext 1, ptr noundef null) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = sext i32 %6 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %9, %11 ], [ %17, %13 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  store i32 -1, ptr %16, align 4, !tbaa !44
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !90

19:                                               ; preds = %13, %1
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %4, i8 noundef zeroext 3, ptr noundef null) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = sext i32 %8 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %20, %22 ], [ %28, %24 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds i8, ptr %26, i64 %23
  store i32 -1, ptr %27, align 4, !tbaa !44
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %24, !llvm.loop !93

30:                                               ; preds = %24, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !94 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #15
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !95 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %5, i64 %6, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call i32 @BLI_gset_size(ptr noundef %8) #13
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !75
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.2, i32 noundef %9) #13
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 36
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.3) #13
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %3, ptr noundef %8) #15
  %19 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13, %36
  %22 = phi i32 [ %37, %36 ], [ 0, %13 ]
  %23 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %3) #15
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds %struct.BBC, ptr %18, i64 %24
  call void @BB_reset(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %28

28:                                               ; preds = %28, %21
  %29 = phi ptr [ %27, %21 ], [ %34, %28 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  call void @BB_expand(ptr noundef %25, ptr noundef nonnull %32) #13
  %33 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = icmp eq ptr %34, %27
  br i1 %35, label %36, label %28, !llvm.loop !103

36:                                               ; preds = %28
  call void @BBC_update_centroid(ptr noundef %25) #13
  call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %23, ptr noundef %25) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %3) #15
  %37 = add i32 %22, 1
  %38 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %3) #15, !range !48
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %21, label %40, !llvm.loop !104

40:                                               ; preds = %36, %13
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %14, i32 noundef %1) #15
  call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #13
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %41(ptr noundef %18) #13
  br label %42

42:                                               ; preds = %2, %40
  %43 = phi i8 [ 1, %40 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_node_finalize(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !105 {
  %5 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = sext i32 %1 to i64
  %9 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.4) #13
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 16
  store ptr %9, ptr %10, align 8, !tbaa !63
  %11 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.5) #13
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 17
  store ptr %11, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 1
  tail call void @BB_reset(ptr noundef nonnull %13) #13
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %5, ptr noundef %15) #15
  %16 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %4
  %19 = sext i32 %3 to i64
  %20 = sext i32 %2 to i64
  br label %21

21:                                               ; preds = %18, %52
  %22 = phi i8 [ 0, %18 ], [ %55, %52 ]
  %23 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %5) #15
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds i8, ptr %24, i64 %19
  store i32 %1, ptr %25, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %28

28:                                               ; preds = %47, %21
  %29 = phi ptr [ %27, %21 ], [ %50, %47 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = load ptr, ptr %10, align 8, !tbaa !63
  %33 = call zeroext i8 @BLI_gset_haskey(ptr noundef %32, ptr noundef %31) #13
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load ptr, ptr %31, align 8, !tbaa !88
  %37 = getelementptr inbounds i8, ptr %36, i64 %20
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %12, align 8, !tbaa !65
  %42 = call zeroext i8 @BLI_gset_add(ptr noundef %41, ptr noundef nonnull %31) #13
  br label %47

43:                                               ; preds = %35
  %44 = load ptr, ptr %10, align 8, !tbaa !63
  call void @BLI_gset_insert(ptr noundef %44, ptr noundef nonnull %31) #13
  %45 = load ptr, ptr %31, align 8, !tbaa !88
  %46 = getelementptr inbounds i8, ptr %45, i64 %20
  store i32 %1, ptr %46, align 4, !tbaa !44
  br label %47

47:                                               ; preds = %40, %43, %28
  %48 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  call void @BB_expand(ptr noundef nonnull %13, ptr noundef nonnull %48) #13
  %49 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = icmp eq ptr %50, %27
  br i1 %51, label %52, label %28, !llvm.loop !106

52:                                               ; preds = %47
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23) #15
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i8 1, i8 %22
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %5) #15
  %56 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %21, label %58, !llvm.loop !107

58:                                               ; preds = %52
  %59 = icmp eq i8 %55, 0
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %58, %4
  %62 = phi i32 [ 1, %4 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8
  %64 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !108
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %63) #13
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %63, i32 noundef %62) #13
  %65 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 10
  %66 = load i16, ptr %65, align 8
  %67 = or i16 %66, 2
  store i16 %67, ptr %65, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.BLI_Buffer, align 8
  %7 = alloca [32 x ptr], align 16
  %8 = alloca %struct.BLI_Buffer, align 8
  %9 = alloca %struct.EdgeQueue, align 8
  %10 = alloca %struct.EdgeQueueContext, align 8
  %11 = alloca %struct.EdgeQueue, align 8
  %12 = alloca %struct.EdgeQueueContext, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  store ptr %5, ptr %6, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 2, i32 1>, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  store ptr %7, ptr %8, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 32, i32 1>, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 34) #13
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = and i32 %1, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  %26 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 128, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #14
  store ptr %9, ptr %10, align 8, !tbaa !112
  %27 = getelementptr inbounds %struct.EdgeQueueContext, ptr %10, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !114
  %28 = getelementptr inbounds %struct.EdgeQueueContext, ptr %10, i64 0, i32 2
  %29 = load ptr, ptr %15, align 8, !tbaa !72
  store ptr %29, ptr %28, align 8, !tbaa !115
  %30 = getelementptr inbounds %struct.EdgeQueueContext, ptr %10, i64 0, i32 3
  store i32 %18, ptr %30, align 8, !tbaa !116
  %31 = getelementptr inbounds %struct.EdgeQueueContext, ptr %10, i64 0, i32 4
  store i32 %20, ptr %31, align 4, !tbaa !117
  %32 = getelementptr inbounds %struct.EdgeQueueContext, ptr %10, i64 0, i32 5
  store i32 %22, ptr %32, align 8, !tbaa !118
  call fastcc void @short_edge_queue_create(ptr noundef nonnull %10, ptr noundef nonnull %0, ptr noundef %2, float noundef %3) #15
  %33 = load ptr, ptr %9, align 8, !tbaa !119
  %34 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %33) #13
  %35 = icmp eq i8 %34, 0
  %36 = zext i1 %35 to i8
  call fastcc void @pbvh_bmesh_collapse_short_edges(ptr noundef nonnull %10, ptr noundef nonnull %0, ptr noundef nonnull %8) #15
  %37 = load ptr, ptr %9, align 8, !tbaa !119
  call void @BLI_heap_free(ptr noundef %37, ptr noundef null) #13
  call void @BLI_mempool_destroy(ptr noundef %26) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  br label %38

38:                                               ; preds = %25, %4
  %39 = phi i8 [ %36, %25 ], [ 0, %4 ]
  %40 = and i32 %1, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  %43 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 128, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #14
  store ptr %11, ptr %12, align 8, !tbaa !112
  %44 = getelementptr inbounds %struct.EdgeQueueContext, ptr %12, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !114
  %45 = getelementptr inbounds %struct.EdgeQueueContext, ptr %12, i64 0, i32 2
  %46 = load ptr, ptr %15, align 8, !tbaa !72
  store ptr %46, ptr %45, align 8, !tbaa !115
  %47 = getelementptr inbounds %struct.EdgeQueueContext, ptr %12, i64 0, i32 3
  store i32 %18, ptr %47, align 8, !tbaa !116
  %48 = getelementptr inbounds %struct.EdgeQueueContext, ptr %12, i64 0, i32 4
  store i32 %20, ptr %48, align 4, !tbaa !117
  %49 = getelementptr inbounds %struct.EdgeQueueContext, ptr %12, i64 0, i32 5
  store i32 %22, ptr %49, align 8, !tbaa !118
  call fastcc void @long_edge_queue_create(ptr noundef nonnull %12, ptr noundef nonnull %0, ptr noundef %2, float noundef %3) #15
  %50 = load ptr, ptr %11, align 8, !tbaa !119
  %51 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %50) #13
  %52 = icmp eq i8 %51, 0
  %53 = zext i1 %52 to i8
  %54 = or i8 %39, %53
  call fastcc void @pbvh_bmesh_subdivide_long_edges(ptr noundef nonnull %12, ptr noundef nonnull %0, ptr noundef nonnull %6) #15
  %55 = load ptr, ptr %11, align 8, !tbaa !119
  call void @BLI_heap_free(ptr noundef %55, ptr noundef null) #13
  call void @BLI_mempool_destroy(ptr noundef %43) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  br label %56

56:                                               ; preds = %42, %38
  %57 = phi i8 [ %54, %42 ], [ %39, %38 ]
  %58 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !78
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %63

63:                                               ; preds = %61, %74
  %64 = phi i32 [ %59, %61 ], [ %75, %74 ]
  %65 = phi i64 [ 0, %61 ], [ %76, %74 ]
  %66 = load ptr, ptr %62, align 8, !tbaa !77
  %67 = getelementptr inbounds %struct.PBVHNode, ptr %66, i64 %65, i32 10
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 257
  %70 = icmp eq i16 %69, 257
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = and i16 %68, -257
  store i16 %72, ptr %67, align 8
  %73 = load i32, ptr %58, align 4, !tbaa !78
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi i32 [ %73, %71 ], [ %64, %63 ]
  %76 = add nuw nsw i64 %65, 1
  %77 = sext i32 %75 to i64
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %63, label %79, !llvm.loop !121

79:                                               ; preds = %74, %56
  call void @_bli_buffer_free(ptr noundef nonnull %6) #13
  call void @_bli_buffer_free(ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i8 %57
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @short_edge_queue_create(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !122 {
  %5 = alloca %struct.GSetIterator, align 8
  %6 = tail call ptr @BLI_heap_new() #13
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %6, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.EdgeQueue, ptr %7, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.EdgeQueue, ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 24
  %11 = load float, ptr %10, align 4, !tbaa !86
  %12 = insertelement <2 x float> poison, float %3, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %14 = fmul <2 x float> %13, %13
  store <2 x float> %14, ptr %9, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !78
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %39
  %21 = phi i32 [ %16, %18 ], [ %40, %39 ]
  %22 = phi i64 [ 0, %18 ], [ %41, %39 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %22, i32 10
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 385
  %27 = icmp eq i16 %26, 257
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %22, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %5, ptr noundef %30) #15
  %31 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %33
  %34 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %5) #15
  call fastcc void @short_edge_queue_face_add(ptr noundef nonnull %0, ptr noundef %34) #15
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %5) #15
  %35 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !llvm.loop !124

37:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %38 = load i32, ptr %15, align 4, !tbaa !78
  br label %39

39:                                               ; preds = %37, %20
  %40 = phi i32 [ %38, %37 ], [ %21, %20 ]
  %41 = add nuw nsw i64 %22, 1
  %42 = sext i32 %40 to i64
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %20, label %44, !llvm.loop !125

44:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_collapse_short_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !126 {
  %4 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !86
  %6 = fmul float %5, %5
  %7 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.6) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !112
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %9) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %54
  %16 = phi i8 [ 0, %12 ], [ %55, %54 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !112
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = tail call ptr @BLI_heap_popmin(ptr noundef %18) #13
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %19, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = load ptr, ptr %13, align 8, !tbaa !114
  tail call void @BLI_mempool_free(ptr noundef %23, ptr noundef nonnull %19) #13
  %24 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef %20) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %54, !llvm.loop !127

26:                                               ; preds = %15
  %27 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef %22) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %54, !llvm.loop !127

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %32 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %30, ptr noundef nonnull %31) #15
  %33 = fcmp ult float %32, %6
  br i1 %33, label %34, label %54, !llvm.loop !127

34:                                               ; preds = %29
  %35 = tail call ptr @BM_edge_exists(ptr noundef %20, ptr noundef %22) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37, !llvm.loop !127

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = load i32, ptr %14, align 4, !tbaa !117
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !44
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %54, label %46, !llvm.loop !127

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = getelementptr inbounds i8, ptr %49, i64 %42
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %54, label %53, !llvm.loop !127

53:                                               ; preds = %46
  tail call fastcc void @pbvh_bmesh_collapse_edge(ptr noundef %1, ptr noundef nonnull %35, ptr noundef %20, ptr noundef %22, ptr noundef %7, ptr noundef %2, ptr noundef nonnull %0) #15
  br label %54

54:                                               ; preds = %37, %46, %34, %29, %15, %26, %53
  %55 = phi i8 [ 1, %53 ], [ %16, %26 ], [ %16, %15 ], [ %16, %29 ], [ %16, %34 ], [ %16, %46 ], [ %16, %37 ]
  %56 = load ptr, ptr %0, align 8, !tbaa !112
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  %58 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %57) #13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %15, label %60

60:                                               ; preds = %54, %3
  tail call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @long_edge_queue_create(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !132 {
  %5 = alloca %struct.GSetIterator, align 8
  %6 = tail call ptr @BLI_heap_new() #13
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %6, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.EdgeQueue, ptr %7, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.EdgeQueue, ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 23
  %11 = load float, ptr %10, align 8, !tbaa !85
  %12 = insertelement <2 x float> poison, float %3, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %14 = fmul <2 x float> %13, %13
  store <2 x float> %14, ptr %9, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !78
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %39
  %21 = phi i32 [ %16, %18 ], [ %40, %39 ]
  %22 = phi i64 [ 0, %18 ], [ %41, %39 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %22, i32 10
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 385
  %27 = icmp eq i16 %26, 257
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %22, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %5, ptr noundef %30) #15
  %31 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %33
  %34 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %5) #15
  call fastcc void @long_edge_queue_face_add(ptr noundef nonnull %0, ptr noundef %34) #15
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %5) #15
  %35 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %5) #15, !range !48
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !llvm.loop !133

37:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %38 = load i32, ptr %15, align 4, !tbaa !78
  br label %39

39:                                               ; preds = %37, %20
  %40 = phi i32 [ %38, %37 ], [ %21, %20 ]
  %41 = add nuw nsw i64 %22, 1
  %42 = sext i32 %40 to i64
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %20, label %44, !llvm.loop !134

44:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_subdivide_long_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !135 {
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %5) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %8, %47
  %12 = phi i8 [ 0, %8 ], [ %48, %47 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !112
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = tail call ptr @BLI_heap_popmin(ptr noundef %14) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %15, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = load ptr, ptr %9, align 8, !tbaa !114
  tail call void @BLI_mempool_free(ptr noundef %19, ptr noundef nonnull %15) #13
  %20 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %22 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %21) #15
  %23 = load ptr, ptr %0, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.EdgeQueue, ptr %23, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !136
  %26 = fcmp ugt float %22, %25
  br i1 %26, label %27, label %47, !llvm.loop !137

27:                                               ; preds = %11
  %28 = tail call ptr @BM_edge_exists(ptr noundef %16, ptr noundef %18) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30, !llvm.loop !137

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !128
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = load i32, ptr %10, align 4, !tbaa !117
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !44
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %47, label %39, !llvm.loop !137

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !131
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = getelementptr inbounds i8, ptr %42, i64 %35
  %44 = load i32, ptr %43, align 4, !tbaa !44
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %47, label %46, !llvm.loop !137

46:                                               ; preds = %39
  tail call fastcc void @pbvh_bmesh_split_edge(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %28, ptr noundef %2) #15
  br label %47

47:                                               ; preds = %30, %39, %27, %11, %46
  %48 = phi i8 [ 1, %46 ], [ %12, %11 ], [ %12, %27 ], [ %12, %39 ], [ %12, %30 ]
  %49 = load ptr, ptr %0, align 8, !tbaa !112
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %50) #13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %11, label %53

53:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: optsize
declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_bmesh_node_save_orig(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %77

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call i32 @BLI_gset_size(ptr noundef %8) #13
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call i32 @BLI_gset_size(ptr noundef %11) #13
  %13 = add nsw i32 %12, %9
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = tail call i32 @BLI_gset_size(ptr noundef %15) #13
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %18 = sext i32 %13 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @__func__.BKE_pbvh_bmesh_node_save_orig) #13
  store ptr %20, ptr %3, align 8, !tbaa !43
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %22 = sext i32 %16 to i64
  %23 = mul nsw i64 %22, 12
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @__func__.BKE_pbvh_bmesh_node_save_orig) #13
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 19
  store ptr %24, ptr %25, align 8, !tbaa !42
  %26 = load ptr, ptr %7, align 8, !tbaa !63
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %2, ptr noundef %26) #15
  %27 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %6, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %6 ]
  %31 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %2) #15
  %32 = load ptr, ptr %3, align 8, !tbaa !43
  %33 = getelementptr inbounds [3 x float], ptr %32, i64 %30
  %34 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %33, ptr noundef nonnull %34) #15
  %35 = trunc i64 %30 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef %31, i32 noundef %35) #15
  %36 = add nuw i64 %30, 1
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %2) #15
  %37 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %29, label %39, !llvm.loop !138

39:                                               ; preds = %29
  %40 = and i64 %36, 4294967295
  br label %41

41:                                               ; preds = %39, %6
  %42 = phi i64 [ 0, %6 ], [ %40, %39 ]
  %43 = load ptr, ptr %10, align 8, !tbaa !65
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %2, ptr noundef %43) #15
  %44 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %53, %46 ], [ %42, %41 ]
  %48 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %2) #15
  %49 = load ptr, ptr %3, align 8, !tbaa !43
  %50 = getelementptr inbounds [3 x float], ptr %49, i64 %47
  %51 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %50, ptr noundef nonnull %51) #15
  %52 = trunc i64 %47 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef %48, i32 noundef %52) #15
  %53 = add nuw i64 %47, 1
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %2) #15
  %54 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %46, label %56, !llvm.loop !139

56:                                               ; preds = %46, %41
  %57 = load ptr, ptr %14, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %2, ptr noundef %57) #15
  %58 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56, %70
  %61 = phi i32 [ %71, %70 ], [ 0, %56 ]
  %62 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %2) #15
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %62) #15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load ptr, ptr %25, align 8, !tbaa !42
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds [3 x i32], ptr %66, i64 %67
  call fastcc void @bm_face_as_array_index_tri(ptr noundef %62, ptr noundef %68) #15
  %69 = add nsw i32 %61, 1
  br label %70

70:                                               ; preds = %60, %65
  %71 = phi i32 [ %69, %65 ], [ %61, %60 ]
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %2) #15
  %72 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #15, !range !48
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %60, label %74, !llvm.loop !140

74:                                               ; preds = %70, %56
  %75 = phi i32 [ 0, %56 ], [ %71, %70 ]
  %76 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 20
  store i32 %75, ptr %76, align 8, !tbaa !34
  br label %77

77:                                               ; preds = %1, %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !141 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_face_as_array_index_tri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !PGOFuncName !144 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %6) #15
  store i32 %7, ptr %1, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %11) #15
  %13 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !44
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %17) #15
  %19 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %18, ptr %19, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_pbvh_bmesh_after_stroke(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !78
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i32 [ %3, %5 ], [ %21, %20 ]
  %9 = phi i64 [ 0, %5 ], [ %22, %20 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 %9, i32 10
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 %9
  tail call fastcc void @pbvh_bmesh_node_drop_orig(ptr noundef %16) #15
  %17 = trunc i64 %9 to i32
  %18 = tail call fastcc zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef nonnull %0, i32 noundef %17) #15, !range !48
  %19 = load i32, ptr %2, align 4, !tbaa !78
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i32 [ %19, %15 ], [ %8, %7 ]
  %22 = add nuw nsw i64 %9, 1
  %23 = sext i32 %21 to i64
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %7, label %25, !llvm.loop !145

25:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_node_drop_orig(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %9) #13
  br label %13

13:                                               ; preds = %11, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_topology_update(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 256
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_unique_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_other_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !150 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !153 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !154 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !155 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !156 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !157
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %19 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !96
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !96
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %14, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !109
  tail call void %22(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BB_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BB_expand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BBC_update_centroid(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !162 {
  %4 = alloca %struct.GSetIterator, align 8
  %5 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %7 = load i32, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %11, i64 %12, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = tail call i32 @BLI_gset_size(ptr noundef %14) #13
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  tail call fastcc void @pbvh_bmesh_node_finalize(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %7, i32 noundef %9) #15
  br label %160

20:                                               ; preds = %3
  call void @BB_reset(ptr noundef nonnull %5) #13
  %21 = load ptr, ptr %13, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %4, ptr noundef %21) #15
  %22 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %24
  %25 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %4) #15
  %26 = call ptr @BLI_ghash_lookup(ptr noundef %1, ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.BBC, ptr %26, i64 0, i32 2
  call void @BB_expand(ptr noundef nonnull %5, ptr noundef nonnull %27) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %4) #15
  %28 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %24, label %30, !llvm.loop !163

30:                                               ; preds = %24, %20
  %31 = call i32 @BB_widest_axis(ptr noundef nonnull %5) #13
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %32
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = fadd float %34, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !78
  %41 = getelementptr inbounds %struct.PBVHNode, ptr %11, i64 %12, i32 3
  store i32 %40, ptr %41, align 8, !tbaa !164
  %42 = add nsw i32 %40, 2
  call void @pbvh_grow_nodes(ptr noundef %0, i32 noundef %42) #13
  %43 = load ptr, ptr %10, align 8, !tbaa !77
  %44 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12
  %45 = sext i32 %40 to i64
  %46 = add nsw i32 %40, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %45, i32 10
  %49 = load i16, ptr %48, align 8
  %50 = or i16 %49, 1
  store i16 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %47, i32 10
  %52 = load i16, ptr %51, align 8
  %53 = or i16 %52, 1
  store i16 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = call i32 @BLI_gset_size(ptr noundef %55) #13
  %57 = sdiv i32 %56, 2
  %58 = call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %57) #13
  %59 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %45, i32 15
  store ptr %58, ptr %59, align 8, !tbaa !47
  %60 = load ptr, ptr %54, align 8, !tbaa !47
  %61 = call i32 @BLI_gset_size(ptr noundef %60) #13
  %62 = sdiv i32 %61, 2
  %63 = call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %62) #13
  %64 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %47, i32 15
  store ptr %63, ptr %64, align 8, !tbaa !47
  %65 = load ptr, ptr %54, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %4, ptr noundef %65) #15
  %66 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %30, %68
  %69 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %4) #15
  %70 = call ptr @BLI_ghash_lookup(ptr noundef %1, ptr noundef %69) #13
  %71 = getelementptr inbounds %struct.BBC, ptr %70, i64 0, i32 2, i64 %32
  %72 = load float, ptr %71, align 4, !tbaa !59
  %73 = fcmp olt float %72, %38
  %74 = select i1 %73, ptr %59, ptr %64
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  call void @BLI_gset_insert(ptr noundef %75, ptr noundef %69) #13
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %4) #15
  %76 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %68, label %78, !llvm.loop !165

78:                                               ; preds = %68, %30
  %79 = load ptr, ptr %59, align 8, !tbaa !47
  %80 = call i32 @BLI_gset_size(ptr noundef %79) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %64, align 8, !tbaa !47
  %84 = call i32 @BLI_gset_size(ptr noundef %83) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82, %78
  %87 = phi ptr [ %64, %78 ], [ %59, %82 ]
  %88 = phi ptr [ %59, %78 ], [ %64, %82 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  %90 = load ptr, ptr %87, align 8, !tbaa !47
  %91 = icmp eq ptr %89, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %4, ptr noundef %90) #15
  %93 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %4) #15
  call void @BLI_gset_insert(ptr noundef nonnull %89, ptr noundef %96) #13
  %97 = call zeroext i8 @BLI_gset_remove(ptr noundef %90, ptr noundef %96, ptr noundef null) #13
  br label %98

98:                                               ; preds = %82, %92, %95, %86
  %99 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12, i32 16
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = icmp eq ptr %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %98
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %4, ptr noundef nonnull %100) #15
  %103 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = sext i32 %7 to i64
  br label %107

107:                                              ; preds = %105, %107
  %108 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %4) #15
  %109 = load ptr, ptr %108, align 8, !tbaa !88
  %110 = getelementptr inbounds i8, ptr %109, i64 %106
  store i32 -1, ptr %110, align 4, !tbaa !44
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %4) #15
  %111 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %107, label %113, !llvm.loop !166

113:                                              ; preds = %107, %102
  %114 = load ptr, ptr %99, align 8, !tbaa !63
  call void @BLI_gset_free(ptr noundef %114, ptr noundef null) #13
  br label %115

115:                                              ; preds = %113, %98
  %116 = load ptr, ptr %54, align 8, !tbaa !47
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %4, ptr noundef %116) #15
  %117 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = sext i32 %9 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %4) #15
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  %124 = getelementptr inbounds i8, ptr %123, i64 %120
  store i32 -1, ptr %124, align 4, !tbaa !44
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %4) #15
  %125 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %4) #15, !range !48
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %121, label %127, !llvm.loop !167

127:                                              ; preds = %121, %115
  %128 = load ptr, ptr %54, align 8, !tbaa !47
  call void @BLI_gset_free(ptr noundef %128, ptr noundef null) #13
  %129 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  call void @BLI_gset_free(ptr noundef nonnull %130, ptr noundef null) #13
  br label %133

133:                                              ; preds = %132, %127
  %134 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12, i32 12
  %135 = load ptr, ptr %134, align 8, !tbaa !168
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %138(ptr noundef nonnull %135) #13
  br label %139

139:                                              ; preds = %137, %133
  store ptr null, ptr %134, align 8, !tbaa !168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %140 = load ptr, ptr %44, align 8, !tbaa !169
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  call void @GPU_free_pbvh_buffers(ptr noundef nonnull %140) #13
  store ptr null, ptr %44, align 8, !tbaa !169
  br label %143

143:                                              ; preds = %142, %139
  %144 = getelementptr inbounds %struct.PBVHNode, ptr %43, i64 %12, i32 10
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, -2
  store i16 %146, ptr %144, align 8
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %40) #15
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %46) #15
  %147 = load ptr, ptr %10, align 8, !tbaa !77
  %148 = getelementptr inbounds %struct.PBVHNode, ptr %147, i64 %12, i32 1
  call void @BB_reset(ptr noundef nonnull %148) #13
  %149 = load ptr, ptr %10, align 8, !tbaa !77
  %150 = getelementptr inbounds %struct.PBVHNode, ptr %147, i64 %12, i32 3
  %151 = load i32, ptr %150, align 8, !tbaa !164
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.PBVHNode, ptr %149, i64 %152, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %148, ptr noundef nonnull %153) #13
  %154 = load ptr, ptr %10, align 8, !tbaa !77
  %155 = load i32, ptr %150, align 8, !tbaa !164
  %156 = sext i32 %155 to i64
  %157 = getelementptr %struct.PBVHNode, ptr %154, i64 %156
  %158 = getelementptr %struct.PBVHNode, ptr %157, i64 1, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %148, ptr noundef %158) #13
  %159 = getelementptr inbounds %struct.PBVHNode, ptr %147, i64 %12, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %159, ptr noundef nonnull align 8 dereferenceable(24) %148, i64 24, i1 false), !tbaa.struct !108
  br label %160

160:                                              ; preds = %143, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BB_widest_axis(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pbvh_grow_nodes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_pbvh_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BB_expand_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_heap_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @short_edge_queue_face_add(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !170 {
  %3 = load ptr, ptr %0, align 8, !tbaa !112
  %4 = tail call fastcc zeroext i8 @edge_queue_tri_in_sphere(ptr noundef %3, ptr noundef %1) #15, !range !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %8, %6 ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  tail call fastcc void @short_edge_queue_edge_add(ptr noundef nonnull %0, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !172

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edge_queue_tri_in_sphere(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !173 {
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @BM_face_as_array_vert_tri(ptr noundef %1, ptr noundef nonnull %3) #13
  %5 = getelementptr inbounds %struct.EdgeQueue, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = load ptr, ptr %3, align 16, !tbaa !49
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %13 = load ptr, ptr %12, align 16, !tbaa !49
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %14) #13
  %15 = load ptr, ptr %5, align 8, !tbaa !123
  %16 = call fastcc float @len_squared_v3v3(ptr noundef %15, ptr noundef nonnull %4) #15
  %17 = getelementptr inbounds %struct.EdgeQueue, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !174
  %19 = fcmp ole float %16, %18
  %20 = zext i1 %19 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @short_edge_queue_edge_add(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !175 {
  %3 = tail call float @BM_edge_calc_length_squared(ptr noundef %1) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.EdgeQueue, ptr %4, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !136
  %7 = fcmp olt float %3, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @edge_queue_insert(ptr noundef nonnull %0, ptr noundef %1, float noundef %3) #15
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edge_queue_insert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !176 {
  %4 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = icmp eq i32 %5, -1
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  br i1 %6, label %17, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @check_mask(ptr noundef nonnull %0, ptr noundef %8) #15, !range !48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = tail call fastcc zeroext i8 @check_mask(ptr noundef nonnull %0, ptr noundef %14) #15, !range !48
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %3, %12, %9
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %19 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %8) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %23) #15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = tail call ptr @BLI_mempool_alloc(ptr noundef %28) #13
  %30 = load ptr, ptr %18, align 8, !tbaa !128
  store ptr %30, ptr %29, align 8, !tbaa !49
  %31 = load ptr, ptr %22, align 8, !tbaa !131
  %32 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !49
  %33 = load ptr, ptr %0, align 8, !tbaa !112
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = tail call ptr @BLI_heap_insert(ptr noundef %34, float noundef %2, ptr noundef nonnull %29) #13
  br label %36

36:                                               ; preds = %26, %21, %17, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !177 {
  %3 = load ptr, ptr %1, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fcmp olt float %8, 1.000000e+00
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !178 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !55
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_collapse_edge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !179 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x ptr], align 16
  %10 = alloca ptr, align 8
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x ptr], align 16
  %13 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  %14 = load ptr, ptr %2, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.EdgeQueueContext, ptr %6, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !116
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = fcmp olt float %19, 1.000000e+00
  %21 = select i1 %20, ptr %3, ptr %2
  %22 = select i1 %20, ptr %2, ptr %3
  tail call fastcc void @pbvh_bmesh_vert_remove(ptr noundef %0, ptr noundef %22) #15
  %23 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %24, %26 ], [ %33, %28 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  tail call fastcc void @pbvh_bmesh_face_remove(ptr noundef %0, ptr noundef %31) #15
  %32 = load ptr, ptr %27, align 8, !tbaa !72
  tail call void @BM_face_kill(ptr noundef %32, ptr noundef %31) #13
  %33 = load ptr, ptr %23, align 8, !tbaa !180
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !182

35:                                               ; preds = %28, %7
  %36 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  tail call void @BM_edge_kill(ptr noundef %37, ptr noundef nonnull %1) #13
  %38 = getelementptr inbounds %struct.BLI_Buffer, ptr %5, i64 0, i32 2
  store i32 0, ptr %38, align 4, !tbaa !183
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 5, ptr noundef %22) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %52

43:                                               ; preds = %98, %35
  %44 = load i32, ptr %38, align 4, !tbaa !183
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %174

46:                                               ; preds = %43
  %47 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  %48 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 1
  %49 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  %50 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 2
  %51 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  br label %108

52:                                               ; preds = %41, %98
  %53 = phi ptr [ %39, %41 ], [ %106, %98 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @BM_face_as_array_vert_tri(ptr noundef nonnull %53, ptr noundef nonnull %9) #13
  br label %54

54:                                               ; preds = %52, %60
  %55 = phi i64 [ 0, %52 ], [ %61, %60 ]
  %56 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = icmp eq ptr %57, %22
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store ptr %21, ptr %56, align 8, !tbaa !49
  br label %60

60:                                               ; preds = %54, %59
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, 3
  br i1 %62, label %63, label %54, !llvm.loop !184

63:                                               ; preds = %60
  %64 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %9, i32 noundef 3, ptr noundef nonnull %10) #13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %38, align 4, !tbaa !183
  %68 = add nsw i32 %67, 1
  call void @BLI_buffer_resize(ptr noundef %5, i32 noundef %68) #13
  %69 = load ptr, ptr %10, align 8, !tbaa !49
  %70 = load ptr, ptr %5, align 8, !tbaa !110
  %71 = load i32, ptr %38, align 4, !tbaa !183
  %72 = sext i32 %71 to i64
  %73 = getelementptr ptr, ptr %70, i64 %72
  %74 = getelementptr ptr, ptr %73, i64 -1
  store ptr %69, ptr %74, align 8, !tbaa !49
  br label %98

75:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  %76 = call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef nonnull %53) #15
  %77 = load ptr, ptr %42, align 8, !tbaa !77
  %78 = ptrtoint ptr %76 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 184
  %82 = trunc i64 %81 to i32
  %83 = load ptr, ptr %36, align 8, !tbaa !72
  call fastcc void @bm_edges_from_tri(ptr noundef %83, ptr noundef nonnull %9, ptr noundef nonnull %11) #15
  %84 = call fastcc ptr @pbvh_bmesh_face_create(ptr noundef %0, i32 noundef %82, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %53) #15
  %85 = getelementptr inbounds %struct.PBVHNode, ptr %76, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = call zeroext i8 @BLI_gset_haskey(ptr noundef %86, ptr noundef %21) #13
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.PBVHNode, ptr %76, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !65
  %92 = call zeroext i8 @BLI_gset_haskey(ptr noundef %91, ptr noundef %21) #13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load ptr, ptr %90, align 8, !tbaa !65
  call void @BLI_gset_insert(ptr noundef %95, ptr noundef %21) #13
  br label %96

96:                                               ; preds = %94, %89, %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  %97 = load i32, ptr %38, align 4, !tbaa !183
  br label %98

98:                                               ; preds = %96, %66
  %99 = phi i32 [ %97, %96 ], [ %71, %66 ]
  %100 = add nsw i32 %99, 1
  call void @BLI_buffer_resize(ptr noundef nonnull %5, i32 noundef %100) #13
  %101 = load ptr, ptr %5, align 8, !tbaa !110
  %102 = load i32, ptr %38, align 4, !tbaa !183
  %103 = sext i32 %102 to i64
  %104 = getelementptr ptr, ptr %101, i64 %103
  %105 = getelementptr ptr, ptr %104, i64 -1
  store ptr %53, ptr %105, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  %106 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %43, label %52, !llvm.loop !185

108:                                              ; preds = %46, %169
  %109 = phi i64 [ 0, %46 ], [ %170, %169 ]
  %110 = load ptr, ptr %5, align 8, !tbaa !110
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #14
  %113 = getelementptr inbounds %struct.BMFace, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !99
  %115 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !100
  store ptr %116, ptr %12, align 16, !tbaa !49
  %117 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !171
  store ptr %118, ptr %13, align 16, !tbaa !49
  %119 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !102
  %121 = getelementptr inbounds %struct.BMLoop, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !100
  store ptr %122, ptr %47, align 8, !tbaa !49
  %123 = getelementptr inbounds %struct.BMLoop, ptr %120, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !171
  store ptr %124, ptr %48, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct.BMLoop, ptr %120, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !102
  %127 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !100
  store ptr %128, ptr %49, align 16, !tbaa !49
  %129 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !171
  store ptr %130, ptr %50, align 16, !tbaa !49
  br label %131

131:                                              ; preds = %108, %141
  %132 = phi i64 [ 0, %108 ], [ %142, %141 ]
  %133 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !49
  %135 = icmp eq ptr %134, %22
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = call i32 @BM_vert_face_count(ptr noundef %134) #13
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @BLI_gset_insert(ptr noundef %4, ptr noundef %134) #13
  call fastcc void @pbvh_bmesh_vert_remove(ptr noundef %0, ptr noundef %134) #15
  br label %141

140:                                              ; preds = %136, %131
  store ptr null, ptr %133, align 8, !tbaa !49
  br label %141

141:                                              ; preds = %139, %140
  %142 = add nuw nsw i64 %132, 1
  %143 = icmp eq i64 %142, 3
  br i1 %143, label %144, label %131, !llvm.loop !186

144:                                              ; preds = %141
  call fastcc void @pbvh_bmesh_face_remove(ptr noundef %0, ptr noundef %112) #15
  %145 = load ptr, ptr %36, align 8, !tbaa !72
  call void @BM_face_kill(ptr noundef %145, ptr noundef %112) #13
  br label %146

146:                                              ; preds = %144, %154
  %147 = phi i64 [ 0, %144 ], [ %155, %154 ]
  %148 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !49
  %150 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %149) #15, !range !48
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %146
  %153 = load ptr, ptr %36, align 8, !tbaa !72
  call void @BM_edge_kill(ptr noundef %153, ptr noundef %149) #13
  br label %154

154:                                              ; preds = %146, %152
  %155 = add nuw nsw i64 %147, 1
  %156 = icmp eq i64 %155, 3
  br i1 %156, label %157, label %146, !llvm.loop !187

157:                                              ; preds = %154, %166
  %158 = phi i64 [ %167, %166 ], [ 0, %154 ]
  %159 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !49
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %51, align 8, !tbaa !74
  %164 = load i32, ptr %15, align 8, !tbaa !116
  call void @BM_log_vert_removed(ptr noundef %163, ptr noundef nonnull %160, i32 noundef %164) #13
  %165 = load ptr, ptr %36, align 8, !tbaa !72
  call void @BM_vert_kill(ptr noundef %165, ptr noundef nonnull %160) #13
  br label %166

166:                                              ; preds = %157, %162
  %167 = add nuw nsw i64 %158, 1
  %168 = icmp eq i64 %167, 3
  br i1 %168, label %169, label %157, !llvm.loop !188

169:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  %170 = add nuw nsw i64 %109, 1
  %171 = load i32, ptr %38, align 4, !tbaa !183
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %108, label %174, !llvm.loop !189

174:                                              ; preds = %169, %43
  %175 = call zeroext i8 @BLI_gset_haskey(ptr noundef %4, ptr noundef %21) #13
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %179 = load ptr, ptr %178, align 8, !tbaa !74
  %180 = load i32, ptr %15, align 8, !tbaa !116
  call void @BM_log_vert_before_modified(ptr noundef %179, ptr noundef %21, i32 noundef %180) #13
  %181 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %182 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %181, ptr noundef nonnull %181, ptr noundef nonnull %182) #13
  br label %183

183:                                              ; preds = %177, %174
  call void @BLI_gset_insert(ptr noundef %4, ptr noundef %22) #13
  %184 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %185 = load ptr, ptr %184, align 8, !tbaa !74
  %186 = load i32, ptr %15, align 8, !tbaa !116
  call void @BM_log_vert_removed(ptr noundef %185, ptr noundef %22, i32 noundef %186) #13
  %187 = load ptr, ptr %36, align 8, !tbaa !72
  call void @BM_vert_kill(ptr noundef %187, ptr noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_vert_remove(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !190 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %6, ptr noundef %1, ptr noundef null) #13
  %8 = load ptr, ptr %1, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %10 = load i32, ptr %9, align 8, !tbaa !68
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  store i32 -1, ptr %12, align 4, !tbaa !44
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %1) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %31
  %18 = phi ptr [ %13, %15 ], [ %33, %31 ]
  %19 = phi i32 [ -1, %15 ], [ %32, %31 ]
  %20 = call fastcc i32 @pbvh_bmesh_node_lookup_index(ptr noundef %0, ptr noundef nonnull %18) #15
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %16, align 8, !tbaa !77
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %24, i32 10
  %26 = load i16, ptr %25, align 8
  %27 = or i16 %26, 20
  store i16 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %23, i64 %24, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = call zeroext i8 @BLI_gset_remove(ptr noundef %29, ptr noundef nonnull %1, ptr noundef null) #13
  br label %31

31:                                               ; preds = %17, %22
  %32 = phi i32 [ %20, %22 ], [ %19, %17 ]
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !191

35:                                               ; preds = %31, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_face_remove(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !192 {
  %3 = tail call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.PBVHNode, ptr %3, i64 0, i32 16
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %3, i64 0, i32 17
  br label %8

8:                                                ; preds = %25, %2
  %9 = phi ptr [ %5, %2 ], [ %27, %25 ]
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = tail call fastcc i32 @pbvh_bmesh_node_vert_use_count(ptr noundef %0, ptr noundef %3, ptr noundef %11) #15
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load ptr, ptr %6, align 8, !tbaa !63
  %16 = tail call zeroext i8 @BLI_gset_haskey(ptr noundef %15, ptr noundef %11) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @pbvh_bmesh_vert_other_node_find(ptr noundef %0, ptr noundef %11) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call fastcc void @pbvh_bmesh_vert_ownership_transfer(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %11) #15
  br label %25

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 8, !tbaa !65
  %24 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %23, ptr noundef %11, ptr noundef null) #13
  br label %25

25:                                               ; preds = %18, %21, %8, %22
  %26 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %8, !llvm.loop !193

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PBVHNode, ptr %3, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %31, ptr noundef %1, ptr noundef null) #13
  %33 = load ptr, ptr %1, align 8, !tbaa !91
  %34 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %35 = load i32, ptr %34, align 4, !tbaa !71
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  store i32 -1, ptr %37, align 4, !tbaa !44
  %38 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  tail call void @BM_log_face_removed(ptr noundef %39, ptr noundef nonnull %1) #13
  %40 = getelementptr inbounds %struct.PBVHNode, ptr %3, i64 0, i32 10
  %41 = load i16, ptr %40, align 8
  %42 = or i16 %41, 18
  store i16 %42, ptr %40, align 8
  ret void
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @pbvh_bmesh_node_lookup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = tail call fastcc i32 @pbvh_bmesh_node_lookup_index(ptr noundef %0, ptr noundef %1) #15
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %4, i64 %6
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edges_from_tri(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !195 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %4, ptr noundef %6, ptr noundef null, i32 noundef 2) #13
  store ptr %7, ptr %2, align 8, !tbaa !49
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %8, ptr noundef %10, ptr noundef null, i32 noundef 2) #13
  %12 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !49
  %13 = load ptr, ptr %9, align 8, !tbaa !49
  %14 = load ptr, ptr %1, align 8, !tbaa !49
  %15 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %13, ptr noundef %14, ptr noundef null, i32 noundef 2) #13
  %16 = getelementptr inbounds ptr, ptr %2, i64 2
  store ptr %15, ptr %16, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @pbvh_bmesh_face_create(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !196 {
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call ptr @BM_face_create(ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef 3, ptr noundef %4, i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !197
  %14 = getelementptr inbounds %struct.BMHeader, ptr %11, i64 0, i32 3
  store i8 %13, ptr %14, align 1, !tbaa !197
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  tail call void @BLI_gset_insert(ptr noundef %16, ptr noundef %11) #13
  %17 = load ptr, ptr %11, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  store i32 %1, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 10
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, -147
  %25 = or disjoint i16 %24, 18
  store i16 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  tail call void @BM_log_face_added(ptr noundef %27, ptr noundef nonnull %11) #13
  ret ptr %11
}

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !198 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_log_vert_removed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_vert_before_modified(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @pbvh_bmesh_node_lookup_index(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !199 {
  %3 = tail call fastcc i32 @pbvh_bmesh_node_offset_from_elem(ptr noundef %0, ptr noundef %1) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !200
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !44
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @pbvh_bmesh_node_offset_from_elem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !202 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !203
  %5 = icmp eq i8 %4, 1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %7 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load i32, ptr %8, align 4, !tbaa !44
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pbvh_bmesh_node_vert_use_count(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !204 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 5, ptr noundef %2) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %3 ]
  %10 = call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef nonnull %8) #15
  %11 = icmp eq ptr %10, %1
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %9, %12
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !205

16:                                               ; preds = %7, %3
  %17 = phi i32 [ 0, %3 ], [ %13, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pbvh_bmesh_vert_other_node_find(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !206 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef %1) #15
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %11
  %8 = phi ptr [ %12, %11 ], [ %5, %2 ]
  %9 = call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef nonnull %8) #15
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !207

14:                                               ; preds = %7, %11, %2
  %15 = phi ptr [ null, %2 ], [ null, %11 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_vert_ownership_transfer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !208 {
  %4 = tail call fastcc ptr @pbvh_bmesh_node_lookup(ptr noundef %0, ptr noundef %2) #15
  %5 = getelementptr inbounds %struct.PBVHNode, ptr %4, i64 0, i32 10
  %6 = load i16, ptr %5, align 8
  %7 = or i16 %6, 20
  store i16 %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.PBVHNode, ptr %4, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %9, ptr noundef %2, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 184
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr %2, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  store i32 %17, ptr %22, align 4, !tbaa !44
  %23 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  tail call void @BLI_gset_insert(ptr noundef %24, ptr noundef nonnull %2) #13
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %26, ptr noundef nonnull %2, ptr noundef null) #13
  %28 = getelementptr inbounds %struct.PBVHNode, ptr %1, i64 0, i32 10
  %29 = load i16, ptr %28, align 8
  %30 = or i16 %29, 20
  store i16 %30, ptr %28, align 8
  ret void
}

; Function Attrs: optsize
declare void @BM_log_face_removed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_face_added(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @long_edge_queue_face_add(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !209 {
  %3 = load ptr, ptr %0, align 8, !tbaa !112
  %4 = tail call fastcc zeroext i8 @edge_queue_tri_in_sphere(ptr noundef %3, ptr noundef %1) #15, !range !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %8, %6 ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  tail call fastcc void @long_edge_queue_edge_add(ptr noundef nonnull %0, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !210

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @long_edge_queue_edge_add(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !211 {
  %3 = tail call float @BM_edge_calc_length_squared(ptr noundef %1) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.EdgeQueue, ptr %4, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !136
  %7 = fcmp ogt float %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = fneg float %3
  tail call fastcc void @edge_queue_insert(ptr noundef nonnull %0, ptr noundef %1, float noundef %9) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_split_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !212 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [3 x ptr], align 16
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  tail call fastcc void @pbvh_bmesh_edge_loops(ptr noundef %3, ptr noundef %2) #15
  %9 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %14) #13
  %15 = load ptr, ptr %9, align 8, !tbaa !128
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !117
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !116
  %24 = call fastcc ptr @pbvh_bmesh_vert_create(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %15, i32 noundef %23) #15
  %25 = load i32, ptr %22, align 8, !tbaa !116
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %41, label %27

27:                                               ; preds = %4
  %28 = load ptr, ptr %9, align 8, !tbaa !128
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !59
  %33 = load ptr, ptr %12, align 8, !tbaa !131
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds i8, ptr %34, i64 %30
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = fadd float %32, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = load ptr, ptr %24, align 8, !tbaa !88
  %40 = getelementptr inbounds i8, ptr %39, i64 %30
  store float %38, ptr %40, align 4, !tbaa !59
  br label %41

41:                                               ; preds = %27, %4
  %42 = getelementptr inbounds %struct.BLI_Buffer, ptr %3, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !183
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %128

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.EdgeQueueContext, ptr %0, i64 0, i32 5
  %47 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 2
  %48 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  %49 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  %50 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 22
  %51 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %52 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %53

53:                                               ; preds = %45, %123
  %54 = phi i64 [ 0, %45 ], [ %124, %123 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !110
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = load i32, ptr %46, align 8, !tbaa !118
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !44
  %65 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !213
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !100
  %69 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !100
  %71 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !100
  %75 = icmp ne i32 %64, %21
  %76 = icmp eq i64 %54, 0
  %77 = and i1 %76, %75
  br i1 %77, label %80, label %78

78:                                               ; preds = %53
  %79 = sext i32 %64 to i64
  br label %84

80:                                               ; preds = %53
  %81 = load ptr, ptr %47, align 8, !tbaa !77
  %82 = sext i32 %64 to i64
  %83 = getelementptr inbounds %struct.PBVHNode, ptr %81, i64 %82
  call fastcc void @pbvh_bmesh_vert_ownership_transfer(ptr noundef %1, ptr noundef %83, ptr noundef %24) #15
  br label %84

84:                                               ; preds = %78, %80
  %85 = phi i64 [ %79, %78 ], [ %82, %80 ]
  store ptr %70, ptr %6, align 16, !tbaa !49
  store ptr %24, ptr %48, align 8, !tbaa !49
  store ptr %68, ptr %49, align 16, !tbaa !49
  %86 = load ptr, ptr %50, align 8, !tbaa !72
  call fastcc void @bm_edges_from_tri(ptr noundef %86, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %87 = call fastcc ptr @pbvh_bmesh_face_create(ptr noundef %1, i32 noundef %64, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %59) #15
  call fastcc void @long_edge_queue_face_add(ptr noundef nonnull %0, ptr noundef %87) #15
  store ptr %24, ptr %6, align 16, !tbaa !49
  store ptr %74, ptr %48, align 8, !tbaa !49
  %88 = load ptr, ptr %50, align 8, !tbaa !72
  %89 = call ptr @BM_edge_create(ptr noundef %88, ptr noundef %24, ptr noundef %74, ptr noundef null, i32 noundef 2) #13
  store ptr %89, ptr %7, align 16, !tbaa !49
  %90 = load ptr, ptr %51, align 8, !tbaa !49
  store ptr %90, ptr %52, align 16, !tbaa !49
  %91 = load ptr, ptr %50, align 8, !tbaa !72
  %92 = load ptr, ptr %48, align 8, !tbaa !49
  %93 = load ptr, ptr %49, align 16, !tbaa !49
  %94 = call ptr @BM_edge_create(ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef null, i32 noundef 2) #13
  store ptr %94, ptr %51, align 8, !tbaa !49
  %95 = call fastcc ptr @pbvh_bmesh_face_create(ptr noundef %1, i32 noundef %64, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %59) #15
  call fastcc void @long_edge_queue_face_add(ptr noundef nonnull %0, ptr noundef %95) #15
  call fastcc void @pbvh_bmesh_face_remove(ptr noundef %1, ptr noundef nonnull %59) #15
  %96 = load ptr, ptr %50, align 8, !tbaa !72
  call void @BM_face_kill(ptr noundef %96, ptr noundef nonnull %59) #13
  %97 = load ptr, ptr %47, align 8, !tbaa !77
  %98 = getelementptr inbounds %struct.PBVHNode, ptr %97, i64 %85, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  %100 = call zeroext i8 @BLI_gset_haskey(ptr noundef %99, ptr noundef %24) #13
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %84
  %103 = load ptr, ptr %47, align 8, !tbaa !77
  %104 = getelementptr inbounds %struct.PBVHNode, ptr %103, i64 %85, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !65
  %106 = call zeroext i8 @BLI_gset_haskey(ptr noundef %105, ptr noundef %24) #13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load ptr, ptr %47, align 8, !tbaa !77
  %110 = getelementptr inbounds %struct.PBVHNode, ptr %109, i64 %85, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !65
  call void @BLI_gset_insert(ptr noundef %111, ptr noundef %24) #13
  br label %112

112:                                              ; preds = %108, %102, %84
  %113 = call i32 @BM_vert_edge_count(ptr noundef %68) #13
  %114 = icmp sgt i32 %113, 8
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  %116 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 4, ptr noundef %68) #15
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %115, %118
  %119 = phi ptr [ %120, %118 ], [ %116, %115 ]
  call fastcc void @long_edge_queue_edge_add(ptr noundef %0, ptr noundef nonnull %119) #15
  %120 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %118, !llvm.loop !214

122:                                              ; preds = %118, %115
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  br label %123

123:                                              ; preds = %122, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %124 = add nuw nsw i64 %54, 1
  %125 = load i32, ptr %42, align 4, !tbaa !183
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %53, label %128, !llvm.loop !215

128:                                              ; preds = %123, %41
  %129 = getelementptr inbounds %struct.PBVH, ptr %1, i64 0, i32 22
  %130 = load ptr, ptr %129, align 8, !tbaa !72
  call void @BM_edge_kill(ptr noundef %130, ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pbvh_bmesh_edge_loops(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !216 {
  %3 = load ptr, ptr %0, align 8, !tbaa !110
  %4 = getelementptr inbounds ptr, ptr %3, i64 1
  %5 = tail call zeroext i8 @BM_edge_loop_pair(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  store i32 2, ptr %8, align 4, !tbaa !183
  br label %15

9:                                                ; preds = %2
  %10 = tail call i32 @BM_edge_face_count(ptr noundef %1) #13
  tail call void @BLI_buffer_resize(ptr noundef nonnull %0, i32 noundef %10) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !183
  %14 = tail call i32 @BM_iter_as_array(ptr noundef null, i8 noundef zeroext 14, ptr noundef %1, ptr noundef %11, i32 noundef %13) #13
  br label %15

15:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @pbvh_bmesh_vert_create(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !217 {
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call ptr @BM_vert_create(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef 0) #13
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 %11, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  tail call void @BLI_gset_insert(ptr noundef %13, ptr noundef %8) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  store i32 %1, ptr %18, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %10, i64 %11, i32 10
  %20 = load i16, ptr %19, align 8
  %21 = or i16 %20, 20
  store i16 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  tail call void @BM_log_vert_added(ptr noundef %23, ptr noundef nonnull %8, i32 noundef %4) #13
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_log_vert_added(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !218 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !143
  ret i32 %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

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
!34 = !{!35, !40, i64 176}
!35 = !{!"PBVHNode", !36, i64 0, !39, i64 8, !39, i64 32, !40, i64 56, !36, i64 64, !40, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104, !41, i64 108, !36, i64 112, !40, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !40, i64 176}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"", !37, i64 0, !37, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!35, !36, i64 168}
!43 = !{!35, !36, i64 160}
!44 = !{!40, !40, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!35, !36, i64 136}
!48 = !{i8 0, i8 2}
!49 = !{!36, !36, i64 0}
!50 = distinct !{!50, !46}
!51 = !{!"pbvh_bmesh.c:BLI_gsetIterator_init"}
!52 = !{!"pbvh_bmesh.c:BLI_gsetIterator_done"}
!53 = !{!"pbvh_bmesh.c:BLI_gsetIterator_getKey"}
!54 = !{!"pbvh_bmesh.c:_bm_elem_flag_test"}
!55 = !{!56, !37, i64 13}
!56 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!57 = !{!"pbvh_bmesh.c:BLI_gsetIterator_step"}
!58 = distinct !{!58, !46}
!59 = !{!41, !41, i64 0}
!60 = !{!"pbvh_bmesh.c:len_squared_v3v3"}
!61 = !{!"pbvh_bmesh.c:max_fff"}
!62 = distinct !{!62, !46}
!63 = !{!35, !36, i64 144}
!64 = distinct !{!64, !46}
!65 = !{!35, !36, i64 152}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !46}
!68 = !{!69, !40, i64 192}
!69 = !{!"PBVH", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !70, i64 72, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !40, i64 144, !36, i64 152, !36, i64 160, !37, i64 168, !37, i64 169, !36, i64 176, !41, i64 184, !41, i64 188, !40, i64 192, !40, i64 196, !36, i64 200}
!70 = !{!"CCGKey", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!71 = !{!69, !40, i64 196}
!72 = !{!69, !36, i64 176}
!73 = !{!69, !40, i64 0}
!74 = !{!69, !36, i64 200}
!75 = !{!69, !40, i64 40}
!76 = !{!69, !40, i64 4}
!77 = !{!69, !36, i64 8}
!78 = !{!69, !40, i64 20}
!79 = !{!80, !40, i64 12}
!80 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !81, i64 144, !81, i64 344, !81, i64 544, !81, i64 744, !82, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !83, i64 960, !36, i64 976, !83, i64 984, !36, i64 1000}
!81 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!82 = !{!"short", !37, i64 0}
!83 = !{!"ListBase", !36, i64 0, !36, i64 8}
!84 = distinct !{!84, !46}
!85 = !{!69, !41, i64 184}
!86 = !{!69, !41, i64 188}
!87 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_layers_reset"}
!88 = !{!89, !36, i64 0}
!89 = !{!"BMVert", !56, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!90 = distinct !{!90, !46}
!91 = !{!92, !36, i64 0}
!92 = !{!"BMFace", !56, i64 0, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !82, i64 48}
!93 = distinct !{!93, !46}
!94 = !{!"pbvh_bmesh.c:BM_iter_new"}
!95 = !{!"pbvh_bmesh.c:BM_iter_step"}
!96 = !{!97, !36, i64 48}
!97 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!98 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_limit_ensure"}
!99 = !{!92, !36, i64 24}
!100 = !{!101, !36, i64 16}
!101 = !{!"BMLoop", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!102 = !{!101, !36, i64 56}
!103 = distinct !{!103, !46}
!104 = distinct !{!104, !46}
!105 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_finalize"}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = !{i64 0, i64 12, !109, i64 12, i64 12, !109}
!109 = !{!37, !37, i64 0}
!110 = !{!111, !36, i64 0}
!111 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!112 = !{!113, !36, i64 0}
!113 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32}
!114 = !{!113, !36, i64 8}
!115 = !{!113, !36, i64 16}
!116 = !{!113, !40, i64 24}
!117 = !{!113, !40, i64 28}
!118 = !{!113, !40, i64 32}
!119 = !{!120, !36, i64 0}
!120 = !{!"", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!121 = distinct !{!121, !46}
!122 = !{!"pbvh_bmesh.c:short_edge_queue_create"}
!123 = !{!120, !36, i64 8}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !46}
!126 = !{!"pbvh_bmesh.c:pbvh_bmesh_collapse_short_edges"}
!127 = distinct !{!127, !46}
!128 = !{!129, !36, i64 24}
!129 = !{!"BMEdge", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !130, i64 48, !130, i64 64}
!130 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!131 = !{!129, !36, i64 32}
!132 = !{!"pbvh_bmesh.c:long_edge_queue_create"}
!133 = distinct !{!133, !46}
!134 = distinct !{!134, !46}
!135 = !{!"pbvh_bmesh.c:pbvh_bmesh_subdivide_long_edges"}
!136 = !{!120, !41, i64 20}
!137 = distinct !{!137, !46}
!138 = distinct !{!138, !46}
!139 = distinct !{!139, !46}
!140 = distinct !{!140, !46}
!141 = !{!"pbvh_bmesh.c:copy_v3_v3"}
!142 = !{!"pbvh_bmesh.c:_bm_elem_index_set"}
!143 = !{!56, !40, i64 8}
!144 = !{!"pbvh_bmesh.c:bm_face_as_array_index_tri"}
!145 = distinct !{!145, !46}
!146 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_drop_orig"}
!147 = !{!"pbvh_bmesh.c:BLI_ghashIterator_done"}
!148 = !{!149, !36, i64 8}
!149 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!150 = !{!"pbvh_bmesh.c:BLI_ghashIterator_getKey"}
!151 = !{!152, !36, i64 8}
!152 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!153 = !{!"pbvh_bmesh.c:sub_v3_v3v3"}
!154 = !{!"pbvh_bmesh.c:dot_v3v3"}
!155 = !{!"pbvh_bmesh.c:max_ff"}
!156 = !{!"pbvh_bmesh.c:BM_iter_init"}
!157 = !{!97, !37, i64 60}
!158 = !{!97, !36, i64 40}
!159 = !{!80, !36, i64 32}
!160 = !{!80, !36, i64 40}
!161 = !{!80, !36, i64 56}
!162 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_split"}
!163 = distinct !{!163, !46}
!164 = !{!35, !40, i64 56}
!165 = distinct !{!165, !46}
!166 = distinct !{!166, !46}
!167 = distinct !{!167, !46}
!168 = !{!35, !36, i64 112}
!169 = !{!35, !36, i64 0}
!170 = !{!"pbvh_bmesh.c:short_edge_queue_face_add"}
!171 = !{!101, !36, i64 24}
!172 = distinct !{!172, !46}
!173 = !{!"pbvh_bmesh.c:edge_queue_tri_in_sphere"}
!174 = !{!120, !41, i64 16}
!175 = !{!"pbvh_bmesh.c:short_edge_queue_edge_add"}
!176 = !{!"pbvh_bmesh.c:edge_queue_insert"}
!177 = !{!"pbvh_bmesh.c:check_mask"}
!178 = !{!"pbvh_bmesh.c:_bm_elem_flag_test_bool"}
!179 = !{!"pbvh_bmesh.c:pbvh_bmesh_collapse_edge"}
!180 = !{!129, !36, i64 40}
!181 = !{!101, !36, i64 32}
!182 = distinct !{!182, !46}
!183 = !{!111, !40, i64 12}
!184 = distinct !{!184, !46}
!185 = distinct !{!185, !46}
!186 = distinct !{!186, !46}
!187 = distinct !{!187, !46}
!188 = distinct !{!188, !46}
!189 = distinct !{!189, !46}
!190 = !{!"pbvh_bmesh.c:pbvh_bmesh_vert_remove"}
!191 = distinct !{!191, !46}
!192 = !{!"pbvh_bmesh.c:pbvh_bmesh_face_remove"}
!193 = distinct !{!193, !46}
!194 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_lookup"}
!195 = !{!"pbvh_bmesh.c:bm_edges_from_tri"}
!196 = !{!"pbvh_bmesh.c:pbvh_bmesh_face_create"}
!197 = !{!92, !37, i64 13}
!198 = !{!"pbvh_bmesh.c:BM_edge_is_wire"}
!199 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_lookup_index"}
!200 = !{!201, !36, i64 0}
!201 = !{!"BMElem", !56, i64 0}
!202 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_offset_from_elem"}
!203 = !{!201, !37, i64 12}
!204 = !{!"pbvh_bmesh.c:pbvh_bmesh_node_vert_use_count"}
!205 = distinct !{!205, !46}
!206 = !{!"pbvh_bmesh.c:pbvh_bmesh_vert_other_node_find"}
!207 = distinct !{!207, !46}
!208 = !{!"pbvh_bmesh.c:pbvh_bmesh_vert_ownership_transfer"}
!209 = !{!"pbvh_bmesh.c:long_edge_queue_face_add"}
!210 = distinct !{!210, !46}
!211 = !{!"pbvh_bmesh.c:long_edge_queue_edge_add"}
!212 = !{!"pbvh_bmesh.c:pbvh_bmesh_split_edge"}
!213 = !{!101, !36, i64 64}
!214 = distinct !{!214, !46}
!215 = distinct !{!215, !46}
!216 = !{!"pbvh_bmesh.c:pbvh_bmesh_edge_loops"}
!217 = !{!"pbvh_bmesh.c:pbvh_bmesh_vert_create"}
!218 = !{!"pbvh_bmesh.c:_bm_elem_index_get"}
