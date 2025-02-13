; ModuleID = 'blender/source/blender/blenkernel/intern/CCGSubSurf.c'
source_filename = "blender/source/blender/blenkernel/intern/CCGSubSurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CCGAllocatorIFC = type { ptr, ptr, ptr, ptr }
%struct.CCGSubSurf = type { ptr, ptr, ptr, %struct.CCGMeshIFC, %struct.CCGAllocatorIFC, ptr, i32, i32, i32, float, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.CCGMeshIFC = type { i32, i32, i32, i32, i32, i32 }
%struct._EHash = type { ptr, i32, i32, i32, %struct.CCGAllocatorIFC, ptr }
%struct.CCGEdge = type { ptr, ptr, i16, i16, float, ptr, ptr, ptr }
%struct.CCGVert = type { ptr, ptr, i16, i16, i16, i16, ptr, ptr }
%struct._EHEntry = type { ptr, ptr }
%struct.CCGFace = type { ptr, ptr, i16, i16, i16, i16 }
%struct._EHashIterator = type { ptr, i32, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"CCGSubsurf tempVerts\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CCGSubsurf tempEdges\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.ccgSubSurf_syncFace = private unnamed_addr constant [20 x i8] c"ccgSubSurf_syncFace\00", align 1
@_getStandardAllocatorIFC.ifc = internal unnamed_addr global %struct.CCGAllocatorIFC zeroinitializer, align 8
@kHashSizes = internal unnamed_addr constant [29 x i32] [i32 1, i32 3, i32 5, i32 11, i32 17, i32 37, i32 67, i32 131, i32 257, i32 521, i32 1031, i32 2053, i32 4099, i32 8209, i32 16411, i32 32771, i32 65537, i32 131101, i32 262147, i32 524309, i32 1048583, i32 2097169, i32 4194319, i32 8388617, i32 16777259, i32 33554467, i32 67108879, i32 134217757, i32 268435459], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"CCGSubsurf effectedV\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CCGSubsurf effectedE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CCGSubsurf effectedF\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CCGSubsurf allFaces\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CCGSubsurf arrayV\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CCGSubsurf q\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"CCGSubsurf r\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BKE_ccg_gridsize(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ccg_gridsize(i32 noundef %0) #25
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ccg_gridsize(i32 noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = add nsw i32 %0, -1
  %3 = shl nuw i32 1, %2
  %4 = add nuw nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BKE_ccg_factor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sub nsw i32 %1, %0
  %4 = shl nuw i32 1, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ccgSubSurf_new(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call fastcc void @_getStandardAllocatorIFC() #25
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ %2, %4 ], [ @_getStandardAllocatorIFC.ifc, %6 ]
  %9 = phi ptr [ %3, %4 ], [ null, %6 ]
  %10 = icmp slt i32 %1, 1
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !35
  %13 = tail call ptr %12(ptr noundef %9, i32 noundef 216) #26
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !40
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 5
  store ptr %9, ptr %15, align 8, !tbaa !42
  %16 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %14, ptr noundef %9) #25
  store ptr %16, ptr %13, align 8, !tbaa !47
  %17 = load ptr, ptr %15, align 8, !tbaa !42
  %18 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %14, ptr noundef %17) #25
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !48
  %20 = load ptr, ptr %15, align 8, !tbaa !42
  %21 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %14, ptr noundef %20) #25
  %22 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !50
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 6
  store i32 %1, ptr %24, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 7
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 18
  %27 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 13
  store i32 0, ptr %27, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 14
  store i32 0, ptr %28, align 4, !tbaa !54
  %29 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 15
  store i32 0, ptr %29, align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %25, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %14, align 8, !tbaa !56
  %31 = load ptr, ptr %15, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 3, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !57
  %34 = tail call ptr %30(ptr noundef %31, i32 noundef %33) #26
  %35 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 11
  store ptr %34, ptr %35, align 8, !tbaa !58
  %36 = load ptr, ptr %14, align 8, !tbaa !56
  %37 = load ptr, ptr %15, align 8, !tbaa !42
  %38 = load i32, ptr %32, align 8, !tbaa !57
  %39 = tail call ptr %36(ptr noundef %37, i32 noundef %38) #26
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 12
  store ptr %39, ptr %40, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 17
  store i32 0, ptr %41, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 22
  %43 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  br label %44

44:                                               ; preds = %7, %11
  %45 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_getStandardAllocatorIFC() unnamed_addr #2 !PGOFuncName !61 {
  store ptr @_stdAllocator_alloc, ptr @_getStandardAllocatorIFC.ifc, align 8, !tbaa !35
  store ptr @_stdAllocator_realloc, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 1), align 8, !tbaa !62
  store ptr @_stdAllocator_free, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 2), align 8, !tbaa !63
  store ptr null, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 3), align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_ehash_new(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call ptr %3(ptr noundef %1, i32 noundef 64) #26
  %5 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !40
  %6 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 2
  store i32 1, ptr %9, align 4, !tbaa !70
  %10 = load ptr, ptr %5, align 8, !tbaa !71
  %11 = tail call ptr %10(ptr noundef %1, i32 noundef 8) #26
  store ptr %11, ptr %4, align 8, !tbaa !72
  %12 = load i32, ptr %9, align 4, !tbaa !70
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %14, i1 false)
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ccgSubSurf_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa.struct !73
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  tail call fastcc void @_ehash_free(ptr noundef %11, ptr noundef nonnull @_face_free, ptr noundef nonnull %0) #25
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  tail call fastcc void @_ehash_free(ptr noundef %13, ptr noundef nonnull @_edge_free, ptr noundef nonnull %0) #25
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  tail call fastcc void @_ehash_free(ptr noundef %15, ptr noundef nonnull @_vert_free, ptr noundef nonnull %0) #25
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void %16(ptr noundef %18) #26
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  tail call void %19(ptr noundef %21) #26
  %22 = load ptr, ptr %4, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %9, %1
  %24 = phi ptr [ %22, %9 ], [ %5, %1 ]
  %25 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  tail call void %26(ptr noundef %24, ptr noundef %28) #26
  %29 = load ptr, ptr %25, align 8, !tbaa !80
  %30 = load ptr, ptr %4, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  tail call void %29(ptr noundef %30, ptr noundef %32) #26
  %33 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load ptr, ptr %25, align 8, !tbaa !80
  %38 = load ptr, ptr %4, align 8, !tbaa !42
  tail call void %37(ptr noundef %38, ptr noundef nonnull %34) #26
  br label %39

39:                                               ; preds = %36, %23
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  tail call fastcc void @_ehash_free(ptr noundef %41, ptr noundef nonnull @_face_free, ptr noundef nonnull %0) #25
  %42 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  tail call fastcc void @_ehash_free(ptr noundef %43, ptr noundef nonnull @_edge_free, ptr noundef nonnull %0) #25
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_free(ptr noundef %44, ptr noundef nonnull @_vert_free, ptr noundef nonnull %0) #25
  %45 = load ptr, ptr %25, align 8, !tbaa !80
  %46 = load ptr, ptr %4, align 8, !tbaa !42
  tail call void %45(ptr noundef %46, ptr noundef nonnull %0) #26
  %47 = icmp eq ptr %3, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void %3(ptr noundef %5) #26
  br label %49

49:                                               ; preds = %48, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_ehash_free(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !82 {
  %4 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  br label %12

9:                                                ; preds = %19, %12
  %10 = and i64 %14, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12, !llvm.loop !83

12:                                               ; preds = %7, %9
  %13 = phi i64 [ %8, %7 ], [ %14, %9 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %12 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  tail call void %1(ptr noundef nonnull %20, ptr noundef %2) #26
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %19, !llvm.loop !87

23:                                               ; preds = %9, %3
  %24 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  %28 = load ptr, ptr %0, align 8, !tbaa !72
  tail call void %25(ptr noundef %27, ptr noundef %28) #26
  %29 = load ptr, ptr %24, align 8, !tbaa !88
  %30 = load ptr, ptr %26, align 8, !tbaa !66
  tail call void %29(ptr noundef %30, ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_face_free(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void %4(ptr noundef %6, ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_edge_free(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  tail call void %4(ptr noundef %6, ptr noundef %8) #26
  %9 = load ptr, ptr %3, align 8, !tbaa !80
  %10 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void %9(ptr noundef %10, ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_vert_free(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  tail call void %4(ptr noundef %6, ptr noundef %8) #26
  %9 = load ptr, ptr %3, align 8, !tbaa !80
  %10 = load ptr, ptr %5, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  tail call void %9(ptr noundef %10, ptr noundef %12) #26
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void %13(ptr noundef %14, ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_setAllowEdgeCreation(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, ptr noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  tail call void %10(ptr noundef %12, ptr noundef nonnull %6) #26
  br label %13

13:                                               ; preds = %8, %4
  %14 = icmp ne i32 %1, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  store i32 %15, ptr %16, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  store float %2, ptr %17, align 4, !tbaa !99
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = tail call ptr %19(ptr noundef %21, i32 noundef %23) #26
  store ptr %24, ptr %5, align 8, !tbaa !81
  %25 = icmp eq ptr %3, null
  %26 = load i32, ptr %22, align 4, !tbaa !100
  %27 = sext i32 %26 to i64
  br i1 %25, label %29, label %28

28:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %3, i64 %27, i1 false)
  br label %30

29:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr align 1 %24, i8 0, i64 %27, i1 false)
  br label %30

30:                                               ; preds = %29, %28
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgSubSurf_getAllowEdgeCreation(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #6 {
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !98
  br i1 %5, label %9, label %8

8:                                                ; preds = %4
  store i32 %7, ptr %1, align 4, !tbaa !51
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = icmp eq ptr %2, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  %15 = load float, ptr %14, align 4, !tbaa !99
  store float %15, ptr %2, align 4, !tbaa !101
  br label %16

16:                                               ; preds = %13, %11
  %17 = icmp eq ptr %3, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !100
  %23 = sext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %20, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %16, %18, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_setSubdivisionLevels(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !102
  store i32 %1, ptr %5, align 8, !tbaa !52
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_free(ptr noundef %10, ptr noundef nonnull @_vert_free, ptr noundef nonnull %0) #25
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  tail call fastcc void @_ehash_free(ptr noundef %12, ptr noundef nonnull @_edge_free, ptr noundef nonnull %0) #25
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  tail call fastcc void @_ehash_free(ptr noundef %14, ptr noundef nonnull @_face_free, ptr noundef nonnull %0) #25
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %17) #25
  store ptr %18, ptr %0, align 8, !tbaa !47
  %19 = load ptr, ptr %16, align 8, !tbaa !42
  %20 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %19) #25
  store ptr %20, ptr %11, align 8, !tbaa !48
  %21 = load ptr, ptr %16, align 8, !tbaa !42
  %22 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %21) #25
  store ptr %22, ptr %13, align 8, !tbaa !49
  br label %23

23:                                               ; preds = %8, %4, %2
  %24 = phi i32 [ 2, %2 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccgSubSurf_getUseAgeCounts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !103
  store i32 %7, ptr %1, align 4, !tbaa !51
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !104
  store i32 %11, ptr %2, align 4, !tbaa !51
  br label %12

12:                                               ; preds = %9, %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 4, !tbaa !105
  store i32 %16, ptr %3, align 4, !tbaa !51
  br label %17

17:                                               ; preds = %14, %12
  %18 = icmp eq ptr %4, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %21 = load i32, ptr %20, align 8, !tbaa !106
  store i32 %21, ptr %4, align 4, !tbaa !51
  br label %22

22:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_setUseAgeCounts(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %2, 4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !107
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %3, 4
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = add nsw i32 %4, 4
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !108
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  store i32 1, ptr %23, align 4, !tbaa !103
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  store i32 %2, ptr %24, align 8, !tbaa !104
  %25 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  store i32 %3, ptr %25, align 4, !tbaa !105
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  store i32 %4, ptr %26, align 8, !tbaa !106
  br label %29

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %22, %27, %7, %12, %17
  %30 = phi i32 [ 2, %17 ], [ 2, %12 ], [ 2, %7 ], [ 0, %27 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_setCalcVertexNormals(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = add nuw nsw i32 %2, 12
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %3 ]
  %14 = phi i32 [ %2, %7 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  store i32 %13, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 14
  store i32 %14, ptr %16, align 4, !tbaa !54
  br label %17

17:                                               ; preds = %12, %5, %7
  %18 = phi i32 [ 2, %7 ], [ 2, %5 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ccgSubSurf_setAllocMask(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 15
  store i32 %1, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 16
  store i32 %2, ptr %5, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ccgSubSurf_setNumLayers(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_initFullSync(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %11 = load <2 x ptr>, ptr %0, align 8, !tbaa !41
  store <2 x ptr> %11, ptr %9, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  store ptr %13, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %17) #25
  store ptr %18, ptr %0, align 8, !tbaa !47
  %19 = load ptr, ptr %16, align 8, !tbaa !42
  %20 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %19) #25
  store ptr %20, ptr %10, align 8, !tbaa !48
  %21 = load ptr, ptr %16, align 8, !tbaa !42
  %22 = tail call fastcc ptr @_ehash_new(ptr noundef nonnull %15, ptr noundef %21) #25
  store ptr %22, ptr %12, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 4, !tbaa !102
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 26
  store i32 12, ptr %24, align 8, !tbaa !111
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %26 = tail call ptr %25(i64 noundef 96, ptr noundef nonnull @.str) #26
  %27 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  store ptr %26, ptr %27, align 8, !tbaa !78
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %29 = load i32, ptr %24, align 8, !tbaa !111
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %28(i64 noundef %31, ptr noundef nonnull @.str.1) #26
  %33 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  store ptr %32, ptr %33, align 8, !tbaa !79
  store i32 1, ptr %2, align 4, !tbaa !74
  br label %34

34:                                               ; preds = %1, %5
  %35 = phi i32 [ 0, %5 ], [ 1, %1 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_initPartialSync(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !60
  store i32 4, ptr %2, align 4, !tbaa !74
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ 0, %5 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncVertDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %3) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.CCGVert, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !112
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.CCGVert, ptr %9, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !113
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr %9, align 8, !tbaa !114
  %22 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %21, ptr %22, align 8, !tbaa !41
  tail call void @_vert_free(ptr noundef nonnull %9, ptr noundef nonnull %0) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %23

23:                                               ; preds = %20, %19, %2
  %24 = phi i32 [ 1, %2 ], [ 0, %20 ], [ 2, %19 ]
  ret i32 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @_ehash_lookupWithPrev(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !PGOFuncName !115 {
  %4 = ptrtoint ptr %1 to i64
  %5 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = zext i32 %6 to i64
  %8 = urem i64 %4, %7
  %9 = load ptr, ptr %0, align 8, !tbaa !72
  %10 = shl nuw i64 %8, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %17, %3
  %14 = phi ptr [ %12, %3 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._EHEntry, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %13, !llvm.loop !117

21:                                               ; preds = %17
  store ptr %14, ptr %2, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %13, %21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncEdgeDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %3) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.CCGEdge, ptr %10, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !118
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !119
  %19 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %18, ptr %19, align 8, !tbaa !41
  tail call void @_edge_unlinkMarkAndFree(ptr noundef nonnull %10, ptr noundef nonnull %0) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %20

20:                                               ; preds = %17, %16, %2
  %21 = phi i32 [ 1, %2 ], [ 0, %17 ], [ 2, %16 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_edge_unlinkMarkAndFree(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  tail call fastcc void @_vert_remEdge(ptr noundef %4, ptr noundef %0) #25
  %5 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  tail call fastcc void @_vert_remEdge(ptr noundef %6, ptr noundef %0) #25
  %7 = load ptr, ptr %3, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.CCGVert, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 4, !tbaa !123
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 4, !tbaa !123
  %11 = load ptr, ptr %5, align 8, !tbaa !122
  %12 = getelementptr inbounds %struct.CCGVert, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !123
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !123
  tail call void @_edge_free(ptr noundef %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncFaceDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %3) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 8, !tbaa !124
  %14 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %13, ptr %14, align 8, !tbaa !41
  tail call void @_face_unlinkMarkAndFree(ptr noundef nonnull %10, ptr noundef nonnull %0) #25
  br label %15

15:                                               ; preds = %7, %12
  %16 = phi i32 [ 2, %7 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 1, %2 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @_face_unlinkMarkAndFree(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %0) #25
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %19, %8 ]
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  tail call fastcc void @_vert_remFace(ptr noundef %11, ptr noundef nonnull %0) #25
  %12 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %0) #25
  %13 = getelementptr inbounds ptr, ptr %12, i64 %9
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  tail call fastcc void @_edge_remFace(ptr noundef %14, ptr noundef nonnull %0) #25
  %15 = load ptr, ptr %10, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.CCGVert, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !123
  %18 = or i16 %17, 1
  store i16 %18, ptr %16, align 4, !tbaa !123
  %19 = add nuw nsw i64 %9, 1
  %20 = load i16, ptr %3, align 8, !tbaa !127
  %21 = sext i16 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %8, label %23, !llvm.loop !128

23:                                               ; preds = %8, %2
  tail call void @_face_free(ptr noundef nonnull %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %7, i16 0, i16 4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 4, !tbaa !74
  switch i32 %10, label %130 [
    i32 4, label %11
    i32 1, label %90
  ]

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !47
  %13 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %6) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @_vert_new(ptr noundef %1, ptr noundef nonnull %0) #25
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = tail call fastcc ptr @_vert_getCo(ptr noundef %16, i32 noundef 0, i32 noundef %18) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %19, ptr noundef %2, ptr noundef nonnull %0) #25
  %20 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_insert(ptr noundef %20, ptr noundef %16) #25
  %21 = or disjoint i16 %8, 1
  %22 = getelementptr inbounds %struct.CCGVert, ptr %16, i64 0, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !123
  br label %126

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %13, i32 noundef 0, i32 noundef %25) #25
  %27 = tail call fastcc i32 @VertDataEqual(ptr noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %0) #25, !range !129
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !123
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, %8
  br i1 %33, label %126, label %34

34:                                               ; preds = %29, %23
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %26, ptr noundef %2, ptr noundef nonnull %0) #25
  %35 = or disjoint i16 %8, 1
  %36 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 4
  store i16 %35, ptr %36, align 4, !tbaa !123
  %37 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !113
  %39 = icmp sgt i16 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = zext nneg i16 %38 to i64
  %42 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  br label %52

44:                                               ; preds = %52, %34
  %45 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !112
  %47 = icmp sgt i16 %46, 0
  br i1 %47, label %48, label %126

48:                                               ; preds = %44
  %49 = zext nneg i16 %46 to i64
  %50 = getelementptr inbounds %struct.CCGVert, ptr %13, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  br label %68

52:                                               ; preds = %40, %52
  %53 = phi i64 [ 0, %40 ], [ %66, %52 ]
  %54 = getelementptr inbounds ptr, ptr %43, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  %56 = getelementptr inbounds %struct.CCGEdge, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !121
  %58 = getelementptr inbounds %struct.CCGVert, ptr %57, i64 0, i32 4
  %59 = load i16, ptr %58, align 4, !tbaa !123
  %60 = or i16 %59, 1
  store i16 %60, ptr %58, align 4, !tbaa !123
  %61 = getelementptr inbounds %struct.CCGEdge, ptr %55, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !122
  %63 = getelementptr inbounds %struct.CCGVert, ptr %62, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !123
  %65 = or i16 %64, 1
  store i16 %65, ptr %63, align 4, !tbaa !123
  %66 = add nuw nsw i64 %53, 1
  %67 = icmp eq i64 %66, %41
  br i1 %67, label %44, label %52, !llvm.loop !130

68:                                               ; preds = %48, %87
  %69 = phi i64 [ 0, %48 ], [ %88, %87 ]
  %70 = getelementptr inbounds ptr, ptr %51, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.CCGFace, ptr %71, i64 0, i32 2
  %73 = load i16, ptr %72, align 8, !tbaa !127
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = zext nneg i16 %73 to i64
  %77 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %71) #25
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %85, %78 ]
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds %struct.CCGVert, ptr %81, i64 0, i32 4
  %83 = load i16, ptr %82, align 4, !tbaa !123
  %84 = or i16 %83, 1
  store i16 %84, ptr %82, align 4, !tbaa !123
  %85 = add nuw nsw i64 %79, 1
  %86 = icmp eq i64 %85, %76
  br i1 %86, label %87, label %78, !llvm.loop !131

87:                                               ; preds = %78, %68
  %88 = add nuw nsw i64 %69, 1
  %89 = icmp eq i64 %88, %49
  br i1 %89, label %126, label %68, !llvm.loop !132

90:                                               ; preds = %5
  %91 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %92 = load ptr, ptr %91, align 8, !tbaa !77
  %93 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %92, ptr noundef %1, ptr noundef nonnull %6) #25
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = tail call fastcc ptr @_vert_new(ptr noundef %1, ptr noundef nonnull %0) #25
  %97 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !57
  %99 = tail call fastcc ptr @_vert_getCo(ptr noundef %96, i32 noundef 0, i32 noundef %98) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %99, ptr noundef %2, ptr noundef nonnull %0) #25
  %100 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_insert(ptr noundef %100, ptr noundef %96) #25
  %101 = or disjoint i16 %8, 1
  %102 = getelementptr inbounds %struct.CCGVert, ptr %96, i64 0, i32 4
  store i16 %101, ptr %102, align 4, !tbaa !123
  br label %126

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !57
  %106 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %93, i32 noundef 0, i32 noundef %105) #25
  %107 = tail call fastcc i32 @VertDataEqual(ptr noundef %2, ptr noundef nonnull %106, ptr noundef nonnull %0) #25, !range !129
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.CCGVert, ptr %93, i64 0, i32 4
  %111 = load i16, ptr %110, align 4, !tbaa !123
  %112 = and i16 %111, 4
  %113 = icmp eq i16 %112, %8
  br i1 %113, label %122, label %114

114:                                              ; preds = %109, %103
  %115 = load ptr, ptr %93, align 8, !tbaa !114
  %116 = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %115, ptr %116, align 8, !tbaa !41
  %117 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_insert(ptr noundef %117, ptr noundef nonnull %93) #25
  %118 = load i32, ptr %104, align 8, !tbaa !57
  %119 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %93, i32 noundef 0, i32 noundef %118) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %119, ptr noundef %2, ptr noundef nonnull %0) #25
  %120 = or disjoint i16 %8, 3
  %121 = getelementptr inbounds %struct.CCGVert, ptr %93, i64 0, i32 4
  store i16 %120, ptr %121, align 4, !tbaa !123
  br label %126

122:                                              ; preds = %109
  %123 = load ptr, ptr %93, align 8, !tbaa !114
  %124 = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %123, ptr %124, align 8, !tbaa !41
  %125 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @_ehash_insert(ptr noundef %125, ptr noundef nonnull %93) #25
  store i16 0, ptr %110, align 4, !tbaa !123
  br label %126

126:                                              ; preds = %87, %44, %95, %122, %114, %15, %29
  %127 = phi ptr [ %13, %29 ], [ %16, %15 ], [ %93, %114 ], [ %93, %122 ], [ %96, %95 ], [ %13, %44 ], [ %13, %87 ]
  %128 = icmp eq ptr %4, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store ptr %127, ptr %4, align 8, !tbaa !41
  br label %130

130:                                              ; preds = %126, %129, %5
  %131 = phi i32 [ 1, %5 ], [ 0, %129 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  ret i32 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @_vert_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = add nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = mul nsw i32 %12, %5
  %14 = add i32 %13, 40
  %15 = load i32, ptr %10, align 8, !tbaa !107
  %16 = add i32 %14, %15
  %17 = tail call ptr %7(ptr noundef %9, i32 noundef %16) #26
  %18 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 6
  %20 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !112
  %21 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 2
  store i16 0, ptr %21, align 8, !tbaa !113
  %22 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 4
  store i16 0, ptr %22, align 4, !tbaa !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %23 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef %1, ptr noundef %17) #25
  %24 = load i32, ptr %10, align 8, !tbaa !107
  %25 = sext i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %23, i8 0, i64 %25, i1 false)
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 18
  %27 = load i32, ptr %26, align 4, !tbaa !103
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 17
  %31 = load i32, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 19
  %33 = load i32, ptr %32, align 8, !tbaa !104
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %23, i64 %34
  store i32 %31, ptr %35, align 4, !tbaa !51
  br label %36

36:                                               ; preds = %29, %2
  ret ptr %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataCopy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !135 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds float, ptr %1, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !101
  %13 = getelementptr inbounds float, ptr %0, i64 %10
  store float %12, ptr %13, align 4, !tbaa !101
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !136

16:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @_vert_getCo(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !137 {
  %4 = tail call fastcc ptr @VERT_getLevelData(ptr noundef %0) #25
  %5 = mul nsw i32 %2, %1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_ehash_insert(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = getelementptr inbounds %struct._EHEntry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = ptrtoint ptr %6 to i64
  %8 = zext i32 %4 to i64
  %9 = urem i64 %7, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  %11 = shl nuw i64 %9, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  store ptr %14, ptr %1, align 8, !tbaa !85
  store ptr %1, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !68
  %18 = mul nsw i32 %4, 3
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %69, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !69
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [29 x i32], ptr @kHashSizes, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !51
  store i32 %27, ptr %3, align 4, !tbaa !70
  %28 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !66
  %32 = shl i32 %27, 3
  %33 = tail call ptr %29(ptr noundef %31, i32 noundef %32) #26
  store ptr %33, ptr %0, align 8, !tbaa !72
  %34 = load i32, ptr %3, align 4, !tbaa !70
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %33, i8 0, i64 %36, i1 false)
  %37 = icmp eq i32 %4, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %20
  %39 = sext i32 %4 to i64
  br label %43

40:                                               ; preds = %52, %43
  %41 = and i64 %45, 4294967295
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %65, label %43, !llvm.loop !139

43:                                               ; preds = %38, %40
  %44 = phi i64 [ %39, %38 ], [ %45, %40 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds ptr, ptr %21, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = icmp eq ptr %47, null
  br i1 %48, label %40, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %3, align 4, !tbaa !70
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %47, %49 ], [ %54, %52 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = getelementptr inbounds %struct._EHEntry, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !116
  %57 = ptrtoint ptr %56 to i64
  %58 = urem i64 %57, %51
  %59 = load ptr, ptr %0, align 8, !tbaa !72
  %60 = shl nuw i64 %58, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !41
  store ptr %63, ptr %53, align 8, !tbaa !85
  store ptr %53, ptr %62, align 8, !tbaa !41
  %64 = icmp eq ptr %54, null
  br i1 %64, label %40, label %52, !llvm.loop !140

65:                                               ; preds = %40, %20
  %66 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  %68 = load ptr, ptr %30, align 8, !tbaa !66
  tail call void %67(ptr noundef %68, ptr noundef %21) #26
  br label %69

69:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @VertDataEqual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !141 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %19, label %12, !llvm.loop !142

12:                                               ; preds = %7, %9
  %13 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %14 = getelementptr inbounds float, ptr %0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !101
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !101
  %18 = fcmp une float %15, %17
  br i1 %18, label %19, label %9

19:                                               ; preds = %12, %9, %3
  %20 = phi i32 [ 1, %3 ], [ 1, %9 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @FACE_getVerts(ptr noundef readnone %0) unnamed_addr #0 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %9 = load i32, ptr %8, align 4, !tbaa !74
  switch i32 %9, label %113 [
    i32 4, label %10
    i32 1, label %50
    i32 2, label %51
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %7) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CCGEdge, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = getelementptr inbounds %struct.CCGVert, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.CCGEdge, ptr %13, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = getelementptr inbounds %struct.CCGVert, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.CCGEdge, ptr %13, i64 0, i32 4
  %29 = load float, ptr %28, align 4, !tbaa !144
  %30 = fcmp une float %29, %4
  br i1 %30, label %31, label %109

31:                                               ; preds = %27, %21, %15, %10
  %32 = load ptr, ptr %0, align 8, !tbaa !47
  %33 = tail call fastcc ptr @_ehash_lookup(ptr noundef %32, ptr noundef %2) #25
  %34 = tail call fastcc ptr @_ehash_lookup(ptr noundef %32, ptr noundef %3) #25
  %35 = tail call fastcc ptr @_edge_new(ptr noundef %1, ptr noundef %33, ptr noundef %34, float noundef %4, ptr noundef nonnull %0) #25
  br i1 %14, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %7, align 8, !tbaa !41
  store ptr %35, ptr %37, align 8, !tbaa !41
  %38 = load ptr, ptr %13, align 8, !tbaa !119
  store ptr %38, ptr %35, align 8, !tbaa !119
  tail call void @_edge_unlinkMarkAndFree(ptr noundef nonnull %13, ptr noundef nonnull %0) #25
  br label %41

39:                                               ; preds = %31
  %40 = load ptr, ptr %11, align 8, !tbaa !48
  tail call fastcc void @_ehash_insert(ptr noundef %40, ptr noundef %35) #25
  br label %41

41:                                               ; preds = %39, %36
  %42 = getelementptr inbounds %struct.CCGEdge, ptr %35, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !121
  %44 = getelementptr inbounds %struct.CCGVert, ptr %43, i64 0, i32 4
  %45 = load i16, ptr %44, align 4, !tbaa !123
  %46 = or i16 %45, 1
  store i16 %46, ptr %44, align 4, !tbaa !123
  %47 = getelementptr inbounds %struct.CCGEdge, ptr %35, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !122
  %49 = getelementptr inbounds %struct.CCGVert, ptr %48, i64 0, i32 4
  br label %104

50:                                               ; preds = %6
  store i32 2, ptr %8, align 4, !tbaa !74
  br label %51

51:                                               ; preds = %6, %50
  %52 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  %54 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %53, ptr noundef %1, ptr noundef nonnull %7) #25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.CCGEdge, ptr %54, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !121
  %59 = getelementptr inbounds %struct.CCGVert, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !134
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.CCGEdge, ptr %54, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !122
  %65 = getelementptr inbounds %struct.CCGVert, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !134
  %67 = icmp eq ptr %66, %3
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.CCGEdge, ptr %54, i64 0, i32 4
  %70 = load float, ptr %69, align 4, !tbaa !144
  %71 = fcmp une float %70, %4
  br i1 %71, label %72, label %87

72:                                               ; preds = %68, %62, %56, %51
  %73 = load ptr, ptr %0, align 8, !tbaa !47
  %74 = tail call fastcc ptr @_ehash_lookup(ptr noundef %73, ptr noundef %2) #25
  %75 = tail call fastcc ptr @_ehash_lookup(ptr noundef %73, ptr noundef %3) #25
  %76 = tail call fastcc ptr @_edge_new(ptr noundef %1, ptr noundef %74, ptr noundef %75, float noundef %4, ptr noundef nonnull %0) #25
  %77 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  tail call fastcc void @_ehash_insert(ptr noundef %78, ptr noundef %76) #25
  %79 = getelementptr inbounds %struct.CCGEdge, ptr %76, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !121
  %81 = getelementptr inbounds %struct.CCGVert, ptr %80, i64 0, i32 4
  %82 = load i16, ptr %81, align 4, !tbaa !123
  %83 = or i16 %82, 1
  store i16 %83, ptr %81, align 4, !tbaa !123
  %84 = getelementptr inbounds %struct.CCGEdge, ptr %76, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !122
  %86 = getelementptr inbounds %struct.CCGVert, ptr %85, i64 0, i32 4
  br label %104

87:                                               ; preds = %68
  %88 = load ptr, ptr %54, align 8, !tbaa !119
  %89 = load ptr, ptr %7, align 8, !tbaa !41
  store ptr %88, ptr %89, align 8, !tbaa !41
  %90 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  tail call fastcc void @_ehash_insert(ptr noundef %91, ptr noundef nonnull %54) #25
  %92 = getelementptr inbounds %struct.CCGEdge, ptr %54, i64 0, i32 3
  store i16 0, ptr %92, align 2, !tbaa !145
  %93 = load ptr, ptr %57, align 8, !tbaa !121
  %94 = getelementptr inbounds %struct.CCGVert, ptr %93, i64 0, i32 4
  %95 = load i16, ptr %94, align 4, !tbaa !123
  %96 = load ptr, ptr %63, align 8, !tbaa !122
  %97 = getelementptr inbounds %struct.CCGVert, ptr %96, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !123
  %99 = or i16 %98, %95
  %100 = and i16 %99, 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %87
  %103 = or i16 %95, 1
  store i16 %103, ptr %94, align 4, !tbaa !123
  br label %104

104:                                              ; preds = %41, %102, %72
  %105 = phi ptr [ %86, %72 ], [ %97, %102 ], [ %49, %41 ]
  %106 = phi ptr [ %76, %72 ], [ %54, %102 ], [ %13, %41 ]
  %107 = load i16, ptr %105, align 4, !tbaa !123
  %108 = or i16 %107, 1
  store i16 %108, ptr %105, align 4, !tbaa !123
  br label %109

109:                                              ; preds = %104, %87, %27
  %110 = phi ptr [ %13, %27 ], [ %54, %87 ], [ %106, %104 ]
  %111 = icmp eq ptr %5, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store ptr %110, ptr %5, align 8, !tbaa !41
  br label %113

113:                                              ; preds = %109, %112, %6
  %114 = phi i32 [ 1, %6 ], [ 0, %112 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  ret i32 %114
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @_ehash_lookup(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 !PGOFuncName !146 {
  %3 = ptrtoint ptr %1 to i64
  %4 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = zext i32 %5 to i64
  %7 = urem i64 %3, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !72
  %9 = shl nuw i64 %7, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  br label %12

12:                                               ; preds = %16, %2
  %13 = phi ptr [ %11, %2 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._EHEntry, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %12, !llvm.loop !147

20:                                               ; preds = %16, %12
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @_edge_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 !PGOFuncName !148 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = add nsw i32 %7, 1
  %9 = tail call fastcc i32 @ccg_edgebase(i32 noundef %8) #25
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = mul nsw i32 %15, %9
  %17 = add i32 %16, 48
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !100
  %20 = add i32 %17, %19
  %21 = tail call ptr %11(ptr noundef %13, i32 noundef %20) #26
  %22 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 1
  store ptr %0, ptr %22, align 8, !tbaa !149
  %23 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 5
  store ptr %1, ptr %23, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 6
  store ptr %2, ptr %24, align 8, !tbaa !122
  %25 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 4
  store float %3, ptr %25, align 4, !tbaa !144
  %26 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 7
  store ptr null, ptr %26, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 2
  store i16 0, ptr %27, align 8, !tbaa !118
  %28 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 3
  store i16 0, ptr %28, align 2, !tbaa !145
  tail call fastcc void @_vert_addEdge(ptr noundef %1, ptr noundef %21, ptr noundef %4) #25
  tail call fastcc void @_vert_addEdge(ptr noundef %2, ptr noundef %21, ptr noundef %4) #25
  %29 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef %4, ptr noundef %21) #25
  %30 = load i32, ptr %18, align 4, !tbaa !100
  %31 = sext i32 %30 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %29, i8 0, i64 %31, i1 false)
  %32 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 18
  %33 = load i32, ptr %32, align 4, !tbaa !103
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 17
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 20
  %39 = load i32, ptr %38, align 4, !tbaa !105
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %29, i64 %40
  store i32 %37, ptr %41, align 4, !tbaa !51
  br label %42

42:                                               ; preds = %35, %5
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_syncFace(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = shl nsw i32 %8, 1
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %2)
  store i32 %12, ptr %7, align 8, !tbaa !111
  %13 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = sext i32 %12 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr %13(ptr noundef %15, i64 noundef %17, ptr noundef nonnull @__func__.ccgSubSurf_syncFace) #26
  store ptr %18, ptr %14, align 8, !tbaa !78
  %19 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  %22 = load i32, ptr %7, align 8, !tbaa !111
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %19(ptr noundef %21, i64 noundef %24, ptr noundef nonnull @__func__.ccgSubSurf_syncFace) #26
  store ptr %25, ptr %20, align 8, !tbaa !79
  br label %26

26:                                               ; preds = %10, %5
  %27 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %28 = load i32, ptr %27, align 4, !tbaa !74
  switch i32 %28, label %294 [
    i32 4, label %29
    i32 1, label %128
    i32 2, label %128
    i32 3, label %129
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %31, ptr noundef %1, ptr noundef nonnull %6) #25
  %33 = icmp sgt i32 %2, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %36 = zext nneg i32 %2 to i64
  br label %42

37:                                               ; preds = %42
  br i1 %33, label %38, label %67

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %41 = zext nneg i32 %2 to i64
  br label %52

42:                                               ; preds = %34, %42
  %43 = phi i64 [ 0, %34 ], [ %50, %42 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  %45 = getelementptr inbounds ptr, ptr %3, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = tail call fastcc ptr @_ehash_lookup(ptr noundef %44, ptr noundef %46) #25
  %48 = load ptr, ptr %35, align 8, !tbaa !78
  %49 = getelementptr inbounds ptr, ptr %48, i64 %43
  store ptr %47, ptr %49, align 8, !tbaa !41
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %36
  br i1 %51, label %37, label %42, !llvm.loop !150

52:                                               ; preds = %38, %52
  %53 = phi i64 [ 0, %38 ], [ %57, %52 ]
  %54 = load ptr, ptr %39, align 8, !tbaa !78
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = add nuw nsw i64 %53, 1
  %58 = icmp eq i64 %57, %41
  %59 = and i64 %57, 4294967295
  %60 = select i1 %58, i64 0, i64 %59
  %61 = getelementptr inbounds ptr, ptr %54, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = tail call fastcc ptr @_vert_findEdgeTo(ptr noundef %56, ptr noundef %62) #25
  %64 = load ptr, ptr %40, align 8, !tbaa !79
  %65 = getelementptr inbounds ptr, ptr %64, i64 %53
  store ptr %63, ptr %65, align 8, !tbaa !41
  %66 = icmp eq i64 %57, %41
  br i1 %66, label %67, label %52, !llvm.loop !151

67:                                               ; preds = %52, %29, %37
  %68 = icmp eq ptr %32, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.CCGFace, ptr %32, i64 0, i32 2
  %71 = load i16, ptr %70, align 8, !tbaa !127
  %72 = sext i16 %71 to i32
  %73 = icmp eq i32 %72, %2
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %76 = load ptr, ptr %75, align 8, !tbaa !78
  br label %91

77:                                               ; preds = %69
  %78 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %32) #25
  %79 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %80 = load ptr, ptr %79, align 8, !tbaa !78
  %81 = sext i32 %2 to i64
  %82 = shl nsw i64 %81, 3
  %83 = tail call i32 @bcmp(ptr nonnull %78, ptr %80, i64 %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %32) #25
  %87 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %88 = load ptr, ptr %87, align 8, !tbaa !79
  %89 = tail call i32 @bcmp(ptr nonnull %86, ptr %88, i64 %82)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %290, label %91

91:                                               ; preds = %74, %77, %85
  %92 = phi ptr [ %76, %74 ], [ %80, %77 ], [ %80, %85 ]
  %93 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = tail call fastcc ptr @_face_new(ptr noundef %1, ptr noundef %92, ptr noundef %94, i32 noundef %2, ptr noundef nonnull %0) #25
  %96 = load i16, ptr %70, align 8, !tbaa !127
  %97 = sext i16 %96 to i32
  %98 = sub i32 %2, %97
  %99 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !102
  %101 = add nsw i32 %98, %100
  store i32 %101, ptr %99, align 4, !tbaa !102
  %102 = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %95, ptr %102, align 8, !tbaa !41
  %103 = load ptr, ptr %32, align 8, !tbaa !124
  store ptr %103, ptr %95, align 8, !tbaa !124
  tail call void @_face_unlinkMarkAndFree(ptr noundef nonnull %32, ptr noundef nonnull %0) #25
  br label %114

104:                                              ; preds = %67
  %105 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %106 = load ptr, ptr %105, align 8, !tbaa !78
  %107 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %108 = load ptr, ptr %107, align 8, !tbaa !79
  %109 = tail call fastcc ptr @_face_new(ptr noundef %1, ptr noundef %106, ptr noundef %108, i32 noundef %2, ptr noundef nonnull %0) #25
  %110 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %111 = load i32, ptr %110, align 4, !tbaa !102
  %112 = add nsw i32 %111, %2
  store i32 %112, ptr %110, align 4, !tbaa !102
  %113 = load ptr, ptr %30, align 8, !tbaa !49
  tail call fastcc void @_ehash_insert(ptr noundef %113, ptr noundef %109) #25
  br label %114

114:                                              ; preds = %104, %91
  %115 = phi ptr [ %109, %104 ], [ %95, %91 ]
  br i1 %33, label %116, label %290

116:                                              ; preds = %114
  %117 = tail call fastcc ptr @FACE_getVerts(ptr noundef %115) #25
  %118 = zext nneg i32 %2 to i64
  br label %119

119:                                              ; preds = %116, %119
  %120 = phi i64 [ 0, %116 ], [ %126, %119 ]
  %121 = getelementptr inbounds ptr, ptr %117, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !41
  %123 = getelementptr inbounds %struct.CCGVert, ptr %122, i64 0, i32 4
  %124 = load i16, ptr %123, align 4, !tbaa !123
  %125 = or i16 %124, 1
  store i16 %125, ptr %123, align 4, !tbaa !123
  %126 = add nuw nsw i64 %120, 1
  %127 = icmp eq i64 %126, %118
  br i1 %127, label %290, label %119, !llvm.loop !152

128:                                              ; preds = %26, %26
  store i32 3, ptr %27, align 4, !tbaa !74
  br label %129

129:                                              ; preds = %26, %128
  %130 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  %132 = call fastcc ptr @_ehash_lookupWithPrev(ptr noundef %131, ptr noundef %1, ptr noundef nonnull %6) #25
  %133 = icmp sgt i32 %2, 0
  br i1 %133, label %134, label %212

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %136 = zext nneg i32 %2 to i64
  br label %150

137:                                              ; preds = %150
  %138 = add nuw nsw i64 %151, 1
  %139 = icmp eq i64 %138, %136
  br i1 %139, label %140, label %150, !llvm.loop !153

140:                                              ; preds = %137
  br i1 %133, label %141, label %212

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %143 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %144 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  %145 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  %146 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %147 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %148 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %149 = zext nneg i32 %2 to i64
  br label %162

150:                                              ; preds = %134, %137
  %151 = phi i64 [ 0, %134 ], [ %138, %137 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !47
  %153 = getelementptr inbounds ptr, ptr %3, i64 %151
  %154 = load ptr, ptr %153, align 8, !tbaa !41
  %155 = tail call fastcc ptr @_ehash_lookup(ptr noundef %152, ptr noundef %154) #25
  %156 = load ptr, ptr %135, align 8, !tbaa !78
  %157 = getelementptr inbounds ptr, ptr %156, i64 %151
  store ptr %155, ptr %157, align 8, !tbaa !41
  %158 = load ptr, ptr %135, align 8, !tbaa !78
  %159 = getelementptr inbounds ptr, ptr %158, i64 %151
  %160 = load ptr, ptr %159, align 8, !tbaa !41
  %161 = icmp eq ptr %160, null
  br i1 %161, label %294, label %137

162:                                              ; preds = %141, %210
  %163 = phi i64 [ 0, %141 ], [ %167, %210 ]
  %164 = load ptr, ptr %142, align 8, !tbaa !78
  %165 = getelementptr inbounds ptr, ptr %164, i64 %163
  %166 = load ptr, ptr %165, align 8, !tbaa !41
  %167 = add nuw nsw i64 %163, 1
  %168 = icmp eq i64 %167, %149
  %169 = and i64 %167, 4294967295
  %170 = select i1 %168, i64 0, i64 %169
  %171 = getelementptr inbounds ptr, ptr %164, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !41
  %173 = tail call fastcc ptr @_vert_findEdgeTo(ptr noundef %166, ptr noundef %172) #25
  %174 = load ptr, ptr %143, align 8, !tbaa !79
  %175 = getelementptr inbounds ptr, ptr %174, i64 %163
  store ptr %173, ptr %175, align 8, !tbaa !41
  %176 = load ptr, ptr %143, align 8, !tbaa !79
  %177 = getelementptr inbounds ptr, ptr %176, i64 %163
  %178 = load ptr, ptr %177, align 8, !tbaa !41
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %210

180:                                              ; preds = %162
  %181 = load i32, ptr %144, align 8, !tbaa !98
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %294, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %142, align 8, !tbaa !78
  %185 = getelementptr inbounds ptr, ptr %184, i64 %163
  %186 = load ptr, ptr %185, align 8, !tbaa !41
  %187 = getelementptr inbounds ptr, ptr %184, i64 %170
  %188 = load ptr, ptr %187, align 8, !tbaa !41
  %189 = load float, ptr %145, align 4, !tbaa !99
  %190 = tail call fastcc ptr @_edge_new(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef %186, ptr noundef %188, float noundef %189, ptr noundef nonnull %0) #25
  %191 = load ptr, ptr %143, align 8, !tbaa !79
  %192 = getelementptr inbounds ptr, ptr %191, i64 %163
  store ptr %190, ptr %192, align 8, !tbaa !41
  %193 = load ptr, ptr %146, align 8, !tbaa !48
  tail call fastcc void @_ehash_insert(ptr noundef %193, ptr noundef %190) #25
  %194 = getelementptr inbounds %struct.CCGEdge, ptr %190, i64 0, i32 5
  %195 = load ptr, ptr %194, align 8, !tbaa !121
  %196 = getelementptr inbounds %struct.CCGVert, ptr %195, i64 0, i32 4
  %197 = load i16, ptr %196, align 4, !tbaa !123
  %198 = or i16 %197, 1
  store i16 %198, ptr %196, align 4, !tbaa !123
  %199 = getelementptr inbounds %struct.CCGEdge, ptr %190, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !122
  %201 = getelementptr inbounds %struct.CCGVert, ptr %200, i64 0, i32 4
  %202 = load i16, ptr %201, align 4, !tbaa !123
  %203 = or i16 %202, 1
  store i16 %203, ptr %201, align 4, !tbaa !123
  %204 = load i32, ptr %147, align 4, !tbaa !100
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %183
  %207 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef nonnull %0, ptr noundef nonnull %190) #25
  %208 = load ptr, ptr %148, align 8, !tbaa !81
  %209 = sext i32 %204 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %207, ptr align 1 %208, i64 %209, i1 false)
  br label %210

210:                                              ; preds = %183, %206, %162
  %211 = icmp eq i64 %167, %149
  br i1 %211, label %212, label %162, !llvm.loop !154

212:                                              ; preds = %210, %129, %140
  %213 = icmp eq ptr %132, null
  br i1 %213, label %233, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.CCGFace, ptr %132, i64 0, i32 2
  %216 = load i16, ptr %215, align 8, !tbaa !127
  %217 = sext i16 %216 to i32
  %218 = icmp eq i32 %217, %2
  br i1 %218, label %219, label %233

219:                                              ; preds = %214
  %220 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %132) #25
  %221 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %222 = load ptr, ptr %221, align 8, !tbaa !78
  %223 = sext i32 %2 to i64
  %224 = shl nsw i64 %223, 3
  %225 = tail call i32 @bcmp(ptr nonnull %220, ptr %222, i64 %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %132) #25
  %229 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %230 = load ptr, ptr %229, align 8, !tbaa !79
  %231 = tail call i32 @bcmp(ptr nonnull %228, ptr %230, i64 %224)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %256, label %233

233:                                              ; preds = %214, %219, %227, %212
  %234 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %235 = load ptr, ptr %234, align 8, !tbaa !78
  %236 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %237 = load ptr, ptr %236, align 8, !tbaa !79
  %238 = tail call fastcc ptr @_face_new(ptr noundef %1, ptr noundef %235, ptr noundef %237, i32 noundef %2, ptr noundef nonnull %0) #25
  %239 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !49
  tail call fastcc void @_ehash_insert(ptr noundef %240, ptr noundef %238) #25
  %241 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %242 = load i32, ptr %241, align 4, !tbaa !102
  %243 = add nsw i32 %242, %2
  store i32 %243, ptr %241, align 4, !tbaa !102
  br i1 %133, label %244, label %290

244:                                              ; preds = %233
  %245 = tail call fastcc ptr @FACE_getVerts(ptr noundef %238) #25
  %246 = zext nneg i32 %2 to i64
  br label %247

247:                                              ; preds = %244, %247
  %248 = phi i64 [ 0, %244 ], [ %254, %247 ]
  %249 = getelementptr inbounds ptr, ptr %245, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !41
  %251 = getelementptr inbounds %struct.CCGVert, ptr %250, i64 0, i32 4
  %252 = load i16, ptr %251, align 4, !tbaa !123
  %253 = or i16 %252, 1
  store i16 %253, ptr %251, align 4, !tbaa !123
  %254 = add nuw nsw i64 %248, 1
  %255 = icmp eq i64 %254, %246
  br i1 %255, label %290, label %247, !llvm.loop !155

256:                                              ; preds = %227
  %257 = load ptr, ptr %132, align 8, !tbaa !124
  %258 = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %257, ptr %258, align 8, !tbaa !41
  %259 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !49
  tail call fastcc void @_ehash_insert(ptr noundef %260, ptr noundef nonnull %132) #25
  %261 = getelementptr inbounds %struct.CCGFace, ptr %132, i64 0, i32 3
  store i16 0, ptr %261, align 2, !tbaa !156
  %262 = load i16, ptr %215, align 8, !tbaa !127
  %263 = sext i16 %262 to i32
  %264 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %265 = load i32, ptr %264, align 4, !tbaa !102
  %266 = add nsw i32 %265, %263
  store i32 %266, ptr %264, align 4, !tbaa !102
  %267 = icmp sgt i16 %262, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %256
  %269 = zext nneg i32 %263 to i64
  br label %273

270:                                              ; preds = %273
  %271 = add nuw nsw i64 %274, 1
  %272 = icmp eq i64 %271, %269
  br i1 %272, label %290, label %273, !llvm.loop !157

273:                                              ; preds = %268, %270
  %274 = phi i64 [ 0, %268 ], [ %271, %270 ]
  %275 = getelementptr inbounds ptr, ptr %220, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !41
  %277 = getelementptr inbounds %struct.CCGVert, ptr %276, i64 0, i32 4
  %278 = load i16, ptr %277, align 4, !tbaa !123
  %279 = and i16 %278, 2
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %270, label %281

281:                                              ; preds = %273, %281
  %282 = phi i64 [ %288, %281 ], [ 0, %273 ]
  %283 = getelementptr inbounds ptr, ptr %220, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !41
  %285 = getelementptr inbounds %struct.CCGVert, ptr %284, i64 0, i32 4
  %286 = load i16, ptr %285, align 4, !tbaa !123
  %287 = or i16 %286, 1
  store i16 %287, ptr %285, align 4, !tbaa !123
  %288 = add nuw nsw i64 %282, 1
  %289 = icmp eq i64 %288, %269
  br i1 %289, label %290, label %281, !llvm.loop !158

290:                                              ; preds = %270, %281, %247, %119, %256, %233, %114, %85
  %291 = phi ptr [ %32, %85 ], [ %32, %114 ], [ %238, %233 ], [ %132, %256 ], [ %32, %119 ], [ %238, %247 ], [ %132, %281 ], [ %132, %270 ]
  %292 = icmp eq ptr %4, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  store ptr %291, ptr %4, align 8, !tbaa !41
  br label %294

294:                                              ; preds = %150, %180, %290, %293, %26
  %295 = phi i32 [ 1, %26 ], [ 0, %293 ], [ 0, %290 ], [ 2, %180 ], [ 2, %150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  ret i32 %295
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @_vert_findEdgeTo(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #12 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !113
  %5 = sext i16 %4 to i32
  %6 = icmp sgt i16 %4, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = zext nneg i32 %5 to i64
  br label %14

11:                                               ; preds = %29
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %33, label %14, !llvm.loop !160

14:                                               ; preds = %7, %11
  %15 = phi i64 [ 0, %7 ], [ %12, %11 ]
  %16 = trunc i64 %15 to i32
  %17 = xor i32 %16, -1
  %18 = add i32 %5, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %9, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = icmp eq ptr %23, %0
  %25 = getelementptr inbounds %struct.CCGEdge, ptr %21, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !122
  %27 = icmp eq ptr %26, %1
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %33, label %29

29:                                               ; preds = %14
  %30 = icmp eq ptr %26, %0
  %31 = icmp eq ptr %23, %1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %11

33:                                               ; preds = %11, %29, %14, %2
  %34 = phi ptr [ null, %2 ], [ %21, %29 ], [ null, %11 ], [ %21, %14 ]
  ret ptr %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @FACE_getEdges(ptr noundef readonly %0) unnamed_addr #13 !PGOFuncName !161 {
  %2 = tail call fastcc ptr @FACE_getVerts(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_face_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 !PGOFuncName !162 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = tail call fastcc i32 @ccg_gridsize(i32 noundef %7) #25
  %9 = add i32 %8, 1
  %10 = mul i32 %8, %3
  %11 = mul i32 %10, %9
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = shl i32 %3, 4
  %18 = add i32 %17, 24
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = mul nsw i32 %12, %20
  %22 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !108
  %24 = add i32 %18, %23
  %25 = add i32 %24, %21
  %26 = tail call ptr %14(ptr noundef %16, i32 noundef %25) #26
  %27 = trunc i32 %3 to i16
  %28 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 0, i32 2
  store i16 %27, ptr %28, align 8, !tbaa !127
  %29 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 0, i32 1
  store ptr %0, ptr %29, align 8, !tbaa !163
  %30 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 0, i32 3
  store i16 0, ptr %30, align 2, !tbaa !156
  %31 = icmp sgt i32 %3, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %5
  %33 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %26) #25
  %34 = zext nneg i32 %3 to i64
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %46, %35 ]
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %38, ptr %39, align 8, !tbaa !41
  %40 = getelementptr inbounds ptr, ptr %2, i64 %36
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = tail call fastcc ptr @FACE_getEdges(ptr noundef %26) #25
  %43 = getelementptr inbounds ptr, ptr %42, i64 %36
  store ptr %41, ptr %43, align 8, !tbaa !41
  %44 = load ptr, ptr %37, align 8, !tbaa !41
  tail call fastcc void @_vert_addFace(ptr noundef %44, ptr noundef %26, ptr noundef %4) #25
  %45 = load ptr, ptr %40, align 8, !tbaa !41
  tail call fastcc void @_edge_addFace(ptr noundef %45, ptr noundef %26, ptr noundef %4) #25
  %46 = add nuw nsw i64 %36, 1
  %47 = icmp eq i64 %46, %34
  br i1 %47, label %48, label %35, !llvm.loop !164

48:                                               ; preds = %35, %5
  %49 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef %4, ptr noundef %26) #25
  %50 = load i32, ptr %22, align 8, !tbaa !108
  %51 = sext i32 %50 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %49, i8 0, i64 %51, i1 false)
  %52 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 18
  %53 = load i32, ptr %52, align 4, !tbaa !103
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 17
  %57 = load i32, ptr %56, align 8, !tbaa !60
  %58 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 21
  %59 = load i32, ptr %58, align 8, !tbaa !106
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %49, i64 %60
  store i32 %57, ptr %61, align 4, !tbaa !51
  br label %62

62:                                               ; preds = %55, %48
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getEdgeUserData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = tail call fastcc ptr @EDGE_getLevelData(ptr noundef %1) #25
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = add nsw i32 %7, 1
  %9 = tail call fastcc i32 @ccg_edgebase(i32 noundef %8) #25
  %10 = mul nsw i32 %9, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_processSync(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !74
  switch i32 %3, label %5 [
    i32 4, label %4
    i32 0, label %19
  ]

4:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !tbaa !74
  br label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  tail call fastcc void @_ehash_free(ptr noundef %7, ptr noundef nonnull @_face_unlinkMarkAndFree, ptr noundef nonnull %0) #25
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  tail call fastcc void @_ehash_free(ptr noundef %9, ptr noundef nonnull @_edge_unlinkMarkAndFree, ptr noundef nonnull %0) #25
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  tail call fastcc void @_ehash_free(ptr noundef %11, ptr noundef nonnull @_vert_free, ptr noundef nonnull %0) #25
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  tail call void %12(ptr noundef %14) #26
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  tail call void %15(ptr noundef %17) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %5, %4
  tail call fastcc void @ccgSubSurf__sync(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %18, %1
  %20 = phi i32 [ 1, %1 ], [ 0, %18 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgSubSurf__sync(ptr noundef %0) unnamed_addr #1 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %11 = load ptr, ptr %0, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %10(i64 noundef %15, ptr noundef nonnull @.str.2) #26
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._EHash, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr %17(i64 noundef %23, ptr noundef nonnull @.str.3) #26
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct._EHash, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %25(i64 noundef %31, ptr noundef nonnull @.str.4) #26
  %33 = load ptr, ptr %0, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct._EHash, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !70
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %41, label %475

37:                                               ; preds = %124
  %38 = icmp sgt i32 %126, 0
  br i1 %38, label %39, label %134

39:                                               ; preds = %37
  %40 = zext nneg i32 %126 to i64
  br label %139

41:                                               ; preds = %1, %124
  %42 = phi ptr [ %125, %124 ], [ %33, %1 ]
  %43 = phi i64 [ %129, %124 ], [ 0, %1 ]
  %44 = phi i32 [ %128, %124 ], [ 0, %1 ]
  %45 = phi i32 [ %127, %124 ], [ 0, %1 ]
  %46 = phi i32 [ %126, %124 ], [ 0, %1 ]
  %47 = load ptr, ptr %42, align 8, !tbaa !72
  %48 = getelementptr inbounds ptr, ptr %47, i64 %43
  %49 = load ptr, ptr %48, align 8, !tbaa !41
  %50 = icmp eq ptr %49, null
  br i1 %50, label %124, label %51

51:                                               ; preds = %41, %116
  %52 = phi ptr [ %120, %116 ], [ %49, %41 ]
  %53 = phi i32 [ %119, %116 ], [ %44, %41 ]
  %54 = phi i32 [ %118, %116 ], [ %45, %41 ]
  %55 = phi i32 [ %117, %116 ], [ %46, %41 ]
  %56 = getelementptr inbounds %struct.CCGVert, ptr %52, i64 0, i32 4
  %57 = load i16, ptr %56, align 4, !tbaa !123
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %116, label %60

60:                                               ; preds = %51
  %61 = add nsw i32 %53, 1
  %62 = sext i32 %53 to i64
  %63 = getelementptr inbounds ptr, ptr %16, i64 %62
  store ptr %52, ptr %63, align 8, !tbaa !41
  %64 = getelementptr inbounds %struct.CCGVert, ptr %52, i64 0, i32 2
  %65 = load i16, ptr %64, align 8, !tbaa !113
  %66 = icmp sgt i16 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = zext nneg i16 %65 to i64
  %69 = getelementptr inbounds %struct.CCGVert, ptr %52, i64 0, i32 6
  br label %78

70:                                               ; preds = %93, %60
  %71 = phi i32 [ %54, %60 ], [ %94, %93 ]
  %72 = getelementptr inbounds %struct.CCGVert, ptr %52, i64 0, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !112
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %70
  %76 = zext nneg i16 %73 to i64
  %77 = getelementptr inbounds %struct.CCGVert, ptr %52, i64 0, i32 7
  br label %97

78:                                               ; preds = %67, %93
  %79 = phi i64 [ 0, %67 ], [ %95, %93 ]
  %80 = phi i32 [ %54, %67 ], [ %94, %93 ]
  %81 = load ptr, ptr %69, align 8, !tbaa !95
  %82 = getelementptr inbounds ptr, ptr %81, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !41
  %84 = getelementptr inbounds %struct.CCGEdge, ptr %83, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !145
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = add nsw i32 %80, 1
  %90 = sext i32 %80 to i64
  %91 = getelementptr inbounds ptr, ptr %24, i64 %90
  store ptr %83, ptr %91, align 8, !tbaa !41
  %92 = or disjoint i16 %85, 1
  store i16 %92, ptr %84, align 2, !tbaa !145
  br label %93

93:                                               ; preds = %88, %78
  %94 = phi i32 [ %80, %78 ], [ %89, %88 ]
  %95 = add nuw nsw i64 %79, 1
  %96 = icmp eq i64 %95, %68
  br i1 %96, label %70, label %78, !llvm.loop !166

97:                                               ; preds = %75, %112
  %98 = phi i64 [ 0, %75 ], [ %114, %112 ]
  %99 = phi i32 [ %55, %75 ], [ %113, %112 ]
  %100 = load ptr, ptr %77, align 8, !tbaa !97
  %101 = getelementptr inbounds ptr, ptr %100, i64 %98
  %102 = load ptr, ptr %101, align 8, !tbaa !41
  %103 = getelementptr inbounds %struct.CCGFace, ptr %102, i64 0, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !156
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = add nsw i32 %99, 1
  %109 = sext i32 %99 to i64
  %110 = getelementptr inbounds ptr, ptr %32, i64 %109
  store ptr %102, ptr %110, align 8, !tbaa !41
  %111 = or disjoint i16 %104, 1
  store i16 %111, ptr %103, align 2, !tbaa !156
  br label %112

112:                                              ; preds = %107, %97
  %113 = phi i32 [ %99, %97 ], [ %108, %107 ]
  %114 = add nuw nsw i64 %98, 1
  %115 = icmp eq i64 %114, %76
  br i1 %115, label %116, label %97, !llvm.loop !167

116:                                              ; preds = %112, %70, %51
  %117 = phi i32 [ %55, %51 ], [ %55, %70 ], [ %113, %112 ]
  %118 = phi i32 [ %54, %51 ], [ %71, %70 ], [ %71, %112 ]
  %119 = phi i32 [ %53, %51 ], [ %61, %70 ], [ %61, %112 ]
  %120 = load ptr, ptr %52, align 8, !tbaa !41
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %51, !llvm.loop !168

122:                                              ; preds = %116
  %123 = load ptr, ptr %0, align 8, !tbaa !47
  br label %124

124:                                              ; preds = %122, %41
  %125 = phi ptr [ %42, %41 ], [ %123, %122 ]
  %126 = phi i32 [ %46, %41 ], [ %117, %122 ]
  %127 = phi i32 [ %45, %41 ], [ %118, %122 ]
  %128 = phi i32 [ %44, %41 ], [ %119, %122 ]
  %129 = add nuw nsw i64 %43, 1
  %130 = getelementptr inbounds %struct._EHash, ptr %125, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !70
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %41, label %37, !llvm.loop !169

134:                                              ; preds = %158, %37
  %135 = phi i1 [ false, %37 ], [ %38, %158 ]
  %136 = icmp sgt i32 %127, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %134
  %138 = zext nneg i32 %127 to i64
  br label %171

139:                                              ; preds = %39, %158
  %140 = phi i64 [ 0, %39 ], [ %163, %158 ]
  %141 = getelementptr inbounds ptr, ptr %32, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !41
  %143 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %142) #25
  tail call fastcc void @VertDataZero(ptr noundef nonnull %143, ptr noundef nonnull %0) #25
  %144 = getelementptr inbounds %struct.CCGFace, ptr %142, i64 0, i32 2
  %145 = load i16, ptr %144, align 8, !tbaa !127
  %146 = icmp sgt i16 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %142) #25
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i64 [ 0, %147 ], [ %154, %149 ]
  %151 = getelementptr inbounds ptr, ptr %148, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !41
  %153 = tail call fastcc ptr @_vert_getCo(ptr noundef %152, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %143, ptr noundef nonnull %153, ptr noundef nonnull %0) #25
  %154 = add nuw nsw i64 %150, 1
  %155 = load i16, ptr %144, align 8, !tbaa !127
  %156 = sext i16 %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %149, label %158, !llvm.loop !170

158:                                              ; preds = %149, %139
  %159 = phi i16 [ %145, %139 ], [ %155, %149 ]
  %160 = sitofp i16 %159 to float
  %161 = fdiv float 1.000000e+00, %160
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %143, float noundef %161, ptr noundef nonnull %0) #25
  %162 = getelementptr inbounds %struct.CCGFace, ptr %142, i64 0, i32 3
  store i16 0, ptr %162, align 2, !tbaa !156
  %163 = add nuw nsw i64 %140, 1
  %164 = icmp eq i64 %163, %40
  br i1 %164, label %134, label %139, !llvm.loop !171

165:                                              ; preds = %217, %134
  %166 = phi i1 [ false, %134 ], [ %136, %217 ]
  %167 = icmp sgt i32 %128, 0
  br i1 %167, label %168, label %397

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %170 = zext nneg i32 %128 to i64
  br label %220

171:                                              ; preds = %137, %217
  %172 = phi i64 [ 0, %137 ], [ %218, %217 ]
  %173 = getelementptr inbounds ptr, ptr %24, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !41
  %175 = tail call fastcc ptr @_edge_getCo(ptr noundef %174, i32 noundef 1, i32 noundef 1, i32 noundef %5) #25
  %176 = tail call fastcc float @EDGE_getSharpness(ptr noundef %174, i32 noundef 0) #25
  %177 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %174) #25, !range !129
  %178 = icmp ne i32 %177, 0
  %179 = fcmp oge float %176, 1.000000e+00
  %180 = select i1 %178, i1 true, i1 %179
  %181 = getelementptr inbounds %struct.CCGEdge, ptr %174, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !121
  %183 = tail call fastcc ptr @_vert_getCo(ptr noundef %182, i32 noundef 0, i32 noundef %5) #25
  %184 = getelementptr inbounds %struct.CCGEdge, ptr %174, i64 0, i32 6
  br i1 %180, label %185, label %188

185:                                              ; preds = %171
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %175, ptr noundef nonnull %183, ptr noundef nonnull %0) #25
  %186 = load ptr, ptr %184, align 8, !tbaa !122
  %187 = tail call fastcc ptr @_vert_getCo(ptr noundef %186, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %175, ptr noundef nonnull %187, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %175, float noundef 5.000000e-01, ptr noundef nonnull %0) #25
  br label %217

188:                                              ; preds = %171
  tail call fastcc void @VertDataCopy(ptr noundef %7, ptr noundef nonnull %183, ptr noundef nonnull %0) #25
  %189 = load ptr, ptr %184, align 8, !tbaa !122
  %190 = tail call fastcc ptr @_vert_getCo(ptr noundef %189, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef %7, ptr noundef nonnull %190, ptr noundef nonnull %0) #25
  %191 = getelementptr inbounds %struct.CCGEdge, ptr %174, i64 0, i32 2
  %192 = load i16, ptr %191, align 8, !tbaa !118
  %193 = icmp sgt i16 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.CCGEdge, ptr %174, i64 0, i32 7
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ 0, %194 ], [ %202, %196 ]
  %198 = load ptr, ptr %195, align 8, !tbaa !91
  %199 = getelementptr inbounds ptr, ptr %198, i64 %197
  %200 = load ptr, ptr %199, align 8, !tbaa !41
  %201 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %200) #25
  tail call fastcc void @VertDataAdd(ptr noundef %7, ptr noundef nonnull %201, ptr noundef nonnull %0) #25
  %202 = add nuw nsw i64 %197, 1
  %203 = load i16, ptr %191, align 8, !tbaa !118
  %204 = sext i16 %203 to i64
  %205 = icmp slt i64 %202, %204
  br i1 %205, label %196, label %206, !llvm.loop !172

206:                                              ; preds = %196
  %207 = trunc i64 %202 to i32
  br label %208

208:                                              ; preds = %206, %188
  %209 = phi i32 [ 0, %188 ], [ %207, %206 ]
  %210 = sitofp i32 %209 to float
  %211 = fadd float %210, 2.000000e+00
  %212 = fdiv float 1.000000e+00, %211
  tail call fastcc void @VertDataMulN(ptr noundef %7, float noundef %212, ptr noundef nonnull %0) #25
  %213 = load ptr, ptr %181, align 8, !tbaa !121
  %214 = tail call fastcc ptr @_vert_getCo(ptr noundef %213, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef %9, ptr noundef nonnull %214, ptr noundef nonnull %0) #25
  %215 = load ptr, ptr %184, align 8, !tbaa !122
  %216 = tail call fastcc ptr @_vert_getCo(ptr noundef %215, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef %9, ptr noundef nonnull %216, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef 5.000000e-01, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %175, ptr noundef %7, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %9, ptr noundef %7, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef %176, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %175, ptr noundef %9, ptr noundef nonnull %0) #25
  br label %217

217:                                              ; preds = %208, %185
  %218 = add nuw nsw i64 %172, 1
  %219 = icmp eq i64 %218, %138
  br i1 %219, label %165, label %171, !llvm.loop !173

220:                                              ; preds = %168, %394
  %221 = phi i64 [ 0, %168 ], [ %395, %394 ]
  %222 = getelementptr inbounds ptr, ptr %16, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !41
  %224 = tail call fastcc ptr @_vert_getCo(ptr noundef %223, i32 noundef 0, i32 noundef %5) #25
  %225 = tail call fastcc ptr @_vert_getCo(ptr noundef %223, i32 noundef 1, i32 noundef %5) #25
  %226 = tail call fastcc i32 @VERT_seam(ptr noundef %223) #25, !range !129
  %227 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 2
  %228 = load i16, ptr %227, align 8, !tbaa !113
  %229 = sext i16 %228 to i32
  %230 = icmp sgt i16 %228, 0
  br i1 %230, label %231, label %265

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8, !tbaa !95
  %234 = icmp eq i32 %226, 0
  %235 = zext nneg i32 %229 to i64
  br label %236

236:                                              ; preds = %231, %248
  %237 = phi i64 [ 0, %231 ], [ %256, %248 ]
  %238 = phi i32 [ 0, %231 ], [ %255, %248 ]
  %239 = phi i32 [ 1, %231 ], [ %253, %248 ]
  %240 = phi float [ 0.000000e+00, %231 ], [ %252, %248 ]
  %241 = phi i32 [ 0, %231 ], [ %249, %248 ]
  %242 = getelementptr inbounds ptr, ptr %233, i64 %237
  %243 = load ptr, ptr %242, align 8, !tbaa !41
  %244 = tail call fastcc float @EDGE_getSharpness(ptr noundef %243, i32 noundef 0) #25
  br i1 %234, label %248, label %245

245:                                              ; preds = %236
  %246 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %243) #25, !range !129
  %247 = add nsw i32 %246, %241
  br label %248

248:                                              ; preds = %245, %236
  %249 = phi i32 [ %241, %236 ], [ %247, %245 ]
  %250 = fcmp une float %244, 0.000000e+00
  %251 = select i1 %250, float %244, float -0.000000e+00
  %252 = fadd float %240, %251
  %253 = select i1 %250, i32 %239, i32 0
  %254 = zext i1 %250 to i32
  %255 = add nuw nsw i32 %238, %254
  %256 = add nuw nsw i64 %237, 1
  %257 = icmp eq i64 %256, %235
  br i1 %257, label %258, label %236, !llvm.loop !174

258:                                              ; preds = %248
  %259 = icmp eq i32 %255, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %258
  %261 = sitofp i32 %255 to float
  %262 = fdiv float %252, %261
  %263 = fcmp ogt float %262, 1.000000e+00
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %220, %260, %264, %258
  %266 = phi i32 [ %255, %264 ], [ %255, %260 ], [ 0, %258 ], [ 0, %220 ]
  %267 = phi i32 [ %253, %264 ], [ %253, %260 ], [ %253, %258 ], [ 1, %220 ]
  %268 = phi i32 [ %249, %264 ], [ %249, %260 ], [ %249, %258 ], [ 0, %220 ]
  %269 = phi float [ 1.000000e+00, %264 ], [ %262, %260 ], [ %252, %258 ], [ 0.000000e+00, %220 ]
  %270 = icmp sgt i32 %268, 1
  %271 = icmp eq i32 %268, %229
  %272 = and i1 %270, %271
  %273 = icmp eq i16 %228, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %265
  %275 = load i32, ptr %169, align 4, !tbaa !175
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %274, %265
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %225, ptr noundef nonnull %224, ptr noundef nonnull %0) #25
  br label %354

278:                                              ; preds = %274
  %279 = tail call fastcc i32 @_vert_isBoundary(ptr noundef nonnull %223) #25, !range !129
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %310, label %281

281:                                              ; preds = %278
  tail call fastcc void @VertDataZero(ptr noundef %9, ptr noundef nonnull %0) #25
  %282 = load i16, ptr %227, align 8, !tbaa !113
  %283 = icmp sgt i16 %282, 0
  br i1 %283, label %284, label %306

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 6
  br label %286

286:                                              ; preds = %284, %300
  %287 = phi i16 [ %282, %284 ], [ %301, %300 ]
  %288 = phi i64 [ 0, %284 ], [ %303, %300 ]
  %289 = phi i32 [ 0, %284 ], [ %302, %300 ]
  %290 = load ptr, ptr %285, align 8, !tbaa !95
  %291 = getelementptr inbounds ptr, ptr %290, i64 %288
  %292 = load ptr, ptr %291, align 8, !tbaa !41
  %293 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %292) #25, !range !129
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %286
  %296 = tail call fastcc ptr @_edge_getOtherVert(ptr noundef %292, ptr noundef nonnull %223) #25
  %297 = tail call fastcc ptr @_vert_getCo(ptr noundef %296, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef %9, ptr noundef nonnull %297, ptr noundef nonnull %0) #25
  %298 = add nsw i32 %289, 1
  %299 = load i16, ptr %227, align 8, !tbaa !113
  br label %300

300:                                              ; preds = %295, %286
  %301 = phi i16 [ %299, %295 ], [ %287, %286 ]
  %302 = phi i32 [ %298, %295 ], [ %289, %286 ]
  %303 = add nuw nsw i64 %288, 1
  %304 = sext i16 %301 to i64
  %305 = icmp slt i64 %303, %304
  br i1 %305, label %286, label %306, !llvm.loop !176

306:                                              ; preds = %300, %281
  %307 = phi i32 [ 0, %281 ], [ %302, %300 ]
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %225, ptr noundef nonnull %224, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %225, float noundef 7.500000e-01, ptr noundef nonnull %0) #25
  %308 = sitofp i32 %307 to float
  %309 = fdiv float 2.500000e-01, %308
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef %309, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %225, ptr noundef %9, ptr noundef nonnull %0) #25
  br label %354

310:                                              ; preds = %278
  tail call fastcc void @VertDataZero(ptr noundef %7, ptr noundef nonnull %0) #25
  %311 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 3
  %312 = load i16, ptr %311, align 2, !tbaa !112
  %313 = icmp sgt i16 %312, 0
  br i1 %313, label %314, label %328

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 7
  br label %316

316:                                              ; preds = %314, %316
  %317 = phi i64 [ 0, %314 ], [ %322, %316 ]
  %318 = load ptr, ptr %315, align 8, !tbaa !97
  %319 = getelementptr inbounds ptr, ptr %318, i64 %317
  %320 = load ptr, ptr %319, align 8, !tbaa !41
  %321 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %320) #25
  tail call fastcc void @VertDataAdd(ptr noundef %7, ptr noundef nonnull %321, ptr noundef nonnull %0) #25
  %322 = add nuw nsw i64 %317, 1
  %323 = load i16, ptr %311, align 2, !tbaa !112
  %324 = sext i16 %323 to i64
  %325 = icmp slt i64 %322, %324
  br i1 %325, label %316, label %326, !llvm.loop !177

326:                                              ; preds = %316
  %327 = trunc i64 %322 to i32
  br label %328

328:                                              ; preds = %326, %310
  %329 = phi i32 [ 0, %310 ], [ %327, %326 ]
  %330 = sitofp i32 %329 to float
  %331 = fdiv float 1.000000e+00, %330
  tail call fastcc void @VertDataMulN(ptr noundef %7, float noundef %331, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataZero(ptr noundef %9, ptr noundef nonnull %0) #25
  %332 = load i16, ptr %227, align 8, !tbaa !113
  %333 = icmp sgt i16 %332, 0
  br i1 %333, label %334, label %349

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 6
  br label %336

336:                                              ; preds = %334, %336
  %337 = phi i64 [ 0, %334 ], [ %343, %336 ]
  %338 = load ptr, ptr %335, align 8, !tbaa !95
  %339 = getelementptr inbounds ptr, ptr %338, i64 %337
  %340 = load ptr, ptr %339, align 8, !tbaa !41
  %341 = tail call fastcc ptr @_edge_getOtherVert(ptr noundef %340, ptr noundef nonnull %223) #25
  %342 = tail call fastcc ptr @_vert_getCo(ptr noundef %341, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef %9, ptr noundef nonnull %342, ptr noundef nonnull %0) #25
  %343 = add nuw nsw i64 %337, 1
  %344 = load i16, ptr %227, align 8, !tbaa !113
  %345 = sext i16 %344 to i64
  %346 = icmp slt i64 %343, %345
  br i1 %346, label %336, label %347, !llvm.loop !178

347:                                              ; preds = %336
  %348 = trunc i64 %343 to i32
  br label %349

349:                                              ; preds = %347, %328
  %350 = phi i32 [ 0, %328 ], [ %348, %347 ]
  %351 = sitofp i32 %350 to float
  %352 = fdiv float 1.000000e+00, %351
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef %352, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %225, ptr noundef nonnull %224, ptr noundef nonnull %0) #25
  %353 = fadd float %351, -2.000000e+00
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %225, float noundef %353, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %225, ptr noundef %7, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %225, ptr noundef %9, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %225, float noundef %352, ptr noundef nonnull %0) #25
  br label %354

354:                                              ; preds = %306, %349, %277
  %355 = icmp sgt i32 %266, 1
  %356 = icmp ne i32 %226, 0
  %357 = select i1 %272, i1 %356, i1 false
  %358 = select i1 %355, i1 true, i1 %357
  br i1 %358, label %359, label %394

359:                                              ; preds = %354
  tail call fastcc void @VertDataZero(ptr noundef %7, ptr noundef nonnull %0) #25
  %360 = select i1 %357, float 1.000000e+00, float %269
  %361 = select i1 %357, i32 %268, i32 %266
  %362 = load i16, ptr %227, align 8, !tbaa !113
  %363 = icmp sgt i16 %362, 0
  br i1 %363, label %364, label %385

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 6
  br label %366

366:                                              ; preds = %364, %380
  %367 = phi i64 [ 0, %364 ], [ %381, %380 ]
  %368 = load ptr, ptr %365, align 8, !tbaa !95
  %369 = getelementptr inbounds ptr, ptr %368, i64 %367
  %370 = load ptr, ptr %369, align 8, !tbaa !41
  br i1 %357, label %371, label %374

371:                                              ; preds = %366
  %372 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %370) #25, !range !129
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %380, label %377

374:                                              ; preds = %366
  %375 = tail call fastcc float @EDGE_getSharpness(ptr noundef %370, i32 noundef 0) #25
  %376 = fcmp une float %375, 0.000000e+00
  br i1 %376, label %377, label %380

377:                                              ; preds = %374, %371
  %378 = tail call fastcc ptr @_edge_getOtherVert(ptr noundef %370, ptr noundef nonnull %223) #25
  %379 = tail call fastcc ptr @_vert_getCo(ptr noundef %378, i32 noundef 0, i32 noundef %5) #25
  tail call fastcc void @VertDataAdd(ptr noundef %7, ptr noundef nonnull %379, ptr noundef nonnull %0) #25
  br label %380

380:                                              ; preds = %377, %374, %371
  %381 = add nuw nsw i64 %367, 1
  %382 = load i16, ptr %227, align 8, !tbaa !113
  %383 = sext i16 %382 to i64
  %384 = icmp slt i64 %381, %383
  br i1 %384, label %366, label %385, !llvm.loop !179

385:                                              ; preds = %380, %359
  %386 = sitofp i32 %361 to float
  %387 = fdiv float 1.000000e+00, %386
  tail call fastcc void @VertDataMulN(ptr noundef %7, float noundef %387, ptr noundef nonnull %0) #25
  %388 = icmp ne i32 %361, 2
  %389 = icmp ne i32 %267, 0
  %390 = or i1 %357, %388
  %391 = select i1 %390, i1 true, i1 %389
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  tail call fastcc void @VertDataCopy(ptr noundef %9, ptr noundef nonnull %224, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %9, ptr noundef %7, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef %360, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %0) #25
  br label %393

393:                                              ; preds = %385, %392
  tail call fastcc void @VertDataCopy(ptr noundef %9, ptr noundef nonnull %224, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef 7.500000e-01, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %7, float noundef 2.500000e-01, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %9, ptr noundef %7, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %9, ptr noundef nonnull %225, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %9, float noundef %360, ptr noundef nonnull %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %225, ptr noundef %9, ptr noundef nonnull %0) #25
  br label %394

394:                                              ; preds = %354, %393
  %395 = add nuw nsw i64 %221, 1
  %396 = icmp eq i64 %395, %170
  br i1 %396, label %397, label %220, !llvm.loop !180

397:                                              ; preds = %394, %165
  %398 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %399 = load i32, ptr %398, align 4, !tbaa !103
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %451, label %401

401:                                              ; preds = %397
  br i1 %167, label %402, label %407

402:                                              ; preds = %401
  %403 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %404 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %405 = zext nneg i32 %128 to i64
  %406 = load i32, ptr %403, align 8, !tbaa !60
  br label %414

407:                                              ; preds = %414, %401
  %408 = phi i1 [ false, %401 ], [ %167, %414 ]
  br i1 %166, label %409, label %424

409:                                              ; preds = %407
  %410 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %411 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %412 = zext nneg i32 %127 to i64
  %413 = load i32, ptr %410, align 8, !tbaa !60
  br label %431

414:                                              ; preds = %402, %414
  %415 = phi i64 [ 0, %402 ], [ %422, %414 ]
  %416 = getelementptr inbounds ptr, ptr %16, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !41
  %418 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef nonnull %0, ptr noundef %417) #25
  %419 = load i32, ptr %404, align 8, !tbaa !104
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %418, i64 %420
  store i32 %406, ptr %421, align 4, !tbaa !51
  %422 = add nuw nsw i64 %415, 1
  %423 = icmp eq i64 %422, %405
  br i1 %423, label %407, label %414, !llvm.loop !181

424:                                              ; preds = %431, %407
  %425 = phi i1 [ false, %407 ], [ %166, %431 ]
  br i1 %135, label %426, label %451

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %428 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %429 = zext nneg i32 %126 to i64
  %430 = load i32, ptr %427, align 8, !tbaa !60
  br label %441

431:                                              ; preds = %409, %431
  %432 = phi i64 [ 0, %409 ], [ %439, %431 ]
  %433 = getelementptr inbounds ptr, ptr %24, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !41
  %435 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef nonnull %0, ptr noundef %434) #25
  %436 = load i32, ptr %411, align 4, !tbaa !105
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, ptr %435, i64 %437
  store i32 %413, ptr %438, align 4, !tbaa !51
  %439 = add nuw nsw i64 %432, 1
  %440 = icmp eq i64 %439, %412
  br i1 %440, label %424, label %431, !llvm.loop !182

441:                                              ; preds = %426, %441
  %442 = phi i64 [ 0, %426 ], [ %449, %441 ]
  %443 = getelementptr inbounds ptr, ptr %32, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !41
  %445 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef nonnull %0, ptr noundef %444) #25
  %446 = load i32, ptr %428, align 8, !tbaa !106
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, ptr %445, i64 %447
  store i32 %430, ptr %448, align 4, !tbaa !51
  %449 = add nuw nsw i64 %442, 1
  %450 = icmp eq i64 %449, %429
  br i1 %450, label %451, label %441, !llvm.loop !183

451:                                              ; preds = %441, %424, %397
  %452 = phi i1 [ %425, %424 ], [ %166, %397 ], [ %425, %441 ]
  %453 = phi i1 [ false, %424 ], [ %135, %397 ], [ %135, %441 ]
  %454 = phi i1 [ %408, %424 ], [ %167, %397 ], [ %408, %441 ]
  br i1 %452, label %455, label %457

455:                                              ; preds = %451
  %456 = zext nneg i32 %127 to i64
  br label %461

457:                                              ; preds = %461, %451
  %458 = phi i1 [ false, %451 ], [ %452, %461 ]
  br i1 %453, label %459, label %475

459:                                              ; preds = %457
  %460 = zext nneg i32 %126 to i64
  br label %482

461:                                              ; preds = %455, %461
  %462 = phi i64 [ 0, %455 ], [ %473, %461 ]
  %463 = getelementptr inbounds ptr, ptr %24, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !41
  %465 = tail call fastcc ptr @_edge_getCo(ptr noundef %464, i32 noundef 1, i32 noundef 0, i32 noundef %5) #25
  %466 = getelementptr inbounds %struct.CCGEdge, ptr %464, i64 0, i32 5
  %467 = load ptr, ptr %466, align 8, !tbaa !121
  %468 = tail call fastcc ptr @_vert_getCo(ptr noundef %467, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %465, ptr noundef nonnull %468, ptr noundef nonnull %0) #25
  %469 = tail call fastcc ptr @_edge_getCo(ptr noundef %464, i32 noundef 1, i32 noundef 2, i32 noundef %5) #25
  %470 = getelementptr inbounds %struct.CCGEdge, ptr %464, i64 0, i32 6
  %471 = load ptr, ptr %470, align 8, !tbaa !122
  %472 = tail call fastcc ptr @_vert_getCo(ptr noundef %471, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %469, ptr noundef nonnull %472, ptr noundef nonnull %0) #25
  %473 = add nuw nsw i64 %462, 1
  %474 = icmp eq i64 %473, %456
  br i1 %474, label %457, label %461, !llvm.loop !184

475:                                              ; preds = %528, %1, %457
  %476 = phi i1 [ %458, %457 ], [ false, %1 ], [ %458, %528 ]
  %477 = phi i32 [ %126, %457 ], [ 0, %1 ], [ %126, %528 ]
  %478 = phi i32 [ %127, %457 ], [ 0, %1 ], [ %127, %528 ]
  %479 = phi i32 [ %128, %457 ], [ 0, %1 ], [ %128, %528 ]
  %480 = phi i1 [ %454, %457 ], [ false, %1 ], [ %454, %528 ]
  %481 = icmp sgt i32 %3, 1
  br i1 %481, label %531, label %535

482:                                              ; preds = %459, %528
  %483 = phi i64 [ 0, %459 ], [ %529, %528 ]
  %484 = getelementptr inbounds ptr, ptr %32, i64 %483
  %485 = load ptr, ptr %484, align 8, !tbaa !41
  %486 = getelementptr inbounds %struct.CCGFace, ptr %485, i64 0, i32 2
  %487 = load i16, ptr %486, align 8, !tbaa !127
  %488 = icmp sgt i16 %487, 0
  br i1 %488, label %489, label %528

489:                                              ; preds = %482, %489
  %490 = phi i64 [ %524, %489 ], [ 0, %482 ]
  %491 = phi i16 [ %525, %489 ], [ %487, %482 ]
  %492 = sext i16 %491 to i32
  %493 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %485) #25
  %494 = getelementptr inbounds ptr, ptr %493, i64 %490
  %495 = load ptr, ptr %494, align 8, !tbaa !41
  %496 = trunc i64 %490 to i32
  %497 = add i32 %496, -1
  %498 = add i32 %497, %492
  %499 = srem i32 %498, %492
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds ptr, ptr %493, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !41
  %503 = trunc i64 %490 to i32
  %504 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %5) #25
  %505 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %485) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %504, ptr noundef nonnull %505, ptr noundef nonnull %0) #25
  %506 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 0, i32 noundef %3, i32 noundef %5) #25
  %507 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %485) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %506, ptr noundef nonnull %507, ptr noundef nonnull %0) #25
  %508 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 1, i32 noundef 1, i32 noundef %3, i32 noundef %5) #25
  %509 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %485) #25
  %510 = getelementptr inbounds ptr, ptr %509, i64 %490
  %511 = load ptr, ptr %510, align 8, !tbaa !41
  %512 = tail call fastcc ptr @_vert_getCo(ptr noundef %511, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %508, ptr noundef nonnull %512, ptr noundef nonnull %0) #25
  %513 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 1, i32 noundef %3, i32 noundef %5) #25
  %514 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %485) #25
  %515 = getelementptr inbounds ptr, ptr %514, i64 %490
  %516 = load ptr, ptr %515, align 8, !tbaa !41
  %517 = tail call fastcc ptr @_edge_getCo(ptr noundef %516, i32 noundef 1, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %513, ptr noundef nonnull %517, ptr noundef nonnull %0) #25
  %518 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 1, i32 noundef 0, i32 noundef %3, i32 noundef %5) #25
  %519 = load ptr, ptr %510, align 8, !tbaa !41
  %520 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %495, ptr noundef %519, i32 noundef 1, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %518, ptr noundef nonnull %520, ptr noundef nonnull %0) #25
  %521 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %485, i32 noundef 1, i32 noundef %503, i32 noundef 0, i32 noundef 1, i32 noundef %3, i32 noundef %5) #25
  %522 = load ptr, ptr %510, align 8, !tbaa !41
  %523 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %502, ptr noundef %522, i32 noundef 1, i32 noundef 1, i32 noundef %5) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %521, ptr noundef nonnull %523, ptr noundef nonnull %0) #25
  %524 = add nuw nsw i64 %490, 1
  %525 = load i16, ptr %486, align 8, !tbaa !127
  %526 = sext i16 %525 to i64
  %527 = icmp slt i64 %524, %526
  br i1 %527, label %489, label %528, !llvm.loop !185

528:                                              ; preds = %489, %482
  %529 = add nuw nsw i64 %483, 1
  %530 = icmp eq i64 %529, %460
  br i1 %530, label %475, label %482, !llvm.loop !186

531:                                              ; preds = %475, %531
  %532 = phi i32 [ %533, %531 ], [ 1, %475 ]
  tail call fastcc void @ccgSubSurf__calcSubdivLevel(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %24, ptr noundef %32, i32 noundef %479, i32 noundef %478, i32 noundef %477, i32 noundef %532) #25
  %533 = add nuw nsw i32 %532, 1
  %534 = icmp eq i32 %533, %3
  br i1 %534, label %535, label %531, !llvm.loop !187

535:                                              ; preds = %531, %475
  %536 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  %537 = load i32, ptr %536, align 8, !tbaa !53
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %540, label %539

539:                                              ; preds = %535
  tail call fastcc void @ccgSubSurf__calcVertNormals(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %24, ptr noundef %32, i32 noundef %479, i32 noundef %478, i32 noundef %477) #25
  br label %540

540:                                              ; preds = %539, %535
  br i1 %480, label %541, label %543

541:                                              ; preds = %540
  %542 = zext nneg i32 %479 to i64
  br label %546

543:                                              ; preds = %546, %540
  br i1 %476, label %544, label %560

544:                                              ; preds = %543
  %545 = zext nneg i32 %478 to i64
  br label %553

546:                                              ; preds = %541, %546
  %547 = phi i64 [ 0, %541 ], [ %551, %546 ]
  %548 = getelementptr inbounds ptr, ptr %16, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !41
  %550 = getelementptr inbounds %struct.CCGVert, ptr %549, i64 0, i32 4
  store i16 0, ptr %550, align 4, !tbaa !123
  %551 = add nuw nsw i64 %547, 1
  %552 = icmp eq i64 %551, %542
  br i1 %552, label %543, label %546, !llvm.loop !188

553:                                              ; preds = %544, %553
  %554 = phi i64 [ 0, %544 ], [ %558, %553 ]
  %555 = getelementptr inbounds ptr, ptr %24, i64 %554
  %556 = load ptr, ptr %555, align 8, !tbaa !41
  %557 = getelementptr inbounds %struct.CCGEdge, ptr %556, i64 0, i32 3
  store i16 0, ptr %557, align 2, !tbaa !145
  %558 = add nuw nsw i64 %554, 1
  %559 = icmp eq i64 %558, %545
  br i1 %559, label %560, label %553, !llvm.loop !189

560:                                              ; preds = %553, %543
  %561 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %561(ptr noundef %32) #26
  %562 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %562(ptr noundef %24) #26
  %563 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %563(ptr noundef %16) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_updateFromFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %5, align 8, !tbaa !41
  store i32 %3, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i32 %11, i32 %1
  %14 = tail call fastcc i32 @ccg_gridsize(i32 noundef %13) #25
  %15 = add nsw i32 %14, -1
  call fastcc void @ccgSubSurf__allFaces(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %16 = load i32, ptr %6, align 4, !tbaa !51
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %4
  %19 = load ptr, ptr %5, align 8, !tbaa !41
  %20 = icmp sgt i32 %14, 0
  %21 = zext nneg i32 %16 to i64
  br label %22

22:                                               ; preds = %18, %74
  %23 = phi i64 [ 0, %18 ], [ %75, %74 ]
  %24 = getelementptr inbounds ptr, ptr %19, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.CCGFace, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !127
  %28 = icmp sgt i16 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %22, %69
  %30 = phi i64 [ %70, %69 ], [ 0, %22 ]
  %31 = phi i16 [ %71, %69 ], [ %27, %22 ]
  %32 = sext i16 %31 to i32
  %33 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %25) #25
  %34 = getelementptr inbounds ptr, ptr %33, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = trunc i64 %30 to i32
  %37 = add i32 %36, -1
  %38 = add i32 %37, %32
  %39 = srem i32 %38, %32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %33, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %25) #25
  %44 = trunc i64 %30 to i32
  %45 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %25, i32 noundef %13, i32 noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %43, ptr noundef nonnull %45, ptr noundef %0) #25
  %46 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %25) #25
  %47 = getelementptr inbounds ptr, ptr %46, i64 %30
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = tail call fastcc ptr @_vert_getCo(ptr noundef %48, i32 noundef %13, i32 noundef %9) #25
  %50 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %25, i32 noundef %13, i32 noundef %44, i32 noundef %15, i32 noundef %15, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef %0) #25
  br i1 %20, label %52, label %69

51:                                               ; preds = %52
  br i1 %20, label %58, label %69

52:                                               ; preds = %29, %52
  %53 = phi i32 [ %56, %52 ], [ 0, %29 ]
  %54 = tail call fastcc ptr @_face_getIECo(ptr noundef %25, i32 noundef %13, i32 noundef %44, i32 noundef %53, i32 noundef %11, i32 noundef %9) #25
  %55 = tail call fastcc ptr @_face_getIFCo(ptr noundef %25, i32 noundef %13, i32 noundef %44, i32 noundef %53, i32 noundef 0, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef %0) #25
  %56 = add nuw nsw i32 %53, 1
  %57 = icmp eq i32 %56, %14
  br i1 %57, label %51, label %52, !llvm.loop !190

58:                                               ; preds = %51, %58
  %59 = phi i32 [ %67, %58 ], [ 0, %51 ]
  %60 = sub nsw i32 %15, %59
  %61 = load ptr, ptr %47, align 8, !tbaa !41
  %62 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %35, ptr noundef %61, i32 noundef %13, i32 noundef %60, i32 noundef %9) #25
  %63 = tail call fastcc ptr @_face_getIFCo(ptr noundef %25, i32 noundef %13, i32 noundef %44, i32 noundef %15, i32 noundef %59, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %62, ptr noundef nonnull %63, ptr noundef %0) #25
  %64 = load ptr, ptr %47, align 8, !tbaa !41
  %65 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %42, ptr noundef %64, i32 noundef %13, i32 noundef %60, i32 noundef %9) #25
  %66 = tail call fastcc ptr @_face_getIFCo(ptr noundef %25, i32 noundef %13, i32 noundef %44, i32 noundef %59, i32 noundef %15, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef %0) #25
  %67 = add nuw nsw i32 %59, 1
  %68 = icmp eq i32 %67, %14
  br i1 %68, label %69, label %58, !llvm.loop !191

69:                                               ; preds = %58, %29, %51
  %70 = add nuw nsw i64 %30, 1
  %71 = load i16, ptr %26, align 8, !tbaa !127
  %72 = sext i16 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %29, label %74, !llvm.loop !192

74:                                               ; preds = %69, %22
  %75 = add nuw nsw i64 %23, 1
  %76 = icmp eq i64 %75, %21
  br i1 %76, label %77, label %22, !llvm.loop !193

77:                                               ; preds = %74, %4
  %78 = load i32, ptr %7, align 4, !tbaa !51
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %82 = load ptr, ptr %5, align 8, !tbaa !41
  tail call void %81(ptr noundef %82) #26
  br label %83

83:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgSubSurf__allFaces(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !PGOFuncName !194 {
  %5 = load ptr, ptr %1, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %8(i64 noundef %14, ptr noundef nonnull @.str.5) #26
  %16 = load ptr, ptr %9, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct._EHash, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %7, %40
  %21 = phi ptr [ %41, %40 ], [ %16, %7 ]
  %22 = phi i64 [ %43, %40 ], [ 0, %7 ]
  %23 = phi i32 [ %42, %40 ], [ 0, %7 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !72
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = sext i32 %23 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %32 = phi ptr [ %26, %28 ], [ %35, %30 ]
  %33 = add i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %15, i64 %31
  store ptr %32, ptr %34, align 8, !tbaa !41
  %35 = load ptr, ptr %32, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %30, !llvm.loop !195

37:                                               ; preds = %30
  %38 = trunc i64 %33 to i32
  %39 = load ptr, ptr %9, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %37, %20
  %41 = phi ptr [ %21, %20 ], [ %39, %37 ]
  %42 = phi i32 [ %23, %20 ], [ %38, %37 ]
  %43 = add nuw nsw i64 %22, 1
  %44 = getelementptr inbounds %struct._EHash, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !70
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %20, label %48, !llvm.loop !196

48:                                               ; preds = %40, %7
  %49 = phi i32 [ 0, %7 ], [ %42, %40 ]
  store ptr %15, ptr %1, align 8, !tbaa !41
  store i32 %49, ptr %2, align 4, !tbaa !51
  br label %50

50:                                               ; preds = %4, %48
  %51 = phi i32 [ 1, %48 ], [ 0, %4 ]
  store i32 %51, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @FACE_getCenterData(ptr noundef readonly %0) unnamed_addr #13 !PGOFuncName !197 {
  %2 = tail call fastcc ptr @FACE_getEdges(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_face_getIFCo(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #13 !PGOFuncName !198 {
  %8 = tail call fastcc i32 @ccg_gridsize(i32 noundef %5) #25
  %9 = tail call fastcc i32 @ccg_spacing(i32 noundef %5, i32 noundef %1) #25
  %10 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %0) #25
  %11 = add i32 %8, 1
  %12 = mul i32 %8, %2
  %13 = mul i32 %12, %11
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %14, %6
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = mul nsw i32 %8, %4
  %19 = add nsw i32 %18, %3
  %20 = mul nsw i32 %19, %9
  %21 = add nsw i32 %20, %8
  %22 = mul nsw i32 %21, %6
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %17, i64 %23
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_face_getIECo(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #13 !PGOFuncName !199 {
  %7 = tail call fastcc i32 @ccg_gridsize(i32 noundef %4) #25
  %8 = tail call fastcc i32 @ccg_spacing(i32 noundef %4, i32 noundef %1) #25
  %9 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %0) #25
  %10 = add i32 %7, 1
  %11 = mul i32 %7, %2
  %12 = mul i32 %11, %10
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %13, %5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %9, i64 %15
  %17 = mul nsw i32 %5, %3
  %18 = mul nsw i32 %17, %8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_edge_getCoVert(ptr noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #13 !PGOFuncName !200 {
  %6 = tail call fastcc i32 @ccg_edgebase(i32 noundef %2) #25
  %7 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = icmp eq ptr %8, %1
  %10 = tail call fastcc ptr @EDGE_getLevelData(ptr noundef nonnull %0) #25
  %11 = shl nuw i32 1, %2
  %12 = sub i32 %11, %3
  %13 = select i1 %9, i32 %3, i32 %12
  %14 = add i32 %6, %13
  %15 = mul nsw i32 %14, %4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_updateToFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %5, align 8, !tbaa !41
  store i32 %3, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i32 %11, i32 %1
  %14 = tail call fastcc i32 @ccg_gridsize(i32 noundef %13) #25
  %15 = add i32 %14, -1
  call fastcc void @ccgSubSurf__allFaces(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %16 = load i32, ptr %6, align 4, !tbaa !51
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %4
  %19 = load ptr, ptr %5, align 8, !tbaa !41
  %20 = icmp sgt i32 %14, 0
  %21 = icmp sgt i32 %14, 2
  %22 = zext nneg i32 %16 to i64
  br label %23

23:                                               ; preds = %18, %85
  %24 = phi i64 [ 0, %18 ], [ %86, %85 ]
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !127
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %85

30:                                               ; preds = %23, %72
  %31 = phi i64 [ %81, %72 ], [ 0, %23 ]
  %32 = phi i16 [ %82, %72 ], [ %28, %23 ]
  %33 = sext i16 %32 to i32
  %34 = trunc i64 %31 to i32
  %35 = add i32 %34, -1
  %36 = add i32 %35, %33
  %37 = srem i32 %36, %33
  %38 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %26) #25
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  br i1 %20, label %44, label %49

44:                                               ; preds = %30
  %45 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %26) #25
  %46 = getelementptr inbounds ptr, ptr %45, i64 %31
  %47 = trunc i64 %31 to i32
  br label %53

48:                                               ; preds = %53
  br i1 %21, label %51, label %49

49:                                               ; preds = %30, %48
  %50 = trunc i64 %31 to i32
  br label %72

51:                                               ; preds = %48
  %52 = trunc i64 %31 to i32
  br label %64

53:                                               ; preds = %44, %53
  %54 = phi i32 [ 0, %44 ], [ %62, %53 ]
  %55 = sub nsw i32 %15, %54
  %56 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %47, i32 noundef %15, i32 noundef %54, i32 noundef %11, i32 noundef %9) #25
  %57 = load ptr, ptr %46, align 8, !tbaa !41
  %58 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %40, ptr noundef %57, i32 noundef %13, i32 noundef %55, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %56, ptr noundef nonnull %58, ptr noundef %0) #25
  %59 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %47, i32 noundef %54, i32 noundef %15, i32 noundef %11, i32 noundef %9) #25
  %60 = load ptr, ptr %46, align 8, !tbaa !41
  %61 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %43, ptr noundef %60, i32 noundef %13, i32 noundef %55, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef %0) #25
  %62 = add nuw nsw i32 %54, 1
  %63 = icmp eq i32 %62, %14
  br i1 %63, label %48, label %53, !llvm.loop !201

64:                                               ; preds = %51, %64
  %65 = phi i32 [ %70, %64 ], [ 1, %51 ]
  %66 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %52, i32 noundef 0, i32 noundef %65, i32 noundef %11, i32 noundef %9) #25
  %67 = tail call fastcc ptr @_face_getIECo(ptr noundef %26, i32 noundef %13, i32 noundef %37, i32 noundef %65, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef %0) #25
  %68 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %52, i32 noundef %65, i32 noundef 0, i32 noundef %11, i32 noundef %9) #25
  %69 = tail call fastcc ptr @_face_getIECo(ptr noundef %26, i32 noundef %13, i32 noundef %52, i32 noundef %65, i32 noundef %11, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef %0) #25
  %70 = add nuw nsw i32 %65, 1
  %71 = icmp eq i32 %70, %15
  br i1 %71, label %72, label %64, !llvm.loop !202

72:                                               ; preds = %64, %49
  %73 = phi i32 [ %50, %49 ], [ %52, %64 ]
  %74 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %73, i32 noundef 0, i32 noundef 0, i32 noundef %11, i32 noundef %9) #25
  %75 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %26) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef %0) #25
  %76 = tail call fastcc ptr @_face_getIFCo(ptr noundef %26, i32 noundef %13, i32 noundef %73, i32 noundef %15, i32 noundef %15, i32 noundef %11, i32 noundef %9) #25
  %77 = tail call fastcc ptr @FACE_getVerts(ptr noundef %26) #25
  %78 = getelementptr inbounds ptr, ptr %77, i64 %31
  %79 = load ptr, ptr %78, align 8, !tbaa !41
  %80 = tail call fastcc ptr @_vert_getCo(ptr noundef %79, i32 noundef %13, i32 noundef %9) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %76, ptr noundef nonnull %80, ptr noundef %0) #25
  %81 = add nuw nsw i64 %31, 1
  %82 = load i16, ptr %27, align 8, !tbaa !127
  %83 = sext i16 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %30, label %85, !llvm.loop !203

85:                                               ; preds = %72, %23
  %86 = add nuw nsw i64 %24, 1
  %87 = icmp eq i64 %86, %22
  br i1 %87, label %88, label %23, !llvm.loop !204

88:                                               ; preds = %85, %4
  %89 = load i32, ptr %7, align 4, !tbaa !51
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %93 = load ptr, ptr %5, align 8, !tbaa !41
  tail call void %92(ptr noundef %93) #26
  br label %94

94:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_stitchFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %2, ptr %5, align 8, !tbaa !41
  store i32 %3, ptr %6, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i32 %1, 0
  %17 = select i1 %16, i32 %15, i32 %1
  %18 = tail call fastcc i32 @ccg_gridsize(i32 noundef %17) #25
  %19 = tail call fastcc i32 @ccg_edgesize(i32 noundef %17) #25
  %20 = add i32 %18, -1
  call fastcc void @ccgSubSurf__allFaces(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %11) #25
  %21 = load ptr, ptr %5, align 8, !tbaa !41
  %22 = load i32, ptr %6, align 4, !tbaa !51
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %21, i32 noundef %22, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #25
  %23 = load i32, ptr %9, align 4, !tbaa !51
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load ptr, ptr %7, align 8, !tbaa !41
  %27 = zext nneg i32 %23 to i64
  br label %35

28:                                               ; preds = %44, %4
  %29 = load i32, ptr %10, align 4, !tbaa !51
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load ptr, ptr %8, align 8, !tbaa !41
  %33 = icmp slt i32 %19, 1
  %34 = zext nneg i32 %29 to i64
  br label %54

35:                                               ; preds = %25, %44
  %36 = phi i64 [ 0, %25 ], [ %45, %44 ]
  %37 = getelementptr inbounds ptr, ptr %26, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.CCGVert, ptr %38, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !112
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %38, i32 noundef %17, i32 noundef %13) #25
  tail call fastcc void @VertDataZero(ptr noundef nonnull %43, ptr noundef %0) #25
  br label %44

44:                                               ; preds = %42, %35
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %28, label %35, !llvm.loop !205

47:                                               ; preds = %67, %28
  %48 = icmp sgt i32 %22, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %47
  %50 = icmp sgt i32 %18, 0
  %51 = icmp sgt i32 %18, 2
  %52 = icmp sgt i32 %18, 1
  %53 = zext nneg i32 %22 to i64
  br label %74

54:                                               ; preds = %31, %67
  %55 = phi i64 [ 0, %31 ], [ %68, %67 ]
  %56 = getelementptr inbounds ptr, ptr %32, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  %58 = getelementptr inbounds %struct.CCGEdge, ptr %57, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !118
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %60, i1 true, i1 %33
  br i1 %61, label %67, label %62

62:                                               ; preds = %54, %62
  %63 = phi i32 [ %65, %62 ], [ 0, %54 ]
  %64 = tail call fastcc ptr @_edge_getCo(ptr noundef %57, i32 noundef %17, i32 noundef %63, i32 noundef %13) #25
  tail call fastcc void @VertDataZero(ptr noundef nonnull %64, ptr noundef %0) #25
  %65 = add nuw nsw i32 %63, 1
  %66 = icmp eq i32 %65, %19
  br i1 %66, label %67, label %62, !llvm.loop !206

67:                                               ; preds = %62, %54
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, %34
  br i1 %69, label %47, label %54, !llvm.loop !207

70:                                               ; preds = %172, %47
  br i1 %24, label %71, label %175

71:                                               ; preds = %70
  %72 = load ptr, ptr %7, align 8, !tbaa !41
  %73 = zext nneg i32 %23 to i64
  br label %181

74:                                               ; preds = %49, %172
  %75 = phi i64 [ 0, %49 ], [ %173, %172 ]
  %76 = getelementptr inbounds ptr, ptr %21, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %77) #25
  tail call fastcc void @VertDataZero(ptr noundef nonnull %78, ptr noundef %0) #25
  %79 = getelementptr inbounds %struct.CCGFace, ptr %77, i64 0, i32 2
  %80 = load i16, ptr %79, align 8, !tbaa !127
  %81 = icmp sgt i16 %80, 0
  br i1 %81, label %84, label %172

82:                                               ; preds = %94
  %83 = icmp sgt i16 %95, 0
  br i1 %83, label %99, label %172

84:                                               ; preds = %74, %94
  %85 = phi i16 [ %95, %94 ], [ %80, %74 ]
  %86 = phi i32 [ %96, %94 ], [ 0, %74 ]
  br i1 %50, label %87, label %94

87:                                               ; preds = %84, %87
  %88 = phi i32 [ %90, %87 ], [ 0, %84 ]
  %89 = tail call fastcc ptr @_face_getIECo(ptr noundef %77, i32 noundef %17, i32 noundef %86, i32 noundef %88, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataZero(ptr noundef nonnull %89, ptr noundef %0) #25
  %90 = add nuw nsw i32 %88, 1
  %91 = icmp eq i32 %90, %18
  br i1 %91, label %92, label %87, !llvm.loop !208

92:                                               ; preds = %87
  %93 = load i16, ptr %79, align 8, !tbaa !127
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi i16 [ %93, %92 ], [ %85, %84 ]
  %96 = add nuw nsw i32 %86, 1
  %97 = sext i16 %95 to i32
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %84, label %82, !llvm.loop !209

99:                                               ; preds = %82, %166
  %100 = phi i64 [ %167, %166 ], [ 0, %82 ]
  %101 = phi i32 [ %169, %166 ], [ %97, %82 ]
  %102 = trunc i64 %100 to i32
  %103 = add i32 %102, -1
  %104 = add i32 %103, %101
  %105 = srem i32 %104, %101
  %106 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %77) #25
  %107 = getelementptr inbounds ptr, ptr %106, i64 %100
  %108 = load ptr, ptr %107, align 8, !tbaa !41
  %109 = sext i32 %105 to i64
  %110 = getelementptr inbounds ptr, ptr %106, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !41
  %112 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %77) #25
  %113 = trunc i64 %100 to i32
  %114 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %77, i32 noundef %17, i32 noundef %113, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %112, ptr noundef nonnull %114, ptr noundef %0) #25
  %115 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %77) #25
  %116 = getelementptr inbounds ptr, ptr %115, i64 %100
  %117 = load ptr, ptr %116, align 8, !tbaa !41
  %118 = getelementptr inbounds %struct.CCGVert, ptr %117, i64 0, i32 4
  %119 = load i16, ptr %118, align 4, !tbaa !123
  %120 = and i16 %119, 1
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %99
  %123 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %117, i32 noundef %17, i32 noundef %13) #25
  %124 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %77, i32 noundef %17, i32 noundef %113, i32 noundef %20, i32 noundef %20, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %123, ptr noundef nonnull %124, ptr noundef %0) #25
  br label %125

125:                                              ; preds = %122, %99
  br i1 %51, label %127, label %126

126:                                              ; preds = %127, %125
  br i1 %52, label %135, label %166

127:                                              ; preds = %125, %127
  %128 = phi i32 [ %133, %127 ], [ 1, %125 ]
  %129 = tail call fastcc ptr @_face_getIECo(ptr noundef %77, i32 noundef %17, i32 noundef %113, i32 noundef %128, i32 noundef %15, i32 noundef %13) #25
  %130 = tail call fastcc ptr @_face_getIFCo(ptr noundef %77, i32 noundef %17, i32 noundef %113, i32 noundef %128, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef %0) #25
  %131 = tail call fastcc ptr @_face_getIECo(ptr noundef %77, i32 noundef %17, i32 noundef %105, i32 noundef %128, i32 noundef %15, i32 noundef %13) #25
  %132 = tail call fastcc ptr @_face_getIFCo(ptr noundef %77, i32 noundef %17, i32 noundef %113, i32 noundef 0, i32 noundef %128, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef %0) #25
  %133 = add nuw nsw i32 %128, 1
  %134 = icmp eq i32 %133, %20
  br i1 %134, label %126, label %127, !llvm.loop !210

135:                                              ; preds = %126, %163
  %136 = phi i32 [ %164, %163 ], [ 0, %126 ]
  %137 = sub nsw i32 %20, %136
  %138 = tail call fastcc ptr @FACE_getEdges(ptr noundef %77) #25
  %139 = getelementptr inbounds ptr, ptr %138, i64 %100
  %140 = load ptr, ptr %139, align 8, !tbaa !41
  %141 = getelementptr inbounds %struct.CCGEdge, ptr %140, i64 0, i32 3
  %142 = load i16, ptr %141, align 2, !tbaa !145
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = load ptr, ptr %116, align 8, !tbaa !41
  %147 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %108, ptr noundef %146, i32 noundef %17, i32 noundef %137, i32 noundef %13) #25
  %148 = tail call fastcc ptr @_face_getIFCo(ptr noundef %77, i32 noundef %17, i32 noundef %113, i32 noundef %20, i32 noundef %136, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %147, ptr noundef nonnull %148, ptr noundef %0) #25
  br label %149

149:                                              ; preds = %145, %135
  %150 = tail call fastcc ptr @FACE_getEdges(ptr noundef %77) #25
  %151 = getelementptr inbounds ptr, ptr %150, i64 %109
  %152 = load ptr, ptr %151, align 8, !tbaa !41
  %153 = getelementptr inbounds %struct.CCGEdge, ptr %152, i64 0, i32 3
  %154 = load i16, ptr %153, align 2, !tbaa !145
  %155 = and i16 %154, 1
  %156 = icmp ne i16 %155, 0
  %157 = icmp ne i32 %136, 0
  %158 = and i1 %157, %156
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load ptr, ptr %116, align 8, !tbaa !41
  %161 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %111, ptr noundef %160, i32 noundef %17, i32 noundef %137, i32 noundef %13) #25
  %162 = tail call fastcc ptr @_face_getIFCo(ptr noundef %77, i32 noundef %17, i32 noundef %113, i32 noundef %136, i32 noundef %20, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %161, ptr noundef nonnull %162, ptr noundef %0) #25
  br label %163

163:                                              ; preds = %159, %149
  %164 = add nuw nsw i32 %136, 1
  %165 = icmp eq i32 %164, %20
  br i1 %165, label %166, label %135, !llvm.loop !211

166:                                              ; preds = %163, %126
  %167 = add nuw nsw i64 %100, 1
  %168 = load i16, ptr %79, align 8, !tbaa !127
  %169 = sext i16 %168 to i32
  %170 = sext i16 %168 to i64
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %99, label %172, !llvm.loop !212

172:                                              ; preds = %166, %74, %82
  %173 = add nuw nsw i64 %75, 1
  %174 = icmp eq i64 %173, %53
  br i1 %174, label %70, label %74, !llvm.loop !213

175:                                              ; preds = %192, %70
  br i1 %30, label %176, label %195

176:                                              ; preds = %175
  %177 = load ptr, ptr %8, align 8, !tbaa !41
  %178 = add i32 %19, -1
  %179 = icmp slt i32 %19, 3
  %180 = zext nneg i32 %29 to i64
  br label %200

181:                                              ; preds = %71, %192
  %182 = phi i64 [ 0, %71 ], [ %193, %192 ]
  %183 = getelementptr inbounds ptr, ptr %72, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !41
  %185 = getelementptr inbounds %struct.CCGVert, ptr %184, i64 0, i32 3
  %186 = load i16, ptr %185, align 2, !tbaa !112
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %184, i32 noundef %17, i32 noundef %13) #25
  %190 = sitofp i16 %186 to float
  %191 = fdiv float 1.000000e+00, %190
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %189, float noundef %191, ptr noundef %0) #25
  br label %192

192:                                              ; preds = %188, %181
  %193 = add nuw nsw i64 %182, 1
  %194 = icmp eq i64 %193, %73
  br i1 %194, label %175, label %181, !llvm.loop !214

195:                                              ; preds = %224, %175
  br i1 %48, label %196, label %227

196:                                              ; preds = %195
  %197 = icmp sgt i32 %18, 2
  %198 = icmp sgt i32 %18, 1
  %199 = zext nneg i32 %22 to i64
  br label %231

200:                                              ; preds = %176, %224
  %201 = phi i64 [ 0, %176 ], [ %225, %224 ]
  %202 = getelementptr inbounds ptr, ptr %177, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !41
  %204 = tail call fastcc ptr @_edge_getCo(ptr noundef %203, i32 noundef %17, i32 noundef 0, i32 noundef %13) #25
  %205 = getelementptr inbounds %struct.CCGEdge, ptr %203, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !121
  %207 = tail call fastcc ptr @_vert_getCo(ptr noundef %206, i32 noundef %17, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %204, ptr noundef nonnull %207, ptr noundef %0) #25
  %208 = tail call fastcc ptr @_edge_getCo(ptr noundef %203, i32 noundef %17, i32 noundef %178, i32 noundef %13) #25
  %209 = getelementptr inbounds %struct.CCGEdge, ptr %203, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !122
  %211 = tail call fastcc ptr @_vert_getCo(ptr noundef %210, i32 noundef %17, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %208, ptr noundef nonnull %211, ptr noundef %0) #25
  %212 = getelementptr inbounds %struct.CCGEdge, ptr %203, i64 0, i32 2
  %213 = load i16, ptr %212, align 8, !tbaa !118
  %214 = icmp eq i16 %213, 0
  %215 = select i1 %214, i1 true, i1 %179
  br i1 %215, label %224, label %216

216:                                              ; preds = %200, %216
  %217 = phi i32 [ %222, %216 ], [ 1, %200 ]
  %218 = tail call fastcc ptr @_edge_getCo(ptr noundef nonnull %203, i32 noundef %17, i32 noundef %217, i32 noundef %13) #25
  %219 = load i16, ptr %212, align 8, !tbaa !118
  %220 = sitofp i16 %219 to float
  %221 = fdiv float 1.000000e+00, %220
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %218, float noundef %221, ptr noundef %0) #25
  %222 = add nuw nsw i32 %217, 1
  %223 = icmp eq i32 %222, %178
  br i1 %223, label %224, label %216, !llvm.loop !215

224:                                              ; preds = %216, %200
  %225 = add nuw nsw i64 %201, 1
  %226 = icmp eq i64 %225, %180
  br i1 %226, label %195, label %200, !llvm.loop !216

227:                                              ; preds = %310, %195
  br i1 %24, label %228, label %313

228:                                              ; preds = %227
  %229 = load ptr, ptr %7, align 8, !tbaa !41
  %230 = zext nneg i32 %23 to i64
  br label %317

231:                                              ; preds = %196, %310
  %232 = phi i64 [ 0, %196 ], [ %311, %310 ]
  %233 = getelementptr inbounds ptr, ptr %21, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !41
  %235 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %234) #25
  %236 = getelementptr inbounds %struct.CCGFace, ptr %234, i64 0, i32 2
  %237 = load i16, ptr %236, align 8, !tbaa !127
  %238 = sitofp i16 %237 to float
  %239 = fdiv float 1.000000e+00, %238
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %235, float noundef %239, ptr noundef %0) #25
  %240 = load i16, ptr %236, align 8, !tbaa !127
  %241 = icmp sgt i16 %240, 0
  br i1 %241, label %244, label %310

242:                                              ; preds = %254
  %243 = icmp sgt i16 %255, 0
  br i1 %243, label %259, label %310

244:                                              ; preds = %231, %254
  %245 = phi i16 [ %255, %254 ], [ %240, %231 ]
  %246 = phi i32 [ %256, %254 ], [ 0, %231 ]
  br i1 %197, label %247, label %254

247:                                              ; preds = %244, %247
  %248 = phi i32 [ %250, %247 ], [ 1, %244 ]
  %249 = tail call fastcc ptr @_face_getIECo(ptr noundef %234, i32 noundef %17, i32 noundef %246, i32 noundef %248, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %249, float noundef 5.000000e-01, ptr noundef %0) #25
  %250 = add nuw nsw i32 %248, 1
  %251 = icmp eq i32 %250, %20
  br i1 %251, label %252, label %247, !llvm.loop !217

252:                                              ; preds = %247
  %253 = load i16, ptr %236, align 8, !tbaa !127
  br label %254

254:                                              ; preds = %252, %244
  %255 = phi i16 [ %253, %252 ], [ %245, %244 ]
  %256 = add nuw nsw i32 %246, 1
  %257 = sext i16 %255 to i32
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %244, label %242, !llvm.loop !218

259:                                              ; preds = %242, %300
  %260 = phi i64 [ %305, %300 ], [ 0, %242 ]
  %261 = phi i32 [ %307, %300 ], [ %257, %242 ]
  %262 = trunc i64 %260 to i32
  %263 = add i32 %262, -1
  %264 = add i32 %263, %261
  %265 = srem i32 %264, %261
  %266 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %234) #25
  %267 = getelementptr inbounds ptr, ptr %266, i64 %260
  %268 = load ptr, ptr %267, align 8, !tbaa !41
  %269 = sext i32 %265 to i64
  %270 = getelementptr inbounds ptr, ptr %266, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !41
  %272 = trunc i64 %260 to i32
  %273 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %234, i32 noundef %17, i32 noundef %272, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  %274 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %234) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %273, ptr noundef nonnull %274, ptr noundef %0) #25
  %275 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %234, i32 noundef %17, i32 noundef %272, i32 noundef %20, i32 noundef %20, i32 noundef %15, i32 noundef %13) #25
  %276 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %234) #25
  %277 = getelementptr inbounds ptr, ptr %276, i64 %260
  %278 = load ptr, ptr %277, align 8, !tbaa !41
  %279 = tail call fastcc ptr @_vert_getCo(ptr noundef %278, i32 noundef %17, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %275, ptr noundef nonnull %279, ptr noundef %0) #25
  br i1 %197, label %281, label %280

280:                                              ; preds = %281, %259
  br i1 %198, label %289, label %300

281:                                              ; preds = %259, %281
  %282 = phi i32 [ %287, %281 ], [ 1, %259 ]
  %283 = tail call fastcc ptr @_face_getIFCo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %282, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  %284 = tail call fastcc ptr @_face_getIECo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %282, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %283, ptr noundef nonnull %284, ptr noundef %0) #25
  %285 = tail call fastcc ptr @_face_getIFCo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef 0, i32 noundef %282, i32 noundef %15, i32 noundef %13) #25
  %286 = tail call fastcc ptr @_face_getIECo(ptr noundef %234, i32 noundef %17, i32 noundef %265, i32 noundef %282, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %285, ptr noundef nonnull %286, ptr noundef %0) #25
  %287 = add nuw nsw i32 %282, 1
  %288 = icmp eq i32 %287, %20
  br i1 %288, label %280, label %281, !llvm.loop !219

289:                                              ; preds = %280, %289
  %290 = phi i32 [ %298, %289 ], [ 0, %280 ]
  %291 = sub nsw i32 %20, %290
  %292 = tail call fastcc ptr @_face_getIFCo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %20, i32 noundef %290, i32 noundef %15, i32 noundef %13) #25
  %293 = load ptr, ptr %277, align 8, !tbaa !41
  %294 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %268, ptr noundef %293, i32 noundef %17, i32 noundef %291, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %292, ptr noundef nonnull %294, ptr noundef %0) #25
  %295 = tail call fastcc ptr @_face_getIFCo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %290, i32 noundef %20, i32 noundef %15, i32 noundef %13) #25
  %296 = load ptr, ptr %277, align 8, !tbaa !41
  %297 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %271, ptr noundef %296, i32 noundef %17, i32 noundef %291, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %295, ptr noundef nonnull %297, ptr noundef %0) #25
  %298 = add nuw nsw i32 %290, 1
  %299 = icmp eq i32 %298, %20
  br i1 %299, label %300, label %289, !llvm.loop !220

300:                                              ; preds = %289, %280
  %301 = tail call fastcc ptr @_face_getIECo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  %302 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %234) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %301, ptr noundef nonnull %302, ptr noundef %0) #25
  %303 = tail call fastcc ptr @_face_getIECo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %20, i32 noundef %15, i32 noundef %13) #25
  %304 = tail call fastcc ptr @_face_getIFCo(ptr noundef %234, i32 noundef %17, i32 noundef %272, i32 noundef %20, i32 noundef 0, i32 noundef %15, i32 noundef %13) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %303, ptr noundef nonnull %304, ptr noundef %0) #25
  %305 = add nuw nsw i64 %260, 1
  %306 = load i16, ptr %236, align 8, !tbaa !127
  %307 = sext i16 %306 to i32
  %308 = sext i16 %306 to i64
  %309 = icmp slt i64 %305, %308
  br i1 %309, label %259, label %310, !llvm.loop !221

310:                                              ; preds = %300, %231, %242
  %311 = add nuw nsw i64 %232, 1
  %312 = icmp eq i64 %311, %199
  br i1 %312, label %227, label %231, !llvm.loop !222

313:                                              ; preds = %317, %227
  br i1 %30, label %314, label %324

314:                                              ; preds = %313
  %315 = load ptr, ptr %8, align 8, !tbaa !41
  %316 = zext nneg i32 %29 to i64
  br label %327

317:                                              ; preds = %228, %317
  %318 = phi i64 [ 0, %228 ], [ %322, %317 ]
  %319 = getelementptr inbounds ptr, ptr %229, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !41
  %321 = getelementptr inbounds %struct.CCGVert, ptr %320, i64 0, i32 4
  store i16 0, ptr %321, align 4, !tbaa !123
  %322 = add nuw nsw i64 %318, 1
  %323 = icmp eq i64 %322, %230
  br i1 %323, label %313, label %317, !llvm.loop !223

324:                                              ; preds = %327, %313
  br i1 %48, label %325, label %341

325:                                              ; preds = %324
  %326 = zext nneg i32 %22 to i64
  br label %334

327:                                              ; preds = %314, %327
  %328 = phi i64 [ 0, %314 ], [ %332, %327 ]
  %329 = getelementptr inbounds ptr, ptr %315, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !41
  %331 = getelementptr inbounds %struct.CCGEdge, ptr %330, i64 0, i32 3
  store i16 0, ptr %331, align 2, !tbaa !145
  %332 = add nuw nsw i64 %328, 1
  %333 = icmp eq i64 %332, %316
  br i1 %333, label %324, label %327, !llvm.loop !224

334:                                              ; preds = %325, %334
  %335 = phi i64 [ 0, %325 ], [ %339, %334 ]
  %336 = getelementptr inbounds ptr, ptr %21, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !41
  %338 = getelementptr inbounds %struct.CCGFace, ptr %337, i64 0, i32 3
  store i16 0, ptr %338, align 2, !tbaa !156
  %339 = add nuw nsw i64 %335, 1
  %340 = icmp eq i64 %339, %326
  br i1 %340, label %341, label %334, !llvm.loop !225

341:                                              ; preds = %334, %324
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %343 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void %342(ptr noundef %343) #26
  %344 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %345 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %344(ptr noundef %345) #26
  %346 = load i32, ptr %11, align 4, !tbaa !51
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %341
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %349(ptr noundef %21) #26
  br label %350

350:                                              ; preds = %348, %341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ccg_edgesize(i32 noundef %0) unnamed_addr #0 !PGOFuncName !226 {
  %2 = shl nuw i32 1, %0
  %3 = add nuw nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 !PGOFuncName !227 {
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %9 = load ptr, ptr %0, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct._EHash, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %8(i64 noundef %13, ptr noundef nonnull @.str.6) #26
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %15(i64 noundef %21, ptr noundef nonnull @.str.6) #26
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = zext nneg i32 %2 to i64
  br label %31

26:                                               ; preds = %31, %7
  %27 = load ptr, ptr %0, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct._EHash, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !70
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %46, label %40

31:                                               ; preds = %24, %31
  %32 = phi i64 [ 0, %24 ], [ %38, %31 ]
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.CCGFace, ptr %34, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !156
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 2, !tbaa !156
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %26, label %31, !llvm.loop !228

40:                                               ; preds = %94, %26
  %41 = phi i32 [ 0, %26 ], [ %96, %94 ]
  %42 = load ptr, ptr %16, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct._EHash, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %102, label %158

46:                                               ; preds = %26, %94
  %47 = phi ptr [ %95, %94 ], [ %27, %26 ]
  %48 = phi i64 [ %97, %94 ], [ 0, %26 ]
  %49 = phi i32 [ %96, %94 ], [ 0, %26 ]
  %50 = load ptr, ptr %47, align 8, !tbaa !72
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %94, label %54

54:                                               ; preds = %46, %88
  %55 = phi ptr [ %90, %88 ], [ %52, %46 ]
  %56 = phi i32 [ %89, %88 ], [ %49, %46 ]
  %57 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !112
  %59 = sext i16 %58 to i32
  %60 = icmp sgt i16 %58, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = zext nneg i32 %59 to i64
  br label %65

65:                                               ; preds = %61, %73
  %66 = phi i64 [ 0, %61 ], [ %74, %73 ]
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = getelementptr inbounds %struct.CCGFace, ptr %68, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !156
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, %64
  br i1 %75, label %81, label %65, !llvm.loop !229

76:                                               ; preds = %65
  %77 = trunc i64 %66 to i32
  br label %78

78:                                               ; preds = %76, %54
  %79 = phi i32 [ 0, %54 ], [ %77, %76 ]
  %80 = icmp eq i32 %79, %59
  br i1 %80, label %81, label %88

81:                                               ; preds = %73, %78
  %82 = add nsw i32 %56, 1
  %83 = sext i32 %56 to i64
  %84 = getelementptr inbounds ptr, ptr %14, i64 %83
  store ptr %55, ptr %84, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 4
  %86 = load i16, ptr %85, align 4, !tbaa !123
  %87 = or i16 %86, 1
  store i16 %87, ptr %85, align 4, !tbaa !123
  br label %88

88:                                               ; preds = %78, %81
  %89 = phi i32 [ %82, %81 ], [ %56, %78 ]
  %90 = load ptr, ptr %55, align 8, !tbaa !41
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %54, !llvm.loop !230

92:                                               ; preds = %88
  %93 = load ptr, ptr %0, align 8, !tbaa !47
  br label %94

94:                                               ; preds = %92, %46
  %95 = phi ptr [ %47, %46 ], [ %93, %92 ]
  %96 = phi i32 [ %49, %46 ], [ %89, %92 ]
  %97 = add nuw nsw i64 %48, 1
  %98 = getelementptr inbounds %struct._EHash, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !70
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %46, label %40, !llvm.loop !231

102:                                              ; preds = %40, %150
  %103 = phi ptr [ %151, %150 ], [ %42, %40 ]
  %104 = phi i64 [ %153, %150 ], [ 0, %40 ]
  %105 = phi i32 [ %152, %150 ], [ 0, %40 ]
  %106 = load ptr, ptr %103, align 8, !tbaa !72
  %107 = getelementptr inbounds ptr, ptr %106, i64 %104
  %108 = load ptr, ptr %107, align 8, !tbaa !41
  %109 = icmp eq ptr %108, null
  br i1 %109, label %150, label %110

110:                                              ; preds = %102, %144
  %111 = phi ptr [ %146, %144 ], [ %108, %102 ]
  %112 = phi i32 [ %145, %144 ], [ %105, %102 ]
  %113 = getelementptr inbounds %struct.CCGEdge, ptr %111, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !118
  %115 = sext i16 %114 to i32
  %116 = icmp sgt i16 %114, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.CCGEdge, ptr %111, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !91
  %120 = zext nneg i32 %115 to i64
  br label %121

121:                                              ; preds = %117, %129
  %122 = phi i64 [ 0, %117 ], [ %130, %129 ]
  %123 = getelementptr inbounds ptr, ptr %119, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !41
  %125 = getelementptr inbounds %struct.CCGFace, ptr %124, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !156
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %121
  %130 = add nuw nsw i64 %122, 1
  %131 = icmp eq i64 %130, %120
  br i1 %131, label %137, label %121, !llvm.loop !232

132:                                              ; preds = %121
  %133 = trunc i64 %122 to i32
  br label %134

134:                                              ; preds = %132, %110
  %135 = phi i32 [ 0, %110 ], [ %133, %132 ]
  %136 = icmp eq i32 %135, %115
  br i1 %136, label %137, label %144

137:                                              ; preds = %129, %134
  %138 = getelementptr inbounds %struct.CCGEdge, ptr %111, i64 0, i32 3
  %139 = load i16, ptr %138, align 2, !tbaa !145
  %140 = or i16 %139, 1
  store i16 %140, ptr %138, align 2, !tbaa !145
  %141 = add nsw i32 %112, 1
  %142 = sext i32 %112 to i64
  %143 = getelementptr inbounds ptr, ptr %22, i64 %142
  store ptr %111, ptr %143, align 8, !tbaa !41
  br label %144

144:                                              ; preds = %134, %137
  %145 = phi i32 [ %141, %137 ], [ %112, %134 ]
  %146 = load ptr, ptr %111, align 8, !tbaa !41
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %110, !llvm.loop !233

148:                                              ; preds = %144
  %149 = load ptr, ptr %16, align 8, !tbaa !48
  br label %150

150:                                              ; preds = %148, %102
  %151 = phi ptr [ %103, %102 ], [ %149, %148 ]
  %152 = phi i32 [ %105, %102 ], [ %145, %148 ]
  %153 = add nuw nsw i64 %104, 1
  %154 = getelementptr inbounds %struct._EHash, ptr %151, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !70
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %102, label %158, !llvm.loop !234

158:                                              ; preds = %150, %40
  %159 = phi i32 [ 0, %40 ], [ %152, %150 ]
  store ptr %14, ptr %3, align 8, !tbaa !41
  store i32 %41, ptr %4, align 4, !tbaa !51
  store ptr %22, ptr %5, align 8, !tbaa !41
  store i32 %159, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataZero(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !235 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !110
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @_edge_getCo(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !236 {
  %5 = tail call fastcc i32 @ccg_edgebase(i32 noundef %1) #25
  %6 = tail call fastcc ptr @EDGE_getLevelData(ptr noundef %0) #25
  %7 = add nsw i32 %5, %2
  %8 = mul nsw i32 %7, %3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataAdd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !237 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %16, %9 ]
  %11 = getelementptr inbounds float, ptr %1, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !101
  %13 = getelementptr inbounds float, ptr %0, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !101
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !101
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !238

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataMulN(ptr nocapture noundef %0, float noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !239 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !101
  %13 = fmul float %12, %1
  store float %13, ptr %11, align 4, !tbaa !101
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !240

16:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_updateNormals(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %1, ptr %4, align 8, !tbaa !41
  store i32 %2, ptr %5, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call fastcc void @ccgSubSurf__allFaces(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %10) #25
  %11 = load ptr, ptr %4, align 8, !tbaa !41
  %12 = load i32, ptr %5, align 4, !tbaa !51
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %11, i32 noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #25
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %8, align 4, !tbaa !51
  br i1 %15, label %21, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 8, !tbaa !41
  %19 = load ptr, ptr %7, align 8, !tbaa !41
  %20 = load i32, ptr %9, align 4, !tbaa !51
  tail call fastcc void @ccgSubSurf__calcVertNormals(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %19, ptr noundef %11, i32 noundef %16, i32 noundef %20, i32 noundef %12) #25
  br label %21

21:                                               ; preds = %17, %3
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load ptr, ptr %6, align 8, !tbaa !41
  %25 = zext nneg i32 %16 to i64
  br label %32

26:                                               ; preds = %32, %21
  %27 = load i32, ptr %9, align 4, !tbaa !51
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 8, !tbaa !41
  %31 = zext nneg i32 %27 to i64
  br label %43

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %37, %32 ]
  %34 = getelementptr inbounds ptr, ptr %24, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.CCGVert, ptr %35, i64 0, i32 4
  store i16 0, ptr %36, align 4, !tbaa !123
  %37 = add nuw nsw i64 %33, 1
  %38 = icmp eq i64 %37, %25
  br i1 %38, label %26, label %32, !llvm.loop !241

39:                                               ; preds = %43, %26
  %40 = icmp sgt i32 %12, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %39
  %42 = zext nneg i32 %12 to i64
  br label %50

43:                                               ; preds = %29, %43
  %44 = phi i64 [ 0, %29 ], [ %48, %43 ]
  %45 = getelementptr inbounds ptr, ptr %30, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.CCGEdge, ptr %46, i64 0, i32 3
  store i16 0, ptr %47, align 2, !tbaa !145
  %48 = add nuw nsw i64 %44, 1
  %49 = icmp eq i64 %48, %31
  br i1 %49, label %39, label %43, !llvm.loop !242

50:                                               ; preds = %41, %50
  %51 = phi i64 [ 0, %41 ], [ %55, %50 ]
  %52 = getelementptr inbounds ptr, ptr %11, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct.CCGFace, ptr %53, i64 0, i32 3
  store i16 0, ptr %54, align 2, !tbaa !156
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %42
  br i1 %56, label %57, label %50, !llvm.loop !243

57:                                               ; preds = %50, %39
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %59 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %58(ptr noundef %59) #26
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %61 = load ptr, ptr %6, align 8, !tbaa !41
  tail call void %60(ptr noundef %61) #26
  %62 = load i32, ptr %10, align 4, !tbaa !51
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %65(ptr noundef %11) #26
  br label %66

66:                                               ; preds = %64, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ccgSubSurf__calcVertNormals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #14 !PGOFuncName !244 {
  %8 = alloca [3 x float], align 8
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = tail call fastcc i32 @ccg_edgesize(i32 noundef %10) #25
  %12 = tail call fastcc i32 @ccg_gridsize(i32 noundef %10) #25
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp sgt i32 %6, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %7
  %19 = add i32 %12, -1
  %20 = icmp sgt i32 %12, 1
  %21 = icmp slt i32 %12, 2
  %22 = add nsw i32 %12, -2
  %23 = getelementptr inbounds float, ptr %8, i64 2
  %24 = icmp sgt i32 %12, 2
  %25 = zext nneg i32 %6 to i64
  br label %31

26:                                               ; preds = %266, %7
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %28, label %269

28:                                               ; preds = %26
  %29 = add nsw i32 %12, -1
  %30 = zext nneg i32 %4 to i64
  br label %275

31:                                               ; preds = %18, %266
  %32 = phi i64 [ 0, %18 ], [ %267, %266 ]
  %33 = getelementptr inbounds ptr, ptr %3, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %35 = getelementptr inbounds %struct.CCGFace, ptr %34, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !127
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i16 %36, 0
  br i1 %38, label %39, label %266

39:                                               ; preds = %31
  %40 = add nsw i32 %37, -1
  %41 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %34) #25
  %42 = zext nneg i32 %37 to i64
  br label %47

43:                                               ; preds = %111
  br i1 %38, label %44, label %266

44:                                               ; preds = %43
  %45 = add nsw i32 %37, -1
  %46 = zext nneg i32 %37 to i64
  br label %114

47:                                               ; preds = %39, %111
  %48 = phi i64 [ 0, %39 ], [ %112, %111 ]
  br i1 %20, label %49, label %62

49:                                               ; preds = %47
  %50 = trunc i64 %48 to i32
  br label %51

51:                                               ; preds = %49, %59
  %52 = phi i32 [ %60, %59 ], [ 0, %49 ]
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i32 [ 0, %51 ], [ %57, %53 ]
  %55 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %50, i32 noundef %54, i32 noundef %52, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %56 = getelementptr inbounds float, ptr %55, i64 2
  store float 0.000000e+00, ptr %56, align 4, !tbaa !101
  store <2 x float> zeroinitializer, ptr %55, align 4, !tbaa !101
  %57 = add nuw nsw i32 %54, 1
  %58 = icmp eq i32 %57, %19
  br i1 %58, label %59, label %53, !llvm.loop !245

59:                                               ; preds = %53
  %60 = add nuw nsw i32 %52, 1
  %61 = icmp eq i32 %60, %19
  br i1 %61, label %62, label %51, !llvm.loop !246

62:                                               ; preds = %59, %47
  %63 = tail call fastcc ptr @FACE_getEdges(ptr noundef %34) #25
  %64 = trunc i64 %48 to i32
  %65 = add i32 %40, %64
  %66 = srem i32 %65, %37
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %63, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.CCGEdge, ptr %69, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !145
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  %74 = select i1 %73, i1 true, i1 %21
  br i1 %74, label %83, label %75

75:                                               ; preds = %62
  %76 = trunc i64 %48 to i32
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi i32 [ %81, %77 ], [ 0, %75 ]
  %79 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %76, i32 noundef %78, i32 noundef %19, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %80 = getelementptr inbounds float, ptr %79, i64 2
  store float 0.000000e+00, ptr %80, align 4, !tbaa !101
  store <2 x float> zeroinitializer, ptr %79, align 4, !tbaa !101
  %81 = add nuw nsw i32 %78, 1
  %82 = icmp eq i32 %81, %19
  br i1 %82, label %83, label %77, !llvm.loop !247

83:                                               ; preds = %77, %62
  %84 = tail call fastcc ptr @FACE_getEdges(ptr noundef %34) #25
  %85 = getelementptr inbounds ptr, ptr %84, i64 %48
  %86 = load ptr, ptr %85, align 8, !tbaa !41
  %87 = getelementptr inbounds %struct.CCGEdge, ptr %86, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !145
  %89 = and i16 %88, 1
  %90 = icmp eq i16 %89, 0
  %91 = select i1 %90, i1 true, i1 %21
  br i1 %91, label %100, label %92

92:                                               ; preds = %83
  %93 = trunc i64 %48 to i32
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i32 [ %98, %94 ], [ 0, %92 ]
  %96 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %93, i32 noundef %19, i32 noundef %95, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %97 = getelementptr inbounds float, ptr %96, i64 2
  store float 0.000000e+00, ptr %97, align 4, !tbaa !101
  store <2 x float> zeroinitializer, ptr %96, align 4, !tbaa !101
  %98 = add nuw nsw i32 %95, 1
  %99 = icmp eq i32 %98, %19
  br i1 %99, label %100, label %94, !llvm.loop !248

100:                                              ; preds = %94, %83
  %101 = getelementptr inbounds ptr, ptr %41, i64 %48
  %102 = load ptr, ptr %101, align 8, !tbaa !41
  %103 = getelementptr inbounds %struct.CCGVert, ptr %102, i64 0, i32 4
  %104 = load i16, ptr %103, align 4, !tbaa !123
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = trunc i64 %48 to i32
  %109 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %108, i32 noundef %19, i32 noundef %19, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %110 = getelementptr inbounds float, ptr %109, i64 2
  store float 0.000000e+00, ptr %110, align 4, !tbaa !101
  store <2 x float> zeroinitializer, ptr %109, align 4, !tbaa !101
  br label %111

111:                                              ; preds = %100, %107
  %112 = add nuw nsw i64 %48, 1
  %113 = icmp eq i64 %112, %42
  br i1 %113, label %43, label %47, !llvm.loop !249

114:                                              ; preds = %44, %264
  %115 = phi i64 [ 0, %44 ], [ %133, %264 ]
  %116 = tail call fastcc ptr @FACE_getEdges(ptr noundef %34) #25
  %117 = trunc i64 %115 to i32
  %118 = add i32 %45, %117
  %119 = srem i32 %118, %37
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %116, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !41
  %123 = getelementptr inbounds %struct.CCGEdge, ptr %122, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !145
  %125 = and i16 %124, 1
  %126 = icmp ne i16 %125, 0
  %127 = getelementptr inbounds ptr, ptr %116, i64 %115
  %128 = load ptr, ptr %127, align 8, !tbaa !41
  %129 = getelementptr inbounds %struct.CCGEdge, ptr %128, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !145
  %131 = and i16 %130, 1
  %132 = icmp ne i16 %131, 0
  %133 = add nuw nsw i64 %115, 1
  br i1 %20, label %134, label %264

134:                                              ; preds = %114
  %135 = select i1 %132, i1 true, i1 %24
  %136 = select i1 %126, i1 true, i1 %24
  %137 = trunc i64 %115 to i32
  %138 = icmp eq i64 %133, %46
  %139 = trunc i64 %133 to i32
  %140 = select i1 %138, i32 0, i32 %139
  %141 = icmp eq i64 %133, %46
  %142 = trunc i64 %133 to i32
  %143 = select i1 %141, i32 0, i32 %142
  br label %144

144:                                              ; preds = %134, %262
  %145 = phi i32 [ 0, %134 ], [ %148, %262 ]
  %146 = icmp slt i32 %145, %22
  %147 = select i1 %126, i1 true, i1 %146
  %148 = add nuw nsw i32 %145, 1
  %149 = icmp eq i32 %145, 0
  br label %150

150:                                              ; preds = %144, %259
  %151 = phi i32 [ 0, %144 ], [ %260, %259 ]
  %152 = icmp slt i32 %151, %22
  %153 = select i1 %132, i1 true, i1 %152
  call fastcc void @_face_calcIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %137, i32 noundef %151, i32 noundef %145, ptr noundef nonnull %8, i32 noundef %10, i32 noundef %16) #25
  %154 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %137, i32 noundef %151, i32 noundef %145, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %155 = load <2 x float>, ptr %8, align 8, !tbaa !101
  %156 = load <2 x float>, ptr %154, align 4, !tbaa !101
  %157 = fadd <2 x float> %155, %156
  store <2 x float> %157, ptr %154, align 4, !tbaa !101
  %158 = load float, ptr %23, align 8, !tbaa !101
  %159 = getelementptr inbounds float, ptr %154, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !101
  %161 = fadd float %158, %160
  store float %161, ptr %159, align 4, !tbaa !101
  br i1 %153, label %162, label %170

162:                                              ; preds = %150
  %163 = add nuw nsw i32 %151, 1
  %164 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %137, i32 noundef %163, i32 noundef %145, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %165 = load <2 x float>, ptr %164, align 4, !tbaa !101
  %166 = fadd <2 x float> %155, %165
  store <2 x float> %166, ptr %164, align 4, !tbaa !101
  %167 = getelementptr inbounds float, ptr %164, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !101
  %169 = fadd float %158, %168
  store float %169, ptr %167, align 4, !tbaa !101
  br label %170

170:                                              ; preds = %162, %150
  br i1 %147, label %171, label %196

171:                                              ; preds = %170
  %172 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %137, i32 noundef %151, i32 noundef %148, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %173 = load <2 x float>, ptr %172, align 4, !tbaa !101
  %174 = fadd <2 x float> %155, %173
  store <2 x float> %174, ptr %172, align 4, !tbaa !101
  %175 = getelementptr inbounds float, ptr %172, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !101
  %177 = fadd float %158, %176
  store float %177, ptr %175, align 4, !tbaa !101
  br i1 %153, label %178, label %196

178:                                              ; preds = %171
  %179 = or i1 %146, %152
  br i1 %179, label %188, label %180

180:                                              ; preds = %178
  %181 = tail call fastcc ptr @FACE_getVerts(ptr noundef %34) #25
  %182 = getelementptr inbounds ptr, ptr %181, i64 %115
  %183 = load ptr, ptr %182, align 8, !tbaa !41
  %184 = getelementptr inbounds %struct.CCGVert, ptr %183, i64 0, i32 4
  %185 = load i16, ptr %184, align 4, !tbaa !123
  %186 = and i16 %185, 1
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %178, %180
  %189 = add nuw nsw i32 %151, 1
  %190 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %137, i32 noundef %189, i32 noundef %148, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %191 = load <2 x float>, ptr %190, align 4, !tbaa !101
  %192 = fadd <2 x float> %155, %191
  store <2 x float> %192, ptr %190, align 4, !tbaa !101
  %193 = getelementptr inbounds float, ptr %190, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !101
  %195 = fadd float %158, %194
  store float %195, ptr %193, align 4, !tbaa !101
  br label %196

196:                                              ; preds = %170, %180, %188, %171
  %197 = icmp eq i32 %151, 0
  %198 = or i32 %151, %145
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %196
  br i1 %135, label %201, label %208

201:                                              ; preds = %200
  %202 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %143, i32 noundef 0, i32 noundef 1, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %203 = load <2 x float>, ptr %202, align 4, !tbaa !101
  %204 = fadd <2 x float> %155, %203
  store <2 x float> %204, ptr %202, align 4, !tbaa !101
  %205 = getelementptr inbounds float, ptr %202, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !101
  %207 = fadd float %158, %206
  store float %207, ptr %205, align 4, !tbaa !101
  br label %208

208:                                              ; preds = %200, %201
  br i1 %136, label %209, label %216

209:                                              ; preds = %208
  %210 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %119, i32 noundef 1, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %211 = load <2 x float>, ptr %210, align 4, !tbaa !101
  %212 = fadd <2 x float> %155, %211
  store <2 x float> %212, ptr %210, align 4, !tbaa !101
  %213 = getelementptr inbounds float, ptr %210, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !101
  %215 = fadd float %158, %214
  store float %215, ptr %213, align 4, !tbaa !101
  br label %216

216:                                              ; preds = %209, %208
  br label %217

217:                                              ; preds = %216, %228
  %218 = phi i32 [ %229, %228 ], [ 0, %216 ]
  %219 = zext nneg i32 %218 to i64
  %220 = icmp eq i64 %115, %219
  br i1 %220, label %228, label %221

221:                                              ; preds = %217
  %222 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %218, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %223 = load <2 x float>, ptr %222, align 4, !tbaa !101
  %224 = fadd <2 x float> %155, %223
  store <2 x float> %224, ptr %222, align 4, !tbaa !101
  %225 = getelementptr inbounds float, ptr %222, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !101
  %227 = fadd float %158, %226
  store float %227, ptr %225, align 4, !tbaa !101
  br label %228

228:                                              ; preds = %217, %221
  %229 = add nuw nsw i32 %218, 1
  %230 = icmp eq i32 %229, %37
  br i1 %230, label %259, label %217, !llvm.loop !250

231:                                              ; preds = %196
  br i1 %149, label %232, label %242

232:                                              ; preds = %231
  %233 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %140, i32 noundef 0, i32 noundef %151, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %234 = load <2 x float>, ptr %233, align 4, !tbaa !101
  %235 = fadd <2 x float> %155, %234
  store <2 x float> %235, ptr %233, align 4, !tbaa !101
  %236 = getelementptr inbounds float, ptr %233, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !101
  %238 = fadd float %158, %237
  store float %238, ptr %236, align 4, !tbaa !101
  br i1 %153, label %239, label %259

239:                                              ; preds = %232
  %240 = add nuw nsw i32 %151, 1
  %241 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %140, i32 noundef 0, i32 noundef %240, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  br label %252

242:                                              ; preds = %231
  br i1 %197, label %243, label %259

243:                                              ; preds = %242
  %244 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %119, i32 noundef %145, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %245 = load <2 x float>, ptr %244, align 4, !tbaa !101
  %246 = fadd <2 x float> %155, %245
  store <2 x float> %246, ptr %244, align 4, !tbaa !101
  %247 = getelementptr inbounds float, ptr %244, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !101
  %249 = fadd float %158, %248
  store float %249, ptr %247, align 4, !tbaa !101
  br i1 %147, label %250, label %259

250:                                              ; preds = %243
  %251 = tail call fastcc ptr @_face_getIFNo(ptr noundef %34, i32 noundef %10, i32 noundef %119, i32 noundef %148, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  br label %252

252:                                              ; preds = %250, %239
  %253 = phi ptr [ %251, %250 ], [ %241, %239 ]
  %254 = load <2 x float>, ptr %253, align 4, !tbaa !101
  %255 = fadd <2 x float> %155, %254
  store <2 x float> %255, ptr %253, align 4, !tbaa !101
  %256 = getelementptr inbounds float, ptr %253, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !101
  %258 = fadd float %158, %257
  store float %258, ptr %256, align 4, !tbaa !101
  br label %259

259:                                              ; preds = %228, %252, %243, %232, %242
  %260 = add nuw nsw i32 %151, 1
  %261 = icmp eq i32 %260, %19
  br i1 %261, label %262, label %150, !llvm.loop !251

262:                                              ; preds = %259
  %263 = icmp eq i32 %148, %19
  br i1 %263, label %264, label %144, !llvm.loop !252

264:                                              ; preds = %262, %114
  %265 = icmp eq i64 %133, %46
  br i1 %265, label %266, label %114, !llvm.loop !253

266:                                              ; preds = %264, %31, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  %267 = add nuw nsw i64 %32, 1
  %268 = icmp eq i64 %267, %25
  br i1 %268, label %26, label %31, !llvm.loop !254

269:                                              ; preds = %337, %26
  %270 = icmp sgt i32 %5, 0
  br i1 %270, label %271, label %340

271:                                              ; preds = %269
  %272 = add i32 %11, -1
  %273 = icmp sgt i32 %11, 2
  %274 = zext nneg i32 %5 to i64
  br label %347

275:                                              ; preds = %28, %337
  %276 = phi i64 [ 0, %28 ], [ %338, %337 ]
  %277 = getelementptr inbounds ptr, ptr %1, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !41
  %279 = tail call fastcc ptr @_vert_getNo(ptr noundef %278, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %280 = getelementptr inbounds float, ptr %279, i64 2
  store float 0.000000e+00, ptr %280, align 4, !tbaa !101
  %281 = getelementptr inbounds float, ptr %279, i64 1
  store <2 x float> zeroinitializer, ptr %279, align 4, !tbaa !101
  %282 = getelementptr inbounds %struct.CCGVert, ptr %278, i64 0, i32 3
  %283 = load i16, ptr %282, align 2, !tbaa !112
  %284 = icmp sgt i16 %283, 0
  br i1 %284, label %285, label %308

285:                                              ; preds = %275
  %286 = zext nneg i16 %283 to i64
  %287 = getelementptr inbounds %struct.CCGVert, ptr %278, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !97
  br label %289

289:                                              ; preds = %285, %289
  %290 = phi float [ 0.000000e+00, %285 ], [ %305, %289 ]
  %291 = phi float [ 0.000000e+00, %285 ], [ %302, %289 ]
  %292 = phi float [ 0.000000e+00, %285 ], [ %299, %289 ]
  %293 = phi i64 [ 0, %285 ], [ %306, %289 ]
  %294 = getelementptr inbounds ptr, ptr %288, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !41
  %296 = tail call fastcc i32 @_face_getVertIndex(ptr noundef %295, ptr noundef nonnull %278) #25
  %297 = tail call fastcc ptr @_face_getIFNo(ptr noundef %295, i32 noundef %10, i32 noundef %296, i32 noundef %29, i32 noundef %29, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %298 = load float, ptr %297, align 4, !tbaa !101
  %299 = fadd float %298, %292
  store float %299, ptr %279, align 4, !tbaa !101
  %300 = getelementptr inbounds float, ptr %297, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !101
  %302 = fadd float %301, %291
  store float %302, ptr %281, align 4, !tbaa !101
  %303 = getelementptr inbounds float, ptr %297, i64 2
  %304 = load float, ptr %303, align 4, !tbaa !101
  %305 = fadd float %304, %290
  store float %305, ptr %280, align 4, !tbaa !101
  %306 = add nuw nsw i64 %293, 1
  %307 = icmp eq i64 %306, %286
  br i1 %307, label %308, label %289, !llvm.loop !255

308:                                              ; preds = %289, %275
  %309 = icmp eq i16 %283, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %308
  %311 = tail call fastcc ptr @_vert_getCo(ptr noundef nonnull %278, i32 noundef %10, i32 noundef %16) #25
  %312 = load float, ptr %311, align 4, !tbaa !101
  store float %312, ptr %279, align 4, !tbaa !101
  %313 = getelementptr inbounds float, ptr %311, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !101
  store float %314, ptr %281, align 4, !tbaa !101
  %315 = getelementptr inbounds float, ptr %311, i64 2
  %316 = load float, ptr %315, align 4, !tbaa !101
  store float %316, ptr %280, align 4, !tbaa !101
  br label %317

317:                                              ; preds = %310, %308
  tail call fastcc void @Normalize(ptr noundef nonnull %279) #25
  %318 = load i16, ptr %282, align 2, !tbaa !112
  %319 = icmp sgt i16 %318, 0
  br i1 %319, label %320, label %337

320:                                              ; preds = %317
  %321 = zext nneg i16 %318 to i64
  %322 = getelementptr inbounds %struct.CCGVert, ptr %278, i64 0, i32 7
  %323 = load ptr, ptr %322, align 8, !tbaa !97
  br label %324

324:                                              ; preds = %320, %324
  %325 = phi i64 [ 0, %320 ], [ %335, %324 ]
  %326 = getelementptr inbounds ptr, ptr %323, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !41
  %328 = tail call fastcc i32 @_face_getVertIndex(ptr noundef %327, ptr noundef nonnull %278) #25
  %329 = tail call fastcc ptr @_face_getIFNo(ptr noundef %327, i32 noundef %10, i32 noundef %328, i32 noundef %29, i32 noundef %29, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %330 = load float, ptr %279, align 4, !tbaa !101
  store float %330, ptr %329, align 4, !tbaa !101
  %331 = load float, ptr %281, align 4, !tbaa !101
  %332 = getelementptr inbounds float, ptr %329, i64 1
  store float %331, ptr %332, align 4, !tbaa !101
  %333 = load float, ptr %280, align 4, !tbaa !101
  %334 = getelementptr inbounds float, ptr %329, i64 2
  store float %333, ptr %334, align 4, !tbaa !101
  %335 = add nuw nsw i64 %325, 1
  %336 = icmp eq i64 %335, %321
  br i1 %336, label %337, label %324, !llvm.loop !256

337:                                              ; preds = %324, %317
  %338 = add nuw nsw i64 %276, 1
  %339 = icmp eq i64 %338, %30
  br i1 %339, label %269, label %275, !llvm.loop !257

340:                                              ; preds = %419, %269
  br i1 %17, label %341, label %422

341:                                              ; preds = %340
  %342 = add i32 %12, -1
  %343 = icmp sgt i32 %12, 0
  %344 = sext i32 %14 to i64
  %345 = icmp sgt i32 %12, 2
  %346 = zext nneg i32 %6 to i64
  br label %426

347:                                              ; preds = %271, %419
  %348 = phi i64 [ 0, %271 ], [ %420, %419 ]
  %349 = getelementptr inbounds ptr, ptr %2, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !41
  %351 = getelementptr inbounds %struct.CCGEdge, ptr %350, i64 0, i32 2
  %352 = load i16, ptr %351, align 8, !tbaa !118
  %353 = icmp eq i16 %352, 0
  br i1 %353, label %419, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.CCGEdge, ptr %350, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !91
  %357 = sext i16 %352 to i64
  %358 = getelementptr ptr, ptr %356, i64 %357
  %359 = getelementptr ptr, ptr %358, i64 -1
  %360 = load ptr, ptr %359, align 8, !tbaa !41
  %361 = sext i16 %352 to i32
  %362 = add nsw i32 %361, -1
  %363 = icmp sgt i16 %352, 1
  br i1 %363, label %364, label %419

364:                                              ; preds = %354
  %365 = zext i32 %362 to i64
  br label %369

366:                                              ; preds = %394
  br i1 %363, label %367, label %419

367:                                              ; preds = %366
  %368 = zext i32 %362 to i64
  br label %397

369:                                              ; preds = %364, %394
  %370 = phi i64 [ 0, %364 ], [ %395, %394 ]
  %371 = getelementptr inbounds ptr, ptr %356, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !41
  %373 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %372, ptr noundef %350) #25
  %374 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %360, ptr noundef %350) #25
  br i1 %273, label %375, label %394

375:                                              ; preds = %369, %375
  %376 = phi i32 [ %392, %375 ], [ 1, %369 ]
  %377 = tail call fastcc ptr @_face_getIFNoEdge(ptr noundef %360, ptr noundef %350, i32 noundef %374, i32 noundef %10, i32 noundef %376, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %378 = tail call fastcc ptr @_face_getIFNoEdge(ptr noundef %372, ptr noundef %350, i32 noundef %373, i32 noundef %10, i32 noundef %376, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %379 = load float, ptr %378, align 4, !tbaa !101
  %380 = load float, ptr %377, align 4, !tbaa !101
  %381 = fadd float %379, %380
  store float %381, ptr %377, align 4, !tbaa !101
  %382 = getelementptr inbounds float, ptr %378, i64 1
  %383 = load float, ptr %382, align 4, !tbaa !101
  %384 = getelementptr inbounds float, ptr %377, i64 1
  %385 = load float, ptr %384, align 4, !tbaa !101
  %386 = fadd float %383, %385
  store float %386, ptr %384, align 4, !tbaa !101
  %387 = getelementptr inbounds float, ptr %378, i64 2
  %388 = load float, ptr %387, align 4, !tbaa !101
  %389 = getelementptr inbounds float, ptr %377, i64 2
  %390 = load float, ptr %389, align 4, !tbaa !101
  %391 = fadd float %388, %390
  store float %391, ptr %389, align 4, !tbaa !101
  %392 = add nuw nsw i32 %376, 1
  %393 = icmp eq i32 %392, %272
  br i1 %393, label %394, label %375, !llvm.loop !258

394:                                              ; preds = %375, %369
  %395 = add nuw nsw i64 %370, 1
  %396 = icmp eq i64 %395, %365
  br i1 %396, label %366, label %369, !llvm.loop !259

397:                                              ; preds = %367, %416
  %398 = phi i64 [ 0, %367 ], [ %417, %416 ]
  %399 = getelementptr inbounds ptr, ptr %356, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !41
  %401 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %400, ptr noundef %350) #25
  %402 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %360, ptr noundef %350) #25
  br i1 %273, label %403, label %416

403:                                              ; preds = %397, %403
  %404 = phi i32 [ %414, %403 ], [ 1, %397 ]
  %405 = tail call fastcc ptr @_face_getIFNoEdge(ptr noundef %400, ptr noundef %350, i32 noundef %401, i32 noundef %10, i32 noundef %404, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %406 = tail call fastcc ptr @_face_getIFNoEdge(ptr noundef %360, ptr noundef %350, i32 noundef %402, i32 noundef %10, i32 noundef %404, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %407 = load float, ptr %406, align 4, !tbaa !101
  store float %407, ptr %405, align 4, !tbaa !101
  %408 = getelementptr inbounds float, ptr %406, i64 1
  %409 = load float, ptr %408, align 4, !tbaa !101
  %410 = getelementptr inbounds float, ptr %405, i64 1
  store float %409, ptr %410, align 4, !tbaa !101
  %411 = getelementptr inbounds float, ptr %406, i64 2
  %412 = load float, ptr %411, align 4, !tbaa !101
  %413 = getelementptr inbounds float, ptr %405, i64 2
  store float %412, ptr %413, align 4, !tbaa !101
  %414 = add nuw nsw i32 %404, 1
  %415 = icmp eq i32 %414, %272
  br i1 %415, label %416, label %403, !llvm.loop !260

416:                                              ; preds = %403, %397
  %417 = add nuw nsw i64 %398, 1
  %418 = icmp eq i64 %417, %368
  br i1 %418, label %419, label %397, !llvm.loop !261

419:                                              ; preds = %416, %354, %366, %347
  %420 = add nuw nsw i64 %348, 1
  %421 = icmp eq i64 %420, %274
  br i1 %421, label %340, label %347, !llvm.loop !262

422:                                              ; preds = %484, %340
  br i1 %270, label %423, label %529

423:                                              ; preds = %422
  %424 = icmp sgt i32 %11, 0
  %425 = zext nneg i32 %5 to i64
  br label %487

426:                                              ; preds = %341, %484
  %427 = phi i64 [ 0, %341 ], [ %485, %484 ]
  %428 = getelementptr inbounds ptr, ptr %3, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !41
  %430 = getelementptr inbounds %struct.CCGFace, ptr %429, i64 0, i32 2
  %431 = load i16, ptr %430, align 8, !tbaa !127
  %432 = sext i16 %431 to i32
  %433 = icmp sgt i16 %431, 0
  br i1 %433, label %435, label %484

434:                                              ; preds = %435
  br i1 %433, label %450, label %484

435:                                              ; preds = %426, %435
  %436 = phi i32 [ %437, %435 ], [ 0, %426 ]
  %437 = add nuw nsw i32 %436, 1
  %438 = icmp eq i32 %437, %432
  %439 = select i1 %438, i32 0, i32 %437
  %440 = tail call fastcc ptr @_face_getIFNo(ptr noundef nonnull %429, i32 noundef %10, i32 noundef %439, i32 noundef 0, i32 noundef %342, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %441 = tail call fastcc ptr @_face_getIFNo(ptr noundef nonnull %429, i32 noundef %10, i32 noundef %436, i32 noundef %342, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %442 = load float, ptr %441, align 4, !tbaa !101
  store float %442, ptr %440, align 4, !tbaa !101
  %443 = getelementptr inbounds float, ptr %441, i64 1
  %444 = load float, ptr %443, align 4, !tbaa !101
  %445 = getelementptr inbounds float, ptr %440, i64 1
  store float %444, ptr %445, align 4, !tbaa !101
  %446 = getelementptr inbounds float, ptr %441, i64 2
  %447 = load float, ptr %446, align 4, !tbaa !101
  %448 = getelementptr inbounds float, ptr %440, i64 2
  store float %447, ptr %448, align 4, !tbaa !101
  %449 = icmp eq i32 %437, %432
  br i1 %449, label %434, label %435, !llvm.loop !263

450:                                              ; preds = %434, %479
  %451 = phi i32 [ %480, %479 ], [ 0, %434 ]
  br i1 %343, label %452, label %462

452:                                              ; preds = %450, %459
  %453 = phi i32 [ %460, %459 ], [ 0, %450 ]
  br label %454

454:                                              ; preds = %452, %454
  %455 = phi i32 [ 0, %452 ], [ %457, %454 ]
  %456 = tail call fastcc ptr @_face_getIFNo(ptr noundef %429, i32 noundef %10, i32 noundef %451, i32 noundef %455, i32 noundef %453, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  tail call fastcc void @Normalize(ptr noundef nonnull %456) #25
  %457 = add nuw nsw i32 %455, 1
  %458 = icmp eq i32 %457, %12
  br i1 %458, label %459, label %454, !llvm.loop !264

459:                                              ; preds = %454
  %460 = add nuw nsw i32 %453, 1
  %461 = icmp eq i32 %460, %12
  br i1 %461, label %462, label %452, !llvm.loop !265

462:                                              ; preds = %459, %450
  %463 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %429) #25
  %464 = getelementptr inbounds i8, ptr %463, i64 %344
  %465 = tail call fastcc ptr @_face_getIFNo(ptr noundef %429, i32 noundef %10, i32 noundef %451, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %464, ptr noundef nonnull %465, ptr noundef %0) #25
  br i1 %345, label %466, label %479

466:                                              ; preds = %462, %466
  %467 = phi i32 [ %477, %466 ], [ 1, %462 ]
  %468 = tail call fastcc ptr @_face_getIENo(ptr noundef %429, i32 noundef %10, i32 noundef %451, i32 noundef %467, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %469 = tail call fastcc ptr @_face_getIFNo(ptr noundef %429, i32 noundef %10, i32 noundef %451, i32 noundef %467, i32 noundef 0, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %470 = load float, ptr %469, align 4, !tbaa !101
  store float %470, ptr %468, align 4, !tbaa !101
  %471 = getelementptr inbounds float, ptr %469, i64 1
  %472 = load float, ptr %471, align 4, !tbaa !101
  %473 = getelementptr inbounds float, ptr %468, i64 1
  store float %472, ptr %473, align 4, !tbaa !101
  %474 = getelementptr inbounds float, ptr %469, i64 2
  %475 = load float, ptr %474, align 4, !tbaa !101
  %476 = getelementptr inbounds float, ptr %468, i64 2
  store float %475, ptr %476, align 4, !tbaa !101
  %477 = add nuw nsw i32 %467, 1
  %478 = icmp eq i32 %477, %342
  br i1 %478, label %479, label %466, !llvm.loop !266

479:                                              ; preds = %466, %462
  %480 = add nuw nsw i32 %451, 1
  %481 = load i16, ptr %430, align 8, !tbaa !127
  %482 = sext i16 %481 to i32
  %483 = icmp slt i32 %480, %482
  br i1 %483, label %450, label %484, !llvm.loop !267

484:                                              ; preds = %479, %426, %434
  %485 = add nuw nsw i64 %427, 1
  %486 = icmp eq i64 %485, %346
  br i1 %486, label %422, label %426, !llvm.loop !268

487:                                              ; preds = %423, %526
  %488 = phi i64 [ 0, %423 ], [ %527, %526 ]
  %489 = getelementptr inbounds ptr, ptr %2, i64 %488
  %490 = load ptr, ptr %489, align 8, !tbaa !41
  %491 = getelementptr inbounds %struct.CCGEdge, ptr %490, i64 0, i32 2
  %492 = load i16, ptr %491, align 8, !tbaa !118
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %487
  br i1 %424, label %513, label %526

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.CCGEdge, ptr %490, i64 0, i32 7
  %497 = load ptr, ptr %496, align 8, !tbaa !91
  %498 = load ptr, ptr %497, align 8, !tbaa !41
  %499 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %498, ptr noundef nonnull %490) #25
  br i1 %424, label %500, label %526

500:                                              ; preds = %495, %500
  %501 = phi i32 [ %511, %500 ], [ 0, %495 ]
  %502 = tail call fastcc ptr @_edge_getNo(ptr noundef %490, i32 noundef %10, i32 noundef %501, i32 noundef %16, i32 noundef %14) #25
  %503 = tail call fastcc ptr @_face_getIFNoEdge(ptr noundef %498, ptr noundef %490, i32 noundef %499, i32 noundef %10, i32 noundef %501, i32 noundef %10, i32 noundef %16, i32 noundef %14) #25
  %504 = load float, ptr %503, align 4, !tbaa !101
  store float %504, ptr %502, align 4, !tbaa !101
  %505 = getelementptr inbounds float, ptr %503, i64 1
  %506 = load float, ptr %505, align 4, !tbaa !101
  %507 = getelementptr inbounds float, ptr %502, i64 1
  store float %506, ptr %507, align 4, !tbaa !101
  %508 = getelementptr inbounds float, ptr %503, i64 2
  %509 = load float, ptr %508, align 4, !tbaa !101
  %510 = getelementptr inbounds float, ptr %502, i64 2
  store float %509, ptr %510, align 4, !tbaa !101
  %511 = add nuw nsw i32 %501, 1
  %512 = icmp eq i32 %511, %11
  br i1 %512, label %526, label %500, !llvm.loop !269

513:                                              ; preds = %494, %513
  %514 = phi i32 [ %524, %513 ], [ 0, %494 ]
  %515 = tail call fastcc ptr @_edge_getNo(ptr noundef %490, i32 noundef %10, i32 noundef %514, i32 noundef %16, i32 noundef %14) #25
  %516 = tail call fastcc ptr @_edge_getCo(ptr noundef %490, i32 noundef %10, i32 noundef %514, i32 noundef %16) #25
  %517 = load float, ptr %516, align 4, !tbaa !101
  store float %517, ptr %515, align 4, !tbaa !101
  %518 = getelementptr inbounds float, ptr %516, i64 1
  %519 = load float, ptr %518, align 4, !tbaa !101
  %520 = getelementptr inbounds float, ptr %515, i64 1
  store float %519, ptr %520, align 4, !tbaa !101
  %521 = getelementptr inbounds float, ptr %516, i64 2
  %522 = load float, ptr %521, align 4, !tbaa !101
  %523 = getelementptr inbounds float, ptr %515, i64 2
  store float %522, ptr %523, align 4, !tbaa !101
  tail call fastcc void @Normalize(ptr noundef nonnull %515) #25
  %524 = add nuw nsw i32 %514, 1
  %525 = icmp eq i32 %524, %11
  br i1 %525, label %526, label %513, !llvm.loop !270

526:                                              ; preds = %500, %513, %495, %494
  %527 = add nuw nsw i64 %488, 1
  %528 = icmp eq i64 %527, %425
  br i1 %528, label %529, label %487, !llvm.loop !271

529:                                              ; preds = %526, %422
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ccgSubSurf_updateLevels(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %2, ptr %5, align 8, !tbaa !41
  store i32 %3, ptr %6, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !52
  call fastcc void @ccgSubSurf__allFaces(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %11) #25
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = load i32, ptr %6, align 4, !tbaa !51
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %14, i32 noundef %15, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #25
  %16 = icmp sgt i32 %13, %1
  %17 = load i32, ptr %9, align 4, !tbaa !51
  br i1 %16, label %18, label %22

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !tbaa !41
  %20 = load ptr, ptr %8, align 8, !tbaa !41
  %21 = load i32, ptr %10, align 4, !tbaa !51
  br label %27

22:                                               ; preds = %27, %4
  %23 = icmp sgt i32 %17, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load ptr, ptr %7, align 8, !tbaa !41
  %26 = zext nneg i32 %17 to i64
  br label %37

27:                                               ; preds = %18, %27
  %28 = phi i32 [ %1, %18 ], [ %29, %27 ]
  tail call fastcc void @ccgSubSurf__calcSubdivLevel(ptr noundef %0, ptr noundef %19, ptr noundef %20, ptr noundef %14, i32 noundef %17, i32 noundef %21, i32 noundef %15, i32 noundef %28) #25
  %29 = add i32 %28, 1
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %22, label %27, !llvm.loop !272

31:                                               ; preds = %37, %22
  %32 = load i32, ptr %10, align 4, !tbaa !51
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8, !tbaa !41
  %36 = zext nneg i32 %32 to i64
  br label %48

37:                                               ; preds = %24, %37
  %38 = phi i64 [ 0, %24 ], [ %42, %37 ]
  %39 = getelementptr inbounds ptr, ptr %25, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.CCGVert, ptr %40, i64 0, i32 4
  store i16 0, ptr %41, align 4, !tbaa !123
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %26
  br i1 %43, label %31, label %37, !llvm.loop !273

44:                                               ; preds = %48, %31
  %45 = icmp sgt i32 %15, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %44
  %47 = zext nneg i32 %15 to i64
  br label %55

48:                                               ; preds = %34, %48
  %49 = phi i64 [ 0, %34 ], [ %53, %48 ]
  %50 = getelementptr inbounds ptr, ptr %35, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.CCGEdge, ptr %51, i64 0, i32 3
  store i16 0, ptr %52, align 2, !tbaa !145
  %53 = add nuw nsw i64 %49, 1
  %54 = icmp eq i64 %53, %36
  br i1 %54, label %44, label %48, !llvm.loop !274

55:                                               ; preds = %46, %55
  %56 = phi i64 [ 0, %46 ], [ %60, %55 ]
  %57 = getelementptr inbounds ptr, ptr %14, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = getelementptr inbounds %struct.CCGFace, ptr %58, i64 0, i32 3
  store i16 0, ptr %59, align 2, !tbaa !156
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp eq i64 %60, %47
  br i1 %61, label %62, label %55, !llvm.loop !275

62:                                               ; preds = %55, %44
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %64 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void %63(ptr noundef %64) #26
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  %66 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %65(ptr noundef %66) #26
  %67 = load i32, ptr %11, align 4, !tbaa !51
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %70(ptr noundef %14) #26
  br label %71

71:                                               ; preds = %69, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccgSubSurf__calcSubdivLevel(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 !PGOFuncName !276 {
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = tail call fastcc i32 @ccg_edgesize(i32 noundef %7) #25
  %12 = tail call fastcc i32 @ccg_gridsize(i32 noundef %7) #25
  %13 = add nsw i32 %7, 1
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp sgt i32 %6, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = add i32 %12, -1
  %23 = icmp sgt i32 %12, 1
  %24 = icmp sgt i32 %12, 2
  %25 = zext nneg i32 %6 to i64
  br label %32

26:                                               ; preds = %134, %8
  %27 = icmp sgt i32 %5, 0
  br i1 %27, label %28, label %137

28:                                               ; preds = %26
  %29 = add i32 %11, -1
  %30 = icmp sgt i32 %11, 1
  %31 = zext nneg i32 %5 to i64
  br label %144

32:                                               ; preds = %21, %134
  %33 = phi i64 [ 0, %21 ], [ %135, %134 ]
  %34 = getelementptr inbounds ptr, ptr %3, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.CCGFace, ptr %35, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !127
  %38 = icmp sgt i16 %37, 0
  br i1 %38, label %41, label %134

39:                                               ; preds = %64
  %40 = icmp sgt i16 %65, 0
  br i1 %40, label %69, label %134

41:                                               ; preds = %32, %64
  %42 = phi i16 [ %65, %64 ], [ %37, %32 ]
  %43 = phi i32 [ %66, %64 ], [ 0, %32 ]
  br i1 %23, label %44, label %64

44:                                               ; preds = %41, %60
  %45 = phi i32 [ %48, %60 ], [ 0, %41 ]
  %46 = shl nuw nsw i32 %45, 1
  %47 = or disjoint i32 %46, 1
  %48 = add nuw nsw i32 %45, 1
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi i32 [ 0, %44 ], [ %54, %49 ]
  %51 = shl nuw nsw i32 %50, 1
  %52 = or disjoint i32 %51, 1
  %53 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %43, i32 noundef %50, i32 noundef %45, i32 noundef %10, i32 noundef %15) #25
  %54 = add nuw nsw i32 %50, 1
  %55 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %43, i32 noundef %54, i32 noundef %45, i32 noundef %10, i32 noundef %15) #25
  %56 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %43, i32 noundef %54, i32 noundef %48, i32 noundef %10, i32 noundef %15) #25
  %57 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %43, i32 noundef %50, i32 noundef %48, i32 noundef %10, i32 noundef %15) #25
  %58 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %43, i32 noundef %52, i32 noundef %47, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef nonnull %58, ptr noundef nonnull %53, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef %0) #25
  %59 = icmp eq i32 %54, %22
  br i1 %59, label %60, label %49, !llvm.loop !277

60:                                               ; preds = %49
  %61 = icmp eq i32 %48, %22
  br i1 %61, label %62, label %44, !llvm.loop !278

62:                                               ; preds = %60
  %63 = load i16, ptr %36, align 8, !tbaa !127
  br label %64

64:                                               ; preds = %62, %41
  %65 = phi i16 [ %63, %62 ], [ %42, %41 ]
  %66 = add nuw nsw i32 %43, 1
  %67 = sext i16 %65 to i32
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %41, label %39, !llvm.loop !279

69:                                               ; preds = %39, %129
  %70 = phi i32 [ %130, %129 ], [ 0, %39 ]
  br i1 %23, label %71, label %129

71:                                               ; preds = %69
  %72 = add nuw nsw i32 %70, 1
  br label %74

73:                                               ; preds = %74
  br i1 %24, label %89, label %129

74:                                               ; preds = %71, %74
  %75 = phi i32 [ 0, %71 ], [ %79, %74 ]
  %76 = shl nuw nsw i32 %75, 1
  %77 = or disjoint i32 %76, 1
  %78 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %35, i32 noundef %7, i32 noundef %70, i32 noundef %75, i32 noundef %10, i32 noundef %15) #25
  %79 = add nuw nsw i32 %75, 1
  %80 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %35, i32 noundef %7, i32 noundef %70, i32 noundef %79, i32 noundef %10, i32 noundef %15) #25
  %81 = load i16, ptr %36, align 8, !tbaa !127
  %82 = sext i16 %81 to i32
  %83 = srem i32 %72, %82
  %84 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %35, i32 noundef %13, i32 noundef %83, i32 noundef 1, i32 noundef %77, i32 noundef %10, i32 noundef %15) #25
  %85 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %35, i32 noundef %13, i32 noundef %70, i32 noundef %77, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  %86 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %35, i32 noundef %13, i32 noundef %70, i32 noundef %77, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef nonnull %86, ptr noundef nonnull %78, ptr noundef nonnull %80, ptr noundef nonnull %84, ptr noundef nonnull %85, ptr noundef %0) #25
  %87 = icmp eq i32 %79, %22
  br i1 %87, label %73, label %74, !llvm.loop !280

88:                                               ; preds = %106
  br i1 %24, label %109, label %129

89:                                               ; preds = %73, %106
  %90 = phi i32 [ %107, %106 ], [ 1, %73 ]
  br i1 %23, label %91, label %106

91:                                               ; preds = %89
  %92 = shl nuw nsw i32 %90, 1
  %93 = add nsw i32 %92, -1
  %94 = or disjoint i32 %92, 1
  br label %95

95:                                               ; preds = %91, %95
  %96 = phi i32 [ 0, %91 ], [ %100, %95 ]
  %97 = shl nuw nsw i32 %96, 1
  %98 = or disjoint i32 %97, 1
  %99 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %70, i32 noundef %90, i32 noundef %96, i32 noundef %10, i32 noundef %15) #25
  %100 = add nuw nsw i32 %96, 1
  %101 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %70, i32 noundef %90, i32 noundef %100, i32 noundef %10, i32 noundef %15) #25
  %102 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %93, i32 noundef %98, i32 noundef %10, i32 noundef %15) #25
  %103 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %94, i32 noundef %98, i32 noundef %10, i32 noundef %15) #25
  %104 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %92, i32 noundef %98, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef nonnull %104, ptr noundef nonnull %99, ptr noundef nonnull %101, ptr noundef nonnull %102, ptr noundef nonnull %103, ptr noundef %0) #25
  %105 = icmp eq i32 %100, %22
  br i1 %105, label %106, label %95, !llvm.loop !281

106:                                              ; preds = %95, %89
  %107 = add nuw nsw i32 %90, 1
  %108 = icmp eq i32 %107, %22
  br i1 %108, label %88, label %89, !llvm.loop !282

109:                                              ; preds = %88, %126
  %110 = phi i32 [ %127, %126 ], [ 1, %88 ]
  br i1 %23, label %111, label %126

111:                                              ; preds = %109
  %112 = shl nuw nsw i32 %110, 1
  %113 = add nsw i32 %112, -1
  %114 = or disjoint i32 %112, 1
  br label %115

115:                                              ; preds = %111, %115
  %116 = phi i32 [ 0, %111 ], [ %120, %115 ]
  %117 = shl nuw nsw i32 %116, 1
  %118 = or disjoint i32 %117, 1
  %119 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %70, i32 noundef %116, i32 noundef %110, i32 noundef %10, i32 noundef %15) #25
  %120 = add nuw nsw i32 %116, 1
  %121 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %7, i32 noundef %70, i32 noundef %120, i32 noundef %110, i32 noundef %10, i32 noundef %15) #25
  %122 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %118, i32 noundef %113, i32 noundef %10, i32 noundef %15) #25
  %123 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %118, i32 noundef %114, i32 noundef %10, i32 noundef %15) #25
  %124 = tail call fastcc ptr @_face_getIFCo(ptr noundef %35, i32 noundef %13, i32 noundef %70, i32 noundef %118, i32 noundef %112, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef nonnull %124, ptr noundef nonnull %119, ptr noundef nonnull %121, ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef %0) #25
  %125 = icmp eq i32 %120, %22
  br i1 %125, label %126, label %115, !llvm.loop !283

126:                                              ; preds = %115, %109
  %127 = add nuw nsw i32 %110, 1
  %128 = icmp eq i32 %127, %22
  br i1 %128, label %129, label %109, !llvm.loop !284

129:                                              ; preds = %126, %69, %73, %88
  %130 = add nuw nsw i32 %70, 1
  %131 = load i16, ptr %36, align 8, !tbaa !127
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %69, label %134, !llvm.loop !285

134:                                              ; preds = %129, %32, %39
  %135 = add nuw nsw i64 %33, 1
  %136 = icmp eq i64 %135, %25
  br i1 %136, label %26, label %32, !llvm.loop !286

137:                                              ; preds = %196, %26
  %138 = icmp sgt i32 %4, 0
  br i1 %138, label %139, label %199

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %141 = shl nsw i32 -1, %7
  %142 = xor i32 %141, -1
  %143 = zext nneg i32 %4 to i64
  br label %204

144:                                              ; preds = %28, %196
  %145 = phi i64 [ 0, %28 ], [ %197, %196 ]
  %146 = getelementptr inbounds ptr, ptr %2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !41
  %148 = tail call fastcc float @EDGE_getSharpness(ptr noundef %147, i32 noundef %7) #25
  %149 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %147) #25, !range !129
  %150 = icmp ne i32 %149, 0
  %151 = fcmp ogt float %148, 1.000000e+00
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %144
  br i1 %30, label %154, label %196

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.CCGEdge, ptr %147, i64 0, i32 2
  %156 = getelementptr inbounds %struct.CCGEdge, ptr %147, i64 0, i32 7
  br label %167

157:                                              ; preds = %144
  br i1 %30, label %158, label %196

158:                                              ; preds = %157, %158
  %159 = phi i32 [ %163, %158 ], [ 0, %157 ]
  %160 = shl nuw nsw i32 %159, 1
  %161 = or disjoint i32 %160, 1
  %162 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %7, i32 noundef %159, i32 noundef %15) #25
  %163 = add nuw nsw i32 %159, 1
  %164 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %7, i32 noundef %163, i32 noundef %15) #25
  %165 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %13, i32 noundef %161, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %165, ptr noundef nonnull %162, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %165, ptr noundef nonnull %164, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %165, float noundef 5.000000e-01, ptr noundef %0) #25
  %166 = icmp eq i32 %163, %29
  br i1 %166, label %196, label %158, !llvm.loop !287

167:                                              ; preds = %154, %190
  %168 = phi i32 [ 0, %154 ], [ %172, %190 ]
  %169 = shl nuw nsw i32 %168, 1
  %170 = or disjoint i32 %169, 1
  %171 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %7, i32 noundef %168, i32 noundef %15) #25
  %172 = add nuw nsw i32 %168, 1
  %173 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %7, i32 noundef %172, i32 noundef %15) #25
  %174 = tail call fastcc ptr @_edge_getCo(ptr noundef %147, i32 noundef %13, i32 noundef %170, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef %17, ptr noundef nonnull %171, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %173, ptr noundef %0) #25
  %175 = load i16, ptr %155, align 8, !tbaa !118
  %176 = icmp sgt i16 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %167, %177
  %178 = phi i64 [ %184, %177 ], [ 0, %167 ]
  %179 = load ptr, ptr %156, align 8, !tbaa !91
  %180 = getelementptr inbounds ptr, ptr %179, i64 %178
  %181 = load ptr, ptr %180, align 8, !tbaa !41
  %182 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %181, ptr noundef nonnull %147) #25
  %183 = tail call fastcc ptr @_face_getIFCoEdge(ptr noundef %181, ptr noundef nonnull %147, i32 noundef %182, i32 noundef %13, i32 noundef %170, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %183, ptr noundef %0) #25
  %184 = add nuw nsw i64 %178, 1
  %185 = load i16, ptr %155, align 8, !tbaa !118
  %186 = sext i16 %185 to i64
  %187 = icmp slt i64 %184, %186
  br i1 %187, label %177, label %188, !llvm.loop !288

188:                                              ; preds = %177
  %189 = trunc i64 %184 to i32
  br label %190

190:                                              ; preds = %188, %167
  %191 = phi i32 [ 0, %167 ], [ %189, %188 ]
  %192 = sitofp i32 %191 to float
  %193 = fadd float %192, 2.000000e+00
  %194 = fdiv float 1.000000e+00, %193
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef %194, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef %19, ptr noundef nonnull %171, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %173, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef 5.000000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %174, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %19, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %148, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %174, ptr noundef %19, ptr noundef %0) #25
  %195 = icmp eq i32 %172, %29
  br i1 %195, label %196, label %167, !llvm.loop !289

196:                                              ; preds = %190, %158, %153, %157
  %197 = add nuw nsw i64 %145, 1
  %198 = icmp eq i64 %197, %31
  br i1 %198, label %137, label %144, !llvm.loop !290

199:                                              ; preds = %383, %137
  br i1 %27, label %200, label %460

200:                                              ; preds = %199
  %201 = add i32 %11, -1
  %202 = icmp sgt i32 %11, 2
  %203 = zext nneg i32 %5 to i64
  br label %386

204:                                              ; preds = %139, %383
  %205 = phi i64 [ 0, %139 ], [ %384, %383 ]
  %206 = getelementptr inbounds ptr, ptr %1, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !41
  %208 = tail call fastcc ptr @_vert_getCo(ptr noundef %207, i32 noundef %7, i32 noundef %15) #25
  %209 = tail call fastcc ptr @_vert_getCo(ptr noundef %207, i32 noundef %13, i32 noundef %15) #25
  %210 = tail call fastcc i32 @VERT_seam(ptr noundef %207) #25, !range !129
  %211 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 2
  %212 = load i16, ptr %211, align 8, !tbaa !113
  %213 = sext i16 %212 to i32
  %214 = icmp sgt i16 %212, 0
  br i1 %214, label %215, label %249

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !95
  %218 = icmp eq i32 %210, 0
  %219 = zext nneg i32 %213 to i64
  br label %220

220:                                              ; preds = %215, %232
  %221 = phi i64 [ 0, %215 ], [ %240, %232 ]
  %222 = phi i32 [ 0, %215 ], [ %239, %232 ]
  %223 = phi i32 [ 1, %215 ], [ %237, %232 ]
  %224 = phi float [ 0.000000e+00, %215 ], [ %236, %232 ]
  %225 = phi i32 [ 0, %215 ], [ %233, %232 ]
  %226 = getelementptr inbounds ptr, ptr %217, i64 %221
  %227 = load ptr, ptr %226, align 8, !tbaa !41
  %228 = tail call fastcc float @EDGE_getSharpness(ptr noundef %227, i32 noundef %7) #25
  br i1 %218, label %232, label %229

229:                                              ; preds = %220
  %230 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %227) #25, !range !129
  %231 = add nsw i32 %230, %225
  br label %232

232:                                              ; preds = %229, %220
  %233 = phi i32 [ %225, %220 ], [ %231, %229 ]
  %234 = fcmp une float %228, 0.000000e+00
  %235 = select i1 %234, float %228, float -0.000000e+00
  %236 = fadd float %224, %235
  %237 = select i1 %234, i32 %223, i32 0
  %238 = zext i1 %234 to i32
  %239 = add nuw nsw i32 %222, %238
  %240 = add nuw nsw i64 %221, 1
  %241 = icmp eq i64 %240, %219
  br i1 %241, label %242, label %220, !llvm.loop !291

242:                                              ; preds = %232
  %243 = icmp eq i32 %239, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %242
  %245 = sitofp i32 %239 to float
  %246 = fdiv float %236, %245
  %247 = fcmp ogt float %246, 1.000000e+00
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %204, %244, %248, %242
  %250 = phi i32 [ %239, %248 ], [ %239, %244 ], [ 0, %242 ], [ 0, %204 ]
  %251 = phi i32 [ %237, %248 ], [ %237, %244 ], [ %237, %242 ], [ 1, %204 ]
  %252 = phi i32 [ %233, %248 ], [ %233, %244 ], [ %233, %242 ], [ 0, %204 ]
  %253 = phi float [ 1.000000e+00, %248 ], [ %246, %244 ], [ %236, %242 ], [ 0.000000e+00, %204 ]
  %254 = icmp sgt i32 %252, 1
  %255 = icmp eq i32 %252, %213
  %256 = and i1 %254, %255
  %257 = select i1 %256, i32 %210, i32 0
  %258 = icmp eq i16 %212, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %249
  %260 = load i32, ptr %140, align 4, !tbaa !175
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259, %249
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %209, ptr noundef nonnull %208, ptr noundef %0) #25
  br label %338

263:                                              ; preds = %259
  %264 = tail call fastcc i32 @_vert_isBoundary(ptr noundef nonnull %207) #25, !range !129
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %294, label %266

266:                                              ; preds = %263
  tail call fastcc void @VertDataZero(ptr noundef %19, ptr noundef nonnull %0) #25
  %267 = load i16, ptr %211, align 8, !tbaa !113
  %268 = icmp sgt i16 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 6
  br label %271

271:                                              ; preds = %269, %284
  %272 = phi i16 [ %267, %269 ], [ %285, %284 ]
  %273 = phi i64 [ 0, %269 ], [ %287, %284 ]
  %274 = phi i32 [ 0, %269 ], [ %286, %284 ]
  %275 = load ptr, ptr %270, align 8, !tbaa !95
  %276 = getelementptr inbounds ptr, ptr %275, i64 %273
  %277 = load ptr, ptr %276, align 8, !tbaa !41
  %278 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %277) #25, !range !129
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %271
  %281 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %277, ptr noundef nonnull %207, i32 noundef %7, i32 noundef 1, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %281, ptr noundef %0) #25
  %282 = add nsw i32 %274, 1
  %283 = load i16, ptr %211, align 8, !tbaa !113
  br label %284

284:                                              ; preds = %280, %271
  %285 = phi i16 [ %283, %280 ], [ %272, %271 ]
  %286 = phi i32 [ %282, %280 ], [ %274, %271 ]
  %287 = add nuw nsw i64 %273, 1
  %288 = sext i16 %285 to i64
  %289 = icmp slt i64 %287, %288
  br i1 %289, label %271, label %290, !llvm.loop !292

290:                                              ; preds = %284, %266
  %291 = phi i32 [ 0, %266 ], [ %286, %284 ]
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %209, ptr noundef nonnull %208, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %209, float noundef 7.500000e-01, ptr noundef %0) #25
  %292 = sitofp i32 %291 to float
  %293 = fdiv float 2.500000e-01, %292
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %293, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %209, ptr noundef %19, ptr noundef %0) #25
  br label %338

294:                                              ; preds = %263
  tail call fastcc void @VertDataZero(ptr noundef %17, ptr noundef nonnull %0) #25
  %295 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 3
  %296 = load i16, ptr %295, align 2, !tbaa !112
  %297 = icmp sgt i16 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 7
  br label %300

300:                                              ; preds = %298, %300
  %301 = phi i64 [ 0, %298 ], [ %307, %300 ]
  %302 = load ptr, ptr %299, align 8, !tbaa !97
  %303 = getelementptr inbounds ptr, ptr %302, i64 %301
  %304 = load ptr, ptr %303, align 8, !tbaa !41
  %305 = tail call fastcc i32 @_face_getVertIndex(ptr noundef %304, ptr noundef nonnull %207) #25
  %306 = tail call fastcc ptr @_face_getIFCo(ptr noundef %304, i32 noundef %13, i32 noundef %305, i32 noundef %142, i32 noundef %142, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %306, ptr noundef %0) #25
  %307 = add nuw nsw i64 %301, 1
  %308 = load i16, ptr %295, align 2, !tbaa !112
  %309 = sext i16 %308 to i64
  %310 = icmp slt i64 %307, %309
  br i1 %310, label %300, label %311, !llvm.loop !293

311:                                              ; preds = %300
  %312 = trunc i64 %307 to i32
  br label %313

313:                                              ; preds = %311, %294
  %314 = phi i32 [ 0, %294 ], [ %312, %311 ]
  %315 = sitofp i32 %314 to float
  %316 = fdiv float 1.000000e+00, %315
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef %316, ptr noundef %0) #25
  tail call fastcc void @VertDataZero(ptr noundef %19, ptr noundef %0) #25
  %317 = load i16, ptr %211, align 8, !tbaa !113
  %318 = icmp sgt i16 %317, 0
  br i1 %318, label %319, label %333

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 6
  br label %321

321:                                              ; preds = %319, %321
  %322 = phi i64 [ 0, %319 ], [ %327, %321 ]
  %323 = load ptr, ptr %320, align 8, !tbaa !95
  %324 = getelementptr inbounds ptr, ptr %323, i64 %322
  %325 = load ptr, ptr %324, align 8, !tbaa !41
  %326 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %325, ptr noundef nonnull %207, i32 noundef %7, i32 noundef 1, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %326, ptr noundef %0) #25
  %327 = add nuw nsw i64 %322, 1
  %328 = load i16, ptr %211, align 8, !tbaa !113
  %329 = sext i16 %328 to i64
  %330 = icmp slt i64 %327, %329
  br i1 %330, label %321, label %331, !llvm.loop !294

331:                                              ; preds = %321
  %332 = trunc i64 %327 to i32
  br label %333

333:                                              ; preds = %331, %313
  %334 = phi i32 [ 0, %313 ], [ %332, %331 ]
  %335 = sitofp i32 %334 to float
  %336 = fdiv float 1.000000e+00, %335
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %336, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %209, ptr noundef nonnull %208, ptr noundef %0) #25
  %337 = fadd float %335, -2.000000e+00
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %209, float noundef %337, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %209, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %209, ptr noundef %19, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %209, float noundef %336, ptr noundef %0) #25
  br label %338

338:                                              ; preds = %290, %333, %262
  %339 = icmp sgt i32 %250, 1
  br i1 %339, label %340, label %346

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 3
  %342 = load i16, ptr %341, align 2, !tbaa !112
  %343 = icmp ne i16 %342, 0
  %344 = icmp ne i32 %257, 0
  %345 = select i1 %343, i1 true, i1 %344
  br i1 %345, label %348, label %383

346:                                              ; preds = %338
  %347 = icmp eq i32 %257, 0
  br i1 %347, label %383, label %348

348:                                              ; preds = %346, %340
  tail call fastcc void @VertDataZero(ptr noundef %17, ptr noundef %0) #25
  %349 = icmp ne i32 %257, 0
  %350 = select i1 %349, float 1.000000e+00, float %253
  %351 = select i1 %349, i32 %252, i32 %250
  %352 = load i16, ptr %211, align 8, !tbaa !113
  %353 = icmp sgt i16 %352, 0
  br i1 %353, label %354, label %374

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.CCGVert, ptr %207, i64 0, i32 6
  br label %356

356:                                              ; preds = %354, %369
  %357 = phi i64 [ 0, %354 ], [ %370, %369 ]
  %358 = load ptr, ptr %355, align 8, !tbaa !95
  %359 = getelementptr inbounds ptr, ptr %358, i64 %357
  %360 = load ptr, ptr %359, align 8, !tbaa !41
  br i1 %349, label %361, label %364

361:                                              ; preds = %356
  %362 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %360) #25, !range !129
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %369, label %367

364:                                              ; preds = %356
  %365 = tail call fastcc float @EDGE_getSharpness(ptr noundef %360, i32 noundef %7) #25
  %366 = fcmp une float %365, 0.000000e+00
  br i1 %366, label %367, label %369

367:                                              ; preds = %364, %361
  %368 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %360, ptr noundef nonnull %207, i32 noundef %7, i32 noundef 1, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %368, ptr noundef %0) #25
  br label %369

369:                                              ; preds = %367, %364, %361
  %370 = add nuw nsw i64 %357, 1
  %371 = load i16, ptr %211, align 8, !tbaa !113
  %372 = sext i16 %371 to i64
  %373 = icmp slt i64 %370, %372
  br i1 %373, label %356, label %374, !llvm.loop !295

374:                                              ; preds = %369, %348
  %375 = sitofp i32 %351 to float
  %376 = fdiv float 1.000000e+00, %375
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef %376, ptr noundef %0) #25
  %377 = icmp ne i32 %351, 2
  %378 = icmp ne i32 %251, 0
  %379 = or i1 %349, %377
  %380 = select i1 %379, i1 true, i1 %378
  br i1 %380, label %381, label %382

381:                                              ; preds = %374
  tail call fastcc void @VertDataCopy(ptr noundef %19, ptr noundef nonnull %208, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %19, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %350, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef %19, ptr noundef %0) #25
  br label %382

382:                                              ; preds = %374, %381
  tail call fastcc void @VertDataCopy(ptr noundef %19, ptr noundef nonnull %208, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef 7.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef 2.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %19, ptr noundef nonnull %209, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %350, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %209, ptr noundef %19, ptr noundef %0) #25
  br label %383

383:                                              ; preds = %340, %382, %346
  %384 = add nuw nsw i64 %205, 1
  %385 = icmp eq i64 %384, %143
  br i1 %385, label %199, label %204, !llvm.loop !296

386:                                              ; preds = %200, %457
  %387 = phi i64 [ 0, %200 ], [ %458, %457 ]
  %388 = getelementptr inbounds ptr, ptr %2, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !41
  %390 = tail call fastcc float @EDGE_getSharpness(ptr noundef %389, i32 noundef %7) #25
  %391 = fcmp une float %390, 0.000000e+00
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = fadd float %390, 0.000000e+00
  %394 = fcmp ogt float %393, 1.000000e+00
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %386, %392, %395
  %397 = phi float [ 1.000000e+00, %395 ], [ %393, %392 ], [ 0.000000e+00, %386 ]
  %398 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %389) #25, !range !129
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %396
  br i1 %202, label %405, label %457

401:                                              ; preds = %396
  br i1 %202, label %402, label %457

402:                                              ; preds = %401
  %403 = getelementptr inbounds %struct.CCGEdge, ptr %389, i64 0, i32 2
  %404 = getelementptr inbounds %struct.CCGEdge, ptr %389, i64 0, i32 7
  br label %415

405:                                              ; preds = %400, %405
  %406 = phi i32 [ %412, %405 ], [ 1, %400 ]
  %407 = shl nuw nsw i32 %406, 1
  %408 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %406, i32 noundef %15) #25
  %409 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %13, i32 noundef %407, i32 noundef %15) #25
  %410 = add nsw i32 %406, -1
  %411 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %410, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef %19, ptr noundef nonnull %411, ptr noundef %0) #25
  %412 = add nuw nsw i32 %406, 1
  %413 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %412, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %413, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef 5.000000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %409, ptr noundef nonnull %408, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %409, float noundef 7.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef 2.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %409, ptr noundef %19, ptr noundef %0) #25
  %414 = icmp eq i32 %412, %201
  br i1 %414, label %457, label %405, !llvm.loop !297

415:                                              ; preds = %402, %455
  %416 = phi i32 [ 1, %402 ], [ %422, %455 ]
  %417 = shl nuw nsw i32 %416, 1
  %418 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %416, i32 noundef %15) #25
  %419 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %13, i32 noundef %417, i32 noundef %15) #25
  tail call fastcc void @VertDataZero(ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataZero(ptr noundef %19, ptr noundef %0) #25
  %420 = add nsw i32 %416, -1
  %421 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %420, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %421, ptr noundef %0) #25
  %422 = add nuw nsw i32 %416, 1
  %423 = tail call fastcc ptr @_edge_getCo(ptr noundef %389, i32 noundef %7, i32 noundef %422, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %423, ptr noundef %0) #25
  %424 = load i16, ptr %403, align 8, !tbaa !118
  %425 = icmp sgt i16 %424, 0
  br i1 %425, label %426, label %444

426:                                              ; preds = %415
  %427 = add nsw i32 %417, -1
  %428 = or disjoint i32 %417, 1
  br label %429

429:                                              ; preds = %426, %429
  %430 = phi i64 [ 0, %426 ], [ %438, %429 ]
  %431 = load ptr, ptr %404, align 8, !tbaa !91
  %432 = getelementptr inbounds ptr, ptr %431, i64 %430
  %433 = load ptr, ptr %432, align 8, !tbaa !41
  %434 = tail call fastcc i32 @_face_getEdgeIndex(ptr noundef %433, ptr noundef nonnull %389) #25
  %435 = tail call fastcc ptr @_face_getIFCoEdge(ptr noundef %433, ptr noundef nonnull %389, i32 noundef %434, i32 noundef %13, i32 noundef %427, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %435, ptr noundef %0) #25
  %436 = tail call fastcc ptr @_face_getIFCoEdge(ptr noundef %433, ptr noundef nonnull %389, i32 noundef %434, i32 noundef %13, i32 noundef %428, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %436, ptr noundef %0) #25
  %437 = tail call fastcc ptr @_face_getIFCoEdge(ptr noundef %433, ptr noundef nonnull %389, i32 noundef %434, i32 noundef %7, i32 noundef %416, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %19, ptr noundef nonnull %437, ptr noundef %0) #25
  %438 = add nuw nsw i64 %430, 1
  %439 = load i16, ptr %403, align 8, !tbaa !118
  %440 = sext i16 %439 to i64
  %441 = icmp slt i64 %438, %440
  br i1 %441, label %429, label %442, !llvm.loop !298

442:                                              ; preds = %429
  %443 = trunc i64 %438 to i32
  br label %444

444:                                              ; preds = %442, %415
  %445 = phi i32 [ 0, %415 ], [ %443, %442 ]
  %446 = sitofp i32 %445 to float
  %447 = fmul float %446, 2.000000e+00
  %448 = fdiv float 1.000000e+00, %447
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef %448, ptr noundef %0) #25
  %449 = fadd float %446, 2.000000e+00
  %450 = fdiv float 1.000000e+00, %449
  tail call fastcc void @VertDataMulN(ptr noundef %19, float noundef %450, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %419, ptr noundef nonnull %418, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %419, float noundef %446, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %419, ptr noundef %17, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %419, ptr noundef %19, ptr noundef %0) #25
  %451 = add nuw nsw i32 %445, 2
  %452 = sitofp i32 %451 to float
  %453 = fdiv float 1.000000e+00, %452
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %419, float noundef %453, ptr noundef %0) #25
  br i1 %391, label %454, label %455

454:                                              ; preds = %444
  tail call fastcc void @VertDataCopy(ptr noundef %17, ptr noundef nonnull %418, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef 6.000000e+00, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %421, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef %17, ptr noundef nonnull %423, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef 1.250000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef %17, ptr noundef nonnull %419, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef %17, float noundef %397, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %419, ptr noundef %17, ptr noundef %0) #25
  br label %455

455:                                              ; preds = %454, %444
  %456 = icmp eq i32 %422, %201
  br i1 %456, label %457, label %415, !llvm.loop !299

457:                                              ; preds = %405, %455, %400, %401
  %458 = add nuw nsw i64 %387, 1
  %459 = icmp eq i64 %458, %203
  br i1 %459, label %460, label %386, !llvm.loop !300

460:                                              ; preds = %457, %199
  %461 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %462 = load i32, ptr %14, align 8, !tbaa !57
  %463 = sext i32 %462 to i64
  %464 = tail call ptr %461(i64 noundef %463, ptr noundef nonnull @.str.7) #26
  %465 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %466 = load i32, ptr %14, align 8, !tbaa !57
  %467 = sext i32 %466 to i64
  %468 = tail call ptr %465(i64 noundef %467, ptr noundef nonnull @.str.8) #26
  br i1 %20, label %469, label %579

469:                                              ; preds = %460
  %470 = add i32 %12, -1
  %471 = icmp sgt i32 %12, 2
  %472 = zext nneg i32 %6 to i64
  br label %473

473:                                              ; preds = %469, %576
  %474 = phi i64 [ 0, %469 ], [ %577, %576 ]
  %475 = getelementptr inbounds ptr, ptr %3, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !41
  tail call fastcc void @VertDataZero(ptr noundef %464, ptr noundef %0) #25
  %477 = getelementptr inbounds %struct.CCGFace, ptr %476, i64 0, i32 2
  %478 = load i16, ptr %477, align 8, !tbaa !127
  %479 = icmp sgt i16 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %473, %480
  %481 = phi i32 [ %483, %480 ], [ 0, %473 ]
  %482 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %476, i32 noundef %13, i32 noundef %481, i32 noundef 1, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %464, ptr noundef nonnull %482, ptr noundef %0) #25
  %483 = add nuw nsw i32 %481, 1
  %484 = load i16, ptr %477, align 8, !tbaa !127
  %485 = sext i16 %484 to i32
  %486 = icmp slt i32 %483, %485
  br i1 %486, label %480, label %487, !llvm.loop !301

487:                                              ; preds = %480, %473
  %488 = phi i16 [ %478, %473 ], [ %484, %480 ]
  %489 = sitofp i16 %488 to float
  %490 = fdiv float 1.000000e+00, %489
  tail call fastcc void @VertDataMulN(ptr noundef %464, float noundef %490, ptr noundef %0) #25
  tail call fastcc void @VertDataZero(ptr noundef %468, ptr noundef %0) #25
  %491 = load i16, ptr %477, align 8, !tbaa !127
  %492 = icmp sgt i16 %491, 0
  br i1 %492, label %493, label %500

493:                                              ; preds = %487, %493
  %494 = phi i32 [ %496, %493 ], [ 0, %487 ]
  %495 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %476, i32 noundef %7, i32 noundef %494, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAdd(ptr noundef %468, ptr noundef nonnull %495, ptr noundef %0) #25
  %496 = add nuw nsw i32 %494, 1
  %497 = load i16, ptr %477, align 8, !tbaa !127
  %498 = sext i16 %497 to i32
  %499 = icmp slt i32 %496, %498
  br i1 %499, label %493, label %500, !llvm.loop !302

500:                                              ; preds = %493, %487
  %501 = phi i16 [ %491, %487 ], [ %497, %493 ]
  %502 = sitofp i16 %501 to float
  %503 = fdiv float 1.000000e+00, %502
  tail call fastcc void @VertDataMulN(ptr noundef %468, float noundef %503, ptr noundef %0) #25
  %504 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %476) #25
  %505 = load i16, ptr %477, align 8, !tbaa !127
  %506 = sitofp i16 %505 to float
  %507 = fadd float %506, -2.000000e+00
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %504, float noundef %507, ptr noundef %0) #25
  %508 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %476) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %508, ptr noundef %464, ptr noundef %0) #25
  %509 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %476) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %509, ptr noundef %468, ptr noundef %0) #25
  %510 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %476) #25
  %511 = load i16, ptr %477, align 8, !tbaa !127
  %512 = sitofp i16 %511 to float
  %513 = fdiv float 1.000000e+00, %512
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %510, float noundef %513, ptr noundef %0) #25
  %514 = load i16, ptr %477, align 8, !tbaa !127
  %515 = icmp sgt i16 %514, 0
  br i1 %515, label %516, label %576

516:                                              ; preds = %500, %571
  %517 = phi i32 [ %572, %571 ], [ 0, %500 ]
  br i1 %471, label %523, label %519

518:                                              ; preds = %545
  br i1 %471, label %521, label %519

519:                                              ; preds = %516, %518
  %520 = add nuw nsw i32 %517, 1
  br label %571

521:                                              ; preds = %518
  %522 = add nuw nsw i32 %517, 1
  br label %548

523:                                              ; preds = %516, %545
  %524 = phi i32 [ %546, %545 ], [ 1, %516 ]
  %525 = shl nuw nsw i32 %524, 1
  %526 = add nsw i32 %525, -1
  %527 = or disjoint i32 %525, 1
  br label %528

528:                                              ; preds = %523, %528
  %529 = phi i32 [ 1, %523 ], [ %543, %528 ]
  %530 = shl nuw nsw i32 %529, 1
  %531 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %7, i32 noundef %517, i32 noundef %524, i32 noundef %529, i32 noundef %10, i32 noundef %15) #25
  %532 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %525, i32 noundef %530, i32 noundef %10, i32 noundef %15) #25
  %533 = add nsw i32 %530, -1
  %534 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %526, i32 noundef %533, i32 noundef %10, i32 noundef %15) #25
  %535 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %527, i32 noundef %533, i32 noundef %10, i32 noundef %15) #25
  %536 = or disjoint i32 %530, 1
  %537 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %527, i32 noundef %536, i32 noundef %10, i32 noundef %15) #25
  %538 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %526, i32 noundef %536, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef %464, ptr noundef nonnull %534, ptr noundef nonnull %535, ptr noundef nonnull %537, ptr noundef nonnull %538, ptr noundef %0) #25
  %539 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %526, i32 noundef %530, i32 noundef %10, i32 noundef %15) #25
  %540 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %527, i32 noundef %530, i32 noundef %10, i32 noundef %15) #25
  %541 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %525, i32 noundef %533, i32 noundef %10, i32 noundef %15) #25
  %542 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %525, i32 noundef %536, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef %468, ptr noundef nonnull %539, ptr noundef nonnull %540, ptr noundef nonnull %541, ptr noundef nonnull %542, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %532, ptr noundef nonnull %531, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef nonnull %532, ptr noundef %464, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %532, float noundef 2.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %532, ptr noundef %468, ptr noundef %0) #25
  %543 = add nuw nsw i32 %529, 1
  %544 = icmp eq i32 %543, %470
  br i1 %544, label %545, label %528, !llvm.loop !303

545:                                              ; preds = %528
  %546 = add nuw nsw i32 %524, 1
  %547 = icmp eq i32 %546, %470
  br i1 %547, label %518, label %523, !llvm.loop !304

548:                                              ; preds = %521, %548
  %549 = phi i32 [ 1, %521 ], [ %569, %548 ]
  %550 = shl nuw nsw i32 %549, 1
  %551 = tail call fastcc ptr @_face_getIECo(ptr noundef %476, i32 noundef %7, i32 noundef %517, i32 noundef %549, i32 noundef %10, i32 noundef %15) #25
  %552 = tail call fastcc ptr @_face_getIECo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %550, i32 noundef %10, i32 noundef %15) #25
  %553 = load i16, ptr %477, align 8, !tbaa !127
  %554 = sext i16 %553 to i32
  %555 = srem i32 %522, %554
  %556 = add nsw i32 %550, -1
  %557 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %555, i32 noundef 1, i32 noundef %556, i32 noundef %10, i32 noundef %15) #25
  %558 = or disjoint i32 %550, 1
  %559 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %555, i32 noundef 1, i32 noundef %558, i32 noundef %10, i32 noundef %15) #25
  %560 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %558, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  %561 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %556, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef %464, ptr noundef nonnull %557, ptr noundef nonnull %559, ptr noundef nonnull %560, ptr noundef nonnull %561, ptr noundef %0) #25
  %562 = tail call fastcc ptr @_face_getIECo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %556, i32 noundef %10, i32 noundef %15) #25
  %563 = tail call fastcc ptr @_face_getIECo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %558, i32 noundef %10, i32 noundef %15) #25
  %564 = load i16, ptr %477, align 8, !tbaa !127
  %565 = sext i16 %564 to i32
  %566 = srem i32 %522, %565
  %567 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %566, i32 noundef 1, i32 noundef %550, i32 noundef %10, i32 noundef %15) #25
  %568 = tail call fastcc ptr @_face_getIFCo(ptr noundef %476, i32 noundef %13, i32 noundef %517, i32 noundef %550, i32 noundef 1, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataAvg4(ptr noundef %468, ptr noundef nonnull %562, ptr noundef nonnull %563, ptr noundef nonnull %567, ptr noundef nonnull %568, ptr noundef %0) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %552, ptr noundef nonnull %551, ptr noundef %0) #25
  tail call fastcc void @VertDataSub(ptr noundef nonnull %552, ptr noundef %464, ptr noundef %0) #25
  tail call fastcc void @VertDataMulN(ptr noundef nonnull %552, float noundef 2.500000e-01, ptr noundef %0) #25
  tail call fastcc void @VertDataAdd(ptr noundef nonnull %552, ptr noundef %468, ptr noundef %0) #25
  %569 = add nuw nsw i32 %549, 1
  %570 = icmp eq i32 %569, %470
  br i1 %570, label %571, label %548, !llvm.loop !305

571:                                              ; preds = %548, %519
  %572 = phi i32 [ %520, %519 ], [ %522, %548 ]
  %573 = load i16, ptr %477, align 8, !tbaa !127
  %574 = sext i16 %573 to i32
  %575 = icmp slt i32 %572, %574
  br i1 %575, label %516, label %576, !llvm.loop !306

576:                                              ; preds = %571, %500
  %577 = add nuw nsw i64 %474, 1
  %578 = icmp eq i64 %577, %472
  br i1 %578, label %579, label %473, !llvm.loop !307

579:                                              ; preds = %576, %460
  %580 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %580(ptr noundef %464) #26
  %581 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %581(ptr noundef %468) #26
  %582 = tail call fastcc i32 @ccg_gridsize(i32 noundef %13) #25
  %583 = add i32 %582, -1
  br i1 %27, label %584, label %588

584:                                              ; preds = %579
  %585 = tail call fastcc i32 @ccg_edgesize(i32 noundef %13) #25
  %586 = add nsw i32 %585, -1
  %587 = zext nneg i32 %5 to i64
  br label %593

588:                                              ; preds = %593, %579
  br i1 %20, label %589, label %676

589:                                              ; preds = %588
  %590 = icmp sgt i32 %582, 2
  %591 = icmp sgt i32 %582, 1
  %592 = zext nneg i32 %6 to i64
  br label %607

593:                                              ; preds = %584, %593
  %594 = phi i64 [ 0, %584 ], [ %605, %593 ]
  %595 = getelementptr inbounds ptr, ptr %2, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !41
  %597 = tail call fastcc ptr @_edge_getCo(ptr noundef %596, i32 noundef %13, i32 noundef 0, i32 noundef %15) #25
  %598 = getelementptr inbounds %struct.CCGEdge, ptr %596, i64 0, i32 5
  %599 = load ptr, ptr %598, align 8, !tbaa !121
  %600 = tail call fastcc ptr @_vert_getCo(ptr noundef %599, i32 noundef %13, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %597, ptr noundef nonnull %600, ptr noundef %0) #25
  %601 = tail call fastcc ptr @_edge_getCo(ptr noundef %596, i32 noundef %13, i32 noundef %586, i32 noundef %15) #25
  %602 = getelementptr inbounds %struct.CCGEdge, ptr %596, i64 0, i32 6
  %603 = load ptr, ptr %602, align 8, !tbaa !122
  %604 = tail call fastcc ptr @_vert_getCo(ptr noundef %603, i32 noundef %13, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %601, ptr noundef nonnull %604, ptr noundef %0) #25
  %605 = add nuw nsw i64 %594, 1
  %606 = icmp eq i64 %605, %587
  br i1 %606, label %588, label %593, !llvm.loop !308

607:                                              ; preds = %589, %673
  %608 = phi i64 [ 0, %589 ], [ %674, %673 ]
  %609 = getelementptr inbounds ptr, ptr %3, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !41
  %611 = getelementptr inbounds %struct.CCGFace, ptr %610, i64 0, i32 2
  %612 = load i16, ptr %611, align 8, !tbaa !127
  %613 = icmp sgt i16 %612, 0
  br i1 %613, label %614, label %673

614:                                              ; preds = %607, %668
  %615 = phi i64 [ %669, %668 ], [ 0, %607 ]
  %616 = phi i16 [ %670, %668 ], [ %612, %607 ]
  %617 = sext i16 %616 to i32
  %618 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %610) #25
  %619 = getelementptr inbounds ptr, ptr %618, i64 %615
  %620 = load ptr, ptr %619, align 8, !tbaa !41
  %621 = trunc i64 %615 to i32
  %622 = add i32 %621, -1
  %623 = add i32 %622, %617
  %624 = srem i32 %623, %617
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds ptr, ptr %618, i64 %625
  %627 = load ptr, ptr %626, align 8, !tbaa !41
  %628 = trunc i64 %615 to i32
  %629 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %15) #25
  %630 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %610) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %629, ptr noundef nonnull %630, ptr noundef %0) #25
  %631 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef 0, i32 noundef %10, i32 noundef %15) #25
  %632 = tail call fastcc ptr @FACE_getCenterData(ptr noundef nonnull %610) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %631, ptr noundef nonnull %632, ptr noundef %0) #25
  %633 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef %583, i32 noundef %583, i32 noundef %10, i32 noundef %15) #25
  %634 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %610) #25
  %635 = getelementptr inbounds ptr, ptr %634, i64 %615
  %636 = load ptr, ptr %635, align 8, !tbaa !41
  %637 = tail call fastcc ptr @_vert_getCo(ptr noundef %636, i32 noundef %13, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %633, ptr noundef nonnull %637, ptr noundef %0) #25
  %638 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef %583, i32 noundef %10, i32 noundef %15) #25
  %639 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %610) #25
  %640 = getelementptr inbounds ptr, ptr %639, i64 %615
  %641 = load ptr, ptr %640, align 8, !tbaa !41
  %642 = tail call fastcc ptr @_edge_getCo(ptr noundef %641, i32 noundef %13, i32 noundef %583, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %638, ptr noundef nonnull %642, ptr noundef %0) #25
  br i1 %590, label %643, label %646

643:                                              ; preds = %614
  %644 = trunc i64 %615 to i32
  %645 = add i32 %644, 1
  br label %647

646:                                              ; preds = %647, %614
  br i1 %591, label %657, label %668

647:                                              ; preds = %643, %647
  %648 = phi i32 [ 1, %643 ], [ %655, %647 ]
  %649 = tail call fastcc ptr @_face_getIECo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef %648, i32 noundef %10, i32 noundef %15) #25
  %650 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %628, i32 noundef %648, i32 noundef 0, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %650, ptr noundef nonnull %649, ptr noundef %0) #25
  %651 = load i16, ptr %611, align 8, !tbaa !127
  %652 = sext i16 %651 to i32
  %653 = srem i32 %645, %652
  %654 = tail call fastcc ptr @_face_getIFCo(ptr noundef nonnull %610, i32 noundef %13, i32 noundef %653, i32 noundef 0, i32 noundef %648, i32 noundef %10, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %654, ptr noundef nonnull %649, ptr noundef %0) #25
  %655 = add nuw nsw i32 %648, 1
  %656 = icmp eq i32 %655, %583
  br i1 %656, label %646, label %647, !llvm.loop !309

657:                                              ; preds = %646, %657
  %658 = phi i32 [ %666, %657 ], [ 0, %646 ]
  %659 = sub nsw i32 %583, %658
  %660 = tail call fastcc ptr @_face_getIFCo(ptr noundef %610, i32 noundef %13, i32 noundef %628, i32 noundef %583, i32 noundef %658, i32 noundef %10, i32 noundef %15) #25
  %661 = load ptr, ptr %635, align 8, !tbaa !41
  %662 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %620, ptr noundef %661, i32 noundef %13, i32 noundef %659, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %660, ptr noundef nonnull %662, ptr noundef %0) #25
  %663 = tail call fastcc ptr @_face_getIFCo(ptr noundef %610, i32 noundef %13, i32 noundef %628, i32 noundef %658, i32 noundef %583, i32 noundef %10, i32 noundef %15) #25
  %664 = load ptr, ptr %635, align 8, !tbaa !41
  %665 = tail call fastcc ptr @_edge_getCoVert(ptr noundef %627, ptr noundef %664, i32 noundef %13, i32 noundef %659, i32 noundef %15) #25
  tail call fastcc void @VertDataCopy(ptr noundef nonnull %663, ptr noundef nonnull %665, ptr noundef %0) #25
  %666 = add nuw nsw i32 %658, 1
  %667 = icmp eq i32 %666, %583
  br i1 %667, label %668, label %657, !llvm.loop !310

668:                                              ; preds = %657, %646
  %669 = add nuw nsw i64 %615, 1
  %670 = load i16, ptr %611, align 8, !tbaa !127
  %671 = sext i16 %670 to i64
  %672 = icmp slt i64 %669, %671
  br i1 %672, label %614, label %673, !llvm.loop !311

673:                                              ; preds = %668, %607
  %674 = add nuw nsw i64 %608, 1
  %675 = icmp eq i64 %674, %592
  br i1 %675, label %676, label %607, !llvm.loop !312

676:                                              ; preds = %673, %588
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !68
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !68
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !68
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVert(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = tail call fastcc ptr @_ehash_lookup(ptr noundef %3, ptr noundef %1) #25
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getEdge(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call fastcc ptr @_ehash_lookup(ptr noundef %4, ptr noundef %1) #25
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getFace(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call fastcc ptr @_ehash_lookup(ptr noundef %4, ptr noundef %1) #25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getSubdivisionLevels(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeSize(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call i32 @ccgSubSurf_getEdgeLevelSize(ptr noundef %0, i32 noundef %3) #25
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeLevelSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ccg_edgesize(i32 noundef %1) #25
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getGridSize(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call i32 @ccgSubSurf_getGridLevelSize(ptr noundef %0, i32 noundef %3) #25
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getGridLevelSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ccg_gridsize(i32 noundef %1) #25
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getSimpleSubdiv(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !175
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertVertHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getVertAge(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @ccgSubSurf_getVertUserData(ptr noundef nonnull %0, ptr noundef %1) #25
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !104
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sub nsw i32 %9, %14
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %15, %6 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getVertUserData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = tail call fastcc ptr @VERT_getLevelData(ptr noundef %1) #25
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = add nsw i32 %7, 1
  %9 = mul nsw i32 %8, %5
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VERT_getLevelData(ptr noundef readnone %0) unnamed_addr #0 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getVertNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2, !tbaa !112
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVertFace(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !112
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getVertNumEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !113
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVertEdge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !113
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr @ccgSubSurf_getVertLevelData(ptr noundef %0, ptr noundef %1, i32 noundef %4) #25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertLevelData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = tail call fastcc ptr @_vert_getCo(ptr noundef %1, i32 noundef %2, i32 noundef %11) #25
  br label %13

13:                                               ; preds = %3, %5, %9
  %14 = phi ptr [ %12, %9 ], [ null, %5 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeEdgeHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getEdgeAge(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @ccgSubSurf_getEdgeUserData(ptr noundef nonnull %0, ptr noundef %1) #25
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sub nsw i32 %9, %14
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %15, %6 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @EDGE_getLevelData(ptr noundef readnone %0) unnamed_addr #0 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ccg_edgebase(i32 noundef %0) unnamed_addr #0 !PGOFuncName !315 {
  %2 = shl nuw i32 1, %0
  %3 = add i32 %0, -1
  %4 = add i32 %3, %2
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !118
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getEdgeFace(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !118
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeVert0(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeVert1(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeDataArray(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = tail call ptr @ccgSubSurf_getEdgeData(ptr noundef %0, ptr noundef %1, i32 noundef 0) #25
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = tail call ptr @ccgSubSurf_getEdgeLevelData(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5) #25
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeLevelData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = icmp slt i32 %8, %3
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = tail call fastcc ptr @_edge_getCo(ptr noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %12) #25
  br label %14

14:                                               ; preds = %4, %6, %10
  %15 = phi ptr [ %13, %10 ], [ null, %6 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @ccgSubSurf_getEdgeCrease(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 4, !tbaa !144
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getFaceFaceHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getFaceAge(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @ccgSubSurf_getFaceUserData(ptr noundef nonnull %0, ptr noundef %1) #25
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %11 = load i32, ptr %10, align 8, !tbaa !106
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sub nsw i32 %9, %14
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %15, %6 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceUserData(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = tail call fastcc i32 @ccg_gridsize(i32 noundef %4) #25
  %6 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %1) #25
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !127
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 %5, %11
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %12, %5
  %15 = add nsw i32 %13, %14
  %16 = mul nsw i32 %15, %8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %6, i64 %17
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getFaceNumVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !127
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getFaceVert(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !127
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %0) #25
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %2, %4, %9
  %15 = phi ptr [ %13, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getFaceEdge(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !127
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %0) #25
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %2, %4, %9
  %15 = phi ptr [ %13, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getFaceEdgeIndex(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %0) #25
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %19, label %9, !llvm.loop !316

17:                                               ; preds = %9
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %14, %17, %2
  %20 = phi i32 [ -1, %2 ], [ %18, %17 ], [ -1, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceCenterData(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridEdgeDataArray(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = tail call ptr @ccgSubSurf_getFaceGridEdgeData(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #25
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridEdgeData(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = tail call fastcc ptr @_face_getIECo(ptr noundef %1, i32 noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %6, i32 noundef %8) #25
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridDataArray(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = tail call ptr @ccgSubSurf_getFaceGridData(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0) #25
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridData(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = tail call fastcc ptr @_face_getIFCo(ptr noundef %1, i32 noundef %7, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %7, i32 noundef %9) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ccgSubSurf_getVertIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = tail call fastcc ptr @_ehashIterator_new(ptr noundef %2) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @_ehashIterator_new(ptr noundef %0) unnamed_addr #1 !PGOFuncName !317 {
  %2 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call ptr %3(ptr noundef %5, i32 noundef 24) #26
  store ptr %0, ptr %6, align 8, !tbaa !318
  %7 = getelementptr inbounds %struct._EHashIterator, ptr %6, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !320
  %8 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !70
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %1, %15
  %12 = phi i64 [ -1, %1 ], [ %13, %15 ]
  %13 = add nsw i64 %12, 1
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !72
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  store ptr %18, ptr %7, align 8, !tbaa !320
  %19 = icmp eq ptr %18, null
  br i1 %19, label %11, label %20, !llvm.loop !321

20:                                               ; preds = %15
  %21 = trunc i64 %13 to i32
  br label %22

22:                                               ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %9, %11 ]
  %24 = getelementptr inbounds %struct._EHashIterator, ptr %6, i64 0, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !322
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ccgSubSurf_getEdgeIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call fastcc ptr @_ehashIterator_new(ptr noundef %3) #25
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ccgSubSurf_getFaceIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call fastcc ptr @_ehashIterator_new(ptr noundef %3) #25
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgVertIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc ptr @_ehashIterator_getCurrent(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @_ehashIterator_getCurrent(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !323 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgVertIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc i32 @_ehashIterator_isStopped(ptr noundef %0) #25, !range !129
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_ehashIterator_isStopped(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !324 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgVertIterator_next(ptr nocapture noundef %0) local_unnamed_addr #9 {
  tail call fastcc void @_ehashIterator_next(ptr noundef %0) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ehashIterator_next(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %7, ptr %2, align 8, !tbaa !320
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !318
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = load i32, ptr %6, align 8, !tbaa !322
  %14 = sext i32 %13 to i64
  %15 = sext i32 %12 to i64
  br label %16

16:                                               ; preds = %9, %20
  %17 = phi i64 [ %14, %9 ], [ %18, %20 ]
  %18 = add nsw i64 %17, 1
  %19 = icmp eq i64 %18, %15
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !72
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  store ptr %23, ptr %2, align 8, !tbaa !320
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %25, !llvm.loop !326

25:                                               ; preds = %20
  %26 = trunc i64 %18 to i32
  br label %27

27:                                               ; preds = %16, %25
  %28 = phi i32 [ %26, %25 ], [ %12, %16 ]
  store i32 %28, ptr %6, align 8, !tbaa !322
  br label %29

29:                                               ; preds = %27, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ccgVertIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @_ehashIterator_free(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_ehashIterator_free(ptr noundef %0) unnamed_addr #1 !PGOFuncName !327 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void %4(ptr noundef %6, ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgEdgeIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc ptr @_ehashIterator_getCurrent(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgEdgeIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc i32 @_ehashIterator_isStopped(ptr noundef %0) #25, !range !129
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgEdgeIterator_next(ptr nocapture noundef %0) local_unnamed_addr #9 {
  tail call fastcc void @_ehashIterator_next(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ccgEdgeIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @_ehashIterator_free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgFaceIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc ptr @_ehashIterator_getCurrent(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgFaceIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call fastcc i32 @_ehashIterator_isStopped(ptr noundef %0) #25, !range !129
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgFaceIterator_next(ptr nocapture noundef %0) local_unnamed_addr #9 {
  tail call fastcc void @_ehashIterator_next(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ccgFaceIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @_ehashIterator_free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call fastcc i32 @ccg_edgesize(i32 noundef %3) #25
  %5 = tail call fastcc i32 @ccg_gridsize(i32 noundef %3) #25
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct._EHash, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = add nsw i32 %4, -2
  %14 = mul nsw i32 %12, %13
  %15 = add nsw i32 %14, %8
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = add nsw i32 %15, %19
  %21 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = add nsw i32 %5, -2
  %24 = add i32 %5, -1
  %25 = mul i32 %23, %24
  %26 = mul nsw i32 %25, %22
  %27 = add nsw i32 %20, %26
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call fastcc i32 @ccg_edgesize(i32 noundef %3) #25
  %5 = tail call fastcc i32 @ccg_gridsize(i32 noundef %3) #25
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = add nsw i32 %4, -1
  %11 = mul nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !102
  %14 = add nsw i32 %5, -1
  %15 = add nsw i32 %5, -2
  %16 = shl i32 %14, 1
  %17 = mul i32 %16, %15
  %18 = add nsw i32 %17, %14
  %19 = mul nsw i32 %18, %13
  %20 = add nsw i32 %19, %11
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call fastcc i32 @ccg_gridsize(i32 noundef %3) #25
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = add nsw i32 %4, -1
  %8 = mul nsw i32 %7, %7
  %9 = mul nsw i32 %8, %6
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @CCG_key(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  store i32 %2, ptr %0, align 4, !tbaa !328
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !330
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 8
  store i32 %8, ptr %9, align 4, !tbaa !331
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !110
  %12 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 7
  store i32 %11, ptr %12, align 4, !tbaa !332
  %13 = icmp eq i32 %8, 0
  %14 = add i32 %5, -12
  %15 = select i1 %13, i32 -1, i32 %14
  %16 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = tail call i32 @ccgSubSurf_getGridLevelSize(ptr noundef nonnull %1, i32 noundef %2) #25
  %18 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !333
  %19 = mul nsw i32 %17, %17
  %20 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !334
  %21 = mul nsw i32 %19, %5
  %22 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 4
  store i32 %21, ptr %22, align 4, !tbaa !335
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 9
  store i32 %24, ptr %25, align 4, !tbaa !336
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 16
  %29 = load i32, ptr %28, align 4, !tbaa !109
  br label %30

30:                                               ; preds = %3, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %3 ]
  %32 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  store i32 %31, ptr %32, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @CCG_key_top_level(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = tail call i32 @ccgSubSurf_getSubdivisionLevels(ptr noundef %1) #25
  tail call void @CCG_key(ptr noundef %0, ptr noundef %1, i32 noundef %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias noundef ptr @_stdAllocator_alloc(ptr nocapture readnone %0, i32 noundef %1) #16 !PGOFuncName !337 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #28
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noalias noundef ptr @_stdAllocator_realloc(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 %3) #17 !PGOFuncName !338 {
  %5 = sext i32 %2 to i64
  %6 = tail call ptr @realloc(ptr noundef %1, i64 noundef %5) #29
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_stdAllocator_free(ptr nocapture readnone %0, ptr nocapture noundef %1) #17 !PGOFuncName !339 {
  tail call void @free(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_vert_remEdge(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #14 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !113
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %7
  br i1 %12, label %24, label %13, !llvm.loop !341

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %9, i64 %14
  %20 = add nsw i16 %4, -1
  store i16 %20, ptr %3, align 8, !tbaa !113
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %9, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  store ptr %23, ptr %19, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %10, %2, %18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_vert_remFace(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #14 !PGOFuncName !342 {
  %3 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 2, !tbaa !112
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %7
  br i1 %12, label %24, label %13, !llvm.loop !343

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %9, i64 %14
  %20 = add nsw i16 %4, -1
  store i16 %20, ptr %3, align 2, !tbaa !112
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %9, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  store ptr %23, ptr %19, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %10, %2, %18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_edge_remFace(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #14 !PGOFuncName !344 {
  %3 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !118
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %7
  br i1 %12, label %24, label %13, !llvm.loop !345

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %9, i64 %14
  %20 = add nsw i16 %4, -1
  store i16 %20, ptr %3, align 8, !tbaa !118
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %9, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  store ptr %23, ptr %19, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %10, %2, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_vert_addEdge(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !346 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !113
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 3
  %14 = add nsw i32 %13, 8
  %15 = tail call ptr %5(ptr noundef %7, ptr noundef %9, i32 noundef %14, i32 noundef %13) #26
  store ptr %15, ptr %8, align 8, !tbaa !95
  %16 = load i16, ptr %10, align 8, !tbaa !113
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 8, !tbaa !113
  %18 = sext i16 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  store ptr %1, ptr %19, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_vert_addFace(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !348 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !112
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 3
  %14 = add nsw i32 %13, 8
  %15 = tail call ptr %5(ptr noundef %7, ptr noundef %9, i32 noundef %14, i32 noundef %13) #26
  store ptr %15, ptr %8, align 8, !tbaa !97
  %16 = load i16, ptr %10, align 2, !tbaa !112
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 2, !tbaa !112
  %18 = sext i16 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  store ptr %1, ptr %19, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_edge_addFace(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !349 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !118
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 3
  %14 = add nsw i32 %13, 8
  %15 = tail call ptr %5(ptr noundef %7, ptr noundef %9, i32 noundef %14, i32 noundef %13) #26
  store ptr %15, ptr %8, align 8, !tbaa !91
  %16 = load i16, ptr %10, align 8, !tbaa !118
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 8, !tbaa !118
  %18 = sext i16 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  store ptr %1, ptr %19, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @EDGE_getSharpness(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !350 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !144
  br i1 %3, label %13, label %6

6:                                                ; preds = %2
  %7 = fcmp une float %5, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = sitofp i32 %1 to float
  %10 = fsub float %5, %9
  %11 = fcmp olt float %10, 0.000000e+00
  %12 = select i1 %11, float 0.000000e+00, float %10
  br label %13

13:                                               ; preds = %2, %8, %6
  %14 = phi float [ 0.000000e+00, %6 ], [ %12, %8 ], [ %5, %2 ]
  ret float %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_edge_isBoundary(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !351 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !118
  %4 = icmp slt i16 %3, 2
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataSub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !352 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %2, i64 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %16, %9 ]
  %11 = getelementptr inbounds float, ptr %1, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !101
  %13 = getelementptr inbounds float, ptr %0, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !101
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !101
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !353

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VERT_seam(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !354 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 4, !tbaa !123
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 1
  %6 = zext nneg i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @_vert_isBoundary(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %6
  br i1 %11, label %18, label %12, !llvm.loop !356

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds ptr, ptr %8, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = tail call fastcc i32 @_edge_isBoundary(ptr noundef %15) #25, !range !129
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18

18:                                               ; preds = %12, %9, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %9 ], [ 1, %12 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @_edge_getOtherVert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !PGOFuncName !357 {
  %3 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ccg_spacing(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !358 {
  %3 = sub nsw i32 %0, %1
  %4 = shl nuw i32 1, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_face_getIFNo(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #13 !PGOFuncName !359 {
  %9 = tail call fastcc i32 @ccg_gridsize(i32 noundef %5) #25
  %10 = tail call fastcc i32 @ccg_spacing(i32 noundef %5, i32 noundef %1) #25
  %11 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %0) #25
  %12 = add i32 %9, 1
  %13 = mul i32 %9, %2
  %14 = mul i32 %13, %12
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %15, %6
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = mul nsw i32 %9, %4
  %20 = add nsw i32 %19, %3
  %21 = mul nsw i32 %20, %10
  %22 = add nsw i32 %21, %9
  %23 = mul nsw i32 %22, %6
  %24 = add nsw i32 %23, %7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_face_calcIFNo(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #21 !PGOFuncName !360 {
  %9 = tail call fastcc ptr @_face_getIFCo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %6, i32 noundef %7) #25
  %10 = add nsw i32 %3, 1
  %11 = tail call fastcc ptr @_face_getIFCo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %10, i32 noundef %4, i32 noundef %6, i32 noundef %7) #25
  %12 = add nsw i32 %4, 1
  %13 = tail call fastcc ptr @_face_getIFCo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %10, i32 noundef %12, i32 noundef %6, i32 noundef %7) #25
  %14 = tail call fastcc ptr @_face_getIFCo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %12, i32 noundef %6, i32 noundef %7) #25
  %15 = load float, ptr %13, align 4, !tbaa !101
  %16 = load float, ptr %9, align 4, !tbaa !101
  %17 = getelementptr inbounds float, ptr %13, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !101
  %19 = getelementptr inbounds float, ptr %9, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !101
  %21 = fsub float %18, %20
  %22 = getelementptr inbounds float, ptr %13, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !101
  %24 = getelementptr inbounds float, ptr %9, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !101
  %26 = load float, ptr %14, align 4, !tbaa !101
  %27 = load float, ptr %11, align 4, !tbaa !101
  %28 = fsub float %26, %27
  %29 = getelementptr inbounds float, ptr %14, i64 1
  %30 = getelementptr inbounds float, ptr %11, i64 1
  %31 = insertelement <2 x float> poison, float %23, i64 0
  %32 = insertelement <2 x float> %31, float %15, i64 1
  %33 = insertelement <2 x float> poison, float %25, i64 0
  %34 = insertelement <2 x float> %33, float %16, i64 1
  %35 = fsub <2 x float> %32, %34
  %36 = load <2 x float>, ptr %29, align 4, !tbaa !101
  %37 = load <2 x float>, ptr %30, align 4, !tbaa !101
  %38 = fsub <2 x float> %36, %37
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %40 = insertelement <2 x float> %39, float %28, i64 1
  %41 = fneg <2 x float> %40
  %42 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %43 = insertelement <2 x float> %42, float %21, i64 0
  %44 = fmul <2 x float> %43, %41
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %35, <2 x float> %44)
  store <2 x float> %45, ptr %5, align 4, !tbaa !101
  %46 = extractelement <2 x float> %38, i64 0
  %47 = fneg float %46
  %48 = extractelement <2 x float> %35, i64 1
  %49 = fmul float %48, %47
  %50 = tail call float @llvm.fmuladd.f32(float %28, float %21, float %49)
  %51 = getelementptr inbounds float, ptr %5, i64 2
  store float %50, ptr %51, align 4, !tbaa !101
  tail call fastcc void @Normalize(ptr noundef nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @_vert_getNo(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !361 {
  %5 = tail call fastcc ptr @VERT_getLevelData(ptr noundef %0) #25
  %6 = mul nsw i32 %2, %1
  %7 = add nsw i32 %6, %3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @_face_getVertIndex(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #12 !PGOFuncName !362 {
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = tail call fastcc ptr @FACE_getVerts(ptr noundef nonnull %0) #25
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %19, label %9, !llvm.loop !363

17:                                               ; preds = %9
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %14, %17, %2
  %20 = phi i32 [ -1, %2 ], [ %18, %17 ], [ -1, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Normalize(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !364 {
  %2 = getelementptr inbounds float, ptr %0, i64 2
  %3 = load float, ptr %2, align 4, !tbaa !101
  %4 = load <2 x float>, ptr %0, align 4, !tbaa !101
  %5 = fmul <2 x float> %4, %4
  %6 = extractelement <2 x float> %5, i64 1
  %7 = extractelement <2 x float> %4, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %6)
  %9 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %8)
  %10 = tail call float @llvm.sqrt.f32(float %9)
  %11 = fcmp ogt float %10, 0x38AA95A5C0000000
  %12 = fdiv float 1.000000e+00, %10
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %14, %4
  %16 = fmul float %12, %3
  %17 = insertelement <2 x i1> poison, i1 %11, i64 0
  %18 = shufflevector <2 x i1> %17, <2 x i1> poison, <2 x i32> zeroinitializer
  %19 = select <2 x i1> %18, <2 x float> %15, <2 x float> zeroinitializer
  %20 = select i1 %11, float %16, float 0.000000e+00
  store <2 x float> %19, ptr %0, align 4
  store float %20, ptr %2, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @_face_getEdgeIndex(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #12 !PGOFuncName !365 {
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = tail call fastcc ptr @FACE_getEdges(ptr noundef nonnull %0) #25
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %19, label %9, !llvm.loop !366

17:                                               ; preds = %9
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %14, %17, %2
  %20 = phi i32 [ -1, %2 ], [ %18, %17 ], [ -1, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @_face_getIFNoEdge(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #15 !PGOFuncName !367 {
  %9 = tail call fastcc ptr @_face_getIFCoEdge(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_face_getIENo(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #13 !PGOFuncName !368 {
  %8 = tail call fastcc i32 @ccg_gridsize(i32 noundef %4) #25
  %9 = tail call fastcc i32 @ccg_spacing(i32 noundef %4, i32 noundef %1) #25
  %10 = tail call fastcc ptr @FACE_getCenterData(ptr noundef %0) #25
  %11 = add i32 %8, 1
  %12 = mul i32 %8, %2
  %13 = mul i32 %12, %11
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %14, %5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = mul nsw i32 %5, %3
  %19 = mul nsw i32 %18, %9
  %20 = add nsw i32 %19, %6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @_edge_getNo(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !369 {
  %6 = tail call fastcc i32 @ccg_edgebase(i32 noundef %1) #25
  %7 = tail call fastcc ptr @EDGE_getLevelData(ptr noundef %0) #25
  %8 = add nsw i32 %6, %2
  %9 = mul nsw i32 %8, %3
  %10 = add nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %7, i64 %11
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @_face_getIFCoEdge(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #15 !PGOFuncName !370 {
  %9 = tail call fastcc i32 @ccg_gridsize(i32 noundef %6) #25
  %10 = tail call fastcc i32 @ccg_spacing(i32 noundef %6, i32 noundef %3) #25
  %11 = mul nsw i32 %10, %4
  %12 = mul nuw nsw i32 %10, %5
  %13 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = tail call fastcc ptr @FACE_getVerts(ptr noundef %0) #25
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %14, %18
  %20 = shl nsw i32 %9, 1
  %21 = add nsw i32 %20, -2
  %22 = sub i32 %21, %11
  %23 = select i1 %19, i32 %11, i32 %22
  %24 = add nsw i32 %9, -1
  %25 = sub nsw i32 %24, %23
  %26 = sub nsw i32 %24, %12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !127
  %31 = sext i16 %30 to i32
  %32 = add i32 %2, -1
  %33 = add i32 %32, %31
  %34 = srem i32 %33, %31
  %35 = sub nsw i32 0, %26
  br label %45

36:                                               ; preds = %8
  %37 = icmp slt i32 %25, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = add nsw i32 %2, 1
  %40 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %41 = load i16, ptr %40, align 8, !tbaa !127
  %42 = sext i16 %41 to i32
  %43 = srem i32 %39, %42
  %44 = sub nsw i32 0, %25
  br label %45

45:                                               ; preds = %36, %38, %28
  %46 = phi i32 [ %34, %28 ], [ %43, %38 ], [ %2, %36 ]
  %47 = phi i32 [ %25, %28 ], [ %44, %38 ], [ %26, %36 ]
  %48 = phi i32 [ %35, %28 ], [ %26, %38 ], [ %25, %36 ]
  %49 = tail call fastcc ptr @_face_getIFCo(ptr noundef %0, i32 noundef %6, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %6, i32 noundef %7) #25
  ret ptr %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @VertDataAvg4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #10 !PGOFuncName !371 {
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %5, i64 0, i32 3, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %27, %12 ]
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !101
  %16 = getelementptr inbounds float, ptr %2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !101
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds float, ptr %3, i64 %13
  %20 = load float, ptr %19, align 4, !tbaa !101
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds float, ptr %4, i64 %13
  %23 = load float, ptr %22, align 4, !tbaa !101
  %24 = fadd float %21, %23
  %25 = fmul float %24, 2.500000e-01
  %26 = getelementptr inbounds float, ptr %0, i64 %13
  store float %25, ptr %26, align 4, !tbaa !101
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !372

29:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind }
attributes #28 = { nounwind optsize allocsize(0) }
attributes #29 = { nounwind optsize allocsize(1) }

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
!34 = !{!"CCGSubSurf.c:ccg_gridsize"}
!35 = !{!36, !37, i64 0}
!36 = !{!"CCGAllocatorIFC", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 8, !41, i64 24, i64 8, !41}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !37, i64 80}
!43 = !{!"CCGSubSurf", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !36, i64 48, !37, i64 80, !45, i64 88, !45, i64 92, !45, i64 96, !46, i64 100, !37, i64 104, !37, i64 112, !37, i64 120, !45, i64 128, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !37, i64 168, !37, i64 176, !37, i64 184, !45, i64 192, !37, i64 200, !37, i64 208}
!44 = !{!"CCGMeshIFC", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20}
!45 = !{!"int", !38, i64 0}
!46 = !{!"float", !38, i64 0}
!47 = !{!43, !37, i64 0}
!48 = !{!43, !37, i64 8}
!49 = !{!43, !37, i64 16}
!50 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51, i64 16, i64 4, !51, i64 20, i64 4, !51}
!51 = !{!45, !45, i64 0}
!52 = !{!43, !45, i64 88}
!53 = !{!43, !45, i64 128}
!54 = !{!43, !45, i64 132}
!55 = !{!43, !45, i64 136}
!56 = !{!43, !37, i64 48}
!57 = !{!43, !45, i64 40}
!58 = !{!43, !37, i64 112}
!59 = !{!43, !37, i64 120}
!60 = !{!43, !45, i64 144}
!61 = !{!"CCGSubSurf.c:_getStandardAllocatorIFC"}
!62 = !{!36, !37, i64 8}
!63 = !{!36, !37, i64 16}
!64 = !{!36, !37, i64 24}
!65 = !{!"CCGSubSurf.c:_ehash_new"}
!66 = !{!67, !37, i64 56}
!67 = !{!"_EHash", !37, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !36, i64 24, !37, i64 56}
!68 = !{!67, !45, i64 8}
!69 = !{!67, !45, i64 16}
!70 = !{!67, !45, i64 12}
!71 = !{!67, !37, i64 24}
!72 = !{!67, !37, i64 0}
!73 = !{i64 0, i64 8, !41}
!74 = !{!43, !45, i64 164}
!75 = !{!43, !37, i64 184}
!76 = !{!43, !37, i64 176}
!77 = !{!43, !37, i64 168}
!78 = !{!43, !37, i64 200}
!79 = !{!43, !37, i64 208}
!80 = !{!43, !37, i64 64}
!81 = !{!43, !37, i64 104}
!82 = !{!"CCGSubSurf.c:_ehash_free"}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!86, !37, i64 0}
!86 = !{!"_EHEntry", !37, i64 0, !37, i64 8}
!87 = distinct !{!87, !84}
!88 = !{!67, !37, i64 40}
!89 = !{!"CCGSubSurf.c:_face_free"}
!90 = !{!"CCGSubSurf.c:_edge_free"}
!91 = !{!92, !37, i64 40}
!92 = !{!"CCGEdge", !37, i64 0, !37, i64 8, !93, i64 16, !93, i64 18, !46, i64 20, !37, i64 24, !37, i64 32, !37, i64 40}
!93 = !{!"short", !38, i64 0}
!94 = !{!"CCGSubSurf.c:_vert_free"}
!95 = !{!96, !37, i64 24}
!96 = !{!"CCGVert", !37, i64 0, !37, i64 8, !93, i64 16, !93, i64 18, !93, i64 20, !93, i64 22, !37, i64 24, !37, i64 32}
!97 = !{!96, !37, i64 32}
!98 = !{!43, !45, i64 96}
!99 = !{!43, !46, i64 100}
!100 = !{!43, !45, i64 28}
!101 = !{!46, !46, i64 0}
!102 = !{!43, !45, i64 92}
!103 = !{!43, !45, i64 148}
!104 = !{!43, !45, i64 152}
!105 = !{!43, !45, i64 156}
!106 = !{!43, !45, i64 160}
!107 = !{!43, !45, i64 24}
!108 = !{!43, !45, i64 32}
!109 = !{!43, !45, i64 140}
!110 = !{!43, !45, i64 36}
!111 = !{!43, !45, i64 192}
!112 = !{!96, !93, i64 18}
!113 = !{!96, !93, i64 16}
!114 = !{!96, !37, i64 0}
!115 = !{!"CCGSubSurf.c:_ehash_lookupWithPrev"}
!116 = !{!86, !37, i64 8}
!117 = distinct !{!117, !84}
!118 = !{!92, !93, i64 16}
!119 = !{!92, !37, i64 0}
!120 = !{!"CCGSubSurf.c:_edge_unlinkMarkAndFree"}
!121 = !{!92, !37, i64 24}
!122 = !{!92, !37, i64 32}
!123 = !{!96, !93, i64 20}
!124 = !{!125, !37, i64 0}
!125 = !{!"CCGFace", !37, i64 0, !37, i64 8, !93, i64 16, !93, i64 18, !93, i64 20, !93, i64 22}
!126 = !{!"CCGSubSurf.c:_face_unlinkMarkAndFree"}
!127 = !{!125, !93, i64 16}
!128 = distinct !{!128, !84}
!129 = !{i32 0, i32 2}
!130 = distinct !{!130, !84}
!131 = distinct !{!131, !84}
!132 = distinct !{!132, !84}
!133 = !{!"CCGSubSurf.c:_vert_new"}
!134 = !{!96, !37, i64 8}
!135 = !{!"CCGSubSurf.c:VertDataCopy"}
!136 = distinct !{!136, !84}
!137 = !{!"CCGSubSurf.c:_vert_getCo"}
!138 = !{!"CCGSubSurf.c:_ehash_insert"}
!139 = distinct !{!139, !84}
!140 = distinct !{!140, !84}
!141 = !{!"CCGSubSurf.c:VertDataEqual"}
!142 = distinct !{!142, !84}
!143 = !{!"CCGSubSurf.c:FACE_getVerts"}
!144 = !{!92, !46, i64 20}
!145 = !{!92, !93, i64 18}
!146 = !{!"CCGSubSurf.c:_ehash_lookup"}
!147 = distinct !{!147, !84}
!148 = !{!"CCGSubSurf.c:_edge_new"}
!149 = !{!92, !37, i64 8}
!150 = distinct !{!150, !84}
!151 = distinct !{!151, !84}
!152 = distinct !{!152, !84}
!153 = distinct !{!153, !84}
!154 = distinct !{!154, !84}
!155 = distinct !{!155, !84}
!156 = !{!125, !93, i64 18}
!157 = distinct !{!157, !84}
!158 = distinct !{!158, !84}
!159 = !{!"CCGSubSurf.c:_vert_findEdgeTo"}
!160 = distinct !{!160, !84}
!161 = !{!"CCGSubSurf.c:FACE_getEdges"}
!162 = !{!"CCGSubSurf.c:_face_new"}
!163 = !{!125, !37, i64 8}
!164 = distinct !{!164, !84}
!165 = !{!"CCGSubSurf.c:ccgSubSurf__sync"}
!166 = distinct !{!166, !84}
!167 = distinct !{!167, !84}
!168 = distinct !{!168, !84}
!169 = distinct !{!169, !84}
!170 = distinct !{!170, !84}
!171 = distinct !{!171, !84}
!172 = distinct !{!172, !84}
!173 = distinct !{!173, !84}
!174 = distinct !{!174, !84}
!175 = !{!43, !45, i64 44}
!176 = distinct !{!176, !84}
!177 = distinct !{!177, !84}
!178 = distinct !{!178, !84}
!179 = distinct !{!179, !84}
!180 = distinct !{!180, !84}
!181 = distinct !{!181, !84}
!182 = distinct !{!182, !84}
!183 = distinct !{!183, !84}
!184 = distinct !{!184, !84}
!185 = distinct !{!185, !84}
!186 = distinct !{!186, !84}
!187 = distinct !{!187, !84}
!188 = distinct !{!188, !84}
!189 = distinct !{!189, !84}
!190 = distinct !{!190, !84}
!191 = distinct !{!191, !84}
!192 = distinct !{!192, !84}
!193 = distinct !{!193, !84}
!194 = !{!"CCGSubSurf.c:ccgSubSurf__allFaces"}
!195 = distinct !{!195, !84}
!196 = distinct !{!196, !84}
!197 = !{!"CCGSubSurf.c:FACE_getCenterData"}
!198 = !{!"CCGSubSurf.c:_face_getIFCo"}
!199 = !{!"CCGSubSurf.c:_face_getIECo"}
!200 = !{!"CCGSubSurf.c:_edge_getCoVert"}
!201 = distinct !{!201, !84}
!202 = distinct !{!202, !84}
!203 = distinct !{!203, !84}
!204 = distinct !{!204, !84}
!205 = distinct !{!205, !84}
!206 = distinct !{!206, !84}
!207 = distinct !{!207, !84}
!208 = distinct !{!208, !84}
!209 = distinct !{!209, !84}
!210 = distinct !{!210, !84}
!211 = distinct !{!211, !84}
!212 = distinct !{!212, !84}
!213 = distinct !{!213, !84}
!214 = distinct !{!214, !84}
!215 = distinct !{!215, !84}
!216 = distinct !{!216, !84}
!217 = distinct !{!217, !84}
!218 = distinct !{!218, !84}
!219 = distinct !{!219, !84}
!220 = distinct !{!220, !84}
!221 = distinct !{!221, !84}
!222 = distinct !{!222, !84}
!223 = distinct !{!223, !84}
!224 = distinct !{!224, !84}
!225 = distinct !{!225, !84}
!226 = !{!"CCGSubSurf.c:ccg_edgesize"}
!227 = !{!"CCGSubSurf.c:ccgSubSurf__effectedFaceNeighbours"}
!228 = distinct !{!228, !84}
!229 = distinct !{!229, !84}
!230 = distinct !{!230, !84}
!231 = distinct !{!231, !84}
!232 = distinct !{!232, !84}
!233 = distinct !{!233, !84}
!234 = distinct !{!234, !84}
!235 = !{!"CCGSubSurf.c:VertDataZero"}
!236 = !{!"CCGSubSurf.c:_edge_getCo"}
!237 = !{!"CCGSubSurf.c:VertDataAdd"}
!238 = distinct !{!238, !84}
!239 = !{!"CCGSubSurf.c:VertDataMulN"}
!240 = distinct !{!240, !84}
!241 = distinct !{!241, !84}
!242 = distinct !{!242, !84}
!243 = distinct !{!243, !84}
!244 = !{!"CCGSubSurf.c:ccgSubSurf__calcVertNormals"}
!245 = distinct !{!245, !84}
!246 = distinct !{!246, !84}
!247 = distinct !{!247, !84}
!248 = distinct !{!248, !84}
!249 = distinct !{!249, !84}
!250 = distinct !{!250, !84}
!251 = distinct !{!251, !84}
!252 = distinct !{!252, !84}
!253 = distinct !{!253, !84}
!254 = distinct !{!254, !84}
!255 = distinct !{!255, !84}
!256 = distinct !{!256, !84}
!257 = distinct !{!257, !84}
!258 = distinct !{!258, !84}
!259 = distinct !{!259, !84}
!260 = distinct !{!260, !84}
!261 = distinct !{!261, !84}
!262 = distinct !{!262, !84}
!263 = distinct !{!263, !84}
!264 = distinct !{!264, !84}
!265 = distinct !{!265, !84}
!266 = distinct !{!266, !84}
!267 = distinct !{!267, !84}
!268 = distinct !{!268, !84}
!269 = distinct !{!269, !84}
!270 = distinct !{!270, !84}
!271 = distinct !{!271, !84}
!272 = distinct !{!272, !84}
!273 = distinct !{!273, !84}
!274 = distinct !{!274, !84}
!275 = distinct !{!275, !84}
!276 = !{!"CCGSubSurf.c:ccgSubSurf__calcSubdivLevel"}
!277 = distinct !{!277, !84}
!278 = distinct !{!278, !84}
!279 = distinct !{!279, !84}
!280 = distinct !{!280, !84}
!281 = distinct !{!281, !84}
!282 = distinct !{!282, !84}
!283 = distinct !{!283, !84}
!284 = distinct !{!284, !84}
!285 = distinct !{!285, !84}
!286 = distinct !{!286, !84}
!287 = distinct !{!287, !84}
!288 = distinct !{!288, !84}
!289 = distinct !{!289, !84}
!290 = distinct !{!290, !84}
!291 = distinct !{!291, !84}
!292 = distinct !{!292, !84}
!293 = distinct !{!293, !84}
!294 = distinct !{!294, !84}
!295 = distinct !{!295, !84}
!296 = distinct !{!296, !84}
!297 = distinct !{!297, !84}
!298 = distinct !{!298, !84}
!299 = distinct !{!299, !84}
!300 = distinct !{!300, !84}
!301 = distinct !{!301, !84}
!302 = distinct !{!302, !84}
!303 = distinct !{!303, !84}
!304 = distinct !{!304, !84}
!305 = distinct !{!305, !84}
!306 = distinct !{!306, !84}
!307 = distinct !{!307, !84}
!308 = distinct !{!308, !84}
!309 = distinct !{!309, !84}
!310 = distinct !{!310, !84}
!311 = distinct !{!311, !84}
!312 = distinct !{!312, !84}
!313 = !{!"CCGSubSurf.c:VERT_getLevelData"}
!314 = !{!"CCGSubSurf.c:EDGE_getLevelData"}
!315 = !{!"CCGSubSurf.c:ccg_edgebase"}
!316 = distinct !{!316, !84}
!317 = !{!"CCGSubSurf.c:_ehashIterator_new"}
!318 = !{!319, !37, i64 0}
!319 = !{!"_EHashIterator", !37, i64 0, !45, i64 8, !37, i64 16}
!320 = !{!319, !37, i64 16}
!321 = distinct !{!321, !84}
!322 = !{!319, !45, i64 8}
!323 = !{!"CCGSubSurf.c:_ehashIterator_getCurrent"}
!324 = !{!"CCGSubSurf.c:_ehashIterator_isStopped"}
!325 = !{!"CCGSubSurf.c:_ehashIterator_next"}
!326 = distinct !{!326, !84}
!327 = !{!"CCGSubSurf.c:_ehashIterator_free"}
!328 = !{!329, !45, i64 0}
!329 = !{!"CCGKey", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36}
!330 = !{!329, !45, i64 4}
!331 = !{!329, !45, i64 32}
!332 = !{!329, !45, i64 28}
!333 = !{!329, !45, i64 8}
!334 = !{!329, !45, i64 12}
!335 = !{!329, !45, i64 16}
!336 = !{!329, !45, i64 36}
!337 = !{!"CCGSubSurf.c:_stdAllocator_alloc"}
!338 = !{!"CCGSubSurf.c:_stdAllocator_realloc"}
!339 = !{!"CCGSubSurf.c:_stdAllocator_free"}
!340 = !{!"CCGSubSurf.c:_vert_remEdge"}
!341 = distinct !{!341, !84}
!342 = !{!"CCGSubSurf.c:_vert_remFace"}
!343 = distinct !{!343, !84}
!344 = !{!"CCGSubSurf.c:_edge_remFace"}
!345 = distinct !{!345, !84}
!346 = !{!"CCGSubSurf.c:_vert_addEdge"}
!347 = !{!43, !37, i64 56}
!348 = !{!"CCGSubSurf.c:_vert_addFace"}
!349 = !{!"CCGSubSurf.c:_edge_addFace"}
!350 = !{!"CCGSubSurf.c:EDGE_getSharpness"}
!351 = !{!"CCGSubSurf.c:_edge_isBoundary"}
!352 = !{!"CCGSubSurf.c:VertDataSub"}
!353 = distinct !{!353, !84}
!354 = !{!"CCGSubSurf.c:VERT_seam"}
!355 = !{!"CCGSubSurf.c:_vert_isBoundary"}
!356 = distinct !{!356, !84}
!357 = !{!"CCGSubSurf.c:_edge_getOtherVert"}
!358 = !{!"CCGSubSurf.c:ccg_spacing"}
!359 = !{!"CCGSubSurf.c:_face_getIFNo"}
!360 = !{!"CCGSubSurf.c:_face_calcIFNo"}
!361 = !{!"CCGSubSurf.c:_vert_getNo"}
!362 = !{!"CCGSubSurf.c:_face_getVertIndex"}
!363 = distinct !{!363, !84}
!364 = !{!"CCGSubSurf.c:Normalize"}
!365 = !{!"CCGSubSurf.c:_face_getEdgeIndex"}
!366 = distinct !{!366, !84}
!367 = !{!"CCGSubSurf.c:_face_getIFNoEdge"}
!368 = !{!"CCGSubSurf.c:_face_getIENo"}
!369 = !{!"CCGSubSurf.c:_edge_getNo"}
!370 = !{!"CCGSubSurf.c:_face_getIFCoEdge"}
!371 = !{!"CCGSubSurf.c:VertDataAvg4"}
!372 = distinct !{!372, !84}
