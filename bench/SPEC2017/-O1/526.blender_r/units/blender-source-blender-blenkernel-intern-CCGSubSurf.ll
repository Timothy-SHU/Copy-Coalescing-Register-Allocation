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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BKE_ccg_gridsize(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = shl nuw i32 1, %2
  %4 = add nuw nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BKE_ccg_factor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sub nsw i32 %1, %0
  %4 = shl nuw i32 1, %3
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ccgSubSurf_new(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store ptr @_stdAllocator_alloc, ptr @_getStandardAllocatorIFC.ifc, align 8, !tbaa !34
  store ptr @_stdAllocator_realloc, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 1), align 8, !tbaa !39
  store ptr @_stdAllocator_free, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 2), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds (%struct.CCGAllocatorIFC, ptr @_getStandardAllocatorIFC.ifc, i64 0, i32 3), align 8, !tbaa !41
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ %2, %4 ], [ @_getStandardAllocatorIFC.ifc, %6 ]
  %9 = phi ptr [ %3, %4 ], [ null, %6 ]
  %10 = icmp slt i32 %1, 1
  br i1 %10, label %77, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !34
  %13 = tail call ptr %12(ptr noundef %9, i32 noundef 216) #23
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !42
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 5
  store ptr %9, ptr %15, align 8, !tbaa !44
  %16 = load ptr, ptr %14, align 8, !tbaa !34
  %17 = tail call ptr %16(ptr noundef %9, i32 noundef 64) #23
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !42
  %19 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 5
  store ptr %9, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 3
  store i32 0, ptr %21, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 2
  store i32 1, ptr %22, align 4, !tbaa !53
  %23 = load ptr, ptr %18, align 8, !tbaa !54
  %24 = tail call ptr %23(ptr noundef %9, i32 noundef 8) #23
  store ptr %24, ptr %17, align 8, !tbaa !55
  %25 = load i32, ptr %22, align 4, !tbaa !53
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %27, i1 false)
  store ptr %17, ptr %13, align 8, !tbaa !56
  %28 = load ptr, ptr %15, align 8, !tbaa !44
  %29 = load ptr, ptr %14, align 8, !tbaa !34
  %30 = tail call ptr %29(ptr noundef %28, i32 noundef 64) #23
  %31 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !42
  %32 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 5
  store ptr %28, ptr %32, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 1
  store i32 0, ptr %33, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 3
  store i32 0, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 2
  store i32 1, ptr %35, align 4, !tbaa !53
  %36 = load ptr, ptr %31, align 8, !tbaa !54
  %37 = tail call ptr %36(ptr noundef %28, i32 noundef 8) #23
  store ptr %37, ptr %30, align 8, !tbaa !55
  %38 = load i32, ptr %35, align 4, !tbaa !53
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %40, i1 false)
  %41 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 1
  store ptr %30, ptr %41, align 8, !tbaa !57
  %42 = load ptr, ptr %15, align 8, !tbaa !44
  %43 = load ptr, ptr %14, align 8, !tbaa !34
  %44 = tail call ptr %43(ptr noundef %42, i32 noundef 64) #23
  %45 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !42
  %46 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 5
  store ptr %42, ptr %46, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 1
  store i32 0, ptr %47, align 8, !tbaa !51
  %48 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 3
  store i32 0, ptr %48, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 2
  store i32 1, ptr %49, align 4, !tbaa !53
  %50 = load ptr, ptr %45, align 8, !tbaa !54
  %51 = tail call ptr %50(ptr noundef %42, i32 noundef 8) #23
  store ptr %51, ptr %44, align 8, !tbaa !55
  %52 = load i32, ptr %49, align 4, !tbaa !53
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %54, i1 false)
  %55 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 2
  store ptr %44, ptr %55, align 8, !tbaa !58
  %56 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !59
  %57 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 6
  store i32 %1, ptr %57, align 8, !tbaa !61
  %58 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 7
  %59 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 18
  %60 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 13
  store i32 0, ptr %60, align 8, !tbaa !62
  %61 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 14
  store i32 0, ptr %61, align 4, !tbaa !63
  %62 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 15
  store i32 0, ptr %62, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %58, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %63 = load ptr, ptr %14, align 8, !tbaa !65
  %64 = load ptr, ptr %15, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 3, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !66
  %67 = tail call ptr %63(ptr noundef %64, i32 noundef %66) #23
  %68 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 11
  store ptr %67, ptr %68, align 8, !tbaa !67
  %69 = load ptr, ptr %14, align 8, !tbaa !65
  %70 = load ptr, ptr %15, align 8, !tbaa !44
  %71 = load i32, ptr %65, align 8, !tbaa !66
  %72 = tail call ptr %69(ptr noundef %70, i32 noundef %71) #23
  %73 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 12
  store ptr %72, ptr %73, align 8, !tbaa !68
  %74 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 17
  store i32 0, ptr %74, align 8, !tbaa !69
  %75 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 22
  %76 = getelementptr inbounds %struct.CCGSubSurf, ptr %13, i64 0, i32 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  br label %77

77:                                               ; preds = %7, %11
  %78 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @ccgSubSurf_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa.struct !70
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %124, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %17 = sext i32 %13 to i64
  br label %21

18:                                               ; preds = %28, %21
  %19 = and i64 %23, 4294967295
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21, !llvm.loop !73

21:                                               ; preds = %15, %18
  %22 = phi i64 [ %17, %15 ], [ %23, %18 ]
  %23 = add nsw i64 %22, -1
  %24 = load ptr, ptr %11, align 8, !tbaa !55
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %21, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %21 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %16, align 8, !tbaa !78
  %32 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %31(ptr noundef %32, ptr noundef nonnull %29) #23
  %33 = icmp eq ptr %30, null
  br i1 %33, label %18, label %28, !llvm.loop !79

34:                                               ; preds = %18, %9
  %35 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 4, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = load ptr, ptr %11, align 8, !tbaa !55
  tail call void %36(ptr noundef %38, ptr noundef %39) #23
  %40 = load ptr, ptr %35, align 8, !tbaa !80
  %41 = load ptr, ptr %37, align 8, !tbaa !49
  tail call void %40(ptr noundef %41, ptr noundef nonnull %11) #23
  %42 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %43 = load ptr, ptr %42, align 8, !tbaa !81
  %44 = getelementptr inbounds %struct._EHash, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %49 = sext i32 %45 to i64
  br label %53

50:                                               ; preds = %60, %53
  %51 = and i64 %55, 4294967295
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %70, label %53, !llvm.loop !73

53:                                               ; preds = %47, %50
  %54 = phi i64 [ %49, %47 ], [ %55, %50 ]
  %55 = add nsw i64 %54, -1
  %56 = load ptr, ptr %43, align 8, !tbaa !55
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = icmp eq ptr %58, null
  br i1 %59, label %50, label %60

60:                                               ; preds = %53, %60
  %61 = phi ptr [ %62, %60 ], [ %58, %53 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = load ptr, ptr %48, align 8, !tbaa !78
  %64 = load ptr, ptr %4, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.CCGEdge, ptr %61, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !82
  tail call void %63(ptr noundef %64, ptr noundef %66) #23
  %67 = load ptr, ptr %48, align 8, !tbaa !78
  %68 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %67(ptr noundef %68, ptr noundef nonnull %61) #23
  %69 = icmp eq ptr %62, null
  br i1 %69, label %50, label %60, !llvm.loop !79

70:                                               ; preds = %50, %34
  %71 = getelementptr inbounds %struct._EHash, ptr %43, i64 0, i32 4, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !80
  %73 = getelementptr inbounds %struct._EHash, ptr %43, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = load ptr, ptr %43, align 8, !tbaa !55
  tail call void %72(ptr noundef %74, ptr noundef %75) #23
  %76 = load ptr, ptr %71, align 8, !tbaa !80
  %77 = load ptr, ptr %73, align 8, !tbaa !49
  tail call void %76(ptr noundef %77, ptr noundef nonnull %43) #23
  %78 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %79 = load ptr, ptr %78, align 8, !tbaa !85
  %80 = getelementptr inbounds %struct._EHash, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !53
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %110, label %83

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %85 = sext i32 %81 to i64
  br label %89

86:                                               ; preds = %96, %89
  %87 = and i64 %91, 4294967295
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %110, label %89, !llvm.loop !73

89:                                               ; preds = %83, %86
  %90 = phi i64 [ %85, %83 ], [ %91, %86 ]
  %91 = add nsw i64 %90, -1
  %92 = load ptr, ptr %79, align 8, !tbaa !55
  %93 = getelementptr inbounds ptr, ptr %92, i64 %91
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = icmp eq ptr %94, null
  br i1 %95, label %86, label %96

96:                                               ; preds = %89, %96
  %97 = phi ptr [ %98, %96 ], [ %94, %89 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !76
  %99 = load ptr, ptr %84, align 8, !tbaa !78
  %100 = load ptr, ptr %4, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.CCGVert, ptr %97, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !86
  tail call void %99(ptr noundef %100, ptr noundef %102) #23
  %103 = load ptr, ptr %84, align 8, !tbaa !78
  %104 = load ptr, ptr %4, align 8, !tbaa !44
  %105 = getelementptr inbounds %struct.CCGVert, ptr %97, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !88
  tail call void %103(ptr noundef %104, ptr noundef %106) #23
  %107 = load ptr, ptr %84, align 8, !tbaa !78
  %108 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %107(ptr noundef %108, ptr noundef nonnull %97) #23
  %109 = icmp eq ptr %98, null
  br i1 %109, label %86, label %96, !llvm.loop !79

110:                                              ; preds = %86, %70
  %111 = getelementptr inbounds %struct._EHash, ptr %79, i64 0, i32 4, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !80
  %113 = getelementptr inbounds %struct._EHash, ptr %79, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !49
  %115 = load ptr, ptr %79, align 8, !tbaa !55
  tail call void %112(ptr noundef %114, ptr noundef %115) #23
  %116 = load ptr, ptr %111, align 8, !tbaa !80
  %117 = load ptr, ptr %113, align 8, !tbaa !49
  tail call void %116(ptr noundef %117, ptr noundef nonnull %79) #23
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %119 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %120 = load ptr, ptr %119, align 8, !tbaa !89
  tail call void %118(ptr noundef %120) #23
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %122 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  tail call void %121(ptr noundef %123) #23
  br label %124

124:                                              ; preds = %110, %1
  %125 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = load ptr, ptr %4, align 8, !tbaa !44
  %128 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %129 = load ptr, ptr %128, align 8, !tbaa !68
  tail call void %126(ptr noundef %127, ptr noundef %129) #23
  %130 = load ptr, ptr %125, align 8, !tbaa !78
  %131 = load ptr, ptr %4, align 8, !tbaa !44
  %132 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %133 = load ptr, ptr %132, align 8, !tbaa !67
  tail call void %130(ptr noundef %131, ptr noundef %133) #23
  %134 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %124
  %138 = load ptr, ptr %125, align 8, !tbaa !78
  %139 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %138(ptr noundef %139, ptr noundef nonnull %135) #23
  br label %140

140:                                              ; preds = %137, %124
  %141 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !58
  %143 = getelementptr inbounds %struct._EHash, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !53
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %140
  %147 = sext i32 %144 to i64
  br label %151

148:                                              ; preds = %158, %151
  %149 = and i64 %153, 4294967295
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %164, label %151, !llvm.loop !73

151:                                              ; preds = %146, %148
  %152 = phi i64 [ %147, %146 ], [ %153, %148 ]
  %153 = add nsw i64 %152, -1
  %154 = load ptr, ptr %142, align 8, !tbaa !55
  %155 = getelementptr inbounds ptr, ptr %154, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !43
  %157 = icmp eq ptr %156, null
  br i1 %157, label %148, label %158

158:                                              ; preds = %151, %158
  %159 = phi ptr [ %160, %158 ], [ %156, %151 ]
  %160 = load ptr, ptr %159, align 8, !tbaa !76
  %161 = load ptr, ptr %125, align 8, !tbaa !78
  %162 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %161(ptr noundef %162, ptr noundef nonnull %159) #23
  %163 = icmp eq ptr %160, null
  br i1 %163, label %148, label %158, !llvm.loop !79

164:                                              ; preds = %148, %140
  %165 = getelementptr inbounds %struct._EHash, ptr %142, i64 0, i32 4, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !80
  %167 = getelementptr inbounds %struct._EHash, ptr %142, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !49
  %169 = load ptr, ptr %142, align 8, !tbaa !55
  tail call void %166(ptr noundef %168, ptr noundef %169) #23
  %170 = load ptr, ptr %165, align 8, !tbaa !80
  %171 = load ptr, ptr %167, align 8, !tbaa !49
  tail call void %170(ptr noundef %171, ptr noundef nonnull %142) #23
  %172 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !57
  %174 = getelementptr inbounds %struct._EHash, ptr %173, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !53
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %199, label %177

177:                                              ; preds = %164
  %178 = sext i32 %175 to i64
  br label %182

179:                                              ; preds = %189, %182
  %180 = and i64 %184, 4294967295
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %199, label %182, !llvm.loop !73

182:                                              ; preds = %177, %179
  %183 = phi i64 [ %178, %177 ], [ %184, %179 ]
  %184 = add nsw i64 %183, -1
  %185 = load ptr, ptr %173, align 8, !tbaa !55
  %186 = getelementptr inbounds ptr, ptr %185, i64 %184
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  %188 = icmp eq ptr %187, null
  br i1 %188, label %179, label %189

189:                                              ; preds = %182, %189
  %190 = phi ptr [ %191, %189 ], [ %187, %182 ]
  %191 = load ptr, ptr %190, align 8, !tbaa !76
  %192 = load ptr, ptr %125, align 8, !tbaa !78
  %193 = load ptr, ptr %4, align 8, !tbaa !44
  %194 = getelementptr inbounds %struct.CCGEdge, ptr %190, i64 0, i32 7
  %195 = load ptr, ptr %194, align 8, !tbaa !82
  tail call void %192(ptr noundef %193, ptr noundef %195) #23
  %196 = load ptr, ptr %125, align 8, !tbaa !78
  %197 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %196(ptr noundef %197, ptr noundef nonnull %190) #23
  %198 = icmp eq ptr %191, null
  br i1 %198, label %179, label %189, !llvm.loop !79

199:                                              ; preds = %179, %164
  %200 = getelementptr inbounds %struct._EHash, ptr %173, i64 0, i32 4, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !80
  %202 = getelementptr inbounds %struct._EHash, ptr %173, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !49
  %204 = load ptr, ptr %173, align 8, !tbaa !55
  tail call void %201(ptr noundef %203, ptr noundef %204) #23
  %205 = load ptr, ptr %200, align 8, !tbaa !80
  %206 = load ptr, ptr %202, align 8, !tbaa !49
  tail call void %205(ptr noundef %206, ptr noundef nonnull %173) #23
  %207 = load ptr, ptr %0, align 8, !tbaa !56
  %208 = getelementptr inbounds %struct._EHash, ptr %207, i64 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !53
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %237, label %211

211:                                              ; preds = %199
  %212 = sext i32 %209 to i64
  br label %216

213:                                              ; preds = %223, %216
  %214 = and i64 %218, 4294967295
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %237, label %216, !llvm.loop !73

216:                                              ; preds = %211, %213
  %217 = phi i64 [ %212, %211 ], [ %218, %213 ]
  %218 = add nsw i64 %217, -1
  %219 = load ptr, ptr %207, align 8, !tbaa !55
  %220 = getelementptr inbounds ptr, ptr %219, i64 %218
  %221 = load ptr, ptr %220, align 8, !tbaa !43
  %222 = icmp eq ptr %221, null
  br i1 %222, label %213, label %223

223:                                              ; preds = %216, %223
  %224 = phi ptr [ %225, %223 ], [ %221, %216 ]
  %225 = load ptr, ptr %224, align 8, !tbaa !76
  %226 = load ptr, ptr %125, align 8, !tbaa !78
  %227 = load ptr, ptr %4, align 8, !tbaa !44
  %228 = getelementptr inbounds %struct.CCGVert, ptr %224, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !86
  tail call void %226(ptr noundef %227, ptr noundef %229) #23
  %230 = load ptr, ptr %125, align 8, !tbaa !78
  %231 = load ptr, ptr %4, align 8, !tbaa !44
  %232 = getelementptr inbounds %struct.CCGVert, ptr %224, i64 0, i32 7
  %233 = load ptr, ptr %232, align 8, !tbaa !88
  tail call void %230(ptr noundef %231, ptr noundef %233) #23
  %234 = load ptr, ptr %125, align 8, !tbaa !78
  %235 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %234(ptr noundef %235, ptr noundef nonnull %224) #23
  %236 = icmp eq ptr %225, null
  br i1 %236, label %213, label %223, !llvm.loop !79

237:                                              ; preds = %213, %199
  %238 = getelementptr inbounds %struct._EHash, ptr %207, i64 0, i32 4, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !80
  %240 = getelementptr inbounds %struct._EHash, ptr %207, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !49
  %242 = load ptr, ptr %207, align 8, !tbaa !55
  tail call void %239(ptr noundef %241, ptr noundef %242) #23
  %243 = load ptr, ptr %238, align 8, !tbaa !80
  %244 = load ptr, ptr %240, align 8, !tbaa !49
  tail call void %243(ptr noundef %244, ptr noundef nonnull %207) #23
  %245 = load ptr, ptr %125, align 8, !tbaa !78
  %246 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void %245(ptr noundef %246, ptr noundef nonnull %0) #23
  %247 = icmp eq ptr %3, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %237
  tail call void %3(ptr noundef %5) #23
  br label %249

249:                                              ; preds = %248, %237
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_setAllowEdgeCreation(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, ptr noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void %10(ptr noundef %12, ptr noundef nonnull %6) #23
  br label %13

13:                                               ; preds = %8, %4
  %14 = icmp ne i32 %1, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  store i32 %15, ptr %16, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  store float %2, ptr %17, align 4, !tbaa !93
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = tail call ptr %19(ptr noundef %21, i32 noundef %23) #23
  store ptr %24, ptr %5, align 8, !tbaa !91
  %25 = icmp eq ptr %3, null
  %26 = load i32, ptr %22, align 4, !tbaa !94
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgSubSurf_getAllowEdgeCreation(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !92
  store i32 %8, ptr %1, align 4, !tbaa !60
  br label %9

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  %17 = load float, ptr %16, align 4, !tbaa !93
  store float %17, ptr %2, align 4, !tbaa !95
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp eq ptr %3, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !94
  %25 = sext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %22, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %18, %20, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_setSubdivisionLevels(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %161, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %161, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !96
  store i32 %1, ptr %5, align 8, !tbaa !61
  %10 = load ptr, ptr %0, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %17 = sext i32 %12 to i64
  br label %21

18:                                               ; preds = %28, %21
  %19 = and i64 %23, 4294967295
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %42, label %21, !llvm.loop !73

21:                                               ; preds = %14, %18
  %22 = phi i64 [ %17, %14 ], [ %23, %18 ]
  %23 = add nsw i64 %22, -1
  %24 = load ptr, ptr %10, align 8, !tbaa !55
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %21, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %21 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %15, align 8, !tbaa !78
  %32 = load ptr, ptr %16, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.CCGVert, ptr %29, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  tail call void %31(ptr noundef %32, ptr noundef %34) #23
  %35 = load ptr, ptr %15, align 8, !tbaa !78
  %36 = load ptr, ptr %16, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.CCGVert, ptr %29, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  tail call void %35(ptr noundef %36, ptr noundef %38) #23
  %39 = load ptr, ptr %15, align 8, !tbaa !78
  %40 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void %39(ptr noundef %40, ptr noundef nonnull %29) #23
  %41 = icmp eq ptr %30, null
  br i1 %41, label %18, label %28, !llvm.loop !79

42:                                               ; preds = %18, %8
  %43 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 4, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !80
  %45 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void %44(ptr noundef %46, ptr noundef %47) #23
  %48 = load ptr, ptr %43, align 8, !tbaa !80
  %49 = load ptr, ptr %45, align 8, !tbaa !49
  tail call void %48(ptr noundef %49, ptr noundef nonnull %10) #23
  %50 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct._EHash, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !53
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %57 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %58 = sext i32 %53 to i64
  br label %62

59:                                               ; preds = %69, %62
  %60 = and i64 %64, 4294967295
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %79, label %62, !llvm.loop !73

62:                                               ; preds = %55, %59
  %63 = phi i64 [ %58, %55 ], [ %64, %59 ]
  %64 = add nsw i64 %63, -1
  %65 = load ptr, ptr %51, align 8, !tbaa !55
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %59, label %69

69:                                               ; preds = %62, %69
  %70 = phi ptr [ %71, %69 ], [ %67, %62 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  %72 = load ptr, ptr %56, align 8, !tbaa !78
  %73 = load ptr, ptr %57, align 8, !tbaa !44
  %74 = getelementptr inbounds %struct.CCGEdge, ptr %70, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !82
  tail call void %72(ptr noundef %73, ptr noundef %75) #23
  %76 = load ptr, ptr %56, align 8, !tbaa !78
  %77 = load ptr, ptr %57, align 8, !tbaa !44
  tail call void %76(ptr noundef %77, ptr noundef nonnull %70) #23
  %78 = icmp eq ptr %71, null
  br i1 %78, label %59, label %69, !llvm.loop !79

79:                                               ; preds = %59, %42
  %80 = getelementptr inbounds %struct._EHash, ptr %51, i64 0, i32 4, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !80
  %82 = getelementptr inbounds %struct._EHash, ptr %51, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  %84 = load ptr, ptr %51, align 8, !tbaa !55
  tail call void %81(ptr noundef %83, ptr noundef %84) #23
  %85 = load ptr, ptr %80, align 8, !tbaa !80
  %86 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %85(ptr noundef %86, ptr noundef nonnull %51) #23
  %87 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = getelementptr inbounds %struct._EHash, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !53
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %94 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %95 = sext i32 %90 to i64
  br label %99

96:                                               ; preds = %106, %99
  %97 = and i64 %101, 4294967295
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %112, label %99, !llvm.loop !73

99:                                               ; preds = %92, %96
  %100 = phi i64 [ %95, %92 ], [ %101, %96 ]
  %101 = add nsw i64 %100, -1
  %102 = load ptr, ptr %88, align 8, !tbaa !55
  %103 = getelementptr inbounds ptr, ptr %102, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = icmp eq ptr %104, null
  br i1 %105, label %96, label %106

106:                                              ; preds = %99, %106
  %107 = phi ptr [ %108, %106 ], [ %104, %99 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  %109 = load ptr, ptr %93, align 8, !tbaa !78
  %110 = load ptr, ptr %94, align 8, !tbaa !44
  tail call void %109(ptr noundef %110, ptr noundef nonnull %107) #23
  %111 = icmp eq ptr %108, null
  br i1 %111, label %96, label %106, !llvm.loop !79

112:                                              ; preds = %96, %79
  %113 = getelementptr inbounds %struct._EHash, ptr %88, i64 0, i32 4, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !80
  %115 = getelementptr inbounds %struct._EHash, ptr %88, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !49
  %117 = load ptr, ptr %88, align 8, !tbaa !55
  tail call void %114(ptr noundef %116, ptr noundef %117) #23
  %118 = load ptr, ptr %113, align 8, !tbaa !80
  %119 = load ptr, ptr %115, align 8, !tbaa !49
  tail call void %118(ptr noundef %119, ptr noundef nonnull %88) #23
  %120 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %121 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !44
  %123 = load ptr, ptr %120, align 8, !tbaa !34
  %124 = tail call ptr %123(ptr noundef %122, i32 noundef 64) #23
  %125 = getelementptr inbounds %struct._EHash, ptr %124, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %125, ptr noundef nonnull align 8 dereferenceable(32) %120, i64 32, i1 false), !tbaa.struct !42
  %126 = getelementptr inbounds %struct._EHash, ptr %124, i64 0, i32 5
  store ptr %122, ptr %126, align 8, !tbaa !49
  %127 = getelementptr inbounds %struct._EHash, ptr %124, i64 0, i32 1
  store i32 0, ptr %127, align 8, !tbaa !51
  %128 = getelementptr inbounds %struct._EHash, ptr %124, i64 0, i32 3
  store i32 0, ptr %128, align 8, !tbaa !52
  %129 = getelementptr inbounds %struct._EHash, ptr %124, i64 0, i32 2
  store i32 1, ptr %129, align 4, !tbaa !53
  %130 = load ptr, ptr %125, align 8, !tbaa !54
  %131 = tail call ptr %130(ptr noundef %122, i32 noundef 8) #23
  store ptr %131, ptr %124, align 8, !tbaa !55
  %132 = load i32, ptr %129, align 4, !tbaa !53
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %131, i8 0, i64 %134, i1 false)
  store ptr %124, ptr %0, align 8, !tbaa !56
  %135 = load ptr, ptr %121, align 8, !tbaa !44
  %136 = load ptr, ptr %120, align 8, !tbaa !34
  %137 = tail call ptr %136(ptr noundef %135, i32 noundef 64) #23
  %138 = getelementptr inbounds %struct._EHash, ptr %137, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %138, ptr noundef nonnull align 8 dereferenceable(32) %120, i64 32, i1 false), !tbaa.struct !42
  %139 = getelementptr inbounds %struct._EHash, ptr %137, i64 0, i32 5
  store ptr %135, ptr %139, align 8, !tbaa !49
  %140 = getelementptr inbounds %struct._EHash, ptr %137, i64 0, i32 1
  store i32 0, ptr %140, align 8, !tbaa !51
  %141 = getelementptr inbounds %struct._EHash, ptr %137, i64 0, i32 3
  store i32 0, ptr %141, align 8, !tbaa !52
  %142 = getelementptr inbounds %struct._EHash, ptr %137, i64 0, i32 2
  store i32 1, ptr %142, align 4, !tbaa !53
  %143 = load ptr, ptr %138, align 8, !tbaa !54
  %144 = tail call ptr %143(ptr noundef %135, i32 noundef 8) #23
  store ptr %144, ptr %137, align 8, !tbaa !55
  %145 = load i32, ptr %142, align 4, !tbaa !53
  %146 = sext i32 %145 to i64
  %147 = shl nsw i64 %146, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %144, i8 0, i64 %147, i1 false)
  store ptr %137, ptr %50, align 8, !tbaa !57
  %148 = load ptr, ptr %121, align 8, !tbaa !44
  %149 = load ptr, ptr %120, align 8, !tbaa !34
  %150 = tail call ptr %149(ptr noundef %148, i32 noundef 64) #23
  %151 = getelementptr inbounds %struct._EHash, ptr %150, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull align 8 dereferenceable(32) %120, i64 32, i1 false), !tbaa.struct !42
  %152 = getelementptr inbounds %struct._EHash, ptr %150, i64 0, i32 5
  store ptr %148, ptr %152, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct._EHash, ptr %150, i64 0, i32 1
  store i32 0, ptr %153, align 8, !tbaa !51
  %154 = getelementptr inbounds %struct._EHash, ptr %150, i64 0, i32 3
  store i32 0, ptr %154, align 8, !tbaa !52
  %155 = getelementptr inbounds %struct._EHash, ptr %150, i64 0, i32 2
  store i32 1, ptr %155, align 4, !tbaa !53
  %156 = load ptr, ptr %151, align 8, !tbaa !54
  %157 = tail call ptr %156(ptr noundef %148, i32 noundef 8) #23
  store ptr %157, ptr %150, align 8, !tbaa !55
  %158 = load i32, ptr %155, align 4, !tbaa !53
  %159 = sext i32 %158 to i64
  %160 = shl nsw i64 %159, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %157, i8 0, i64 %160, i1 false)
  store ptr %150, ptr %87, align 8, !tbaa !58
  br label %161

161:                                              ; preds = %112, %4, %2
  %162 = phi i32 [ 2, %2 ], [ 0, %4 ], [ 0, %112 ]
  ret i32 %162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccgSubSurf_getUseAgeCounts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !97
  store i32 %7, ptr %1, align 4, !tbaa !60
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !98
  store i32 %11, ptr %2, align 4, !tbaa !60
  br label %12

12:                                               ; preds = %9, %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 4, !tbaa !99
  store i32 %16, ptr %3, align 4, !tbaa !60
  br label %17

17:                                               ; preds = %14, %12
  %18 = icmp eq ptr %4, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %21 = load i32, ptr %20, align 8, !tbaa !100
  store i32 %21, ptr %4, align 4, !tbaa !60
  br label %22

22:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_setUseAgeCounts(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %2, 4
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %3, 4
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !94
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = add nsw i32 %4, 4
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !102
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  store i32 1, ptr %23, align 4, !tbaa !97
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  store i32 %2, ptr %24, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  store i32 %3, ptr %25, align 4, !tbaa !99
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  store i32 %4, ptr %26, align 8, !tbaa !100
  br label %29

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %22, %27, %7, %12, %17
  %30 = phi i32 [ 2, %17 ], [ 2, %12 ], [ 2, %7 ], [ 0, %27 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_setCalcVertexNormals(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = add nuw nsw i32 %2, 12
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %3 ]
  %14 = phi i32 [ %2, %7 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  store i32 %13, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 14
  store i32 %14, ptr %16, align 4, !tbaa !63
  br label %17

17:                                               ; preds = %12, %5, %7
  %18 = phi i32 [ 2, %7 ], [ 2, %5 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ccgSubSurf_setAllocMask(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 15
  store i32 %1, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 16
  store i32 %2, ptr %5, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ccgSubSurf_setNumLayers(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !104
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_initFullSync(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !71
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !69
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  store ptr %9, ptr %10, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  store ptr %12, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  store ptr %15, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call ptr %20(ptr noundef %19, i32 noundef 64) #23
  %22 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !42
  %23 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 5
  store ptr %19, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 3
  store i32 0, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 2
  store i32 1, ptr %26, align 4, !tbaa !53
  %27 = load ptr, ptr %22, align 8, !tbaa !54
  %28 = tail call ptr %27(ptr noundef %19, i32 noundef 8) #23
  store ptr %28, ptr %21, align 8, !tbaa !55
  %29 = load i32, ptr %26, align 4, !tbaa !53
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %31, i1 false)
  store ptr %21, ptr %0, align 8, !tbaa !56
  %32 = load ptr, ptr %18, align 8, !tbaa !44
  %33 = load ptr, ptr %17, align 8, !tbaa !34
  %34 = tail call ptr %33(ptr noundef %32, i32 noundef 64) #23
  %35 = getelementptr inbounds %struct._EHash, ptr %34, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !42
  %36 = getelementptr inbounds %struct._EHash, ptr %34, i64 0, i32 5
  store ptr %32, ptr %36, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct._EHash, ptr %34, i64 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct._EHash, ptr %34, i64 0, i32 3
  store i32 0, ptr %38, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct._EHash, ptr %34, i64 0, i32 2
  store i32 1, ptr %39, align 4, !tbaa !53
  %40 = load ptr, ptr %35, align 8, !tbaa !54
  %41 = tail call ptr %40(ptr noundef %32, i32 noundef 8) #23
  store ptr %41, ptr %34, align 8, !tbaa !55
  %42 = load i32, ptr %39, align 4, !tbaa !53
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %41, i8 0, i64 %44, i1 false)
  store ptr %34, ptr %11, align 8, !tbaa !57
  %45 = load ptr, ptr %18, align 8, !tbaa !44
  %46 = load ptr, ptr %17, align 8, !tbaa !34
  %47 = tail call ptr %46(ptr noundef %45, i32 noundef 64) #23
  %48 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !42
  %49 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 5
  store ptr %45, ptr %49, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 1
  store i32 0, ptr %50, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 3
  store i32 0, ptr %51, align 8, !tbaa !52
  %52 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 2
  store i32 1, ptr %52, align 4, !tbaa !53
  %53 = load ptr, ptr %48, align 8, !tbaa !54
  %54 = tail call ptr %53(ptr noundef %45, i32 noundef 8) #23
  store ptr %54, ptr %47, align 8, !tbaa !55
  %55 = load i32, ptr %52, align 4, !tbaa !53
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %57, i1 false)
  store ptr %47, ptr %14, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  store i32 0, ptr %58, align 4, !tbaa !96
  %59 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 26
  store i32 12, ptr %59, align 8, !tbaa !105
  %60 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %61 = tail call ptr %60(i64 noundef 96, ptr noundef nonnull @.str) #23
  %62 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  store ptr %61, ptr %62, align 8, !tbaa !89
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %64 = load i32, ptr %59, align 8, !tbaa !105
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = tail call ptr %63(i64 noundef %66, ptr noundef nonnull @.str.1) #23
  %68 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  store ptr %67, ptr %68, align 8, !tbaa !90
  store i32 1, ptr %2, align 4, !tbaa !71
  br label %69

69:                                               ; preds = %1, %5
  %70 = phi i32 [ 0, %5 ], [ 1, %1 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ccgSubSurf_initPartialSync(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !71
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !69
  store i32 4, ptr %2, align 4, !tbaa !71
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ 0, %5 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncVertDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %50

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = ptrtoint ptr %1 to i64
  %9 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = zext i32 %10 to i64
  %12 = urem i64 %8, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !55
  %14 = shl nuw i64 %12, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  br label %17

17:                                               ; preds = %21, %6
  %18 = phi ptr [ %16, %6 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._EHEntry, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %17, !llvm.loop !107

25:                                               ; preds = %21, %17
  %26 = phi ptr [ null, %17 ], [ %19, %21 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CCGVert, ptr %26, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !108
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.CCGVert, ptr %26, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !109
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load ptr, ptr %26, align 8, !tbaa !110
  store ptr %37, ptr %18, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.CCGVert, ptr %26, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  tail call void %39(ptr noundef %41, ptr noundef %43) #23
  %44 = load ptr, ptr %38, align 8, !tbaa !78
  %45 = load ptr, ptr %40, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.CCGVert, ptr %26, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !88
  tail call void %44(ptr noundef %45, ptr noundef %47) #23
  %48 = load ptr, ptr %38, align 8, !tbaa !78
  %49 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void %48(ptr noundef %49, ptr noundef nonnull %26) #23
  br label %50

50:                                               ; preds = %36, %32, %28, %25, %2
  %51 = phi i32 [ 1, %2 ], [ 0, %36 ], [ 2, %32 ], [ 2, %28 ], [ 2, %25 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncEdgeDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %99

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = ptrtoint ptr %1 to i64
  %10 = getelementptr inbounds %struct._EHash, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = zext i32 %11 to i64
  %13 = urem i64 %9, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = shl nuw i64 %13, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  br label %18

18:                                               ; preds = %22, %6
  %19 = phi ptr [ %17, %6 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._EHEntry, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %18, !llvm.loop !107

26:                                               ; preds = %22, %18
  %27 = phi ptr [ null, %18 ], [ %20, %22 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %99, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.CCGEdge, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !111
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 8, !tbaa !112
  store ptr %34, ptr %19, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.CCGEdge, ptr %27, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !113
  %37 = getelementptr inbounds %struct.CCGVert, ptr %36, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !109
  %39 = icmp sgt i16 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = zext nneg i16 %38 to i64
  %42 = getelementptr inbounds %struct.CCGVert, ptr %36, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  br label %47

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %41
  br i1 %46, label %58, label %47, !llvm.loop !114

47:                                               ; preds = %44, %40
  %48 = phi i64 [ 0, %40 ], [ %45, %44 ]
  %49 = getelementptr inbounds ptr, ptr %43, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = icmp eq ptr %50, %27
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = getelementptr inbounds ptr, ptr %43, i64 %48
  %54 = add nsw i16 %38, -1
  store i16 %54, ptr %37, align 8, !tbaa !109
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %43, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  store ptr %57, ptr %53, align 8, !tbaa !43
  br label %58

58:                                               ; preds = %44, %52, %33
  %59 = getelementptr inbounds %struct.CCGEdge, ptr %27, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !115
  %61 = getelementptr inbounds %struct.CCGVert, ptr %60, i64 0, i32 2
  %62 = load i16, ptr %61, align 8, !tbaa !109
  %63 = icmp sgt i16 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = zext nneg i16 %62 to i64
  %66 = getelementptr inbounds %struct.CCGVert, ptr %60, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  br label %71

68:                                               ; preds = %71
  %69 = add nuw nsw i64 %72, 1
  %70 = icmp eq i64 %69, %65
  br i1 %70, label %82, label %71, !llvm.loop !114

71:                                               ; preds = %68, %64
  %72 = phi i64 [ 0, %64 ], [ %69, %68 ]
  %73 = getelementptr inbounds ptr, ptr %67, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = icmp eq ptr %74, %27
  br i1 %75, label %76, label %68

76:                                               ; preds = %71
  %77 = getelementptr inbounds ptr, ptr %67, i64 %72
  %78 = add nsw i16 %62, -1
  store i16 %78, ptr %61, align 8, !tbaa !109
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %67, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  store ptr %81, ptr %77, align 8, !tbaa !43
  br label %82

82:                                               ; preds = %68, %58, %76
  %83 = load ptr, ptr %35, align 8, !tbaa !113
  %84 = getelementptr inbounds %struct.CCGVert, ptr %83, i64 0, i32 4
  %85 = load i16, ptr %84, align 4, !tbaa !116
  %86 = or i16 %85, 1
  store i16 %86, ptr %84, align 4, !tbaa !116
  %87 = load ptr, ptr %59, align 8, !tbaa !115
  %88 = getelementptr inbounds %struct.CCGVert, ptr %87, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !116
  %90 = or i16 %89, 1
  store i16 %90, ptr %88, align 4, !tbaa !116
  %91 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  %93 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !44
  %95 = getelementptr inbounds %struct.CCGEdge, ptr %27, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !82
  tail call void %92(ptr noundef %94, ptr noundef %96) #23
  %97 = load ptr, ptr %91, align 8, !tbaa !78
  %98 = load ptr, ptr %93, align 8, !tbaa !44
  tail call void %97(ptr noundef %98, ptr noundef nonnull %27) #23
  br label %99

99:                                               ; preds = %82, %29, %26, %2
  %100 = phi i32 [ 1, %2 ], [ 0, %82 ], [ 2, %29 ], [ 2, %26 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncFaceDel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %99

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = ptrtoint ptr %1 to i64
  %10 = getelementptr inbounds %struct._EHash, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = zext i32 %11 to i64
  %13 = urem i64 %9, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = shl nuw i64 %13, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  br label %18

18:                                               ; preds = %22, %6
  %19 = phi ptr [ %17, %6 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._EHEntry, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %18, !llvm.loop !107

26:                                               ; preds = %22, %18
  %27 = phi ptr [ null, %18 ], [ %20, %22 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %99, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !117
  store ptr %30, ptr %19, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.CCGFace, ptr %27, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !119
  %33 = icmp sgt i16 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %29
  %35 = zext nneg i16 %32 to i64
  %36 = getelementptr inbounds %struct.CCGFace, ptr %27, i64 1
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  br label %38

38:                                               ; preds = %87, %34
  %39 = phi i64 [ 0, %34 ], [ %92, %87 ]
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.CCGVert, ptr %41, i64 0, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !108
  %44 = icmp sgt i16 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = zext nneg i16 %43 to i64
  %47 = getelementptr inbounds %struct.CCGVert, ptr %41, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  br label %52

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, %46
  br i1 %51, label %63, label %52, !llvm.loop !120

52:                                               ; preds = %49, %45
  %53 = phi i64 [ 0, %45 ], [ %50, %49 ]
  %54 = getelementptr inbounds ptr, ptr %48, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = icmp eq ptr %55, %27
  br i1 %56, label %57, label %49

57:                                               ; preds = %52
  %58 = getelementptr inbounds ptr, ptr %48, i64 %53
  %59 = add nsw i16 %43, -1
  store i16 %59, ptr %42, align 2, !tbaa !108
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %48, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  store ptr %62, ptr %58, align 8, !tbaa !43
  br label %63

63:                                               ; preds = %49, %57, %38
  %64 = getelementptr inbounds ptr, ptr %37, i64 %39
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.CCGEdge, ptr %65, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !111
  %68 = icmp sgt i16 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = zext nneg i16 %67 to i64
  %71 = getelementptr inbounds %struct.CCGEdge, ptr %65, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !82
  br label %76

73:                                               ; preds = %76
  %74 = add nuw nsw i64 %77, 1
  %75 = icmp eq i64 %74, %70
  br i1 %75, label %87, label %76, !llvm.loop !121

76:                                               ; preds = %73, %69
  %77 = phi i64 [ 0, %69 ], [ %74, %73 ]
  %78 = getelementptr inbounds ptr, ptr %72, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = icmp eq ptr %79, %27
  br i1 %80, label %81, label %73

81:                                               ; preds = %76
  %82 = getelementptr inbounds ptr, ptr %72, i64 %77
  %83 = add nsw i16 %67, -1
  store i16 %83, ptr %66, align 8, !tbaa !111
  %84 = sext i16 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %72, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  store ptr %86, ptr %82, align 8, !tbaa !43
  br label %87

87:                                               ; preds = %73, %81, %63
  %88 = load ptr, ptr %40, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.CCGVert, ptr %88, i64 0, i32 4
  %90 = load i16, ptr %89, align 4, !tbaa !116
  %91 = or i16 %90, 1
  store i16 %91, ptr %89, align 4, !tbaa !116
  %92 = add nuw nsw i64 %39, 1
  %93 = icmp eq i64 %92, %35
  br i1 %93, label %94, label %38, !llvm.loop !122

94:                                               ; preds = %87, %29
  %95 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !78
  %97 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  tail call void %96(ptr noundef %98, ptr noundef nonnull %27) #23
  br label %99

99:                                               ; preds = %94, %26, %2
  %100 = phi i32 [ 1, %2 ], [ 2, %26 ], [ 0, %94 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #1 {
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i16 0, i16 4
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %9 = load i32, ptr %8, align 4, !tbaa !71
  switch i32 %9, label %323 [
    i32 4, label %10
    i32 1, label %185
  ]

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = ptrtoint ptr %1 to i64
  %13 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = zext i32 %14 to i64
  %16 = urem i64 %12, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !55
  %18 = shl nuw i64 %16, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  br label %21

21:                                               ; preds = %25, %10
  %22 = phi ptr [ %20, %10 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._EHEntry, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %21, !llvm.loop !107

29:                                               ; preds = %25, %21
  %30 = phi ptr [ null, %21 ], [ %23, %25 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = mul nsw i32 %42, %35
  %44 = add i32 %43, 40
  %45 = load i32, ptr %40, align 8, !tbaa !101
  %46 = add i32 %44, %45
  %47 = tail call ptr %37(ptr noundef %39, i32 noundef %46) #23
  %48 = getelementptr inbounds %struct.CCGVert, ptr %47, i64 0, i32 1
  store ptr %1, ptr %48, align 8, !tbaa !123
  %49 = getelementptr inbounds %struct.CCGVert, ptr %47, i64 0, i32 6
  %50 = getelementptr inbounds %struct.CCGVert, ptr %47, i64 0, i32 3
  store i16 0, ptr %50, align 2, !tbaa !108
  %51 = getelementptr inbounds %struct.CCGVert, ptr %47, i64 0, i32 2
  store i16 0, ptr %51, align 8, !tbaa !109
  %52 = getelementptr inbounds %struct.CCGVert, ptr %47, i64 0, i32 4
  store i16 0, ptr %52, align 4, !tbaa !116
  %53 = getelementptr %struct.CCGVert, ptr %47, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  %54 = load i32, ptr %41, align 8, !tbaa !66
  %55 = load i32, ptr %33, align 8, !tbaa !61
  %56 = add nsw i32 %55, 1
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %53, i64 %58
  %60 = load i32, ptr %40, align 8, !tbaa !101
  %61 = sext i32 %60 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %59, i8 0, i64 %61, i1 false)
  %62 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %63 = load i32, ptr %62, align 4, !tbaa !97
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %32
  %66 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %67 = load i32, ptr %66, align 8, !tbaa !69
  %68 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %69 = load i32, ptr %68, align 8, !tbaa !98
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %59, i64 %70
  store i32 %67, ptr %71, align 4, !tbaa !60
  br label %72

72:                                               ; preds = %32, %65
  %73 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !104
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = zext nneg i32 %74 to i64
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ 0, %76 ], [ %83, %78 ]
  %80 = getelementptr inbounds float, ptr %2, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !95
  %82 = getelementptr inbounds float, ptr %53, i64 %79
  store float %81, ptr %82, align 4, !tbaa !95
  %83 = add nuw nsw i64 %79, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %85, label %78, !llvm.loop !124

85:                                               ; preds = %78, %72
  %86 = load ptr, ptr %0, align 8, !tbaa !56
  tail call fastcc void @_ehash_insert(ptr noundef %86, ptr noundef %47)
  %87 = or disjoint i16 %7, 1
  store i16 %87, ptr %52, align 4, !tbaa !116
  br label %319

88:                                               ; preds = %29
  %89 = getelementptr %struct.CCGVert, ptr %30, i64 1
  %90 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !104
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = zext nneg i32 %91 to i64
  %95 = zext nneg i32 %91 to i64
  %96 = load float, ptr %2, align 4, !tbaa !95
  %97 = load float, ptr %89, align 4, !tbaa !95
  %98 = fcmp une float %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %93, %103
  %100 = phi i64 [ %101, %103 ], [ 0, %93 ]
  %101 = add nuw nsw i64 %100, 1
  %102 = icmp eq i64 %101, %95
  br i1 %102, label %113, label %103, !llvm.loop !125

103:                                              ; preds = %99
  %104 = getelementptr inbounds float, ptr %2, i64 %101
  %105 = load float, ptr %104, align 4, !tbaa !95
  %106 = getelementptr inbounds float, ptr %89, i64 %101
  %107 = load float, ptr %106, align 4, !tbaa !95
  %108 = fcmp une float %105, %107
  br i1 %108, label %109, label %99, !llvm.loop !125

109:                                              ; preds = %103
  %110 = icmp ult i64 %101, %94
  br label %111

111:                                              ; preds = %109, %93
  %112 = phi i1 [ %110, %109 ], [ %92, %93 ]
  br i1 %112, label %118, label %113

113:                                              ; preds = %99, %88, %111
  %114 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 4
  %115 = load i16, ptr %114, align 4, !tbaa !116
  %116 = and i16 %115, 4
  %117 = icmp eq i16 %116, %7
  br i1 %117, label %319, label %118

118:                                              ; preds = %113, %111
  %119 = icmp sgt i32 %91, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %118
  %121 = zext nneg i32 %91 to i64
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ 0, %120 ], [ %127, %122 ]
  %124 = getelementptr inbounds float, ptr %2, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !95
  %126 = getelementptr inbounds float, ptr %89, i64 %123
  store float %125, ptr %126, align 4, !tbaa !95
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, %121
  br i1 %128, label %129, label %122, !llvm.loop !124

129:                                              ; preds = %122, %118
  %130 = or disjoint i16 %7, 1
  %131 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 4
  store i16 %130, ptr %131, align 4, !tbaa !116
  %132 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 2
  %133 = load i16, ptr %132, align 8, !tbaa !109
  %134 = icmp sgt i16 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = zext nneg i16 %133 to i64
  %137 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !86
  br label %147

139:                                              ; preds = %147, %129
  %140 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 3
  %141 = load i16, ptr %140, align 2, !tbaa !108
  %142 = icmp sgt i16 %141, 0
  br i1 %142, label %143, label %319

143:                                              ; preds = %139
  %144 = zext nneg i16 %141 to i64
  %145 = getelementptr inbounds %struct.CCGVert, ptr %30, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !88
  br label %163

147:                                              ; preds = %135, %147
  %148 = phi i64 [ 0, %135 ], [ %161, %147 ]
  %149 = getelementptr inbounds ptr, ptr %138, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = getelementptr inbounds %struct.CCGEdge, ptr %150, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !113
  %153 = getelementptr inbounds %struct.CCGVert, ptr %152, i64 0, i32 4
  %154 = load i16, ptr %153, align 4, !tbaa !116
  %155 = or i16 %154, 1
  store i16 %155, ptr %153, align 4, !tbaa !116
  %156 = getelementptr inbounds %struct.CCGEdge, ptr %150, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !115
  %158 = getelementptr inbounds %struct.CCGVert, ptr %157, i64 0, i32 4
  %159 = load i16, ptr %158, align 4, !tbaa !116
  %160 = or i16 %159, 1
  store i16 %160, ptr %158, align 4, !tbaa !116
  %161 = add nuw nsw i64 %148, 1
  %162 = icmp eq i64 %161, %136
  br i1 %162, label %139, label %147, !llvm.loop !126

163:                                              ; preds = %143, %182
  %164 = phi i64 [ 0, %143 ], [ %183, %182 ]
  %165 = getelementptr inbounds ptr, ptr %146, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.CCGFace, ptr %166, i64 0, i32 2
  %168 = load i16, ptr %167, align 8, !tbaa !119
  %169 = icmp sgt i16 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = zext nneg i16 %168 to i64
  %172 = getelementptr inbounds %struct.CCGFace, ptr %166, i64 1
  br label %173

173:                                              ; preds = %170, %173
  %174 = phi i64 [ 0, %170 ], [ %180, %173 ]
  %175 = getelementptr inbounds ptr, ptr %172, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !43
  %177 = getelementptr inbounds %struct.CCGVert, ptr %176, i64 0, i32 4
  %178 = load i16, ptr %177, align 4, !tbaa !116
  %179 = or i16 %178, 1
  store i16 %179, ptr %177, align 4, !tbaa !116
  %180 = add nuw nsw i64 %174, 1
  %181 = icmp eq i64 %180, %171
  br i1 %181, label %182, label %173, !llvm.loop !127

182:                                              ; preds = %173, %163
  %183 = add nuw nsw i64 %164, 1
  %184 = icmp eq i64 %183, %144
  br i1 %184, label %319, label %163, !llvm.loop !128

185:                                              ; preds = %5
  %186 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %187 = load ptr, ptr %186, align 8, !tbaa !85
  %188 = ptrtoint ptr %1 to i64
  %189 = getelementptr inbounds %struct._EHash, ptr %187, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !53
  %191 = zext i32 %190 to i64
  %192 = urem i64 %188, %191
  %193 = load ptr, ptr %187, align 8, !tbaa !55
  %194 = shl nuw i64 %192, 32
  %195 = ashr exact i64 %194, 32
  %196 = getelementptr inbounds ptr, ptr %193, i64 %195
  br label %197

197:                                              ; preds = %201, %185
  %198 = phi ptr [ %196, %185 ], [ %199, %201 ]
  %199 = load ptr, ptr %198, align 8, !tbaa !43
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct._EHEntry, ptr %199, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  %204 = icmp eq ptr %203, %1
  br i1 %204, label %205, label %197, !llvm.loop !107

205:                                              ; preds = %201, %197
  %206 = phi ptr [ null, %197 ], [ %199, %201 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %264

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %210 = load i32, ptr %209, align 8, !tbaa !61
  %211 = add nsw i32 %210, 1
  %212 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !65
  %214 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !44
  %216 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3
  %217 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %218 = load i32, ptr %217, align 8, !tbaa !66
  %219 = mul nsw i32 %218, %211
  %220 = add i32 %219, 40
  %221 = load i32, ptr %216, align 8, !tbaa !101
  %222 = add i32 %220, %221
  %223 = tail call ptr %213(ptr noundef %215, i32 noundef %222) #23
  %224 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 1
  store ptr %1, ptr %224, align 8, !tbaa !123
  %225 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 6
  %226 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 3
  store i16 0, ptr %226, align 2, !tbaa !108
  %227 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 2
  store i16 0, ptr %227, align 8, !tbaa !109
  %228 = getelementptr inbounds %struct.CCGVert, ptr %223, i64 0, i32 4
  store i16 0, ptr %228, align 4, !tbaa !116
  %229 = getelementptr %struct.CCGVert, ptr %223, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  %230 = load i32, ptr %217, align 8, !tbaa !66
  %231 = load i32, ptr %209, align 8, !tbaa !61
  %232 = add nsw i32 %231, 1
  %233 = mul nsw i32 %232, %230
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %229, i64 %234
  %236 = load i32, ptr %216, align 8, !tbaa !101
  %237 = sext i32 %236 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %235, i8 0, i64 %237, i1 false)
  %238 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %239 = load i32, ptr %238, align 4, !tbaa !97
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %208
  %242 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %243 = load i32, ptr %242, align 8, !tbaa !69
  %244 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %245 = load i32, ptr %244, align 8, !tbaa !98
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %235, i64 %246
  store i32 %243, ptr %247, align 4, !tbaa !60
  br label %248

248:                                              ; preds = %208, %241
  %249 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %250 = load i32, ptr %249, align 4, !tbaa !104
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = zext nneg i32 %250 to i64
  br label %254

254:                                              ; preds = %252, %254
  %255 = phi i64 [ 0, %252 ], [ %259, %254 ]
  %256 = getelementptr inbounds float, ptr %2, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !95
  %258 = getelementptr inbounds float, ptr %229, i64 %255
  store float %257, ptr %258, align 4, !tbaa !95
  %259 = add nuw nsw i64 %255, 1
  %260 = icmp eq i64 %259, %253
  br i1 %260, label %261, label %254, !llvm.loop !124

261:                                              ; preds = %254, %248
  %262 = load ptr, ptr %0, align 8, !tbaa !56
  tail call fastcc void @_ehash_insert(ptr noundef %262, ptr noundef %223)
  %263 = or disjoint i16 %7, 1
  store i16 %263, ptr %228, align 4, !tbaa !116
  br label %319

264:                                              ; preds = %205
  %265 = getelementptr %struct.CCGVert, ptr %206, i64 1
  %266 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %267 = load i32, ptr %266, align 4, !tbaa !104
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %264
  %270 = zext nneg i32 %267 to i64
  %271 = zext nneg i32 %267 to i64
  %272 = load float, ptr %2, align 4, !tbaa !95
  %273 = load float, ptr %265, align 4, !tbaa !95
  %274 = fcmp une float %272, %273
  br i1 %274, label %287, label %275

275:                                              ; preds = %269, %279
  %276 = phi i64 [ %277, %279 ], [ 0, %269 ]
  %277 = add nuw nsw i64 %276, 1
  %278 = icmp eq i64 %277, %271
  br i1 %278, label %290, label %279, !llvm.loop !125

279:                                              ; preds = %275
  %280 = getelementptr inbounds float, ptr %2, i64 %277
  %281 = load float, ptr %280, align 4, !tbaa !95
  %282 = getelementptr inbounds float, ptr %265, i64 %277
  %283 = load float, ptr %282, align 4, !tbaa !95
  %284 = fcmp une float %281, %283
  br i1 %284, label %285, label %275, !llvm.loop !125

285:                                              ; preds = %279
  %286 = icmp ult i64 %277, %270
  br label %287

287:                                              ; preds = %285, %269
  %288 = phi i1 [ %286, %285 ], [ %268, %269 ]
  %289 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  br i1 %288, label %298, label %292

290:                                              ; preds = %275, %264
  %291 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  br label %292

292:                                              ; preds = %290, %287
  %293 = phi ptr [ %291, %290 ], [ %289, %287 ]
  %294 = getelementptr inbounds %struct.CCGVert, ptr %206, i64 0, i32 4
  %295 = load i16, ptr %294, align 4, !tbaa !116
  %296 = and i16 %295, 4
  %297 = icmp eq i16 %296, %7
  br i1 %297, label %316, label %298

298:                                              ; preds = %292, %287
  %299 = phi ptr [ %293, %292 ], [ %289, %287 ]
  %300 = load ptr, ptr %206, align 8, !tbaa !110
  store ptr %300, ptr %198, align 8, !tbaa !43
  %301 = load ptr, ptr %0, align 8, !tbaa !56
  tail call fastcc void @_ehash_insert(ptr noundef %301, ptr noundef nonnull %206)
  %302 = load i32, ptr %299, align 4, !tbaa !104
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %298
  %305 = zext nneg i32 %302 to i64
  br label %306

306:                                              ; preds = %304, %306
  %307 = phi i64 [ 0, %304 ], [ %311, %306 ]
  %308 = getelementptr inbounds float, ptr %2, i64 %307
  %309 = load float, ptr %308, align 4, !tbaa !95
  %310 = getelementptr inbounds float, ptr %265, i64 %307
  store float %309, ptr %310, align 4, !tbaa !95
  %311 = add nuw nsw i64 %307, 1
  %312 = icmp eq i64 %311, %305
  br i1 %312, label %313, label %306, !llvm.loop !124

313:                                              ; preds = %306, %298
  %314 = or disjoint i16 %7, 3
  %315 = getelementptr inbounds %struct.CCGVert, ptr %206, i64 0, i32 4
  store i16 %314, ptr %315, align 4, !tbaa !116
  br label %319

316:                                              ; preds = %292
  %317 = load ptr, ptr %206, align 8, !tbaa !110
  store ptr %317, ptr %198, align 8, !tbaa !43
  %318 = load ptr, ptr %0, align 8, !tbaa !56
  tail call fastcc void @_ehash_insert(ptr noundef %318, ptr noundef nonnull %206)
  store i16 0, ptr %294, align 4, !tbaa !116
  br label %319

319:                                              ; preds = %182, %139, %261, %316, %313, %85, %113
  %320 = phi ptr [ %30, %113 ], [ %47, %85 ], [ %206, %313 ], [ %206, %316 ], [ %223, %261 ], [ %30, %139 ], [ %30, %182 ]
  %321 = icmp eq ptr %4, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %319
  store ptr %320, ptr %4, align 8, !tbaa !43
  br label %323

323:                                              ; preds = %319, %322, %5
  %324 = phi i32 [ 1, %5 ], [ 0, %322 ], [ 0, %319 ]
  ret i32 %324
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_ehash_insert(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct._EHEntry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = ptrtoint ptr %6 to i64
  %8 = zext i32 %4 to i64
  %9 = urem i64 %7, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !55
  %11 = shl nuw i64 %9, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  store ptr %14, ptr %1, align 8, !tbaa !76
  store ptr %1, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !51
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !51
  %18 = mul nsw i32 %4, 3
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %69, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !52
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [29 x i32], ptr @kHashSizes, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !60
  store i32 %27, ptr %3, align 4, !tbaa !53
  %28 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = shl i32 %27, 3
  %33 = tail call ptr %29(ptr noundef %31, i32 noundef %32) #23
  store ptr %33, ptr %0, align 8, !tbaa !55
  %34 = load i32, ptr %3, align 4, !tbaa !53
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
  br i1 %42, label %65, label %43, !llvm.loop !129

43:                                               ; preds = %38, %40
  %44 = phi i64 [ %39, %38 ], [ %45, %40 ]
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds ptr, ptr %21, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %40, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %3, align 4, !tbaa !53
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %47, %49 ], [ %54, %52 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct._EHEntry, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = ptrtoint ptr %56 to i64
  %58 = urem i64 %57, %51
  %59 = load ptr, ptr %0, align 8, !tbaa !55
  %60 = shl nuw i64 %58, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  store ptr %63, ptr %53, align 8, !tbaa !76
  store ptr %53, ptr %62, align 8, !tbaa !43
  %64 = icmp eq ptr %54, null
  br i1 %64, label %40, label %52, !llvm.loop !130

65:                                               ; preds = %40, %20
  %66 = getelementptr inbounds %struct._EHash, ptr %0, i64 0, i32 4, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !80
  %68 = load ptr, ptr %30, align 8, !tbaa !49
  tail call void %67(ptr noundef %68, ptr noundef %21) #23
  br label %69

69:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %8 = load i32, ptr %7, align 4, !tbaa !71
  switch i32 %8, label %270 [
    i32 4, label %9
    i32 1, label %160
    i32 2, label %161
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = ptrtoint ptr %1 to i64
  %13 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = zext i32 %14 to i64
  %16 = urem i64 %12, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !55
  %18 = shl nuw i64 %16, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  br label %21

21:                                               ; preds = %25, %9
  %22 = phi ptr [ %20, %9 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._EHEntry, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %21, !llvm.loop !107

29:                                               ; preds = %25, %21
  %30 = phi ptr [ null, %21 ], [ %23, %25 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !113
  %35 = getelementptr inbounds %struct.CCGVert, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct.CCGVert, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !123
  %43 = icmp eq ptr %42, %3
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 4
  %46 = load float, ptr %45, align 4, !tbaa !131
  %47 = fcmp une float %46, %4
  br i1 %47, label %48, label %266

48:                                               ; preds = %44, %38, %32, %29
  %49 = load ptr, ptr %0, align 8, !tbaa !56
  %50 = ptrtoint ptr %2 to i64
  %51 = getelementptr inbounds %struct._EHash, ptr %49, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !53
  %53 = zext i32 %52 to i64
  %54 = urem i64 %50, %53
  %55 = load ptr, ptr %49, align 8, !tbaa !55
  %56 = shl nuw i64 %54, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  br label %59

59:                                               ; preds = %63, %48
  %60 = phi ptr [ %58, %48 ], [ %61, %63 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct._EHEntry, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  %66 = icmp eq ptr %65, %2
  br i1 %66, label %67, label %59, !llvm.loop !132

67:                                               ; preds = %59, %63
  %68 = ptrtoint ptr %3 to i64
  %69 = urem i64 %68, %53
  %70 = shl nuw i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds ptr, ptr %55, i64 %71
  br label %73

73:                                               ; preds = %77, %67
  %74 = phi ptr [ %72, %67 ], [ %75, %77 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._EHEntry, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = icmp eq ptr %79, %3
  br i1 %80, label %81, label %73, !llvm.loop !132

81:                                               ; preds = %73, %77
  %82 = tail call fastcc ptr @_edge_new(ptr noundef %1, ptr noundef %61, ptr noundef %75, float noundef %4, ptr noundef nonnull %0)
  br i1 %31, label %149, label %83

83:                                               ; preds = %81
  store ptr %82, ptr %22, align 8, !tbaa !43
  %84 = load ptr, ptr %30, align 8, !tbaa !112
  store ptr %84, ptr %82, align 8, !tbaa !112
  %85 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !113
  %87 = getelementptr inbounds %struct.CCGVert, ptr %86, i64 0, i32 2
  %88 = load i16, ptr %87, align 8, !tbaa !109
  %89 = icmp sgt i16 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = zext nneg i16 %88 to i64
  %92 = getelementptr inbounds %struct.CCGVert, ptr %86, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !86
  br label %97

94:                                               ; preds = %97
  %95 = add nuw nsw i64 %98, 1
  %96 = icmp eq i64 %95, %91
  br i1 %96, label %108, label %97, !llvm.loop !114

97:                                               ; preds = %94, %90
  %98 = phi i64 [ 0, %90 ], [ %95, %94 ]
  %99 = getelementptr inbounds ptr, ptr %93, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = icmp eq ptr %100, %30
  br i1 %101, label %102, label %94

102:                                              ; preds = %97
  %103 = getelementptr inbounds ptr, ptr %93, i64 %98
  %104 = add nsw i16 %88, -1
  store i16 %104, ptr %87, align 8, !tbaa !109
  %105 = sext i16 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %93, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !43
  store ptr %107, ptr %103, align 8, !tbaa !43
  br label %108

108:                                              ; preds = %94, %102, %83
  %109 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !115
  %111 = getelementptr inbounds %struct.CCGVert, ptr %110, i64 0, i32 2
  %112 = load i16, ptr %111, align 8, !tbaa !109
  %113 = icmp sgt i16 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = zext nneg i16 %112 to i64
  %116 = getelementptr inbounds %struct.CCGVert, ptr %110, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !86
  br label %121

118:                                              ; preds = %121
  %119 = add nuw nsw i64 %122, 1
  %120 = icmp eq i64 %119, %115
  br i1 %120, label %132, label %121, !llvm.loop !114

121:                                              ; preds = %118, %114
  %122 = phi i64 [ 0, %114 ], [ %119, %118 ]
  %123 = getelementptr inbounds ptr, ptr %117, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = icmp eq ptr %124, %30
  br i1 %125, label %126, label %118

126:                                              ; preds = %121
  %127 = getelementptr inbounds ptr, ptr %117, i64 %122
  %128 = add nsw i16 %112, -1
  store i16 %128, ptr %111, align 8, !tbaa !109
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %117, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  store ptr %131, ptr %127, align 8, !tbaa !43
  br label %132

132:                                              ; preds = %118, %108, %126
  %133 = load ptr, ptr %85, align 8, !tbaa !113
  %134 = getelementptr inbounds %struct.CCGVert, ptr %133, i64 0, i32 4
  %135 = load i16, ptr %134, align 4, !tbaa !116
  %136 = or i16 %135, 1
  store i16 %136, ptr %134, align 4, !tbaa !116
  %137 = load ptr, ptr %109, align 8, !tbaa !115
  %138 = getelementptr inbounds %struct.CCGVert, ptr %137, i64 0, i32 4
  %139 = load i16, ptr %138, align 4, !tbaa !116
  %140 = or i16 %139, 1
  store i16 %140, ptr %138, align 4, !tbaa !116
  %141 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !78
  %143 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !44
  %145 = getelementptr inbounds %struct.CCGEdge, ptr %30, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !82
  tail call void %142(ptr noundef %144, ptr noundef %146) #23
  %147 = load ptr, ptr %141, align 8, !tbaa !78
  %148 = load ptr, ptr %143, align 8, !tbaa !44
  tail call void %147(ptr noundef %148, ptr noundef nonnull %30) #23
  br label %151

149:                                              ; preds = %81
  %150 = load ptr, ptr %10, align 8, !tbaa !57
  tail call fastcc void @_ehash_insert(ptr noundef %150, ptr noundef %82)
  br label %151

151:                                              ; preds = %149, %132
  %152 = getelementptr inbounds %struct.CCGEdge, ptr %82, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !113
  %154 = getelementptr inbounds %struct.CCGVert, ptr %153, i64 0, i32 4
  %155 = load i16, ptr %154, align 4, !tbaa !116
  %156 = or i16 %155, 1
  store i16 %156, ptr %154, align 4, !tbaa !116
  %157 = getelementptr inbounds %struct.CCGEdge, ptr %82, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !115
  %159 = getelementptr inbounds %struct.CCGVert, ptr %158, i64 0, i32 4
  br label %261

160:                                              ; preds = %6
  store i32 2, ptr %7, align 4, !tbaa !71
  br label %161

161:                                              ; preds = %6, %160
  %162 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %163 = load ptr, ptr %162, align 8, !tbaa !81
  %164 = ptrtoint ptr %1 to i64
  %165 = getelementptr inbounds %struct._EHash, ptr %163, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !53
  %167 = zext i32 %166 to i64
  %168 = urem i64 %164, %167
  %169 = load ptr, ptr %163, align 8, !tbaa !55
  %170 = shl nuw i64 %168, 32
  %171 = ashr exact i64 %170, 32
  %172 = getelementptr inbounds ptr, ptr %169, i64 %171
  br label %173

173:                                              ; preds = %177, %161
  %174 = phi ptr [ %172, %161 ], [ %175, %177 ]
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct._EHEntry, ptr %175, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  %180 = icmp eq ptr %179, %1
  br i1 %180, label %181, label %173, !llvm.loop !107

181:                                              ; preds = %177, %173
  %182 = phi ptr [ null, %173 ], [ %175, %177 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %200, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.CCGEdge, ptr %182, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !113
  %187 = getelementptr inbounds %struct.CCGVert, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !123
  %189 = icmp eq ptr %188, %2
  br i1 %189, label %190, label %200

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.CCGEdge, ptr %182, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !115
  %193 = getelementptr inbounds %struct.CCGVert, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !123
  %195 = icmp eq ptr %194, %3
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.CCGEdge, ptr %182, i64 0, i32 4
  %198 = load float, ptr %197, align 4, !tbaa !131
  %199 = fcmp une float %198, %4
  br i1 %199, label %200, label %245

200:                                              ; preds = %196, %190, %184, %181
  %201 = load ptr, ptr %0, align 8, !tbaa !56
  %202 = ptrtoint ptr %2 to i64
  %203 = getelementptr inbounds %struct._EHash, ptr %201, i64 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !53
  %205 = zext i32 %204 to i64
  %206 = urem i64 %202, %205
  %207 = load ptr, ptr %201, align 8, !tbaa !55
  %208 = shl nuw i64 %206, 32
  %209 = ashr exact i64 %208, 32
  %210 = getelementptr inbounds ptr, ptr %207, i64 %209
  br label %211

211:                                              ; preds = %215, %200
  %212 = phi ptr [ %210, %200 ], [ %213, %215 ]
  %213 = load ptr, ptr %212, align 8, !tbaa !43
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct._EHEntry, ptr %213, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !106
  %218 = icmp eq ptr %217, %2
  br i1 %218, label %219, label %211, !llvm.loop !132

219:                                              ; preds = %211, %215
  %220 = ptrtoint ptr %3 to i64
  %221 = urem i64 %220, %205
  %222 = shl nuw i64 %221, 32
  %223 = ashr exact i64 %222, 32
  %224 = getelementptr inbounds ptr, ptr %207, i64 %223
  br label %225

225:                                              ; preds = %229, %219
  %226 = phi ptr [ %224, %219 ], [ %227, %229 ]
  %227 = load ptr, ptr %226, align 8, !tbaa !43
  %228 = icmp eq ptr %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct._EHEntry, ptr %227, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !106
  %232 = icmp eq ptr %231, %3
  br i1 %232, label %233, label %225, !llvm.loop !132

233:                                              ; preds = %225, %229
  %234 = tail call fastcc ptr @_edge_new(ptr noundef %1, ptr noundef %213, ptr noundef %227, float noundef %4, ptr noundef nonnull %0)
  %235 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !57
  tail call fastcc void @_ehash_insert(ptr noundef %236, ptr noundef %234)
  %237 = getelementptr inbounds %struct.CCGEdge, ptr %234, i64 0, i32 5
  %238 = load ptr, ptr %237, align 8, !tbaa !113
  %239 = getelementptr inbounds %struct.CCGVert, ptr %238, i64 0, i32 4
  %240 = load i16, ptr %239, align 4, !tbaa !116
  %241 = or i16 %240, 1
  store i16 %241, ptr %239, align 4, !tbaa !116
  %242 = getelementptr inbounds %struct.CCGEdge, ptr %234, i64 0, i32 6
  %243 = load ptr, ptr %242, align 8, !tbaa !115
  %244 = getelementptr inbounds %struct.CCGVert, ptr %243, i64 0, i32 4
  br label %261

245:                                              ; preds = %196
  %246 = load ptr, ptr %182, align 8, !tbaa !112
  store ptr %246, ptr %174, align 8, !tbaa !43
  %247 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !57
  tail call fastcc void @_ehash_insert(ptr noundef %248, ptr noundef nonnull %182)
  %249 = getelementptr inbounds %struct.CCGEdge, ptr %182, i64 0, i32 3
  store i16 0, ptr %249, align 2, !tbaa !133
  %250 = load ptr, ptr %185, align 8, !tbaa !113
  %251 = getelementptr inbounds %struct.CCGVert, ptr %250, i64 0, i32 4
  %252 = load i16, ptr %251, align 4, !tbaa !116
  %253 = load ptr, ptr %191, align 8, !tbaa !115
  %254 = getelementptr inbounds %struct.CCGVert, ptr %253, i64 0, i32 4
  %255 = load i16, ptr %254, align 4, !tbaa !116
  %256 = or i16 %255, %252
  %257 = and i16 %256, 2
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %245
  %260 = or i16 %252, 1
  store i16 %260, ptr %251, align 4, !tbaa !116
  br label %261

261:                                              ; preds = %151, %259, %233
  %262 = phi ptr [ %244, %233 ], [ %254, %259 ], [ %159, %151 ]
  %263 = phi ptr [ %234, %233 ], [ %182, %259 ], [ %30, %151 ]
  %264 = load i16, ptr %262, align 4, !tbaa !116
  %265 = or i16 %264, 1
  store i16 %265, ptr %262, align 4, !tbaa !116
  br label %266

266:                                              ; preds = %261, %245, %44
  %267 = phi ptr [ %30, %44 ], [ %182, %245 ], [ %263, %261 ]
  %268 = icmp eq ptr %5, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  store ptr %267, ptr %5, align 8, !tbaa !43
  br label %270

270:                                              ; preds = %266, %269, %6
  %271 = phi i32 [ 1, %6 ], [ 0, %269 ], [ 0, %266 ]
  ret i32 %271
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_edge_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = add nsw i32 %7, 1
  %9 = shl nuw i32 1, %8
  %10 = add i32 %9, %7
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = mul nsw i32 %16, %10
  %18 = add i32 %17, 48
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = add i32 %18, %20
  %22 = tail call ptr %12(ptr noundef %14, i32 noundef %21) #23
  %23 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 1
  store ptr %0, ptr %23, align 8, !tbaa !134
  %24 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 5
  store ptr %1, ptr %24, align 8, !tbaa !113
  %25 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 6
  store ptr %2, ptr %25, align 8, !tbaa !115
  %26 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 4
  store float %3, ptr %26, align 4, !tbaa !131
  %27 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 7
  store ptr null, ptr %27, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 2
  store i16 0, ptr %28, align 8, !tbaa !111
  %29 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 0, i32 3
  store i16 0, ptr %29, align 2, !tbaa !133
  %30 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !135
  %32 = load ptr, ptr %13, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !109
  %37 = sext i16 %36 to i32
  %38 = shl nsw i32 %37, 3
  %39 = add nsw i32 %38, 8
  %40 = tail call ptr %31(ptr noundef %32, ptr noundef %34, i32 noundef %39, i32 noundef %38) #23
  store ptr %40, ptr %33, align 8, !tbaa !86
  %41 = load i16, ptr %35, align 8, !tbaa !109
  %42 = add i16 %41, 1
  store i16 %42, ptr %35, align 8, !tbaa !109
  %43 = sext i16 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %22, ptr %44, align 8, !tbaa !43
  %45 = load ptr, ptr %30, align 8, !tbaa !135
  %46 = load ptr, ptr %13, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.CCGVert, ptr %2, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.CCGVert, ptr %2, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !109
  %51 = sext i16 %50 to i32
  %52 = shl nsw i32 %51, 3
  %53 = add nsw i32 %52, 8
  %54 = tail call ptr %45(ptr noundef %46, ptr noundef %48, i32 noundef %53, i32 noundef %52) #23
  store ptr %54, ptr %47, align 8, !tbaa !86
  %55 = load i16, ptr %49, align 8, !tbaa !109
  %56 = add i16 %55, 1
  store i16 %56, ptr %49, align 8, !tbaa !109
  %57 = sext i16 %55 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  store ptr %22, ptr %58, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.CCGEdge, ptr %22, i64 1
  %60 = load i32, ptr %15, align 8, !tbaa !66
  %61 = load i32, ptr %6, align 8, !tbaa !61
  %62 = add nsw i32 %61, 1
  %63 = shl nuw i32 1, %62
  %64 = add i32 %63, %61
  %65 = mul nsw i32 %64, %60
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %59, i64 %66
  %68 = load i32, ptr %19, align 4, !tbaa !94
  %69 = sext i32 %68 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %67, i8 0, i64 %69, i1 false)
  %70 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 18
  %71 = load i32, ptr %70, align 4, !tbaa !97
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 17
  %75 = load i32, ptr %74, align 8, !tbaa !69
  %76 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 20
  %77 = load i32, ptr %76, align 4, !tbaa !99
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %67, i64 %78
  store i32 %75, ptr %79, align 4, !tbaa !60
  br label %80

80:                                               ; preds = %73, %5
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_syncFace(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = shl nsw i32 %7, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 %2)
  store i32 %11, ptr %6, align 8, !tbaa !105
  %12 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = sext i32 %11 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %12(ptr noundef %14, i64 noundef %16, ptr noundef nonnull @__func__.ccgSubSurf_syncFace) #23
  store ptr %17, ptr %13, align 8, !tbaa !89
  %18 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = load i32, ptr %6, align 8, !tbaa !105
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr %18(ptr noundef %20, i64 noundef %23, ptr noundef nonnull @__func__.ccgSubSurf_syncFace) #23
  store ptr %24, ptr %19, align 8, !tbaa !90
  br label %25

25:                                               ; preds = %9, %5
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %27 = load i32, ptr %26, align 4, !tbaa !71
  switch i32 %27, label %523 [
    i32 4, label %28
    i32 1, label %265
    i32 2, label %265
    i32 3, label %266
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = ptrtoint ptr %1 to i64
  %32 = getelementptr inbounds %struct._EHash, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = zext i32 %33 to i64
  %35 = urem i64 %31, %34
  %36 = load ptr, ptr %30, align 8, !tbaa !55
  %37 = shl nuw i64 %35, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  br label %40

40:                                               ; preds = %44, %28
  %41 = phi ptr [ %39, %28 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._EHEntry, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %40, !llvm.loop !107

48:                                               ; preds = %44, %40
  %49 = phi ptr [ null, %40 ], [ %42, %44 ]
  %50 = icmp sgt i32 %2, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %53 = zext nneg i32 %2 to i64
  br label %61

54:                                               ; preds = %83, %48
  %55 = icmp sgt i32 %2, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %58 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %59 = zext nneg i32 %2 to i64
  %60 = zext nneg i32 %2 to i64
  br label %88

61:                                               ; preds = %51, %83
  %62 = phi i64 [ 0, %51 ], [ %86, %83 ]
  %63 = load ptr, ptr %0, align 8, !tbaa !56
  %64 = getelementptr inbounds ptr, ptr %3, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = ptrtoint ptr %65 to i64
  %67 = getelementptr inbounds %struct._EHash, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !53
  %69 = zext i32 %68 to i64
  %70 = urem i64 %66, %69
  %71 = load ptr, ptr %63, align 8, !tbaa !55
  %72 = shl nuw i64 %70, 32
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  br label %75

75:                                               ; preds = %79, %61
  %76 = phi ptr [ %74, %61 ], [ %77, %79 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !43
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct._EHEntry, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !106
  %82 = icmp eq ptr %81, %65
  br i1 %82, label %83, label %75, !llvm.loop !132

83:                                               ; preds = %75, %79
  %84 = load ptr, ptr %52, align 8, !tbaa !89
  %85 = getelementptr inbounds ptr, ptr %84, i64 %62
  store ptr %77, ptr %85, align 8, !tbaa !43
  %86 = add nuw nsw i64 %62, 1
  %87 = icmp eq i64 %86, %53
  br i1 %87, label %54, label %61, !llvm.loop !136

88:                                               ; preds = %56, %134
  %89 = phi i64 [ 0, %56 ], [ %93, %134 ]
  %90 = load ptr, ptr %57, align 8, !tbaa !89
  %91 = getelementptr inbounds ptr, ptr %90, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %59
  %95 = and i64 %93, 4294967295
  %96 = select i1 %94, i64 0, i64 %95
  %97 = getelementptr inbounds ptr, ptr %90, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds %struct.CCGVert, ptr %92, i64 0, i32 2
  %100 = load i16, ptr %99, align 8, !tbaa !109
  %101 = icmp sgt i16 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.CCGVert, ptr %92, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !86
  %105 = zext nneg i16 %100 to i64
  %106 = zext nneg i16 %100 to i64
  %107 = getelementptr ptr, ptr %104, i64 %105
  br label %111

108:                                              ; preds = %131
  %109 = add nuw nsw i64 %112, 1
  %110 = icmp eq i64 %109, %106
  br i1 %110, label %134, label %111, !llvm.loop !137

111:                                              ; preds = %102, %108
  %112 = phi i64 [ 0, %102 ], [ %109, %108 ]
  %113 = phi ptr [ undef, %102 ], [ %132, %108 ]
  %114 = xor i64 %112, -1
  %115 = getelementptr ptr, ptr %107, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct.CCGEdge, ptr %116, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !113
  %119 = icmp eq ptr %118, %92
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.CCGEdge, ptr %116, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !115
  %123 = icmp eq ptr %122, %98
  br i1 %123, label %131, label %124

124:                                              ; preds = %120, %111
  %125 = getelementptr inbounds %struct.CCGEdge, ptr %116, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !115
  %127 = icmp ne ptr %126, %92
  %128 = icmp ne ptr %118, %98
  %129 = select i1 %127, i1 true, i1 %128
  %130 = select i1 %129, ptr %113, ptr %116
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi ptr [ %116, %120 ], [ %130, %124 ]
  %133 = phi i1 [ false, %120 ], [ %129, %124 ]
  br i1 %133, label %108, label %134

134:                                              ; preds = %131, %108, %88
  %135 = phi ptr [ null, %88 ], [ %132, %131 ], [ null, %108 ]
  %136 = load ptr, ptr %58, align 8, !tbaa !90
  %137 = getelementptr inbounds ptr, ptr %136, i64 %89
  store ptr %135, ptr %137, align 8, !tbaa !43
  %138 = icmp eq i64 %93, %60
  br i1 %138, label %139, label %88, !llvm.loop !138

139:                                              ; preds = %134, %54
  %140 = icmp eq ptr %49, null
  br i1 %140, label %162, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.CCGFace, ptr %49, i64 0, i32 2
  %143 = load i16, ptr %142, align 8, !tbaa !119
  %144 = sext i16 %143 to i32
  %145 = icmp eq i32 %144, %2
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.CCGFace, ptr %49, i64 1
  %148 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %149 = load ptr, ptr %148, align 8, !tbaa !89
  %150 = sext i32 %2 to i64
  %151 = shl nsw i64 %150, 3
  %152 = tail call i32 @bcmp(ptr nonnull %147, ptr %149, i64 %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = sext i16 %143 to i64
  %156 = getelementptr inbounds ptr, ptr %147, i64 %155
  %157 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %158 = load ptr, ptr %157, align 8, !tbaa !90
  %159 = tail call i32 @bcmp(ptr nonnull %156, ptr %158, i64 %151)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154, %146, %141
  br label %162

162:                                              ; preds = %154, %161, %139
  %163 = phi i1 [ true, %161 ], [ false, %154 ], [ false, %139 ]
  %164 = or i1 %140, %163
  br i1 %164, label %165, label %519

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %167 = load ptr, ptr %166, align 8, !tbaa !89
  %168 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %169 = load ptr, ptr %168, align 8, !tbaa !90
  %170 = tail call fastcc ptr @_face_new(ptr noundef %1, ptr noundef %167, ptr noundef %169, i32 noundef %2, ptr noundef %0)
  br i1 %140, label %246, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.CCGFace, ptr %49, i64 0, i32 2
  %173 = load i16, ptr %172, align 8, !tbaa !119
  %174 = sext i16 %173 to i32
  %175 = sub i32 %2, %174
  %176 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %177 = load i32, ptr %176, align 4, !tbaa !96
  %178 = add nsw i32 %175, %177
  store i32 %178, ptr %176, align 4, !tbaa !96
  store ptr %170, ptr %41, align 8, !tbaa !43
  %179 = load ptr, ptr %49, align 8, !tbaa !117
  store ptr %179, ptr %170, align 8, !tbaa !117
  %180 = icmp sgt i16 %173, 0
  br i1 %180, label %181, label %241

181:                                              ; preds = %171
  %182 = zext nneg i16 %173 to i64
  %183 = getelementptr inbounds %struct.CCGFace, ptr %49, i64 1
  %184 = getelementptr inbounds ptr, ptr %183, i64 %182
  br label %185

185:                                              ; preds = %234, %181
  %186 = phi i64 [ 0, %181 ], [ %239, %234 ]
  %187 = getelementptr inbounds ptr, ptr %183, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !43
  %189 = getelementptr inbounds %struct.CCGVert, ptr %188, i64 0, i32 3
  %190 = load i16, ptr %189, align 2, !tbaa !108
  %191 = icmp sgt i16 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %185
  %193 = zext nneg i16 %190 to i64
  %194 = getelementptr inbounds %struct.CCGVert, ptr %188, i64 0, i32 7
  %195 = load ptr, ptr %194, align 8, !tbaa !88
  br label %199

196:                                              ; preds = %199
  %197 = add nuw nsw i64 %200, 1
  %198 = icmp eq i64 %197, %193
  br i1 %198, label %210, label %199, !llvm.loop !120

199:                                              ; preds = %196, %192
  %200 = phi i64 [ 0, %192 ], [ %197, %196 ]
  %201 = getelementptr inbounds ptr, ptr %195, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !43
  %203 = icmp eq ptr %202, %49
  br i1 %203, label %204, label %196

204:                                              ; preds = %199
  %205 = getelementptr inbounds ptr, ptr %195, i64 %200
  %206 = add nsw i16 %190, -1
  store i16 %206, ptr %189, align 2, !tbaa !108
  %207 = sext i16 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %195, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !43
  store ptr %209, ptr %205, align 8, !tbaa !43
  br label %210

210:                                              ; preds = %196, %204, %185
  %211 = getelementptr inbounds ptr, ptr %184, i64 %186
  %212 = load ptr, ptr %211, align 8, !tbaa !43
  %213 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 2
  %214 = load i16, ptr %213, align 8, !tbaa !111
  %215 = icmp sgt i16 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %210
  %217 = zext nneg i16 %214 to i64
  %218 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 7
  %219 = load ptr, ptr %218, align 8, !tbaa !82
  br label %223

220:                                              ; preds = %223
  %221 = add nuw nsw i64 %224, 1
  %222 = icmp eq i64 %221, %217
  br i1 %222, label %234, label %223, !llvm.loop !121

223:                                              ; preds = %220, %216
  %224 = phi i64 [ 0, %216 ], [ %221, %220 ]
  %225 = getelementptr inbounds ptr, ptr %219, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !43
  %227 = icmp eq ptr %226, %49
  br i1 %227, label %228, label %220

228:                                              ; preds = %223
  %229 = getelementptr inbounds ptr, ptr %219, i64 %224
  %230 = add nsw i16 %214, -1
  store i16 %230, ptr %213, align 8, !tbaa !111
  %231 = sext i16 %230 to i64
  %232 = getelementptr inbounds ptr, ptr %219, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !43
  store ptr %233, ptr %229, align 8, !tbaa !43
  br label %234

234:                                              ; preds = %220, %228, %210
  %235 = load ptr, ptr %187, align 8, !tbaa !43
  %236 = getelementptr inbounds %struct.CCGVert, ptr %235, i64 0, i32 4
  %237 = load i16, ptr %236, align 4, !tbaa !116
  %238 = or i16 %237, 1
  store i16 %238, ptr %236, align 4, !tbaa !116
  %239 = add nuw nsw i64 %186, 1
  %240 = icmp eq i64 %239, %182
  br i1 %240, label %241, label %185, !llvm.loop !122

241:                                              ; preds = %234, %171
  %242 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !78
  %244 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %245 = load ptr, ptr %244, align 8, !tbaa !44
  tail call void %243(ptr noundef %245, ptr noundef nonnull %49) #23
  br label %251

246:                                              ; preds = %165
  %247 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %248 = load i32, ptr %247, align 4, !tbaa !96
  %249 = add nsw i32 %248, %2
  store i32 %249, ptr %247, align 4, !tbaa !96
  %250 = load ptr, ptr %29, align 8, !tbaa !58
  tail call fastcc void @_ehash_insert(ptr noundef %250, ptr noundef %170)
  br label %251

251:                                              ; preds = %246, %241
  %252 = icmp sgt i32 %2, 0
  br i1 %252, label %253, label %519

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.CCGFace, ptr %170, i64 1
  %255 = zext nneg i32 %2 to i64
  br label %256

256:                                              ; preds = %253, %256
  %257 = phi i64 [ 0, %253 ], [ %263, %256 ]
  %258 = getelementptr inbounds ptr, ptr %254, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !43
  %260 = getelementptr inbounds %struct.CCGVert, ptr %259, i64 0, i32 4
  %261 = load i16, ptr %260, align 4, !tbaa !116
  %262 = or i16 %261, 1
  store i16 %262, ptr %260, align 4, !tbaa !116
  %263 = add nuw nsw i64 %257, 1
  %264 = icmp eq i64 %263, %255
  br i1 %264, label %519, label %256, !llvm.loop !139

265:                                              ; preds = %25, %25
  store i32 3, ptr %26, align 4, !tbaa !71
  br label %266

266:                                              ; preds = %25, %265
  %267 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %268 = load ptr, ptr %267, align 8, !tbaa !72
  %269 = ptrtoint ptr %1 to i64
  %270 = getelementptr inbounds %struct._EHash, ptr %268, i64 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !53
  %272 = zext i32 %271 to i64
  %273 = urem i64 %269, %272
  %274 = load ptr, ptr %268, align 8, !tbaa !55
  %275 = shl nuw i64 %273, 32
  %276 = ashr exact i64 %275, 32
  %277 = getelementptr inbounds ptr, ptr %274, i64 %276
  br label %278

278:                                              ; preds = %282, %266
  %279 = phi ptr [ %277, %266 ], [ %280, %282 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !43
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct._EHEntry, ptr %280, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !106
  %285 = icmp eq ptr %284, %1
  br i1 %285, label %286, label %278, !llvm.loop !107

286:                                              ; preds = %282, %278
  %287 = phi ptr [ null, %278 ], [ %280, %282 ]
  %288 = icmp sgt i32 %2, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %291 = zext nneg i32 %2 to i64
  br label %309

292:                                              ; preds = %331
  %293 = add nuw nsw i64 %310, 1
  %294 = icmp eq i64 %293, %291
  br i1 %294, label %295, label %309, !llvm.loop !140

295:                                              ; preds = %292, %286
  %296 = icmp sgt i32 %2, 0
  br i1 %296, label %297, label %432

297:                                              ; preds = %295
  %298 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %299 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %300 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 8
  %301 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 9
  %302 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %303 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 1
  %304 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %305 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %306 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 10
  %307 = zext nneg i32 %2 to i64
  %308 = zext nneg i32 %2 to i64
  br label %338

309:                                              ; preds = %289, %292
  %310 = phi i64 [ 0, %289 ], [ %293, %292 ]
  %311 = load ptr, ptr %0, align 8, !tbaa !56
  %312 = getelementptr inbounds ptr, ptr %3, i64 %310
  %313 = load ptr, ptr %312, align 8, !tbaa !43
  %314 = ptrtoint ptr %313 to i64
  %315 = getelementptr inbounds %struct._EHash, ptr %311, i64 0, i32 2
  %316 = load i32, ptr %315, align 4, !tbaa !53
  %317 = zext i32 %316 to i64
  %318 = urem i64 %314, %317
  %319 = load ptr, ptr %311, align 8, !tbaa !55
  %320 = shl nuw i64 %318, 32
  %321 = ashr exact i64 %320, 32
  %322 = getelementptr inbounds ptr, ptr %319, i64 %321
  br label %323

323:                                              ; preds = %327, %309
  %324 = phi ptr [ %322, %309 ], [ %325, %327 ]
  %325 = load ptr, ptr %324, align 8, !tbaa !43
  %326 = icmp eq ptr %325, null
  br i1 %326, label %331, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct._EHEntry, ptr %325, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !106
  %330 = icmp eq ptr %329, %313
  br i1 %330, label %331, label %323, !llvm.loop !132

331:                                              ; preds = %323, %327
  %332 = load ptr, ptr %290, align 8, !tbaa !89
  %333 = getelementptr inbounds ptr, ptr %332, i64 %310
  store ptr %325, ptr %333, align 8, !tbaa !43
  %334 = load ptr, ptr %290, align 8, !tbaa !89
  %335 = getelementptr inbounds ptr, ptr %334, i64 %310
  %336 = load ptr, ptr %335, align 8, !tbaa !43
  %337 = icmp eq ptr %336, null
  br i1 %337, label %523, label %292

338:                                              ; preds = %297, %430
  %339 = phi i64 [ 0, %297 ], [ %343, %430 ]
  %340 = load ptr, ptr %298, align 8, !tbaa !89
  %341 = getelementptr inbounds ptr, ptr %340, i64 %339
  %342 = load ptr, ptr %341, align 8, !tbaa !43
  %343 = add nuw nsw i64 %339, 1
  %344 = icmp eq i64 %343, %307
  %345 = and i64 %343, 4294967295
  %346 = select i1 %344, i64 0, i64 %345
  %347 = getelementptr inbounds ptr, ptr %340, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !43
  %349 = getelementptr inbounds %struct.CCGVert, ptr %342, i64 0, i32 2
  %350 = load i16, ptr %349, align 8, !tbaa !109
  %351 = icmp sgt i16 %350, 0
  br i1 %351, label %352, label %384

352:                                              ; preds = %338
  %353 = getelementptr inbounds %struct.CCGVert, ptr %342, i64 0, i32 6
  %354 = load ptr, ptr %353, align 8, !tbaa !86
  %355 = zext nneg i16 %350 to i64
  %356 = zext nneg i16 %350 to i64
  %357 = getelementptr ptr, ptr %354, i64 %355
  br label %361

358:                                              ; preds = %381
  %359 = add nuw nsw i64 %362, 1
  %360 = icmp eq i64 %359, %356
  br i1 %360, label %384, label %361, !llvm.loop !137

361:                                              ; preds = %352, %358
  %362 = phi i64 [ 0, %352 ], [ %359, %358 ]
  %363 = phi ptr [ undef, %352 ], [ %382, %358 ]
  %364 = xor i64 %362, -1
  %365 = getelementptr ptr, ptr %357, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !43
  %367 = getelementptr inbounds %struct.CCGEdge, ptr %366, i64 0, i32 5
  %368 = load ptr, ptr %367, align 8, !tbaa !113
  %369 = icmp eq ptr %368, %342
  br i1 %369, label %370, label %374

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.CCGEdge, ptr %366, i64 0, i32 6
  %372 = load ptr, ptr %371, align 8, !tbaa !115
  %373 = icmp eq ptr %372, %348
  br i1 %373, label %381, label %374

374:                                              ; preds = %370, %361
  %375 = getelementptr inbounds %struct.CCGEdge, ptr %366, i64 0, i32 6
  %376 = load ptr, ptr %375, align 8, !tbaa !115
  %377 = icmp ne ptr %376, %342
  %378 = icmp ne ptr %368, %348
  %379 = select i1 %377, i1 true, i1 %378
  %380 = select i1 %379, ptr %363, ptr %366
  br label %381

381:                                              ; preds = %374, %370
  %382 = phi ptr [ %366, %370 ], [ %380, %374 ]
  %383 = phi i1 [ false, %370 ], [ %379, %374 ]
  br i1 %383, label %358, label %384

384:                                              ; preds = %381, %358, %338
  %385 = phi ptr [ null, %338 ], [ %382, %381 ], [ null, %358 ]
  %386 = load ptr, ptr %299, align 8, !tbaa !90
  %387 = getelementptr inbounds ptr, ptr %386, i64 %339
  store ptr %385, ptr %387, align 8, !tbaa !43
  %388 = load ptr, ptr %299, align 8, !tbaa !90
  %389 = getelementptr inbounds ptr, ptr %388, i64 %339
  %390 = load ptr, ptr %389, align 8, !tbaa !43
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %430

392:                                              ; preds = %384
  %393 = load i32, ptr %300, align 8, !tbaa !92
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %523, label %395

395:                                              ; preds = %392
  %396 = load ptr, ptr %298, align 8, !tbaa !89
  %397 = getelementptr inbounds ptr, ptr %396, i64 %339
  %398 = load ptr, ptr %397, align 8, !tbaa !43
  %399 = getelementptr inbounds ptr, ptr %396, i64 %346
  %400 = load ptr, ptr %399, align 8, !tbaa !43
  %401 = load float, ptr %301, align 4, !tbaa !93
  %402 = tail call fastcc ptr @_edge_new(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef %398, ptr noundef %400, float noundef %401, ptr noundef %0)
  %403 = load ptr, ptr %299, align 8, !tbaa !90
  %404 = getelementptr inbounds ptr, ptr %403, i64 %339
  store ptr %402, ptr %404, align 8, !tbaa !43
  %405 = load ptr, ptr %302, align 8, !tbaa !57
  tail call fastcc void @_ehash_insert(ptr noundef %405, ptr noundef %402)
  %406 = getelementptr inbounds %struct.CCGEdge, ptr %402, i64 0, i32 5
  %407 = load ptr, ptr %406, align 8, !tbaa !113
  %408 = getelementptr inbounds %struct.CCGVert, ptr %407, i64 0, i32 4
  %409 = load i16, ptr %408, align 4, !tbaa !116
  %410 = or i16 %409, 1
  store i16 %410, ptr %408, align 4, !tbaa !116
  %411 = getelementptr inbounds %struct.CCGEdge, ptr %402, i64 0, i32 6
  %412 = load ptr, ptr %411, align 8, !tbaa !115
  %413 = getelementptr inbounds %struct.CCGVert, ptr %412, i64 0, i32 4
  %414 = load i16, ptr %413, align 4, !tbaa !116
  %415 = or i16 %414, 1
  store i16 %415, ptr %413, align 4, !tbaa !116
  %416 = load i32, ptr %303, align 4, !tbaa !94
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %430, label %418

418:                                              ; preds = %395
  %419 = getelementptr inbounds %struct.CCGEdge, ptr %402, i64 1
  %420 = load i32, ptr %304, align 8, !tbaa !66
  %421 = load i32, ptr %305, align 8, !tbaa !61
  %422 = add nsw i32 %421, 1
  %423 = shl nuw i32 1, %422
  %424 = add i32 %423, %421
  %425 = mul nsw i32 %424, %420
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %419, i64 %426
  %428 = load ptr, ptr %306, align 8, !tbaa !91
  %429 = sext i32 %416 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %427, ptr align 1 %428, i64 %429, i1 false)
  br label %430

430:                                              ; preds = %395, %418, %384
  %431 = icmp eq i64 %343, %308
  br i1 %431, label %432, label %338, !llvm.loop !141

432:                                              ; preds = %430, %295
  %433 = icmp eq ptr %287, null
  br i1 %433, label %455, label %434

434:                                              ; preds = %432
  %435 = getelementptr inbounds %struct.CCGFace, ptr %287, i64 0, i32 2
  %436 = load i16, ptr %435, align 8, !tbaa !119
  %437 = sext i16 %436 to i32
  %438 = icmp eq i32 %437, %2
  br i1 %438, label %439, label %454

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.CCGFace, ptr %287, i64 1
  %441 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %442 = load ptr, ptr %441, align 8, !tbaa !89
  %443 = sext i32 %2 to i64
  %444 = shl nsw i64 %443, 3
  %445 = tail call i32 @bcmp(ptr nonnull %440, ptr %442, i64 %444)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %439
  %448 = sext i16 %436 to i64
  %449 = getelementptr inbounds ptr, ptr %440, i64 %448
  %450 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %451 = load ptr, ptr %450, align 8, !tbaa !90
  %452 = tail call i32 @bcmp(ptr nonnull %449, ptr %451, i64 %444)
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %447, %439, %434
  br label %455

455:                                              ; preds = %447, %454, %432
  %456 = phi i1 [ true, %454 ], [ false, %447 ], [ false, %432 ]
  %457 = or i1 %433, %456
  br i1 %457, label %458, label %482

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %460 = load ptr, ptr %459, align 8, !tbaa !89
  %461 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %462 = load ptr, ptr %461, align 8, !tbaa !90
  %463 = tail call fastcc ptr @_face_new(ptr noundef %1, ptr noundef %460, ptr noundef %462, i32 noundef %2, ptr noundef %0)
  %464 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !58
  tail call fastcc void @_ehash_insert(ptr noundef %465, ptr noundef %463)
  %466 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %467 = load i32, ptr %466, align 4, !tbaa !96
  %468 = add nsw i32 %467, %2
  store i32 %468, ptr %466, align 4, !tbaa !96
  %469 = icmp sgt i32 %2, 0
  br i1 %469, label %470, label %519

470:                                              ; preds = %458
  %471 = getelementptr inbounds %struct.CCGFace, ptr %463, i64 1
  %472 = zext nneg i32 %2 to i64
  br label %473

473:                                              ; preds = %470, %473
  %474 = phi i64 [ 0, %470 ], [ %480, %473 ]
  %475 = getelementptr inbounds ptr, ptr %471, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !43
  %477 = getelementptr inbounds %struct.CCGVert, ptr %476, i64 0, i32 4
  %478 = load i16, ptr %477, align 4, !tbaa !116
  %479 = or i16 %478, 1
  store i16 %479, ptr %477, align 4, !tbaa !116
  %480 = add nuw nsw i64 %474, 1
  %481 = icmp eq i64 %480, %472
  br i1 %481, label %519, label %473, !llvm.loop !142

482:                                              ; preds = %455
  %483 = load ptr, ptr %287, align 8, !tbaa !117
  store ptr %483, ptr %279, align 8, !tbaa !43
  %484 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !58
  tail call fastcc void @_ehash_insert(ptr noundef %485, ptr noundef nonnull %287)
  %486 = getelementptr inbounds %struct.CCGFace, ptr %287, i64 0, i32 3
  store i16 0, ptr %486, align 2, !tbaa !143
  %487 = getelementptr inbounds %struct.CCGFace, ptr %287, i64 0, i32 2
  %488 = load i16, ptr %487, align 8, !tbaa !119
  %489 = sext i16 %488 to i32
  %490 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %491 = load i32, ptr %490, align 4, !tbaa !96
  %492 = add nsw i32 %491, %489
  store i32 %492, ptr %490, align 4, !tbaa !96
  %493 = icmp sgt i16 %488, 0
  br i1 %493, label %494, label %519

494:                                              ; preds = %482
  %495 = getelementptr inbounds %struct.CCGFace, ptr %287, i64 1
  %496 = zext nneg i32 %489 to i64
  br label %500

497:                                              ; preds = %500
  %498 = add nuw nsw i64 %501, 1
  %499 = icmp eq i64 %498, %496
  br i1 %499, label %519, label %500, !llvm.loop !144

500:                                              ; preds = %494, %497
  %501 = phi i64 [ 0, %494 ], [ %498, %497 ]
  %502 = getelementptr inbounds ptr, ptr %495, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !43
  %504 = getelementptr inbounds %struct.CCGVert, ptr %503, i64 0, i32 4
  %505 = load i16, ptr %504, align 4, !tbaa !116
  %506 = and i16 %505, 2
  %507 = icmp eq i16 %506, 0
  br i1 %507, label %497, label %508

508:                                              ; preds = %500
  %509 = zext nneg i32 %489 to i64
  br label %510

510:                                              ; preds = %508, %510
  %511 = phi i64 [ 0, %508 ], [ %517, %510 ]
  %512 = getelementptr inbounds ptr, ptr %495, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !43
  %514 = getelementptr inbounds %struct.CCGVert, ptr %513, i64 0, i32 4
  %515 = load i16, ptr %514, align 4, !tbaa !116
  %516 = or i16 %515, 1
  store i16 %516, ptr %514, align 4, !tbaa !116
  %517 = add nuw nsw i64 %511, 1
  %518 = icmp eq i64 %517, %509
  br i1 %518, label %519, label %510, !llvm.loop !145

519:                                              ; preds = %497, %510, %473, %256, %482, %458, %251, %162
  %520 = phi ptr [ %49, %162 ], [ %49, %251 ], [ %463, %458 ], [ %287, %482 ], [ %49, %256 ], [ %463, %473 ], [ %287, %510 ], [ %287, %497 ]
  %521 = icmp eq ptr %4, null
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  store ptr %520, ptr %4, align 8, !tbaa !43
  br label %523

523:                                              ; preds = %331, %392, %519, %522, %25
  %524 = phi i32 [ 1, %25 ], [ 0, %522 ], [ 0, %519 ], [ 2, %392 ], [ 2, %331 ]
  ret i32 %524
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_face_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = add nsw i32 %7, -1
  %9 = shl nuw i32 1, %8
  %10 = add nuw nsw i32 %9, 1
  %11 = add nuw i32 %9, 2
  %12 = mul i32 %11, %3
  %13 = mul i32 %12, %10
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = shl i32 %3, 4
  %20 = add i32 %19, 24
  %21 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !66
  %23 = mul nsw i32 %14, %22
  %24 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 3, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !102
  %26 = add i32 %20, %25
  %27 = add i32 %26, %23
  %28 = tail call ptr %16(ptr noundef %18, i32 noundef %27) #23
  %29 = trunc i32 %3 to i16
  %30 = getelementptr inbounds %struct.CCGFace, ptr %28, i64 0, i32 2
  store i16 %29, ptr %30, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.CCGFace, ptr %28, i64 0, i32 1
  store ptr %0, ptr %31, align 8, !tbaa !146
  %32 = getelementptr inbounds %struct.CCGFace, ptr %28, i64 0, i32 3
  store i16 0, ptr %32, align 2, !tbaa !143
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.CCGFace, ptr %28, i64 1
  %36 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 4, i32 1
  %37 = zext nneg i32 %3 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ 0, %34 ], [ %79, %38 ]
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %35, i64 %39
  store ptr %41, ptr %42, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %2, i64 %39
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = load i16, ptr %30, align 8, !tbaa !119
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %35, i64 %46
  %48 = getelementptr inbounds ptr, ptr %47, i64 %39
  store ptr %44, ptr %48, align 8, !tbaa !43
  %49 = load ptr, ptr %40, align 8, !tbaa !43
  %50 = load ptr, ptr %36, align 8, !tbaa !135
  %51 = load ptr, ptr %17, align 8, !tbaa !44
  %52 = getelementptr inbounds %struct.CCGVert, ptr %49, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = getelementptr inbounds %struct.CCGVert, ptr %49, i64 0, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !108
  %56 = sext i16 %55 to i32
  %57 = shl nsw i32 %56, 3
  %58 = add nsw i32 %57, 8
  %59 = tail call ptr %50(ptr noundef %51, ptr noundef %53, i32 noundef %58, i32 noundef %57) #23
  store ptr %59, ptr %52, align 8, !tbaa !88
  %60 = load i16, ptr %54, align 2, !tbaa !108
  %61 = add i16 %60, 1
  store i16 %61, ptr %54, align 2, !tbaa !108
  %62 = sext i16 %60 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  store ptr %28, ptr %63, align 8, !tbaa !43
  %64 = load ptr, ptr %43, align 8, !tbaa !43
  %65 = load ptr, ptr %36, align 8, !tbaa !135
  %66 = load ptr, ptr %17, align 8, !tbaa !44
  %67 = getelementptr inbounds %struct.CCGEdge, ptr %64, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !82
  %69 = getelementptr inbounds %struct.CCGEdge, ptr %64, i64 0, i32 2
  %70 = load i16, ptr %69, align 8, !tbaa !111
  %71 = sext i16 %70 to i32
  %72 = shl nsw i32 %71, 3
  %73 = add nsw i32 %72, 8
  %74 = tail call ptr %65(ptr noundef %66, ptr noundef %68, i32 noundef %73, i32 noundef %72) #23
  store ptr %74, ptr %67, align 8, !tbaa !82
  %75 = load i16, ptr %69, align 8, !tbaa !111
  %76 = add i16 %75, 1
  store i16 %76, ptr %69, align 8, !tbaa !111
  %77 = sext i16 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  store ptr %28, ptr %78, align 8, !tbaa !43
  %79 = add nuw nsw i64 %39, 1
  %80 = icmp eq i64 %79, %37
  br i1 %80, label %81, label %38, !llvm.loop !147

81:                                               ; preds = %38, %5
  %82 = load i32, ptr %6, align 8, !tbaa !61
  %83 = add nsw i32 %82, -1
  %84 = shl nuw i32 1, %83
  %85 = add nuw nsw i32 %84, 1
  %86 = getelementptr inbounds %struct.CCGFace, ptr %28, i64 1
  %87 = load i16, ptr %30, align 8, !tbaa !119
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  %91 = load i32, ptr %21, align 8, !tbaa !66
  %92 = sext i16 %87 to i32
  %93 = mul nsw i32 %85, %92
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %93, %85
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 %96, %91
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %90, i64 %98
  %100 = load i32, ptr %24, align 8, !tbaa !102
  %101 = sext i32 %100 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %99, i8 0, i64 %101, i1 false)
  %102 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 18
  %103 = load i32, ptr %102, align 4, !tbaa !97
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %81
  %106 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 17
  %107 = load i32, ptr %106, align 8, !tbaa !69
  %108 = getelementptr inbounds %struct.CCGSubSurf, ptr %4, i64 0, i32 21
  %109 = load i32, ptr %108, align 8, !tbaa !100
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %99, i64 %110
  store i32 %107, ptr %111, align 4, !tbaa !60
  br label %112

112:                                              ; preds = %105, %81
  ret ptr %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getEdgeUserData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 1
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = add nsw i32 %7, 1
  %9 = shl nuw i32 1, %8
  %10 = add i32 %9, %7
  %11 = mul nsw i32 %10, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_processSync(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !71
  switch i32 %3, label %5 [
    i32 4, label %4
    i32 0, label %244
  ]

4:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !tbaa !71
  br label %243

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %95, label %11

11:                                               ; preds = %5
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  br label %18

15:                                               ; preds = %91, %18
  %16 = and i64 %20, 4294967295
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %95, label %18, !llvm.loop !73

18:                                               ; preds = %15, %11
  %19 = phi i64 [ %12, %11 ], [ %20, %15 ]
  %20 = add nsw i64 %19, -1
  %21 = load ptr, ptr %7, align 8, !tbaa !55
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25

25:                                               ; preds = %18, %91
  %26 = phi ptr [ %27, %91 ], [ %23, %18 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !119
  %30 = icmp sgt i16 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %25
  %32 = zext nneg i16 %29 to i64
  %33 = getelementptr inbounds %struct.CCGFace, ptr %26, i64 1
  %34 = getelementptr inbounds ptr, ptr %33, i64 %32
  br label %35

35:                                               ; preds = %84, %31
  %36 = phi i64 [ 0, %31 ], [ %89, %84 ]
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.CCGVert, ptr %38, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !108
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = zext nneg i16 %40 to i64
  %44 = getelementptr inbounds %struct.CCGVert, ptr %38, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  br label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, %43
  br i1 %48, label %60, label %49, !llvm.loop !120

49:                                               ; preds = %46, %42
  %50 = phi i64 [ 0, %42 ], [ %47, %46 ]
  %51 = getelementptr inbounds ptr, ptr %45, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = icmp eq ptr %52, %26
  br i1 %53, label %54, label %46

54:                                               ; preds = %49
  %55 = getelementptr inbounds ptr, ptr %45, i64 %50
  %56 = add nsw i16 %40, -1
  store i16 %56, ptr %39, align 2, !tbaa !108
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %45, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  store ptr %59, ptr %55, align 8, !tbaa !43
  br label %60

60:                                               ; preds = %46, %54, %35
  %61 = getelementptr inbounds ptr, ptr %34, i64 %36
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  %63 = getelementptr inbounds %struct.CCGEdge, ptr %62, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !111
  %65 = icmp sgt i16 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = zext nneg i16 %64 to i64
  %68 = getelementptr inbounds %struct.CCGEdge, ptr %62, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  br label %73

70:                                               ; preds = %73
  %71 = add nuw nsw i64 %74, 1
  %72 = icmp eq i64 %71, %67
  br i1 %72, label %84, label %73, !llvm.loop !121

73:                                               ; preds = %70, %66
  %74 = phi i64 [ 0, %66 ], [ %71, %70 ]
  %75 = getelementptr inbounds ptr, ptr %69, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = icmp eq ptr %76, %26
  br i1 %77, label %78, label %70

78:                                               ; preds = %73
  %79 = getelementptr inbounds ptr, ptr %69, i64 %74
  %80 = add nsw i16 %64, -1
  store i16 %80, ptr %63, align 8, !tbaa !111
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %69, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  store ptr %83, ptr %79, align 8, !tbaa !43
  br label %84

84:                                               ; preds = %70, %78, %60
  %85 = load ptr, ptr %37, align 8, !tbaa !43
  %86 = getelementptr inbounds %struct.CCGVert, ptr %85, i64 0, i32 4
  %87 = load i16, ptr %86, align 4, !tbaa !116
  %88 = or i16 %87, 1
  store i16 %88, ptr %86, align 4, !tbaa !116
  %89 = add nuw nsw i64 %36, 1
  %90 = icmp eq i64 %89, %32
  br i1 %90, label %91, label %35, !llvm.loop !122

91:                                               ; preds = %84, %25
  %92 = load ptr, ptr %13, align 8, !tbaa !78
  %93 = load ptr, ptr %14, align 8, !tbaa !44
  tail call void %92(ptr noundef %93, ptr noundef nonnull %26) #23
  %94 = icmp eq ptr %27, null
  br i1 %94, label %15, label %25, !llvm.loop !79

95:                                               ; preds = %15, %5
  %96 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 4, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !80
  %98 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = load ptr, ptr %7, align 8, !tbaa !55
  tail call void %97(ptr noundef %99, ptr noundef %100) #23
  %101 = load ptr, ptr %96, align 8, !tbaa !80
  %102 = load ptr, ptr %98, align 8, !tbaa !49
  tail call void %101(ptr noundef %102, ptr noundef nonnull %7) #23
  %103 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 24
  %104 = load ptr, ptr %103, align 8, !tbaa !81
  %105 = getelementptr inbounds %struct._EHash, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !53
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %188, label %108

108:                                              ; preds = %95
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %111 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  br label %115

112:                                              ; preds = %172, %115
  %113 = and i64 %117, 4294967295
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %188, label %115, !llvm.loop !73

115:                                              ; preds = %112, %108
  %116 = phi i64 [ %109, %108 ], [ %117, %112 ]
  %117 = add nsw i64 %116, -1
  %118 = load ptr, ptr %104, align 8, !tbaa !55
  %119 = getelementptr inbounds ptr, ptr %118, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !43
  %121 = icmp eq ptr %120, null
  br i1 %121, label %112, label %122

122:                                              ; preds = %115, %172
  %123 = phi ptr [ %124, %172 ], [ %120, %115 ]
  %124 = load ptr, ptr %123, align 8, !tbaa !76
  %125 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !113
  %127 = getelementptr inbounds %struct.CCGVert, ptr %126, i64 0, i32 2
  %128 = load i16, ptr %127, align 8, !tbaa !109
  %129 = icmp sgt i16 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %122
  %131 = zext nneg i16 %128 to i64
  %132 = getelementptr inbounds %struct.CCGVert, ptr %126, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  br label %137

134:                                              ; preds = %137
  %135 = add nuw nsw i64 %138, 1
  %136 = icmp eq i64 %135, %131
  br i1 %136, label %148, label %137, !llvm.loop !114

137:                                              ; preds = %134, %130
  %138 = phi i64 [ 0, %130 ], [ %135, %134 ]
  %139 = getelementptr inbounds ptr, ptr %133, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !43
  %141 = icmp eq ptr %140, %123
  br i1 %141, label %142, label %134

142:                                              ; preds = %137
  %143 = getelementptr inbounds ptr, ptr %133, i64 %138
  %144 = add nsw i16 %128, -1
  store i16 %144, ptr %127, align 8, !tbaa !109
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %133, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !43
  store ptr %147, ptr %143, align 8, !tbaa !43
  br label %148

148:                                              ; preds = %134, %142, %122
  %149 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !115
  %151 = getelementptr inbounds %struct.CCGVert, ptr %150, i64 0, i32 2
  %152 = load i16, ptr %151, align 8, !tbaa !109
  %153 = icmp sgt i16 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %148
  %155 = zext nneg i16 %152 to i64
  %156 = getelementptr inbounds %struct.CCGVert, ptr %150, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !86
  br label %161

158:                                              ; preds = %161
  %159 = add nuw nsw i64 %162, 1
  %160 = icmp eq i64 %159, %155
  br i1 %160, label %172, label %161, !llvm.loop !114

161:                                              ; preds = %158, %154
  %162 = phi i64 [ 0, %154 ], [ %159, %158 ]
  %163 = getelementptr inbounds ptr, ptr %157, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !43
  %165 = icmp eq ptr %164, %123
  br i1 %165, label %166, label %158

166:                                              ; preds = %161
  %167 = getelementptr inbounds ptr, ptr %157, i64 %162
  %168 = add nsw i16 %152, -1
  store i16 %168, ptr %151, align 8, !tbaa !109
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %157, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !43
  store ptr %171, ptr %167, align 8, !tbaa !43
  br label %172

172:                                              ; preds = %158, %148, %166
  %173 = load ptr, ptr %125, align 8, !tbaa !113
  %174 = getelementptr inbounds %struct.CCGVert, ptr %173, i64 0, i32 4
  %175 = load i16, ptr %174, align 4, !tbaa !116
  %176 = or i16 %175, 1
  store i16 %176, ptr %174, align 4, !tbaa !116
  %177 = load ptr, ptr %149, align 8, !tbaa !115
  %178 = getelementptr inbounds %struct.CCGVert, ptr %177, i64 0, i32 4
  %179 = load i16, ptr %178, align 4, !tbaa !116
  %180 = or i16 %179, 1
  store i16 %180, ptr %178, align 4, !tbaa !116
  %181 = load ptr, ptr %110, align 8, !tbaa !78
  %182 = load ptr, ptr %111, align 8, !tbaa !44
  %183 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 0, i32 7
  %184 = load ptr, ptr %183, align 8, !tbaa !82
  tail call void %181(ptr noundef %182, ptr noundef %184) #23
  %185 = load ptr, ptr %110, align 8, !tbaa !78
  %186 = load ptr, ptr %111, align 8, !tbaa !44
  tail call void %185(ptr noundef %186, ptr noundef nonnull %123) #23
  %187 = icmp eq ptr %124, null
  br i1 %187, label %112, label %122, !llvm.loop !79

188:                                              ; preds = %112, %95
  %189 = getelementptr inbounds %struct._EHash, ptr %104, i64 0, i32 4, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !80
  %191 = getelementptr inbounds %struct._EHash, ptr %104, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !49
  %193 = load ptr, ptr %104, align 8, !tbaa !55
  tail call void %190(ptr noundef %192, ptr noundef %193) #23
  %194 = load ptr, ptr %189, align 8, !tbaa !80
  %195 = load ptr, ptr %191, align 8, !tbaa !49
  tail call void %194(ptr noundef %195, ptr noundef nonnull %104) #23
  %196 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 23
  %197 = load ptr, ptr %196, align 8, !tbaa !85
  %198 = getelementptr inbounds %struct._EHash, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !53
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %229, label %201

201:                                              ; preds = %188
  %202 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 4, i32 2
  %203 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 5
  %204 = sext i32 %199 to i64
  br label %208

205:                                              ; preds = %215, %208
  %206 = and i64 %210, 4294967295
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %229, label %208, !llvm.loop !73

208:                                              ; preds = %201, %205
  %209 = phi i64 [ %204, %201 ], [ %210, %205 ]
  %210 = add nsw i64 %209, -1
  %211 = load ptr, ptr %197, align 8, !tbaa !55
  %212 = getelementptr inbounds ptr, ptr %211, i64 %210
  %213 = load ptr, ptr %212, align 8, !tbaa !43
  %214 = icmp eq ptr %213, null
  br i1 %214, label %205, label %215

215:                                              ; preds = %208, %215
  %216 = phi ptr [ %217, %215 ], [ %213, %208 ]
  %217 = load ptr, ptr %216, align 8, !tbaa !76
  %218 = load ptr, ptr %202, align 8, !tbaa !78
  %219 = load ptr, ptr %203, align 8, !tbaa !44
  %220 = getelementptr inbounds %struct.CCGVert, ptr %216, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !86
  tail call void %218(ptr noundef %219, ptr noundef %221) #23
  %222 = load ptr, ptr %202, align 8, !tbaa !78
  %223 = load ptr, ptr %203, align 8, !tbaa !44
  %224 = getelementptr inbounds %struct.CCGVert, ptr %216, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !88
  tail call void %222(ptr noundef %223, ptr noundef %225) #23
  %226 = load ptr, ptr %202, align 8, !tbaa !78
  %227 = load ptr, ptr %203, align 8, !tbaa !44
  tail call void %226(ptr noundef %227, ptr noundef nonnull %216) #23
  %228 = icmp eq ptr %217, null
  br i1 %228, label %205, label %215, !llvm.loop !79

229:                                              ; preds = %205, %188
  %230 = getelementptr inbounds %struct._EHash, ptr %197, i64 0, i32 4, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !80
  %232 = getelementptr inbounds %struct._EHash, ptr %197, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !49
  %234 = load ptr, ptr %197, align 8, !tbaa !55
  tail call void %231(ptr noundef %233, ptr noundef %234) #23
  %235 = load ptr, ptr %230, align 8, !tbaa !80
  %236 = load ptr, ptr %232, align 8, !tbaa !49
  tail call void %235(ptr noundef %236, ptr noundef nonnull %197) #23
  %237 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %238 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 28
  %239 = load ptr, ptr %238, align 8, !tbaa !90
  tail call void %237(ptr noundef %239) #23
  %240 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %241 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 27
  %242 = load ptr, ptr %241, align 8, !tbaa !89
  tail call void %240(ptr noundef %242) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %241, i8 0, i64 16, i1 false)
  br label %243

243:                                              ; preds = %229, %4
  tail call fastcc void @ccgSubSurf__sync(ptr noundef %0)
  br label %244

244:                                              ; preds = %243, %1
  %245 = phi i32 [ 1, %1 ], [ 0, %243 ]
  ret i32 %245
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgSubSurf__sync(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct._EHash, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %10(i64 noundef %15, ptr noundef nonnull @.str.2) #23
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct._EHash, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr %17(i64 noundef %23, ptr noundef nonnull @.str.3) #23
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct._EHash, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !51
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %25(i64 noundef %31, ptr noundef nonnull @.str.4) #23
  %33 = load ptr, ptr %0, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct._EHash, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %126, %1
  %38 = phi i32 [ 0, %1 ], [ %127, %126 ]
  %39 = phi i32 [ 0, %1 ], [ %128, %126 ]
  %40 = phi i32 [ 0, %1 ], [ %129, %126 ]
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %42, label %136

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %44 = zext nneg i32 %38 to i64
  br label %144

45:                                               ; preds = %1, %126
  %46 = phi i64 [ %130, %126 ], [ 0, %1 ]
  %47 = phi ptr [ %131, %126 ], [ %33, %1 ]
  %48 = phi i32 [ %129, %126 ], [ 0, %1 ]
  %49 = phi i32 [ %128, %126 ], [ 0, %1 ]
  %50 = phi i32 [ %127, %126 ], [ 0, %1 ]
  %51 = load ptr, ptr %47, align 8, !tbaa !55
  %52 = getelementptr inbounds ptr, ptr %51, i64 %46
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = icmp eq ptr %53, null
  br i1 %54, label %126, label %55

55:                                               ; preds = %45, %120
  %56 = phi ptr [ %124, %120 ], [ %53, %45 ]
  %57 = phi i32 [ %123, %120 ], [ %48, %45 ]
  %58 = phi i32 [ %122, %120 ], [ %49, %45 ]
  %59 = phi i32 [ %121, %120 ], [ %50, %45 ]
  %60 = getelementptr inbounds %struct.CCGVert, ptr %56, i64 0, i32 4
  %61 = load i16, ptr %60, align 4, !tbaa !116
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %55
  %65 = add nsw i32 %57, 1
  %66 = sext i32 %57 to i64
  %67 = getelementptr inbounds ptr, ptr %16, i64 %66
  store ptr %56, ptr %67, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.CCGVert, ptr %56, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !109
  %70 = icmp sgt i16 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = zext nneg i16 %69 to i64
  %73 = getelementptr inbounds %struct.CCGVert, ptr %56, i64 0, i32 6
  br label %82

74:                                               ; preds = %97, %64
  %75 = phi i32 [ %58, %64 ], [ %98, %97 ]
  %76 = getelementptr inbounds %struct.CCGVert, ptr %56, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !108
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %74
  %80 = zext nneg i16 %77 to i64
  %81 = getelementptr inbounds %struct.CCGVert, ptr %56, i64 0, i32 7
  br label %101

82:                                               ; preds = %71, %97
  %83 = phi i64 [ 0, %71 ], [ %99, %97 ]
  %84 = phi i32 [ %58, %71 ], [ %98, %97 ]
  %85 = load ptr, ptr %73, align 8, !tbaa !86
  %86 = getelementptr inbounds ptr, ptr %85, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.CCGEdge, ptr %87, i64 0, i32 3
  %89 = load i16, ptr %88, align 2, !tbaa !133
  %90 = and i16 %89, 1
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = add nsw i32 %84, 1
  %94 = sext i32 %84 to i64
  %95 = getelementptr inbounds ptr, ptr %24, i64 %94
  store ptr %87, ptr %95, align 8, !tbaa !43
  %96 = or disjoint i16 %89, 1
  store i16 %96, ptr %88, align 2, !tbaa !133
  br label %97

97:                                               ; preds = %92, %82
  %98 = phi i32 [ %84, %82 ], [ %93, %92 ]
  %99 = add nuw nsw i64 %83, 1
  %100 = icmp eq i64 %99, %72
  br i1 %100, label %74, label %82, !llvm.loop !148

101:                                              ; preds = %79, %116
  %102 = phi i64 [ 0, %79 ], [ %118, %116 ]
  %103 = phi i32 [ %59, %79 ], [ %117, %116 ]
  %104 = load ptr, ptr %81, align 8, !tbaa !88
  %105 = getelementptr inbounds ptr, ptr %104, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !43
  %107 = getelementptr inbounds %struct.CCGFace, ptr %106, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !143
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = add nsw i32 %103, 1
  %113 = sext i32 %103 to i64
  %114 = getelementptr inbounds ptr, ptr %32, i64 %113
  store ptr %106, ptr %114, align 8, !tbaa !43
  %115 = or disjoint i16 %108, 1
  store i16 %115, ptr %107, align 2, !tbaa !143
  br label %116

116:                                              ; preds = %111, %101
  %117 = phi i32 [ %103, %101 ], [ %112, %111 ]
  %118 = add nuw nsw i64 %102, 1
  %119 = icmp eq i64 %118, %80
  br i1 %119, label %120, label %101, !llvm.loop !149

120:                                              ; preds = %116, %74, %55
  %121 = phi i32 [ %59, %55 ], [ %59, %74 ], [ %117, %116 ]
  %122 = phi i32 [ %58, %55 ], [ %75, %74 ], [ %75, %116 ]
  %123 = phi i32 [ %57, %55 ], [ %65, %74 ], [ %65, %116 ]
  %124 = load ptr, ptr %56, align 8, !tbaa !43
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %55, !llvm.loop !150

126:                                              ; preds = %120, %45
  %127 = phi i32 [ %50, %45 ], [ %121, %120 ]
  %128 = phi i32 [ %49, %45 ], [ %122, %120 ]
  %129 = phi i32 [ %48, %45 ], [ %123, %120 ]
  %130 = add nuw nsw i64 %46, 1
  %131 = load ptr, ptr %0, align 8, !tbaa !56
  %132 = getelementptr inbounds %struct._EHash, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !53
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %130, %134
  br i1 %135, label %45, label %37, !llvm.loop !151

136:                                              ; preds = %195, %37
  %137 = icmp sgt i32 %39, 0
  br i1 %137, label %138, label %199

138:                                              ; preds = %136
  %139 = mul i32 %5, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %142 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %143 = zext nneg i32 %39 to i64
  br label %209

144:                                              ; preds = %42, %195
  %145 = phi i64 [ 0, %42 ], [ %197, %195 ]
  %146 = getelementptr inbounds ptr, ptr %32, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !43
  %148 = getelementptr inbounds %struct.CCGFace, ptr %147, i64 1
  %149 = getelementptr inbounds %struct.CCGFace, ptr %147, i64 0, i32 2
  %150 = load i16, ptr %149, align 8, !tbaa !119
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %148, i64 %151
  %153 = getelementptr inbounds ptr, ptr %152, i64 %151
  %154 = load i32, ptr %43, align 4, !tbaa !104
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %153, i8 0, i64 %156, i1 false)
  %157 = load i16, ptr %149, align 8, !tbaa !119
  %158 = icmp sgt i16 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %144
  %160 = zext nneg i16 %157 to i64
  %161 = load i32, ptr %43, align 4, !tbaa !104
  %162 = icmp sgt i32 %161, 0
  %163 = zext nneg i32 %161 to i64
  br label %164

164:                                              ; preds = %159, %178
  %165 = phi i64 [ 0, %159 ], [ %179, %178 ]
  %166 = getelementptr inbounds ptr, ptr %148, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !43
  %168 = getelementptr inbounds %struct.CCGVert, ptr %167, i64 1
  br i1 %162, label %169, label %178

169:                                              ; preds = %164, %169
  %170 = phi i64 [ %176, %169 ], [ 0, %164 ]
  %171 = getelementptr inbounds float, ptr %168, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !95
  %173 = getelementptr inbounds float, ptr %153, i64 %170
  %174 = load float, ptr %173, align 4, !tbaa !95
  %175 = fadd float %172, %174
  store float %175, ptr %173, align 4, !tbaa !95
  %176 = add nuw nsw i64 %170, 1
  %177 = icmp eq i64 %176, %163
  br i1 %177, label %178, label %169, !llvm.loop !152

178:                                              ; preds = %169, %164
  %179 = add nuw nsw i64 %165, 1
  %180 = icmp eq i64 %179, %160
  br i1 %180, label %181, label %164, !llvm.loop !153

181:                                              ; preds = %178, %144
  %182 = sitofp i16 %157 to float
  %183 = fdiv float 1.000000e+00, %182
  %184 = load i32, ptr %43, align 4, !tbaa !104
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = zext nneg i32 %184 to i64
  br label %188

188:                                              ; preds = %186, %188
  %189 = phi i64 [ 0, %186 ], [ %193, %188 ]
  %190 = getelementptr inbounds float, ptr %153, i64 %189
  %191 = load float, ptr %190, align 4, !tbaa !95
  %192 = fmul float %183, %191
  store float %192, ptr %190, align 4, !tbaa !95
  %193 = add nuw nsw i64 %189, 1
  %194 = icmp eq i64 %193, %187
  br i1 %194, label %195, label %188, !llvm.loop !154

195:                                              ; preds = %188, %181
  %196 = getelementptr inbounds %struct.CCGFace, ptr %147, i64 0, i32 3
  store i16 0, ptr %196, align 2, !tbaa !143
  %197 = add nuw nsw i64 %145, 1
  %198 = icmp eq i64 %197, %44
  br i1 %198, label %136, label %144, !llvm.loop !155

199:                                              ; preds = %421, %136
  %200 = icmp sgt i32 %40, 0
  br i1 %200, label %201, label %1020

201:                                              ; preds = %199
  %202 = sext i32 %5 to i64
  %203 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %204 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %205 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %206 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %207 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %208 = zext nneg i32 %40 to i64
  br label %424

209:                                              ; preds = %138, %421
  %210 = phi i64 [ 0, %138 ], [ %422, %421 ]
  %211 = getelementptr inbounds ptr, ptr %24, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !43
  %213 = getelementptr %struct.CCGEdge, ptr %212, i64 1
  %214 = getelementptr i8, ptr %213, i64 %140
  %215 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 4
  %216 = load float, ptr %215, align 4, !tbaa !131
  %217 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 2
  %218 = load i16, ptr %217, align 8, !tbaa !111
  %219 = icmp slt i16 %218, 2
  %220 = fcmp oge float %216, 1.000000e+00
  %221 = select i1 %219, i1 true, i1 %220
  %222 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 5
  %223 = load ptr, ptr %222, align 8, !tbaa !113
  %224 = getelementptr %struct.CCGVert, ptr %223, i64 1
  br i1 %221, label %225, label %264

225:                                              ; preds = %209
  %226 = load i32, ptr %142, align 4, !tbaa !104
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = zext nneg i32 %226 to i64
  br label %230

230:                                              ; preds = %228, %230
  %231 = phi i64 [ 0, %228 ], [ %235, %230 ]
  %232 = getelementptr inbounds float, ptr %224, i64 %231
  %233 = load float, ptr %232, align 4, !tbaa !95
  %234 = getelementptr inbounds float, ptr %214, i64 %231
  store float %233, ptr %234, align 4, !tbaa !95
  %235 = add nuw nsw i64 %231, 1
  %236 = icmp eq i64 %235, %229
  br i1 %236, label %237, label %230, !llvm.loop !124

237:                                              ; preds = %230, %225
  %238 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !115
  %240 = getelementptr inbounds %struct.CCGVert, ptr %239, i64 1
  %241 = icmp sgt i32 %226, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = zext nneg i32 %226 to i64
  br label %248

244:                                              ; preds = %248, %237
  %245 = icmp sgt i32 %226, 0
  br i1 %245, label %246, label %421

246:                                              ; preds = %244
  %247 = zext nneg i32 %226 to i64
  br label %257

248:                                              ; preds = %242, %248
  %249 = phi i64 [ 0, %242 ], [ %255, %248 ]
  %250 = getelementptr inbounds float, ptr %240, i64 %249
  %251 = load float, ptr %250, align 4, !tbaa !95
  %252 = getelementptr inbounds float, ptr %214, i64 %249
  %253 = load float, ptr %252, align 4, !tbaa !95
  %254 = fadd float %251, %253
  store float %254, ptr %252, align 4, !tbaa !95
  %255 = add nuw nsw i64 %249, 1
  %256 = icmp eq i64 %255, %243
  br i1 %256, label %244, label %248, !llvm.loop !152

257:                                              ; preds = %246, %257
  %258 = phi i64 [ 0, %246 ], [ %262, %257 ]
  %259 = getelementptr inbounds float, ptr %214, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !95
  %261 = fmul float %260, 5.000000e-01
  store float %261, ptr %259, align 4, !tbaa !95
  %262 = add nuw nsw i64 %258, 1
  %263 = icmp eq i64 %262, %247
  br i1 %263, label %421, label %257, !llvm.loop !154

264:                                              ; preds = %209
  %265 = load i32, ptr %141, align 4, !tbaa !104
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = zext nneg i32 %265 to i64
  br label %269

269:                                              ; preds = %267, %269
  %270 = phi i64 [ 0, %267 ], [ %274, %269 ]
  %271 = getelementptr inbounds float, ptr %224, i64 %270
  %272 = load float, ptr %271, align 4, !tbaa !95
  %273 = getelementptr inbounds float, ptr %7, i64 %270
  store float %272, ptr %273, align 4, !tbaa !95
  %274 = add nuw nsw i64 %270, 1
  %275 = icmp eq i64 %274, %268
  br i1 %275, label %276, label %269, !llvm.loop !124

276:                                              ; preds = %269, %264
  %277 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 6
  %278 = load ptr, ptr %277, align 8, !tbaa !115
  %279 = getelementptr inbounds %struct.CCGVert, ptr %278, i64 1
  %280 = icmp sgt i32 %265, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = zext nneg i32 %265 to i64
  br label %292

283:                                              ; preds = %292, %276
  %284 = sext i16 %218 to i32
  %285 = icmp sgt i16 %218, 0
  br i1 %285, label %286, label %323

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.CCGEdge, ptr %212, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !82
  %289 = icmp sgt i32 %265, 0
  %290 = zext nneg i32 %284 to i64
  %291 = zext nneg i32 %265 to i64
  br label %301

292:                                              ; preds = %281, %292
  %293 = phi i64 [ 0, %281 ], [ %299, %292 ]
  %294 = getelementptr inbounds float, ptr %279, i64 %293
  %295 = load float, ptr %294, align 4, !tbaa !95
  %296 = getelementptr inbounds float, ptr %7, i64 %293
  %297 = load float, ptr %296, align 4, !tbaa !95
  %298 = fadd float %295, %297
  store float %298, ptr %296, align 4, !tbaa !95
  %299 = add nuw nsw i64 %293, 1
  %300 = icmp eq i64 %299, %282
  br i1 %300, label %283, label %292, !llvm.loop !152

301:                                              ; preds = %286, %320
  %302 = phi i64 [ 0, %286 ], [ %321, %320 ]
  %303 = getelementptr inbounds ptr, ptr %288, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !43
  %305 = getelementptr inbounds %struct.CCGFace, ptr %304, i64 1
  %306 = getelementptr inbounds %struct.CCGFace, ptr %304, i64 0, i32 2
  %307 = load i16, ptr %306, align 8, !tbaa !119
  %308 = sext i16 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %305, i64 %308
  %310 = getelementptr inbounds ptr, ptr %309, i64 %308
  br i1 %289, label %311, label %320

311:                                              ; preds = %301, %311
  %312 = phi i64 [ %318, %311 ], [ 0, %301 ]
  %313 = getelementptr inbounds float, ptr %310, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !95
  %315 = getelementptr inbounds float, ptr %7, i64 %312
  %316 = load float, ptr %315, align 4, !tbaa !95
  %317 = fadd float %314, %316
  store float %317, ptr %315, align 4, !tbaa !95
  %318 = add nuw nsw i64 %312, 1
  %319 = icmp eq i64 %318, %291
  br i1 %319, label %320, label %311, !llvm.loop !152

320:                                              ; preds = %311, %301
  %321 = add nuw nsw i64 %302, 1
  %322 = icmp eq i64 %321, %290
  br i1 %322, label %323, label %301, !llvm.loop !156

323:                                              ; preds = %320, %283
  %324 = phi i32 [ 0, %283 ], [ %284, %320 ]
  %325 = sitofp i32 %324 to float
  %326 = fadd float %325, 2.000000e+00
  %327 = fdiv float 1.000000e+00, %326
  %328 = icmp sgt i32 %265, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %323
  %330 = zext nneg i32 %265 to i64
  br label %335

331:                                              ; preds = %335, %323
  %332 = icmp sgt i32 %265, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %331
  %334 = zext nneg i32 %265 to i64
  br label %346

335:                                              ; preds = %329, %335
  %336 = phi i64 [ 0, %329 ], [ %340, %335 ]
  %337 = getelementptr inbounds float, ptr %7, i64 %336
  %338 = load float, ptr %337, align 4, !tbaa !95
  %339 = fmul float %327, %338
  store float %339, ptr %337, align 4, !tbaa !95
  %340 = add nuw nsw i64 %336, 1
  %341 = icmp eq i64 %340, %330
  br i1 %341, label %331, label %335, !llvm.loop !154

342:                                              ; preds = %346, %331
  %343 = icmp sgt i32 %265, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %342
  %345 = zext nneg i32 %265 to i64
  br label %357

346:                                              ; preds = %333, %346
  %347 = phi i64 [ 0, %333 ], [ %351, %346 ]
  %348 = getelementptr inbounds float, ptr %224, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !95
  %350 = getelementptr inbounds float, ptr %9, i64 %347
  store float %349, ptr %350, align 4, !tbaa !95
  %351 = add nuw nsw i64 %347, 1
  %352 = icmp eq i64 %351, %334
  br i1 %352, label %342, label %346, !llvm.loop !124

353:                                              ; preds = %357, %342
  %354 = icmp sgt i32 %265, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %353
  %356 = zext nneg i32 %265 to i64
  br label %370

357:                                              ; preds = %344, %357
  %358 = phi i64 [ 0, %344 ], [ %364, %357 ]
  %359 = getelementptr inbounds float, ptr %279, i64 %358
  %360 = load float, ptr %359, align 4, !tbaa !95
  %361 = getelementptr inbounds float, ptr %9, i64 %358
  %362 = load float, ptr %361, align 4, !tbaa !95
  %363 = fadd float %360, %362
  store float %363, ptr %361, align 4, !tbaa !95
  %364 = add nuw nsw i64 %358, 1
  %365 = icmp eq i64 %364, %345
  br i1 %365, label %353, label %357, !llvm.loop !152

366:                                              ; preds = %370, %353
  %367 = icmp sgt i32 %265, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %366
  %369 = zext nneg i32 %265 to i64
  br label %381

370:                                              ; preds = %355, %370
  %371 = phi i64 [ 0, %355 ], [ %375, %370 ]
  %372 = getelementptr inbounds float, ptr %9, i64 %371
  %373 = load float, ptr %372, align 4, !tbaa !95
  %374 = fmul float %373, 5.000000e-01
  store float %374, ptr %372, align 4, !tbaa !95
  %375 = add nuw nsw i64 %371, 1
  %376 = icmp eq i64 %375, %356
  br i1 %376, label %366, label %370, !llvm.loop !154

377:                                              ; preds = %381, %366
  %378 = icmp sgt i32 %265, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %377
  %380 = zext nneg i32 %265 to i64
  br label %392

381:                                              ; preds = %368, %381
  %382 = phi i64 [ 0, %368 ], [ %386, %381 ]
  %383 = getelementptr inbounds float, ptr %7, i64 %382
  %384 = load float, ptr %383, align 4, !tbaa !95
  %385 = getelementptr inbounds float, ptr %214, i64 %382
  store float %384, ptr %385, align 4, !tbaa !95
  %386 = add nuw nsw i64 %382, 1
  %387 = icmp eq i64 %386, %369
  br i1 %387, label %377, label %381, !llvm.loop !124

388:                                              ; preds = %392, %377
  %389 = icmp sgt i32 %265, 0
  br i1 %389, label %390, label %401

390:                                              ; preds = %388
  %391 = zext nneg i32 %265 to i64
  br label %405

392:                                              ; preds = %379, %392
  %393 = phi i64 [ 0, %379 ], [ %399, %392 ]
  %394 = getelementptr inbounds float, ptr %7, i64 %393
  %395 = load float, ptr %394, align 4, !tbaa !95
  %396 = getelementptr inbounds float, ptr %9, i64 %393
  %397 = load float, ptr %396, align 4, !tbaa !95
  %398 = fsub float %397, %395
  store float %398, ptr %396, align 4, !tbaa !95
  %399 = add nuw nsw i64 %393, 1
  %400 = icmp eq i64 %399, %380
  br i1 %400, label %388, label %392, !llvm.loop !157

401:                                              ; preds = %405, %388
  %402 = icmp sgt i32 %265, 0
  br i1 %402, label %403, label %421

403:                                              ; preds = %401
  %404 = zext nneg i32 %265 to i64
  br label %412

405:                                              ; preds = %390, %405
  %406 = phi i64 [ 0, %390 ], [ %410, %405 ]
  %407 = getelementptr inbounds float, ptr %9, i64 %406
  %408 = load float, ptr %407, align 4, !tbaa !95
  %409 = fmul float %216, %408
  store float %409, ptr %407, align 4, !tbaa !95
  %410 = add nuw nsw i64 %406, 1
  %411 = icmp eq i64 %410, %391
  br i1 %411, label %401, label %405, !llvm.loop !154

412:                                              ; preds = %403, %412
  %413 = phi i64 [ 0, %403 ], [ %419, %412 ]
  %414 = getelementptr inbounds float, ptr %9, i64 %413
  %415 = load float, ptr %414, align 4, !tbaa !95
  %416 = getelementptr inbounds float, ptr %214, i64 %413
  %417 = load float, ptr %416, align 4, !tbaa !95
  %418 = fadd float %415, %417
  store float %418, ptr %416, align 4, !tbaa !95
  %419 = add nuw nsw i64 %413, 1
  %420 = icmp eq i64 %419, %404
  br i1 %420, label %421, label %412, !llvm.loop !152

421:                                              ; preds = %412, %257, %401, %244
  %422 = add nuw nsw i64 %210, 1
  %423 = icmp eq i64 %422, %143
  br i1 %423, label %199, label %209, !llvm.loop !158

424:                                              ; preds = %201, %1017
  %425 = phi i64 [ 0, %201 ], [ %1018, %1017 ]
  %426 = getelementptr inbounds ptr, ptr %16, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !43
  %428 = getelementptr %struct.CCGVert, ptr %427, i64 1
  %429 = getelementptr i8, ptr %428, i64 %202
  %430 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 4
  %431 = load i16, ptr %430, align 4, !tbaa !116
  %432 = lshr i16 %431, 2
  %433 = and i16 %432, 1
  %434 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 2
  %435 = load i16, ptr %434, align 8, !tbaa !109
  %436 = sext i16 %435 to i32
  %437 = icmp sgt i16 %435, 0
  br i1 %437, label %438, label %469

438:                                              ; preds = %424
  %439 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !86
  %441 = icmp eq i16 %433, 0
  %442 = zext nneg i32 %436 to i64
  br label %443

443:                                              ; preds = %438, %459
  %444 = phi i64 [ 0, %438 ], [ %467, %459 ]
  %445 = phi i32 [ 0, %438 ], [ %466, %459 ]
  %446 = phi i32 [ 1, %438 ], [ %464, %459 ]
  %447 = phi float [ 0.000000e+00, %438 ], [ %463, %459 ]
  %448 = phi i32 [ 0, %438 ], [ %460, %459 ]
  %449 = getelementptr inbounds ptr, ptr %440, i64 %444
  %450 = load ptr, ptr %449, align 8, !tbaa !43
  %451 = getelementptr inbounds %struct.CCGEdge, ptr %450, i64 0, i32 4
  %452 = load float, ptr %451, align 4, !tbaa !131
  br i1 %441, label %459, label %453

453:                                              ; preds = %443
  %454 = getelementptr inbounds %struct.CCGEdge, ptr %450, i64 0, i32 2
  %455 = load i16, ptr %454, align 8, !tbaa !111
  %456 = icmp slt i16 %455, 2
  %457 = zext i1 %456 to i32
  %458 = add nsw i32 %448, %457
  br label %459

459:                                              ; preds = %453, %443
  %460 = phi i32 [ %448, %443 ], [ %458, %453 ]
  %461 = fcmp une float %452, 0.000000e+00
  %462 = select i1 %461, float %452, float -0.000000e+00
  %463 = fadd float %447, %462
  %464 = select i1 %461, i32 %446, i32 0
  %465 = zext i1 %461 to i32
  %466 = add nuw nsw i32 %445, %465
  %467 = add nuw nsw i64 %444, 1
  %468 = icmp eq i64 %467, %442
  br i1 %468, label %469, label %443, !llvm.loop !159

469:                                              ; preds = %459, %424
  %470 = phi i32 [ 0, %424 ], [ %460, %459 ]
  %471 = phi float [ 0.000000e+00, %424 ], [ %463, %459 ]
  %472 = phi i32 [ 1, %424 ], [ %464, %459 ]
  %473 = phi i32 [ 0, %424 ], [ %466, %459 ]
  %474 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 2
  %475 = icmp eq i32 %473, 0
  br i1 %475, label %481, label %476

476:                                              ; preds = %469
  %477 = sitofp i32 %473 to float
  %478 = fdiv float %471, %477
  %479 = fcmp ogt float %478, 1.000000e+00
  br i1 %479, label %480, label %481

480:                                              ; preds = %476
  br label %481

481:                                              ; preds = %476, %480, %469
  %482 = phi float [ 1.000000e+00, %480 ], [ %478, %476 ], [ %471, %469 ]
  %483 = icmp sgt i32 %470, 1
  %484 = icmp eq i32 %470, %436
  %485 = and i1 %483, %484
  %486 = icmp eq i16 %435, 0
  br i1 %486, label %501, label %487

487:                                              ; preds = %481
  %488 = load i32, ptr %203, align 4, !tbaa !160
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %501

490:                                              ; preds = %487
  %491 = icmp sgt i16 %435, 0
  br i1 %491, label %492, label %624

492:                                              ; preds = %490
  %493 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 6
  %494 = load ptr, ptr %493, align 8, !tbaa !86
  %495 = zext nneg i16 %435 to i64
  %496 = zext nneg i32 %436 to i64
  %497 = load ptr, ptr %494, align 8, !tbaa !43
  %498 = getelementptr inbounds %struct.CCGEdge, ptr %497, i64 0, i32 2
  %499 = load i16, ptr %498, align 8, !tbaa !111
  %500 = icmp sgt i16 %499, 1
  br i1 %500, label %513, label %525

501:                                              ; preds = %487, %481
  %502 = load i32, ptr %206, align 4, !tbaa !104
  %503 = icmp sgt i32 %502, 0
  br i1 %503, label %504, label %789

504:                                              ; preds = %501
  %505 = zext nneg i32 %502 to i64
  br label %506

506:                                              ; preds = %504, %506
  %507 = phi i64 [ 0, %504 ], [ %511, %506 ]
  %508 = getelementptr inbounds float, ptr %428, i64 %507
  %509 = load float, ptr %508, align 4, !tbaa !95
  %510 = getelementptr inbounds float, ptr %429, i64 %507
  store float %509, ptr %510, align 4, !tbaa !95
  %511 = add nuw nsw i64 %507, 1
  %512 = icmp eq i64 %511, %505
  br i1 %512, label %789, label %506, !llvm.loop !124

513:                                              ; preds = %492, %517
  %514 = phi i64 [ %515, %517 ], [ 0, %492 ]
  %515 = add nuw nsw i64 %514, 1
  %516 = icmp eq i64 %515, %496
  br i1 %516, label %624, label %517, !llvm.loop !161

517:                                              ; preds = %513
  %518 = getelementptr inbounds ptr, ptr %494, i64 %515
  %519 = load ptr, ptr %518, align 8, !tbaa !43
  %520 = getelementptr inbounds %struct.CCGEdge, ptr %519, i64 0, i32 2
  %521 = load i16, ptr %520, align 8, !tbaa !111
  %522 = icmp sgt i16 %521, 1
  br i1 %522, label %513, label %523, !llvm.loop !161

523:                                              ; preds = %517
  %524 = icmp ult i64 %515, %495
  br label %525

525:                                              ; preds = %523, %492
  %526 = phi i1 [ %524, %523 ], [ %491, %492 ]
  br i1 %526, label %527, label %624

527:                                              ; preds = %525
  %528 = load i32, ptr %204, align 4, !tbaa !104
  %529 = sext i32 %528 to i64
  %530 = shl nsw i64 %529, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %530, i1 false)
  %531 = load i16, ptr %474, align 8, !tbaa !109
  %532 = icmp sgt i16 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %527
  %534 = zext nneg i16 %531 to i64
  %535 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 6
  %536 = load ptr, ptr %535, align 8, !tbaa !86
  br label %543

537:                                              ; preds = %576, %527
  %538 = phi i32 [ 0, %527 ], [ %577, %576 ]
  %539 = load i32, ptr %204, align 4, !tbaa !104
  %540 = icmp sgt i32 %539, 0
  br i1 %540, label %541, label %580

541:                                              ; preds = %537
  %542 = zext nneg i32 %539 to i64
  br label %584

543:                                              ; preds = %533, %576
  %544 = phi i64 [ 0, %533 ], [ %578, %576 ]
  %545 = phi i32 [ 0, %533 ], [ %577, %576 ]
  %546 = getelementptr inbounds ptr, ptr %536, i64 %544
  %547 = load ptr, ptr %546, align 8, !tbaa !43
  %548 = getelementptr inbounds %struct.CCGEdge, ptr %547, i64 0, i32 2
  %549 = load i16, ptr %548, align 8, !tbaa !111
  %550 = icmp sgt i16 %549, 1
  br i1 %550, label %576, label %551

551:                                              ; preds = %543
  %552 = getelementptr inbounds %struct.CCGEdge, ptr %547, i64 0, i32 5
  %553 = load ptr, ptr %552, align 8, !tbaa !113
  %554 = icmp eq ptr %553, %427
  br i1 %554, label %555, label %558

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.CCGEdge, ptr %547, i64 0, i32 6
  %557 = load ptr, ptr %556, align 8, !tbaa !115
  br label %558

558:                                              ; preds = %551, %555
  %559 = phi ptr [ %557, %555 ], [ %553, %551 ]
  %560 = getelementptr inbounds %struct.CCGVert, ptr %559, i64 1
  %561 = load i32, ptr %204, align 4, !tbaa !104
  %562 = icmp sgt i32 %561, 0
  br i1 %562, label %563, label %574

563:                                              ; preds = %558
  %564 = zext nneg i32 %561 to i64
  br label %565

565:                                              ; preds = %563, %565
  %566 = phi i64 [ 0, %563 ], [ %572, %565 ]
  %567 = getelementptr inbounds float, ptr %560, i64 %566
  %568 = load float, ptr %567, align 4, !tbaa !95
  %569 = getelementptr inbounds float, ptr %9, i64 %566
  %570 = load float, ptr %569, align 4, !tbaa !95
  %571 = fadd float %568, %570
  store float %571, ptr %569, align 4, !tbaa !95
  %572 = add nuw nsw i64 %566, 1
  %573 = icmp eq i64 %572, %564
  br i1 %573, label %574, label %565, !llvm.loop !152

574:                                              ; preds = %565, %558
  %575 = add nsw i32 %545, 1
  br label %576

576:                                              ; preds = %574, %543
  %577 = phi i32 [ %575, %574 ], [ %545, %543 ]
  %578 = add nuw nsw i64 %544, 1
  %579 = icmp eq i64 %578, %534
  br i1 %579, label %537, label %543, !llvm.loop !162

580:                                              ; preds = %584, %537
  %581 = icmp sgt i32 %539, 0
  br i1 %581, label %582, label %598

582:                                              ; preds = %580
  %583 = zext nneg i32 %539 to i64
  br label %591

584:                                              ; preds = %541, %584
  %585 = phi i64 [ 0, %541 ], [ %589, %584 ]
  %586 = getelementptr inbounds float, ptr %428, i64 %585
  %587 = load float, ptr %586, align 4, !tbaa !95
  %588 = getelementptr inbounds float, ptr %429, i64 %585
  store float %587, ptr %588, align 4, !tbaa !95
  %589 = add nuw nsw i64 %585, 1
  %590 = icmp eq i64 %589, %542
  br i1 %590, label %580, label %584, !llvm.loop !124

591:                                              ; preds = %582, %591
  %592 = phi i64 [ 0, %582 ], [ %596, %591 ]
  %593 = getelementptr inbounds float, ptr %429, i64 %592
  %594 = load float, ptr %593, align 4, !tbaa !95
  %595 = fmul float %594, 7.500000e-01
  store float %595, ptr %593, align 4, !tbaa !95
  %596 = add nuw nsw i64 %592, 1
  %597 = icmp eq i64 %596, %583
  br i1 %597, label %598, label %591, !llvm.loop !154

598:                                              ; preds = %591, %580
  %599 = sitofp i32 %538 to float
  %600 = fdiv float 2.500000e-01, %599
  %601 = icmp sgt i32 %539, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %598
  %603 = zext nneg i32 %539 to i64
  br label %608

604:                                              ; preds = %608, %598
  %605 = icmp sgt i32 %539, 0
  br i1 %605, label %606, label %789

606:                                              ; preds = %604
  %607 = zext nneg i32 %539 to i64
  br label %615

608:                                              ; preds = %602, %608
  %609 = phi i64 [ 0, %602 ], [ %613, %608 ]
  %610 = getelementptr inbounds float, ptr %9, i64 %609
  %611 = load float, ptr %610, align 4, !tbaa !95
  %612 = fmul float %600, %611
  store float %612, ptr %610, align 4, !tbaa !95
  %613 = add nuw nsw i64 %609, 1
  %614 = icmp eq i64 %613, %603
  br i1 %614, label %604, label %608, !llvm.loop !154

615:                                              ; preds = %606, %615
  %616 = phi i64 [ 0, %606 ], [ %622, %615 ]
  %617 = getelementptr inbounds float, ptr %9, i64 %616
  %618 = load float, ptr %617, align 4, !tbaa !95
  %619 = getelementptr inbounds float, ptr %429, i64 %616
  %620 = load float, ptr %619, align 4, !tbaa !95
  %621 = fadd float %618, %620
  store float %621, ptr %619, align 4, !tbaa !95
  %622 = add nuw nsw i64 %616, 1
  %623 = icmp eq i64 %622, %607
  br i1 %623, label %789, label %615, !llvm.loop !152

624:                                              ; preds = %513, %490, %525
  %625 = load i32, ptr %205, align 4, !tbaa !104
  %626 = sext i32 %625 to i64
  %627 = shl nsw i64 %626, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %627, i1 false)
  %628 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 3
  %629 = load i16, ptr %628, align 2, !tbaa !108
  %630 = sext i16 %629 to i32
  %631 = icmp sgt i16 %629, 0
  br i1 %631, label %632, label %661

632:                                              ; preds = %624
  %633 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 7
  %634 = load ptr, ptr %633, align 8, !tbaa !88
  %635 = load i32, ptr %205, align 4, !tbaa !104
  %636 = icmp sgt i32 %635, 0
  %637 = zext nneg i32 %630 to i64
  %638 = zext nneg i32 %635 to i64
  br label %639

639:                                              ; preds = %632, %658
  %640 = phi i64 [ 0, %632 ], [ %659, %658 ]
  %641 = getelementptr inbounds ptr, ptr %634, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !43
  %643 = getelementptr inbounds %struct.CCGFace, ptr %642, i64 1
  %644 = getelementptr inbounds %struct.CCGFace, ptr %642, i64 0, i32 2
  %645 = load i16, ptr %644, align 8, !tbaa !119
  %646 = sext i16 %645 to i64
  %647 = getelementptr inbounds ptr, ptr %643, i64 %646
  %648 = getelementptr inbounds ptr, ptr %647, i64 %646
  br i1 %636, label %649, label %658

649:                                              ; preds = %639, %649
  %650 = phi i64 [ %656, %649 ], [ 0, %639 ]
  %651 = getelementptr inbounds float, ptr %648, i64 %650
  %652 = load float, ptr %651, align 4, !tbaa !95
  %653 = getelementptr inbounds float, ptr %7, i64 %650
  %654 = load float, ptr %653, align 4, !tbaa !95
  %655 = fadd float %652, %654
  store float %655, ptr %653, align 4, !tbaa !95
  %656 = add nuw nsw i64 %650, 1
  %657 = icmp eq i64 %656, %638
  br i1 %657, label %658, label %649, !llvm.loop !152

658:                                              ; preds = %649, %639
  %659 = add nuw nsw i64 %640, 1
  %660 = icmp eq i64 %659, %637
  br i1 %660, label %661, label %639, !llvm.loop !163

661:                                              ; preds = %658, %624
  %662 = phi i32 [ 0, %624 ], [ %630, %658 ]
  %663 = sitofp i32 %662 to float
  %664 = fdiv float 1.000000e+00, %663
  %665 = load i32, ptr %205, align 4, !tbaa !104
  %666 = icmp sgt i32 %665, 0
  br i1 %666, label %667, label %676

667:                                              ; preds = %661
  %668 = zext nneg i32 %665 to i64
  br label %669

669:                                              ; preds = %667, %669
  %670 = phi i64 [ 0, %667 ], [ %674, %669 ]
  %671 = getelementptr inbounds float, ptr %7, i64 %670
  %672 = load float, ptr %671, align 4, !tbaa !95
  %673 = fmul float %664, %672
  store float %673, ptr %671, align 4, !tbaa !95
  %674 = add nuw nsw i64 %670, 1
  %675 = icmp eq i64 %674, %668
  br i1 %675, label %676, label %669, !llvm.loop !154

676:                                              ; preds = %669, %661
  %677 = sext i32 %665 to i64
  %678 = shl nsw i64 %677, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %678, i1 false)
  %679 = load i16, ptr %474, align 8, !tbaa !109
  %680 = sext i16 %679 to i32
  %681 = icmp sgt i16 %679, 0
  br i1 %681, label %682, label %714

682:                                              ; preds = %676
  %683 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 6
  %684 = load ptr, ptr %683, align 8, !tbaa !86
  %685 = load i32, ptr %205, align 4, !tbaa !104
  %686 = icmp sgt i32 %685, 0
  %687 = zext nneg i32 %680 to i64
  %688 = zext nneg i32 %685 to i64
  br label %689

689:                                              ; preds = %682, %711
  %690 = phi i64 [ 0, %682 ], [ %712, %711 ]
  %691 = getelementptr inbounds ptr, ptr %684, i64 %690
  %692 = load ptr, ptr %691, align 8, !tbaa !43
  %693 = getelementptr inbounds %struct.CCGEdge, ptr %692, i64 0, i32 5
  %694 = load ptr, ptr %693, align 8, !tbaa !113
  %695 = icmp eq ptr %694, %427
  br i1 %695, label %696, label %699

696:                                              ; preds = %689
  %697 = getelementptr inbounds %struct.CCGEdge, ptr %692, i64 0, i32 6
  %698 = load ptr, ptr %697, align 8, !tbaa !115
  br label %699

699:                                              ; preds = %689, %696
  %700 = phi ptr [ %698, %696 ], [ %694, %689 ]
  %701 = getelementptr inbounds %struct.CCGVert, ptr %700, i64 1
  br i1 %686, label %702, label %711

702:                                              ; preds = %699, %702
  %703 = phi i64 [ %709, %702 ], [ 0, %699 ]
  %704 = getelementptr inbounds float, ptr %701, i64 %703
  %705 = load float, ptr %704, align 4, !tbaa !95
  %706 = getelementptr inbounds float, ptr %9, i64 %703
  %707 = load float, ptr %706, align 4, !tbaa !95
  %708 = fadd float %705, %707
  store float %708, ptr %706, align 4, !tbaa !95
  %709 = add nuw nsw i64 %703, 1
  %710 = icmp eq i64 %709, %688
  br i1 %710, label %711, label %702, !llvm.loop !152

711:                                              ; preds = %702, %699
  %712 = add nuw nsw i64 %690, 1
  %713 = icmp eq i64 %712, %687
  br i1 %713, label %714, label %689, !llvm.loop !164

714:                                              ; preds = %711, %676
  %715 = phi i32 [ 0, %676 ], [ %680, %711 ]
  %716 = sitofp i32 %715 to float
  %717 = fdiv float 1.000000e+00, %716
  %718 = load i32, ptr %205, align 4, !tbaa !104
  %719 = icmp sgt i32 %718, 0
  br i1 %719, label %720, label %722

720:                                              ; preds = %714
  %721 = zext nneg i32 %718 to i64
  br label %726

722:                                              ; preds = %726, %714
  %723 = icmp sgt i32 %718, 0
  br i1 %723, label %724, label %740

724:                                              ; preds = %722
  %725 = zext nneg i32 %718 to i64
  br label %733

726:                                              ; preds = %720, %726
  %727 = phi i64 [ 0, %720 ], [ %731, %726 ]
  %728 = getelementptr inbounds float, ptr %9, i64 %727
  %729 = load float, ptr %728, align 4, !tbaa !95
  %730 = fmul float %717, %729
  store float %730, ptr %728, align 4, !tbaa !95
  %731 = add nuw nsw i64 %727, 1
  %732 = icmp eq i64 %731, %721
  br i1 %732, label %722, label %726, !llvm.loop !154

733:                                              ; preds = %724, %733
  %734 = phi i64 [ 0, %724 ], [ %738, %733 ]
  %735 = getelementptr inbounds float, ptr %428, i64 %734
  %736 = load float, ptr %735, align 4, !tbaa !95
  %737 = getelementptr inbounds float, ptr %429, i64 %734
  store float %736, ptr %737, align 4, !tbaa !95
  %738 = add nuw nsw i64 %734, 1
  %739 = icmp eq i64 %738, %725
  br i1 %739, label %740, label %733, !llvm.loop !124

740:                                              ; preds = %733, %722
  %741 = fadd float %716, -2.000000e+00
  %742 = icmp sgt i32 %718, 0
  br i1 %742, label %743, label %745

743:                                              ; preds = %740
  %744 = zext nneg i32 %718 to i64
  br label %749

745:                                              ; preds = %749, %740
  %746 = icmp sgt i32 %718, 0
  br i1 %746, label %747, label %756

747:                                              ; preds = %745
  %748 = zext nneg i32 %718 to i64
  br label %760

749:                                              ; preds = %743, %749
  %750 = phi i64 [ 0, %743 ], [ %754, %749 ]
  %751 = getelementptr inbounds float, ptr %429, i64 %750
  %752 = load float, ptr %751, align 4, !tbaa !95
  %753 = fmul float %741, %752
  store float %753, ptr %751, align 4, !tbaa !95
  %754 = add nuw nsw i64 %750, 1
  %755 = icmp eq i64 %754, %744
  br i1 %755, label %745, label %749, !llvm.loop !154

756:                                              ; preds = %760, %745
  %757 = icmp sgt i32 %718, 0
  br i1 %757, label %758, label %769

758:                                              ; preds = %756
  %759 = zext nneg i32 %718 to i64
  br label %773

760:                                              ; preds = %747, %760
  %761 = phi i64 [ 0, %747 ], [ %767, %760 ]
  %762 = getelementptr inbounds float, ptr %7, i64 %761
  %763 = load float, ptr %762, align 4, !tbaa !95
  %764 = getelementptr inbounds float, ptr %429, i64 %761
  %765 = load float, ptr %764, align 4, !tbaa !95
  %766 = fadd float %763, %765
  store float %766, ptr %764, align 4, !tbaa !95
  %767 = add nuw nsw i64 %761, 1
  %768 = icmp eq i64 %767, %748
  br i1 %768, label %756, label %760, !llvm.loop !152

769:                                              ; preds = %773, %756
  %770 = icmp sgt i32 %718, 0
  br i1 %770, label %771, label %789

771:                                              ; preds = %769
  %772 = zext nneg i32 %718 to i64
  br label %782

773:                                              ; preds = %758, %773
  %774 = phi i64 [ 0, %758 ], [ %780, %773 ]
  %775 = getelementptr inbounds float, ptr %9, i64 %774
  %776 = load float, ptr %775, align 4, !tbaa !95
  %777 = getelementptr inbounds float, ptr %429, i64 %774
  %778 = load float, ptr %777, align 4, !tbaa !95
  %779 = fadd float %776, %778
  store float %779, ptr %777, align 4, !tbaa !95
  %780 = add nuw nsw i64 %774, 1
  %781 = icmp eq i64 %780, %759
  br i1 %781, label %769, label %773, !llvm.loop !152

782:                                              ; preds = %771, %782
  %783 = phi i64 [ 0, %771 ], [ %787, %782 ]
  %784 = getelementptr inbounds float, ptr %429, i64 %783
  %785 = load float, ptr %784, align 4, !tbaa !95
  %786 = fmul float %717, %785
  store float %786, ptr %784, align 4, !tbaa !95
  %787 = add nuw nsw i64 %783, 1
  %788 = icmp eq i64 %787, %772
  br i1 %788, label %789, label %782, !llvm.loop !154

789:                                              ; preds = %615, %782, %506, %769, %604, %501
  %790 = icmp ugt i32 %473, 1
  %791 = icmp ne i16 %433, 0
  %792 = select i1 %485, i1 %791, i1 false
  %793 = select i1 %790, i1 true, i1 %792
  br i1 %793, label %794, label %1017

794:                                              ; preds = %789
  %795 = load i32, ptr %207, align 4, !tbaa !104
  %796 = sext i32 %795 to i64
  %797 = shl nsw i64 %796, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %797, i1 false)
  %798 = select i1 %792, float 1.000000e+00, float %482
  %799 = select i1 %792, i32 %470, i32 %473
  %800 = load i16, ptr %474, align 8, !tbaa !109
  %801 = icmp sgt i16 %800, 0
  br i1 %801, label %802, label %867

802:                                              ; preds = %794
  %803 = zext nneg i16 %800 to i64
  %804 = getelementptr inbounds %struct.CCGVert, ptr %427, i64 0, i32 6
  %805 = load ptr, ptr %804, align 8, !tbaa !86
  br label %806

806:                                              ; preds = %802, %864
  %807 = phi i64 [ 0, %802 ], [ %865, %864 ]
  %808 = getelementptr inbounds ptr, ptr %805, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !43
  br i1 %792, label %810, label %837

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 2
  %812 = load i16, ptr %811, align 8, !tbaa !111
  %813 = icmp sgt i16 %812, 1
  br i1 %813, label %864, label %814

814:                                              ; preds = %810
  %815 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 5
  %816 = load ptr, ptr %815, align 8, !tbaa !113
  %817 = icmp eq ptr %816, %427
  br i1 %817, label %818, label %821

818:                                              ; preds = %814
  %819 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 6
  %820 = load ptr, ptr %819, align 8, !tbaa !115
  br label %821

821:                                              ; preds = %814, %818
  %822 = phi ptr [ %820, %818 ], [ %816, %814 ]
  %823 = getelementptr inbounds %struct.CCGVert, ptr %822, i64 1
  %824 = load i32, ptr %207, align 4, !tbaa !104
  %825 = icmp sgt i32 %824, 0
  br i1 %825, label %826, label %864

826:                                              ; preds = %821
  %827 = zext nneg i32 %824 to i64
  br label %828

828:                                              ; preds = %826, %828
  %829 = phi i64 [ 0, %826 ], [ %835, %828 ]
  %830 = getelementptr inbounds float, ptr %823, i64 %829
  %831 = load float, ptr %830, align 4, !tbaa !95
  %832 = getelementptr inbounds float, ptr %7, i64 %829
  %833 = load float, ptr %832, align 4, !tbaa !95
  %834 = fadd float %831, %833
  store float %834, ptr %832, align 4, !tbaa !95
  %835 = add nuw nsw i64 %829, 1
  %836 = icmp eq i64 %835, %827
  br i1 %836, label %864, label %828, !llvm.loop !152

837:                                              ; preds = %806
  %838 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 4
  %839 = load float, ptr %838, align 4, !tbaa !131
  %840 = fcmp une float %839, 0.000000e+00
  br i1 %840, label %841, label %864

841:                                              ; preds = %837
  %842 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 5
  %843 = load ptr, ptr %842, align 8, !tbaa !113
  %844 = icmp eq ptr %843, %427
  br i1 %844, label %845, label %848

845:                                              ; preds = %841
  %846 = getelementptr inbounds %struct.CCGEdge, ptr %809, i64 0, i32 6
  %847 = load ptr, ptr %846, align 8, !tbaa !115
  br label %848

848:                                              ; preds = %841, %845
  %849 = phi ptr [ %847, %845 ], [ %843, %841 ]
  %850 = getelementptr inbounds %struct.CCGVert, ptr %849, i64 1
  %851 = load i32, ptr %207, align 4, !tbaa !104
  %852 = icmp sgt i32 %851, 0
  br i1 %852, label %853, label %864

853:                                              ; preds = %848
  %854 = zext nneg i32 %851 to i64
  br label %855

855:                                              ; preds = %853, %855
  %856 = phi i64 [ 0, %853 ], [ %862, %855 ]
  %857 = getelementptr inbounds float, ptr %850, i64 %856
  %858 = load float, ptr %857, align 4, !tbaa !95
  %859 = getelementptr inbounds float, ptr %7, i64 %856
  %860 = load float, ptr %859, align 4, !tbaa !95
  %861 = fadd float %858, %860
  store float %861, ptr %859, align 4, !tbaa !95
  %862 = add nuw nsw i64 %856, 1
  %863 = icmp eq i64 %862, %854
  br i1 %863, label %864, label %855, !llvm.loop !152

864:                                              ; preds = %855, %828, %848, %821, %837, %810
  %865 = add nuw nsw i64 %807, 1
  %866 = icmp eq i64 %865, %803
  br i1 %866, label %867, label %806, !llvm.loop !165

867:                                              ; preds = %864, %794
  %868 = sitofp i32 %799 to float
  %869 = fdiv float 1.000000e+00, %868
  %870 = load i32, ptr %207, align 4, !tbaa !104
  %871 = icmp sgt i32 %870, 0
  br i1 %871, label %872, label %881

872:                                              ; preds = %867
  %873 = zext nneg i32 %870 to i64
  br label %874

874:                                              ; preds = %872, %874
  %875 = phi i64 [ 0, %872 ], [ %879, %874 ]
  %876 = getelementptr inbounds float, ptr %7, i64 %875
  %877 = load float, ptr %876, align 4, !tbaa !95
  %878 = fmul float %869, %877
  store float %878, ptr %876, align 4, !tbaa !95
  %879 = add nuw nsw i64 %875, 1
  %880 = icmp eq i64 %879, %873
  br i1 %880, label %881, label %874, !llvm.loop !154

881:                                              ; preds = %874, %867
  %882 = icmp ne i32 %799, 2
  %883 = icmp ne i32 %472, 0
  %884 = or i1 %792, %882
  %885 = select i1 %884, i1 true, i1 %883
  br i1 %885, label %886, label %934

886:                                              ; preds = %881
  %887 = icmp sgt i32 %870, 0
  br i1 %887, label %888, label %890

888:                                              ; preds = %886
  %889 = zext nneg i32 %870 to i64
  br label %894

890:                                              ; preds = %894, %886
  %891 = icmp sgt i32 %870, 0
  br i1 %891, label %892, label %901

892:                                              ; preds = %890
  %893 = zext nneg i32 %870 to i64
  br label %905

894:                                              ; preds = %888, %894
  %895 = phi i64 [ 0, %888 ], [ %899, %894 ]
  %896 = getelementptr inbounds float, ptr %428, i64 %895
  %897 = load float, ptr %896, align 4, !tbaa !95
  %898 = getelementptr inbounds float, ptr %9, i64 %895
  store float %897, ptr %898, align 4, !tbaa !95
  %899 = add nuw nsw i64 %895, 1
  %900 = icmp eq i64 %899, %889
  br i1 %900, label %890, label %894, !llvm.loop !124

901:                                              ; preds = %905, %890
  %902 = icmp sgt i32 %870, 0
  br i1 %902, label %903, label %914

903:                                              ; preds = %901
  %904 = zext nneg i32 %870 to i64
  br label %918

905:                                              ; preds = %892, %905
  %906 = phi i64 [ 0, %892 ], [ %912, %905 ]
  %907 = getelementptr inbounds float, ptr %7, i64 %906
  %908 = load float, ptr %907, align 4, !tbaa !95
  %909 = getelementptr inbounds float, ptr %9, i64 %906
  %910 = load float, ptr %909, align 4, !tbaa !95
  %911 = fsub float %910, %908
  store float %911, ptr %909, align 4, !tbaa !95
  %912 = add nuw nsw i64 %906, 1
  %913 = icmp eq i64 %912, %893
  br i1 %913, label %901, label %905, !llvm.loop !157

914:                                              ; preds = %918, %901
  %915 = icmp sgt i32 %870, 0
  br i1 %915, label %916, label %934

916:                                              ; preds = %914
  %917 = zext nneg i32 %870 to i64
  br label %925

918:                                              ; preds = %903, %918
  %919 = phi i64 [ 0, %903 ], [ %923, %918 ]
  %920 = getelementptr inbounds float, ptr %9, i64 %919
  %921 = load float, ptr %920, align 4, !tbaa !95
  %922 = fmul float %798, %921
  store float %922, ptr %920, align 4, !tbaa !95
  %923 = add nuw nsw i64 %919, 1
  %924 = icmp eq i64 %923, %904
  br i1 %924, label %914, label %918, !llvm.loop !154

925:                                              ; preds = %916, %925
  %926 = phi i64 [ 0, %916 ], [ %932, %925 ]
  %927 = getelementptr inbounds float, ptr %9, i64 %926
  %928 = load float, ptr %927, align 4, !tbaa !95
  %929 = getelementptr inbounds float, ptr %7, i64 %926
  %930 = load float, ptr %929, align 4, !tbaa !95
  %931 = fadd float %928, %930
  store float %931, ptr %929, align 4, !tbaa !95
  %932 = add nuw nsw i64 %926, 1
  %933 = icmp eq i64 %932, %917
  br i1 %933, label %934, label %925, !llvm.loop !152

934:                                              ; preds = %925, %914, %881
  %935 = icmp sgt i32 %870, 0
  br i1 %935, label %936, label %938

936:                                              ; preds = %934
  %937 = zext nneg i32 %870 to i64
  br label %942

938:                                              ; preds = %942, %934
  %939 = icmp sgt i32 %870, 0
  br i1 %939, label %940, label %949

940:                                              ; preds = %938
  %941 = zext nneg i32 %870 to i64
  br label %953

942:                                              ; preds = %936, %942
  %943 = phi i64 [ 0, %936 ], [ %947, %942 ]
  %944 = getelementptr inbounds float, ptr %428, i64 %943
  %945 = load float, ptr %944, align 4, !tbaa !95
  %946 = getelementptr inbounds float, ptr %9, i64 %943
  store float %945, ptr %946, align 4, !tbaa !95
  %947 = add nuw nsw i64 %943, 1
  %948 = icmp eq i64 %947, %937
  br i1 %948, label %938, label %942, !llvm.loop !124

949:                                              ; preds = %953, %938
  %950 = icmp sgt i32 %870, 0
  br i1 %950, label %951, label %960

951:                                              ; preds = %949
  %952 = zext nneg i32 %870 to i64
  br label %964

953:                                              ; preds = %940, %953
  %954 = phi i64 [ 0, %940 ], [ %958, %953 ]
  %955 = getelementptr inbounds float, ptr %9, i64 %954
  %956 = load float, ptr %955, align 4, !tbaa !95
  %957 = fmul float %956, 7.500000e-01
  store float %957, ptr %955, align 4, !tbaa !95
  %958 = add nuw nsw i64 %954, 1
  %959 = icmp eq i64 %958, %941
  br i1 %959, label %949, label %953, !llvm.loop !154

960:                                              ; preds = %964, %949
  %961 = icmp sgt i32 %870, 0
  br i1 %961, label %962, label %971

962:                                              ; preds = %960
  %963 = zext nneg i32 %870 to i64
  br label %975

964:                                              ; preds = %951, %964
  %965 = phi i64 [ 0, %951 ], [ %969, %964 ]
  %966 = getelementptr inbounds float, ptr %7, i64 %965
  %967 = load float, ptr %966, align 4, !tbaa !95
  %968 = fmul float %967, 2.500000e-01
  store float %968, ptr %966, align 4, !tbaa !95
  %969 = add nuw nsw i64 %965, 1
  %970 = icmp eq i64 %969, %952
  br i1 %970, label %960, label %964, !llvm.loop !154

971:                                              ; preds = %975, %960
  %972 = icmp sgt i32 %870, 0
  br i1 %972, label %973, label %984

973:                                              ; preds = %971
  %974 = zext nneg i32 %870 to i64
  br label %988

975:                                              ; preds = %962, %975
  %976 = phi i64 [ 0, %962 ], [ %982, %975 ]
  %977 = getelementptr inbounds float, ptr %7, i64 %976
  %978 = load float, ptr %977, align 4, !tbaa !95
  %979 = getelementptr inbounds float, ptr %9, i64 %976
  %980 = load float, ptr %979, align 4, !tbaa !95
  %981 = fadd float %978, %980
  store float %981, ptr %979, align 4, !tbaa !95
  %982 = add nuw nsw i64 %976, 1
  %983 = icmp eq i64 %982, %963
  br i1 %983, label %971, label %975, !llvm.loop !152

984:                                              ; preds = %988, %971
  %985 = icmp sgt i32 %870, 0
  br i1 %985, label %986, label %997

986:                                              ; preds = %984
  %987 = zext nneg i32 %870 to i64
  br label %1001

988:                                              ; preds = %973, %988
  %989 = phi i64 [ 0, %973 ], [ %995, %988 ]
  %990 = getelementptr inbounds float, ptr %429, i64 %989
  %991 = load float, ptr %990, align 4, !tbaa !95
  %992 = getelementptr inbounds float, ptr %9, i64 %989
  %993 = load float, ptr %992, align 4, !tbaa !95
  %994 = fsub float %993, %991
  store float %994, ptr %992, align 4, !tbaa !95
  %995 = add nuw nsw i64 %989, 1
  %996 = icmp eq i64 %995, %974
  br i1 %996, label %984, label %988, !llvm.loop !157

997:                                              ; preds = %1001, %984
  %998 = icmp sgt i32 %870, 0
  br i1 %998, label %999, label %1017

999:                                              ; preds = %997
  %1000 = zext nneg i32 %870 to i64
  br label %1008

1001:                                             ; preds = %986, %1001
  %1002 = phi i64 [ 0, %986 ], [ %1006, %1001 ]
  %1003 = getelementptr inbounds float, ptr %9, i64 %1002
  %1004 = load float, ptr %1003, align 4, !tbaa !95
  %1005 = fmul float %798, %1004
  store float %1005, ptr %1003, align 4, !tbaa !95
  %1006 = add nuw nsw i64 %1002, 1
  %1007 = icmp eq i64 %1006, %987
  br i1 %1007, label %997, label %1001, !llvm.loop !154

1008:                                             ; preds = %999, %1008
  %1009 = phi i64 [ 0, %999 ], [ %1015, %1008 ]
  %1010 = getelementptr inbounds float, ptr %9, i64 %1009
  %1011 = load float, ptr %1010, align 4, !tbaa !95
  %1012 = getelementptr inbounds float, ptr %429, i64 %1009
  %1013 = load float, ptr %1012, align 4, !tbaa !95
  %1014 = fadd float %1011, %1013
  store float %1014, ptr %1012, align 4, !tbaa !95
  %1015 = add nuw nsw i64 %1009, 1
  %1016 = icmp eq i64 %1015, %1000
  br i1 %1016, label %1017, label %1008, !llvm.loop !152

1017:                                             ; preds = %1008, %997, %789
  %1018 = add nuw nsw i64 %425, 1
  %1019 = icmp eq i64 %1018, %208
  br i1 %1019, label %1020, label %424, !llvm.loop !166

1020:                                             ; preds = %1017, %199
  %1021 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %1022 = load i32, ptr %1021, align 4, !tbaa !97
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1107, label %1024

1024:                                             ; preds = %1020
  %1025 = icmp sgt i32 %40, 0
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1024
  %1027 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %1028 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %1029 = zext nneg i32 %40 to i64
  br label %1036

1030:                                             ; preds = %1036, %1024
  %1031 = icmp sgt i32 %39, 0
  br i1 %1031, label %1032, label %1053

1032:                                             ; preds = %1030
  %1033 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %1034 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %1035 = zext nneg i32 %39 to i64
  br label %1059

1036:                                             ; preds = %1026, %1036
  %1037 = phi i64 [ 0, %1026 ], [ %1051, %1036 ]
  %1038 = getelementptr inbounds ptr, ptr %16, i64 %1037
  %1039 = load ptr, ptr %1038, align 8, !tbaa !43
  %1040 = getelementptr inbounds %struct.CCGVert, ptr %1039, i64 1
  %1041 = load i32, ptr %4, align 8, !tbaa !66
  %1042 = load i32, ptr %2, align 8, !tbaa !61
  %1043 = add nsw i32 %1042, 1
  %1044 = mul nsw i32 %1043, %1041
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds i8, ptr %1040, i64 %1045
  %1047 = load i32, ptr %1027, align 8, !tbaa !69
  %1048 = load i32, ptr %1028, align 8, !tbaa !98
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds i8, ptr %1046, i64 %1049
  store i32 %1047, ptr %1050, align 4, !tbaa !60
  %1051 = add nuw nsw i64 %1037, 1
  %1052 = icmp eq i64 %1051, %1029
  br i1 %1052, label %1030, label %1036, !llvm.loop !167

1053:                                             ; preds = %1059, %1030
  %1054 = icmp sgt i32 %38, 0
  br i1 %1054, label %1055, label %1107

1055:                                             ; preds = %1053
  %1056 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %1057 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %1058 = zext nneg i32 %38 to i64
  br label %1078

1059:                                             ; preds = %1032, %1059
  %1060 = phi i64 [ 0, %1032 ], [ %1076, %1059 ]
  %1061 = getelementptr inbounds ptr, ptr %24, i64 %1060
  %1062 = load ptr, ptr %1061, align 8, !tbaa !43
  %1063 = getelementptr inbounds %struct.CCGEdge, ptr %1062, i64 1
  %1064 = load i32, ptr %4, align 8, !tbaa !66
  %1065 = load i32, ptr %2, align 8, !tbaa !61
  %1066 = add nsw i32 %1065, 1
  %1067 = shl nuw i32 1, %1066
  %1068 = add i32 %1067, %1065
  %1069 = mul nsw i32 %1068, %1064
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds i8, ptr %1063, i64 %1070
  %1072 = load i32, ptr %1033, align 8, !tbaa !69
  %1073 = load i32, ptr %1034, align 4, !tbaa !99
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds i8, ptr %1071, i64 %1074
  store i32 %1072, ptr %1075, align 4, !tbaa !60
  %1076 = add nuw nsw i64 %1060, 1
  %1077 = icmp eq i64 %1076, %1035
  br i1 %1077, label %1053, label %1059, !llvm.loop !168

1078:                                             ; preds = %1055, %1078
  %1079 = phi i64 [ 0, %1055 ], [ %1105, %1078 ]
  %1080 = getelementptr inbounds ptr, ptr %32, i64 %1079
  %1081 = load ptr, ptr %1080, align 8, !tbaa !43
  %1082 = load i32, ptr %2, align 8, !tbaa !61
  %1083 = add nsw i32 %1082, -1
  %1084 = shl nuw i32 1, %1083
  %1085 = add nuw nsw i32 %1084, 1
  %1086 = getelementptr inbounds %struct.CCGFace, ptr %1081, i64 1
  %1087 = getelementptr inbounds %struct.CCGFace, ptr %1081, i64 0, i32 2
  %1088 = load i16, ptr %1087, align 8, !tbaa !119
  %1089 = sext i16 %1088 to i64
  %1090 = getelementptr inbounds ptr, ptr %1086, i64 %1089
  %1091 = getelementptr inbounds ptr, ptr %1090, i64 %1089
  %1092 = load i32, ptr %4, align 8, !tbaa !66
  %1093 = sext i16 %1088 to i32
  %1094 = mul nsw i32 %1085, %1093
  %1095 = add nsw i32 %1094, 1
  %1096 = mul nsw i32 %1094, %1085
  %1097 = add nsw i32 %1095, %1096
  %1098 = mul nsw i32 %1097, %1092
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds i8, ptr %1091, i64 %1099
  %1101 = load i32, ptr %1056, align 8, !tbaa !69
  %1102 = load i32, ptr %1057, align 8, !tbaa !100
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds i8, ptr %1100, i64 %1103
  store i32 %1101, ptr %1104, align 4, !tbaa !60
  %1105 = add nuw nsw i64 %1079, 1
  %1106 = icmp eq i64 %1105, %1058
  br i1 %1106, label %1107, label %1078, !llvm.loop !169

1107:                                             ; preds = %1078, %1053, %1020
  %1108 = icmp sgt i32 %39, 0
  br i1 %1108, label %1109, label %1122

1109:                                             ; preds = %1107
  %1110 = shl i32 %5, 1
  %1111 = sext i32 %1110 to i64
  %1112 = sext i32 %5 to i64
  %1113 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %1114 = load i32, ptr %1113, align 4, !tbaa !104
  %1115 = icmp sgt i32 %1114, 0
  %1116 = shl i32 %5, 2
  %1117 = sext i32 %1116 to i64
  %1118 = icmp sgt i32 %1114, 0
  %1119 = zext nneg i32 %39 to i64
  %1120 = zext nneg i32 %1114 to i64
  %1121 = zext nneg i32 %1114 to i64
  br label %1152

1122:                                             ; preds = %1182, %1107
  %1123 = icmp sgt i32 %38, 0
  br i1 %1123, label %1124, label %1185

1124:                                             ; preds = %1122
  %1125 = add nsw i32 %3, -1
  %1126 = shl nuw i32 1, %1125
  %1127 = add nuw i32 %1126, 1
  %1128 = add nuw i32 %1126, 2
  %1129 = mul i32 %1127, %1128
  %1130 = mul i32 %1127, %5
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %1133 = shl i32 %1128, %1125
  %1134 = add i32 %1133, %1127
  %1135 = mul i32 %1134, %5
  %1136 = sext i32 %1135 to i64
  %1137 = sext i32 %5 to i64
  %1138 = shl i32 %5, %1125
  %1139 = sext i32 %1138 to i64
  %1140 = mul i32 %5, 3
  %1141 = sext i32 %1140 to i64
  %1142 = add i32 %1127, %1126
  %1143 = mul i32 %1142, %5
  %1144 = sext i32 %1143 to i64
  %1145 = shl i32 %1127, %1125
  %1146 = add i32 %1145, %1127
  %1147 = mul i32 %1146, %5
  %1148 = sext i32 %1147 to i64
  %1149 = sext i32 %1129 to i64
  %1150 = sext i32 %5 to i64
  %1151 = zext nneg i32 %38 to i64
  br label %1187

1152:                                             ; preds = %1109, %1182
  %1153 = phi i64 [ 0, %1109 ], [ %1183, %1182 ]
  %1154 = getelementptr inbounds ptr, ptr %24, i64 %1153
  %1155 = load ptr, ptr %1154, align 8, !tbaa !43
  %1156 = getelementptr %struct.CCGEdge, ptr %1155, i64 1
  %1157 = getelementptr i8, ptr %1156, i64 %1111
  %1158 = getelementptr inbounds %struct.CCGEdge, ptr %1155, i64 0, i32 5
  %1159 = load ptr, ptr %1158, align 8, !tbaa !113
  %1160 = getelementptr %struct.CCGVert, ptr %1159, i64 1
  %1161 = getelementptr i8, ptr %1160, i64 %1112
  br i1 %1115, label %1162, label %1169

1162:                                             ; preds = %1152, %1162
  %1163 = phi i64 [ %1167, %1162 ], [ 0, %1152 ]
  %1164 = getelementptr inbounds float, ptr %1161, i64 %1163
  %1165 = load float, ptr %1164, align 4, !tbaa !95
  %1166 = getelementptr inbounds float, ptr %1157, i64 %1163
  store float %1165, ptr %1166, align 4, !tbaa !95
  %1167 = add nuw nsw i64 %1163, 1
  %1168 = icmp eq i64 %1167, %1120
  br i1 %1168, label %1169, label %1162, !llvm.loop !124

1169:                                             ; preds = %1162, %1152
  %1170 = getelementptr i8, ptr %1156, i64 %1117
  %1171 = getelementptr inbounds %struct.CCGEdge, ptr %1155, i64 0, i32 6
  %1172 = load ptr, ptr %1171, align 8, !tbaa !115
  %1173 = getelementptr %struct.CCGVert, ptr %1172, i64 1
  %1174 = getelementptr i8, ptr %1173, i64 %1112
  br i1 %1118, label %1175, label %1182

1175:                                             ; preds = %1169, %1175
  %1176 = phi i64 [ %1180, %1175 ], [ 0, %1169 ]
  %1177 = getelementptr inbounds float, ptr %1174, i64 %1176
  %1178 = load float, ptr %1177, align 4, !tbaa !95
  %1179 = getelementptr inbounds float, ptr %1170, i64 %1176
  store float %1178, ptr %1179, align 4, !tbaa !95
  %1180 = add nuw nsw i64 %1176, 1
  %1181 = icmp eq i64 %1180, %1121
  br i1 %1181, label %1182, label %1175, !llvm.loop !124

1182:                                             ; preds = %1175, %1169
  %1183 = add nuw nsw i64 %1153, 1
  %1184 = icmp eq i64 %1183, %1119
  br i1 %1184, label %1122, label %1152, !llvm.loop !170

1185:                                             ; preds = %1292, %1122
  %1186 = icmp sgt i32 %3, 1
  br i1 %1186, label %1295, label %1299

1187:                                             ; preds = %1124, %1292
  %1188 = phi i64 [ 0, %1124 ], [ %1293, %1292 ]
  %1189 = getelementptr inbounds ptr, ptr %32, i64 %1188
  %1190 = load ptr, ptr %1189, align 8, !tbaa !43
  %1191 = getelementptr inbounds %struct.CCGFace, ptr %1190, i64 0, i32 2
  %1192 = load i16, ptr %1191, align 8, !tbaa !119
  %1193 = sext i16 %1192 to i32
  %1194 = icmp sgt i16 %1192, 0
  br i1 %1194, label %1195, label %1292

1195:                                             ; preds = %1187
  %1196 = getelementptr inbounds %struct.CCGFace, ptr %1190, i64 1
  %1197 = zext nneg i16 %1192 to i64
  %1198 = getelementptr inbounds ptr, ptr %1196, i64 %1197
  %1199 = getelementptr ptr, ptr %1198, i64 %1197
  %1200 = load i32, ptr %1132, align 4, !tbaa !104
  %1201 = icmp sgt i32 %1200, 0
  %1202 = icmp sgt i32 %1200, 0
  %1203 = icmp sgt i32 %1200, 0
  %1204 = icmp sgt i32 %1200, 0
  %1205 = icmp sgt i32 %1200, 0
  %1206 = icmp sgt i32 %1200, 0
  %1207 = zext nneg i32 %1193 to i64
  %1208 = zext nneg i32 %1200 to i64
  %1209 = zext nneg i32 %1200 to i64
  %1210 = zext nneg i32 %1200 to i64
  %1211 = zext nneg i32 %1200 to i64
  %1212 = zext nneg i32 %1200 to i64
  %1213 = zext nneg i32 %1200 to i64
  br label %1214

1214:                                             ; preds = %1195, %1289
  %1215 = phi i64 [ 0, %1195 ], [ %1290, %1289 ]
  %1216 = getelementptr inbounds ptr, ptr %1198, i64 %1215
  %1217 = load ptr, ptr %1216, align 8, !tbaa !43
  %1218 = trunc i64 %1215 to i32
  %1219 = add i32 %1218, -1
  %1220 = add i32 %1219, %1193
  %1221 = srem i32 %1220, %1193
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds ptr, ptr %1198, i64 %1222
  %1224 = load ptr, ptr %1223, align 8, !tbaa !43
  %1225 = mul nsw i64 %1215, %1149
  %1226 = add nsw i64 %1225, 1
  %1227 = mul nsw i64 %1226, %1150
  %1228 = getelementptr inbounds i8, ptr %1199, i64 %1227
  %1229 = getelementptr inbounds i8, ptr %1228, i64 %1131
  br i1 %1201, label %1231, label %1230

1230:                                             ; preds = %1231, %1214
  br i1 %1202, label %1238, label %1245

1231:                                             ; preds = %1214, %1231
  %1232 = phi i64 [ %1236, %1231 ], [ 0, %1214 ]
  %1233 = getelementptr inbounds float, ptr %1199, i64 %1232
  %1234 = load float, ptr %1233, align 4, !tbaa !95
  %1235 = getelementptr inbounds float, ptr %1229, i64 %1232
  store float %1234, ptr %1235, align 4, !tbaa !95
  %1236 = add nuw nsw i64 %1232, 1
  %1237 = icmp eq i64 %1236, %1208
  br i1 %1237, label %1230, label %1231, !llvm.loop !124

1238:                                             ; preds = %1230, %1238
  %1239 = phi i64 [ %1243, %1238 ], [ 0, %1230 ]
  %1240 = getelementptr inbounds float, ptr %1199, i64 %1239
  %1241 = load float, ptr %1240, align 4, !tbaa !95
  %1242 = getelementptr inbounds float, ptr %1228, i64 %1239
  store float %1241, ptr %1242, align 4, !tbaa !95
  %1243 = add nuw nsw i64 %1239, 1
  %1244 = icmp eq i64 %1243, %1209
  br i1 %1244, label %1245, label %1238, !llvm.loop !124

1245:                                             ; preds = %1238, %1230
  %1246 = getelementptr inbounds i8, ptr %1228, i64 %1136
  %1247 = getelementptr inbounds ptr, ptr %1196, i64 %1215
  %1248 = load ptr, ptr %1247, align 8, !tbaa !43
  %1249 = getelementptr %struct.CCGVert, ptr %1248, i64 1
  %1250 = getelementptr i8, ptr %1249, i64 %1137
  br i1 %1203, label %1251, label %1258

1251:                                             ; preds = %1245, %1251
  %1252 = phi i64 [ %1256, %1251 ], [ 0, %1245 ]
  %1253 = getelementptr inbounds float, ptr %1250, i64 %1252
  %1254 = load float, ptr %1253, align 4, !tbaa !95
  %1255 = getelementptr inbounds float, ptr %1246, i64 %1252
  store float %1254, ptr %1255, align 4, !tbaa !95
  %1256 = add nuw nsw i64 %1252, 1
  %1257 = icmp eq i64 %1256, %1210
  br i1 %1257, label %1258, label %1251, !llvm.loop !124

1258:                                             ; preds = %1251, %1245
  %1259 = getelementptr inbounds i8, ptr %1228, i64 %1139
  %1260 = getelementptr %struct.CCGEdge, ptr %1217, i64 1
  %1261 = getelementptr i8, ptr %1260, i64 %1141
  br i1 %1204, label %1262, label %1269

1262:                                             ; preds = %1258, %1262
  %1263 = phi i64 [ %1267, %1262 ], [ 0, %1258 ]
  %1264 = getelementptr inbounds float, ptr %1261, i64 %1263
  %1265 = load float, ptr %1264, align 4, !tbaa !95
  %1266 = getelementptr inbounds float, ptr %1259, i64 %1263
  store float %1265, ptr %1266, align 4, !tbaa !95
  %1267 = add nuw nsw i64 %1263, 1
  %1268 = icmp eq i64 %1267, %1211
  br i1 %1268, label %1269, label %1262, !llvm.loop !124

1269:                                             ; preds = %1262, %1258
  %1270 = getelementptr inbounds i8, ptr %1228, i64 %1144
  br i1 %1205, label %1271, label %1278

1271:                                             ; preds = %1269, %1271
  %1272 = phi i64 [ %1276, %1271 ], [ 0, %1269 ]
  %1273 = getelementptr inbounds float, ptr %1261, i64 %1272
  %1274 = load float, ptr %1273, align 4, !tbaa !95
  %1275 = getelementptr inbounds float, ptr %1270, i64 %1272
  store float %1274, ptr %1275, align 4, !tbaa !95
  %1276 = add nuw nsw i64 %1272, 1
  %1277 = icmp eq i64 %1276, %1212
  br i1 %1277, label %1278, label %1271, !llvm.loop !124

1278:                                             ; preds = %1271, %1269
  %1279 = getelementptr inbounds i8, ptr %1228, i64 %1148
  %1280 = getelementptr %struct.CCGEdge, ptr %1224, i64 1
  %1281 = getelementptr i8, ptr %1280, i64 %1141
  br i1 %1206, label %1282, label %1289

1282:                                             ; preds = %1278, %1282
  %1283 = phi i64 [ %1287, %1282 ], [ 0, %1278 ]
  %1284 = getelementptr inbounds float, ptr %1281, i64 %1283
  %1285 = load float, ptr %1284, align 4, !tbaa !95
  %1286 = getelementptr inbounds float, ptr %1279, i64 %1283
  store float %1285, ptr %1286, align 4, !tbaa !95
  %1287 = add nuw nsw i64 %1283, 1
  %1288 = icmp eq i64 %1287, %1213
  br i1 %1288, label %1289, label %1282, !llvm.loop !124

1289:                                             ; preds = %1282, %1278
  %1290 = add nuw nsw i64 %1215, 1
  %1291 = icmp eq i64 %1290, %1207
  br i1 %1291, label %1292, label %1214, !llvm.loop !171

1292:                                             ; preds = %1289, %1187
  %1293 = add nuw nsw i64 %1188, 1
  %1294 = icmp eq i64 %1293, %1151
  br i1 %1294, label %1185, label %1187, !llvm.loop !172

1295:                                             ; preds = %1185, %1295
  %1296 = phi i32 [ %1297, %1295 ], [ 1, %1185 ]
  tail call fastcc void @ccgSubSurf__calcSubdivLevel(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %24, ptr noundef %32, i32 noundef %40, i32 noundef %39, i32 noundef %38, i32 noundef %1296)
  %1297 = add nuw nsw i32 %1296, 1
  %1298 = icmp eq i32 %1297, %3
  br i1 %1298, label %1299, label %1295, !llvm.loop !173

1299:                                             ; preds = %1295, %1185
  %1300 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  %1301 = load i32, ptr %1300, align 8, !tbaa !62
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1304, label %1303

1303:                                             ; preds = %1299
  tail call fastcc void @ccgSubSurf__calcVertNormals(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %24, ptr noundef %32, i32 noundef %40, i32 noundef %39, i32 noundef %38)
  br label %1304

1304:                                             ; preds = %1303, %1299
  %1305 = icmp sgt i32 %40, 0
  br i1 %1305, label %1306, label %1308

1306:                                             ; preds = %1304
  %1307 = zext nneg i32 %40 to i64
  br label %1312

1308:                                             ; preds = %1312, %1304
  %1309 = icmp sgt i32 %39, 0
  br i1 %1309, label %1310, label %1326

1310:                                             ; preds = %1308
  %1311 = zext nneg i32 %39 to i64
  br label %1319

1312:                                             ; preds = %1306, %1312
  %1313 = phi i64 [ 0, %1306 ], [ %1317, %1312 ]
  %1314 = getelementptr inbounds ptr, ptr %16, i64 %1313
  %1315 = load ptr, ptr %1314, align 8, !tbaa !43
  %1316 = getelementptr inbounds %struct.CCGVert, ptr %1315, i64 0, i32 4
  store i16 0, ptr %1316, align 4, !tbaa !116
  %1317 = add nuw nsw i64 %1313, 1
  %1318 = icmp eq i64 %1317, %1307
  br i1 %1318, label %1308, label %1312, !llvm.loop !174

1319:                                             ; preds = %1310, %1319
  %1320 = phi i64 [ 0, %1310 ], [ %1324, %1319 ]
  %1321 = getelementptr inbounds ptr, ptr %24, i64 %1320
  %1322 = load ptr, ptr %1321, align 8, !tbaa !43
  %1323 = getelementptr inbounds %struct.CCGEdge, ptr %1322, i64 0, i32 3
  store i16 0, ptr %1323, align 2, !tbaa !133
  %1324 = add nuw nsw i64 %1320, 1
  %1325 = icmp eq i64 %1324, %1311
  br i1 %1325, label %1326, label %1319, !llvm.loop !175

1326:                                             ; preds = %1319, %1308
  %1327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %1327(ptr noundef %32) #23
  %1328 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %1328(ptr noundef %24) #23
  %1329 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %1329(ptr noundef %16) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_updateFromFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 %8, i32 %1
  %11 = add nsw i32 %10, -1
  %12 = shl nuw i32 1, %11
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %4
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %15(i64 noundef %21, ptr noundef nonnull @.str.5) #23
  %23 = load ptr, ptr %16, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct._EHash, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %14, %46
  %28 = phi i64 [ %48, %46 ], [ 0, %14 ]
  %29 = phi ptr [ %49, %46 ], [ %23, %14 ]
  %30 = phi i32 [ %47, %46 ], [ 0, %14 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !55
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = sext i32 %30 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %36, %35 ], [ %40, %37 ]
  %39 = phi ptr [ %33, %35 ], [ %42, %37 ]
  %40 = add i64 %38, 1
  %41 = getelementptr inbounds ptr, ptr %22, i64 %38
  store ptr %39, ptr %41, align 8, !tbaa !43
  %42 = load ptr, ptr %39, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !llvm.loop !176

44:                                               ; preds = %37
  %45 = trunc i64 %40 to i32
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i32 [ %30, %27 ], [ %45, %44 ]
  %48 = add nuw nsw i64 %28, 1
  %49 = load ptr, ptr %16, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct._EHash, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %27, label %54, !llvm.loop !177

54:                                               ; preds = %46, %14, %4
  %55 = phi i32 [ %3, %4 ], [ 0, %14 ], [ %47, %46 ]
  %56 = phi ptr [ %2, %4 ], [ %22, %14 ], [ %22, %46 ]
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %256

58:                                               ; preds = %54
  %59 = add nsw i32 %8, -1
  %60 = shl nuw i32 1, %59
  %61 = add nuw i32 %60, 1
  %62 = add nuw i32 %60, 2
  %63 = mul i32 %61, %62
  %64 = mul i32 %61, %6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %67 = mul i32 %10, %6
  %68 = sext i32 %67 to i64
  %69 = sub nsw i32 %8, %10
  %70 = shl i32 %61, %11
  %71 = add nsw i32 %70, %12
  %72 = shl i32 %71, %69
  %73 = add i32 %72, %61
  %74 = mul i32 %73, %6
  %75 = sext i32 %74 to i64
  %76 = icmp eq i32 %11, 31
  %77 = shl nuw i32 1, %10
  %78 = add i32 %10, -1
  %79 = add i32 %78, %77
  %80 = add nsw i32 %79, %77
  %81 = add nsw i32 %79, %77
  %82 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %83 = sext i32 %12 to i64
  %84 = sext i32 %79 to i64
  %85 = sext i32 %6 to i64
  %86 = sext i32 %79 to i64
  %87 = sext i32 %6 to i64
  %88 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %89 = add nuw i32 %88, 1
  %90 = sext i32 %63 to i64
  %91 = sext i32 %6 to i64
  %92 = zext nneg i32 %55 to i64
  %93 = icmp eq i32 %11, 31
  %94 = zext i32 %89 to i64
  br label %95

95:                                               ; preds = %58, %253
  %96 = phi i64 [ 0, %58 ], [ %254, %253 ]
  %97 = getelementptr inbounds ptr, ptr %56, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds %struct.CCGFace, ptr %98, i64 0, i32 2
  %100 = load i16, ptr %99, align 8, !tbaa !119
  %101 = sext i16 %100 to i32
  %102 = icmp sgt i16 %100, 0
  br i1 %102, label %103, label %253

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.CCGFace, ptr %98, i64 1
  %105 = zext nneg i16 %100 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = getelementptr ptr, ptr %106, i64 %105
  %108 = load i32, ptr %66, align 4, !tbaa !104
  %109 = icmp sgt i32 %108, 0
  %110 = icmp sgt i32 %108, 0
  %111 = icmp sgt i32 %108, 0
  %112 = icmp sgt i32 %108, 0
  %113 = icmp sgt i32 %108, 0
  %114 = zext nneg i32 %101 to i64
  %115 = zext nneg i32 %108 to i64
  %116 = zext nneg i32 %108 to i64
  %117 = zext nneg i32 %108 to i64
  %118 = zext nneg i32 %108 to i64
  %119 = zext nneg i32 %108 to i64
  br label %120

120:                                              ; preds = %103, %250
  %121 = phi i64 [ 0, %103 ], [ %251, %250 ]
  %122 = getelementptr inbounds ptr, ptr %106, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !43
  %124 = trunc i64 %121 to i32
  %125 = add i32 %124, -1
  %126 = add i32 %125, %101
  %127 = srem i32 %126, %101
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %106, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = mul nsw i64 %121, %90
  %132 = add nsw i64 %131, 1
  %133 = mul nsw i64 %132, %91
  %134 = getelementptr inbounds i8, ptr %107, i64 %133
  %135 = getelementptr inbounds i8, ptr %134, i64 %65
  br i1 %109, label %136, label %143

136:                                              ; preds = %120, %136
  %137 = phi i64 [ %141, %136 ], [ 0, %120 ]
  %138 = getelementptr inbounds float, ptr %135, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !95
  %140 = getelementptr inbounds float, ptr %107, i64 %137
  store float %139, ptr %140, align 4, !tbaa !95
  %141 = add nuw nsw i64 %137, 1
  %142 = icmp eq i64 %141, %115
  br i1 %142, label %143, label %136, !llvm.loop !124

143:                                              ; preds = %136, %120
  %144 = getelementptr inbounds ptr, ptr %104, i64 %121
  %145 = load ptr, ptr %144, align 8, !tbaa !43
  %146 = getelementptr %struct.CCGVert, ptr %145, i64 1
  %147 = getelementptr i8, ptr %146, i64 %68
  %148 = getelementptr inbounds i8, ptr %134, i64 %75
  br i1 %110, label %150, label %149

149:                                              ; preds = %150, %143
  br i1 %93, label %250, label %169

150:                                              ; preds = %143, %150
  %151 = phi i64 [ %155, %150 ], [ 0, %143 ]
  %152 = getelementptr inbounds float, ptr %148, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !95
  %154 = getelementptr inbounds float, ptr %147, i64 %151
  store float %153, ptr %154, align 4, !tbaa !95
  %155 = add nuw nsw i64 %151, 1
  %156 = icmp eq i64 %155, %116
  br i1 %156, label %149, label %150, !llvm.loop !124

157:                                              ; preds = %187
  br i1 %76, label %250, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !113
  %161 = icmp eq ptr %160, %145
  %162 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 1
  %163 = getelementptr inbounds %struct.CCGEdge, ptr %123, i64 1
  %164 = getelementptr inbounds %struct.CCGEdge, ptr %130, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !113
  %166 = icmp eq ptr %165, %145
  %167 = getelementptr inbounds %struct.CCGEdge, ptr %130, i64 1
  %168 = getelementptr inbounds %struct.CCGEdge, ptr %130, i64 1
  br label %190

169:                                              ; preds = %149, %187
  %170 = phi i32 [ %188, %187 ], [ 0, %149 ]
  %171 = mul nsw i32 %170, %6
  %172 = shl i32 %171, %69
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %134, i64 %173
  %175 = shl i32 %170, %69
  %176 = add i32 %175, %61
  %177 = mul i32 %176, %6
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, ptr %134, i64 %178
  br i1 %111, label %180, label %187

180:                                              ; preds = %169, %180
  %181 = phi i64 [ %185, %180 ], [ 0, %169 ]
  %182 = getelementptr inbounds float, ptr %179, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !95
  %184 = getelementptr inbounds float, ptr %174, i64 %181
  store float %183, ptr %184, align 4, !tbaa !95
  %185 = add nuw nsw i64 %181, 1
  %186 = icmp eq i64 %185, %117
  br i1 %186, label %187, label %180, !llvm.loop !124

187:                                              ; preds = %180, %169
  %188 = add nuw i32 %170, 1
  %189 = icmp eq i32 %170, %82
  br i1 %189, label %157, label %169, !llvm.loop !178

190:                                              ; preds = %158, %247
  %191 = phi i64 [ 0, %158 ], [ %248, %247 ]
  %192 = sub nsw i64 %83, %191
  br i1 %161, label %193, label %197

193:                                              ; preds = %190
  %194 = add nsw i64 %192, %84
  %195 = mul nsw i64 %194, %85
  %196 = getelementptr inbounds i8, ptr %163, i64 %195
  br label %203

197:                                              ; preds = %190
  %198 = trunc i64 %192 to i32
  %199 = sub i32 %80, %198
  %200 = mul nsw i32 %199, %6
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %162, i64 %201
  br label %203

203:                                              ; preds = %193, %197
  %204 = phi ptr [ %196, %193 ], [ %202, %197 ]
  %205 = trunc i64 %191 to i32
  %206 = mul i32 %61, %205
  %207 = add i32 %206, %12
  %208 = shl i32 %207, %69
  %209 = add i32 %208, %61
  %210 = mul i32 %209, %6
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %134, i64 %211
  br i1 %112, label %213, label %220

213:                                              ; preds = %203, %213
  %214 = phi i64 [ %218, %213 ], [ 0, %203 ]
  %215 = getelementptr inbounds float, ptr %212, i64 %214
  %216 = load float, ptr %215, align 4, !tbaa !95
  %217 = getelementptr inbounds float, ptr %204, i64 %214
  store float %216, ptr %217, align 4, !tbaa !95
  %218 = add nuw nsw i64 %214, 1
  %219 = icmp eq i64 %218, %118
  br i1 %219, label %220, label %213, !llvm.loop !124

220:                                              ; preds = %213, %203
  br i1 %166, label %221, label %225

221:                                              ; preds = %220
  %222 = add nsw i64 %192, %86
  %223 = mul nsw i64 %222, %87
  %224 = getelementptr inbounds i8, ptr %168, i64 %223
  br label %231

225:                                              ; preds = %220
  %226 = trunc i64 %192 to i32
  %227 = sub i32 %81, %226
  %228 = mul nsw i32 %227, %6
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %167, i64 %229
  br label %231

231:                                              ; preds = %221, %225
  %232 = phi ptr [ %224, %221 ], [ %230, %225 ]
  %233 = trunc i64 %191 to i32
  %234 = add i32 %70, %233
  %235 = shl i32 %234, %69
  %236 = add i32 %235, %61
  %237 = mul i32 %236, %6
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %134, i64 %238
  br i1 %113, label %240, label %247

240:                                              ; preds = %231, %240
  %241 = phi i64 [ %245, %240 ], [ 0, %231 ]
  %242 = getelementptr inbounds float, ptr %239, i64 %241
  %243 = load float, ptr %242, align 4, !tbaa !95
  %244 = getelementptr inbounds float, ptr %232, i64 %241
  store float %243, ptr %244, align 4, !tbaa !95
  %245 = add nuw nsw i64 %241, 1
  %246 = icmp eq i64 %245, %119
  br i1 %246, label %247, label %240, !llvm.loop !124

247:                                              ; preds = %240, %231
  %248 = add nuw nsw i64 %191, 1
  %249 = icmp eq i64 %248, %94
  br i1 %249, label %250, label %190, !llvm.loop !179

250:                                              ; preds = %247, %149, %157
  %251 = add nuw nsw i64 %121, 1
  %252 = icmp eq i64 %251, %114
  br i1 %252, label %253, label %120, !llvm.loop !180

253:                                              ; preds = %250, %95
  %254 = add nuw nsw i64 %96, 1
  %255 = icmp eq i64 %254, %92
  br i1 %255, label %256, label %95, !llvm.loop !181

256:                                              ; preds = %253, %54
  br i1 %13, label %257, label %259

257:                                              ; preds = %256
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %258(ptr noundef %56) #23
  br label %259

259:                                              ; preds = %257, %256
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_updateToFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 %8, i32 %1
  %11 = add nsw i32 %10, -1
  %12 = shl nuw i32 1, %11
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %4
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %15(i64 noundef %21, ptr noundef nonnull @.str.5) #23
  %23 = load ptr, ptr %16, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct._EHash, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %14, %46
  %28 = phi i64 [ %48, %46 ], [ 0, %14 ]
  %29 = phi ptr [ %49, %46 ], [ %23, %14 ]
  %30 = phi i32 [ %47, %46 ], [ 0, %14 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !55
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = sext i32 %30 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %36, %35 ], [ %40, %37 ]
  %39 = phi ptr [ %33, %35 ], [ %42, %37 ]
  %40 = add i64 %38, 1
  %41 = getelementptr inbounds ptr, ptr %22, i64 %38
  store ptr %39, ptr %41, align 8, !tbaa !43
  %42 = load ptr, ptr %39, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !llvm.loop !176

44:                                               ; preds = %37
  %45 = trunc i64 %40 to i32
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i32 [ %30, %27 ], [ %45, %44 ]
  %48 = add nuw nsw i64 %28, 1
  %49 = load ptr, ptr %16, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct._EHash, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %27, label %54, !llvm.loop !177

54:                                               ; preds = %46, %14, %4
  %55 = phi i32 [ %3, %4 ], [ 0, %14 ], [ %47, %46 ]
  %56 = phi ptr [ %2, %4 ], [ %22, %14 ], [ %22, %46 ]
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %310

58:                                               ; preds = %54
  %59 = icmp eq i32 %11, 31
  %60 = add nsw i32 %8, -1
  %61 = shl nuw i32 1, %60
  %62 = add nuw i32 %61, 1
  %63 = sub nsw i32 %8, %10
  %64 = add nuw i32 %61, 2
  %65 = mul i32 %62, %64
  %66 = shl nuw i32 1, %10
  %67 = add i32 %10, -1
  %68 = add i32 %67, %66
  %69 = add nsw i32 %68, %66
  %70 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %71 = shl i32 %62, %11
  %72 = add nsw i32 %68, %66
  %73 = icmp sgt i32 %12, 1
  %74 = add nsw i32 %8, -1
  %75 = shl nuw i32 1, %74
  %76 = add nuw i32 %75, 1
  %77 = sub nsw i32 %8, %10
  %78 = add nuw i32 %75, 2
  %79 = mul i32 %76, %78
  %80 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %81 = add nsw i32 %8, -1
  %82 = shl nuw i32 1, %81
  %83 = add nuw i32 %82, 1
  %84 = add nuw i32 %82, 2
  %85 = mul i32 %83, %84
  %86 = mul i32 %83, %6
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %89 = sub nsw i32 %8, %10
  %90 = shl i32 %84, %11
  %91 = shl i32 %90, %89
  %92 = add i32 %91, %83
  %93 = mul i32 %92, %6
  %94 = sext i32 %93 to i64
  %95 = mul i32 %10, %6
  %96 = sext i32 %95 to i64
  %97 = sext i32 %12 to i64
  %98 = sext i32 %68 to i64
  %99 = sext i32 %6 to i64
  %100 = sext i32 %68 to i64
  %101 = sext i32 %6 to i64
  %102 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %103 = add nuw i32 %102, 1
  %104 = sext i32 %85 to i64
  %105 = sext i32 %6 to i64
  %106 = sext i32 %79 to i64
  %107 = sext i32 %6 to i64
  %108 = sext i32 %65 to i64
  %109 = sext i32 %6 to i64
  %110 = zext nneg i32 %55 to i64
  %111 = zext i32 %103 to i64
  br label %112

112:                                              ; preds = %58, %307
  %113 = phi i64 [ 0, %58 ], [ %308, %307 ]
  %114 = getelementptr inbounds ptr, ptr %56, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !43
  %116 = getelementptr inbounds %struct.CCGFace, ptr %115, i64 0, i32 2
  %117 = load i16, ptr %116, align 8, !tbaa !119
  %118 = sext i16 %117 to i32
  %119 = icmp sgt i16 %117, 0
  br i1 %119, label %120, label %307

120:                                              ; preds = %112
  %121 = getelementptr %struct.CCGFace, ptr %115, i64 1
  %122 = zext nneg i16 %117 to i64
  %123 = getelementptr ptr, ptr %121, i64 %122
  %124 = getelementptr ptr, ptr %123, i64 %122
  %125 = getelementptr inbounds ptr, ptr %123, i64 %122
  %126 = getelementptr inbounds ptr, ptr %123, i64 %122
  %127 = load i32, ptr %88, align 4, !tbaa !104
  %128 = icmp sgt i32 %127, 0
  %129 = icmp sgt i32 %127, 0
  %130 = zext nneg i32 %118 to i64
  %131 = zext nneg i32 %127 to i64
  %132 = zext nneg i32 %127 to i64
  br label %133

133:                                              ; preds = %120, %304
  %134 = phi i64 [ 0, %120 ], [ %305, %304 ]
  %135 = trunc i64 %134 to i32
  %136 = add i32 %135, -1
  %137 = add i32 %136, %118
  %138 = srem i32 %137, %118
  br i1 %59, label %166, label %139

139:                                              ; preds = %133
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds ptr, ptr %123, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  %143 = getelementptr inbounds ptr, ptr %123, i64 %134
  %144 = load ptr, ptr %143, align 8, !tbaa !43
  %145 = mul nsw i64 %134, %108
  %146 = add nsw i64 %145, 1
  %147 = mul nsw i64 %146, %109
  %148 = getelementptr inbounds i8, ptr %124, i64 %147
  %149 = getelementptr inbounds ptr, ptr %121, i64 %134
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = getelementptr inbounds %struct.CCGEdge, ptr %144, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !113
  %153 = icmp eq ptr %152, %150
  %154 = getelementptr inbounds %struct.CCGEdge, ptr %144, i64 1
  %155 = getelementptr inbounds %struct.CCGEdge, ptr %144, i64 1
  %156 = load i32, ptr %70, align 4, !tbaa !104
  %157 = icmp sgt i32 %156, 0
  %158 = getelementptr inbounds %struct.CCGEdge, ptr %142, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !113
  %160 = icmp eq ptr %159, %150
  %161 = getelementptr inbounds %struct.CCGEdge, ptr %142, i64 1
  %162 = getelementptr inbounds %struct.CCGEdge, ptr %142, i64 1
  %163 = icmp sgt i32 %156, 0
  %164 = zext nneg i32 %156 to i64
  %165 = zext nneg i32 %156 to i64
  br label %182

166:                                              ; preds = %239, %133
  br i1 %73, label %167, label %278

167:                                              ; preds = %166
  %168 = mul nsw i64 %134, %106
  %169 = add nsw i64 %168, 1
  %170 = mul nsw i64 %169, %107
  %171 = getelementptr inbounds i8, ptr %125, i64 %170
  %172 = mul i32 %138, %79
  %173 = add i32 %172, 1
  %174 = mul i32 %173, %6
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %125, i64 %175
  %177 = load i32, ptr %80, align 4, !tbaa !104
  %178 = icmp sgt i32 %177, 0
  %179 = icmp sgt i32 %177, 0
  %180 = zext nneg i32 %177 to i64
  %181 = zext nneg i32 %177 to i64
  br label %242

182:                                              ; preds = %139, %239
  %183 = phi i64 [ 0, %139 ], [ %240, %239 ]
  %184 = sub nsw i64 %97, %183
  %185 = trunc i64 %183 to i32
  %186 = mul i32 %62, %185
  %187 = add i32 %186, %12
  %188 = shl i32 %187, %63
  %189 = add i32 %188, %62
  %190 = mul i32 %189, %6
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %148, i64 %191
  br i1 %153, label %193, label %197

193:                                              ; preds = %182
  %194 = add nsw i64 %184, %98
  %195 = mul nsw i64 %194, %99
  %196 = getelementptr inbounds i8, ptr %155, i64 %195
  br label %203

197:                                              ; preds = %182
  %198 = trunc i64 %184 to i32
  %199 = sub i32 %69, %198
  %200 = mul nsw i32 %199, %6
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %154, i64 %201
  br label %203

203:                                              ; preds = %193, %197
  %204 = phi ptr [ %196, %193 ], [ %202, %197 ]
  br i1 %157, label %205, label %212

205:                                              ; preds = %203, %205
  %206 = phi i64 [ %210, %205 ], [ 0, %203 ]
  %207 = getelementptr inbounds float, ptr %204, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !95
  %209 = getelementptr inbounds float, ptr %192, i64 %206
  store float %208, ptr %209, align 4, !tbaa !95
  %210 = add nuw nsw i64 %206, 1
  %211 = icmp eq i64 %210, %164
  br i1 %211, label %212, label %205, !llvm.loop !124

212:                                              ; preds = %205, %203
  %213 = trunc i64 %183 to i32
  %214 = add i32 %71, %213
  %215 = shl i32 %214, %63
  %216 = add i32 %215, %62
  %217 = mul i32 %216, %6
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %148, i64 %218
  br i1 %160, label %220, label %224

220:                                              ; preds = %212
  %221 = add nsw i64 %184, %100
  %222 = mul nsw i64 %221, %101
  %223 = getelementptr inbounds i8, ptr %162, i64 %222
  br label %230

224:                                              ; preds = %212
  %225 = trunc i64 %184 to i32
  %226 = sub i32 %72, %225
  %227 = mul nsw i32 %226, %6
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %161, i64 %228
  br label %230

230:                                              ; preds = %220, %224
  %231 = phi ptr [ %223, %220 ], [ %229, %224 ]
  br i1 %163, label %232, label %239

232:                                              ; preds = %230, %232
  %233 = phi i64 [ %237, %232 ], [ 0, %230 ]
  %234 = getelementptr inbounds float, ptr %231, i64 %233
  %235 = load float, ptr %234, align 4, !tbaa !95
  %236 = getelementptr inbounds float, ptr %219, i64 %233
  store float %235, ptr %236, align 4, !tbaa !95
  %237 = add nuw nsw i64 %233, 1
  %238 = icmp eq i64 %237, %165
  br i1 %238, label %239, label %232, !llvm.loop !124

239:                                              ; preds = %232, %230
  %240 = add nuw nsw i64 %183, 1
  %241 = icmp eq i64 %240, %111
  br i1 %241, label %166, label %182, !llvm.loop !182

242:                                              ; preds = %167, %275
  %243 = phi i32 [ 1, %167 ], [ %276, %275 ]
  %244 = mul nsw i32 %243, %76
  %245 = shl i32 %244, %77
  %246 = add i32 %245, %76
  %247 = mul i32 %246, %6
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %171, i64 %248
  %250 = mul nsw i32 %243, %6
  %251 = shl i32 %250, %77
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %176, i64 %252
  br i1 %178, label %254, label %261

254:                                              ; preds = %242, %254
  %255 = phi i64 [ %259, %254 ], [ 0, %242 ]
  %256 = getelementptr inbounds float, ptr %253, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !95
  %258 = getelementptr inbounds float, ptr %249, i64 %255
  store float %257, ptr %258, align 4, !tbaa !95
  %259 = add nuw nsw i64 %255, 1
  %260 = icmp eq i64 %259, %180
  br i1 %260, label %261, label %254, !llvm.loop !124

261:                                              ; preds = %254, %242
  %262 = shl i32 %243, %77
  %263 = add i32 %262, %76
  %264 = mul i32 %263, %6
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %171, i64 %265
  %267 = getelementptr inbounds i8, ptr %171, i64 %252
  br i1 %179, label %268, label %275

268:                                              ; preds = %261, %268
  %269 = phi i64 [ %273, %268 ], [ 0, %261 ]
  %270 = getelementptr inbounds float, ptr %267, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !95
  %272 = getelementptr inbounds float, ptr %266, i64 %269
  store float %271, ptr %272, align 4, !tbaa !95
  %273 = add nuw nsw i64 %269, 1
  %274 = icmp eq i64 %273, %181
  br i1 %274, label %275, label %268, !llvm.loop !124

275:                                              ; preds = %268, %261
  %276 = add nuw nsw i32 %243, 1
  %277 = icmp eq i32 %276, %12
  br i1 %277, label %278, label %242, !llvm.loop !183

278:                                              ; preds = %275, %166
  %279 = mul nsw i64 %134, %104
  %280 = add nsw i64 %279, 1
  %281 = mul nsw i64 %280, %105
  %282 = getelementptr inbounds i8, ptr %126, i64 %281
  %283 = getelementptr inbounds i8, ptr %282, i64 %87
  br i1 %128, label %284, label %291

284:                                              ; preds = %278, %284
  %285 = phi i64 [ %289, %284 ], [ 0, %278 ]
  %286 = getelementptr inbounds float, ptr %126, i64 %285
  %287 = load float, ptr %286, align 4, !tbaa !95
  %288 = getelementptr inbounds float, ptr %283, i64 %285
  store float %287, ptr %288, align 4, !tbaa !95
  %289 = add nuw nsw i64 %285, 1
  %290 = icmp eq i64 %289, %131
  br i1 %290, label %291, label %284, !llvm.loop !124

291:                                              ; preds = %284, %278
  %292 = getelementptr inbounds i8, ptr %282, i64 %94
  %293 = getelementptr inbounds ptr, ptr %121, i64 %134
  %294 = load ptr, ptr %293, align 8, !tbaa !43
  %295 = getelementptr %struct.CCGVert, ptr %294, i64 1
  %296 = getelementptr i8, ptr %295, i64 %96
  br i1 %129, label %297, label %304

297:                                              ; preds = %291, %297
  %298 = phi i64 [ %302, %297 ], [ 0, %291 ]
  %299 = getelementptr inbounds float, ptr %296, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !95
  %301 = getelementptr inbounds float, ptr %292, i64 %298
  store float %300, ptr %301, align 4, !tbaa !95
  %302 = add nuw nsw i64 %298, 1
  %303 = icmp eq i64 %302, %132
  br i1 %303, label %304, label %297, !llvm.loop !124

304:                                              ; preds = %297, %291
  %305 = add nuw nsw i64 %134, 1
  %306 = icmp eq i64 %305, %130
  br i1 %306, label %307, label %133, !llvm.loop !184

307:                                              ; preds = %304, %112
  %308 = add nuw nsw i64 %113, 1
  %309 = icmp eq i64 %308, %110
  br i1 %309, label %310, label %112, !llvm.loop !185

310:                                              ; preds = %307, %54
  br i1 %13, label %311, label %313

311:                                              ; preds = %310
  %312 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %312(ptr noundef %56) #23
  br label %313

313:                                              ; preds = %311, %310
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_stitchFaces(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 %12, i32 %1
  %15 = add nsw i32 %14, -1
  %16 = shl nuw i32 1, %15
  %17 = shl nuw i32 1, %14
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %4
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct._EHash, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call ptr %20(i64 noundef %26, ptr noundef nonnull @.str.5) #23
  %28 = load ptr, ptr %21, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct._EHash, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %19, %51
  %33 = phi i64 [ %53, %51 ], [ 0, %19 ]
  %34 = phi ptr [ %54, %51 ], [ %28, %19 ]
  %35 = phi i32 [ %52, %51 ], [ 0, %19 ]
  %36 = load ptr, ptr %34, align 8, !tbaa !55
  %37 = getelementptr inbounds ptr, ptr %36, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %32
  %41 = sext i32 %35 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %44 = phi ptr [ %38, %40 ], [ %47, %42 ]
  %45 = add i64 %43, 1
  %46 = getelementptr inbounds ptr, ptr %27, i64 %43
  store ptr %44, ptr %46, align 8, !tbaa !43
  %47 = load ptr, ptr %44, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !176

49:                                               ; preds = %42
  %50 = trunc i64 %45 to i32
  br label %51

51:                                               ; preds = %49, %32
  %52 = phi i32 [ %35, %32 ], [ %50, %49 ]
  %53 = add nuw nsw i64 %33, 1
  %54 = load ptr, ptr %21, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct._EHash, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %32, label %59, !llvm.loop !177

59:                                               ; preds = %51, %19, %4
  %60 = phi i32 [ %3, %4 ], [ 0, %19 ], [ %52, %51 ]
  %61 = phi ptr [ %2, %4 ], [ %27, %19 ], [ %27, %51 ]
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %61, i32 noundef %60, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8)
  %62 = load i32, ptr %7, align 4, !tbaa !60
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load ptr, ptr %5, align 8, !tbaa !43
  %66 = mul nsw i32 %14, %10
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %69 = zext nneg i32 %62 to i64
  br label %85

70:                                               ; preds = %98, %59
  %71 = load i32, ptr %8, align 4, !tbaa !60
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %70
  %74 = load ptr, ptr %6, align 8, !tbaa !43
  %75 = icmp eq i32 %14, 31
  %76 = add i32 %14, -1
  %77 = add i32 %76, %17
  %78 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %79 = sext i32 %77 to i64
  %80 = sext i32 %10 to i64
  %81 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %82 = add nuw i32 %81, 1
  %83 = zext nneg i32 %71 to i64
  %84 = zext i32 %82 to i64
  br label %152

85:                                               ; preds = %64, %98
  %86 = phi i64 [ 0, %64 ], [ %99, %98 ]
  %87 = getelementptr inbounds ptr, ptr %65, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.CCGVert, ptr %88, i64 0, i32 3
  %90 = load i16, ptr %89, align 2, !tbaa !108
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.CCGVert, ptr %88, i64 1
  %94 = getelementptr inbounds i8, ptr %93, i64 %67
  %95 = load i32, ptr %68, align 4, !tbaa !104
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %94, i8 0, i64 %97, i1 false)
  br label %98

98:                                               ; preds = %92, %85
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, %69
  br i1 %100, label %70, label %85, !llvm.loop !186

101:                                              ; preds = %172, %70
  %102 = icmp sgt i32 %60, 0
  br i1 %102, label %103, label %175

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %105 = icmp eq i32 %15, 31
  %106 = add nsw i32 %12, -1
  %107 = shl nuw i32 1, %106
  %108 = add nuw nsw i32 %107, 1
  %109 = sub nsw i32 %12, %14
  %110 = add nuw i32 %107, 2
  %111 = mul i32 %108, %110
  %112 = add nsw i32 %12, -1
  %113 = shl nuw i32 1, %112
  %114 = add nuw nsw i32 %113, 1
  %115 = add nuw i32 %113, 2
  %116 = mul i32 %114, %115
  %117 = mul nsw i32 %114, %10
  %118 = sext i32 %117 to i64
  %119 = mul nsw i32 %14, %10
  %120 = sext i32 %119 to i64
  %121 = sub nsw i32 %12, %14
  %122 = shl i32 %115, %15
  %123 = shl i32 %122, %121
  %124 = add nsw i32 %123, %114
  %125 = mul nsw i32 %124, %10
  %126 = sext i32 %125 to i64
  %127 = icmp sgt i32 %16, 1
  %128 = sub nsw i32 %12, %14
  %129 = icmp eq i32 %15, 31
  %130 = add i32 %14, -1
  %131 = add i32 %130, %17
  %132 = add nsw i32 %131, %17
  %133 = sub nsw i32 %12, %14
  %134 = add i32 %14, -1
  %135 = add i32 %134, %17
  %136 = add nsw i32 %135, %17
  %137 = sub nsw i32 %12, %14
  %138 = shl i32 %114, %15
  %139 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %140 = sext i32 %111 to i64
  %141 = sext i32 %10 to i64
  %142 = sext i32 %16 to i64
  %143 = sext i32 %131 to i64
  %144 = sext i32 %10 to i64
  %145 = sext i32 %135 to i64
  %146 = sext i32 %10 to i64
  %147 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  %148 = sext i32 %116 to i64
  %149 = sext i32 %10 to i64
  %150 = zext nneg i32 %60 to i64
  %151 = zext nneg i32 %147 to i64
  br label %183

152:                                              ; preds = %73, %172
  %153 = phi i64 [ 0, %73 ], [ %173, %172 ]
  %154 = getelementptr inbounds ptr, ptr %74, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  %156 = getelementptr inbounds %struct.CCGEdge, ptr %155, i64 0, i32 2
  %157 = load i16, ptr %156, align 8, !tbaa !111
  %158 = icmp eq i16 %157, 0
  %159 = select i1 %158, i1 true, i1 %75
  br i1 %159, label %172, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.CCGEdge, ptr %155, i64 1
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ 0, %160 ], [ %170, %162 ]
  %164 = add nsw i64 %163, %79
  %165 = mul nsw i64 %164, %80
  %166 = getelementptr inbounds i8, ptr %161, i64 %165
  %167 = load i32, ptr %78, align 4, !tbaa !104
  %168 = sext i32 %167 to i64
  %169 = shl nsw i64 %168, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %166, i8 0, i64 %169, i1 false)
  %170 = add nuw nsw i64 %163, 1
  %171 = icmp eq i64 %170, %84
  br i1 %171, label %172, label %162, !llvm.loop !187

172:                                              ; preds = %162, %152
  %173 = add nuw nsw i64 %153, 1
  %174 = icmp eq i64 %173, %83
  br i1 %174, label %101, label %152, !llvm.loop !188

175:                                              ; preds = %430, %101
  %176 = icmp sgt i32 %62, 0
  br i1 %176, label %177, label %433

177:                                              ; preds = %175
  %178 = load ptr, ptr %5, align 8, !tbaa !43
  %179 = mul nsw i32 %14, %10
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %182 = zext nneg i32 %62 to i64
  br label %459

183:                                              ; preds = %103, %430
  %184 = phi i64 [ 0, %103 ], [ %431, %430 ]
  %185 = getelementptr inbounds ptr, ptr %61, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !43
  %187 = getelementptr inbounds %struct.CCGFace, ptr %186, i64 1
  %188 = getelementptr inbounds %struct.CCGFace, ptr %186, i64 0, i32 2
  %189 = load i16, ptr %188, align 8, !tbaa !119
  %190 = sext i16 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %187, i64 %190
  %192 = getelementptr inbounds ptr, ptr %191, i64 %190
  %193 = load i32, ptr %104, align 4, !tbaa !104
  %194 = sext i32 %193 to i64
  %195 = shl nsw i64 %194, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %192, i8 0, i64 %195, i1 false)
  %196 = load i16, ptr %188, align 8, !tbaa !119
  %197 = icmp sgt i16 %196, 0
  br i1 %197, label %221, label %198

198:                                              ; preds = %243, %183
  %199 = phi i16 [ %196, %183 ], [ %245, %243 ]
  %200 = sext i16 %199 to i32
  %201 = icmp sgt i16 %199, 0
  br i1 %201, label %202, label %430

202:                                              ; preds = %198
  %203 = add nsw i32 %200, -1
  %204 = zext nneg i16 %199 to i64
  %205 = getelementptr inbounds ptr, ptr %187, i64 %204
  %206 = getelementptr inbounds ptr, ptr %205, i64 %204
  %207 = load i32, ptr %104, align 4, !tbaa !104
  %208 = icmp sgt i32 %207, 0
  %209 = icmp sgt i32 %207, 0
  %210 = icmp sgt i32 %207, 0
  %211 = icmp sgt i32 %207, 0
  %212 = icmp sgt i32 %207, 0
  %213 = icmp sgt i32 %207, 0
  %214 = zext nneg i32 %200 to i64
  %215 = zext nneg i32 %207 to i64
  %216 = zext nneg i32 %207 to i64
  %217 = zext nneg i32 %207 to i64
  %218 = zext nneg i32 %207 to i64
  %219 = zext nneg i32 %207 to i64
  %220 = zext nneg i32 %207 to i64
  br label %248

221:                                              ; preds = %183, %243
  %222 = phi i64 [ %244, %243 ], [ 0, %183 ]
  br i1 %105, label %243, label %223

223:                                              ; preds = %221
  %224 = mul nsw i64 %222, %140
  %225 = add nsw i64 %224, 1
  %226 = mul nsw i64 %225, %141
  br label %227

227:                                              ; preds = %223, %227
  %228 = phi i32 [ 0, %223 ], [ %241, %227 ]
  %229 = load i16, ptr %188, align 8, !tbaa !119
  %230 = sext i16 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %187, i64 %230
  %232 = getelementptr inbounds ptr, ptr %231, i64 %230
  %233 = getelementptr inbounds i8, ptr %232, i64 %226
  %234 = mul nsw i32 %228, %10
  %235 = shl i32 %234, %109
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %233, i64 %236
  %238 = load i32, ptr %104, align 4, !tbaa !104
  %239 = sext i32 %238 to i64
  %240 = shl nsw i64 %239, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %237, i8 0, i64 %240, i1 false)
  %241 = add nuw i32 %228, 1
  %242 = icmp eq i32 %228, %139
  br i1 %242, label %243, label %227, !llvm.loop !189

243:                                              ; preds = %227, %221
  %244 = add nuw nsw i64 %222, 1
  %245 = load i16, ptr %188, align 8, !tbaa !119
  %246 = sext i16 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %221, label %198, !llvm.loop !190

248:                                              ; preds = %202, %427
  %249 = phi i64 [ 0, %202 ], [ %428, %427 ]
  %250 = trunc i64 %249 to i32
  %251 = add i32 %203, %250
  %252 = srem i32 %251, %200
  %253 = getelementptr inbounds ptr, ptr %205, i64 %249
  %254 = load ptr, ptr %253, align 8, !tbaa !43
  %255 = sext i32 %252 to i64
  %256 = getelementptr inbounds ptr, ptr %205, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !43
  %258 = mul nsw i64 %249, %148
  %259 = add nsw i64 %258, 1
  %260 = mul nsw i64 %259, %149
  %261 = getelementptr inbounds i8, ptr %206, i64 %260
  %262 = getelementptr inbounds i8, ptr %261, i64 %118
  br i1 %208, label %263, label %272

263:                                              ; preds = %248, %263
  %264 = phi i64 [ %270, %263 ], [ 0, %248 ]
  %265 = getelementptr inbounds float, ptr %262, i64 %264
  %266 = load float, ptr %265, align 4, !tbaa !95
  %267 = getelementptr inbounds float, ptr %206, i64 %264
  %268 = load float, ptr %267, align 4, !tbaa !95
  %269 = fadd float %266, %268
  store float %269, ptr %267, align 4, !tbaa !95
  %270 = add nuw nsw i64 %264, 1
  %271 = icmp eq i64 %270, %215
  br i1 %271, label %272, label %263, !llvm.loop !152

272:                                              ; preds = %263, %248
  %273 = getelementptr inbounds ptr, ptr %187, i64 %249
  %274 = load ptr, ptr %273, align 8, !tbaa !43
  %275 = getelementptr inbounds %struct.CCGVert, ptr %274, i64 0, i32 4
  %276 = load i16, ptr %275, align 4, !tbaa !116
  %277 = and i16 %276, 1
  %278 = icmp eq i16 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.CCGVert, ptr %274, i64 1
  %281 = getelementptr inbounds i8, ptr %280, i64 %120
  %282 = getelementptr inbounds i8, ptr %261, i64 %126
  br i1 %209, label %283, label %292

283:                                              ; preds = %279, %283
  %284 = phi i64 [ %290, %283 ], [ 0, %279 ]
  %285 = getelementptr inbounds float, ptr %282, i64 %284
  %286 = load float, ptr %285, align 4, !tbaa !95
  %287 = getelementptr inbounds float, ptr %281, i64 %284
  %288 = load float, ptr %287, align 4, !tbaa !95
  %289 = fadd float %286, %288
  store float %289, ptr %287, align 4, !tbaa !95
  %290 = add nuw nsw i64 %284, 1
  %291 = icmp eq i64 %290, %216
  br i1 %291, label %292, label %283, !llvm.loop !152

292:                                              ; preds = %283, %279, %272
  br i1 %127, label %293, label %299

293:                                              ; preds = %292
  %294 = mul nsw i32 %252, %116
  %295 = add nsw i32 %294, 1
  %296 = mul nsw i32 %295, %10
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, ptr %206, i64 %297
  br label %315

299:                                              ; preds = %352, %292
  br i1 %129, label %427, label %300

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.CCGEdge, ptr %254, i64 0, i32 3
  %302 = load i16, ptr %301, align 2, !tbaa !133
  %303 = and i16 %302, 1
  %304 = icmp eq i16 %303, 0
  %305 = getelementptr inbounds %struct.CCGEdge, ptr %254, i64 0, i32 5
  %306 = getelementptr inbounds %struct.CCGEdge, ptr %254, i64 1
  %307 = getelementptr inbounds %struct.CCGEdge, ptr %254, i64 1
  %308 = getelementptr inbounds %struct.CCGEdge, ptr %257, i64 0, i32 3
  %309 = load i16, ptr %308, align 2, !tbaa !133
  %310 = and i16 %309, 1
  %311 = icmp ne i16 %310, 0
  %312 = getelementptr inbounds %struct.CCGEdge, ptr %257, i64 0, i32 5
  %313 = getelementptr inbounds %struct.CCGEdge, ptr %257, i64 1
  %314 = getelementptr inbounds %struct.CCGEdge, ptr %257, i64 1
  br label %355

315:                                              ; preds = %293, %352
  %316 = phi i32 [ 1, %293 ], [ %353, %352 ]
  %317 = mul nsw i32 %316, %10
  %318 = shl i32 %317, %128
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %261, i64 %319
  %321 = shl i32 %316, %128
  %322 = add nsw i32 %321, %114
  %323 = mul nsw i32 %322, %10
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %261, i64 %324
  br i1 %210, label %326, label %335

326:                                              ; preds = %315, %326
  %327 = phi i64 [ %333, %326 ], [ 0, %315 ]
  %328 = getelementptr inbounds float, ptr %325, i64 %327
  %329 = load float, ptr %328, align 4, !tbaa !95
  %330 = getelementptr inbounds float, ptr %320, i64 %327
  %331 = load float, ptr %330, align 4, !tbaa !95
  %332 = fadd float %329, %331
  store float %332, ptr %330, align 4, !tbaa !95
  %333 = add nuw nsw i64 %327, 1
  %334 = icmp eq i64 %333, %217
  br i1 %334, label %335, label %326, !llvm.loop !152

335:                                              ; preds = %326, %315
  %336 = getelementptr inbounds i8, ptr %298, i64 %319
  %337 = mul nsw i32 %316, %114
  %338 = shl i32 %337, %128
  %339 = add nsw i32 %338, %114
  %340 = mul nsw i32 %339, %10
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, ptr %261, i64 %341
  br i1 %211, label %343, label %352

343:                                              ; preds = %335, %343
  %344 = phi i64 [ %350, %343 ], [ 0, %335 ]
  %345 = getelementptr inbounds float, ptr %342, i64 %344
  %346 = load float, ptr %345, align 4, !tbaa !95
  %347 = getelementptr inbounds float, ptr %336, i64 %344
  %348 = load float, ptr %347, align 4, !tbaa !95
  %349 = fadd float %346, %348
  store float %349, ptr %347, align 4, !tbaa !95
  %350 = add nuw nsw i64 %344, 1
  %351 = icmp eq i64 %350, %218
  br i1 %351, label %352, label %343, !llvm.loop !152

352:                                              ; preds = %343, %335
  %353 = add nuw nsw i32 %316, 1
  %354 = icmp eq i32 %353, %16
  br i1 %354, label %299, label %315, !llvm.loop !191

355:                                              ; preds = %300, %424
  %356 = phi i64 [ 0, %300 ], [ %425, %424 ]
  %357 = sub nsw i64 %142, %356
  br i1 %304, label %390, label %358

358:                                              ; preds = %355
  %359 = load ptr, ptr %305, align 8, !tbaa !113
  %360 = icmp eq ptr %359, %274
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = add nsw i64 %357, %143
  %363 = mul nsw i64 %362, %144
  %364 = getelementptr inbounds i8, ptr %307, i64 %363
  br label %371

365:                                              ; preds = %358
  %366 = trunc i64 %357 to i32
  %367 = sub i32 %132, %366
  %368 = mul nsw i32 %367, %10
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, ptr %306, i64 %369
  br label %371

371:                                              ; preds = %361, %365
  %372 = phi ptr [ %364, %361 ], [ %370, %365 ]
  %373 = trunc i64 %356 to i32
  %374 = mul i32 %114, %373
  %375 = add i32 %374, %16
  %376 = shl i32 %375, %133
  %377 = add nsw i32 %376, %114
  %378 = mul nsw i32 %377, %10
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %261, i64 %379
  br i1 %212, label %381, label %390

381:                                              ; preds = %371, %381
  %382 = phi i64 [ %388, %381 ], [ 0, %371 ]
  %383 = getelementptr inbounds float, ptr %380, i64 %382
  %384 = load float, ptr %383, align 4, !tbaa !95
  %385 = getelementptr inbounds float, ptr %372, i64 %382
  %386 = load float, ptr %385, align 4, !tbaa !95
  %387 = fadd float %384, %386
  store float %387, ptr %385, align 4, !tbaa !95
  %388 = add nuw nsw i64 %382, 1
  %389 = icmp eq i64 %388, %219
  br i1 %389, label %390, label %381, !llvm.loop !152

390:                                              ; preds = %381, %371, %355
  %391 = icmp ne i64 %356, 0
  %392 = and i1 %391, %311
  br i1 %392, label %393, label %424

393:                                              ; preds = %390
  %394 = load ptr, ptr %312, align 8, !tbaa !113
  %395 = icmp eq ptr %394, %274
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = add nsw i64 %357, %145
  %398 = mul nsw i64 %397, %146
  %399 = getelementptr inbounds i8, ptr %314, i64 %398
  br label %406

400:                                              ; preds = %393
  %401 = trunc i64 %357 to i32
  %402 = sub i32 %136, %401
  %403 = mul nsw i32 %402, %10
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %313, i64 %404
  br label %406

406:                                              ; preds = %396, %400
  %407 = phi ptr [ %399, %396 ], [ %405, %400 ]
  %408 = trunc i64 %356 to i32
  %409 = add i32 %138, %408
  %410 = shl i32 %409, %137
  %411 = add nsw i32 %410, %114
  %412 = mul nsw i32 %411, %10
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, ptr %261, i64 %413
  br i1 %213, label %415, label %424

415:                                              ; preds = %406, %415
  %416 = phi i64 [ %422, %415 ], [ 0, %406 ]
  %417 = getelementptr inbounds float, ptr %414, i64 %416
  %418 = load float, ptr %417, align 4, !tbaa !95
  %419 = getelementptr inbounds float, ptr %407, i64 %416
  %420 = load float, ptr %419, align 4, !tbaa !95
  %421 = fadd float %418, %420
  store float %421, ptr %419, align 4, !tbaa !95
  %422 = add nuw nsw i64 %416, 1
  %423 = icmp eq i64 %422, %220
  br i1 %423, label %424, label %415, !llvm.loop !152

424:                                              ; preds = %415, %406, %390
  %425 = add nuw nsw i64 %356, 1
  %426 = icmp eq i64 %425, %151
  br i1 %426, label %427, label %355, !llvm.loop !192

427:                                              ; preds = %424, %299
  %428 = add nuw nsw i64 %249, 1
  %429 = icmp eq i64 %428, %214
  br i1 %429, label %430, label %248, !llvm.loop !193

430:                                              ; preds = %427, %198
  %431 = add nuw nsw i64 %184, 1
  %432 = icmp eq i64 %431, %150
  br i1 %432, label %175, label %183, !llvm.loop !194

433:                                              ; preds = %482, %175
  %434 = icmp sgt i32 %71, 0
  br i1 %434, label %435, label %485

435:                                              ; preds = %433
  %436 = load ptr, ptr %6, align 8, !tbaa !43
  %437 = add i32 %14, -1
  %438 = add i32 %437, %17
  %439 = mul i32 %438, %10
  %440 = sext i32 %439 to i64
  %441 = mul i32 %14, %10
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %444 = load i32, ptr %443, align 4, !tbaa !104
  %445 = icmp sgt i32 %444, 0
  %446 = add i32 %438, %17
  %447 = mul i32 %446, %10
  %448 = sext i32 %447 to i64
  %449 = icmp sgt i32 %444, 0
  %450 = icmp slt i32 %17, 2
  %451 = icmp sgt i32 %444, 0
  %452 = sext i32 %438 to i64
  %453 = sext i32 %10 to i64
  %454 = zext nneg i32 %71 to i64
  %455 = zext nneg i32 %444 to i64
  %456 = zext nneg i32 %444 to i64
  %457 = zext i32 %17 to i64
  %458 = zext nneg i32 %444 to i64
  br label %558

459:                                              ; preds = %177, %482
  %460 = phi i64 [ 0, %177 ], [ %483, %482 ]
  %461 = getelementptr inbounds ptr, ptr %178, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !43
  %463 = getelementptr inbounds %struct.CCGVert, ptr %462, i64 0, i32 3
  %464 = load i16, ptr %463, align 2, !tbaa !108
  %465 = icmp eq i16 %464, 0
  br i1 %465, label %482, label %466

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.CCGVert, ptr %462, i64 1
  %468 = getelementptr inbounds i8, ptr %467, i64 %180
  %469 = sitofp i16 %464 to float
  %470 = fdiv float 1.000000e+00, %469
  %471 = load i32, ptr %181, align 4, !tbaa !104
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %482

473:                                              ; preds = %466
  %474 = zext nneg i32 %471 to i64
  br label %475

475:                                              ; preds = %473, %475
  %476 = phi i64 [ 0, %473 ], [ %480, %475 ]
  %477 = getelementptr inbounds float, ptr %468, i64 %476
  %478 = load float, ptr %477, align 4, !tbaa !95
  %479 = fmul float %470, %478
  store float %479, ptr %477, align 4, !tbaa !95
  %480 = add nuw nsw i64 %476, 1
  %481 = icmp eq i64 %480, %474
  br i1 %481, label %482, label %475, !llvm.loop !154

482:                                              ; preds = %475, %466, %459
  %483 = add nuw nsw i64 %460, 1
  %484 = icmp eq i64 %483, %182
  br i1 %484, label %433, label %459, !llvm.loop !195

485:                                              ; preds = %611, %433
  %486 = icmp sgt i32 %60, 0
  br i1 %486, label %487, label %614

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %489 = load i32, ptr %488, align 4, !tbaa !104
  %490 = icmp sgt i32 %489, 0
  %491 = icmp sgt i32 %16, 1
  %492 = add nsw i32 %12, -1
  %493 = shl nuw i32 1, %492
  %494 = add nuw nsw i32 %493, 1
  %495 = sub nsw i32 %12, %14
  %496 = add nuw i32 %493, 2
  %497 = mul i32 %494, %496
  %498 = icmp sgt i32 %489, 0
  %499 = add nsw i32 %12, -1
  %500 = shl nuw i32 1, %499
  %501 = add nuw i32 %500, 1
  %502 = add nuw i32 %500, 2
  %503 = mul i32 %501, %502
  %504 = mul i32 %501, %10
  %505 = sext i32 %504 to i64
  %506 = icmp sgt i32 %489, 0
  %507 = sub nsw i32 %12, %14
  %508 = shl i32 %501, %15
  %509 = add nsw i32 %508, %16
  %510 = shl i32 %509, %507
  %511 = add i32 %510, %501
  %512 = mul i32 %511, %10
  %513 = sext i32 %512 to i64
  %514 = mul i32 %14, %10
  %515 = sext i32 %514 to i64
  %516 = icmp sgt i32 %489, 0
  %517 = icmp sgt i32 %16, 1
  %518 = icmp sgt i32 %489, 0
  %519 = icmp sgt i32 %489, 0
  %520 = icmp eq i32 %15, 31
  %521 = add i32 %14, -1
  %522 = add i32 %521, %17
  %523 = add nsw i32 %522, %17
  %524 = icmp sgt i32 %489, 0
  %525 = add nsw i32 %522, %17
  %526 = icmp sgt i32 %489, 0
  %527 = icmp sgt i32 %489, 0
  %528 = shl i32 %10, %15
  %529 = shl i32 %528, %507
  %530 = sext i32 %529 to i64
  %531 = shl i32 %16, %507
  %532 = add i32 %531, %501
  %533 = mul i32 %532, %10
  %534 = sext i32 %533 to i64
  %535 = icmp sgt i32 %489, 0
  %536 = sext i32 %497 to i64
  %537 = sext i32 %10 to i64
  %538 = sext i32 %16 to i64
  %539 = sext i32 %522 to i64
  %540 = sext i32 %10 to i64
  %541 = sext i32 %522 to i64
  %542 = sext i32 %10 to i64
  %543 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  %544 = sext i32 %503 to i64
  %545 = sext i32 %10 to i64
  %546 = zext nneg i32 %60 to i64
  %547 = zext nneg i32 %489 to i64
  %548 = zext nneg i32 %489 to i64
  %549 = zext nneg i32 %489 to i64
  %550 = zext nneg i32 %489 to i64
  %551 = zext nneg i32 %489 to i64
  %552 = zext nneg i32 %489 to i64
  %553 = zext nneg i32 %543 to i64
  %554 = zext nneg i32 %489 to i64
  %555 = zext nneg i32 %489 to i64
  %556 = zext nneg i32 %489 to i64
  %557 = zext nneg i32 %489 to i64
  br label %619

558:                                              ; preds = %435, %611
  %559 = phi i64 [ 0, %435 ], [ %612, %611 ]
  %560 = getelementptr inbounds ptr, ptr %436, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !43
  %562 = getelementptr %struct.CCGEdge, ptr %561, i64 1
  %563 = getelementptr i8, ptr %562, i64 %440
  %564 = getelementptr inbounds %struct.CCGEdge, ptr %561, i64 0, i32 5
  %565 = load ptr, ptr %564, align 8, !tbaa !113
  %566 = getelementptr %struct.CCGVert, ptr %565, i64 1
  %567 = getelementptr i8, ptr %566, i64 %442
  br i1 %445, label %568, label %575

568:                                              ; preds = %558, %568
  %569 = phi i64 [ %573, %568 ], [ 0, %558 ]
  %570 = getelementptr inbounds float, ptr %567, i64 %569
  %571 = load float, ptr %570, align 4, !tbaa !95
  %572 = getelementptr inbounds float, ptr %563, i64 %569
  store float %571, ptr %572, align 4, !tbaa !95
  %573 = add nuw nsw i64 %569, 1
  %574 = icmp eq i64 %573, %455
  br i1 %574, label %575, label %568, !llvm.loop !124

575:                                              ; preds = %568, %558
  %576 = getelementptr i8, ptr %562, i64 %448
  %577 = getelementptr inbounds %struct.CCGEdge, ptr %561, i64 0, i32 6
  %578 = load ptr, ptr %577, align 8, !tbaa !115
  %579 = getelementptr %struct.CCGVert, ptr %578, i64 1
  %580 = getelementptr i8, ptr %579, i64 %442
  br i1 %449, label %581, label %588

581:                                              ; preds = %575, %581
  %582 = phi i64 [ %586, %581 ], [ 0, %575 ]
  %583 = getelementptr inbounds float, ptr %580, i64 %582
  %584 = load float, ptr %583, align 4, !tbaa !95
  %585 = getelementptr inbounds float, ptr %576, i64 %582
  store float %584, ptr %585, align 4, !tbaa !95
  %586 = add nuw nsw i64 %582, 1
  %587 = icmp eq i64 %586, %456
  br i1 %587, label %588, label %581, !llvm.loop !124

588:                                              ; preds = %581, %575
  %589 = getelementptr inbounds %struct.CCGEdge, ptr %561, i64 0, i32 2
  %590 = load i16, ptr %589, align 8, !tbaa !111
  %591 = icmp eq i16 %590, 0
  %592 = select i1 %591, i1 true, i1 %450
  br i1 %592, label %611, label %593

593:                                              ; preds = %588
  %594 = sitofp i16 %590 to float
  %595 = fdiv float 1.000000e+00, %594
  br label %596

596:                                              ; preds = %593, %608
  %597 = phi i64 [ 1, %593 ], [ %609, %608 ]
  %598 = add nsw i64 %597, %452
  %599 = mul nsw i64 %598, %453
  %600 = getelementptr inbounds i8, ptr %562, i64 %599
  br i1 %451, label %601, label %608

601:                                              ; preds = %596, %601
  %602 = phi i64 [ %606, %601 ], [ 0, %596 ]
  %603 = getelementptr inbounds float, ptr %600, i64 %602
  %604 = load float, ptr %603, align 4, !tbaa !95
  %605 = fmul float %595, %604
  store float %605, ptr %603, align 4, !tbaa !95
  %606 = add nuw nsw i64 %602, 1
  %607 = icmp eq i64 %606, %458
  br i1 %607, label %608, label %601, !llvm.loop !154

608:                                              ; preds = %601, %596
  %609 = add nuw nsw i64 %597, 1
  %610 = icmp eq i64 %609, %457
  br i1 %610, label %611, label %596, !llvm.loop !196

611:                                              ; preds = %608, %588
  %612 = add nuw nsw i64 %559, 1
  %613 = icmp eq i64 %612, %454
  br i1 %613, label %485, label %558, !llvm.loop !197

614:                                              ; preds = %845, %485
  %615 = icmp sgt i32 %62, 0
  br i1 %615, label %616, label %848

616:                                              ; preds = %614
  %617 = load ptr, ptr %5, align 8, !tbaa !43
  %618 = zext nneg i32 %62 to i64
  br label %853

619:                                              ; preds = %487, %845
  %620 = phi i64 [ 0, %487 ], [ %846, %845 ]
  %621 = getelementptr inbounds ptr, ptr %61, i64 %620
  %622 = load ptr, ptr %621, align 8, !tbaa !43
  %623 = getelementptr %struct.CCGFace, ptr %622, i64 1
  %624 = getelementptr inbounds %struct.CCGFace, ptr %622, i64 0, i32 2
  %625 = load i16, ptr %624, align 8, !tbaa !119
  %626 = sext i16 %625 to i64
  %627 = getelementptr ptr, ptr %623, i64 %626
  %628 = getelementptr ptr, ptr %627, i64 %626
  %629 = sitofp i16 %625 to float
  %630 = fdiv float 1.000000e+00, %629
  br i1 %490, label %636, label %631

631:                                              ; preds = %636, %619
  %632 = sext i16 %625 to i32
  %633 = icmp sgt i16 %625, 0
  br i1 %633, label %634, label %643

634:                                              ; preds = %631
  %635 = zext nneg i32 %632 to i64
  br label %648

636:                                              ; preds = %619, %636
  %637 = phi i64 [ %641, %636 ], [ 0, %619 ]
  %638 = getelementptr inbounds float, ptr %628, i64 %637
  %639 = load float, ptr %638, align 4, !tbaa !95
  %640 = fmul float %630, %639
  store float %640, ptr %638, align 4, !tbaa !95
  %641 = add nuw nsw i64 %637, 1
  %642 = icmp eq i64 %641, %547
  br i1 %642, label %631, label %636, !llvm.loop !154

643:                                              ; preds = %671, %631
  %644 = icmp sgt i16 %625, 0
  br i1 %644, label %645, label %845

645:                                              ; preds = %643
  %646 = add nsw i32 %632, -1
  %647 = zext nneg i32 %632 to i64
  br label %674

648:                                              ; preds = %634, %671
  %649 = phi i64 [ 0, %634 ], [ %672, %671 ]
  br i1 %491, label %650, label %671

650:                                              ; preds = %648
  %651 = mul nsw i64 %649, %536
  %652 = add nsw i64 %651, 1
  %653 = mul nsw i64 %652, %537
  %654 = getelementptr inbounds i8, ptr %628, i64 %653
  br label %655

655:                                              ; preds = %650, %668
  %656 = phi i32 [ 1, %650 ], [ %669, %668 ]
  %657 = mul nsw i32 %656, %10
  %658 = shl i32 %657, %495
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i8, ptr %654, i64 %659
  br i1 %498, label %661, label %668

661:                                              ; preds = %655, %661
  %662 = phi i64 [ %666, %661 ], [ 0, %655 ]
  %663 = getelementptr inbounds float, ptr %660, i64 %662
  %664 = load float, ptr %663, align 4, !tbaa !95
  %665 = fmul float %664, 5.000000e-01
  store float %665, ptr %663, align 4, !tbaa !95
  %666 = add nuw nsw i64 %662, 1
  %667 = icmp eq i64 %666, %548
  br i1 %667, label %668, label %661, !llvm.loop !154

668:                                              ; preds = %661, %655
  %669 = add nuw nsw i32 %656, 1
  %670 = icmp eq i32 %669, %16
  br i1 %670, label %671, label %655, !llvm.loop !198

671:                                              ; preds = %668, %648
  %672 = add nuw nsw i64 %649, 1
  %673 = icmp eq i64 %672, %635
  br i1 %673, label %643, label %648, !llvm.loop !199

674:                                              ; preds = %645, %842
  %675 = phi i64 [ 0, %645 ], [ %843, %842 ]
  %676 = trunc i64 %675 to i32
  %677 = add i32 %646, %676
  %678 = srem i32 %677, %632
  %679 = getelementptr inbounds ptr, ptr %627, i64 %675
  %680 = load ptr, ptr %679, align 8, !tbaa !43
  %681 = sext i32 %678 to i64
  %682 = getelementptr inbounds ptr, ptr %627, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !43
  %684 = mul nsw i64 %675, %544
  %685 = add nsw i64 %684, 1
  %686 = mul nsw i64 %685, %545
  %687 = getelementptr inbounds i8, ptr %628, i64 %686
  %688 = getelementptr inbounds i8, ptr %687, i64 %505
  br i1 %506, label %689, label %696

689:                                              ; preds = %674, %689
  %690 = phi i64 [ %694, %689 ], [ 0, %674 ]
  %691 = getelementptr inbounds float, ptr %628, i64 %690
  %692 = load float, ptr %691, align 4, !tbaa !95
  %693 = getelementptr inbounds float, ptr %688, i64 %690
  store float %692, ptr %693, align 4, !tbaa !95
  %694 = add nuw nsw i64 %690, 1
  %695 = icmp eq i64 %694, %549
  br i1 %695, label %696, label %689, !llvm.loop !124

696:                                              ; preds = %689, %674
  %697 = getelementptr inbounds i8, ptr %687, i64 %513
  %698 = getelementptr inbounds ptr, ptr %623, i64 %675
  %699 = load ptr, ptr %698, align 8, !tbaa !43
  %700 = getelementptr %struct.CCGVert, ptr %699, i64 1
  %701 = getelementptr i8, ptr %700, i64 %515
  br i1 %516, label %709, label %702

702:                                              ; preds = %709, %696
  br i1 %517, label %703, label %716

703:                                              ; preds = %702
  %704 = mul i32 %678, %503
  %705 = add i32 %704, 1
  %706 = mul i32 %705, %10
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i8, ptr %628, i64 %707
  br label %728

709:                                              ; preds = %696, %709
  %710 = phi i64 [ %714, %709 ], [ 0, %696 ]
  %711 = getelementptr inbounds float, ptr %701, i64 %710
  %712 = load float, ptr %711, align 4, !tbaa !95
  %713 = getelementptr inbounds float, ptr %697, i64 %710
  store float %712, ptr %713, align 4, !tbaa !95
  %714 = add nuw nsw i64 %710, 1
  %715 = icmp eq i64 %714, %550
  br i1 %715, label %702, label %709, !llvm.loop !124

716:                                              ; preds = %761, %702
  br i1 %520, label %764, label %717

717:                                              ; preds = %716
  %718 = getelementptr inbounds %struct.CCGEdge, ptr %680, i64 0, i32 5
  %719 = load ptr, ptr %718, align 8, !tbaa !113
  %720 = icmp eq ptr %719, %699
  %721 = getelementptr inbounds %struct.CCGEdge, ptr %680, i64 1
  %722 = getelementptr inbounds %struct.CCGEdge, ptr %680, i64 1
  %723 = getelementptr inbounds %struct.CCGEdge, ptr %683, i64 0, i32 5
  %724 = load ptr, ptr %723, align 8, !tbaa !113
  %725 = icmp eq ptr %724, %699
  %726 = getelementptr inbounds %struct.CCGEdge, ptr %683, i64 1
  %727 = getelementptr inbounds %struct.CCGEdge, ptr %683, i64 1
  br label %765

728:                                              ; preds = %703, %761
  %729 = phi i32 [ 1, %703 ], [ %762, %761 ]
  %730 = shl i32 %729, %507
  %731 = add i32 %730, %501
  %732 = mul i32 %731, %10
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i8, ptr %687, i64 %733
  %735 = mul nsw i32 %729, %10
  %736 = shl i32 %735, %507
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8, ptr %687, i64 %737
  br i1 %518, label %739, label %746

739:                                              ; preds = %728, %739
  %740 = phi i64 [ %744, %739 ], [ 0, %728 ]
  %741 = getelementptr inbounds float, ptr %738, i64 %740
  %742 = load float, ptr %741, align 4, !tbaa !95
  %743 = getelementptr inbounds float, ptr %734, i64 %740
  store float %742, ptr %743, align 4, !tbaa !95
  %744 = add nuw nsw i64 %740, 1
  %745 = icmp eq i64 %744, %551
  br i1 %745, label %746, label %739, !llvm.loop !124

746:                                              ; preds = %739, %728
  %747 = mul nsw i32 %729, %501
  %748 = shl i32 %747, %507
  %749 = add i32 %748, %501
  %750 = mul i32 %749, %10
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i8, ptr %687, i64 %751
  %753 = getelementptr inbounds i8, ptr %708, i64 %737
  br i1 %519, label %754, label %761

754:                                              ; preds = %746, %754
  %755 = phi i64 [ %759, %754 ], [ 0, %746 ]
  %756 = getelementptr inbounds float, ptr %753, i64 %755
  %757 = load float, ptr %756, align 4, !tbaa !95
  %758 = getelementptr inbounds float, ptr %752, i64 %755
  store float %757, ptr %758, align 4, !tbaa !95
  %759 = add nuw nsw i64 %755, 1
  %760 = icmp eq i64 %759, %552
  br i1 %760, label %761, label %754, !llvm.loop !124

761:                                              ; preds = %754, %746
  %762 = add nuw nsw i32 %729, 1
  %763 = icmp eq i32 %762, %16
  br i1 %763, label %716, label %728, !llvm.loop !200

764:                                              ; preds = %822, %716
  br i1 %527, label %825, label %832

765:                                              ; preds = %717, %822
  %766 = phi i64 [ 0, %717 ], [ %823, %822 ]
  %767 = sub nsw i64 %538, %766
  %768 = trunc i64 %766 to i32
  %769 = mul i32 %501, %768
  %770 = add i32 %769, %16
  %771 = shl i32 %770, %507
  %772 = add i32 %771, %501
  %773 = mul i32 %772, %10
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i8, ptr %687, i64 %774
  br i1 %720, label %776, label %780

776:                                              ; preds = %765
  %777 = add nsw i64 %767, %539
  %778 = mul nsw i64 %777, %540
  %779 = getelementptr inbounds i8, ptr %722, i64 %778
  br label %786

780:                                              ; preds = %765
  %781 = trunc i64 %767 to i32
  %782 = sub i32 %523, %781
  %783 = mul nsw i32 %782, %10
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i8, ptr %721, i64 %784
  br label %786

786:                                              ; preds = %776, %780
  %787 = phi ptr [ %779, %776 ], [ %785, %780 ]
  br i1 %524, label %788, label %795

788:                                              ; preds = %786, %788
  %789 = phi i64 [ %793, %788 ], [ 0, %786 ]
  %790 = getelementptr inbounds float, ptr %787, i64 %789
  %791 = load float, ptr %790, align 4, !tbaa !95
  %792 = getelementptr inbounds float, ptr %775, i64 %789
  store float %791, ptr %792, align 4, !tbaa !95
  %793 = add nuw nsw i64 %789, 1
  %794 = icmp eq i64 %793, %554
  br i1 %794, label %795, label %788, !llvm.loop !124

795:                                              ; preds = %788, %786
  %796 = trunc i64 %766 to i32
  %797 = add i32 %508, %796
  %798 = shl i32 %797, %507
  %799 = add i32 %798, %501
  %800 = mul i32 %799, %10
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds i8, ptr %687, i64 %801
  br i1 %725, label %803, label %807

803:                                              ; preds = %795
  %804 = add nsw i64 %767, %541
  %805 = mul nsw i64 %804, %542
  %806 = getelementptr inbounds i8, ptr %727, i64 %805
  br label %813

807:                                              ; preds = %795
  %808 = trunc i64 %767 to i32
  %809 = sub i32 %525, %808
  %810 = mul nsw i32 %809, %10
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i8, ptr %726, i64 %811
  br label %813

813:                                              ; preds = %803, %807
  %814 = phi ptr [ %806, %803 ], [ %812, %807 ]
  br i1 %526, label %815, label %822

815:                                              ; preds = %813, %815
  %816 = phi i64 [ %820, %815 ], [ 0, %813 ]
  %817 = getelementptr inbounds float, ptr %814, i64 %816
  %818 = load float, ptr %817, align 4, !tbaa !95
  %819 = getelementptr inbounds float, ptr %802, i64 %816
  store float %818, ptr %819, align 4, !tbaa !95
  %820 = add nuw nsw i64 %816, 1
  %821 = icmp eq i64 %820, %555
  br i1 %821, label %822, label %815, !llvm.loop !124

822:                                              ; preds = %815, %813
  %823 = add nuw nsw i64 %766, 1
  %824 = icmp eq i64 %823, %553
  br i1 %824, label %764, label %765, !llvm.loop !201

825:                                              ; preds = %764, %825
  %826 = phi i64 [ %830, %825 ], [ 0, %764 ]
  %827 = getelementptr inbounds float, ptr %628, i64 %826
  %828 = load float, ptr %827, align 4, !tbaa !95
  %829 = getelementptr inbounds float, ptr %687, i64 %826
  store float %828, ptr %829, align 4, !tbaa !95
  %830 = add nuw nsw i64 %826, 1
  %831 = icmp eq i64 %830, %556
  br i1 %831, label %832, label %825, !llvm.loop !124

832:                                              ; preds = %825, %764
  %833 = getelementptr inbounds i8, ptr %687, i64 %530
  %834 = getelementptr inbounds i8, ptr %687, i64 %534
  br i1 %535, label %835, label %842

835:                                              ; preds = %832, %835
  %836 = phi i64 [ %840, %835 ], [ 0, %832 ]
  %837 = getelementptr inbounds float, ptr %834, i64 %836
  %838 = load float, ptr %837, align 4, !tbaa !95
  %839 = getelementptr inbounds float, ptr %833, i64 %836
  store float %838, ptr %839, align 4, !tbaa !95
  %840 = add nuw nsw i64 %836, 1
  %841 = icmp eq i64 %840, %557
  br i1 %841, label %842, label %835, !llvm.loop !124

842:                                              ; preds = %835, %832
  %843 = add nuw nsw i64 %675, 1
  %844 = icmp eq i64 %843, %647
  br i1 %844, label %845, label %674, !llvm.loop !202

845:                                              ; preds = %842, %643
  %846 = add nuw nsw i64 %620, 1
  %847 = icmp eq i64 %846, %546
  br i1 %847, label %614, label %619, !llvm.loop !203

848:                                              ; preds = %853, %614
  %849 = icmp sgt i32 %71, 0
  br i1 %849, label %850, label %860

850:                                              ; preds = %848
  %851 = load ptr, ptr %6, align 8, !tbaa !43
  %852 = zext nneg i32 %71 to i64
  br label %864

853:                                              ; preds = %616, %853
  %854 = phi i64 [ 0, %616 ], [ %858, %853 ]
  %855 = getelementptr inbounds ptr, ptr %617, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !43
  %857 = getelementptr inbounds %struct.CCGVert, ptr %856, i64 0, i32 4
  store i16 0, ptr %857, align 4, !tbaa !116
  %858 = add nuw nsw i64 %854, 1
  %859 = icmp eq i64 %858, %618
  br i1 %859, label %848, label %853, !llvm.loop !204

860:                                              ; preds = %864, %848
  %861 = icmp sgt i32 %60, 0
  br i1 %861, label %862, label %878

862:                                              ; preds = %860
  %863 = zext nneg i32 %60 to i64
  br label %871

864:                                              ; preds = %850, %864
  %865 = phi i64 [ 0, %850 ], [ %869, %864 ]
  %866 = getelementptr inbounds ptr, ptr %851, i64 %865
  %867 = load ptr, ptr %866, align 8, !tbaa !43
  %868 = getelementptr inbounds %struct.CCGEdge, ptr %867, i64 0, i32 3
  store i16 0, ptr %868, align 2, !tbaa !133
  %869 = add nuw nsw i64 %865, 1
  %870 = icmp eq i64 %869, %852
  br i1 %870, label %860, label %864, !llvm.loop !205

871:                                              ; preds = %862, %871
  %872 = phi i64 [ 0, %862 ], [ %876, %871 ]
  %873 = getelementptr inbounds ptr, ptr %61, i64 %872
  %874 = load ptr, ptr %873, align 8, !tbaa !43
  %875 = getelementptr inbounds %struct.CCGFace, ptr %874, i64 0, i32 3
  store i16 0, ptr %875, align 2, !tbaa !143
  %876 = add nuw nsw i64 %872, 1
  %877 = icmp eq i64 %876, %863
  br i1 %877, label %878, label %871, !llvm.loop !206

878:                                              ; preds = %871, %860
  %879 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %880 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void %879(ptr noundef %880) #23
  %881 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %882 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void %881(ptr noundef %882) #23
  br i1 %18, label %883, label %885

883:                                              ; preds = %878
  %884 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %884(ptr noundef %61) #23
  br label %885

885:                                              ; preds = %883, %878
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 {
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct._EHash, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %8(i64 noundef %13, ptr noundef nonnull @.str.6) #23
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct._EHash, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %15(i64 noundef %21, ptr noundef nonnull @.str.6) #23
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = zext nneg i32 %2 to i64
  br label %31

26:                                               ; preds = %31, %7
  %27 = load ptr, ptr %0, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct._EHash, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !53
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %46, label %40

31:                                               ; preds = %24, %31
  %32 = phi i64 [ 0, %24 ], [ %38, %31 ]
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.CCGFace, ptr %34, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !143
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 2, !tbaa !143
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %26, label %31, !llvm.loop !207

40:                                               ; preds = %92, %26
  %41 = phi i32 [ 0, %26 ], [ %93, %92 ]
  %42 = load ptr, ptr %16, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct._EHash, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !53
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %100, label %154

46:                                               ; preds = %26, %92
  %47 = phi i64 [ %94, %92 ], [ 0, %26 ]
  %48 = phi ptr [ %95, %92 ], [ %27, %26 ]
  %49 = phi i32 [ %93, %92 ], [ 0, %26 ]
  %50 = load ptr, ptr %48, align 8, !tbaa !55
  %51 = getelementptr inbounds ptr, ptr %50, i64 %47
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %53, label %92, label %54

54:                                               ; preds = %46, %88
  %55 = phi ptr [ %90, %88 ], [ %52, %46 ]
  %56 = phi i32 [ %89, %88 ], [ %49, %46 ]
  %57 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !108
  %59 = sext i16 %58 to i32
  %60 = icmp sgt i16 %58, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = zext nneg i32 %59 to i64
  br label %65

65:                                               ; preds = %61, %73
  %66 = phi i64 [ 0, %61 ], [ %74, %73 ]
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  %69 = getelementptr inbounds %struct.CCGFace, ptr %68, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !143
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, %64
  br i1 %75, label %78, label %65, !llvm.loop !208

76:                                               ; preds = %65
  %77 = trunc i64 %66 to i32
  br label %78

78:                                               ; preds = %76, %73, %54
  %79 = phi i32 [ 0, %54 ], [ %77, %76 ], [ %59, %73 ]
  %80 = icmp eq i32 %79, %59
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = add nsw i32 %56, 1
  %83 = sext i32 %56 to i64
  %84 = getelementptr inbounds ptr, ptr %14, i64 %83
  store ptr %55, ptr %84, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.CCGVert, ptr %55, i64 0, i32 4
  %86 = load i16, ptr %85, align 4, !tbaa !116
  %87 = or i16 %86, 1
  store i16 %87, ptr %85, align 4, !tbaa !116
  br label %88

88:                                               ; preds = %78, %81
  %89 = phi i32 [ %82, %81 ], [ %56, %78 ]
  %90 = load ptr, ptr %55, align 8, !tbaa !43
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %54, !llvm.loop !209

92:                                               ; preds = %88, %46
  %93 = phi i32 [ %49, %46 ], [ %89, %88 ]
  %94 = add nuw nsw i64 %47, 1
  %95 = load ptr, ptr %0, align 8, !tbaa !56
  %96 = getelementptr inbounds %struct._EHash, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !53
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %46, label %40, !llvm.loop !210

100:                                              ; preds = %40, %146
  %101 = phi i64 [ %148, %146 ], [ 0, %40 ]
  %102 = phi ptr [ %149, %146 ], [ %42, %40 ]
  %103 = phi i32 [ %147, %146 ], [ 0, %40 ]
  %104 = load ptr, ptr %102, align 8, !tbaa !55
  %105 = getelementptr inbounds ptr, ptr %104, i64 %101
  %106 = load ptr, ptr %105, align 8, !tbaa !43
  %107 = icmp eq ptr %106, null
  br i1 %107, label %146, label %108

108:                                              ; preds = %100, %142
  %109 = phi ptr [ %144, %142 ], [ %106, %100 ]
  %110 = phi i32 [ %143, %142 ], [ %103, %100 ]
  %111 = getelementptr inbounds %struct.CCGEdge, ptr %109, i64 0, i32 2
  %112 = load i16, ptr %111, align 8, !tbaa !111
  %113 = sext i16 %112 to i32
  %114 = icmp sgt i16 %112, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.CCGEdge, ptr %109, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = zext nneg i32 %113 to i64
  br label %119

119:                                              ; preds = %115, %127
  %120 = phi i64 [ 0, %115 ], [ %128, %127 ]
  %121 = getelementptr inbounds ptr, ptr %117, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !43
  %123 = getelementptr inbounds %struct.CCGFace, ptr %122, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !143
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = add nuw nsw i64 %120, 1
  %129 = icmp eq i64 %128, %118
  br i1 %129, label %132, label %119, !llvm.loop !211

130:                                              ; preds = %119
  %131 = trunc i64 %120 to i32
  br label %132

132:                                              ; preds = %130, %127, %108
  %133 = phi i32 [ 0, %108 ], [ %131, %130 ], [ %113, %127 ]
  %134 = icmp eq i32 %133, %113
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.CCGEdge, ptr %109, i64 0, i32 3
  %137 = load i16, ptr %136, align 2, !tbaa !133
  %138 = or i16 %137, 1
  store i16 %138, ptr %136, align 2, !tbaa !133
  %139 = add nsw i32 %110, 1
  %140 = sext i32 %110 to i64
  %141 = getelementptr inbounds ptr, ptr %22, i64 %140
  store ptr %109, ptr %141, align 8, !tbaa !43
  br label %142

142:                                              ; preds = %132, %135
  %143 = phi i32 [ %139, %135 ], [ %110, %132 ]
  %144 = load ptr, ptr %109, align 8, !tbaa !43
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %108, !llvm.loop !212

146:                                              ; preds = %142, %100
  %147 = phi i32 [ %103, %100 ], [ %143, %142 ]
  %148 = add nuw nsw i64 %101, 1
  %149 = load ptr, ptr %16, align 8, !tbaa !57
  %150 = getelementptr inbounds %struct._EHash, ptr %149, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !53
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %100, label %154, !llvm.loop !213

154:                                              ; preds = %146, %40
  %155 = phi i32 [ 0, %40 ], [ %147, %146 ]
  store ptr %14, ptr %3, align 8, !tbaa !43
  store i32 %41, ptr %4, align 4, !tbaa !60
  store ptr %22, ptr %5, align 8, !tbaa !43
  store i32 %155, ptr %6, align 4, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_updateNormals(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct._EHash, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %10(i64 noundef %16, ptr noundef nonnull @.str.5) #23
  %18 = load ptr, ptr %11, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct._EHash, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %9, %41
  %23 = phi i64 [ %43, %41 ], [ 0, %9 ]
  %24 = phi ptr [ %44, %41 ], [ %18, %9 ]
  %25 = phi i32 [ %42, %41 ], [ 0, %9 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !55
  %27 = getelementptr inbounds ptr, ptr %26, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %22
  %31 = sext i32 %25 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %31, %30 ], [ %35, %32 ]
  %34 = phi ptr [ %28, %30 ], [ %37, %32 ]
  %35 = add i64 %33, 1
  %36 = getelementptr inbounds ptr, ptr %17, i64 %33
  store ptr %34, ptr %36, align 8, !tbaa !43
  %37 = load ptr, ptr %34, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %32, !llvm.loop !176

39:                                               ; preds = %32
  %40 = trunc i64 %35 to i32
  br label %41

41:                                               ; preds = %39, %22
  %42 = phi i32 [ %25, %22 ], [ %40, %39 ]
  %43 = add nuw nsw i64 %23, 1
  %44 = load ptr, ptr %11, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct._EHash, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %22, label %49, !llvm.loop !177

49:                                               ; preds = %41, %9, %3
  %50 = phi i32 [ %2, %3 ], [ 0, %9 ], [ %42, %41 ]
  %51 = phi ptr [ %1, %3 ], [ %17, %9 ], [ %17, %41 ]
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %51, i32 noundef %50, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %52 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !62
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %4, align 8, !tbaa !43
  %57 = load ptr, ptr %5, align 8, !tbaa !43
  %58 = load i32, ptr %6, align 4, !tbaa !60
  %59 = load i32, ptr %7, align 4, !tbaa !60
  tail call fastcc void @ccgSubSurf__calcVertNormals(ptr noundef %0, ptr noundef %56, ptr noundef %57, ptr noundef %51, i32 noundef %58, i32 noundef %59, i32 noundef %50)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, ptr %6, align 4, !tbaa !60
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr %4, align 8, !tbaa !43
  %65 = zext nneg i32 %61 to i64
  br label %72

66:                                               ; preds = %72, %60
  %67 = load i32, ptr %7, align 4, !tbaa !60
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8, !tbaa !43
  %71 = zext nneg i32 %67 to i64
  br label %83

72:                                               ; preds = %63, %72
  %73 = phi i64 [ 0, %63 ], [ %77, %72 ]
  %74 = getelementptr inbounds ptr, ptr %64, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.CCGVert, ptr %75, i64 0, i32 4
  store i16 0, ptr %76, align 4, !tbaa !116
  %77 = add nuw nsw i64 %73, 1
  %78 = icmp eq i64 %77, %65
  br i1 %78, label %66, label %72, !llvm.loop !214

79:                                               ; preds = %83, %66
  %80 = icmp sgt i32 %50, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %79
  %82 = zext nneg i32 %50 to i64
  br label %90

83:                                               ; preds = %69, %83
  %84 = phi i64 [ 0, %69 ], [ %88, %83 ]
  %85 = getelementptr inbounds ptr, ptr %70, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  %87 = getelementptr inbounds %struct.CCGEdge, ptr %86, i64 0, i32 3
  store i16 0, ptr %87, align 2, !tbaa !133
  %88 = add nuw nsw i64 %84, 1
  %89 = icmp eq i64 %88, %71
  br i1 %89, label %79, label %83, !llvm.loop !215

90:                                               ; preds = %81, %90
  %91 = phi i64 [ 0, %81 ], [ %95, %90 ]
  %92 = getelementptr inbounds ptr, ptr %51, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !43
  %94 = getelementptr inbounds %struct.CCGFace, ptr %93, i64 0, i32 3
  store i16 0, ptr %94, align 2, !tbaa !143
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, %82
  br i1 %96, label %97, label %90, !llvm.loop !216

97:                                               ; preds = %90, %79
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %99 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void %98(ptr noundef %99) #23
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %101 = load ptr, ptr %4, align 8, !tbaa !43
  tail call void %100(ptr noundef %101) #23
  br i1 %8, label %102, label %104

102:                                              ; preds = %97
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %103(ptr noundef %51) #23
  br label %104

104:                                              ; preds = %102, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i32 0
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @ccgSubSurf__calcVertNormals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 {
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = shl nuw i32 1, %9
  %11 = add nsw i32 %9, -1
  %12 = shl nuw i32 1, %11
  %13 = add nuw i32 %12, 1
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = icmp sgt i32 %6, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %7
  %20 = icmp eq i32 %11, 31
  %21 = add nuw i32 %12, 2
  %22 = mul i32 %13, %21
  %23 = icmp eq i32 %11, 31
  %24 = add nuw i32 %12, 2
  %25 = mul i32 %13, %24
  %26 = shl i32 %13, %11
  %27 = add i32 %26, %13
  %28 = icmp eq i32 %11, 31
  %29 = add nuw i32 %12, 2
  %30 = mul i32 %13, %29
  %31 = add i32 %13, %12
  %32 = add nuw i32 %12, 2
  %33 = mul i32 %13, %32
  %34 = shl i32 %32, %11
  %35 = add nsw i32 %34, %13
  %36 = mul nsw i32 %35, %17
  %37 = add nsw i32 %36, %15
  %38 = sext i32 %37 to i64
  %39 = icmp eq i32 %11, 31
  %40 = add nsw i32 %12, -1
  %41 = add nuw i32 %12, 2
  %42 = mul i32 %13, %41
  %43 = mul i32 %13, %17
  %44 = mul i32 %13, %17
  %45 = icmp sgt i32 %12, 1
  %46 = mul i32 %13, %17
  %47 = shl i32 %46, 1
  %48 = add nsw i32 %47, %15
  %49 = sext i32 %48 to i64
  %50 = mul nsw i32 %41, %17
  %51 = add nsw i32 %50, %15
  %52 = sext i32 %51 to i64
  %53 = mul nsw i32 %13, %17
  %54 = add nsw i32 %53, %15
  %55 = sext i32 %54 to i64
  %56 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  %57 = sext i32 %33 to i64
  %58 = sext i32 %17 to i64
  %59 = sext i32 %30 to i64
  %60 = sext i32 %17 to i64
  %61 = sext i32 %25 to i64
  %62 = sext i32 %17 to i64
  %63 = sext i32 %22 to i64
  %64 = sext i32 %17 to i64
  %65 = sext i32 %42 to i64
  %66 = sext i32 %17 to i64
  %67 = sext i32 %40 to i64
  %68 = sext i32 %13 to i64
  %69 = sext i32 %17 to i64
  %70 = sext i32 %15 to i64
  %71 = zext i32 %13 to i64
  %72 = sext i32 %13 to i64
  %73 = sext i32 %17 to i64
  %74 = sext i32 %15 to i64
  %75 = zext i32 %13 to i64
  %76 = sext i32 %40 to i64
  %77 = sext i32 %42 to i64
  %78 = sext i32 %17 to i64
  %79 = zext nneg i32 %6 to i64
  %80 = zext nneg i32 %56 to i64
  %81 = zext nneg i32 %56 to i64
  %82 = zext nneg i32 %56 to i64
  %83 = zext nneg i32 %56 to i64
  %84 = zext nneg i32 %56 to i64
  br label %107

85:                                               ; preds = %568, %7
  %86 = icmp sgt i32 %4, 0
  br i1 %86, label %87, label %571

87:                                               ; preds = %85
  %88 = mul nsw i32 %17, %9
  %89 = add nsw i32 %88, %15
  %90 = sext i32 %89 to i64
  %91 = add nuw i32 %12, 2
  %92 = mul i32 %13, %91
  %93 = shl i32 %91, %11
  %94 = add nsw i32 %93, %13
  %95 = mul nsw i32 %94, %17
  %96 = add nsw i32 %95, %15
  %97 = sext i32 %96 to i64
  %98 = sext i32 %88 to i64
  %99 = add nuw i32 %12, 2
  %100 = mul i32 %13, %99
  %101 = shl i32 %99, %11
  %102 = add nsw i32 %101, %13
  %103 = mul nsw i32 %102, %17
  %104 = add nsw i32 %103, %15
  %105 = sext i32 %104 to i64
  %106 = zext nneg i32 %4 to i64
  br label %587

107:                                              ; preds = %19, %568
  %108 = phi i64 [ 0, %19 ], [ %569, %568 ]
  %109 = getelementptr inbounds ptr, ptr %3, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  %111 = getelementptr inbounds %struct.CCGFace, ptr %110, i64 0, i32 2
  %112 = load i16, ptr %111, align 8, !tbaa !119
  %113 = sext i16 %112 to i32
  %114 = icmp sgt i16 %112, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.CCGFace, ptr %110, i64 1
  %117 = zext nneg i16 %112 to i64
  %118 = getelementptr inbounds ptr, ptr %116, i64 %117
  %119 = getelementptr inbounds ptr, ptr %118, i64 %117
  %120 = getelementptr inbounds %struct.CCGFace, ptr %110, i64 1
  %121 = zext nneg i16 %112 to i64
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121
  %123 = getelementptr inbounds ptr, ptr %122, i64 %121
  %124 = getelementptr inbounds ptr, ptr %122, i64 %121
  %125 = getelementptr inbounds ptr, ptr %122, i64 %121
  %126 = getelementptr i8, ptr %125, i64 %38
  %127 = zext nneg i32 %113 to i64
  br label %135

128:                                              ; preds = %231, %107
  %129 = getelementptr inbounds %struct.CCGFace, ptr %110, i64 0, i32 2
  %130 = load i16, ptr %129, align 8, !tbaa !119
  %131 = icmp sgt i16 %130, 0
  br i1 %131, label %132, label %568

132:                                              ; preds = %128
  %133 = zext nneg i16 %130 to i32
  %134 = getelementptr inbounds %struct.CCGFace, ptr %110, i64 1
  br label %234

135:                                              ; preds = %115, %231
  %136 = phi i64 [ 0, %115 ], [ %232, %231 ]
  br i1 %20, label %161, label %137

137:                                              ; preds = %135
  %138 = mul nsw i64 %136, %63
  %139 = add nsw i64 %138, 1
  %140 = mul nsw i64 %139, %64
  %141 = getelementptr inbounds i8, ptr %119, i64 %140
  br label %142

142:                                              ; preds = %137, %158
  %143 = phi i32 [ 0, %137 ], [ %159, %158 ]
  %144 = add nuw nsw i32 %143, 1
  %145 = mul i32 %144, %13
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %156, %146 ]
  %148 = trunc i64 %147 to i32
  %149 = add i32 %145, %148
  %150 = mul nsw i32 %149, %17
  %151 = add nsw i32 %150, %15
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %141, i64 %152
  %154 = getelementptr inbounds float, ptr %153, i64 2
  store float 0.000000e+00, ptr %154, align 4, !tbaa !95
  %155 = getelementptr inbounds float, ptr %153, i64 1
  store float 0.000000e+00, ptr %155, align 4, !tbaa !95
  store float 0.000000e+00, ptr %153, align 4, !tbaa !95
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, %80
  br i1 %157, label %158, label %146, !llvm.loop !217

158:                                              ; preds = %146
  %159 = add nuw nsw i32 %143, 1
  %160 = icmp eq i32 %159, %56
  br i1 %160, label %161, label %142, !llvm.loop !218

161:                                              ; preds = %158, %135
  %162 = trunc i64 %136 to i32
  %163 = add i32 %162, -1
  %164 = add i32 %163, %113
  %165 = srem i32 %164, %113
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %122, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !43
  %169 = getelementptr inbounds %struct.CCGEdge, ptr %168, i64 0, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !133
  %171 = and i16 %170, 1
  %172 = icmp eq i16 %171, 0
  %173 = select i1 %172, i1 true, i1 %23
  br i1 %173, label %191, label %174

174:                                              ; preds = %161
  %175 = mul nsw i64 %136, %61
  %176 = add nsw i64 %175, 1
  %177 = mul nsw i64 %176, %62
  %178 = getelementptr inbounds i8, ptr %123, i64 %177
  br label %179

179:                                              ; preds = %174, %179
  %180 = phi i64 [ 0, %174 ], [ %189, %179 ]
  %181 = trunc i64 %180 to i32
  %182 = add i32 %27, %181
  %183 = mul nsw i32 %182, %17
  %184 = add nsw i32 %183, %15
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, ptr %178, i64 %185
  %187 = getelementptr inbounds float, ptr %186, i64 2
  store float 0.000000e+00, ptr %187, align 4, !tbaa !95
  %188 = getelementptr inbounds float, ptr %186, i64 1
  store float 0.000000e+00, ptr %188, align 4, !tbaa !95
  store float 0.000000e+00, ptr %186, align 4, !tbaa !95
  %189 = add nuw nsw i64 %180, 1
  %190 = icmp eq i64 %189, %81
  br i1 %190, label %191, label %179, !llvm.loop !219

191:                                              ; preds = %179, %161
  %192 = getelementptr inbounds ptr, ptr %122, i64 %136
  %193 = load ptr, ptr %192, align 8, !tbaa !43
  %194 = getelementptr inbounds %struct.CCGEdge, ptr %193, i64 0, i32 3
  %195 = load i16, ptr %194, align 2, !tbaa !133
  %196 = and i16 %195, 1
  %197 = icmp eq i16 %196, 0
  %198 = select i1 %197, i1 true, i1 %28
  br i1 %198, label %217, label %199

199:                                              ; preds = %191
  %200 = mul nsw i64 %136, %59
  %201 = add nsw i64 %200, 1
  %202 = mul nsw i64 %201, %60
  %203 = getelementptr inbounds i8, ptr %124, i64 %202
  br label %204

204:                                              ; preds = %199, %204
  %205 = phi i64 [ 0, %199 ], [ %215, %204 ]
  %206 = trunc i64 %205 to i32
  %207 = mul i32 %13, %206
  %208 = add i32 %31, %207
  %209 = mul nsw i32 %208, %17
  %210 = add nsw i32 %209, %15
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %203, i64 %211
  %213 = getelementptr inbounds float, ptr %212, i64 2
  store float 0.000000e+00, ptr %213, align 4, !tbaa !95
  %214 = getelementptr inbounds float, ptr %212, i64 1
  store float 0.000000e+00, ptr %214, align 4, !tbaa !95
  store float 0.000000e+00, ptr %212, align 4, !tbaa !95
  %215 = add nuw nsw i64 %205, 1
  %216 = icmp eq i64 %215, %82
  br i1 %216, label %217, label %204, !llvm.loop !220

217:                                              ; preds = %204, %191
  %218 = getelementptr inbounds ptr, ptr %120, i64 %136
  %219 = load ptr, ptr %218, align 8, !tbaa !43
  %220 = getelementptr inbounds %struct.CCGVert, ptr %219, i64 0, i32 4
  %221 = load i16, ptr %220, align 4, !tbaa !116
  %222 = and i16 %221, 1
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %217
  %225 = mul nsw i64 %136, %57
  %226 = add nsw i64 %225, 1
  %227 = mul nsw i64 %226, %58
  %228 = getelementptr i8, ptr %126, i64 %227
  %229 = getelementptr inbounds float, ptr %228, i64 2
  store float 0.000000e+00, ptr %229, align 4, !tbaa !95
  %230 = getelementptr inbounds float, ptr %228, i64 1
  store float 0.000000e+00, ptr %230, align 4, !tbaa !95
  store float 0.000000e+00, ptr %228, align 4, !tbaa !95
  br label %231

231:                                              ; preds = %217, %224
  %232 = add nuw nsw i64 %136, 1
  %233 = icmp eq i64 %232, %127
  br i1 %233, label %128, label %135, !llvm.loop !221

234:                                              ; preds = %132, %562
  %235 = phi i64 [ 0, %132 ], [ %563, %562 ]
  %236 = phi i32 [ %133, %132 ], [ %565, %562 ]
  %237 = phi i16 [ %130, %132 ], [ %564, %562 ]
  %238 = sext i16 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %134, i64 %238
  %240 = add nsw i64 %235, -1
  %241 = trunc i64 %240 to i32
  %242 = add nsw i32 %236, %241
  %243 = srem i32 %242, %236
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %239, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !43
  %247 = getelementptr inbounds %struct.CCGEdge, ptr %246, i64 0, i32 3
  %248 = load i16, ptr %247, align 2, !tbaa !133
  %249 = and i16 %248, 1
  %250 = icmp ne i16 %249, 0
  %251 = getelementptr inbounds ptr, ptr %239, i64 %235
  %252 = load ptr, ptr %251, align 8, !tbaa !43
  %253 = getelementptr inbounds %struct.CCGEdge, ptr %252, i64 0, i32 3
  %254 = load i16, ptr %253, align 2, !tbaa !133
  %255 = and i16 %254, 1
  %256 = icmp ne i16 %255, 0
  br i1 %39, label %562, label %257

257:                                              ; preds = %234
  %258 = mul nsw i64 %235, %77
  %259 = add nsw i64 %258, 1
  %260 = mul nsw i64 %259, %78
  %261 = getelementptr inbounds ptr, ptr %134, i64 %235
  %262 = select i1 %256, i1 true, i1 %45
  %263 = select i1 %250, i1 true, i1 %45
  %264 = trunc i64 %240 to i32
  %265 = trunc i64 %235 to i32
  %266 = add i32 %265, 1
  %267 = trunc i64 %235 to i32
  %268 = add i32 %267, 1
  %269 = trunc i64 %240 to i32
  br label %270

270:                                              ; preds = %257, %560
  %271 = phi i64 [ 0, %257 ], [ %279, %560 ]
  %272 = icmp slt i64 %271, %76
  %273 = select i1 %250, i1 true, i1 %272
  %274 = mul i64 %271, %75
  %275 = trunc i64 %274 to i32
  %276 = add i32 %13, %275
  %277 = trunc i64 %274 to i32
  %278 = add i32 %13, %277
  %279 = add nuw nsw i64 %271, 1
  %280 = mul i64 %279, %71
  %281 = trunc i64 %280 to i32
  %282 = add i32 %13, %281
  %283 = trunc i64 %280 to i32
  %284 = add i32 %13, %283
  %285 = icmp eq i64 %271, 0
  %286 = add nsw i64 %271, %68
  %287 = mul nsw i64 %286, %69
  %288 = add nsw i64 %279, %72
  %289 = mul nsw i64 %288, %73
  br label %290

290:                                              ; preds = %270, %558
  %291 = phi i64 [ 0, %270 ], [ %304, %558 ]
  %292 = icmp slt i64 %291, %67
  %293 = select i1 %256, i1 true, i1 %292
  %294 = load i16, ptr %129, align 8, !tbaa !119
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds ptr, ptr %134, i64 %295
  %297 = getelementptr inbounds ptr, ptr %296, i64 %295
  %298 = getelementptr inbounds i8, ptr %297, i64 %260
  %299 = trunc i64 %291 to i32
  %300 = add i32 %276, %299
  %301 = mul nsw i32 %300, %17
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %298, i64 %302
  %304 = add nuw nsw i64 %291, 1
  %305 = trunc i64 %304 to i32
  %306 = add i32 %278, %305
  %307 = mul nsw i32 %306, %17
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, ptr %298, i64 %308
  %310 = trunc i64 %304 to i32
  %311 = add i32 %282, %310
  %312 = mul nsw i32 %311, %17
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %298, i64 %313
  %315 = trunc i64 %291 to i32
  %316 = add i32 %284, %315
  %317 = mul nsw i32 %316, %17
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %298, i64 %318
  %320 = load float, ptr %314, align 4, !tbaa !95
  %321 = load float, ptr %303, align 4, !tbaa !95
  %322 = fsub float %320, %321
  %323 = getelementptr inbounds float, ptr %314, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !95
  %325 = getelementptr inbounds float, ptr %303, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !95
  %327 = fsub float %324, %326
  %328 = getelementptr inbounds float, ptr %314, i64 2
  %329 = load float, ptr %328, align 4, !tbaa !95
  %330 = getelementptr inbounds float, ptr %303, i64 2
  %331 = load float, ptr %330, align 4, !tbaa !95
  %332 = fsub float %329, %331
  %333 = load float, ptr %319, align 4, !tbaa !95
  %334 = load float, ptr %309, align 4, !tbaa !95
  %335 = fsub float %333, %334
  %336 = getelementptr inbounds float, ptr %319, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !95
  %338 = getelementptr inbounds float, ptr %309, i64 1
  %339 = load float, ptr %338, align 4, !tbaa !95
  %340 = fsub float %337, %339
  %341 = getelementptr inbounds float, ptr %319, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !95
  %343 = getelementptr inbounds float, ptr %309, i64 2
  %344 = load float, ptr %343, align 4, !tbaa !95
  %345 = fsub float %342, %344
  %346 = fneg float %345
  %347 = fmul float %327, %346
  %348 = tail call float @llvm.fmuladd.f32(float %340, float %332, float %347)
  %349 = fneg float %335
  %350 = fmul float %332, %349
  %351 = tail call float @llvm.fmuladd.f32(float %345, float %322, float %350)
  %352 = fneg float %340
  %353 = fmul float %322, %352
  %354 = tail call float @llvm.fmuladd.f32(float %335, float %327, float %353)
  %355 = fmul float %351, %351
  %356 = tail call float @llvm.fmuladd.f32(float %348, float %348, float %355)
  %357 = tail call float @llvm.fmuladd.f32(float %354, float %354, float %356)
  %358 = tail call float @sqrtf(float noundef %357) #23
  %359 = fcmp ogt float %358, 0x38AA95A5C0000000
  %360 = fdiv float 1.000000e+00, %358
  %361 = fmul float %360, %348
  %362 = fmul float %351, %360
  %363 = fmul float %354, %360
  %364 = select i1 %359, float %363, float 0.000000e+00
  %365 = select i1 %359, float %362, float 0.000000e+00
  %366 = select i1 %359, float %361, float 0.000000e+00
  %367 = load i16, ptr %129, align 8, !tbaa !119
  %368 = sext i16 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %134, i64 %368
  %370 = getelementptr inbounds ptr, ptr %369, i64 %368
  %371 = getelementptr inbounds i8, ptr %370, i64 %260
  %372 = add nsw i32 %301, %15
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, ptr %371, i64 %373
  %375 = load float, ptr %374, align 4, !tbaa !95
  %376 = fadd float %375, %366
  store float %376, ptr %374, align 4, !tbaa !95
  %377 = getelementptr inbounds float, ptr %374, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !95
  %379 = fadd float %365, %378
  store float %379, ptr %377, align 4, !tbaa !95
  %380 = getelementptr inbounds float, ptr %374, i64 2
  %381 = load float, ptr %380, align 4, !tbaa !95
  %382 = fadd float %364, %381
  store float %382, ptr %380, align 4, !tbaa !95
  br i1 %293, label %383, label %395

383:                                              ; preds = %290
  %384 = add nsw i32 %307, %15
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, ptr %371, i64 %385
  %387 = load float, ptr %386, align 4, !tbaa !95
  %388 = fadd float %366, %387
  store float %388, ptr %386, align 4, !tbaa !95
  %389 = getelementptr inbounds float, ptr %386, i64 1
  %390 = load float, ptr %389, align 4, !tbaa !95
  %391 = fadd float %365, %390
  store float %391, ptr %389, align 4, !tbaa !95
  %392 = getelementptr inbounds float, ptr %386, i64 2
  %393 = load float, ptr %392, align 4, !tbaa !95
  %394 = fadd float %364, %393
  store float %394, ptr %392, align 4, !tbaa !95
  br label %395

395:                                              ; preds = %383, %290
  br i1 %273, label %396, label %408

396:                                              ; preds = %395
  %397 = add nsw i32 %317, %15
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %371, i64 %398
  %400 = load float, ptr %399, align 4, !tbaa !95
  %401 = fadd float %366, %400
  store float %401, ptr %399, align 4, !tbaa !95
  %402 = getelementptr inbounds float, ptr %399, i64 1
  %403 = load float, ptr %402, align 4, !tbaa !95
  %404 = fadd float %365, %403
  store float %404, ptr %402, align 4, !tbaa !95
  %405 = getelementptr inbounds float, ptr %399, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !95
  %407 = fadd float %364, %406
  store float %407, ptr %405, align 4, !tbaa !95
  br label %408

408:                                              ; preds = %396, %395
  %409 = select i1 %293, i1 %273, i1 false
  br i1 %409, label %410, label %430

410:                                              ; preds = %408
  %411 = or i1 %272, %292
  br i1 %411, label %418, label %412

412:                                              ; preds = %410
  %413 = load ptr, ptr %261, align 8, !tbaa !43
  %414 = getelementptr inbounds %struct.CCGVert, ptr %413, i64 0, i32 4
  %415 = load i16, ptr %414, align 4, !tbaa !116
  %416 = and i16 %415, 1
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %430, label %418

418:                                              ; preds = %410, %412
  %419 = add nsw i32 %312, %15
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %371, i64 %420
  %422 = load float, ptr %421, align 4, !tbaa !95
  %423 = fadd float %366, %422
  store float %423, ptr %421, align 4, !tbaa !95
  %424 = getelementptr inbounds float, ptr %421, i64 1
  %425 = load float, ptr %424, align 4, !tbaa !95
  %426 = fadd float %365, %425
  store float %426, ptr %424, align 4, !tbaa !95
  %427 = getelementptr inbounds float, ptr %421, i64 2
  %428 = load float, ptr %427, align 4, !tbaa !95
  %429 = fadd float %364, %428
  store float %429, ptr %427, align 4, !tbaa !95
  br label %430

430:                                              ; preds = %412, %418, %408
  %431 = icmp eq i64 %291, 0
  %432 = or i64 %291, %271
  %433 = and i64 %432, 4294967295
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %496

435:                                              ; preds = %430
  br i1 %262, label %436, label %453

436:                                              ; preds = %435
  %437 = sext i16 %367 to i32
  %438 = srem i32 %268, %437
  %439 = mul nsw i32 %438, %42
  %440 = add nsw i32 %439, 1
  %441 = mul nsw i32 %440, %17
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, ptr %370, i64 %442
  %444 = getelementptr inbounds i8, ptr %443, i64 %49
  %445 = load float, ptr %444, align 4, !tbaa !95
  %446 = fadd float %366, %445
  store float %446, ptr %444, align 4, !tbaa !95
  %447 = getelementptr inbounds float, ptr %444, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !95
  %449 = fadd float %365, %448
  store float %449, ptr %447, align 4, !tbaa !95
  %450 = getelementptr inbounds float, ptr %444, i64 2
  %451 = load float, ptr %450, align 4, !tbaa !95
  %452 = fadd float %364, %451
  store float %452, ptr %450, align 4, !tbaa !95
  br label %453

453:                                              ; preds = %435, %436
  br i1 %263, label %454, label %472

454:                                              ; preds = %453
  %455 = sext i16 %367 to i32
  %456 = add nsw i32 %269, %455
  %457 = srem i32 %456, %455
  %458 = mul nsw i32 %457, %42
  %459 = add nsw i32 %458, 1
  %460 = mul nsw i32 %459, %17
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, ptr %370, i64 %461
  %463 = getelementptr inbounds i8, ptr %462, i64 %52
  %464 = load float, ptr %463, align 4, !tbaa !95
  %465 = fadd float %366, %464
  store float %465, ptr %463, align 4, !tbaa !95
  %466 = getelementptr inbounds float, ptr %463, i64 1
  %467 = load float, ptr %466, align 4, !tbaa !95
  %468 = fadd float %365, %467
  store float %468, ptr %466, align 4, !tbaa !95
  %469 = getelementptr inbounds float, ptr %463, i64 2
  %470 = load float, ptr %469, align 4, !tbaa !95
  %471 = fadd float %364, %470
  store float %471, ptr %469, align 4, !tbaa !95
  br label %472

472:                                              ; preds = %453, %454
  %473 = icmp sgt i16 %367, 0
  br i1 %473, label %474, label %558

474:                                              ; preds = %472
  %475 = zext nneg i16 %367 to i64
  %476 = getelementptr i8, ptr %370, i64 %55
  br label %477

477:                                              ; preds = %474, %493
  %478 = phi i64 [ 0, %474 ], [ %494, %493 ]
  %479 = icmp eq i64 %478, %235
  br i1 %479, label %493, label %480

480:                                              ; preds = %477
  %481 = mul nsw i64 %478, %65
  %482 = add nsw i64 %481, 1
  %483 = mul nsw i64 %482, %66
  %484 = getelementptr i8, ptr %476, i64 %483
  %485 = load float, ptr %484, align 4, !tbaa !95
  %486 = fadd float %366, %485
  store float %486, ptr %484, align 4, !tbaa !95
  %487 = getelementptr inbounds float, ptr %484, i64 1
  %488 = load float, ptr %487, align 4, !tbaa !95
  %489 = fadd float %365, %488
  store float %489, ptr %487, align 4, !tbaa !95
  %490 = getelementptr inbounds float, ptr %484, i64 2
  %491 = load float, ptr %490, align 4, !tbaa !95
  %492 = fadd float %364, %491
  store float %492, ptr %490, align 4, !tbaa !95
  br label %493

493:                                              ; preds = %477, %480
  %494 = add nuw nsw i64 %478, 1
  %495 = icmp eq i64 %494, %475
  br i1 %495, label %558, label %477, !llvm.loop !222

496:                                              ; preds = %430
  br i1 %285, label %497, label %525

497:                                              ; preds = %496
  %498 = sext i16 %367 to i32
  %499 = srem i32 %266, %498
  %500 = mul nsw i32 %499, %42
  %501 = add nsw i32 %500, 1
  %502 = mul nsw i32 %501, %17
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i8, ptr %370, i64 %503
  %505 = trunc i64 %304 to i32
  %506 = mul i32 %43, %505
  %507 = add nsw i32 %506, %15
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8, ptr %504, i64 %508
  %510 = load float, ptr %509, align 4, !tbaa !95
  %511 = fadd float %366, %510
  store float %511, ptr %509, align 4, !tbaa !95
  %512 = getelementptr inbounds float, ptr %509, i64 1
  %513 = load float, ptr %512, align 4, !tbaa !95
  %514 = fadd float %365, %513
  store float %514, ptr %512, align 4, !tbaa !95
  %515 = getelementptr inbounds float, ptr %509, i64 2
  %516 = load float, ptr %515, align 4, !tbaa !95
  %517 = fadd float %364, %516
  store float %517, ptr %515, align 4, !tbaa !95
  br i1 %293, label %518, label %558

518:                                              ; preds = %497
  %519 = trunc i64 %291 to i32
  %520 = add i32 %519, 2
  %521 = mul i32 %44, %520
  %522 = add nsw i32 %521, %15
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, ptr %504, i64 %523
  br label %548

525:                                              ; preds = %496
  br i1 %431, label %526, label %558

526:                                              ; preds = %525
  %527 = sext i16 %367 to i32
  %528 = add nsw i32 %264, %527
  %529 = srem i32 %528, %527
  %530 = mul nsw i32 %529, %42
  %531 = add nsw i32 %530, 1
  %532 = mul nsw i32 %531, %17
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, ptr %370, i64 %533
  %535 = getelementptr i8, ptr %534, i64 %287
  %536 = getelementptr i8, ptr %535, i64 %70
  %537 = load float, ptr %536, align 4, !tbaa !95
  %538 = fadd float %366, %537
  store float %538, ptr %536, align 4, !tbaa !95
  %539 = getelementptr inbounds float, ptr %536, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !95
  %541 = fadd float %365, %540
  store float %541, ptr %539, align 4, !tbaa !95
  %542 = getelementptr inbounds float, ptr %536, i64 2
  %543 = load float, ptr %542, align 4, !tbaa !95
  %544 = fadd float %364, %543
  store float %544, ptr %542, align 4, !tbaa !95
  br i1 %273, label %545, label %558

545:                                              ; preds = %526
  %546 = getelementptr i8, ptr %534, i64 %289
  %547 = getelementptr i8, ptr %546, i64 %74
  br label %548

548:                                              ; preds = %545, %518
  %549 = phi ptr [ %547, %545 ], [ %524, %518 ]
  %550 = load float, ptr %549, align 4, !tbaa !95
  %551 = fadd float %366, %550
  store float %551, ptr %549, align 4, !tbaa !95
  %552 = getelementptr inbounds float, ptr %549, i64 1
  %553 = load float, ptr %552, align 4, !tbaa !95
  %554 = fadd float %365, %553
  store float %554, ptr %552, align 4, !tbaa !95
  %555 = getelementptr inbounds float, ptr %549, i64 2
  %556 = load float, ptr %555, align 4, !tbaa !95
  %557 = fadd float %364, %556
  store float %557, ptr %555, align 4, !tbaa !95
  br label %558

558:                                              ; preds = %493, %548, %472, %526, %497, %525
  %559 = icmp eq i64 %304, %84
  br i1 %559, label %560, label %290, !llvm.loop !223

560:                                              ; preds = %558
  %561 = icmp eq i64 %279, %83
  br i1 %561, label %562, label %270, !llvm.loop !224

562:                                              ; preds = %560, %234
  %563 = add nuw nsw i64 %235, 1
  %564 = load i16, ptr %129, align 8, !tbaa !119
  %565 = sext i16 %564 to i32
  %566 = sext i16 %564 to i64
  %567 = icmp slt i64 %563, %566
  br i1 %567, label %234, label %568, !llvm.loop !225

568:                                              ; preds = %562, %128
  %569 = add nuw nsw i64 %108, 1
  %570 = icmp eq i64 %569, %79
  br i1 %570, label %85, label %107, !llvm.loop !226

571:                                              ; preds = %724, %85
  %572 = icmp sgt i32 %5, 0
  br i1 %572, label %573, label %727

573:                                              ; preds = %571
  %574 = icmp sgt i32 %10, 1
  %575 = shl nsw i32 %13, 1
  %576 = icmp eq i32 %11, 31
  %577 = add nuw i32 %12, 2
  %578 = mul i32 %13, %577
  %579 = sext i32 %15 to i64
  %580 = icmp sgt i32 %10, 1
  %581 = shl nsw i32 %13, 1
  %582 = icmp eq i32 %11, 31
  %583 = add nuw i32 %12, 2
  %584 = mul i32 %13, %583
  %585 = sext i32 %15 to i64
  %586 = zext nneg i32 %5 to i64
  br label %768

587:                                              ; preds = %87, %724
  %588 = phi i64 [ 0, %87 ], [ %725, %724 ]
  %589 = getelementptr inbounds ptr, ptr %1, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !43
  %591 = getelementptr inbounds %struct.CCGVert, ptr %590, i64 1
  %592 = getelementptr inbounds i8, ptr %591, i64 %90
  %593 = getelementptr inbounds float, ptr %592, i64 2
  store float 0.000000e+00, ptr %593, align 4, !tbaa !95
  %594 = getelementptr inbounds float, ptr %592, i64 1
  store float 0.000000e+00, ptr %594, align 4, !tbaa !95
  store float 0.000000e+00, ptr %592, align 4, !tbaa !95
  %595 = getelementptr inbounds %struct.CCGVert, ptr %590, i64 0, i32 3
  %596 = load i16, ptr %595, align 2, !tbaa !108
  %597 = icmp sgt i16 %596, 0
  br i1 %597, label %598, label %650

598:                                              ; preds = %587
  %599 = zext nneg i16 %596 to i64
  %600 = getelementptr inbounds %struct.CCGVert, ptr %590, i64 0, i32 7
  %601 = load ptr, ptr %600, align 8, !tbaa !88
  %602 = load float, ptr %592, align 4, !tbaa !95
  %603 = load float, ptr %594, align 4, !tbaa !95
  %604 = load float, ptr %593, align 4, !tbaa !95
  br label %605

605:                                              ; preds = %598, %628
  %606 = phi i64 [ 0, %598 ], [ %648, %628 ]
  %607 = phi float [ %604, %598 ], [ %647, %628 ]
  %608 = phi float [ %603, %598 ], [ %644, %628 ]
  %609 = phi float [ %602, %598 ], [ %641, %628 ]
  %610 = getelementptr inbounds ptr, ptr %601, i64 %606
  %611 = load ptr, ptr %610, align 8, !tbaa !43
  %612 = getelementptr inbounds %struct.CCGFace, ptr %611, i64 1
  %613 = getelementptr inbounds %struct.CCGFace, ptr %611, i64 0, i32 2
  %614 = load i16, ptr %613, align 8, !tbaa !119
  %615 = icmp sgt i16 %614, 0
  br i1 %615, label %616, label %628

616:                                              ; preds = %605
  %617 = zext nneg i16 %614 to i64
  br label %618

618:                                              ; preds = %616, %623
  %619 = phi i64 [ 0, %616 ], [ %624, %623 ]
  %620 = getelementptr inbounds ptr, ptr %612, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !43
  %622 = icmp eq ptr %621, %590
  br i1 %622, label %626, label %623

623:                                              ; preds = %618
  %624 = add nuw nsw i64 %619, 1
  %625 = icmp eq i64 %624, %617
  br i1 %625, label %628, label %618, !llvm.loop !227

626:                                              ; preds = %618
  %627 = trunc i64 %619 to i32
  br label %628

628:                                              ; preds = %626, %623, %605
  %629 = phi i32 [ -1, %605 ], [ %627, %626 ], [ -1, %623 ]
  %630 = getelementptr inbounds %struct.CCGFace, ptr %611, i64 1
  %631 = sext i16 %614 to i64
  %632 = getelementptr inbounds ptr, ptr %630, i64 %631
  %633 = getelementptr inbounds ptr, ptr %632, i64 %631
  %634 = mul nsw i32 %92, %629
  %635 = add nsw i32 %634, 1
  %636 = mul nsw i32 %635, %17
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %633, i64 %637
  %639 = getelementptr inbounds i8, ptr %638, i64 %97
  %640 = load float, ptr %639, align 4, !tbaa !95
  %641 = fadd float %640, %609
  store float %641, ptr %592, align 4, !tbaa !95
  %642 = getelementptr inbounds float, ptr %639, i64 1
  %643 = load float, ptr %642, align 4, !tbaa !95
  %644 = fadd float %643, %608
  store float %644, ptr %594, align 4, !tbaa !95
  %645 = getelementptr inbounds float, ptr %639, i64 2
  %646 = load float, ptr %645, align 4, !tbaa !95
  %647 = fadd float %646, %607
  store float %647, ptr %593, align 4, !tbaa !95
  %648 = add nuw nsw i64 %606, 1
  %649 = icmp eq i64 %648, %599
  br i1 %649, label %650, label %605, !llvm.loop !228

650:                                              ; preds = %628, %587
  %651 = getelementptr inbounds %struct.CCGVert, ptr %590, i64 0, i32 3
  %652 = icmp eq i16 %596, 0
  br i1 %652, label %653, label %660

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %591, i64 %98
  %655 = load float, ptr %654, align 4, !tbaa !95
  store float %655, ptr %592, align 4, !tbaa !95
  %656 = getelementptr inbounds float, ptr %654, i64 1
  %657 = load float, ptr %656, align 4, !tbaa !95
  store float %657, ptr %594, align 4, !tbaa !95
  %658 = getelementptr inbounds float, ptr %654, i64 2
  %659 = load float, ptr %658, align 4, !tbaa !95
  store float %659, ptr %593, align 4, !tbaa !95
  br label %660

660:                                              ; preds = %653, %650
  %661 = load float, ptr %592, align 4, !tbaa !95
  %662 = load float, ptr %594, align 4, !tbaa !95
  %663 = fmul float %662, %662
  %664 = tail call float @llvm.fmuladd.f32(float %661, float %661, float %663)
  %665 = load float, ptr %593, align 4, !tbaa !95
  %666 = tail call float @llvm.fmuladd.f32(float %665, float %665, float %664)
  %667 = tail call float @sqrtf(float noundef %666) #23
  %668 = fcmp ogt float %667, 0x38AA95A5C0000000
  br i1 %668, label %669, label %677

669:                                              ; preds = %660
  %670 = fdiv float 1.000000e+00, %667
  %671 = load float, ptr %592, align 4, !tbaa !95
  %672 = fmul float %670, %671
  store float %672, ptr %592, align 4, !tbaa !95
  %673 = load float, ptr %594, align 4, !tbaa !95
  %674 = fmul float %670, %673
  store float %674, ptr %594, align 4, !tbaa !95
  %675 = load float, ptr %593, align 4, !tbaa !95
  %676 = fmul float %670, %675
  store float %676, ptr %593, align 4, !tbaa !95
  br label %678

677:                                              ; preds = %660
  store float 0.000000e+00, ptr %593, align 4, !tbaa !95
  store float 0.000000e+00, ptr %594, align 4, !tbaa !95
  store float 0.000000e+00, ptr %592, align 4, !tbaa !95
  br label %678

678:                                              ; preds = %669, %677
  %679 = load i16, ptr %651, align 2, !tbaa !108
  %680 = icmp sgt i16 %679, 0
  br i1 %680, label %681, label %724

681:                                              ; preds = %678
  %682 = zext nneg i16 %679 to i64
  %683 = getelementptr inbounds %struct.CCGVert, ptr %590, i64 0, i32 7
  %684 = load ptr, ptr %683, align 8, !tbaa !88
  br label %685

685:                                              ; preds = %681, %705
  %686 = phi i64 [ 0, %681 ], [ %722, %705 ]
  %687 = getelementptr inbounds ptr, ptr %684, i64 %686
  %688 = load ptr, ptr %687, align 8, !tbaa !43
  %689 = getelementptr inbounds %struct.CCGFace, ptr %688, i64 1
  %690 = getelementptr inbounds %struct.CCGFace, ptr %688, i64 0, i32 2
  %691 = load i16, ptr %690, align 8, !tbaa !119
  %692 = icmp sgt i16 %691, 0
  br i1 %692, label %693, label %705

693:                                              ; preds = %685
  %694 = zext nneg i16 %691 to i64
  br label %695

695:                                              ; preds = %693, %700
  %696 = phi i64 [ 0, %693 ], [ %701, %700 ]
  %697 = getelementptr inbounds ptr, ptr %689, i64 %696
  %698 = load ptr, ptr %697, align 8, !tbaa !43
  %699 = icmp eq ptr %698, %590
  br i1 %699, label %703, label %700

700:                                              ; preds = %695
  %701 = add nuw nsw i64 %696, 1
  %702 = icmp eq i64 %701, %694
  br i1 %702, label %705, label %695, !llvm.loop !227

703:                                              ; preds = %695
  %704 = trunc i64 %696 to i32
  br label %705

705:                                              ; preds = %703, %700, %685
  %706 = phi i32 [ -1, %685 ], [ %704, %703 ], [ -1, %700 ]
  %707 = getelementptr inbounds %struct.CCGFace, ptr %688, i64 1
  %708 = sext i16 %691 to i64
  %709 = getelementptr inbounds ptr, ptr %707, i64 %708
  %710 = getelementptr inbounds ptr, ptr %709, i64 %708
  %711 = mul nsw i32 %100, %706
  %712 = add nsw i32 %711, 1
  %713 = mul nsw i32 %712, %17
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, ptr %710, i64 %714
  %716 = getelementptr inbounds i8, ptr %715, i64 %105
  %717 = load float, ptr %592, align 4, !tbaa !95
  store float %717, ptr %716, align 4, !tbaa !95
  %718 = load float, ptr %594, align 4, !tbaa !95
  %719 = getelementptr inbounds float, ptr %716, i64 1
  store float %718, ptr %719, align 4, !tbaa !95
  %720 = load float, ptr %593, align 4, !tbaa !95
  %721 = getelementptr inbounds float, ptr %716, i64 2
  store float %720, ptr %721, align 4, !tbaa !95
  %722 = add nuw nsw i64 %686, 1
  %723 = icmp eq i64 %722, %682
  br i1 %723, label %724, label %685, !llvm.loop !229

724:                                              ; preds = %705, %678
  %725 = add nuw nsw i64 %588, 1
  %726 = icmp eq i64 %725, %106
  br i1 %726, label %571, label %587, !llvm.loop !230

727:                                              ; preds = %1069, %571
  %728 = icmp sgt i32 %6, 0
  br i1 %728, label %729, label %1072

729:                                              ; preds = %727
  %730 = add nuw i32 %12, 2
  %731 = mul i32 %13, %730
  %732 = shl i32 %13, %11
  %733 = add nsw i32 %732, %13
  %734 = mul nsw i32 %733, %17
  %735 = add nsw i32 %734, %15
  %736 = sext i32 %735 to i64
  %737 = add nsw i32 %13, %12
  %738 = mul nsw i32 %737, %17
  %739 = add nsw i32 %738, %15
  %740 = sext i32 %739 to i64
  %741 = icmp eq i32 %11, 31
  %742 = add nuw i32 %12, 2
  %743 = mul i32 %13, %742
  %744 = sext i32 %15 to i64
  %745 = add nuw i32 %12, 2
  %746 = mul i32 %13, %745
  %747 = mul i32 %13, %17
  %748 = add i32 %747, %15
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %751 = icmp sgt i32 %12, 1
  %752 = sext i32 %731 to i64
  %753 = sext i32 %17 to i64
  %754 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %755 = add nuw i32 %754, 1
  %756 = sext i32 %13 to i64
  %757 = sext i32 %17 to i64
  %758 = sext i32 %15 to i64
  %759 = sext i32 %17 to i64
  %760 = sext i32 %15 to i64
  %761 = sext i32 %746 to i64
  %762 = sext i32 %17 to i64
  %763 = sext i32 %743 to i64
  %764 = sext i32 %17 to i64
  %765 = zext nneg i32 %6 to i64
  %766 = zext i32 %755 to i64
  %767 = zext nneg i32 %12 to i64
  br label %1100

768:                                              ; preds = %573, %1069
  %769 = phi i64 [ 0, %573 ], [ %1070, %1069 ]
  %770 = getelementptr inbounds ptr, ptr %2, i64 %769
  %771 = load ptr, ptr %770, align 8, !tbaa !43
  %772 = getelementptr inbounds %struct.CCGEdge, ptr %771, i64 0, i32 2
  %773 = load i16, ptr %772, align 8, !tbaa !111
  %774 = icmp eq i16 %773, 0
  br i1 %774, label %1069, label %775

775:                                              ; preds = %768
  %776 = getelementptr inbounds %struct.CCGEdge, ptr %771, i64 0, i32 7
  %777 = load ptr, ptr %776, align 8, !tbaa !82
  %778 = sext i16 %773 to i64
  %779 = getelementptr ptr, ptr %777, i64 %778
  %780 = getelementptr ptr, ptr %779, i64 -1
  %781 = load ptr, ptr %780, align 8, !tbaa !43
  %782 = sext i16 %773 to i32
  %783 = add nsw i32 %782, -1
  %784 = icmp sgt i16 %773, 1
  br i1 %784, label %785, label %801

785:                                              ; preds = %775
  %786 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 1
  %787 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 0, i32 2
  %788 = load i16, ptr %787, align 8, !tbaa !119
  %789 = sext i16 %788 to i32
  %790 = icmp sgt i16 %788, 0
  %791 = sext i16 %788 to i64
  %792 = getelementptr inbounds ptr, ptr %786, i64 %791
  %793 = getelementptr inbounds %struct.CCGEdge, ptr %771, i64 0, i32 5
  %794 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 1
  %795 = add nsw i32 %789, -1
  %796 = sext i16 %788 to i64
  %797 = getelementptr inbounds ptr, ptr %794, i64 %796
  %798 = getelementptr inbounds ptr, ptr %797, i64 %796
  %799 = zext i32 %783 to i64
  %800 = zext nneg i32 %789 to i64
  br label %819

801:                                              ; preds = %944, %775
  %802 = icmp sgt i16 %773, 1
  br i1 %802, label %803, label %1069

803:                                              ; preds = %801
  %804 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 1
  %805 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 0, i32 2
  %806 = load i16, ptr %805, align 8, !tbaa !119
  %807 = sext i16 %806 to i32
  %808 = icmp sgt i16 %806, 0
  %809 = sext i16 %806 to i64
  %810 = getelementptr inbounds ptr, ptr %804, i64 %809
  %811 = getelementptr inbounds %struct.CCGEdge, ptr %771, i64 0, i32 5
  %812 = getelementptr inbounds %struct.CCGFace, ptr %781, i64 1
  %813 = add nsw i32 %807, -1
  %814 = sext i16 %806 to i64
  %815 = getelementptr inbounds ptr, ptr %812, i64 %814
  %816 = getelementptr inbounds ptr, ptr %815, i64 %814
  %817 = zext i32 %783 to i64
  %818 = zext nneg i32 %807 to i64
  br label %947

819:                                              ; preds = %785, %944
  %820 = phi i64 [ 0, %785 ], [ %945, %944 ]
  %821 = getelementptr inbounds ptr, ptr %777, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !43
  %823 = getelementptr inbounds %struct.CCGFace, ptr %822, i64 0, i32 2
  %824 = load i16, ptr %823, align 8, !tbaa !119
  %825 = sext i16 %824 to i32
  %826 = icmp sgt i16 %824, 0
  br i1 %826, label %827, label %842

827:                                              ; preds = %819
  %828 = getelementptr inbounds %struct.CCGFace, ptr %822, i64 1
  %829 = zext nneg i16 %824 to i64
  %830 = getelementptr inbounds ptr, ptr %828, i64 %829
  %831 = zext nneg i32 %825 to i64
  br label %832

832:                                              ; preds = %827, %837
  %833 = phi i64 [ 0, %827 ], [ %838, %837 ]
  %834 = getelementptr inbounds ptr, ptr %830, i64 %833
  %835 = load ptr, ptr %834, align 8, !tbaa !43
  %836 = icmp eq ptr %835, %771
  br i1 %836, label %840, label %837

837:                                              ; preds = %832
  %838 = add nuw nsw i64 %833, 1
  %839 = icmp eq i64 %838, %831
  br i1 %839, label %842, label %832, !llvm.loop !231

840:                                              ; preds = %832
  %841 = trunc i64 %833 to i32
  br label %842

842:                                              ; preds = %840, %837, %819
  %843 = phi i32 [ -1, %819 ], [ %841, %840 ], [ -1, %837 ]
  br i1 %790, label %844, label %854

844:                                              ; preds = %842, %849
  %845 = phi i64 [ %850, %849 ], [ 0, %842 ]
  %846 = getelementptr inbounds ptr, ptr %792, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !43
  %848 = icmp eq ptr %847, %771
  br i1 %848, label %852, label %849

849:                                              ; preds = %844
  %850 = add nuw nsw i64 %845, 1
  %851 = icmp eq i64 %850, %800
  br i1 %851, label %854, label %844, !llvm.loop !231

852:                                              ; preds = %844
  %853 = trunc i64 %845 to i32
  br label %854

854:                                              ; preds = %852, %849, %842
  %855 = phi i32 [ -1, %842 ], [ %853, %852 ], [ -1, %849 ]
  br i1 %574, label %856, label %944

856:                                              ; preds = %854
  %857 = load ptr, ptr %793, align 8, !tbaa !113
  %858 = sext i32 %855 to i64
  %859 = getelementptr inbounds ptr, ptr %794, i64 %858
  %860 = load ptr, ptr %859, align 8, !tbaa !43
  %861 = icmp eq ptr %857, %860
  %862 = add nsw i32 %855, 1
  %863 = add i32 %795, %855
  %864 = getelementptr inbounds %struct.CCGFace, ptr %822, i64 1
  %865 = sext i32 %843 to i64
  %866 = getelementptr inbounds ptr, ptr %864, i64 %865
  %867 = load ptr, ptr %866, align 8, !tbaa !43
  %868 = icmp eq ptr %857, %867
  %869 = add nsw i32 %843, 1
  %870 = add nsw i32 %825, -1
  %871 = add i32 %870, %843
  %872 = sext i16 %824 to i64
  %873 = getelementptr inbounds ptr, ptr %864, i64 %872
  %874 = getelementptr inbounds ptr, ptr %873, i64 %872
  br label %875

875:                                              ; preds = %856, %913
  %876 = phi i32 [ 1, %856 ], [ %942, %913 ]
  %877 = sub i32 %575, %876
  %878 = add i32 %877, -2
  %879 = select i1 %861, i32 %876, i32 %878
  %880 = sub nsw i32 %12, %879
  br i1 %576, label %881, label %883

881:                                              ; preds = %875
  %882 = srem i32 %863, %789
  br label %888

883:                                              ; preds = %875
  %884 = icmp slt i32 %880, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %883
  %886 = srem i32 %862, %789
  %887 = sub nsw i32 0, %880
  br label %888

888:                                              ; preds = %881, %883, %885
  %889 = phi i32 [ %882, %881 ], [ %886, %885 ], [ %855, %883 ]
  %890 = phi i32 [ %880, %881 ], [ %887, %885 ], [ %12, %883 ]
  %891 = phi i32 [ 0, %881 ], [ %12, %885 ], [ %880, %883 ]
  %892 = mul nsw i32 %889, %578
  %893 = add nsw i32 %892, 1
  %894 = mul nsw i32 %893, %17
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i8, ptr %798, i64 %895
  %897 = mul nsw i32 %891, %13
  %898 = add i32 %890, %13
  %899 = add i32 %898, %897
  %900 = mul nsw i32 %899, %17
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i8, ptr %896, i64 %901
  %903 = getelementptr inbounds i8, ptr %902, i64 %579
  %904 = select i1 %868, i32 %876, i32 %878
  %905 = sub nsw i32 %12, %904
  br i1 %576, label %906, label %908

906:                                              ; preds = %888
  %907 = srem i32 %871, %825
  br label %913

908:                                              ; preds = %888
  %909 = icmp slt i32 %905, 0
  br i1 %909, label %910, label %913

910:                                              ; preds = %908
  %911 = srem i32 %869, %825
  %912 = sub nsw i32 0, %905
  br label %913

913:                                              ; preds = %906, %908, %910
  %914 = phi i32 [ %907, %906 ], [ %911, %910 ], [ %843, %908 ]
  %915 = phi i32 [ %905, %906 ], [ %912, %910 ], [ %12, %908 ]
  %916 = phi i32 [ 0, %906 ], [ %12, %910 ], [ %905, %908 ]
  %917 = mul nsw i32 %914, %578
  %918 = add nsw i32 %917, 1
  %919 = mul nsw i32 %918, %17
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i8, ptr %874, i64 %920
  %922 = mul nsw i32 %916, %13
  %923 = add i32 %915, %13
  %924 = add i32 %923, %922
  %925 = mul nsw i32 %924, %17
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i8, ptr %921, i64 %926
  %928 = getelementptr inbounds i8, ptr %927, i64 %579
  %929 = load float, ptr %928, align 4, !tbaa !95
  %930 = load float, ptr %903, align 4, !tbaa !95
  %931 = fadd float %929, %930
  store float %931, ptr %903, align 4, !tbaa !95
  %932 = getelementptr inbounds float, ptr %928, i64 1
  %933 = load float, ptr %932, align 4, !tbaa !95
  %934 = getelementptr inbounds float, ptr %903, i64 1
  %935 = load float, ptr %934, align 4, !tbaa !95
  %936 = fadd float %933, %935
  store float %936, ptr %934, align 4, !tbaa !95
  %937 = getelementptr inbounds float, ptr %928, i64 2
  %938 = load float, ptr %937, align 4, !tbaa !95
  %939 = getelementptr inbounds float, ptr %903, i64 2
  %940 = load float, ptr %939, align 4, !tbaa !95
  %941 = fadd float %938, %940
  store float %941, ptr %939, align 4, !tbaa !95
  %942 = add nuw nsw i32 %876, 1
  %943 = icmp eq i32 %942, %10
  br i1 %943, label %944, label %875, !llvm.loop !232

944:                                              ; preds = %913, %854
  %945 = add nuw nsw i64 %820, 1
  %946 = icmp eq i64 %945, %799
  br i1 %946, label %801, label %819, !llvm.loop !233

947:                                              ; preds = %803, %1066
  %948 = phi i64 [ 0, %803 ], [ %1067, %1066 ]
  %949 = getelementptr inbounds ptr, ptr %777, i64 %948
  %950 = load ptr, ptr %949, align 8, !tbaa !43
  %951 = getelementptr inbounds %struct.CCGFace, ptr %950, i64 0, i32 2
  %952 = load i16, ptr %951, align 8, !tbaa !119
  %953 = sext i16 %952 to i32
  %954 = icmp sgt i16 %952, 0
  br i1 %954, label %955, label %970

955:                                              ; preds = %947
  %956 = getelementptr inbounds %struct.CCGFace, ptr %950, i64 1
  %957 = zext nneg i16 %952 to i64
  %958 = getelementptr inbounds ptr, ptr %956, i64 %957
  %959 = zext nneg i32 %953 to i64
  br label %960

960:                                              ; preds = %955, %965
  %961 = phi i64 [ 0, %955 ], [ %966, %965 ]
  %962 = getelementptr inbounds ptr, ptr %958, i64 %961
  %963 = load ptr, ptr %962, align 8, !tbaa !43
  %964 = icmp eq ptr %963, %771
  br i1 %964, label %968, label %965

965:                                              ; preds = %960
  %966 = add nuw nsw i64 %961, 1
  %967 = icmp eq i64 %966, %959
  br i1 %967, label %970, label %960, !llvm.loop !231

968:                                              ; preds = %960
  %969 = trunc i64 %961 to i32
  br label %970

970:                                              ; preds = %968, %965, %947
  %971 = phi i32 [ -1, %947 ], [ %969, %968 ], [ -1, %965 ]
  br i1 %808, label %972, label %982

972:                                              ; preds = %970, %977
  %973 = phi i64 [ %978, %977 ], [ 0, %970 ]
  %974 = getelementptr inbounds ptr, ptr %810, i64 %973
  %975 = load ptr, ptr %974, align 8, !tbaa !43
  %976 = icmp eq ptr %975, %771
  br i1 %976, label %980, label %977

977:                                              ; preds = %972
  %978 = add nuw nsw i64 %973, 1
  %979 = icmp eq i64 %978, %818
  br i1 %979, label %982, label %972, !llvm.loop !231

980:                                              ; preds = %972
  %981 = trunc i64 %973 to i32
  br label %982

982:                                              ; preds = %980, %977, %970
  %983 = phi i32 [ -1, %970 ], [ %981, %980 ], [ -1, %977 ]
  br i1 %580, label %984, label %1066

984:                                              ; preds = %982
  %985 = load ptr, ptr %811, align 8, !tbaa !113
  %986 = getelementptr inbounds %struct.CCGFace, ptr %950, i64 1
  %987 = sext i32 %971 to i64
  %988 = getelementptr inbounds ptr, ptr %986, i64 %987
  %989 = load ptr, ptr %988, align 8, !tbaa !43
  %990 = icmp eq ptr %985, %989
  %991 = add nsw i32 %971, 1
  %992 = add nsw i32 %953, -1
  %993 = add i32 %992, %971
  %994 = sext i16 %952 to i64
  %995 = getelementptr inbounds ptr, ptr %986, i64 %994
  %996 = getelementptr inbounds ptr, ptr %995, i64 %994
  %997 = sext i32 %983 to i64
  %998 = getelementptr inbounds ptr, ptr %812, i64 %997
  %999 = load ptr, ptr %998, align 8, !tbaa !43
  %1000 = icmp eq ptr %985, %999
  %1001 = add nsw i32 %983, 1
  %1002 = add i32 %813, %983
  br label %1003

1003:                                             ; preds = %984, %1041
  %1004 = phi i32 [ 1, %984 ], [ %1064, %1041 ]
  %1005 = sub i32 %581, %1004
  %1006 = add i32 %1005, -2
  %1007 = select i1 %990, i32 %1004, i32 %1006
  %1008 = sub nsw i32 %12, %1007
  br i1 %582, label %1009, label %1011

1009:                                             ; preds = %1003
  %1010 = srem i32 %993, %953
  br label %1016

1011:                                             ; preds = %1003
  %1012 = icmp slt i32 %1008, 0
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1011
  %1014 = srem i32 %991, %953
  %1015 = sub nsw i32 0, %1008
  br label %1016

1016:                                             ; preds = %1009, %1011, %1013
  %1017 = phi i32 [ %1010, %1009 ], [ %1014, %1013 ], [ %971, %1011 ]
  %1018 = phi i32 [ %1008, %1009 ], [ %1015, %1013 ], [ %12, %1011 ]
  %1019 = phi i32 [ 0, %1009 ], [ %12, %1013 ], [ %1008, %1011 ]
  %1020 = mul nsw i32 %1017, %584
  %1021 = add nsw i32 %1020, 1
  %1022 = mul nsw i32 %1021, %17
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, ptr %996, i64 %1023
  %1025 = mul nsw i32 %1019, %13
  %1026 = add i32 %1018, %13
  %1027 = add i32 %1026, %1025
  %1028 = mul nsw i32 %1027, %17
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %1024, i64 %1029
  %1031 = getelementptr inbounds i8, ptr %1030, i64 %585
  %1032 = select i1 %1000, i32 %1004, i32 %1006
  %1033 = sub nsw i32 %12, %1032
  br i1 %582, label %1034, label %1036

1034:                                             ; preds = %1016
  %1035 = srem i32 %1002, %807
  br label %1041

1036:                                             ; preds = %1016
  %1037 = icmp slt i32 %1033, 0
  br i1 %1037, label %1038, label %1041

1038:                                             ; preds = %1036
  %1039 = srem i32 %1001, %807
  %1040 = sub nsw i32 0, %1033
  br label %1041

1041:                                             ; preds = %1034, %1036, %1038
  %1042 = phi i32 [ %1035, %1034 ], [ %1039, %1038 ], [ %983, %1036 ]
  %1043 = phi i32 [ %1033, %1034 ], [ %1040, %1038 ], [ %12, %1036 ]
  %1044 = phi i32 [ 0, %1034 ], [ %12, %1038 ], [ %1033, %1036 ]
  %1045 = mul nsw i32 %1042, %584
  %1046 = add nsw i32 %1045, 1
  %1047 = mul nsw i32 %1046, %17
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds i8, ptr %816, i64 %1048
  %1050 = mul nsw i32 %1044, %13
  %1051 = add i32 %1043, %13
  %1052 = add i32 %1051, %1050
  %1053 = mul nsw i32 %1052, %17
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds i8, ptr %1049, i64 %1054
  %1056 = getelementptr inbounds i8, ptr %1055, i64 %585
  %1057 = load float, ptr %1056, align 4, !tbaa !95
  store float %1057, ptr %1031, align 4, !tbaa !95
  %1058 = getelementptr inbounds float, ptr %1056, i64 1
  %1059 = load float, ptr %1058, align 4, !tbaa !95
  %1060 = getelementptr inbounds float, ptr %1031, i64 1
  store float %1059, ptr %1060, align 4, !tbaa !95
  %1061 = getelementptr inbounds float, ptr %1056, i64 2
  %1062 = load float, ptr %1061, align 4, !tbaa !95
  %1063 = getelementptr inbounds float, ptr %1031, i64 2
  store float %1062, ptr %1063, align 4, !tbaa !95
  %1064 = add nuw nsw i32 %1004, 1
  %1065 = icmp eq i32 %1064, %10
  br i1 %1065, label %1066, label %1003, !llvm.loop !234

1066:                                             ; preds = %1041, %982
  %1067 = add nuw nsw i64 %948, 1
  %1068 = icmp eq i64 %1067, %817
  br i1 %1068, label %1069, label %947, !llvm.loop !235

1069:                                             ; preds = %1066, %801, %768
  %1070 = add nuw nsw i64 %769, 1
  %1071 = icmp eq i64 %1070, %586
  br i1 %1071, label %727, label %768, !llvm.loop !236

1072:                                             ; preds = %1241, %727
  %1073 = icmp sgt i32 %5, 0
  br i1 %1073, label %1074, label %1371

1074:                                             ; preds = %1072
  %1075 = icmp eq i32 %9, 31
  %1076 = add i32 %9, -1
  %1077 = add i32 %1076, %10
  %1078 = shl nsw i32 %13, 1
  %1079 = add i32 %1078, -2
  %1080 = icmp eq i32 %11, 31
  %1081 = add nuw i32 %12, 2
  %1082 = mul i32 %13, %1081
  %1083 = sext i32 %15 to i64
  %1084 = icmp eq i32 %9, 31
  %1085 = add i32 %9, -1
  %1086 = add i32 %1085, %10
  %1087 = sext i32 %1077 to i64
  %1088 = sext i32 %17 to i64
  %1089 = sext i32 %15 to i64
  %1090 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %1091 = add nuw i32 %1090, 1
  %1092 = sext i32 %1086 to i64
  %1093 = sext i32 %17 to i64
  %1094 = sext i32 %15 to i64
  %1095 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %1096 = add nuw i32 %1095, 1
  %1097 = zext nneg i32 %5 to i64
  %1098 = zext i32 %1091 to i64
  %1099 = zext i32 %1096 to i64
  br label %1244

1100:                                             ; preds = %729, %1241
  %1101 = phi i64 [ 0, %729 ], [ %1242, %1241 ]
  %1102 = getelementptr inbounds ptr, ptr %3, i64 %1101
  %1103 = load ptr, ptr %1102, align 8, !tbaa !43
  %1104 = getelementptr inbounds %struct.CCGFace, ptr %1103, i64 0, i32 2
  %1105 = load i16, ptr %1104, align 8, !tbaa !119
  %1106 = icmp sgt i16 %1105, 0
  br i1 %1106, label %1107, label %1116

1107:                                             ; preds = %1100
  %1108 = getelementptr inbounds %struct.CCGFace, ptr %1103, i64 1
  %1109 = zext nneg i16 %1105 to i64
  %1110 = getelementptr inbounds ptr, ptr %1108, i64 %1109
  %1111 = getelementptr inbounds ptr, ptr %1110, i64 %1109
  %1112 = getelementptr i8, ptr %1111, i64 %736
  %1113 = getelementptr i8, ptr %1111, i64 %740
  %1114 = zext nneg i16 %1105 to i64
  %1115 = zext nneg i16 %1105 to i64
  br label %1123

1116:                                             ; preds = %1123, %1100
  %1117 = getelementptr inbounds %struct.CCGFace, ptr %1103, i64 0, i32 2
  %1118 = load i16, ptr %1117, align 8, !tbaa !119
  %1119 = icmp sgt i16 %1118, 0
  br i1 %1119, label %1120, label %1241

1120:                                             ; preds = %1116
  %1121 = getelementptr inbounds %struct.CCGFace, ptr %1103, i64 1
  %1122 = getelementptr %struct.CCGFace, ptr %1103, i64 1
  br label %1146

1123:                                             ; preds = %1107, %1123
  %1124 = phi i64 [ 0, %1107 ], [ %1125, %1123 ]
  %1125 = add nuw nsw i64 %1124, 1
  %1126 = icmp eq i64 %1125, %1114
  %1127 = trunc i64 %1125 to i32
  %1128 = select i1 %1126, i32 0, i32 %1127
  %1129 = mul nsw i32 %1128, %731
  %1130 = add nsw i32 %1129, 1
  %1131 = mul nsw i32 %1130, %17
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr i8, ptr %1112, i64 %1132
  %1134 = mul nsw i64 %1124, %752
  %1135 = add nsw i64 %1134, 1
  %1136 = mul nsw i64 %1135, %753
  %1137 = getelementptr i8, ptr %1113, i64 %1136
  %1138 = load float, ptr %1137, align 4, !tbaa !95
  store float %1138, ptr %1133, align 4, !tbaa !95
  %1139 = getelementptr inbounds float, ptr %1137, i64 1
  %1140 = load float, ptr %1139, align 4, !tbaa !95
  %1141 = getelementptr inbounds float, ptr %1133, i64 1
  store float %1140, ptr %1141, align 4, !tbaa !95
  %1142 = getelementptr inbounds float, ptr %1137, i64 2
  %1143 = load float, ptr %1142, align 4, !tbaa !95
  %1144 = getelementptr inbounds float, ptr %1133, i64 2
  store float %1143, ptr %1144, align 4, !tbaa !95
  %1145 = icmp eq i64 %1125, %1115
  br i1 %1145, label %1116, label %1123, !llvm.loop !237

1146:                                             ; preds = %1120, %1236
  %1147 = phi i64 [ 0, %1120 ], [ %1237, %1236 ]
  br i1 %741, label %1194, label %1148

1148:                                             ; preds = %1146
  %1149 = mul nsw i64 %1147, %763
  %1150 = add nsw i64 %1149, 1
  %1151 = mul nsw i64 %1150, %764
  br label %1152

1152:                                             ; preds = %1148, %1191
  %1153 = phi i32 [ 0, %1148 ], [ %1192, %1191 ]
  %1154 = add nuw i32 %1153, 1
  %1155 = mul i32 %1154, %13
  br label %1156

1156:                                             ; preds = %1152, %1188
  %1157 = phi i64 [ 0, %1152 ], [ %1189, %1188 ]
  %1158 = load i16, ptr %1117, align 8, !tbaa !119
  %1159 = sext i16 %1158 to i64
  %1160 = getelementptr inbounds ptr, ptr %1121, i64 %1159
  %1161 = getelementptr inbounds ptr, ptr %1160, i64 %1159
  %1162 = getelementptr inbounds i8, ptr %1161, i64 %1151
  %1163 = trunc i64 %1157 to i32
  %1164 = add i32 %1155, %1163
  %1165 = mul nsw i32 %1164, %17
  %1166 = add nsw i32 %1165, %15
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds i8, ptr %1162, i64 %1167
  %1169 = load float, ptr %1168, align 4, !tbaa !95
  %1170 = getelementptr inbounds float, ptr %1168, i64 1
  %1171 = load float, ptr %1170, align 4, !tbaa !95
  %1172 = fmul float %1171, %1171
  %1173 = tail call float @llvm.fmuladd.f32(float %1169, float %1169, float %1172)
  %1174 = getelementptr inbounds float, ptr %1168, i64 2
  %1175 = load float, ptr %1174, align 4, !tbaa !95
  %1176 = tail call float @llvm.fmuladd.f32(float %1175, float %1175, float %1173)
  %1177 = tail call float @sqrtf(float noundef %1176) #23
  %1178 = fcmp ogt float %1177, 0x38AA95A5C0000000
  br i1 %1178, label %1179, label %1187

1179:                                             ; preds = %1156
  %1180 = fdiv float 1.000000e+00, %1177
  %1181 = load float, ptr %1168, align 4, !tbaa !95
  %1182 = fmul float %1180, %1181
  store float %1182, ptr %1168, align 4, !tbaa !95
  %1183 = load float, ptr %1170, align 4, !tbaa !95
  %1184 = fmul float %1180, %1183
  store float %1184, ptr %1170, align 4, !tbaa !95
  %1185 = load float, ptr %1174, align 4, !tbaa !95
  %1186 = fmul float %1180, %1185
  store float %1186, ptr %1174, align 4, !tbaa !95
  br label %1188

1187:                                             ; preds = %1156
  store float 0.000000e+00, ptr %1174, align 4, !tbaa !95
  store float 0.000000e+00, ptr %1170, align 4, !tbaa !95
  store float 0.000000e+00, ptr %1168, align 4, !tbaa !95
  br label %1188

1188:                                             ; preds = %1179, %1187
  %1189 = add nuw nsw i64 %1157, 1
  %1190 = icmp eq i64 %1189, %766
  br i1 %1190, label %1191, label %1156, !llvm.loop !238

1191:                                             ; preds = %1188
  %1192 = add nuw i32 %1153, 1
  %1193 = icmp eq i32 %1153, %754
  br i1 %1193, label %1194, label %1152, !llvm.loop !239

1194:                                             ; preds = %1191, %1146
  %1195 = load i16, ptr %1117, align 8, !tbaa !119
  %1196 = sext i16 %1195 to i64
  %1197 = getelementptr ptr, ptr %1122, i64 %1196
  %1198 = getelementptr ptr, ptr %1197, i64 %1196
  %1199 = getelementptr i8, ptr %1198, i64 %744
  %1200 = mul nsw i64 %1147, %761
  %1201 = add nsw i64 %1200, 1
  %1202 = mul nsw i64 %1201, %762
  %1203 = getelementptr inbounds i8, ptr %1198, i64 %1202
  %1204 = getelementptr inbounds i8, ptr %1203, i64 %749
  %1205 = load i32, ptr %750, align 4, !tbaa !104
  %1206 = icmp sgt i32 %1205, 0
  br i1 %1206, label %1207, label %1209

1207:                                             ; preds = %1194
  %1208 = zext nneg i32 %1205 to i64
  br label %1213

1209:                                             ; preds = %1213, %1194
  br i1 %751, label %1210, label %1236

1210:                                             ; preds = %1209
  %1211 = getelementptr i8, ptr %1203, i64 %760
  %1212 = getelementptr i8, ptr %1203, i64 %758
  br label %1220

1213:                                             ; preds = %1207, %1213
  %1214 = phi i64 [ 0, %1207 ], [ %1218, %1213 ]
  %1215 = getelementptr inbounds float, ptr %1204, i64 %1214
  %1216 = load float, ptr %1215, align 4, !tbaa !95
  %1217 = getelementptr inbounds float, ptr %1199, i64 %1214
  store float %1216, ptr %1217, align 4, !tbaa !95
  %1218 = add nuw nsw i64 %1214, 1
  %1219 = icmp eq i64 %1218, %1208
  br i1 %1219, label %1209, label %1213, !llvm.loop !124

1220:                                             ; preds = %1210, %1220
  %1221 = phi i64 [ 1, %1210 ], [ %1234, %1220 ]
  %1222 = mul nsw i64 %1221, %759
  %1223 = getelementptr i8, ptr %1211, i64 %1222
  %1224 = add nuw nsw i64 %1221, %756
  %1225 = mul nsw i64 %1224, %757
  %1226 = getelementptr i8, ptr %1212, i64 %1225
  %1227 = load float, ptr %1226, align 4, !tbaa !95
  store float %1227, ptr %1223, align 4, !tbaa !95
  %1228 = getelementptr inbounds float, ptr %1226, i64 1
  %1229 = load float, ptr %1228, align 4, !tbaa !95
  %1230 = getelementptr inbounds float, ptr %1223, i64 1
  store float %1229, ptr %1230, align 4, !tbaa !95
  %1231 = getelementptr inbounds float, ptr %1226, i64 2
  %1232 = load float, ptr %1231, align 4, !tbaa !95
  %1233 = getelementptr inbounds float, ptr %1223, i64 2
  store float %1232, ptr %1233, align 4, !tbaa !95
  %1234 = add nuw nsw i64 %1221, 1
  %1235 = icmp eq i64 %1234, %767
  br i1 %1235, label %1236, label %1220, !llvm.loop !240

1236:                                             ; preds = %1220, %1209
  %1237 = add nuw nsw i64 %1147, 1
  %1238 = load i16, ptr %1117, align 8, !tbaa !119
  %1239 = sext i16 %1238 to i64
  %1240 = icmp slt i64 %1237, %1239
  br i1 %1240, label %1146, label %1241, !llvm.loop !241

1241:                                             ; preds = %1236, %1116
  %1242 = add nuw nsw i64 %1101, 1
  %1243 = icmp eq i64 %1242, %765
  br i1 %1243, label %1072, label %1100, !llvm.loop !242

1244:                                             ; preds = %1074, %1368
  %1245 = phi i64 [ 0, %1074 ], [ %1369, %1368 ]
  %1246 = getelementptr inbounds ptr, ptr %2, i64 %1245
  %1247 = load ptr, ptr %1246, align 8, !tbaa !43
  %1248 = getelementptr inbounds %struct.CCGEdge, ptr %1247, i64 0, i32 2
  %1249 = load i16, ptr %1248, align 8, !tbaa !111
  %1250 = icmp eq i16 %1249, 0
  br i1 %1250, label %1251, label %1255

1251:                                             ; preds = %1244
  br i1 %1084, label %1368, label %1252

1252:                                             ; preds = %1251
  %1253 = getelementptr inbounds %struct.CCGEdge, ptr %1247, i64 1
  %1254 = getelementptr i8, ptr %1253, i64 %1094
  br label %1338

1255:                                             ; preds = %1244
  %1256 = getelementptr inbounds %struct.CCGEdge, ptr %1247, i64 0, i32 7
  %1257 = load ptr, ptr %1256, align 8, !tbaa !82
  %1258 = load ptr, ptr %1257, align 8, !tbaa !43
  %1259 = getelementptr inbounds %struct.CCGFace, ptr %1258, i64 0, i32 2
  %1260 = load i16, ptr %1259, align 8, !tbaa !119
  %1261 = sext i16 %1260 to i32
  %1262 = icmp sgt i16 %1260, 0
  br i1 %1262, label %1263, label %1278

1263:                                             ; preds = %1255
  %1264 = getelementptr inbounds %struct.CCGFace, ptr %1258, i64 1
  %1265 = zext nneg i16 %1260 to i64
  %1266 = getelementptr inbounds ptr, ptr %1264, i64 %1265
  %1267 = zext nneg i32 %1261 to i64
  br label %1268

1268:                                             ; preds = %1263, %1273
  %1269 = phi i64 [ 0, %1263 ], [ %1274, %1273 ]
  %1270 = getelementptr inbounds ptr, ptr %1266, i64 %1269
  %1271 = load ptr, ptr %1270, align 8, !tbaa !43
  %1272 = icmp eq ptr %1271, %1247
  br i1 %1272, label %1276, label %1273

1273:                                             ; preds = %1268
  %1274 = add nuw nsw i64 %1269, 1
  %1275 = icmp eq i64 %1274, %1267
  br i1 %1275, label %1278, label %1268, !llvm.loop !231

1276:                                             ; preds = %1268
  %1277 = trunc i64 %1269 to i32
  br label %1278

1278:                                             ; preds = %1276, %1273, %1255
  %1279 = phi i32 [ -1, %1255 ], [ %1277, %1276 ], [ -1, %1273 ]
  br i1 %1075, label %1368, label %1280

1280:                                             ; preds = %1278
  %1281 = getelementptr inbounds %struct.CCGEdge, ptr %1247, i64 1
  %1282 = getelementptr inbounds %struct.CCGEdge, ptr %1247, i64 0, i32 5
  %1283 = load ptr, ptr %1282, align 8, !tbaa !113
  %1284 = getelementptr inbounds %struct.CCGFace, ptr %1258, i64 1
  %1285 = sext i32 %1279 to i64
  %1286 = getelementptr inbounds ptr, ptr %1284, i64 %1285
  %1287 = load ptr, ptr %1286, align 8, !tbaa !43
  %1288 = icmp eq ptr %1283, %1287
  %1289 = add nsw i32 %1279, 1
  %1290 = add nsw i32 %1261, -1
  %1291 = add i32 %1290, %1279
  %1292 = sext i16 %1260 to i64
  %1293 = getelementptr inbounds ptr, ptr %1284, i64 %1292
  %1294 = getelementptr inbounds ptr, ptr %1293, i64 %1292
  %1295 = getelementptr i8, ptr %1281, i64 %1089
  br label %1296

1296:                                             ; preds = %1280, %1313
  %1297 = phi i64 [ 0, %1280 ], [ %1336, %1313 ]
  %1298 = add nsw i64 %1297, %1087
  %1299 = mul nsw i64 %1298, %1088
  %1300 = getelementptr i8, ptr %1295, i64 %1299
  %1301 = trunc i64 %1297 to i32
  %1302 = sub i32 %1079, %1301
  %1303 = trunc i64 %1297 to i32
  %1304 = select i1 %1288, i32 %1303, i32 %1302
  %1305 = sub nsw i32 %12, %1304
  br i1 %1080, label %1306, label %1308

1306:                                             ; preds = %1296
  %1307 = srem i32 %1291, %1261
  br label %1313

1308:                                             ; preds = %1296
  %1309 = icmp slt i32 %1305, 0
  br i1 %1309, label %1310, label %1313

1310:                                             ; preds = %1308
  %1311 = srem i32 %1289, %1261
  %1312 = sub nsw i32 0, %1305
  br label %1313

1313:                                             ; preds = %1306, %1308, %1310
  %1314 = phi i32 [ %1307, %1306 ], [ %1311, %1310 ], [ %1279, %1308 ]
  %1315 = phi i32 [ %1305, %1306 ], [ %1312, %1310 ], [ %12, %1308 ]
  %1316 = phi i32 [ 0, %1306 ], [ %12, %1310 ], [ %1305, %1308 ]
  %1317 = mul nsw i32 %1082, %1314
  %1318 = add nsw i32 %1317, 1
  %1319 = mul nsw i32 %1318, %17
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds i8, ptr %1294, i64 %1320
  %1322 = mul nsw i32 %1316, %13
  %1323 = add i32 %1315, %13
  %1324 = add i32 %1323, %1322
  %1325 = mul nsw i32 %1324, %17
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds i8, ptr %1321, i64 %1326
  %1328 = getelementptr inbounds i8, ptr %1327, i64 %1083
  %1329 = load float, ptr %1328, align 4, !tbaa !95
  store float %1329, ptr %1300, align 4, !tbaa !95
  %1330 = getelementptr inbounds float, ptr %1328, i64 1
  %1331 = load float, ptr %1330, align 4, !tbaa !95
  %1332 = getelementptr inbounds float, ptr %1300, i64 1
  store float %1331, ptr %1332, align 4, !tbaa !95
  %1333 = getelementptr inbounds float, ptr %1328, i64 2
  %1334 = load float, ptr %1333, align 4, !tbaa !95
  %1335 = getelementptr inbounds float, ptr %1300, i64 2
  store float %1334, ptr %1335, align 4, !tbaa !95
  %1336 = add nuw nsw i64 %1297, 1
  %1337 = icmp eq i64 %1336, %1098
  br i1 %1337, label %1368, label %1296, !llvm.loop !243

1338:                                             ; preds = %1252, %1365
  %1339 = phi i64 [ 0, %1252 ], [ %1366, %1365 ]
  %1340 = add nsw i64 %1339, %1092
  %1341 = mul nsw i64 %1340, %1093
  %1342 = getelementptr i8, ptr %1254, i64 %1341
  %1343 = getelementptr inbounds i8, ptr %1253, i64 %1341
  %1344 = load float, ptr %1343, align 4, !tbaa !95
  store float %1344, ptr %1342, align 4, !tbaa !95
  %1345 = getelementptr inbounds float, ptr %1343, i64 1
  %1346 = load float, ptr %1345, align 4, !tbaa !95
  %1347 = getelementptr inbounds float, ptr %1342, i64 1
  store float %1346, ptr %1347, align 4, !tbaa !95
  %1348 = getelementptr inbounds float, ptr %1343, i64 2
  %1349 = load float, ptr %1348, align 4, !tbaa !95
  %1350 = getelementptr inbounds float, ptr %1342, i64 2
  store float %1349, ptr %1350, align 4, !tbaa !95
  %1351 = fmul float %1346, %1346
  %1352 = tail call float @llvm.fmuladd.f32(float %1344, float %1344, float %1351)
  %1353 = tail call float @llvm.fmuladd.f32(float %1349, float %1349, float %1352)
  %1354 = tail call float @sqrtf(float noundef %1353) #23
  %1355 = fcmp ogt float %1354, 0x38AA95A5C0000000
  br i1 %1355, label %1356, label %1364

1356:                                             ; preds = %1338
  %1357 = fdiv float 1.000000e+00, %1354
  %1358 = load float, ptr %1342, align 4, !tbaa !95
  %1359 = fmul float %1357, %1358
  store float %1359, ptr %1342, align 4, !tbaa !95
  %1360 = load float, ptr %1347, align 4, !tbaa !95
  %1361 = fmul float %1357, %1360
  store float %1361, ptr %1347, align 4, !tbaa !95
  %1362 = load float, ptr %1350, align 4, !tbaa !95
  %1363 = fmul float %1357, %1362
  store float %1363, ptr %1350, align 4, !tbaa !95
  br label %1365

1364:                                             ; preds = %1338
  store float 0.000000e+00, ptr %1350, align 4, !tbaa !95
  store float 0.000000e+00, ptr %1347, align 4, !tbaa !95
  store float 0.000000e+00, ptr %1342, align 4, !tbaa !95
  br label %1365

1365:                                             ; preds = %1356, %1364
  %1366 = add nuw nsw i64 %1339, 1
  %1367 = icmp eq i64 %1366, %1099
  br i1 %1367, label %1368, label %1338, !llvm.loop !244

1368:                                             ; preds = %1313, %1365, %1278, %1251
  %1369 = add nuw nsw i64 %1245, 1
  %1370 = icmp eq i64 %1369, %1097
  br i1 %1370, label %1371, label %1244, !llvm.loop !245

1371:                                             ; preds = %1368, %1072
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ccgSubSurf_updateLevels(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct._EHash, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %13(i64 noundef %19, ptr noundef nonnull @.str.5) #23
  %21 = load ptr, ptr %14, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct._EHash, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !53
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %12, %44
  %26 = phi i64 [ %46, %44 ], [ 0, %12 ]
  %27 = phi ptr [ %47, %44 ], [ %21, %12 ]
  %28 = phi i32 [ %45, %44 ], [ 0, %12 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !55
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = sext i32 %28 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %34, %33 ], [ %38, %35 ]
  %37 = phi ptr [ %31, %33 ], [ %40, %35 ]
  %38 = add i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %20, i64 %36
  store ptr %37, ptr %39, align 8, !tbaa !43
  %40 = load ptr, ptr %37, align 8, !tbaa !43
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !176

42:                                               ; preds = %35
  %43 = trunc i64 %38 to i32
  br label %44

44:                                               ; preds = %42, %25
  %45 = phi i32 [ %28, %25 ], [ %43, %42 ]
  %46 = add nuw nsw i64 %26, 1
  %47 = load ptr, ptr %14, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct._EHash, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %25, label %52, !llvm.loop !177

52:                                               ; preds = %44, %12, %4
  %53 = phi i32 [ %3, %4 ], [ 0, %12 ], [ %45, %44 ]
  %54 = phi ptr [ %2, %4 ], [ %20, %12 ], [ %20, %44 ]
  call fastcc void @ccgSubSurf__effectedFaceNeighbours(ptr noundef %0, ptr noundef %54, i32 noundef %53, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8)
  %55 = icmp sgt i32 %10, %1
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8, !tbaa !43
  %58 = load ptr, ptr %6, align 8, !tbaa !43
  %59 = load i32, ptr %7, align 4, !tbaa !60
  %60 = load i32, ptr %8, align 4, !tbaa !60
  br label %67

61:                                               ; preds = %67, %52
  %62 = load i32, ptr %7, align 4, !tbaa !60
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 8, !tbaa !43
  %66 = zext nneg i32 %62 to i64
  br label %77

67:                                               ; preds = %56, %67
  %68 = phi i32 [ %1, %56 ], [ %69, %67 ]
  tail call fastcc void @ccgSubSurf__calcSubdivLevel(ptr noundef %0, ptr noundef %57, ptr noundef %58, ptr noundef %54, i32 noundef %59, i32 noundef %60, i32 noundef %53, i32 noundef %68)
  %69 = add i32 %68, 1
  %70 = icmp eq i32 %69, %10
  br i1 %70, label %61, label %67, !llvm.loop !246

71:                                               ; preds = %77, %61
  %72 = load i32, ptr %8, align 4, !tbaa !60
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load ptr, ptr %6, align 8, !tbaa !43
  %76 = zext nneg i32 %72 to i64
  br label %88

77:                                               ; preds = %64, %77
  %78 = phi i64 [ 0, %64 ], [ %82, %77 ]
  %79 = getelementptr inbounds ptr, ptr %65, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !43
  %81 = getelementptr inbounds %struct.CCGVert, ptr %80, i64 0, i32 4
  store i16 0, ptr %81, align 4, !tbaa !116
  %82 = add nuw nsw i64 %78, 1
  %83 = icmp eq i64 %82, %66
  br i1 %83, label %71, label %77, !llvm.loop !247

84:                                               ; preds = %88, %71
  %85 = icmp sgt i32 %53, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = zext nneg i32 %53 to i64
  br label %95

88:                                               ; preds = %74, %88
  %89 = phi i64 [ 0, %74 ], [ %93, %88 ]
  %90 = getelementptr inbounds ptr, ptr %75, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !43
  %92 = getelementptr inbounds %struct.CCGEdge, ptr %91, i64 0, i32 3
  store i16 0, ptr %92, align 2, !tbaa !133
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %76
  br i1 %94, label %84, label %88, !llvm.loop !248

95:                                               ; preds = %86, %95
  %96 = phi i64 [ 0, %86 ], [ %100, %95 ]
  %97 = getelementptr inbounds ptr, ptr %54, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds %struct.CCGFace, ptr %98, i64 0, i32 3
  store i16 0, ptr %99, align 2, !tbaa !143
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %100, %87
  br i1 %101, label %102, label %95, !llvm.loop !249

102:                                              ; preds = %95, %84
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %104 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void %103(ptr noundef %104) #23
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %106 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void %105(ptr noundef %106) #23
  br i1 %11, label %107, label %109

107:                                              ; preds = %102
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %108(ptr noundef %54) #23
  br label %109

109:                                              ; preds = %107, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ccgSubSurf__calcSubdivLevel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = shl nuw i32 1, %7
  %12 = add nsw i32 %7, -1
  %13 = shl nuw i32 1, %12
  %14 = add i32 %7, 1
  %15 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %8
  %23 = icmp eq i32 %12, 31
  %24 = add nsw i32 %10, -1
  %25 = shl nuw i32 1, %24
  %26 = add nuw nsw i32 %25, 1
  %27 = sub nsw i32 %10, %7
  %28 = add nuw i32 %25, 2
  %29 = mul i32 %26, %28
  %30 = sub nsw i32 %10, %14
  %31 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %32 = icmp eq i32 %12, 31
  %33 = add nsw i32 %10, -1
  %34 = shl nuw i32 1, %33
  %35 = add nuw nsw i32 %34, 1
  %36 = sub nsw i32 %10, %7
  %37 = add nuw i32 %34, 2
  %38 = mul i32 %35, %37
  %39 = sub nsw i32 %10, %14
  %40 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %41 = icmp sgt i32 %13, 1
  %42 = icmp eq i32 %12, 31
  %43 = add nsw i32 %10, -1
  %44 = shl nuw i32 1, %43
  %45 = add nuw nsw i32 %44, 1
  %46 = sub nsw i32 %10, %7
  %47 = add nuw i32 %44, 2
  %48 = mul i32 %45, %47
  %49 = sub nsw i32 %10, %14
  %50 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %51 = icmp sgt i32 %13, 1
  %52 = icmp eq i32 %12, 31
  %53 = add nsw i32 %10, -1
  %54 = shl nuw i32 1, %53
  %55 = add nuw nsw i32 %54, 1
  %56 = sub nsw i32 %10, %7
  %57 = add nuw i32 %54, 2
  %58 = mul i32 %55, %57
  %59 = sub nsw i32 %10, %14
  %60 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %61 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %62 = sext i32 %29 to i64
  %63 = sext i32 %16 to i64
  %64 = sext i32 %58 to i64
  %65 = sext i32 %16 to i64
  %66 = sext i32 %48 to i64
  %67 = sext i32 %16 to i64
  %68 = sext i32 %38 to i64
  %69 = sext i32 %16 to i64
  %70 = zext nneg i32 %6 to i64
  br label %110

71:                                               ; preds = %441, %8
  %72 = icmp sgt i32 %5, 0
  br i1 %72, label %73, label %444

73:                                               ; preds = %71
  %74 = icmp eq i32 %7, 0
  %75 = sitofp i32 %7 to float
  %76 = icmp eq i32 %7, 31
  %77 = add i32 %11, %7
  %78 = add i32 %77, -1
  %79 = shl nuw i32 1, %14
  %80 = add i32 %79, %7
  %81 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %82 = add nsw i32 %10, -1
  %83 = shl nuw i32 1, %82
  %84 = add nuw nsw i32 %83, 1
  %85 = sub nsw i32 %10, %14
  %86 = shl nsw i32 -1, %85
  %87 = shl nsw i32 %84, 1
  %88 = add nsw i32 %87, -2
  %89 = add i32 %86, %83
  %90 = icmp slt i32 %89, 0
  %91 = sub nsw i32 0, %89
  %92 = add nuw i32 %83, 2
  %93 = mul i32 %84, %92
  %94 = icmp eq i32 %7, 31
  %95 = add nsw i32 %11, %7
  %96 = add nsw i32 %95, -1
  %97 = shl nuw i32 1, %14
  %98 = add i32 %7, 1
  %99 = add i32 %98, %97
  %100 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %101 = sext i32 %78 to i64
  %102 = sext i32 %16 to i64
  %103 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %104 = sext i32 %96 to i64
  %105 = sext i32 %16 to i64
  %106 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %107 = zext nneg i32 %5 to i64
  %108 = zext nneg i32 %103 to i64
  %109 = zext nneg i32 %106 to i64
  br label %502

110:                                              ; preds = %22, %441
  %111 = phi i64 [ 0, %22 ], [ %442, %441 ]
  %112 = getelementptr inbounds ptr, ptr %3, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.CCGFace, ptr %113, i64 0, i32 2
  %115 = load i16, ptr %114, align 8, !tbaa !119
  %116 = sext i16 %115 to i32
  %117 = icmp sgt i16 %115, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.CCGFace, ptr %113, i64 1
  %120 = zext nneg i16 %115 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = zext nneg i32 %116 to i64
  br label %141

124:                                              ; preds = %216, %110
  %125 = icmp sgt i16 %115, 0
  br i1 %125, label %126, label %441

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.CCGFace, ptr %113, i64 1
  %128 = zext nneg i16 %115 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  %131 = getelementptr inbounds %struct.CCGFace, ptr %113, i64 1
  %132 = zext nneg i16 %115 to i64
  %133 = getelementptr inbounds ptr, ptr %131, i64 %132
  %134 = getelementptr inbounds ptr, ptr %133, i64 %132
  %135 = getelementptr inbounds %struct.CCGFace, ptr %113, i64 1
  %136 = zext nneg i16 %115 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = getelementptr inbounds ptr, ptr %137, i64 %136
  %139 = zext nneg i32 %116 to i64
  %140 = zext nneg i32 %116 to i64
  br label %219

141:                                              ; preds = %118, %216
  %142 = phi i64 [ 0, %118 ], [ %217, %216 ]
  br i1 %23, label %216, label %143

143:                                              ; preds = %141
  %144 = mul nsw i64 %142, %62
  %145 = add nsw i64 %144, 1
  %146 = mul nsw i64 %145, %63
  %147 = getelementptr inbounds i8, ptr %122, i64 %146
  %148 = load i32, ptr %31, align 4, !tbaa !104
  %149 = icmp sgt i32 %148, 0
  %150 = zext nneg i32 %148 to i64
  br label %151

151:                                              ; preds = %143, %213
  %152 = phi i32 [ 0, %143 ], [ %214, %213 ]
  %153 = shl nuw nsw i32 %152, 1
  %154 = or disjoint i32 %153, 1
  %155 = mul nsw i32 %152, %26
  %156 = add nuw nsw i32 %152, 1
  %157 = mul nsw i32 %156, %26
  %158 = mul nsw i32 %154, %26
  %159 = add i32 %158, 1
  br label %162

160:                                              ; preds = %196, %162
  %161 = icmp eq i32 %171, %61
  br i1 %161, label %213, label %162, !llvm.loop !250

162:                                              ; preds = %151, %160
  %163 = phi i32 [ 0, %151 ], [ %171, %160 ]
  %164 = shl nuw nsw i32 %163, 1
  %165 = add nsw i32 %163, %155
  %166 = shl i32 %165, %27
  %167 = add nsw i32 %166, %26
  %168 = mul nsw i32 %167, %16
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %147, i64 %169
  %171 = add nuw nsw i32 %163, 1
  %172 = add nsw i32 %171, %155
  %173 = shl i32 %172, %27
  %174 = add nsw i32 %173, %26
  %175 = mul nsw i32 %174, %16
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %147, i64 %176
  %178 = add nsw i32 %171, %157
  %179 = shl i32 %178, %27
  %180 = add nsw i32 %179, %26
  %181 = mul nsw i32 %180, %16
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %147, i64 %182
  %184 = add nsw i32 %163, %157
  %185 = shl i32 %184, %27
  %186 = add nsw i32 %185, %26
  %187 = mul nsw i32 %186, %16
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %147, i64 %188
  %190 = add i32 %159, %164
  %191 = shl i32 %190, %30
  %192 = add nsw i32 %191, %26
  %193 = mul nsw i32 %192, %16
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %147, i64 %194
  br i1 %149, label %196, label %160

196:                                              ; preds = %162, %196
  %197 = phi i64 [ %211, %196 ], [ 0, %162 ]
  %198 = getelementptr inbounds float, ptr %170, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !95
  %200 = getelementptr inbounds float, ptr %177, i64 %197
  %201 = load float, ptr %200, align 4, !tbaa !95
  %202 = fadd float %199, %201
  %203 = getelementptr inbounds float, ptr %183, i64 %197
  %204 = load float, ptr %203, align 4, !tbaa !95
  %205 = fadd float %202, %204
  %206 = getelementptr inbounds float, ptr %189, i64 %197
  %207 = load float, ptr %206, align 4, !tbaa !95
  %208 = fadd float %205, %207
  %209 = fmul float %208, 2.500000e-01
  %210 = getelementptr inbounds float, ptr %195, i64 %197
  store float %209, ptr %210, align 4, !tbaa !95
  %211 = add nuw nsw i64 %197, 1
  %212 = icmp eq i64 %211, %150
  br i1 %212, label %160, label %196, !llvm.loop !251

213:                                              ; preds = %160
  %214 = add nuw nsw i32 %152, 1
  %215 = icmp eq i32 %214, %61
  br i1 %215, label %216, label %151, !llvm.loop !252

216:                                              ; preds = %213, %141
  %217 = add nuw nsw i64 %142, 1
  %218 = icmp eq i64 %217, %123
  br i1 %218, label %124, label %141, !llvm.loop !253

219:                                              ; preds = %126, %438
  %220 = phi i64 [ 0, %126 ], [ %439, %438 ]
  br i1 %32, label %240, label %221

221:                                              ; preds = %219
  %222 = mul nsw i64 %220, %68
  %223 = add nsw i64 %222, 1
  %224 = mul nsw i64 %223, %69
  %225 = getelementptr inbounds i8, ptr %130, i64 %224
  %226 = add nuw nsw i64 %220, 1
  %227 = icmp eq i64 %226, %139
  %228 = trunc i64 %226 to i32
  %229 = select i1 %227, i32 0, i32 %228
  %230 = mul nsw i32 %229, %38
  %231 = add nsw i32 %230, 1
  %232 = mul nsw i32 %231, %16
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %130, i64 %233
  %235 = load i32, ptr %40, align 4, !tbaa !104
  %236 = icmp sgt i32 %235, 0
  %237 = zext nneg i32 %235 to i64
  br label %246

238:                                              ; preds = %276, %246
  %239 = icmp eq i32 %254, %61
  br i1 %239, label %240, label %246, !llvm.loop !254

240:                                              ; preds = %238, %219
  br i1 %41, label %241, label %293

241:                                              ; preds = %240
  %242 = mul nsw i64 %220, %66
  %243 = add nsw i64 %242, 1
  %244 = mul nsw i64 %243, %67
  %245 = getelementptr inbounds i8, ptr %134, i64 %244
  br label %299

246:                                              ; preds = %221, %238
  %247 = phi i32 [ 0, %221 ], [ %254, %238 ]
  %248 = shl nuw nsw i32 %247, 1
  %249 = or disjoint i32 %248, 1
  %250 = mul nsw i32 %247, %16
  %251 = shl i32 %250, %36
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %225, i64 %252
  %254 = add nuw nsw i32 %247, 1
  %255 = mul nsw i32 %254, %16
  %256 = shl i32 %255, %36
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %225, i64 %257
  %259 = mul nsw i32 %249, %35
  %260 = add nsw i32 %259, 1
  %261 = shl i32 %260, %39
  %262 = add nsw i32 %261, %35
  %263 = mul nsw i32 %262, %16
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %234, i64 %264
  %266 = add nsw i32 %249, %35
  %267 = shl i32 %266, %39
  %268 = add nsw i32 %267, %35
  %269 = mul nsw i32 %268, %16
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %225, i64 %270
  %272 = mul nsw i32 %249, %16
  %273 = shl i32 %272, %39
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %225, i64 %274
  br i1 %236, label %276, label %238

276:                                              ; preds = %246, %276
  %277 = phi i64 [ %291, %276 ], [ 0, %246 ]
  %278 = getelementptr inbounds float, ptr %253, i64 %277
  %279 = load float, ptr %278, align 4, !tbaa !95
  %280 = getelementptr inbounds float, ptr %258, i64 %277
  %281 = load float, ptr %280, align 4, !tbaa !95
  %282 = fadd float %279, %281
  %283 = getelementptr inbounds float, ptr %265, i64 %277
  %284 = load float, ptr %283, align 4, !tbaa !95
  %285 = fadd float %282, %284
  %286 = getelementptr inbounds float, ptr %271, i64 %277
  %287 = load float, ptr %286, align 4, !tbaa !95
  %288 = fadd float %285, %287
  %289 = fmul float %288, 2.500000e-01
  %290 = getelementptr inbounds float, ptr %275, i64 %277
  store float %289, ptr %290, align 4, !tbaa !95
  %291 = add nuw nsw i64 %277, 1
  %292 = icmp eq i64 %291, %237
  br i1 %292, label %238, label %276, !llvm.loop !251

293:                                              ; preds = %365, %240
  br i1 %51, label %294, label %438

294:                                              ; preds = %293
  %295 = mul nsw i64 %220, %64
  %296 = add nsw i64 %295, 1
  %297 = mul nsw i64 %296, %65
  %298 = getelementptr inbounds i8, ptr %138, i64 %297
  br label %368

299:                                              ; preds = %241, %365
  %300 = phi i32 [ 1, %241 ], [ %366, %365 ]
  br i1 %42, label %365, label %301

301:                                              ; preds = %299
  %302 = shl nuw nsw i32 %300, 1
  %303 = load i32, ptr %50, align 4, !tbaa !104
  %304 = icmp sgt i32 %303, 0
  %305 = zext nneg i32 %303 to i64
  br label %308

306:                                              ; preds = %348, %308
  %307 = icmp eq i32 %319, %13
  br i1 %307, label %365, label %308, !llvm.loop !255

308:                                              ; preds = %301, %306
  %309 = phi i32 [ 0, %301 ], [ %319, %306 ]
  %310 = shl nuw nsw i32 %309, 1
  %311 = or disjoint i32 %310, 1
  %312 = mul nsw i32 %309, %45
  %313 = add nsw i32 %312, %300
  %314 = shl i32 %313, %46
  %315 = add nsw i32 %314, %45
  %316 = mul nsw i32 %315, %16
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, ptr %245, i64 %317
  %319 = add nuw nsw i32 %309, 1
  %320 = mul nsw i32 %319, %45
  %321 = add nsw i32 %320, %300
  %322 = shl i32 %321, %46
  %323 = add nsw i32 %322, %45
  %324 = mul nsw i32 %323, %16
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %245, i64 %325
  %327 = mul nsw i32 %311, %45
  %328 = add i32 %327, %302
  %329 = add i32 %328, -1
  %330 = shl i32 %329, %49
  %331 = add nsw i32 %330, %45
  %332 = mul nsw i32 %331, %16
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %245, i64 %333
  %335 = add i32 %327, %302
  %336 = add i32 %335, 1
  %337 = shl i32 %336, %49
  %338 = add nsw i32 %337, %45
  %339 = mul nsw i32 %338, %16
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, ptr %245, i64 %340
  %342 = add nsw i32 %327, %302
  %343 = shl i32 %342, %49
  %344 = add nsw i32 %343, %45
  %345 = mul nsw i32 %344, %16
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, ptr %245, i64 %346
  br i1 %304, label %348, label %306

348:                                              ; preds = %308, %348
  %349 = phi i64 [ %363, %348 ], [ 0, %308 ]
  %350 = getelementptr inbounds float, ptr %318, i64 %349
  %351 = load float, ptr %350, align 4, !tbaa !95
  %352 = getelementptr inbounds float, ptr %326, i64 %349
  %353 = load float, ptr %352, align 4, !tbaa !95
  %354 = fadd float %351, %353
  %355 = getelementptr inbounds float, ptr %334, i64 %349
  %356 = load float, ptr %355, align 4, !tbaa !95
  %357 = fadd float %354, %356
  %358 = getelementptr inbounds float, ptr %341, i64 %349
  %359 = load float, ptr %358, align 4, !tbaa !95
  %360 = fadd float %357, %359
  %361 = fmul float %360, 2.500000e-01
  %362 = getelementptr inbounds float, ptr %347, i64 %349
  store float %361, ptr %362, align 4, !tbaa !95
  %363 = add nuw nsw i64 %349, 1
  %364 = icmp eq i64 %363, %305
  br i1 %364, label %306, label %348, !llvm.loop !251

365:                                              ; preds = %306, %299
  %366 = add nuw nsw i32 %300, 1
  %367 = icmp eq i32 %366, %13
  br i1 %367, label %293, label %299, !llvm.loop !256

368:                                              ; preds = %294, %435
  %369 = phi i32 [ 1, %294 ], [ %436, %435 ]
  br i1 %52, label %435, label %370

370:                                              ; preds = %368
  %371 = shl nuw nsw i32 %369, 1
  %372 = mul nsw i32 %369, %55
  %373 = add nsw i32 %371, -1
  %374 = mul nsw i32 %373, %55
  %375 = or disjoint i32 %371, 1
  %376 = mul nsw i32 %375, %55
  %377 = mul nsw i32 %371, %55
  %378 = load i32, ptr %60, align 4, !tbaa !104
  %379 = icmp sgt i32 %378, 0
  %380 = zext nneg i32 %378 to i64
  br label %383

381:                                              ; preds = %418, %383
  %382 = icmp eq i32 %393, %13
  br i1 %382, label %435, label %383, !llvm.loop !257

383:                                              ; preds = %370, %381
  %384 = phi i32 [ 0, %370 ], [ %393, %381 ]
  %385 = shl nuw nsw i32 %384, 1
  %386 = or disjoint i32 %385, 1
  %387 = add nsw i32 %384, %372
  %388 = shl i32 %387, %56
  %389 = add nsw i32 %388, %55
  %390 = mul nsw i32 %389, %16
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, ptr %298, i64 %391
  %393 = add nuw nsw i32 %384, 1
  %394 = add nsw i32 %393, %372
  %395 = shl i32 %394, %56
  %396 = add nsw i32 %395, %55
  %397 = mul nsw i32 %396, %16
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %298, i64 %398
  %400 = add nsw i32 %386, %374
  %401 = shl i32 %400, %59
  %402 = add nsw i32 %401, %55
  %403 = mul nsw i32 %402, %16
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %298, i64 %404
  %406 = add nsw i32 %386, %376
  %407 = shl i32 %406, %59
  %408 = add nsw i32 %407, %55
  %409 = mul nsw i32 %408, %16
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, ptr %298, i64 %410
  %412 = add nsw i32 %386, %377
  %413 = shl i32 %412, %59
  %414 = add nsw i32 %413, %55
  %415 = mul nsw i32 %414, %16
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, ptr %298, i64 %416
  br i1 %379, label %418, label %381

418:                                              ; preds = %383, %418
  %419 = phi i64 [ %433, %418 ], [ 0, %383 ]
  %420 = getelementptr inbounds float, ptr %392, i64 %419
  %421 = load float, ptr %420, align 4, !tbaa !95
  %422 = getelementptr inbounds float, ptr %399, i64 %419
  %423 = load float, ptr %422, align 4, !tbaa !95
  %424 = fadd float %421, %423
  %425 = getelementptr inbounds float, ptr %405, i64 %419
  %426 = load float, ptr %425, align 4, !tbaa !95
  %427 = fadd float %424, %426
  %428 = getelementptr inbounds float, ptr %411, i64 %419
  %429 = load float, ptr %428, align 4, !tbaa !95
  %430 = fadd float %427, %429
  %431 = fmul float %430, 2.500000e-01
  %432 = getelementptr inbounds float, ptr %417, i64 %419
  store float %431, ptr %432, align 4, !tbaa !95
  %433 = add nuw nsw i64 %419, 1
  %434 = icmp eq i64 %433, %380
  br i1 %434, label %381, label %418, !llvm.loop !251

435:                                              ; preds = %381, %368
  %436 = add nuw nsw i32 %369, 1
  %437 = icmp eq i32 %436, %13
  br i1 %437, label %438, label %368, !llvm.loop !258

438:                                              ; preds = %435, %293
  %439 = add nuw nsw i64 %220, 1
  %440 = icmp eq i64 %439, %140
  br i1 %440, label %441, label %219, !llvm.loop !259

441:                                              ; preds = %438, %124
  %442 = add nuw nsw i64 %111, 1
  %443 = icmp eq i64 %442, %70
  br i1 %443, label %71, label %110, !llvm.loop !260

444:                                              ; preds = %796, %71
  %445 = icmp sgt i32 %4, 0
  br i1 %445, label %446, label %799

446:                                              ; preds = %444
  %447 = mul i32 %16, %7
  %448 = sext i32 %447 to i64
  %449 = mul i32 %16, %14
  %450 = sext i32 %449 to i64
  %451 = icmp eq i32 %7, 0
  %452 = sitofp i32 %7 to float
  %453 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %454 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %455 = add nsw i32 %11, %7
  %456 = add i32 %11, -2
  %457 = add i32 %456, %455
  %458 = mul nsw i32 %16, %457
  %459 = sext i32 %458 to i64
  %460 = mul nsw i32 %16, %455
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %463 = add nsw i32 %10, -1
  %464 = shl nuw i32 1, %463
  %465 = freeze i32 %464
  %466 = add nuw nsw i32 %465, 1
  %467 = sub nsw i32 %10, %14
  %468 = add i32 %465, 2
  %469 = mul i32 %466, %468
  %470 = shl i32 %468, %7
  %471 = sub i32 %470, %468
  %472 = shl i32 %471, %467
  %473 = add nsw i32 %472, %466
  %474 = mul nsw i32 %473, %16
  %475 = sext i32 %474 to i64
  %476 = add nsw i32 %11, %7
  %477 = add i32 %11, -2
  %478 = add i32 %477, %476
  %479 = mul nsw i32 %16, %478
  %480 = sext i32 %479 to i64
  %481 = mul nsw i32 %16, %476
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %484 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %485 = icmp eq i32 %7, 0
  %486 = sitofp i32 %7 to float
  %487 = add nsw i32 %11, %7
  %488 = add i32 %11, -2
  %489 = add i32 %488, %487
  %490 = mul nsw i32 %16, %489
  %491 = sext i32 %490 to i64
  %492 = mul nsw i32 %16, %487
  %493 = sext i32 %492 to i64
  %494 = add nsw i32 %11, %7
  %495 = add i32 %11, -2
  %496 = add i32 %495, %494
  %497 = mul nsw i32 %16, %496
  %498 = sext i32 %497 to i64
  %499 = mul nsw i32 %16, %494
  %500 = sext i32 %499 to i64
  %501 = zext nneg i32 %4 to i64
  br label %843

502:                                              ; preds = %73, %796
  %503 = phi i64 [ 0, %73 ], [ %797, %796 ]
  %504 = getelementptr inbounds ptr, ptr %2, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !43
  %506 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 0, i32 4
  %507 = load float, ptr %506, align 4, !tbaa !131
  br i1 %74, label %514, label %508

508:                                              ; preds = %502
  %509 = fcmp une float %507, 0.000000e+00
  br i1 %509, label %510, label %514

510:                                              ; preds = %508
  %511 = fsub float %507, %75
  %512 = fcmp olt float %511, 0.000000e+00
  %513 = select i1 %512, float 0.000000e+00, float %511
  br label %514

514:                                              ; preds = %502, %508, %510
  %515 = phi float [ 0.000000e+00, %508 ], [ %513, %510 ], [ %507, %502 ]
  %516 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 0, i32 2
  %517 = load i16, ptr %516, align 8, !tbaa !111
  %518 = icmp slt i16 %517, 2
  %519 = fcmp ogt float %515, 1.000000e+00
  %520 = select i1 %518, i1 true, i1 %519
  br i1 %520, label %552, label %521

521:                                              ; preds = %514
  br i1 %76, label %796, label %522

522:                                              ; preds = %521
  %523 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 1
  %524 = load i32, ptr %81, align 4, !tbaa !104
  %525 = icmp sgt i32 %524, 0
  %526 = icmp sgt i32 %524, 0
  %527 = sext i16 %517 to i32
  %528 = icmp sgt i16 %517, 0
  %529 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 0, i32 7
  %530 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 0, i32 5
  %531 = icmp sgt i32 %524, 0
  %532 = icmp sgt i32 %524, 0
  %533 = icmp sgt i32 %524, 0
  %534 = icmp sgt i32 %524, 0
  %535 = icmp sgt i32 %524, 0
  %536 = icmp sgt i32 %524, 0
  %537 = icmp sgt i32 %524, 0
  %538 = icmp sgt i32 %524, 0
  %539 = icmp sgt i32 %524, 0
  %540 = zext nneg i32 %524 to i64
  %541 = zext nneg i32 %524 to i64
  %542 = zext nneg i32 %527 to i64
  %543 = zext nneg i32 %524 to i64
  %544 = zext nneg i32 %524 to i64
  %545 = zext nneg i32 %524 to i64
  %546 = zext nneg i32 %524 to i64
  %547 = zext nneg i32 %524 to i64
  %548 = zext nneg i32 %524 to i64
  %549 = zext nneg i32 %524 to i64
  %550 = zext nneg i32 %524 to i64
  %551 = zext nneg i32 %524 to i64
  br label %608

552:                                              ; preds = %514
  br i1 %94, label %796, label %553

553:                                              ; preds = %552
  %554 = getelementptr inbounds %struct.CCGEdge, ptr %505, i64 1
  %555 = load i32, ptr %100, align 4, !tbaa !104
  %556 = icmp sgt i32 %555, 0
  %557 = icmp sgt i32 %555, 0
  %558 = icmp sgt i32 %555, 0
  %559 = zext nneg i32 %555 to i64
  %560 = zext nneg i32 %555 to i64
  %561 = zext nneg i32 %555 to i64
  br label %564

562:                                              ; preds = %599, %589
  %563 = icmp eq i64 %569, %109
  br i1 %563, label %796, label %564, !llvm.loop !261

564:                                              ; preds = %553, %562
  %565 = phi i64 [ 0, %553 ], [ %569, %562 ]
  %566 = add nsw i64 %565, %104
  %567 = mul nsw i64 %566, %105
  %568 = getelementptr inbounds i8, ptr %554, i64 %567
  %569 = add nuw nsw i64 %565, 1
  %570 = trunc i64 %565 to i32
  %571 = add i32 %95, %570
  %572 = mul nsw i32 %571, %16
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, ptr %554, i64 %573
  %575 = trunc i64 %565 to i32
  %576 = shl i32 %575, 1
  %577 = add i32 %99, %576
  %578 = mul nsw i32 %577, %16
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, ptr %554, i64 %579
  br i1 %556, label %582, label %581

581:                                              ; preds = %582, %564
  br i1 %557, label %590, label %589

582:                                              ; preds = %564, %582
  %583 = phi i64 [ %587, %582 ], [ 0, %564 ]
  %584 = getelementptr inbounds float, ptr %568, i64 %583
  %585 = load float, ptr %584, align 4, !tbaa !95
  %586 = getelementptr inbounds float, ptr %580, i64 %583
  store float %585, ptr %586, align 4, !tbaa !95
  %587 = add nuw nsw i64 %583, 1
  %588 = icmp eq i64 %587, %559
  br i1 %588, label %581, label %582, !llvm.loop !124

589:                                              ; preds = %590, %581
  br i1 %558, label %599, label %562

590:                                              ; preds = %581, %590
  %591 = phi i64 [ %597, %590 ], [ 0, %581 ]
  %592 = getelementptr inbounds float, ptr %574, i64 %591
  %593 = load float, ptr %592, align 4, !tbaa !95
  %594 = getelementptr inbounds float, ptr %580, i64 %591
  %595 = load float, ptr %594, align 4, !tbaa !95
  %596 = fadd float %593, %595
  store float %596, ptr %594, align 4, !tbaa !95
  %597 = add nuw nsw i64 %591, 1
  %598 = icmp eq i64 %597, %560
  br i1 %598, label %589, label %590, !llvm.loop !152

599:                                              ; preds = %589, %599
  %600 = phi i64 [ %604, %599 ], [ 0, %589 ]
  %601 = getelementptr inbounds float, ptr %580, i64 %600
  %602 = load float, ptr %601, align 4, !tbaa !95
  %603 = fmul float %602, 5.000000e-01
  store float %603, ptr %601, align 4, !tbaa !95
  %604 = add nuw nsw i64 %600, 1
  %605 = icmp eq i64 %604, %561
  br i1 %605, label %562, label %599, !llvm.loop !154

606:                                              ; preds = %787, %779
  %607 = icmp eq i64 %615, %108
  br i1 %607, label %796, label %608, !llvm.loop !262

608:                                              ; preds = %522, %606
  %609 = phi i64 [ 0, %522 ], [ %615, %606 ]
  %610 = shl nuw nsw i64 %609, 1
  %611 = or disjoint i64 %610, 1
  %612 = add nsw i64 %609, %101
  %613 = mul nsw i64 %612, %102
  %614 = getelementptr inbounds i8, ptr %523, i64 %613
  %615 = add nuw nsw i64 %609, 1
  %616 = trunc i64 %609 to i32
  %617 = add i32 %77, %616
  %618 = mul nsw i32 %617, %16
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, ptr %523, i64 %619
  %621 = trunc i64 %611 to i32
  %622 = add nsw i32 %80, %621
  %623 = mul nsw i32 %622, %16
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8, ptr %523, i64 %624
  br i1 %525, label %627, label %626

626:                                              ; preds = %627, %608
  br i1 %526, label %641, label %634

627:                                              ; preds = %608, %627
  %628 = phi i64 [ %632, %627 ], [ 0, %608 ]
  %629 = getelementptr inbounds float, ptr %614, i64 %628
  %630 = load float, ptr %629, align 4, !tbaa !95
  %631 = getelementptr inbounds float, ptr %18, i64 %628
  store float %630, ptr %631, align 4, !tbaa !95
  %632 = add nuw nsw i64 %628, 1
  %633 = icmp eq i64 %632, %540
  br i1 %633, label %626, label %627, !llvm.loop !124

634:                                              ; preds = %641, %626
  br i1 %528, label %635, label %722

635:                                              ; preds = %634
  %636 = load ptr, ptr %529, align 8, !tbaa !82
  %637 = trunc i64 %611 to i32
  %638 = shl i32 %637, %85
  %639 = load ptr, ptr %530, align 8, !tbaa !113
  %640 = sub i32 %88, %638
  br label %650

641:                                              ; preds = %626, %641
  %642 = phi i64 [ %648, %641 ], [ 0, %626 ]
  %643 = getelementptr inbounds float, ptr %620, i64 %642
  %644 = load float, ptr %643, align 4, !tbaa !95
  %645 = getelementptr inbounds float, ptr %18, i64 %642
  %646 = load float, ptr %645, align 4, !tbaa !95
  %647 = fadd float %644, %646
  store float %647, ptr %645, align 4, !tbaa !95
  %648 = add nuw nsw i64 %642, 1
  %649 = icmp eq i64 %648, %541
  br i1 %649, label %634, label %641, !llvm.loop !152

650:                                              ; preds = %635, %719
  %651 = phi i64 [ 0, %635 ], [ %720, %719 ]
  %652 = getelementptr inbounds ptr, ptr %636, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !43
  %654 = getelementptr inbounds %struct.CCGFace, ptr %653, i64 0, i32 2
  %655 = load i16, ptr %654, align 8, !tbaa !119
  %656 = sext i16 %655 to i32
  %657 = icmp sgt i16 %655, 0
  br i1 %657, label %658, label %673

658:                                              ; preds = %650
  %659 = getelementptr inbounds %struct.CCGFace, ptr %653, i64 1
  %660 = zext nneg i16 %655 to i64
  %661 = getelementptr inbounds ptr, ptr %659, i64 %660
  %662 = zext nneg i32 %656 to i64
  br label %663

663:                                              ; preds = %658, %668
  %664 = phi i64 [ 0, %658 ], [ %669, %668 ]
  %665 = getelementptr inbounds ptr, ptr %661, i64 %664
  %666 = load ptr, ptr %665, align 8, !tbaa !43
  %667 = icmp eq ptr %666, %505
  br i1 %667, label %671, label %668

668:                                              ; preds = %663
  %669 = add nuw nsw i64 %664, 1
  %670 = icmp eq i64 %669, %662
  br i1 %670, label %673, label %663, !llvm.loop !231

671:                                              ; preds = %663
  %672 = trunc i64 %664 to i32
  br label %673

673:                                              ; preds = %671, %668, %650
  %674 = phi i32 [ -1, %650 ], [ %672, %671 ], [ -1, %668 ]
  %675 = getelementptr inbounds %struct.CCGFace, ptr %653, i64 1
  %676 = sext i32 %674 to i64
  %677 = getelementptr inbounds ptr, ptr %675, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !43
  %679 = icmp eq ptr %639, %678
  %680 = select i1 %679, i32 %638, i32 %640
  %681 = sub nsw i32 %83, %680
  br i1 %90, label %682, label %686

682:                                              ; preds = %673
  %683 = add nsw i32 %656, -1
  %684 = add i32 %683, %674
  %685 = srem i32 %684, %656
  br label %692

686:                                              ; preds = %673
  %687 = icmp slt i32 %681, 0
  br i1 %687, label %688, label %692

688:                                              ; preds = %686
  %689 = add nsw i32 %674, 1
  %690 = srem i32 %689, %656
  %691 = sub nsw i32 0, %681
  br label %692

692:                                              ; preds = %682, %686, %688
  %693 = phi i32 [ %685, %682 ], [ %690, %688 ], [ %674, %686 ]
  %694 = phi i32 [ %681, %682 ], [ %691, %688 ], [ %89, %686 ]
  %695 = phi i32 [ %91, %682 ], [ %89, %688 ], [ %681, %686 ]
  %696 = sext i16 %655 to i64
  %697 = getelementptr inbounds ptr, ptr %675, i64 %696
  %698 = getelementptr inbounds ptr, ptr %697, i64 %696
  %699 = mul nsw i32 %93, %693
  %700 = add nsw i32 %699, 1
  %701 = mul nsw i32 %700, %16
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, ptr %698, i64 %702
  %704 = mul nsw i32 %695, %84
  %705 = add i32 %694, %84
  %706 = add i32 %705, %704
  %707 = mul nsw i32 %706, %16
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8, ptr %703, i64 %708
  br i1 %531, label %710, label %719

710:                                              ; preds = %692, %710
  %711 = phi i64 [ %717, %710 ], [ 0, %692 ]
  %712 = getelementptr inbounds float, ptr %709, i64 %711
  %713 = load float, ptr %712, align 4, !tbaa !95
  %714 = getelementptr inbounds float, ptr %18, i64 %711
  %715 = load float, ptr %714, align 4, !tbaa !95
  %716 = fadd float %713, %715
  store float %716, ptr %714, align 4, !tbaa !95
  %717 = add nuw nsw i64 %711, 1
  %718 = icmp eq i64 %717, %543
  br i1 %718, label %719, label %710, !llvm.loop !152

719:                                              ; preds = %710, %692
  %720 = add nuw nsw i64 %651, 1
  %721 = icmp eq i64 %720, %542
  br i1 %721, label %722, label %650, !llvm.loop !263

722:                                              ; preds = %719, %634
  %723 = phi i32 [ 0, %634 ], [ %527, %719 ]
  %724 = sitofp i32 %723 to float
  %725 = fadd float %724, 2.000000e+00
  %726 = fdiv float 1.000000e+00, %725
  br i1 %532, label %728, label %727

727:                                              ; preds = %728, %722
  br i1 %533, label %736, label %735

728:                                              ; preds = %722, %728
  %729 = phi i64 [ %733, %728 ], [ 0, %722 ]
  %730 = getelementptr inbounds float, ptr %18, i64 %729
  %731 = load float, ptr %730, align 4, !tbaa !95
  %732 = fmul float %726, %731
  store float %732, ptr %730, align 4, !tbaa !95
  %733 = add nuw nsw i64 %729, 1
  %734 = icmp eq i64 %733, %544
  br i1 %734, label %727, label %728, !llvm.loop !154

735:                                              ; preds = %736, %727
  br i1 %534, label %744, label %743

736:                                              ; preds = %727, %736
  %737 = phi i64 [ %741, %736 ], [ 0, %727 ]
  %738 = getelementptr inbounds float, ptr %614, i64 %737
  %739 = load float, ptr %738, align 4, !tbaa !95
  %740 = getelementptr inbounds float, ptr %20, i64 %737
  store float %739, ptr %740, align 4, !tbaa !95
  %741 = add nuw nsw i64 %737, 1
  %742 = icmp eq i64 %741, %545
  br i1 %742, label %735, label %736, !llvm.loop !124

743:                                              ; preds = %744, %735
  br i1 %535, label %754, label %753

744:                                              ; preds = %735, %744
  %745 = phi i64 [ %751, %744 ], [ 0, %735 ]
  %746 = getelementptr inbounds float, ptr %620, i64 %745
  %747 = load float, ptr %746, align 4, !tbaa !95
  %748 = getelementptr inbounds float, ptr %20, i64 %745
  %749 = load float, ptr %748, align 4, !tbaa !95
  %750 = fadd float %747, %749
  store float %750, ptr %748, align 4, !tbaa !95
  %751 = add nuw nsw i64 %745, 1
  %752 = icmp eq i64 %751, %546
  br i1 %752, label %743, label %744, !llvm.loop !152

753:                                              ; preds = %754, %743
  br i1 %536, label %762, label %761

754:                                              ; preds = %743, %754
  %755 = phi i64 [ %759, %754 ], [ 0, %743 ]
  %756 = getelementptr inbounds float, ptr %20, i64 %755
  %757 = load float, ptr %756, align 4, !tbaa !95
  %758 = fmul float %757, 5.000000e-01
  store float %758, ptr %756, align 4, !tbaa !95
  %759 = add nuw nsw i64 %755, 1
  %760 = icmp eq i64 %759, %547
  br i1 %760, label %753, label %754, !llvm.loop !154

761:                                              ; preds = %762, %753
  br i1 %537, label %770, label %769

762:                                              ; preds = %753, %762
  %763 = phi i64 [ %767, %762 ], [ 0, %753 ]
  %764 = getelementptr inbounds float, ptr %18, i64 %763
  %765 = load float, ptr %764, align 4, !tbaa !95
  %766 = getelementptr inbounds float, ptr %625, i64 %763
  store float %765, ptr %766, align 4, !tbaa !95
  %767 = add nuw nsw i64 %763, 1
  %768 = icmp eq i64 %767, %548
  br i1 %768, label %761, label %762, !llvm.loop !124

769:                                              ; preds = %770, %761
  br i1 %538, label %780, label %779

770:                                              ; preds = %761, %770
  %771 = phi i64 [ %777, %770 ], [ 0, %761 ]
  %772 = getelementptr inbounds float, ptr %18, i64 %771
  %773 = load float, ptr %772, align 4, !tbaa !95
  %774 = getelementptr inbounds float, ptr %20, i64 %771
  %775 = load float, ptr %774, align 4, !tbaa !95
  %776 = fsub float %775, %773
  store float %776, ptr %774, align 4, !tbaa !95
  %777 = add nuw nsw i64 %771, 1
  %778 = icmp eq i64 %777, %549
  br i1 %778, label %769, label %770, !llvm.loop !157

779:                                              ; preds = %780, %769
  br i1 %539, label %787, label %606

780:                                              ; preds = %769, %780
  %781 = phi i64 [ %785, %780 ], [ 0, %769 ]
  %782 = getelementptr inbounds float, ptr %20, i64 %781
  %783 = load float, ptr %782, align 4, !tbaa !95
  %784 = fmul float %515, %783
  store float %784, ptr %782, align 4, !tbaa !95
  %785 = add nuw nsw i64 %781, 1
  %786 = icmp eq i64 %785, %550
  br i1 %786, label %779, label %780, !llvm.loop !154

787:                                              ; preds = %779, %787
  %788 = phi i64 [ %794, %787 ], [ 0, %779 ]
  %789 = getelementptr inbounds float, ptr %20, i64 %788
  %790 = load float, ptr %789, align 4, !tbaa !95
  %791 = getelementptr inbounds float, ptr %625, i64 %788
  %792 = load float, ptr %791, align 4, !tbaa !95
  %793 = fadd float %790, %792
  store float %793, ptr %791, align 4, !tbaa !95
  %794 = add nuw nsw i64 %788, 1
  %795 = icmp eq i64 %794, %551
  br i1 %795, label %606, label %787, !llvm.loop !152

796:                                              ; preds = %606, %562, %521, %552
  %797 = add nuw nsw i64 %503, 1
  %798 = icmp eq i64 %797, %107
  br i1 %798, label %444, label %502, !llvm.loop !264

799:                                              ; preds = %1479, %444
  %800 = icmp sgt i32 %5, 0
  br i1 %800, label %801, label %2029

801:                                              ; preds = %799
  %802 = icmp eq i32 %7, 0
  %803 = sitofp i32 %7 to float
  %804 = icmp sgt i32 %11, 1
  %805 = add i32 %11, %7
  %806 = add nsw i32 %805, -1
  %807 = shl nuw i32 1, %14
  %808 = add i32 %807, %7
  %809 = add i32 %805, -2
  %810 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %811 = icmp sgt i32 %11, 1
  %812 = add nsw i32 %11, %7
  %813 = add nsw i32 %812, -1
  %814 = shl nuw i32 1, %14
  %815 = add i32 %814, %7
  %816 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %817 = add i32 %812, -2
  %818 = add nsw i32 %10, -1
  %819 = shl nuw i32 1, %818
  %820 = add nuw nsw i32 %819, 1
  %821 = sub nsw i32 %10, %14
  %822 = shl nsw i32 -1, %821
  %823 = shl nsw i32 %820, 1
  %824 = add nsw i32 %823, -2
  %825 = add i32 %822, %819
  %826 = icmp slt i32 %825, 0
  %827 = sub nsw i32 0, %825
  %828 = add nuw i32 %819, 2
  %829 = mul i32 %820, %828
  %830 = sub nsw i32 0, %825
  %831 = sub nsw i32 %10, %7
  %832 = shl nsw i32 -1, %831
  %833 = add i32 %832, %819
  %834 = icmp slt i32 %833, 0
  %835 = sub nsw i32 0, %833
  %836 = sext i32 %806 to i64
  %837 = sext i32 %16 to i64
  %838 = sext i32 %813 to i64
  %839 = sext i32 %16 to i64
  %840 = zext nneg i32 %5 to i64
  %841 = zext nneg i32 %11 to i64
  %842 = zext nneg i32 %11 to i64
  br label %1482

843:                                              ; preds = %446, %1479
  %844 = phi i64 [ 0, %446 ], [ %1480, %1479 ]
  %845 = getelementptr inbounds ptr, ptr %1, i64 %844
  %846 = load ptr, ptr %845, align 8, !tbaa !43
  %847 = getelementptr %struct.CCGVert, ptr %846, i64 1
  %848 = getelementptr i8, ptr %847, i64 %448
  %849 = getelementptr i8, ptr %847, i64 %450
  %850 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 4
  %851 = load i16, ptr %850, align 4, !tbaa !116
  %852 = lshr i16 %851, 2
  %853 = and i16 %852, 1
  %854 = zext nneg i16 %853 to i32
  %855 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 2
  %856 = load i16, ptr %855, align 8, !tbaa !109
  %857 = sext i16 %856 to i32
  %858 = icmp sgt i16 %856, 0
  br i1 %858, label %859, label %898

859:                                              ; preds = %843
  %860 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 6
  %861 = load ptr, ptr %860, align 8, !tbaa !86
  %862 = icmp eq i16 %853, 0
  %863 = zext nneg i32 %857 to i64
  br label %864

864:                                              ; preds = %859, %888
  %865 = phi i64 [ 0, %859 ], [ %896, %888 ]
  %866 = phi i32 [ 0, %859 ], [ %895, %888 ]
  %867 = phi i32 [ 1, %859 ], [ %893, %888 ]
  %868 = phi float [ 0.000000e+00, %859 ], [ %892, %888 ]
  %869 = phi i32 [ 0, %859 ], [ %889, %888 ]
  %870 = getelementptr inbounds ptr, ptr %861, i64 %865
  %871 = load ptr, ptr %870, align 8, !tbaa !43
  %872 = getelementptr inbounds %struct.CCGEdge, ptr %871, i64 0, i32 4
  %873 = load float, ptr %872, align 4, !tbaa !131
  br i1 %451, label %880, label %874

874:                                              ; preds = %864
  %875 = fcmp une float %873, 0.000000e+00
  br i1 %875, label %876, label %880

876:                                              ; preds = %874
  %877 = fsub float %873, %452
  %878 = fcmp olt float %877, 0.000000e+00
  %879 = select i1 %878, float 0.000000e+00, float %877
  br label %880

880:                                              ; preds = %864, %874, %876
  %881 = phi float [ 0.000000e+00, %874 ], [ %879, %876 ], [ %873, %864 ]
  br i1 %862, label %888, label %882

882:                                              ; preds = %880
  %883 = getelementptr inbounds %struct.CCGEdge, ptr %871, i64 0, i32 2
  %884 = load i16, ptr %883, align 8, !tbaa !111
  %885 = icmp slt i16 %884, 2
  %886 = zext i1 %885 to i32
  %887 = add nsw i32 %869, %886
  br label %888

888:                                              ; preds = %882, %880
  %889 = phi i32 [ %869, %880 ], [ %887, %882 ]
  %890 = fcmp une float %881, 0.000000e+00
  %891 = select i1 %890, float %881, float -0.000000e+00
  %892 = fadd float %868, %891
  %893 = select i1 %890, i32 %867, i32 0
  %894 = zext i1 %890 to i32
  %895 = add nuw nsw i32 %866, %894
  %896 = add nuw nsw i64 %865, 1
  %897 = icmp eq i64 %896, %863
  br i1 %897, label %898, label %864, !llvm.loop !265

898:                                              ; preds = %888, %843
  %899 = phi i32 [ 0, %843 ], [ %889, %888 ]
  %900 = phi float [ 0.000000e+00, %843 ], [ %892, %888 ]
  %901 = phi i32 [ 1, %843 ], [ %893, %888 ]
  %902 = phi i32 [ 0, %843 ], [ %895, %888 ]
  %903 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 2
  %904 = icmp eq i32 %902, 0
  br i1 %904, label %910, label %905

905:                                              ; preds = %898
  %906 = sitofp i32 %902 to float
  %907 = fdiv float %900, %906
  %908 = fcmp ogt float %907, 1.000000e+00
  br i1 %908, label %909, label %910

909:                                              ; preds = %905
  br label %910

910:                                              ; preds = %905, %909, %898
  %911 = phi float [ 1.000000e+00, %909 ], [ %907, %905 ], [ %900, %898 ]
  %912 = icmp sgt i32 %899, 1
  %913 = icmp eq i32 %899, %857
  %914 = and i1 %912, %913
  %915 = select i1 %914, i32 %854, i32 0
  %916 = icmp eq i16 %856, 0
  br i1 %916, label %931, label %917

917:                                              ; preds = %910
  %918 = load i32, ptr %453, align 4, !tbaa !160
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %931

920:                                              ; preds = %917
  %921 = icmp sgt i16 %856, 0
  br i1 %921, label %922, label %1053

922:                                              ; preds = %920
  %923 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 6
  %924 = load ptr, ptr %923, align 8, !tbaa !86
  %925 = zext nneg i16 %856 to i64
  %926 = zext nneg i32 %857 to i64
  %927 = load ptr, ptr %924, align 8, !tbaa !43
  %928 = getelementptr inbounds %struct.CCGEdge, ptr %927, i64 0, i32 2
  %929 = load i16, ptr %928, align 8, !tbaa !111
  %930 = icmp sgt i16 %929, 1
  br i1 %930, label %943, label %955

931:                                              ; preds = %917, %910
  %932 = load i32, ptr %483, align 4, !tbaa !104
  %933 = icmp sgt i32 %932, 0
  br i1 %933, label %934, label %1239

934:                                              ; preds = %931
  %935 = zext nneg i32 %932 to i64
  br label %936

936:                                              ; preds = %934, %936
  %937 = phi i64 [ 0, %934 ], [ %941, %936 ]
  %938 = getelementptr inbounds float, ptr %848, i64 %937
  %939 = load float, ptr %938, align 4, !tbaa !95
  %940 = getelementptr inbounds float, ptr %849, i64 %937
  store float %939, ptr %940, align 4, !tbaa !95
  %941 = add nuw nsw i64 %937, 1
  %942 = icmp eq i64 %941, %935
  br i1 %942, label %1239, label %936, !llvm.loop !124

943:                                              ; preds = %922, %947
  %944 = phi i64 [ %945, %947 ], [ 0, %922 ]
  %945 = add nuw nsw i64 %944, 1
  %946 = icmp eq i64 %945, %926
  br i1 %946, label %1053, label %947, !llvm.loop !161

947:                                              ; preds = %943
  %948 = getelementptr inbounds ptr, ptr %924, i64 %945
  %949 = load ptr, ptr %948, align 8, !tbaa !43
  %950 = getelementptr inbounds %struct.CCGEdge, ptr %949, i64 0, i32 2
  %951 = load i16, ptr %950, align 8, !tbaa !111
  %952 = icmp sgt i16 %951, 1
  br i1 %952, label %943, label %953, !llvm.loop !161

953:                                              ; preds = %947
  %954 = icmp ult i64 %945, %925
  br label %955

955:                                              ; preds = %953, %922
  %956 = phi i1 [ %954, %953 ], [ %921, %922 ]
  br i1 %956, label %957, label %1053

957:                                              ; preds = %955
  %958 = load i32, ptr %454, align 4, !tbaa !104
  %959 = sext i32 %958 to i64
  %960 = shl nsw i64 %959, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %960, i1 false)
  %961 = load i16, ptr %903, align 8, !tbaa !109
  %962 = icmp sgt i16 %961, 0
  br i1 %962, label %963, label %967

963:                                              ; preds = %957
  %964 = zext nneg i16 %961 to i64
  %965 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 6
  %966 = load ptr, ptr %965, align 8, !tbaa !86
  br label %973

967:                                              ; preds = %1005, %957
  %968 = phi i32 [ 0, %957 ], [ %1006, %1005 ]
  %969 = load i32, ptr %454, align 4, !tbaa !104
  %970 = icmp sgt i32 %969, 0
  br i1 %970, label %971, label %1009

971:                                              ; preds = %967
  %972 = zext nneg i32 %969 to i64
  br label %1013

973:                                              ; preds = %963, %1005
  %974 = phi i64 [ 0, %963 ], [ %1007, %1005 ]
  %975 = phi i32 [ 0, %963 ], [ %1006, %1005 ]
  %976 = getelementptr inbounds ptr, ptr %966, i64 %974
  %977 = load ptr, ptr %976, align 8, !tbaa !43
  %978 = getelementptr inbounds %struct.CCGEdge, ptr %977, i64 0, i32 2
  %979 = load i16, ptr %978, align 8, !tbaa !111
  %980 = icmp sgt i16 %979, 1
  br i1 %980, label %1005, label %981

981:                                              ; preds = %973
  %982 = getelementptr inbounds %struct.CCGEdge, ptr %977, i64 0, i32 5
  %983 = load ptr, ptr %982, align 8, !tbaa !113
  %984 = icmp eq ptr %983, %846
  %985 = getelementptr inbounds %struct.CCGEdge, ptr %977, i64 1
  %986 = getelementptr inbounds i8, ptr %985, i64 %461
  %987 = getelementptr inbounds %struct.CCGEdge, ptr %977, i64 1
  %988 = getelementptr inbounds i8, ptr %987, i64 %459
  %989 = select i1 %984, ptr %986, ptr %988
  %990 = load i32, ptr %454, align 4, !tbaa !104
  %991 = icmp sgt i32 %990, 0
  br i1 %991, label %992, label %1003

992:                                              ; preds = %981
  %993 = zext nneg i32 %990 to i64
  br label %994

994:                                              ; preds = %992, %994
  %995 = phi i64 [ 0, %992 ], [ %1001, %994 ]
  %996 = getelementptr inbounds float, ptr %989, i64 %995
  %997 = load float, ptr %996, align 4, !tbaa !95
  %998 = getelementptr inbounds float, ptr %20, i64 %995
  %999 = load float, ptr %998, align 4, !tbaa !95
  %1000 = fadd float %997, %999
  store float %1000, ptr %998, align 4, !tbaa !95
  %1001 = add nuw nsw i64 %995, 1
  %1002 = icmp eq i64 %1001, %993
  br i1 %1002, label %1003, label %994, !llvm.loop !152

1003:                                             ; preds = %994, %981
  %1004 = add nsw i32 %975, 1
  br label %1005

1005:                                             ; preds = %1003, %973
  %1006 = phi i32 [ %1004, %1003 ], [ %975, %973 ]
  %1007 = add nuw nsw i64 %974, 1
  %1008 = icmp eq i64 %1007, %964
  br i1 %1008, label %967, label %973, !llvm.loop !266

1009:                                             ; preds = %1013, %967
  %1010 = icmp sgt i32 %969, 0
  br i1 %1010, label %1011, label %1027

1011:                                             ; preds = %1009
  %1012 = zext nneg i32 %969 to i64
  br label %1020

1013:                                             ; preds = %971, %1013
  %1014 = phi i64 [ 0, %971 ], [ %1018, %1013 ]
  %1015 = getelementptr inbounds float, ptr %848, i64 %1014
  %1016 = load float, ptr %1015, align 4, !tbaa !95
  %1017 = getelementptr inbounds float, ptr %849, i64 %1014
  store float %1016, ptr %1017, align 4, !tbaa !95
  %1018 = add nuw nsw i64 %1014, 1
  %1019 = icmp eq i64 %1018, %972
  br i1 %1019, label %1009, label %1013, !llvm.loop !124

1020:                                             ; preds = %1011, %1020
  %1021 = phi i64 [ 0, %1011 ], [ %1025, %1020 ]
  %1022 = getelementptr inbounds float, ptr %849, i64 %1021
  %1023 = load float, ptr %1022, align 4, !tbaa !95
  %1024 = fmul float %1023, 7.500000e-01
  store float %1024, ptr %1022, align 4, !tbaa !95
  %1025 = add nuw nsw i64 %1021, 1
  %1026 = icmp eq i64 %1025, %1012
  br i1 %1026, label %1027, label %1020, !llvm.loop !154

1027:                                             ; preds = %1020, %1009
  %1028 = sitofp i32 %968 to float
  %1029 = fdiv float 2.500000e-01, %1028
  %1030 = icmp sgt i32 %969, 0
  br i1 %1030, label %1031, label %1033

1031:                                             ; preds = %1027
  %1032 = zext nneg i32 %969 to i64
  br label %1037

1033:                                             ; preds = %1037, %1027
  %1034 = icmp sgt i32 %969, 0
  br i1 %1034, label %1035, label %1239

1035:                                             ; preds = %1033
  %1036 = zext nneg i32 %969 to i64
  br label %1044

1037:                                             ; preds = %1031, %1037
  %1038 = phi i64 [ 0, %1031 ], [ %1042, %1037 ]
  %1039 = getelementptr inbounds float, ptr %20, i64 %1038
  %1040 = load float, ptr %1039, align 4, !tbaa !95
  %1041 = fmul float %1029, %1040
  store float %1041, ptr %1039, align 4, !tbaa !95
  %1042 = add nuw nsw i64 %1038, 1
  %1043 = icmp eq i64 %1042, %1032
  br i1 %1043, label %1033, label %1037, !llvm.loop !154

1044:                                             ; preds = %1035, %1044
  %1045 = phi i64 [ 0, %1035 ], [ %1051, %1044 ]
  %1046 = getelementptr inbounds float, ptr %20, i64 %1045
  %1047 = load float, ptr %1046, align 4, !tbaa !95
  %1048 = getelementptr inbounds float, ptr %849, i64 %1045
  %1049 = load float, ptr %1048, align 4, !tbaa !95
  %1050 = fadd float %1047, %1049
  store float %1050, ptr %1048, align 4, !tbaa !95
  %1051 = add nuw nsw i64 %1045, 1
  %1052 = icmp eq i64 %1051, %1036
  br i1 %1052, label %1239, label %1044, !llvm.loop !152

1053:                                             ; preds = %943, %920, %955
  %1054 = load i32, ptr %462, align 4, !tbaa !104
  %1055 = sext i32 %1054 to i64
  %1056 = shl nsw i64 %1055, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %1056, i1 false)
  %1057 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 3
  %1058 = load i16, ptr %1057, align 2, !tbaa !108
  %1059 = sext i16 %1058 to i32
  %1060 = icmp sgt i16 %1058, 0
  br i1 %1060, label %1061, label %1112

1061:                                             ; preds = %1053
  %1062 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 7
  %1063 = load ptr, ptr %1062, align 8, !tbaa !88
  %1064 = load i32, ptr %462, align 4, !tbaa !104
  %1065 = icmp sgt i32 %1064, 0
  %1066 = zext nneg i32 %1059 to i64
  %1067 = zext nneg i32 %1064 to i64
  br label %1068

1068:                                             ; preds = %1061, %1109
  %1069 = phi i64 [ 0, %1061 ], [ %1110, %1109 ]
  %1070 = getelementptr inbounds ptr, ptr %1063, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !43
  %1072 = getelementptr inbounds %struct.CCGFace, ptr %1071, i64 1
  %1073 = getelementptr inbounds %struct.CCGFace, ptr %1071, i64 0, i32 2
  %1074 = load i16, ptr %1073, align 8, !tbaa !119
  %1075 = icmp sgt i16 %1074, 0
  br i1 %1075, label %1076, label %1088

1076:                                             ; preds = %1068
  %1077 = zext nneg i16 %1074 to i64
  br label %1078

1078:                                             ; preds = %1076, %1083
  %1079 = phi i64 [ 0, %1076 ], [ %1084, %1083 ]
  %1080 = getelementptr inbounds ptr, ptr %1072, i64 %1079
  %1081 = load ptr, ptr %1080, align 8, !tbaa !43
  %1082 = icmp eq ptr %1081, %846
  br i1 %1082, label %1086, label %1083

1083:                                             ; preds = %1078
  %1084 = add nuw nsw i64 %1079, 1
  %1085 = icmp eq i64 %1084, %1077
  br i1 %1085, label %1088, label %1078, !llvm.loop !227

1086:                                             ; preds = %1078
  %1087 = trunc i64 %1079 to i32
  br label %1088

1088:                                             ; preds = %1086, %1083, %1068
  %1089 = phi i32 [ -1, %1068 ], [ %1087, %1086 ], [ -1, %1083 ]
  %1090 = getelementptr inbounds %struct.CCGFace, ptr %1071, i64 1
  %1091 = sext i16 %1074 to i64
  %1092 = getelementptr inbounds ptr, ptr %1090, i64 %1091
  %1093 = getelementptr inbounds ptr, ptr %1092, i64 %1091
  %1094 = mul nsw i32 %469, %1089
  %1095 = add nsw i32 %1094, 1
  %1096 = mul nsw i32 %1095, %16
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds i8, ptr %1093, i64 %1097
  %1099 = getelementptr inbounds i8, ptr %1098, i64 %475
  br i1 %1065, label %1100, label %1109

1100:                                             ; preds = %1088, %1100
  %1101 = phi i64 [ %1107, %1100 ], [ 0, %1088 ]
  %1102 = getelementptr inbounds float, ptr %1099, i64 %1101
  %1103 = load float, ptr %1102, align 4, !tbaa !95
  %1104 = getelementptr inbounds float, ptr %18, i64 %1101
  %1105 = load float, ptr %1104, align 4, !tbaa !95
  %1106 = fadd float %1103, %1105
  store float %1106, ptr %1104, align 4, !tbaa !95
  %1107 = add nuw nsw i64 %1101, 1
  %1108 = icmp eq i64 %1107, %1067
  br i1 %1108, label %1109, label %1100, !llvm.loop !152

1109:                                             ; preds = %1100, %1088
  %1110 = add nuw nsw i64 %1069, 1
  %1111 = icmp eq i64 %1110, %1066
  br i1 %1111, label %1112, label %1068, !llvm.loop !267

1112:                                             ; preds = %1109, %1053
  %1113 = phi i32 [ 0, %1053 ], [ %1059, %1109 ]
  %1114 = sitofp i32 %1113 to float
  %1115 = fdiv float 1.000000e+00, %1114
  %1116 = load i32, ptr %462, align 4, !tbaa !104
  %1117 = icmp sgt i32 %1116, 0
  br i1 %1117, label %1118, label %1127

1118:                                             ; preds = %1112
  %1119 = zext nneg i32 %1116 to i64
  br label %1120

1120:                                             ; preds = %1118, %1120
  %1121 = phi i64 [ 0, %1118 ], [ %1125, %1120 ]
  %1122 = getelementptr inbounds float, ptr %18, i64 %1121
  %1123 = load float, ptr %1122, align 4, !tbaa !95
  %1124 = fmul float %1115, %1123
  store float %1124, ptr %1122, align 4, !tbaa !95
  %1125 = add nuw nsw i64 %1121, 1
  %1126 = icmp eq i64 %1125, %1119
  br i1 %1126, label %1127, label %1120, !llvm.loop !154

1127:                                             ; preds = %1120, %1112
  %1128 = sext i32 %1116 to i64
  %1129 = shl nsw i64 %1128, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %1129, i1 false)
  %1130 = load i16, ptr %903, align 8, !tbaa !109
  %1131 = sext i16 %1130 to i32
  %1132 = icmp sgt i16 %1130, 0
  br i1 %1132, label %1133, label %1164

1133:                                             ; preds = %1127
  %1134 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 6
  %1135 = load ptr, ptr %1134, align 8, !tbaa !86
  %1136 = load i32, ptr %462, align 4, !tbaa !104
  %1137 = icmp sgt i32 %1136, 0
  %1138 = zext nneg i32 %1131 to i64
  %1139 = zext nneg i32 %1136 to i64
  br label %1140

1140:                                             ; preds = %1133, %1161
  %1141 = phi i64 [ 0, %1133 ], [ %1162, %1161 ]
  %1142 = getelementptr inbounds ptr, ptr %1135, i64 %1141
  %1143 = load ptr, ptr %1142, align 8, !tbaa !43
  %1144 = getelementptr inbounds %struct.CCGEdge, ptr %1143, i64 0, i32 5
  %1145 = load ptr, ptr %1144, align 8, !tbaa !113
  %1146 = icmp eq ptr %1145, %846
  %1147 = getelementptr inbounds %struct.CCGEdge, ptr %1143, i64 1
  %1148 = getelementptr inbounds i8, ptr %1147, i64 %482
  %1149 = getelementptr inbounds %struct.CCGEdge, ptr %1143, i64 1
  %1150 = getelementptr inbounds i8, ptr %1149, i64 %480
  %1151 = select i1 %1146, ptr %1148, ptr %1150
  br i1 %1137, label %1152, label %1161

1152:                                             ; preds = %1140, %1152
  %1153 = phi i64 [ %1159, %1152 ], [ 0, %1140 ]
  %1154 = getelementptr inbounds float, ptr %1151, i64 %1153
  %1155 = load float, ptr %1154, align 4, !tbaa !95
  %1156 = getelementptr inbounds float, ptr %20, i64 %1153
  %1157 = load float, ptr %1156, align 4, !tbaa !95
  %1158 = fadd float %1155, %1157
  store float %1158, ptr %1156, align 4, !tbaa !95
  %1159 = add nuw nsw i64 %1153, 1
  %1160 = icmp eq i64 %1159, %1139
  br i1 %1160, label %1161, label %1152, !llvm.loop !152

1161:                                             ; preds = %1152, %1140
  %1162 = add nuw nsw i64 %1141, 1
  %1163 = icmp eq i64 %1162, %1138
  br i1 %1163, label %1164, label %1140, !llvm.loop !268

1164:                                             ; preds = %1161, %1127
  %1165 = phi i32 [ 0, %1127 ], [ %1131, %1161 ]
  %1166 = sitofp i32 %1165 to float
  %1167 = fdiv float 1.000000e+00, %1166
  %1168 = load i32, ptr %462, align 4, !tbaa !104
  %1169 = icmp sgt i32 %1168, 0
  br i1 %1169, label %1170, label %1172

1170:                                             ; preds = %1164
  %1171 = zext nneg i32 %1168 to i64
  br label %1176

1172:                                             ; preds = %1176, %1164
  %1173 = icmp sgt i32 %1168, 0
  br i1 %1173, label %1174, label %1190

1174:                                             ; preds = %1172
  %1175 = zext nneg i32 %1168 to i64
  br label %1183

1176:                                             ; preds = %1170, %1176
  %1177 = phi i64 [ 0, %1170 ], [ %1181, %1176 ]
  %1178 = getelementptr inbounds float, ptr %20, i64 %1177
  %1179 = load float, ptr %1178, align 4, !tbaa !95
  %1180 = fmul float %1167, %1179
  store float %1180, ptr %1178, align 4, !tbaa !95
  %1181 = add nuw nsw i64 %1177, 1
  %1182 = icmp eq i64 %1181, %1171
  br i1 %1182, label %1172, label %1176, !llvm.loop !154

1183:                                             ; preds = %1174, %1183
  %1184 = phi i64 [ 0, %1174 ], [ %1188, %1183 ]
  %1185 = getelementptr inbounds float, ptr %848, i64 %1184
  %1186 = load float, ptr %1185, align 4, !tbaa !95
  %1187 = getelementptr inbounds float, ptr %849, i64 %1184
  store float %1186, ptr %1187, align 4, !tbaa !95
  %1188 = add nuw nsw i64 %1184, 1
  %1189 = icmp eq i64 %1188, %1175
  br i1 %1189, label %1190, label %1183, !llvm.loop !124

1190:                                             ; preds = %1183, %1172
  %1191 = fadd float %1166, -2.000000e+00
  %1192 = icmp sgt i32 %1168, 0
  br i1 %1192, label %1193, label %1195

1193:                                             ; preds = %1190
  %1194 = zext nneg i32 %1168 to i64
  br label %1199

1195:                                             ; preds = %1199, %1190
  %1196 = icmp sgt i32 %1168, 0
  br i1 %1196, label %1197, label %1206

1197:                                             ; preds = %1195
  %1198 = zext nneg i32 %1168 to i64
  br label %1210

1199:                                             ; preds = %1193, %1199
  %1200 = phi i64 [ 0, %1193 ], [ %1204, %1199 ]
  %1201 = getelementptr inbounds float, ptr %849, i64 %1200
  %1202 = load float, ptr %1201, align 4, !tbaa !95
  %1203 = fmul float %1191, %1202
  store float %1203, ptr %1201, align 4, !tbaa !95
  %1204 = add nuw nsw i64 %1200, 1
  %1205 = icmp eq i64 %1204, %1194
  br i1 %1205, label %1195, label %1199, !llvm.loop !154

1206:                                             ; preds = %1210, %1195
  %1207 = icmp sgt i32 %1168, 0
  br i1 %1207, label %1208, label %1219

1208:                                             ; preds = %1206
  %1209 = zext nneg i32 %1168 to i64
  br label %1223

1210:                                             ; preds = %1197, %1210
  %1211 = phi i64 [ 0, %1197 ], [ %1217, %1210 ]
  %1212 = getelementptr inbounds float, ptr %18, i64 %1211
  %1213 = load float, ptr %1212, align 4, !tbaa !95
  %1214 = getelementptr inbounds float, ptr %849, i64 %1211
  %1215 = load float, ptr %1214, align 4, !tbaa !95
  %1216 = fadd float %1213, %1215
  store float %1216, ptr %1214, align 4, !tbaa !95
  %1217 = add nuw nsw i64 %1211, 1
  %1218 = icmp eq i64 %1217, %1198
  br i1 %1218, label %1206, label %1210, !llvm.loop !152

1219:                                             ; preds = %1223, %1206
  %1220 = icmp sgt i32 %1168, 0
  br i1 %1220, label %1221, label %1239

1221:                                             ; preds = %1219
  %1222 = zext nneg i32 %1168 to i64
  br label %1232

1223:                                             ; preds = %1208, %1223
  %1224 = phi i64 [ 0, %1208 ], [ %1230, %1223 ]
  %1225 = getelementptr inbounds float, ptr %20, i64 %1224
  %1226 = load float, ptr %1225, align 4, !tbaa !95
  %1227 = getelementptr inbounds float, ptr %849, i64 %1224
  %1228 = load float, ptr %1227, align 4, !tbaa !95
  %1229 = fadd float %1226, %1228
  store float %1229, ptr %1227, align 4, !tbaa !95
  %1230 = add nuw nsw i64 %1224, 1
  %1231 = icmp eq i64 %1230, %1209
  br i1 %1231, label %1219, label %1223, !llvm.loop !152

1232:                                             ; preds = %1221, %1232
  %1233 = phi i64 [ 0, %1221 ], [ %1237, %1232 ]
  %1234 = getelementptr inbounds float, ptr %849, i64 %1233
  %1235 = load float, ptr %1234, align 4, !tbaa !95
  %1236 = fmul float %1167, %1235
  store float %1236, ptr %1234, align 4, !tbaa !95
  %1237 = add nuw nsw i64 %1233, 1
  %1238 = icmp eq i64 %1237, %1222
  br i1 %1238, label %1239, label %1232, !llvm.loop !154

1239:                                             ; preds = %1044, %1232, %936, %1219, %1033, %931
  %1240 = icmp ugt i32 %902, 1
  br i1 %1240, label %1241, label %1247

1241:                                             ; preds = %1239
  %1242 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 3
  %1243 = load i16, ptr %1242, align 2, !tbaa !108
  %1244 = icmp ne i16 %1243, 0
  %1245 = icmp ne i32 %915, 0
  %1246 = select i1 %1244, i1 true, i1 %1245
  br i1 %1246, label %1249, label %1479

1247:                                             ; preds = %1239
  %1248 = icmp eq i32 %915, 0
  br i1 %1248, label %1479, label %1249

1249:                                             ; preds = %1247, %1241
  %1250 = load i32, ptr %484, align 4, !tbaa !104
  %1251 = sext i32 %1250 to i64
  %1252 = shl nsw i64 %1251, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %1252, i1 false)
  %1253 = icmp ne i32 %915, 0
  %1254 = select i1 %1253, float 1.000000e+00, float %911
  %1255 = select i1 %1253, i32 %899, i32 %902
  %1256 = load i16, ptr %903, align 8, !tbaa !109
  %1257 = icmp sgt i16 %1256, 0
  br i1 %1257, label %1258, label %1329

1258:                                             ; preds = %1249
  %1259 = zext nneg i16 %1256 to i64
  %1260 = getelementptr inbounds %struct.CCGVert, ptr %846, i64 0, i32 6
  %1261 = load ptr, ptr %1260, align 8, !tbaa !86
  br label %1262

1262:                                             ; preds = %1258, %1326
  %1263 = phi i64 [ 0, %1258 ], [ %1327, %1326 ]
  %1264 = getelementptr inbounds ptr, ptr %1261, i64 %1263
  %1265 = load ptr, ptr %1264, align 8, !tbaa !43
  %1266 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 0, i32 4
  %1267 = load float, ptr %1266, align 4, !tbaa !131
  br i1 %485, label %1274, label %1268

1268:                                             ; preds = %1262
  %1269 = fcmp une float %1267, 0.000000e+00
  br i1 %1269, label %1270, label %1274

1270:                                             ; preds = %1268
  %1271 = fsub float %1267, %486
  %1272 = fcmp olt float %1271, 0.000000e+00
  %1273 = select i1 %1272, float 0.000000e+00, float %1271
  br label %1274

1274:                                             ; preds = %1262, %1268, %1270
  %1275 = phi float [ 0.000000e+00, %1268 ], [ %1273, %1270 ], [ %1267, %1262 ]
  br i1 %1253, label %1276, label %1302

1276:                                             ; preds = %1274
  %1277 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 0, i32 2
  %1278 = load i16, ptr %1277, align 8, !tbaa !111
  %1279 = icmp sgt i16 %1278, 1
  br i1 %1279, label %1326, label %1280

1280:                                             ; preds = %1276
  %1281 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 0, i32 5
  %1282 = load ptr, ptr %1281, align 8, !tbaa !113
  %1283 = icmp eq ptr %1282, %846
  %1284 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 1
  %1285 = getelementptr inbounds i8, ptr %1284, i64 %500
  %1286 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 1
  %1287 = getelementptr inbounds i8, ptr %1286, i64 %498
  %1288 = select i1 %1283, ptr %1285, ptr %1287
  %1289 = load i32, ptr %484, align 4, !tbaa !104
  %1290 = icmp sgt i32 %1289, 0
  br i1 %1290, label %1291, label %1326

1291:                                             ; preds = %1280
  %1292 = zext nneg i32 %1289 to i64
  br label %1293

1293:                                             ; preds = %1291, %1293
  %1294 = phi i64 [ 0, %1291 ], [ %1300, %1293 ]
  %1295 = getelementptr inbounds float, ptr %1288, i64 %1294
  %1296 = load float, ptr %1295, align 4, !tbaa !95
  %1297 = getelementptr inbounds float, ptr %18, i64 %1294
  %1298 = load float, ptr %1297, align 4, !tbaa !95
  %1299 = fadd float %1296, %1298
  store float %1299, ptr %1297, align 4, !tbaa !95
  %1300 = add nuw nsw i64 %1294, 1
  %1301 = icmp eq i64 %1300, %1292
  br i1 %1301, label %1326, label %1293, !llvm.loop !152

1302:                                             ; preds = %1274
  %1303 = fcmp une float %1275, 0.000000e+00
  br i1 %1303, label %1304, label %1326

1304:                                             ; preds = %1302
  %1305 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 0, i32 5
  %1306 = load ptr, ptr %1305, align 8, !tbaa !113
  %1307 = icmp eq ptr %1306, %846
  %1308 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 1
  %1309 = getelementptr inbounds i8, ptr %1308, i64 %493
  %1310 = getelementptr inbounds %struct.CCGEdge, ptr %1265, i64 1
  %1311 = getelementptr inbounds i8, ptr %1310, i64 %491
  %1312 = select i1 %1307, ptr %1309, ptr %1311
  %1313 = load i32, ptr %484, align 4, !tbaa !104
  %1314 = icmp sgt i32 %1313, 0
  br i1 %1314, label %1315, label %1326

1315:                                             ; preds = %1304
  %1316 = zext nneg i32 %1313 to i64
  br label %1317

1317:                                             ; preds = %1315, %1317
  %1318 = phi i64 [ 0, %1315 ], [ %1324, %1317 ]
  %1319 = getelementptr inbounds float, ptr %1312, i64 %1318
  %1320 = load float, ptr %1319, align 4, !tbaa !95
  %1321 = getelementptr inbounds float, ptr %18, i64 %1318
  %1322 = load float, ptr %1321, align 4, !tbaa !95
  %1323 = fadd float %1320, %1322
  store float %1323, ptr %1321, align 4, !tbaa !95
  %1324 = add nuw nsw i64 %1318, 1
  %1325 = icmp eq i64 %1324, %1316
  br i1 %1325, label %1326, label %1317, !llvm.loop !152

1326:                                             ; preds = %1317, %1293, %1304, %1280, %1302, %1276
  %1327 = add nuw nsw i64 %1263, 1
  %1328 = icmp eq i64 %1327, %1259
  br i1 %1328, label %1329, label %1262, !llvm.loop !269

1329:                                             ; preds = %1326, %1249
  %1330 = sitofp i32 %1255 to float
  %1331 = fdiv float 1.000000e+00, %1330
  %1332 = load i32, ptr %484, align 4, !tbaa !104
  %1333 = icmp sgt i32 %1332, 0
  br i1 %1333, label %1334, label %1343

1334:                                             ; preds = %1329
  %1335 = zext nneg i32 %1332 to i64
  br label %1336

1336:                                             ; preds = %1334, %1336
  %1337 = phi i64 [ 0, %1334 ], [ %1341, %1336 ]
  %1338 = getelementptr inbounds float, ptr %18, i64 %1337
  %1339 = load float, ptr %1338, align 4, !tbaa !95
  %1340 = fmul float %1331, %1339
  store float %1340, ptr %1338, align 4, !tbaa !95
  %1341 = add nuw nsw i64 %1337, 1
  %1342 = icmp eq i64 %1341, %1335
  br i1 %1342, label %1343, label %1336, !llvm.loop !154

1343:                                             ; preds = %1336, %1329
  %1344 = icmp ne i32 %1255, 2
  %1345 = icmp ne i32 %901, 0
  %1346 = or i1 %1253, %1344
  %1347 = select i1 %1346, i1 true, i1 %1345
  br i1 %1347, label %1348, label %1396

1348:                                             ; preds = %1343
  %1349 = icmp sgt i32 %1332, 0
  br i1 %1349, label %1350, label %1352

1350:                                             ; preds = %1348
  %1351 = zext nneg i32 %1332 to i64
  br label %1356

1352:                                             ; preds = %1356, %1348
  %1353 = icmp sgt i32 %1332, 0
  br i1 %1353, label %1354, label %1363

1354:                                             ; preds = %1352
  %1355 = zext nneg i32 %1332 to i64
  br label %1367

1356:                                             ; preds = %1350, %1356
  %1357 = phi i64 [ 0, %1350 ], [ %1361, %1356 ]
  %1358 = getelementptr inbounds float, ptr %848, i64 %1357
  %1359 = load float, ptr %1358, align 4, !tbaa !95
  %1360 = getelementptr inbounds float, ptr %20, i64 %1357
  store float %1359, ptr %1360, align 4, !tbaa !95
  %1361 = add nuw nsw i64 %1357, 1
  %1362 = icmp eq i64 %1361, %1351
  br i1 %1362, label %1352, label %1356, !llvm.loop !124

1363:                                             ; preds = %1367, %1352
  %1364 = icmp sgt i32 %1332, 0
  br i1 %1364, label %1365, label %1376

1365:                                             ; preds = %1363
  %1366 = zext nneg i32 %1332 to i64
  br label %1380

1367:                                             ; preds = %1354, %1367
  %1368 = phi i64 [ 0, %1354 ], [ %1374, %1367 ]
  %1369 = getelementptr inbounds float, ptr %18, i64 %1368
  %1370 = load float, ptr %1369, align 4, !tbaa !95
  %1371 = getelementptr inbounds float, ptr %20, i64 %1368
  %1372 = load float, ptr %1371, align 4, !tbaa !95
  %1373 = fsub float %1372, %1370
  store float %1373, ptr %1371, align 4, !tbaa !95
  %1374 = add nuw nsw i64 %1368, 1
  %1375 = icmp eq i64 %1374, %1355
  br i1 %1375, label %1363, label %1367, !llvm.loop !157

1376:                                             ; preds = %1380, %1363
  %1377 = icmp sgt i32 %1332, 0
  br i1 %1377, label %1378, label %1396

1378:                                             ; preds = %1376
  %1379 = zext nneg i32 %1332 to i64
  br label %1387

1380:                                             ; preds = %1365, %1380
  %1381 = phi i64 [ 0, %1365 ], [ %1385, %1380 ]
  %1382 = getelementptr inbounds float, ptr %20, i64 %1381
  %1383 = load float, ptr %1382, align 4, !tbaa !95
  %1384 = fmul float %1254, %1383
  store float %1384, ptr %1382, align 4, !tbaa !95
  %1385 = add nuw nsw i64 %1381, 1
  %1386 = icmp eq i64 %1385, %1366
  br i1 %1386, label %1376, label %1380, !llvm.loop !154

1387:                                             ; preds = %1378, %1387
  %1388 = phi i64 [ 0, %1378 ], [ %1394, %1387 ]
  %1389 = getelementptr inbounds float, ptr %20, i64 %1388
  %1390 = load float, ptr %1389, align 4, !tbaa !95
  %1391 = getelementptr inbounds float, ptr %18, i64 %1388
  %1392 = load float, ptr %1391, align 4, !tbaa !95
  %1393 = fadd float %1390, %1392
  store float %1393, ptr %1391, align 4, !tbaa !95
  %1394 = add nuw nsw i64 %1388, 1
  %1395 = icmp eq i64 %1394, %1379
  br i1 %1395, label %1396, label %1387, !llvm.loop !152

1396:                                             ; preds = %1387, %1376, %1343
  %1397 = icmp sgt i32 %1332, 0
  br i1 %1397, label %1398, label %1400

1398:                                             ; preds = %1396
  %1399 = zext nneg i32 %1332 to i64
  br label %1404

1400:                                             ; preds = %1404, %1396
  %1401 = icmp sgt i32 %1332, 0
  br i1 %1401, label %1402, label %1411

1402:                                             ; preds = %1400
  %1403 = zext nneg i32 %1332 to i64
  br label %1415

1404:                                             ; preds = %1398, %1404
  %1405 = phi i64 [ 0, %1398 ], [ %1409, %1404 ]
  %1406 = getelementptr inbounds float, ptr %848, i64 %1405
  %1407 = load float, ptr %1406, align 4, !tbaa !95
  %1408 = getelementptr inbounds float, ptr %20, i64 %1405
  store float %1407, ptr %1408, align 4, !tbaa !95
  %1409 = add nuw nsw i64 %1405, 1
  %1410 = icmp eq i64 %1409, %1399
  br i1 %1410, label %1400, label %1404, !llvm.loop !124

1411:                                             ; preds = %1415, %1400
  %1412 = icmp sgt i32 %1332, 0
  br i1 %1412, label %1413, label %1422

1413:                                             ; preds = %1411
  %1414 = zext nneg i32 %1332 to i64
  br label %1426

1415:                                             ; preds = %1402, %1415
  %1416 = phi i64 [ 0, %1402 ], [ %1420, %1415 ]
  %1417 = getelementptr inbounds float, ptr %20, i64 %1416
  %1418 = load float, ptr %1417, align 4, !tbaa !95
  %1419 = fmul float %1418, 7.500000e-01
  store float %1419, ptr %1417, align 4, !tbaa !95
  %1420 = add nuw nsw i64 %1416, 1
  %1421 = icmp eq i64 %1420, %1403
  br i1 %1421, label %1411, label %1415, !llvm.loop !154

1422:                                             ; preds = %1426, %1411
  %1423 = icmp sgt i32 %1332, 0
  br i1 %1423, label %1424, label %1433

1424:                                             ; preds = %1422
  %1425 = zext nneg i32 %1332 to i64
  br label %1437

1426:                                             ; preds = %1413, %1426
  %1427 = phi i64 [ 0, %1413 ], [ %1431, %1426 ]
  %1428 = getelementptr inbounds float, ptr %18, i64 %1427
  %1429 = load float, ptr %1428, align 4, !tbaa !95
  %1430 = fmul float %1429, 2.500000e-01
  store float %1430, ptr %1428, align 4, !tbaa !95
  %1431 = add nuw nsw i64 %1427, 1
  %1432 = icmp eq i64 %1431, %1414
  br i1 %1432, label %1422, label %1426, !llvm.loop !154

1433:                                             ; preds = %1437, %1422
  %1434 = icmp sgt i32 %1332, 0
  br i1 %1434, label %1435, label %1446

1435:                                             ; preds = %1433
  %1436 = zext nneg i32 %1332 to i64
  br label %1450

1437:                                             ; preds = %1424, %1437
  %1438 = phi i64 [ 0, %1424 ], [ %1444, %1437 ]
  %1439 = getelementptr inbounds float, ptr %18, i64 %1438
  %1440 = load float, ptr %1439, align 4, !tbaa !95
  %1441 = getelementptr inbounds float, ptr %20, i64 %1438
  %1442 = load float, ptr %1441, align 4, !tbaa !95
  %1443 = fadd float %1440, %1442
  store float %1443, ptr %1441, align 4, !tbaa !95
  %1444 = add nuw nsw i64 %1438, 1
  %1445 = icmp eq i64 %1444, %1425
  br i1 %1445, label %1433, label %1437, !llvm.loop !152

1446:                                             ; preds = %1450, %1433
  %1447 = icmp sgt i32 %1332, 0
  br i1 %1447, label %1448, label %1459

1448:                                             ; preds = %1446
  %1449 = zext nneg i32 %1332 to i64
  br label %1463

1450:                                             ; preds = %1435, %1450
  %1451 = phi i64 [ 0, %1435 ], [ %1457, %1450 ]
  %1452 = getelementptr inbounds float, ptr %849, i64 %1451
  %1453 = load float, ptr %1452, align 4, !tbaa !95
  %1454 = getelementptr inbounds float, ptr %20, i64 %1451
  %1455 = load float, ptr %1454, align 4, !tbaa !95
  %1456 = fsub float %1455, %1453
  store float %1456, ptr %1454, align 4, !tbaa !95
  %1457 = add nuw nsw i64 %1451, 1
  %1458 = icmp eq i64 %1457, %1436
  br i1 %1458, label %1446, label %1450, !llvm.loop !157

1459:                                             ; preds = %1463, %1446
  %1460 = icmp sgt i32 %1332, 0
  br i1 %1460, label %1461, label %1479

1461:                                             ; preds = %1459
  %1462 = zext nneg i32 %1332 to i64
  br label %1470

1463:                                             ; preds = %1448, %1463
  %1464 = phi i64 [ 0, %1448 ], [ %1468, %1463 ]
  %1465 = getelementptr inbounds float, ptr %20, i64 %1464
  %1466 = load float, ptr %1465, align 4, !tbaa !95
  %1467 = fmul float %1254, %1466
  store float %1467, ptr %1465, align 4, !tbaa !95
  %1468 = add nuw nsw i64 %1464, 1
  %1469 = icmp eq i64 %1468, %1449
  br i1 %1469, label %1459, label %1463, !llvm.loop !154

1470:                                             ; preds = %1461, %1470
  %1471 = phi i64 [ 0, %1461 ], [ %1477, %1470 ]
  %1472 = getelementptr inbounds float, ptr %20, i64 %1471
  %1473 = load float, ptr %1472, align 4, !tbaa !95
  %1474 = getelementptr inbounds float, ptr %849, i64 %1471
  %1475 = load float, ptr %1474, align 4, !tbaa !95
  %1476 = fadd float %1473, %1475
  store float %1476, ptr %1474, align 4, !tbaa !95
  %1477 = add nuw nsw i64 %1471, 1
  %1478 = icmp eq i64 %1477, %1462
  br i1 %1478, label %1479, label %1470, !llvm.loop !152

1479:                                             ; preds = %1470, %1459, %1241, %1247
  %1480 = add nuw nsw i64 %844, 1
  %1481 = icmp eq i64 %1480, %501
  br i1 %1481, label %799, label %843, !llvm.loop !270

1482:                                             ; preds = %801, %2026
  %1483 = phi i64 [ 0, %801 ], [ %2027, %2026 ]
  %1484 = getelementptr inbounds ptr, ptr %2, i64 %1483
  %1485 = load ptr, ptr %1484, align 8, !tbaa !43
  %1486 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 0, i32 4
  %1487 = load float, ptr %1486, align 4, !tbaa !131
  br i1 %802, label %1494, label %1488

1488:                                             ; preds = %1482
  %1489 = fcmp une float %1487, 0.000000e+00
  br i1 %1489, label %1490, label %1494

1490:                                             ; preds = %1488
  %1491 = fsub float %1487, %803
  %1492 = fcmp olt float %1491, 0.000000e+00
  %1493 = select i1 %1492, float 0.000000e+00, float %1491
  br label %1494

1494:                                             ; preds = %1482, %1488, %1490
  %1495 = phi float [ 0.000000e+00, %1488 ], [ %1493, %1490 ], [ %1487, %1482 ]
  %1496 = fcmp une float %1495, 0.000000e+00
  br i1 %1496, label %1497, label %1501

1497:                                             ; preds = %1494
  %1498 = fadd float %1495, 0.000000e+00
  %1499 = fcmp ogt float %1498, 1.000000e+00
  br i1 %1499, label %1500, label %1501

1500:                                             ; preds = %1497
  br label %1501

1501:                                             ; preds = %1494, %1497, %1500
  %1502 = phi float [ 1.000000e+00, %1500 ], [ %1498, %1497 ], [ 0.000000e+00, %1494 ]
  %1503 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 0, i32 2
  %1504 = load i16, ptr %1503, align 8, !tbaa !111
  %1505 = icmp sgt i16 %1504, 1
  br i1 %1505, label %1524, label %1506

1506:                                             ; preds = %1501
  br i1 %804, label %1507, label %2026

1507:                                             ; preds = %1506
  %1508 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 1
  %1509 = load i32, ptr %810, align 4, !tbaa !104
  %1510 = icmp sgt i32 %1509, 0
  %1511 = icmp sgt i32 %1509, 0
  %1512 = icmp sgt i32 %1509, 0
  %1513 = icmp sgt i32 %1509, 0
  %1514 = icmp sgt i32 %1509, 0
  %1515 = icmp sgt i32 %1509, 0
  %1516 = icmp sgt i32 %1509, 0
  %1517 = zext nneg i32 %1509 to i64
  %1518 = zext nneg i32 %1509 to i64
  %1519 = zext nneg i32 %1509 to i64
  %1520 = zext nneg i32 %1509 to i64
  %1521 = zext nneg i32 %1509 to i64
  %1522 = zext nneg i32 %1509 to i64
  %1523 = zext nneg i32 %1509 to i64
  br label %1531

1524:                                             ; preds = %1501
  br i1 %811, label %1525, label %2026

1525:                                             ; preds = %1524
  %1526 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 1
  %1527 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 0, i32 7
  %1528 = getelementptr inbounds %struct.CCGEdge, ptr %1485, i64 0, i32 5
  br label %1612

1529:                                             ; preds = %1603, %1595
  %1530 = icmp eq i64 %1555, %841
  br i1 %1530, label %2026, label %1531, !llvm.loop !271

1531:                                             ; preds = %1507, %1529
  %1532 = phi i64 [ 1, %1507 ], [ %1555, %1529 ]
  %1533 = add nsw i64 %1532, %836
  %1534 = mul nsw i64 %1533, %837
  %1535 = getelementptr inbounds i8, ptr %1508, i64 %1534
  %1536 = trunc i64 %1532 to i32
  %1537 = shl i32 %1536, 1
  %1538 = add nsw i32 %808, %1537
  %1539 = mul nsw i32 %1538, %16
  %1540 = sext i32 %1539 to i64
  %1541 = getelementptr inbounds i8, ptr %1508, i64 %1540
  %1542 = trunc i64 %1532 to i32
  %1543 = add i32 %809, %1542
  %1544 = mul nsw i32 %1543, %16
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds i8, ptr %1508, i64 %1545
  br i1 %1510, label %1547, label %1554

1547:                                             ; preds = %1531, %1547
  %1548 = phi i64 [ %1552, %1547 ], [ 0, %1531 ]
  %1549 = getelementptr inbounds float, ptr %1546, i64 %1548
  %1550 = load float, ptr %1549, align 4, !tbaa !95
  %1551 = getelementptr inbounds float, ptr %20, i64 %1548
  store float %1550, ptr %1551, align 4, !tbaa !95
  %1552 = add nuw nsw i64 %1548, 1
  %1553 = icmp eq i64 %1552, %1517
  br i1 %1553, label %1554, label %1547, !llvm.loop !124

1554:                                             ; preds = %1547, %1531
  %1555 = add nuw nsw i64 %1532, 1
  %1556 = trunc i64 %1532 to i32
  %1557 = add i32 %805, %1556
  %1558 = mul nsw i32 %1557, %16
  %1559 = sext i32 %1558 to i64
  %1560 = getelementptr inbounds i8, ptr %1508, i64 %1559
  br i1 %1511, label %1562, label %1561

1561:                                             ; preds = %1562, %1554
  br i1 %1512, label %1572, label %1571

1562:                                             ; preds = %1554, %1562
  %1563 = phi i64 [ %1569, %1562 ], [ 0, %1554 ]
  %1564 = getelementptr inbounds float, ptr %1560, i64 %1563
  %1565 = load float, ptr %1564, align 4, !tbaa !95
  %1566 = getelementptr inbounds float, ptr %20, i64 %1563
  %1567 = load float, ptr %1566, align 4, !tbaa !95
  %1568 = fadd float %1565, %1567
  store float %1568, ptr %1566, align 4, !tbaa !95
  %1569 = add nuw nsw i64 %1563, 1
  %1570 = icmp eq i64 %1569, %1518
  br i1 %1570, label %1561, label %1562, !llvm.loop !152

1571:                                             ; preds = %1572, %1561
  br i1 %1513, label %1580, label %1579

1572:                                             ; preds = %1561, %1572
  %1573 = phi i64 [ %1577, %1572 ], [ 0, %1561 ]
  %1574 = getelementptr inbounds float, ptr %20, i64 %1573
  %1575 = load float, ptr %1574, align 4, !tbaa !95
  %1576 = fmul float %1575, 5.000000e-01
  store float %1576, ptr %1574, align 4, !tbaa !95
  %1577 = add nuw nsw i64 %1573, 1
  %1578 = icmp eq i64 %1577, %1519
  br i1 %1578, label %1571, label %1572, !llvm.loop !154

1579:                                             ; preds = %1580, %1571
  br i1 %1514, label %1588, label %1587

1580:                                             ; preds = %1571, %1580
  %1581 = phi i64 [ %1585, %1580 ], [ 0, %1571 ]
  %1582 = getelementptr inbounds float, ptr %1535, i64 %1581
  %1583 = load float, ptr %1582, align 4, !tbaa !95
  %1584 = getelementptr inbounds float, ptr %1541, i64 %1581
  store float %1583, ptr %1584, align 4, !tbaa !95
  %1585 = add nuw nsw i64 %1581, 1
  %1586 = icmp eq i64 %1585, %1520
  br i1 %1586, label %1579, label %1580, !llvm.loop !124

1587:                                             ; preds = %1588, %1579
  br i1 %1515, label %1596, label %1595

1588:                                             ; preds = %1579, %1588
  %1589 = phi i64 [ %1593, %1588 ], [ 0, %1579 ]
  %1590 = getelementptr inbounds float, ptr %1541, i64 %1589
  %1591 = load float, ptr %1590, align 4, !tbaa !95
  %1592 = fmul float %1591, 7.500000e-01
  store float %1592, ptr %1590, align 4, !tbaa !95
  %1593 = add nuw nsw i64 %1589, 1
  %1594 = icmp eq i64 %1593, %1521
  br i1 %1594, label %1587, label %1588, !llvm.loop !154

1595:                                             ; preds = %1596, %1587
  br i1 %1516, label %1603, label %1529

1596:                                             ; preds = %1587, %1596
  %1597 = phi i64 [ %1601, %1596 ], [ 0, %1587 ]
  %1598 = getelementptr inbounds float, ptr %20, i64 %1597
  %1599 = load float, ptr %1598, align 4, !tbaa !95
  %1600 = fmul float %1599, 2.500000e-01
  store float %1600, ptr %1598, align 4, !tbaa !95
  %1601 = add nuw nsw i64 %1597, 1
  %1602 = icmp eq i64 %1601, %1522
  br i1 %1602, label %1595, label %1596, !llvm.loop !154

1603:                                             ; preds = %1595, %1603
  %1604 = phi i64 [ %1610, %1603 ], [ 0, %1595 ]
  %1605 = getelementptr inbounds float, ptr %20, i64 %1604
  %1606 = load float, ptr %1605, align 4, !tbaa !95
  %1607 = getelementptr inbounds float, ptr %1541, i64 %1604
  %1608 = load float, ptr %1607, align 4, !tbaa !95
  %1609 = fadd float %1606, %1608
  store float %1609, ptr %1607, align 4, !tbaa !95
  %1610 = add nuw nsw i64 %1604, 1
  %1611 = icmp eq i64 %1610, %1523
  br i1 %1611, label %1529, label %1603, !llvm.loop !152

1612:                                             ; preds = %1525, %2024
  %1613 = phi i64 [ 1, %1525 ], [ %1648, %2024 ]
  %1614 = shl nuw nsw i64 %1613, 1
  %1615 = add nsw i64 %1613, %838
  %1616 = mul nsw i64 %1615, %839
  %1617 = getelementptr inbounds i8, ptr %1526, i64 %1616
  %1618 = trunc i64 %1614 to i32
  %1619 = add nsw i32 %815, %1618
  %1620 = mul nsw i32 %1619, %16
  %1621 = sext i32 %1620 to i64
  %1622 = getelementptr inbounds i8, ptr %1526, i64 %1621
  %1623 = load i32, ptr %816, align 4, !tbaa !104
  %1624 = sext i32 %1623 to i64
  %1625 = shl nsw i64 %1624, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %1625, i1 false)
  %1626 = load i32, ptr %816, align 4, !tbaa !104
  %1627 = sext i32 %1626 to i64
  %1628 = shl nsw i64 %1627, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %1628, i1 false)
  %1629 = trunc i64 %1613 to i32
  %1630 = add i32 %817, %1629
  %1631 = mul nsw i32 %1630, %16
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds i8, ptr %1526, i64 %1632
  %1634 = load i32, ptr %816, align 4, !tbaa !104
  %1635 = icmp sgt i32 %1634, 0
  br i1 %1635, label %1636, label %1647

1636:                                             ; preds = %1612
  %1637 = zext nneg i32 %1634 to i64
  br label %1638

1638:                                             ; preds = %1636, %1638
  %1639 = phi i64 [ 0, %1636 ], [ %1645, %1638 ]
  %1640 = getelementptr inbounds float, ptr %1633, i64 %1639
  %1641 = load float, ptr %1640, align 4, !tbaa !95
  %1642 = getelementptr inbounds float, ptr %20, i64 %1639
  %1643 = load float, ptr %1642, align 4, !tbaa !95
  %1644 = fadd float %1641, %1643
  store float %1644, ptr %1642, align 4, !tbaa !95
  %1645 = add nuw nsw i64 %1639, 1
  %1646 = icmp eq i64 %1645, %1637
  br i1 %1646, label %1647, label %1638, !llvm.loop !152

1647:                                             ; preds = %1638, %1612
  %1648 = add nuw nsw i64 %1613, 1
  %1649 = trunc i64 %1613 to i32
  %1650 = add i32 %812, %1649
  %1651 = mul nsw i32 %1650, %16
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds i8, ptr %1526, i64 %1652
  %1654 = icmp sgt i32 %1634, 0
  br i1 %1654, label %1655, label %1657

1655:                                             ; preds = %1647
  %1656 = zext nneg i32 %1634 to i64
  br label %1682

1657:                                             ; preds = %1682, %1647
  %1658 = load i16, ptr %1503, align 8, !tbaa !111
  %1659 = sext i16 %1658 to i32
  %1660 = icmp sgt i16 %1658, 0
  br i1 %1660, label %1661, label %1837

1661:                                             ; preds = %1657
  %1662 = load ptr, ptr %1527, align 8, !tbaa !82
  %1663 = trunc i64 %1614 to i32
  %1664 = add i32 %1663, -1
  %1665 = shl i32 %1664, %821
  %1666 = load ptr, ptr %1528, align 8, !tbaa !113
  %1667 = sub nsw i32 %824, %1665
  %1668 = icmp sgt i32 %1634, 0
  %1669 = trunc i64 %1614 to i32
  %1670 = or disjoint i32 %1669, 1
  %1671 = shl i32 %1670, %821
  %1672 = sub nsw i32 %824, %1671
  %1673 = icmp sgt i32 %1634, 0
  %1674 = trunc i64 %1613 to i32
  %1675 = shl i32 %1674, %831
  %1676 = sub nsw i32 %824, %1675
  %1677 = icmp sgt i32 %1634, 0
  %1678 = zext nneg i32 %1659 to i64
  %1679 = zext nneg i32 %1634 to i64
  %1680 = zext nneg i32 %1634 to i64
  %1681 = zext nneg i32 %1634 to i64
  br label %1691

1682:                                             ; preds = %1655, %1682
  %1683 = phi i64 [ 0, %1655 ], [ %1689, %1682 ]
  %1684 = getelementptr inbounds float, ptr %1653, i64 %1683
  %1685 = load float, ptr %1684, align 4, !tbaa !95
  %1686 = getelementptr inbounds float, ptr %20, i64 %1683
  %1687 = load float, ptr %1686, align 4, !tbaa !95
  %1688 = fadd float %1685, %1687
  store float %1688, ptr %1686, align 4, !tbaa !95
  %1689 = add nuw nsw i64 %1683, 1
  %1690 = icmp eq i64 %1689, %1656
  br i1 %1690, label %1657, label %1682, !llvm.loop !152

1691:                                             ; preds = %1661, %1834
  %1692 = phi i64 [ 0, %1661 ], [ %1835, %1834 ]
  %1693 = getelementptr inbounds ptr, ptr %1662, i64 %1692
  %1694 = load ptr, ptr %1693, align 8, !tbaa !43
  %1695 = getelementptr inbounds %struct.CCGFace, ptr %1694, i64 0, i32 2
  %1696 = load i16, ptr %1695, align 8, !tbaa !119
  %1697 = sext i16 %1696 to i32
  %1698 = icmp sgt i16 %1696, 0
  br i1 %1698, label %1699, label %1714

1699:                                             ; preds = %1691
  %1700 = getelementptr inbounds %struct.CCGFace, ptr %1694, i64 1
  %1701 = zext nneg i16 %1696 to i64
  %1702 = getelementptr inbounds ptr, ptr %1700, i64 %1701
  %1703 = zext nneg i32 %1697 to i64
  br label %1704

1704:                                             ; preds = %1699, %1709
  %1705 = phi i64 [ 0, %1699 ], [ %1710, %1709 ]
  %1706 = getelementptr inbounds ptr, ptr %1702, i64 %1705
  %1707 = load ptr, ptr %1706, align 8, !tbaa !43
  %1708 = icmp eq ptr %1707, %1485
  br i1 %1708, label %1712, label %1709

1709:                                             ; preds = %1704
  %1710 = add nuw nsw i64 %1705, 1
  %1711 = icmp eq i64 %1710, %1703
  br i1 %1711, label %1714, label %1704, !llvm.loop !231

1712:                                             ; preds = %1704
  %1713 = trunc i64 %1705 to i32
  br label %1714

1714:                                             ; preds = %1712, %1709, %1691
  %1715 = phi i32 [ -1, %1691 ], [ %1713, %1712 ], [ -1, %1709 ]
  %1716 = getelementptr inbounds %struct.CCGFace, ptr %1694, i64 1
  %1717 = sext i32 %1715 to i64
  %1718 = getelementptr inbounds ptr, ptr %1716, i64 %1717
  %1719 = load ptr, ptr %1718, align 8, !tbaa !43
  %1720 = icmp eq ptr %1666, %1719
  %1721 = select i1 %1720, i32 %1665, i32 %1667
  %1722 = sub nsw i32 %819, %1721
  br i1 %826, label %1723, label %1727

1723:                                             ; preds = %1714
  %1724 = add nsw i32 %1697, -1
  %1725 = add i32 %1724, %1715
  %1726 = srem i32 %1725, %1697
  br label %1733

1727:                                             ; preds = %1714
  %1728 = icmp slt i32 %1722, 0
  br i1 %1728, label %1729, label %1733

1729:                                             ; preds = %1727
  %1730 = add nsw i32 %1715, 1
  %1731 = srem i32 %1730, %1697
  %1732 = sub nsw i32 0, %1722
  br label %1733

1733:                                             ; preds = %1723, %1727, %1729
  %1734 = phi i32 [ %1726, %1723 ], [ %1731, %1729 ], [ %1715, %1727 ]
  %1735 = phi i32 [ %1722, %1723 ], [ %1732, %1729 ], [ %825, %1727 ]
  %1736 = phi i32 [ %827, %1723 ], [ %825, %1729 ], [ %1722, %1727 ]
  %1737 = sext i16 %1696 to i64
  %1738 = getelementptr inbounds ptr, ptr %1716, i64 %1737
  %1739 = getelementptr inbounds ptr, ptr %1738, i64 %1737
  %1740 = mul nsw i32 %1734, %829
  %1741 = add nsw i32 %1740, 1
  %1742 = mul nsw i32 %1741, %16
  %1743 = sext i32 %1742 to i64
  %1744 = getelementptr inbounds i8, ptr %1739, i64 %1743
  %1745 = mul nsw i32 %1736, %820
  %1746 = add i32 %1735, %820
  %1747 = add i32 %1746, %1745
  %1748 = mul nsw i32 %1747, %16
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds i8, ptr %1744, i64 %1749
  br i1 %1668, label %1751, label %1760

1751:                                             ; preds = %1733, %1751
  %1752 = phi i64 [ %1758, %1751 ], [ 0, %1733 ]
  %1753 = getelementptr inbounds float, ptr %1750, i64 %1752
  %1754 = load float, ptr %1753, align 4, !tbaa !95
  %1755 = getelementptr inbounds float, ptr %18, i64 %1752
  %1756 = load float, ptr %1755, align 4, !tbaa !95
  %1757 = fadd float %1754, %1756
  store float %1757, ptr %1755, align 4, !tbaa !95
  %1758 = add nuw nsw i64 %1752, 1
  %1759 = icmp eq i64 %1758, %1679
  br i1 %1759, label %1760, label %1751, !llvm.loop !152

1760:                                             ; preds = %1751, %1733
  %1761 = select i1 %1720, i32 %1671, i32 %1672
  %1762 = sub nsw i32 %819, %1761
  br i1 %826, label %1763, label %1767

1763:                                             ; preds = %1760
  %1764 = add nsw i32 %1697, -1
  %1765 = add i32 %1764, %1715
  %1766 = srem i32 %1765, %1697
  br label %1773

1767:                                             ; preds = %1760
  %1768 = icmp slt i32 %1762, 0
  br i1 %1768, label %1769, label %1773

1769:                                             ; preds = %1767
  %1770 = add nsw i32 %1715, 1
  %1771 = srem i32 %1770, %1697
  %1772 = sub nsw i32 0, %1762
  br label %1773

1773:                                             ; preds = %1763, %1767, %1769
  %1774 = phi i32 [ %1766, %1763 ], [ %1771, %1769 ], [ %1715, %1767 ]
  %1775 = phi i32 [ %1762, %1763 ], [ %1772, %1769 ], [ %825, %1767 ]
  %1776 = phi i32 [ %830, %1763 ], [ %825, %1769 ], [ %1762, %1767 ]
  %1777 = mul nsw i32 %1774, %829
  %1778 = add nsw i32 %1777, 1
  %1779 = mul nsw i32 %1778, %16
  %1780 = sext i32 %1779 to i64
  %1781 = getelementptr inbounds i8, ptr %1739, i64 %1780
  %1782 = mul nsw i32 %1776, %820
  %1783 = add i32 %1775, %820
  %1784 = add i32 %1783, %1782
  %1785 = mul nsw i32 %1784, %16
  %1786 = sext i32 %1785 to i64
  %1787 = getelementptr inbounds i8, ptr %1781, i64 %1786
  br i1 %1673, label %1788, label %1797

1788:                                             ; preds = %1773, %1788
  %1789 = phi i64 [ %1795, %1788 ], [ 0, %1773 ]
  %1790 = getelementptr inbounds float, ptr %1787, i64 %1789
  %1791 = load float, ptr %1790, align 4, !tbaa !95
  %1792 = getelementptr inbounds float, ptr %18, i64 %1789
  %1793 = load float, ptr %1792, align 4, !tbaa !95
  %1794 = fadd float %1791, %1793
  store float %1794, ptr %1792, align 4, !tbaa !95
  %1795 = add nuw nsw i64 %1789, 1
  %1796 = icmp eq i64 %1795, %1680
  br i1 %1796, label %1797, label %1788, !llvm.loop !152

1797:                                             ; preds = %1788, %1773
  %1798 = select i1 %1720, i32 %1675, i32 %1676
  %1799 = sub nsw i32 %819, %1798
  br i1 %834, label %1800, label %1804

1800:                                             ; preds = %1797
  %1801 = add nsw i32 %1697, -1
  %1802 = add i32 %1801, %1715
  %1803 = srem i32 %1802, %1697
  br label %1810

1804:                                             ; preds = %1797
  %1805 = icmp slt i32 %1799, 0
  br i1 %1805, label %1806, label %1810

1806:                                             ; preds = %1804
  %1807 = add nsw i32 %1715, 1
  %1808 = srem i32 %1807, %1697
  %1809 = sub nsw i32 0, %1799
  br label %1810

1810:                                             ; preds = %1800, %1804, %1806
  %1811 = phi i32 [ %1803, %1800 ], [ %1808, %1806 ], [ %1715, %1804 ]
  %1812 = phi i32 [ %1799, %1800 ], [ %1809, %1806 ], [ %833, %1804 ]
  %1813 = phi i32 [ %835, %1800 ], [ %833, %1806 ], [ %1799, %1804 ]
  %1814 = mul nsw i32 %1811, %829
  %1815 = add nsw i32 %1814, 1
  %1816 = mul nsw i32 %1815, %16
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds i8, ptr %1739, i64 %1817
  %1819 = mul nsw i32 %1813, %820
  %1820 = add i32 %1812, %820
  %1821 = add i32 %1820, %1819
  %1822 = mul nsw i32 %1821, %16
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds i8, ptr %1818, i64 %1823
  br i1 %1677, label %1825, label %1834

1825:                                             ; preds = %1810, %1825
  %1826 = phi i64 [ %1832, %1825 ], [ 0, %1810 ]
  %1827 = getelementptr inbounds float, ptr %1824, i64 %1826
  %1828 = load float, ptr %1827, align 4, !tbaa !95
  %1829 = getelementptr inbounds float, ptr %20, i64 %1826
  %1830 = load float, ptr %1829, align 4, !tbaa !95
  %1831 = fadd float %1828, %1830
  store float %1831, ptr %1829, align 4, !tbaa !95
  %1832 = add nuw nsw i64 %1826, 1
  %1833 = icmp eq i64 %1832, %1681
  br i1 %1833, label %1834, label %1825, !llvm.loop !152

1834:                                             ; preds = %1825, %1810
  %1835 = add nuw nsw i64 %1692, 1
  %1836 = icmp eq i64 %1835, %1678
  br i1 %1836, label %1837, label %1691, !llvm.loop !272

1837:                                             ; preds = %1834, %1657
  %1838 = phi i32 [ 0, %1657 ], [ %1659, %1834 ]
  %1839 = sitofp i32 %1838 to float
  %1840 = fmul float %1839, 2.000000e+00
  %1841 = fdiv float 1.000000e+00, %1840
  %1842 = icmp sgt i32 %1634, 0
  br i1 %1842, label %1843, label %1852

1843:                                             ; preds = %1837
  %1844 = zext nneg i32 %1634 to i64
  br label %1845

1845:                                             ; preds = %1843, %1845
  %1846 = phi i64 [ 0, %1843 ], [ %1850, %1845 ]
  %1847 = getelementptr inbounds float, ptr %18, i64 %1846
  %1848 = load float, ptr %1847, align 4, !tbaa !95
  %1849 = fmul float %1841, %1848
  store float %1849, ptr %1847, align 4, !tbaa !95
  %1850 = add nuw nsw i64 %1846, 1
  %1851 = icmp eq i64 %1850, %1844
  br i1 %1851, label %1852, label %1845, !llvm.loop !154

1852:                                             ; preds = %1845, %1837
  %1853 = fadd float %1839, 2.000000e+00
  %1854 = fdiv float 1.000000e+00, %1853
  %1855 = icmp sgt i32 %1634, 0
  br i1 %1855, label %1856, label %1858

1856:                                             ; preds = %1852
  %1857 = zext nneg i32 %1634 to i64
  br label %1862

1858:                                             ; preds = %1862, %1852
  %1859 = icmp sgt i32 %1634, 0
  br i1 %1859, label %1860, label %1869

1860:                                             ; preds = %1858
  %1861 = zext nneg i32 %1634 to i64
  br label %1873

1862:                                             ; preds = %1856, %1862
  %1863 = phi i64 [ 0, %1856 ], [ %1867, %1862 ]
  %1864 = getelementptr inbounds float, ptr %20, i64 %1863
  %1865 = load float, ptr %1864, align 4, !tbaa !95
  %1866 = fmul float %1854, %1865
  store float %1866, ptr %1864, align 4, !tbaa !95
  %1867 = add nuw nsw i64 %1863, 1
  %1868 = icmp eq i64 %1867, %1857
  br i1 %1868, label %1858, label %1862, !llvm.loop !154

1869:                                             ; preds = %1873, %1858
  %1870 = icmp sgt i32 %1634, 0
  br i1 %1870, label %1871, label %1880

1871:                                             ; preds = %1869
  %1872 = zext nneg i32 %1634 to i64
  br label %1884

1873:                                             ; preds = %1860, %1873
  %1874 = phi i64 [ 0, %1860 ], [ %1878, %1873 ]
  %1875 = getelementptr inbounds float, ptr %1617, i64 %1874
  %1876 = load float, ptr %1875, align 4, !tbaa !95
  %1877 = getelementptr inbounds float, ptr %1622, i64 %1874
  store float %1876, ptr %1877, align 4, !tbaa !95
  %1878 = add nuw nsw i64 %1874, 1
  %1879 = icmp eq i64 %1878, %1861
  br i1 %1879, label %1869, label %1873, !llvm.loop !124

1880:                                             ; preds = %1884, %1869
  %1881 = icmp sgt i32 %1634, 0
  br i1 %1881, label %1882, label %1891

1882:                                             ; preds = %1880
  %1883 = zext nneg i32 %1634 to i64
  br label %1895

1884:                                             ; preds = %1871, %1884
  %1885 = phi i64 [ 0, %1871 ], [ %1889, %1884 ]
  %1886 = getelementptr inbounds float, ptr %1622, i64 %1885
  %1887 = load float, ptr %1886, align 4, !tbaa !95
  %1888 = fmul float %1887, %1839
  store float %1888, ptr %1886, align 4, !tbaa !95
  %1889 = add nuw nsw i64 %1885, 1
  %1890 = icmp eq i64 %1889, %1872
  br i1 %1890, label %1880, label %1884, !llvm.loop !154

1891:                                             ; preds = %1895, %1880
  %1892 = icmp sgt i32 %1634, 0
  br i1 %1892, label %1893, label %1913

1893:                                             ; preds = %1891
  %1894 = zext nneg i32 %1634 to i64
  br label %1904

1895:                                             ; preds = %1882, %1895
  %1896 = phi i64 [ 0, %1882 ], [ %1902, %1895 ]
  %1897 = getelementptr inbounds float, ptr %18, i64 %1896
  %1898 = load float, ptr %1897, align 4, !tbaa !95
  %1899 = getelementptr inbounds float, ptr %1622, i64 %1896
  %1900 = load float, ptr %1899, align 4, !tbaa !95
  %1901 = fadd float %1898, %1900
  store float %1901, ptr %1899, align 4, !tbaa !95
  %1902 = add nuw nsw i64 %1896, 1
  %1903 = icmp eq i64 %1902, %1883
  br i1 %1903, label %1891, label %1895, !llvm.loop !152

1904:                                             ; preds = %1893, %1904
  %1905 = phi i64 [ 0, %1893 ], [ %1911, %1904 ]
  %1906 = getelementptr inbounds float, ptr %20, i64 %1905
  %1907 = load float, ptr %1906, align 4, !tbaa !95
  %1908 = getelementptr inbounds float, ptr %1622, i64 %1905
  %1909 = load float, ptr %1908, align 4, !tbaa !95
  %1910 = fadd float %1907, %1909
  store float %1910, ptr %1908, align 4, !tbaa !95
  %1911 = add nuw nsw i64 %1905, 1
  %1912 = icmp eq i64 %1911, %1894
  br i1 %1912, label %1913, label %1904, !llvm.loop !152

1913:                                             ; preds = %1904, %1891
  %1914 = add nuw nsw i32 %1838, 2
  %1915 = sitofp i32 %1914 to float
  %1916 = fdiv float 1.000000e+00, %1915
  %1917 = icmp sgt i32 %1634, 0
  br i1 %1917, label %1918, label %1927

1918:                                             ; preds = %1913
  %1919 = zext nneg i32 %1634 to i64
  br label %1920

1920:                                             ; preds = %1918, %1920
  %1921 = phi i64 [ 0, %1918 ], [ %1925, %1920 ]
  %1922 = getelementptr inbounds float, ptr %1622, i64 %1921
  %1923 = load float, ptr %1922, align 4, !tbaa !95
  %1924 = fmul float %1916, %1923
  store float %1924, ptr %1922, align 4, !tbaa !95
  %1925 = add nuw nsw i64 %1921, 1
  %1926 = icmp eq i64 %1925, %1919
  br i1 %1926, label %1927, label %1920, !llvm.loop !154

1927:                                             ; preds = %1920, %1913
  br i1 %1496, label %1928, label %2024

1928:                                             ; preds = %1927
  %1929 = icmp sgt i32 %1634, 0
  br i1 %1929, label %1930, label %1932

1930:                                             ; preds = %1928
  %1931 = zext nneg i32 %1634 to i64
  br label %1936

1932:                                             ; preds = %1936, %1928
  %1933 = icmp sgt i32 %1634, 0
  br i1 %1933, label %1934, label %1943

1934:                                             ; preds = %1932
  %1935 = zext nneg i32 %1634 to i64
  br label %1947

1936:                                             ; preds = %1930, %1936
  %1937 = phi i64 [ 0, %1930 ], [ %1941, %1936 ]
  %1938 = getelementptr inbounds float, ptr %1617, i64 %1937
  %1939 = load float, ptr %1938, align 4, !tbaa !95
  %1940 = getelementptr inbounds float, ptr %18, i64 %1937
  store float %1939, ptr %1940, align 4, !tbaa !95
  %1941 = add nuw nsw i64 %1937, 1
  %1942 = icmp eq i64 %1941, %1931
  br i1 %1942, label %1932, label %1936, !llvm.loop !124

1943:                                             ; preds = %1947, %1932
  %1944 = icmp sgt i32 %1634, 0
  br i1 %1944, label %1945, label %1954

1945:                                             ; preds = %1943
  %1946 = zext nneg i32 %1634 to i64
  br label %1958

1947:                                             ; preds = %1934, %1947
  %1948 = phi i64 [ 0, %1934 ], [ %1952, %1947 ]
  %1949 = getelementptr inbounds float, ptr %18, i64 %1948
  %1950 = load float, ptr %1949, align 4, !tbaa !95
  %1951 = fmul float %1950, 6.000000e+00
  store float %1951, ptr %1949, align 4, !tbaa !95
  %1952 = add nuw nsw i64 %1948, 1
  %1953 = icmp eq i64 %1952, %1935
  br i1 %1953, label %1943, label %1947, !llvm.loop !154

1954:                                             ; preds = %1958, %1943
  %1955 = icmp sgt i32 %1634, 0
  br i1 %1955, label %1956, label %1967

1956:                                             ; preds = %1954
  %1957 = zext nneg i32 %1634 to i64
  br label %1971

1958:                                             ; preds = %1945, %1958
  %1959 = phi i64 [ 0, %1945 ], [ %1965, %1958 ]
  %1960 = getelementptr inbounds float, ptr %1633, i64 %1959
  %1961 = load float, ptr %1960, align 4, !tbaa !95
  %1962 = getelementptr inbounds float, ptr %18, i64 %1959
  %1963 = load float, ptr %1962, align 4, !tbaa !95
  %1964 = fadd float %1961, %1963
  store float %1964, ptr %1962, align 4, !tbaa !95
  %1965 = add nuw nsw i64 %1959, 1
  %1966 = icmp eq i64 %1965, %1946
  br i1 %1966, label %1954, label %1958, !llvm.loop !152

1967:                                             ; preds = %1971, %1954
  %1968 = icmp sgt i32 %1634, 0
  br i1 %1968, label %1969, label %1980

1969:                                             ; preds = %1967
  %1970 = zext nneg i32 %1634 to i64
  br label %1984

1971:                                             ; preds = %1956, %1971
  %1972 = phi i64 [ 0, %1956 ], [ %1978, %1971 ]
  %1973 = getelementptr inbounds float, ptr %1653, i64 %1972
  %1974 = load float, ptr %1973, align 4, !tbaa !95
  %1975 = getelementptr inbounds float, ptr %18, i64 %1972
  %1976 = load float, ptr %1975, align 4, !tbaa !95
  %1977 = fadd float %1974, %1976
  store float %1977, ptr %1975, align 4, !tbaa !95
  %1978 = add nuw nsw i64 %1972, 1
  %1979 = icmp eq i64 %1978, %1957
  br i1 %1979, label %1967, label %1971, !llvm.loop !152

1980:                                             ; preds = %1984, %1967
  %1981 = icmp sgt i32 %1634, 0
  br i1 %1981, label %1982, label %1991

1982:                                             ; preds = %1980
  %1983 = zext nneg i32 %1634 to i64
  br label %1995

1984:                                             ; preds = %1969, %1984
  %1985 = phi i64 [ 0, %1969 ], [ %1989, %1984 ]
  %1986 = getelementptr inbounds float, ptr %18, i64 %1985
  %1987 = load float, ptr %1986, align 4, !tbaa !95
  %1988 = fmul float %1987, 1.250000e-01
  store float %1988, ptr %1986, align 4, !tbaa !95
  %1989 = add nuw nsw i64 %1985, 1
  %1990 = icmp eq i64 %1989, %1970
  br i1 %1990, label %1980, label %1984, !llvm.loop !154

1991:                                             ; preds = %1995, %1980
  %1992 = icmp sgt i32 %1634, 0
  br i1 %1992, label %1993, label %2004

1993:                                             ; preds = %1991
  %1994 = zext nneg i32 %1634 to i64
  br label %2008

1995:                                             ; preds = %1982, %1995
  %1996 = phi i64 [ 0, %1982 ], [ %2002, %1995 ]
  %1997 = getelementptr inbounds float, ptr %1622, i64 %1996
  %1998 = load float, ptr %1997, align 4, !tbaa !95
  %1999 = getelementptr inbounds float, ptr %18, i64 %1996
  %2000 = load float, ptr %1999, align 4, !tbaa !95
  %2001 = fsub float %2000, %1998
  store float %2001, ptr %1999, align 4, !tbaa !95
  %2002 = add nuw nsw i64 %1996, 1
  %2003 = icmp eq i64 %2002, %1983
  br i1 %2003, label %1991, label %1995, !llvm.loop !157

2004:                                             ; preds = %2008, %1991
  %2005 = icmp sgt i32 %1634, 0
  br i1 %2005, label %2006, label %2024

2006:                                             ; preds = %2004
  %2007 = zext nneg i32 %1634 to i64
  br label %2015

2008:                                             ; preds = %1993, %2008
  %2009 = phi i64 [ 0, %1993 ], [ %2013, %2008 ]
  %2010 = getelementptr inbounds float, ptr %18, i64 %2009
  %2011 = load float, ptr %2010, align 4, !tbaa !95
  %2012 = fmul float %1502, %2011
  store float %2012, ptr %2010, align 4, !tbaa !95
  %2013 = add nuw nsw i64 %2009, 1
  %2014 = icmp eq i64 %2013, %1994
  br i1 %2014, label %2004, label %2008, !llvm.loop !154

2015:                                             ; preds = %2006, %2015
  %2016 = phi i64 [ 0, %2006 ], [ %2022, %2015 ]
  %2017 = getelementptr inbounds float, ptr %18, i64 %2016
  %2018 = load float, ptr %2017, align 4, !tbaa !95
  %2019 = getelementptr inbounds float, ptr %1622, i64 %2016
  %2020 = load float, ptr %2019, align 4, !tbaa !95
  %2021 = fadd float %2018, %2020
  store float %2021, ptr %2019, align 4, !tbaa !95
  %2022 = add nuw nsw i64 %2016, 1
  %2023 = icmp eq i64 %2022, %2007
  br i1 %2023, label %2024, label %2015, !llvm.loop !152

2024:                                             ; preds = %2015, %2004, %1927
  %2025 = icmp eq i64 %1648, %842
  br i1 %2025, label %2026, label %1612, !llvm.loop !273

2026:                                             ; preds = %1529, %2024, %1506, %1524
  %2027 = add nuw nsw i64 %1483, 1
  %2028 = icmp eq i64 %2027, %840
  br i1 %2028, label %2029, label %1482, !llvm.loop !274

2029:                                             ; preds = %2026, %799
  %2030 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %2031 = load i32, ptr %15, align 8, !tbaa !66
  %2032 = sext i32 %2031 to i64
  %2033 = tail call ptr %2030(i64 noundef %2032, ptr noundef nonnull @.str.7) #23
  %2034 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %2035 = load i32, ptr %15, align 8, !tbaa !66
  %2036 = sext i32 %2035 to i64
  %2037 = tail call ptr %2034(i64 noundef %2036, ptr noundef nonnull @.str.8) #23
  %2038 = icmp sgt i32 %6, 0
  br i1 %2038, label %2039, label %2580

2039:                                             ; preds = %2029
  %2040 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %2041 = add nsw i32 %10, -1
  %2042 = shl nuw i32 1, %2041
  %2043 = add nuw nsw i32 %2042, 1
  %2044 = sub nsw i32 %10, %14
  %2045 = add nuw i32 %2042, 2
  %2046 = mul i32 %2043, %2045
  %2047 = shl i32 %2045, %2044
  %2048 = add nsw i32 %2047, %2043
  %2049 = mul nsw i32 %2048, %16
  %2050 = sext i32 %2049 to i64
  %2051 = add nsw i32 %10, -1
  %2052 = shl nuw i32 1, %2051
  %2053 = add nuw nsw i32 %2052, 1
  %2054 = sub nsw i32 %10, %7
  %2055 = add nuw i32 %2052, 2
  %2056 = mul i32 %2053, %2055
  %2057 = shl i32 %16, %2054
  %2058 = sext i32 %2057 to i64
  %2059 = icmp sgt i32 %13, 1
  %2060 = add nsw i32 %10, -1
  %2061 = shl nuw i32 1, %2060
  %2062 = add nuw i32 %2061, 1
  %2063 = sub nsw i32 %10, %7
  %2064 = add nuw i32 %2061, 2
  %2065 = mul i32 %2062, %2064
  %2066 = sub nsw i32 %10, %14
  %2067 = icmp sgt i32 %13, 1
  %2068 = add nsw i32 %10, -1
  %2069 = shl nuw i32 1, %2068
  %2070 = add nuw i32 %2069, 1
  %2071 = sub nsw i32 %10, %7
  %2072 = add nuw i32 %2069, 2
  %2073 = mul i32 %2070, %2072
  %2074 = sub nsw i32 %10, %14
  %2075 = sext i32 %2046 to i64
  %2076 = sext i32 %16 to i64
  %2077 = sext i32 %2056 to i64
  %2078 = sext i32 %16 to i64
  %2079 = sext i32 %2073 to i64
  %2080 = sext i32 %16 to i64
  %2081 = sext i32 %2065 to i64
  %2082 = sext i32 %16 to i64
  %2083 = zext nneg i32 %6 to i64
  br label %2084

2084:                                             ; preds = %2039, %2577
  %2085 = phi i64 [ 0, %2039 ], [ %2578, %2577 ]
  %2086 = getelementptr inbounds ptr, ptr %3, i64 %2085
  %2087 = load ptr, ptr %2086, align 8, !tbaa !43
  %2088 = load i32, ptr %2040, align 4, !tbaa !104
  %2089 = sext i32 %2088 to i64
  %2090 = shl nsw i64 %2089, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2033, i8 0, i64 %2090, i1 false)
  %2091 = getelementptr inbounds %struct.CCGFace, ptr %2087, i64 0, i32 2
  %2092 = load i16, ptr %2091, align 8, !tbaa !119
  %2093 = icmp sgt i16 %2092, 0
  br i1 %2093, label %2094, label %2122

2094:                                             ; preds = %2084
  %2095 = zext nneg i16 %2092 to i64
  %2096 = getelementptr inbounds %struct.CCGFace, ptr %2087, i64 1
  %2097 = zext nneg i16 %2092 to i64
  %2098 = getelementptr inbounds ptr, ptr %2096, i64 %2097
  %2099 = getelementptr inbounds ptr, ptr %2098, i64 %2097
  %2100 = getelementptr i8, ptr %2099, i64 %2050
  %2101 = load i32, ptr %2040, align 4, !tbaa !104
  %2102 = icmp sgt i32 %2101, 0
  %2103 = zext nneg i32 %2101 to i64
  br label %2104

2104:                                             ; preds = %2094, %2119
  %2105 = phi i64 [ 0, %2094 ], [ %2120, %2119 ]
  %2106 = mul nsw i64 %2105, %2075
  %2107 = add nsw i64 %2106, 1
  %2108 = mul nsw i64 %2107, %2076
  %2109 = getelementptr i8, ptr %2100, i64 %2108
  br i1 %2102, label %2110, label %2119

2110:                                             ; preds = %2104, %2110
  %2111 = phi i64 [ %2117, %2110 ], [ 0, %2104 ]
  %2112 = getelementptr inbounds float, ptr %2109, i64 %2111
  %2113 = load float, ptr %2112, align 4, !tbaa !95
  %2114 = getelementptr inbounds float, ptr %2033, i64 %2111
  %2115 = load float, ptr %2114, align 4, !tbaa !95
  %2116 = fadd float %2113, %2115
  store float %2116, ptr %2114, align 4, !tbaa !95
  %2117 = add nuw nsw i64 %2111, 1
  %2118 = icmp eq i64 %2117, %2103
  br i1 %2118, label %2119, label %2110, !llvm.loop !152

2119:                                             ; preds = %2110, %2104
  %2120 = add nuw nsw i64 %2105, 1
  %2121 = icmp eq i64 %2120, %2095
  br i1 %2121, label %2122, label %2104, !llvm.loop !275

2122:                                             ; preds = %2119, %2084
  %2123 = getelementptr inbounds %struct.CCGFace, ptr %2087, i64 0, i32 2
  %2124 = sitofp i16 %2092 to float
  %2125 = fdiv float 1.000000e+00, %2124
  %2126 = load i32, ptr %2040, align 4, !tbaa !104
  %2127 = icmp sgt i32 %2126, 0
  br i1 %2127, label %2128, label %2137

2128:                                             ; preds = %2122
  %2129 = zext nneg i32 %2126 to i64
  br label %2130

2130:                                             ; preds = %2128, %2130
  %2131 = phi i64 [ 0, %2128 ], [ %2135, %2130 ]
  %2132 = getelementptr inbounds float, ptr %2033, i64 %2131
  %2133 = load float, ptr %2132, align 4, !tbaa !95
  %2134 = fmul float %2125, %2133
  store float %2134, ptr %2132, align 4, !tbaa !95
  %2135 = add nuw nsw i64 %2131, 1
  %2136 = icmp eq i64 %2135, %2129
  br i1 %2136, label %2137, label %2130, !llvm.loop !154

2137:                                             ; preds = %2130, %2122
  %2138 = sext i32 %2126 to i64
  %2139 = shl nsw i64 %2138, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2037, i8 0, i64 %2139, i1 false)
  %2140 = load i16, ptr %2123, align 8, !tbaa !119
  %2141 = sext i16 %2140 to i32
  %2142 = icmp sgt i16 %2140, 0
  br i1 %2142, label %2143, label %2171

2143:                                             ; preds = %2137
  %2144 = getelementptr inbounds %struct.CCGFace, ptr %2087, i64 1
  %2145 = zext nneg i16 %2140 to i64
  %2146 = getelementptr inbounds ptr, ptr %2144, i64 %2145
  %2147 = getelementptr inbounds ptr, ptr %2146, i64 %2145
  %2148 = getelementptr i8, ptr %2147, i64 %2058
  %2149 = load i32, ptr %2040, align 4, !tbaa !104
  %2150 = icmp sgt i32 %2149, 0
  %2151 = zext nneg i32 %2141 to i64
  %2152 = zext nneg i32 %2149 to i64
  br label %2153

2153:                                             ; preds = %2143, %2168
  %2154 = phi i64 [ 0, %2143 ], [ %2169, %2168 ]
  %2155 = mul nsw i64 %2154, %2077
  %2156 = add nsw i64 %2155, 1
  %2157 = mul nsw i64 %2156, %2078
  %2158 = getelementptr i8, ptr %2148, i64 %2157
  br i1 %2150, label %2159, label %2168

2159:                                             ; preds = %2153, %2159
  %2160 = phi i64 [ %2166, %2159 ], [ 0, %2153 ]
  %2161 = getelementptr inbounds float, ptr %2158, i64 %2160
  %2162 = load float, ptr %2161, align 4, !tbaa !95
  %2163 = getelementptr inbounds float, ptr %2037, i64 %2160
  %2164 = load float, ptr %2163, align 4, !tbaa !95
  %2165 = fadd float %2162, %2164
  store float %2165, ptr %2163, align 4, !tbaa !95
  %2166 = add nuw nsw i64 %2160, 1
  %2167 = icmp eq i64 %2166, %2152
  br i1 %2167, label %2168, label %2159, !llvm.loop !152

2168:                                             ; preds = %2159, %2153
  %2169 = add nuw nsw i64 %2154, 1
  %2170 = icmp eq i64 %2169, %2151
  br i1 %2170, label %2171, label %2153, !llvm.loop !276

2171:                                             ; preds = %2168, %2137
  %2172 = sitofp i16 %2140 to float
  %2173 = fdiv float 1.000000e+00, %2172
  %2174 = load i32, ptr %2040, align 4, !tbaa !104
  %2175 = icmp sgt i32 %2174, 0
  br i1 %2175, label %2176, label %2185

2176:                                             ; preds = %2171
  %2177 = zext nneg i32 %2174 to i64
  br label %2178

2178:                                             ; preds = %2176, %2178
  %2179 = phi i64 [ 0, %2176 ], [ %2183, %2178 ]
  %2180 = getelementptr inbounds float, ptr %2037, i64 %2179
  %2181 = load float, ptr %2180, align 4, !tbaa !95
  %2182 = fmul float %2173, %2181
  store float %2182, ptr %2180, align 4, !tbaa !95
  %2183 = add nuw nsw i64 %2179, 1
  %2184 = icmp eq i64 %2183, %2177
  br i1 %2184, label %2185, label %2178, !llvm.loop !154

2185:                                             ; preds = %2178, %2171
  %2186 = getelementptr inbounds %struct.CCGFace, ptr %2087, i64 1
  %2187 = sext i16 %2140 to i64
  %2188 = getelementptr inbounds ptr, ptr %2186, i64 %2187
  %2189 = getelementptr inbounds ptr, ptr %2188, i64 %2187
  %2190 = fadd float %2172, -2.000000e+00
  %2191 = icmp sgt i32 %2174, 0
  br i1 %2191, label %2192, label %2194

2192:                                             ; preds = %2185
  %2193 = zext nneg i32 %2174 to i64
  br label %2198

2194:                                             ; preds = %2198, %2185
  %2195 = icmp sgt i32 %2174, 0
  br i1 %2195, label %2196, label %2205

2196:                                             ; preds = %2194
  %2197 = zext nneg i32 %2174 to i64
  br label %2209

2198:                                             ; preds = %2192, %2198
  %2199 = phi i64 [ 0, %2192 ], [ %2203, %2198 ]
  %2200 = getelementptr inbounds float, ptr %2189, i64 %2199
  %2201 = load float, ptr %2200, align 4, !tbaa !95
  %2202 = fmul float %2190, %2201
  store float %2202, ptr %2200, align 4, !tbaa !95
  %2203 = add nuw nsw i64 %2199, 1
  %2204 = icmp eq i64 %2203, %2193
  br i1 %2204, label %2194, label %2198, !llvm.loop !154

2205:                                             ; preds = %2209, %2194
  %2206 = icmp sgt i32 %2174, 0
  br i1 %2206, label %2207, label %2218

2207:                                             ; preds = %2205
  %2208 = zext nneg i32 %2174 to i64
  br label %2222

2209:                                             ; preds = %2196, %2209
  %2210 = phi i64 [ 0, %2196 ], [ %2216, %2209 ]
  %2211 = getelementptr inbounds float, ptr %2033, i64 %2210
  %2212 = load float, ptr %2211, align 4, !tbaa !95
  %2213 = getelementptr inbounds float, ptr %2189, i64 %2210
  %2214 = load float, ptr %2213, align 4, !tbaa !95
  %2215 = fadd float %2212, %2214
  store float %2215, ptr %2213, align 4, !tbaa !95
  %2216 = add nuw nsw i64 %2210, 1
  %2217 = icmp eq i64 %2216, %2197
  br i1 %2217, label %2205, label %2209, !llvm.loop !152

2218:                                             ; preds = %2222, %2205
  %2219 = icmp sgt i32 %2174, 0
  br i1 %2219, label %2220, label %2231

2220:                                             ; preds = %2218
  %2221 = zext nneg i32 %2174 to i64
  br label %2260

2222:                                             ; preds = %2207, %2222
  %2223 = phi i64 [ 0, %2207 ], [ %2229, %2222 ]
  %2224 = getelementptr inbounds float, ptr %2037, i64 %2223
  %2225 = load float, ptr %2224, align 4, !tbaa !95
  %2226 = getelementptr inbounds float, ptr %2189, i64 %2223
  %2227 = load float, ptr %2226, align 4, !tbaa !95
  %2228 = fadd float %2225, %2227
  store float %2228, ptr %2226, align 4, !tbaa !95
  %2229 = add nuw nsw i64 %2223, 1
  %2230 = icmp eq i64 %2229, %2208
  br i1 %2230, label %2218, label %2222, !llvm.loop !152

2231:                                             ; preds = %2260, %2218
  %2232 = icmp sgt i16 %2140, 0
  br i1 %2232, label %2233, label %2577

2233:                                             ; preds = %2231
  %2234 = icmp sgt i32 %2174, 0
  %2235 = icmp sgt i32 %2174, 0
  %2236 = icmp sgt i32 %2174, 0
  %2237 = icmp sgt i32 %2174, 0
  %2238 = icmp sgt i32 %2174, 0
  %2239 = icmp sgt i32 %2174, 0
  %2240 = icmp sgt i32 %2174, 0
  %2241 = icmp sgt i32 %2174, 0
  %2242 = icmp sgt i32 %2174, 0
  %2243 = icmp sgt i32 %2174, 0
  %2244 = icmp sgt i32 %2174, 0
  %2245 = icmp sgt i32 %2174, 0
  %2246 = zext nneg i32 %2141 to i64
  %2247 = zext nneg i32 %2141 to i64
  %2248 = zext nneg i32 %2174 to i64
  %2249 = zext nneg i32 %2174 to i64
  %2250 = zext nneg i32 %2174 to i64
  %2251 = zext nneg i32 %2174 to i64
  %2252 = zext nneg i32 %2174 to i64
  %2253 = zext nneg i32 %2174 to i64
  %2254 = zext nneg i32 %2174 to i64
  %2255 = zext nneg i32 %2174 to i64
  %2256 = zext nneg i32 %2174 to i64
  %2257 = zext nneg i32 %2174 to i64
  %2258 = zext nneg i32 %2174 to i64
  %2259 = zext nneg i32 %2174 to i64
  br label %2267

2260:                                             ; preds = %2220, %2260
  %2261 = phi i64 [ 0, %2220 ], [ %2265, %2260 ]
  %2262 = getelementptr inbounds float, ptr %2189, i64 %2261
  %2263 = load float, ptr %2262, align 4, !tbaa !95
  %2264 = fmul float %2173, %2263
  store float %2264, ptr %2262, align 4, !tbaa !95
  %2265 = add nuw nsw i64 %2261, 1
  %2266 = icmp eq i64 %2265, %2221
  br i1 %2266, label %2231, label %2260, !llvm.loop !154

2267:                                             ; preds = %2233, %2574
  %2268 = phi i64 [ 0, %2233 ], [ %2575, %2574 ]
  br i1 %2059, label %2269, label %2274

2269:                                             ; preds = %2267
  %2270 = mul nsw i64 %2268, %2081
  %2271 = add nsw i64 %2270, 1
  %2272 = mul nsw i64 %2271, %2082
  %2273 = getelementptr inbounds i8, ptr %2189, i64 %2272
  br label %2289

2274:                                             ; preds = %2437, %2267
  br i1 %2067, label %2275, label %2574

2275:                                             ; preds = %2274
  %2276 = mul nsw i64 %2268, %2079
  %2277 = add nsw i64 %2276, 1
  %2278 = mul nsw i64 %2277, %2080
  %2279 = getelementptr inbounds i8, ptr %2189, i64 %2278
  %2280 = add nuw nsw i64 %2268, 1
  %2281 = icmp eq i64 %2280, %2246
  %2282 = trunc i64 %2280 to i32
  %2283 = select i1 %2281, i32 0, i32 %2282
  %2284 = mul nsw i32 %2283, %2073
  %2285 = add nsw i32 %2284, 1
  %2286 = mul nsw i32 %2285, %16
  %2287 = sext i32 %2286 to i64
  %2288 = getelementptr inbounds i8, ptr %2189, i64 %2287
  br label %2440

2289:                                             ; preds = %2269, %2437
  %2290 = phi i32 [ 1, %2269 ], [ %2438, %2437 ]
  %2291 = shl nuw nsw i32 %2290, 1
  %2292 = add nsw i32 %2291, -1
  %2293 = or disjoint i32 %2291, 1
  br label %2294

2294:                                             ; preds = %2289, %2434
  %2295 = phi i32 [ 1, %2289 ], [ %2435, %2434 ]
  %2296 = shl nuw nsw i32 %2295, 1
  %2297 = mul nsw i32 %2295, %2062
  %2298 = add nsw i32 %2297, %2290
  %2299 = shl i32 %2298, %2063
  %2300 = add i32 %2299, %2062
  %2301 = mul i32 %2300, %16
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds i8, ptr %2273, i64 %2302
  %2304 = mul nsw i32 %2296, %2062
  %2305 = add nsw i32 %2304, %2291
  %2306 = shl i32 %2305, %2066
  %2307 = add i32 %2306, %2062
  %2308 = mul i32 %2307, %16
  %2309 = sext i32 %2308 to i64
  %2310 = getelementptr inbounds i8, ptr %2273, i64 %2309
  %2311 = add nsw i32 %2296, -1
  %2312 = mul nsw i32 %2311, %2062
  %2313 = add nsw i32 %2312, %2292
  %2314 = shl i32 %2313, %2066
  %2315 = add nsw i32 %2314, %2062
  %2316 = mul nsw i32 %2315, %16
  %2317 = sext i32 %2316 to i64
  %2318 = getelementptr inbounds i8, ptr %2273, i64 %2317
  %2319 = add nsw i32 %2312, %2293
  %2320 = shl i32 %2319, %2066
  %2321 = add nsw i32 %2320, %2062
  %2322 = mul nsw i32 %2321, %16
  %2323 = sext i32 %2322 to i64
  %2324 = getelementptr inbounds i8, ptr %2273, i64 %2323
  %2325 = or disjoint i32 %2296, 1
  %2326 = mul nsw i32 %2325, %2062
  %2327 = add nsw i32 %2326, %2293
  %2328 = shl i32 %2327, %2066
  %2329 = add nsw i32 %2328, %2062
  %2330 = mul nsw i32 %2329, %16
  %2331 = sext i32 %2330 to i64
  %2332 = getelementptr inbounds i8, ptr %2273, i64 %2331
  %2333 = add nsw i32 %2326, %2292
  %2334 = shl i32 %2333, %2066
  %2335 = add nsw i32 %2334, %2062
  %2336 = mul nsw i32 %2335, %16
  %2337 = sext i32 %2336 to i64
  %2338 = getelementptr inbounds i8, ptr %2273, i64 %2337
  br i1 %2234, label %2339, label %2356

2339:                                             ; preds = %2294, %2339
  %2340 = phi i64 [ %2354, %2339 ], [ 0, %2294 ]
  %2341 = getelementptr inbounds float, ptr %2318, i64 %2340
  %2342 = load float, ptr %2341, align 4, !tbaa !95
  %2343 = getelementptr inbounds float, ptr %2324, i64 %2340
  %2344 = load float, ptr %2343, align 4, !tbaa !95
  %2345 = fadd float %2342, %2344
  %2346 = getelementptr inbounds float, ptr %2332, i64 %2340
  %2347 = load float, ptr %2346, align 4, !tbaa !95
  %2348 = fadd float %2345, %2347
  %2349 = getelementptr inbounds float, ptr %2338, i64 %2340
  %2350 = load float, ptr %2349, align 4, !tbaa !95
  %2351 = fadd float %2348, %2350
  %2352 = fmul float %2351, 2.500000e-01
  %2353 = getelementptr inbounds float, ptr %2033, i64 %2340
  store float %2352, ptr %2353, align 4, !tbaa !95
  %2354 = add nuw nsw i64 %2340, 1
  %2355 = icmp eq i64 %2354, %2248
  br i1 %2355, label %2356, label %2339, !llvm.loop !251

2356:                                             ; preds = %2339, %2294
  %2357 = add nsw i32 %2304, %2292
  %2358 = shl i32 %2357, %2066
  %2359 = add nsw i32 %2358, %2062
  %2360 = mul nsw i32 %2359, %16
  %2361 = sext i32 %2360 to i64
  %2362 = getelementptr inbounds i8, ptr %2273, i64 %2361
  %2363 = add nsw i32 %2304, %2293
  %2364 = shl i32 %2363, %2066
  %2365 = add nsw i32 %2364, %2062
  %2366 = mul nsw i32 %2365, %16
  %2367 = sext i32 %2366 to i64
  %2368 = getelementptr inbounds i8, ptr %2273, i64 %2367
  %2369 = add nsw i32 %2312, %2291
  %2370 = shl i32 %2369, %2066
  %2371 = add nsw i32 %2370, %2062
  %2372 = mul nsw i32 %2371, %16
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds i8, ptr %2273, i64 %2373
  %2375 = add nsw i32 %2326, %2291
  %2376 = shl i32 %2375, %2066
  %2377 = add nsw i32 %2376, %2062
  %2378 = mul nsw i32 %2377, %16
  %2379 = sext i32 %2378 to i64
  %2380 = getelementptr inbounds i8, ptr %2273, i64 %2379
  br i1 %2235, label %2382, label %2381

2381:                                             ; preds = %2382, %2356
  br i1 %2236, label %2400, label %2399

2382:                                             ; preds = %2356, %2382
  %2383 = phi i64 [ %2397, %2382 ], [ 0, %2356 ]
  %2384 = getelementptr inbounds float, ptr %2362, i64 %2383
  %2385 = load float, ptr %2384, align 4, !tbaa !95
  %2386 = getelementptr inbounds float, ptr %2368, i64 %2383
  %2387 = load float, ptr %2386, align 4, !tbaa !95
  %2388 = fadd float %2385, %2387
  %2389 = getelementptr inbounds float, ptr %2374, i64 %2383
  %2390 = load float, ptr %2389, align 4, !tbaa !95
  %2391 = fadd float %2388, %2390
  %2392 = getelementptr inbounds float, ptr %2380, i64 %2383
  %2393 = load float, ptr %2392, align 4, !tbaa !95
  %2394 = fadd float %2391, %2393
  %2395 = fmul float %2394, 2.500000e-01
  %2396 = getelementptr inbounds float, ptr %2037, i64 %2383
  store float %2395, ptr %2396, align 4, !tbaa !95
  %2397 = add nuw nsw i64 %2383, 1
  %2398 = icmp eq i64 %2397, %2249
  br i1 %2398, label %2381, label %2382, !llvm.loop !251

2399:                                             ; preds = %2400, %2381
  br i1 %2237, label %2408, label %2407

2400:                                             ; preds = %2381, %2400
  %2401 = phi i64 [ %2405, %2400 ], [ 0, %2381 ]
  %2402 = getelementptr inbounds float, ptr %2303, i64 %2401
  %2403 = load float, ptr %2402, align 4, !tbaa !95
  %2404 = getelementptr inbounds float, ptr %2310, i64 %2401
  store float %2403, ptr %2404, align 4, !tbaa !95
  %2405 = add nuw nsw i64 %2401, 1
  %2406 = icmp eq i64 %2405, %2250
  br i1 %2406, label %2399, label %2400, !llvm.loop !124

2407:                                             ; preds = %2408, %2399
  br i1 %2238, label %2418, label %2417

2408:                                             ; preds = %2399, %2408
  %2409 = phi i64 [ %2415, %2408 ], [ 0, %2399 ]
  %2410 = getelementptr inbounds float, ptr %2033, i64 %2409
  %2411 = load float, ptr %2410, align 4, !tbaa !95
  %2412 = getelementptr inbounds float, ptr %2310, i64 %2409
  %2413 = load float, ptr %2412, align 4, !tbaa !95
  %2414 = fsub float %2413, %2411
  store float %2414, ptr %2412, align 4, !tbaa !95
  %2415 = add nuw nsw i64 %2409, 1
  %2416 = icmp eq i64 %2415, %2251
  br i1 %2416, label %2407, label %2408, !llvm.loop !157

2417:                                             ; preds = %2418, %2407
  br i1 %2239, label %2425, label %2434

2418:                                             ; preds = %2407, %2418
  %2419 = phi i64 [ %2423, %2418 ], [ 0, %2407 ]
  %2420 = getelementptr inbounds float, ptr %2310, i64 %2419
  %2421 = load float, ptr %2420, align 4, !tbaa !95
  %2422 = fmul float %2421, 2.500000e-01
  store float %2422, ptr %2420, align 4, !tbaa !95
  %2423 = add nuw nsw i64 %2419, 1
  %2424 = icmp eq i64 %2423, %2252
  br i1 %2424, label %2417, label %2418, !llvm.loop !154

2425:                                             ; preds = %2417, %2425
  %2426 = phi i64 [ %2432, %2425 ], [ 0, %2417 ]
  %2427 = getelementptr inbounds float, ptr %2037, i64 %2426
  %2428 = load float, ptr %2427, align 4, !tbaa !95
  %2429 = getelementptr inbounds float, ptr %2310, i64 %2426
  %2430 = load float, ptr %2429, align 4, !tbaa !95
  %2431 = fadd float %2428, %2430
  store float %2431, ptr %2429, align 4, !tbaa !95
  %2432 = add nuw nsw i64 %2426, 1
  %2433 = icmp eq i64 %2432, %2253
  br i1 %2433, label %2434, label %2425, !llvm.loop !152

2434:                                             ; preds = %2425, %2417
  %2435 = add nuw nsw i32 %2295, 1
  %2436 = icmp eq i32 %2435, %13
  br i1 %2436, label %2437, label %2294, !llvm.loop !277

2437:                                             ; preds = %2434
  %2438 = add nuw nsw i32 %2290, 1
  %2439 = icmp eq i32 %2438, %13
  br i1 %2439, label %2274, label %2289, !llvm.loop !278

2440:                                             ; preds = %2275, %2571
  %2441 = phi i32 [ 1, %2275 ], [ %2572, %2571 ]
  %2442 = shl nuw nsw i32 %2441, 1
  %2443 = mul nsw i32 %2441, %16
  %2444 = shl i32 %2443, %2071
  %2445 = sext i32 %2444 to i64
  %2446 = getelementptr inbounds i8, ptr %2279, i64 %2445
  %2447 = mul nsw i32 %2442, %16
  %2448 = shl i32 %2447, %2074
  %2449 = sext i32 %2448 to i64
  %2450 = getelementptr inbounds i8, ptr %2279, i64 %2449
  %2451 = add nsw i32 %2442, -1
  %2452 = mul nsw i32 %2451, %2070
  %2453 = add nsw i32 %2452, 1
  %2454 = shl i32 %2453, %2074
  %2455 = add nsw i32 %2454, %2070
  %2456 = mul nsw i32 %2455, %16
  %2457 = sext i32 %2456 to i64
  %2458 = getelementptr inbounds i8, ptr %2288, i64 %2457
  %2459 = or disjoint i32 %2442, 1
  %2460 = mul nsw i32 %2459, %2070
  %2461 = add nsw i32 %2460, 1
  %2462 = shl i32 %2461, %2074
  %2463 = add nsw i32 %2462, %2070
  %2464 = mul nsw i32 %2463, %16
  %2465 = sext i32 %2464 to i64
  %2466 = getelementptr inbounds i8, ptr %2288, i64 %2465
  %2467 = add nsw i32 %2459, %2070
  %2468 = shl i32 %2467, %2074
  %2469 = add nsw i32 %2468, %2070
  %2470 = mul nsw i32 %2469, %16
  %2471 = sext i32 %2470 to i64
  %2472 = getelementptr inbounds i8, ptr %2279, i64 %2471
  %2473 = add nuw i32 %2442, %2069
  %2474 = shl i32 %2473, %2074
  %2475 = add nsw i32 %2474, %2070
  %2476 = mul nsw i32 %2475, %16
  %2477 = sext i32 %2476 to i64
  %2478 = getelementptr inbounds i8, ptr %2279, i64 %2477
  br i1 %2240, label %2479, label %2496

2479:                                             ; preds = %2440, %2479
  %2480 = phi i64 [ %2494, %2479 ], [ 0, %2440 ]
  %2481 = getelementptr inbounds float, ptr %2458, i64 %2480
  %2482 = load float, ptr %2481, align 4, !tbaa !95
  %2483 = getelementptr inbounds float, ptr %2466, i64 %2480
  %2484 = load float, ptr %2483, align 4, !tbaa !95
  %2485 = fadd float %2482, %2484
  %2486 = getelementptr inbounds float, ptr %2472, i64 %2480
  %2487 = load float, ptr %2486, align 4, !tbaa !95
  %2488 = fadd float %2485, %2487
  %2489 = getelementptr inbounds float, ptr %2478, i64 %2480
  %2490 = load float, ptr %2489, align 4, !tbaa !95
  %2491 = fadd float %2488, %2490
  %2492 = fmul float %2491, 2.500000e-01
  %2493 = getelementptr inbounds float, ptr %2033, i64 %2480
  store float %2492, ptr %2493, align 4, !tbaa !95
  %2494 = add nuw nsw i64 %2480, 1
  %2495 = icmp eq i64 %2494, %2254
  br i1 %2495, label %2496, label %2479, !llvm.loop !251

2496:                                             ; preds = %2479, %2440
  %2497 = mul nsw i32 %2451, %16
  %2498 = shl i32 %2497, %2074
  %2499 = sext i32 %2498 to i64
  %2500 = getelementptr inbounds i8, ptr %2279, i64 %2499
  %2501 = mul nsw i32 %2459, %16
  %2502 = shl i32 %2501, %2074
  %2503 = sext i32 %2502 to i64
  %2504 = getelementptr inbounds i8, ptr %2279, i64 %2503
  %2505 = mul nsw i32 %2442, %2070
  %2506 = or disjoint i32 %2505, 1
  %2507 = shl i32 %2506, %2074
  %2508 = add nsw i32 %2507, %2070
  %2509 = mul nsw i32 %2508, %16
  %2510 = sext i32 %2509 to i64
  %2511 = getelementptr inbounds i8, ptr %2288, i64 %2510
  %2512 = add nsw i32 %2442, %2070
  %2513 = shl i32 %2512, %2074
  %2514 = add nsw i32 %2513, %2070
  %2515 = mul nsw i32 %2514, %16
  %2516 = sext i32 %2515 to i64
  %2517 = getelementptr inbounds i8, ptr %2279, i64 %2516
  br i1 %2241, label %2519, label %2518

2518:                                             ; preds = %2519, %2496
  br i1 %2242, label %2537, label %2536

2519:                                             ; preds = %2496, %2519
  %2520 = phi i64 [ %2534, %2519 ], [ 0, %2496 ]
  %2521 = getelementptr inbounds float, ptr %2500, i64 %2520
  %2522 = load float, ptr %2521, align 4, !tbaa !95
  %2523 = getelementptr inbounds float, ptr %2504, i64 %2520
  %2524 = load float, ptr %2523, align 4, !tbaa !95
  %2525 = fadd float %2522, %2524
  %2526 = getelementptr inbounds float, ptr %2511, i64 %2520
  %2527 = load float, ptr %2526, align 4, !tbaa !95
  %2528 = fadd float %2525, %2527
  %2529 = getelementptr inbounds float, ptr %2517, i64 %2520
  %2530 = load float, ptr %2529, align 4, !tbaa !95
  %2531 = fadd float %2528, %2530
  %2532 = fmul float %2531, 2.500000e-01
  %2533 = getelementptr inbounds float, ptr %2037, i64 %2520
  store float %2532, ptr %2533, align 4, !tbaa !95
  %2534 = add nuw nsw i64 %2520, 1
  %2535 = icmp eq i64 %2534, %2255
  br i1 %2535, label %2518, label %2519, !llvm.loop !251

2536:                                             ; preds = %2537, %2518
  br i1 %2243, label %2545, label %2544

2537:                                             ; preds = %2518, %2537
  %2538 = phi i64 [ %2542, %2537 ], [ 0, %2518 ]
  %2539 = getelementptr inbounds float, ptr %2446, i64 %2538
  %2540 = load float, ptr %2539, align 4, !tbaa !95
  %2541 = getelementptr inbounds float, ptr %2450, i64 %2538
  store float %2540, ptr %2541, align 4, !tbaa !95
  %2542 = add nuw nsw i64 %2538, 1
  %2543 = icmp eq i64 %2542, %2256
  br i1 %2543, label %2536, label %2537, !llvm.loop !124

2544:                                             ; preds = %2545, %2536
  br i1 %2244, label %2555, label %2554

2545:                                             ; preds = %2536, %2545
  %2546 = phi i64 [ %2552, %2545 ], [ 0, %2536 ]
  %2547 = getelementptr inbounds float, ptr %2033, i64 %2546
  %2548 = load float, ptr %2547, align 4, !tbaa !95
  %2549 = getelementptr inbounds float, ptr %2450, i64 %2546
  %2550 = load float, ptr %2549, align 4, !tbaa !95
  %2551 = fsub float %2550, %2548
  store float %2551, ptr %2549, align 4, !tbaa !95
  %2552 = add nuw nsw i64 %2546, 1
  %2553 = icmp eq i64 %2552, %2257
  br i1 %2553, label %2544, label %2545, !llvm.loop !157

2554:                                             ; preds = %2555, %2544
  br i1 %2245, label %2562, label %2571

2555:                                             ; preds = %2544, %2555
  %2556 = phi i64 [ %2560, %2555 ], [ 0, %2544 ]
  %2557 = getelementptr inbounds float, ptr %2450, i64 %2556
  %2558 = load float, ptr %2557, align 4, !tbaa !95
  %2559 = fmul float %2558, 2.500000e-01
  store float %2559, ptr %2557, align 4, !tbaa !95
  %2560 = add nuw nsw i64 %2556, 1
  %2561 = icmp eq i64 %2560, %2258
  br i1 %2561, label %2554, label %2555, !llvm.loop !154

2562:                                             ; preds = %2554, %2562
  %2563 = phi i64 [ %2569, %2562 ], [ 0, %2554 ]
  %2564 = getelementptr inbounds float, ptr %2037, i64 %2563
  %2565 = load float, ptr %2564, align 4, !tbaa !95
  %2566 = getelementptr inbounds float, ptr %2450, i64 %2563
  %2567 = load float, ptr %2566, align 4, !tbaa !95
  %2568 = fadd float %2565, %2567
  store float %2568, ptr %2566, align 4, !tbaa !95
  %2569 = add nuw nsw i64 %2563, 1
  %2570 = icmp eq i64 %2569, %2259
  br i1 %2570, label %2571, label %2562, !llvm.loop !152

2571:                                             ; preds = %2562, %2554
  %2572 = add nuw nsw i32 %2441, 1
  %2573 = icmp eq i32 %2572, %13
  br i1 %2573, label %2574, label %2440, !llvm.loop !279

2574:                                             ; preds = %2571, %2274
  %2575 = add nuw nsw i64 %2268, 1
  %2576 = icmp eq i64 %2575, %2247
  br i1 %2576, label %2577, label %2267, !llvm.loop !280

2577:                                             ; preds = %2574, %2231
  %2578 = add nuw nsw i64 %2085, 1
  %2579 = icmp eq i64 %2578, %2083
  br i1 %2579, label %2580, label %2084, !llvm.loop !281

2580:                                             ; preds = %2577, %2029
  %2581 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %2581(ptr noundef %2033) #23
  %2582 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %2582(ptr noundef %2037) #23
  %2583 = shl nuw i32 1, %14
  %2584 = icmp sgt i32 %5, 0
  br i1 %2584, label %2585, label %2601

2585:                                             ; preds = %2580
  %2586 = add i32 %2583, %7
  %2587 = mul i32 %16, %2586
  %2588 = sext i32 %2587 to i64
  %2589 = mul i32 %16, %14
  %2590 = sext i32 %2589 to i64
  %2591 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %2592 = load i32, ptr %2591, align 4, !tbaa !104
  %2593 = icmp sgt i32 %2592, 0
  %2594 = add i32 %2586, %2583
  %2595 = mul i32 %16, %2594
  %2596 = sext i32 %2595 to i64
  %2597 = icmp sgt i32 %2592, 0
  %2598 = zext nneg i32 %5 to i64
  %2599 = zext nneg i32 %2592 to i64
  %2600 = zext nneg i32 %2592 to i64
  br label %2640

2601:                                             ; preds = %2670, %2580
  %2602 = icmp sgt i32 %6, 0
  br i1 %2602, label %2603, label %2878

2603:                                             ; preds = %2601
  %2604 = add nsw i32 %10, -1
  %2605 = shl nuw i32 1, %2604
  %2606 = add nuw i32 %2605, 1
  %2607 = add nuw i32 %2605, 2
  %2608 = mul i32 %2606, %2607
  %2609 = mul i32 %2606, %16
  %2610 = sext i32 %2609 to i64
  %2611 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 3
  %2612 = sub nsw i32 %10, %14
  %2613 = shl i32 %2606, %7
  %2614 = add nsw i32 %2613, %11
  %2615 = shl i32 %2614, %2612
  %2616 = add i32 %2615, %2606
  %2617 = mul i32 %2616, %16
  %2618 = sext i32 %2617 to i64
  %2619 = mul i32 %16, %14
  %2620 = sext i32 %2619 to i64
  %2621 = shl i32 %16, %7
  %2622 = shl i32 %2621, %2612
  %2623 = sext i32 %2622 to i64
  %2624 = add i32 %2583, %7
  %2625 = add i32 %2624, %11
  %2626 = mul i32 %16, %2625
  %2627 = sext i32 %2626 to i64
  %2628 = icmp sgt i32 %11, 1
  %2629 = icmp eq i32 %7, 31
  %2630 = add nsw i32 %2624, %2583
  %2631 = add nsw i32 %2624, %2583
  %2632 = sext i32 %11 to i64
  %2633 = sext i32 %2624 to i64
  %2634 = sext i32 %16 to i64
  %2635 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %2636 = sext i32 %2608 to i64
  %2637 = sext i32 %16 to i64
  %2638 = zext nneg i32 %6 to i64
  %2639 = zext nneg i32 %2635 to i64
  br label %2673

2640:                                             ; preds = %2585, %2670
  %2641 = phi i64 [ 0, %2585 ], [ %2671, %2670 ]
  %2642 = getelementptr inbounds ptr, ptr %2, i64 %2641
  %2643 = load ptr, ptr %2642, align 8, !tbaa !43
  %2644 = getelementptr %struct.CCGEdge, ptr %2643, i64 1
  %2645 = getelementptr i8, ptr %2644, i64 %2588
  %2646 = getelementptr inbounds %struct.CCGEdge, ptr %2643, i64 0, i32 5
  %2647 = load ptr, ptr %2646, align 8, !tbaa !113
  %2648 = getelementptr %struct.CCGVert, ptr %2647, i64 1
  %2649 = getelementptr i8, ptr %2648, i64 %2590
  br i1 %2593, label %2650, label %2657

2650:                                             ; preds = %2640, %2650
  %2651 = phi i64 [ %2655, %2650 ], [ 0, %2640 ]
  %2652 = getelementptr inbounds float, ptr %2649, i64 %2651
  %2653 = load float, ptr %2652, align 4, !tbaa !95
  %2654 = getelementptr inbounds float, ptr %2645, i64 %2651
  store float %2653, ptr %2654, align 4, !tbaa !95
  %2655 = add nuw nsw i64 %2651, 1
  %2656 = icmp eq i64 %2655, %2599
  br i1 %2656, label %2657, label %2650, !llvm.loop !124

2657:                                             ; preds = %2650, %2640
  %2658 = getelementptr i8, ptr %2644, i64 %2596
  %2659 = getelementptr inbounds %struct.CCGEdge, ptr %2643, i64 0, i32 6
  %2660 = load ptr, ptr %2659, align 8, !tbaa !115
  %2661 = getelementptr %struct.CCGVert, ptr %2660, i64 1
  %2662 = getelementptr i8, ptr %2661, i64 %2590
  br i1 %2597, label %2663, label %2670

2663:                                             ; preds = %2657, %2663
  %2664 = phi i64 [ %2668, %2663 ], [ 0, %2657 ]
  %2665 = getelementptr inbounds float, ptr %2662, i64 %2664
  %2666 = load float, ptr %2665, align 4, !tbaa !95
  %2667 = getelementptr inbounds float, ptr %2658, i64 %2664
  store float %2666, ptr %2667, align 4, !tbaa !95
  %2668 = add nuw nsw i64 %2664, 1
  %2669 = icmp eq i64 %2668, %2600
  br i1 %2669, label %2670, label %2663, !llvm.loop !124

2670:                                             ; preds = %2663, %2657
  %2671 = add nuw nsw i64 %2641, 1
  %2672 = icmp eq i64 %2671, %2598
  br i1 %2672, label %2601, label %2640, !llvm.loop !282

2673:                                             ; preds = %2603, %2875
  %2674 = phi i64 [ 0, %2603 ], [ %2876, %2875 ]
  %2675 = getelementptr inbounds ptr, ptr %3, i64 %2674
  %2676 = load ptr, ptr %2675, align 8, !tbaa !43
  %2677 = getelementptr inbounds %struct.CCGFace, ptr %2676, i64 0, i32 2
  %2678 = load i16, ptr %2677, align 8, !tbaa !119
  %2679 = sext i16 %2678 to i32
  %2680 = icmp sgt i16 %2678, 0
  br i1 %2680, label %2681, label %2875

2681:                                             ; preds = %2673
  %2682 = getelementptr inbounds %struct.CCGFace, ptr %2676, i64 1
  %2683 = zext nneg i16 %2678 to i64
  %2684 = getelementptr inbounds ptr, ptr %2682, i64 %2683
  %2685 = getelementptr ptr, ptr %2684, i64 %2683
  %2686 = load i32, ptr %2611, align 4, !tbaa !104
  %2687 = icmp sgt i32 %2686, 0
  %2688 = icmp sgt i32 %2686, 0
  %2689 = icmp sgt i32 %2686, 0
  %2690 = icmp sgt i32 %2686, 0
  %2691 = icmp sgt i32 %2686, 0
  %2692 = icmp sgt i32 %2686, 0
  %2693 = icmp sgt i32 %2686, 0
  %2694 = icmp sgt i32 %2686, 0
  %2695 = zext nneg i32 %2679 to i64
  %2696 = zext nneg i32 %2679 to i64
  %2697 = zext nneg i32 %2686 to i64
  %2698 = zext nneg i32 %2686 to i64
  %2699 = zext nneg i32 %2686 to i64
  %2700 = zext nneg i32 %2686 to i64
  %2701 = zext nneg i32 %2686 to i64
  %2702 = zext nneg i32 %2686 to i64
  %2703 = zext nneg i32 %2686 to i64
  %2704 = zext nneg i32 %2686 to i64
  br label %2705

2705:                                             ; preds = %2681, %2872
  %2706 = phi i64 [ 0, %2681 ], [ %2873, %2872 ]
  %2707 = getelementptr inbounds ptr, ptr %2684, i64 %2706
  %2708 = load ptr, ptr %2707, align 8, !tbaa !43
  %2709 = trunc i64 %2706 to i32
  %2710 = add i32 %2709, -1
  %2711 = add i32 %2710, %2679
  %2712 = srem i32 %2711, %2679
  %2713 = sext i32 %2712 to i64
  %2714 = getelementptr inbounds ptr, ptr %2684, i64 %2713
  %2715 = load ptr, ptr %2714, align 8, !tbaa !43
  %2716 = mul nsw i64 %2706, %2636
  %2717 = add nsw i64 %2716, 1
  %2718 = mul nsw i64 %2717, %2637
  %2719 = getelementptr inbounds i8, ptr %2685, i64 %2718
  %2720 = getelementptr inbounds i8, ptr %2719, i64 %2610
  br i1 %2687, label %2722, label %2721

2721:                                             ; preds = %2722, %2705
  br i1 %2688, label %2729, label %2736

2722:                                             ; preds = %2705, %2722
  %2723 = phi i64 [ %2727, %2722 ], [ 0, %2705 ]
  %2724 = getelementptr inbounds float, ptr %2685, i64 %2723
  %2725 = load float, ptr %2724, align 4, !tbaa !95
  %2726 = getelementptr inbounds float, ptr %2720, i64 %2723
  store float %2725, ptr %2726, align 4, !tbaa !95
  %2727 = add nuw nsw i64 %2723, 1
  %2728 = icmp eq i64 %2727, %2697
  br i1 %2728, label %2721, label %2722, !llvm.loop !124

2729:                                             ; preds = %2721, %2729
  %2730 = phi i64 [ %2734, %2729 ], [ 0, %2721 ]
  %2731 = getelementptr inbounds float, ptr %2685, i64 %2730
  %2732 = load float, ptr %2731, align 4, !tbaa !95
  %2733 = getelementptr inbounds float, ptr %2719, i64 %2730
  store float %2732, ptr %2733, align 4, !tbaa !95
  %2734 = add nuw nsw i64 %2730, 1
  %2735 = icmp eq i64 %2734, %2698
  br i1 %2735, label %2736, label %2729, !llvm.loop !124

2736:                                             ; preds = %2729, %2721
  %2737 = getelementptr inbounds i8, ptr %2719, i64 %2618
  %2738 = getelementptr inbounds ptr, ptr %2682, i64 %2706
  %2739 = load ptr, ptr %2738, align 8, !tbaa !43
  %2740 = getelementptr %struct.CCGVert, ptr %2739, i64 1
  %2741 = getelementptr i8, ptr %2740, i64 %2620
  br i1 %2689, label %2742, label %2749

2742:                                             ; preds = %2736, %2742
  %2743 = phi i64 [ %2747, %2742 ], [ 0, %2736 ]
  %2744 = getelementptr inbounds float, ptr %2741, i64 %2743
  %2745 = load float, ptr %2744, align 4, !tbaa !95
  %2746 = getelementptr inbounds float, ptr %2737, i64 %2743
  store float %2745, ptr %2746, align 4, !tbaa !95
  %2747 = add nuw nsw i64 %2743, 1
  %2748 = icmp eq i64 %2747, %2699
  br i1 %2748, label %2749, label %2742, !llvm.loop !124

2749:                                             ; preds = %2742, %2736
  %2750 = getelementptr inbounds i8, ptr %2719, i64 %2623
  %2751 = getelementptr %struct.CCGEdge, ptr %2708, i64 1
  %2752 = getelementptr i8, ptr %2751, i64 %2627
  br i1 %2690, label %2764, label %2753

2753:                                             ; preds = %2764, %2749
  br i1 %2628, label %2754, label %2771

2754:                                             ; preds = %2753
  %2755 = add nuw nsw i64 %2706, 1
  %2756 = icmp eq i64 %2755, %2695
  %2757 = trunc i64 %2755 to i32
  %2758 = select i1 %2756, i32 0, i32 %2757
  %2759 = mul i32 %2758, %2608
  %2760 = add i32 %2759, 1
  %2761 = mul i32 %2760, %16
  %2762 = sext i32 %2761 to i64
  %2763 = getelementptr inbounds i8, ptr %2685, i64 %2762
  br label %2781

2764:                                             ; preds = %2749, %2764
  %2765 = phi i64 [ %2769, %2764 ], [ 0, %2749 ]
  %2766 = getelementptr inbounds float, ptr %2752, i64 %2765
  %2767 = load float, ptr %2766, align 4, !tbaa !95
  %2768 = getelementptr inbounds float, ptr %2750, i64 %2765
  store float %2767, ptr %2768, align 4, !tbaa !95
  %2769 = add nuw nsw i64 %2765, 1
  %2770 = icmp eq i64 %2769, %2700
  br i1 %2770, label %2753, label %2764, !llvm.loop !124

2771:                                             ; preds = %2813, %2753
  br i1 %2629, label %2872, label %2772

2772:                                             ; preds = %2771
  %2773 = getelementptr inbounds %struct.CCGEdge, ptr %2708, i64 0, i32 5
  %2774 = load ptr, ptr %2773, align 8, !tbaa !113
  %2775 = icmp eq ptr %2774, %2739
  %2776 = getelementptr inbounds %struct.CCGEdge, ptr %2715, i64 0, i32 5
  %2777 = load ptr, ptr %2776, align 8, !tbaa !113
  %2778 = icmp eq ptr %2777, %2739
  %2779 = getelementptr inbounds %struct.CCGEdge, ptr %2715, i64 1
  %2780 = getelementptr inbounds %struct.CCGEdge, ptr %2715, i64 1
  br label %2816

2781:                                             ; preds = %2754, %2813
  %2782 = phi i32 [ 1, %2754 ], [ %2814, %2813 ]
  %2783 = mul nsw i32 %2782, %16
  %2784 = shl i32 %2783, %2612
  %2785 = sext i32 %2784 to i64
  %2786 = getelementptr inbounds i8, ptr %2719, i64 %2785
  %2787 = shl i32 %2782, %2612
  %2788 = add i32 %2787, %2606
  %2789 = mul i32 %2788, %16
  %2790 = sext i32 %2789 to i64
  %2791 = getelementptr inbounds i8, ptr %2719, i64 %2790
  br i1 %2691, label %2792, label %2799

2792:                                             ; preds = %2781, %2792
  %2793 = phi i64 [ %2797, %2792 ], [ 0, %2781 ]
  %2794 = getelementptr inbounds float, ptr %2786, i64 %2793
  %2795 = load float, ptr %2794, align 4, !tbaa !95
  %2796 = getelementptr inbounds float, ptr %2791, i64 %2793
  store float %2795, ptr %2796, align 4, !tbaa !95
  %2797 = add nuw nsw i64 %2793, 1
  %2798 = icmp eq i64 %2797, %2701
  br i1 %2798, label %2799, label %2792, !llvm.loop !124

2799:                                             ; preds = %2792, %2781
  %2800 = mul nsw i32 %2782, %2606
  %2801 = shl i32 %2800, %2612
  %2802 = add i32 %2801, %2606
  %2803 = mul i32 %2802, %16
  %2804 = sext i32 %2803 to i64
  %2805 = getelementptr inbounds i8, ptr %2763, i64 %2804
  br i1 %2692, label %2806, label %2813

2806:                                             ; preds = %2799, %2806
  %2807 = phi i64 [ %2811, %2806 ], [ 0, %2799 ]
  %2808 = getelementptr inbounds float, ptr %2786, i64 %2807
  %2809 = load float, ptr %2808, align 4, !tbaa !95
  %2810 = getelementptr inbounds float, ptr %2805, i64 %2807
  store float %2809, ptr %2810, align 4, !tbaa !95
  %2811 = add nuw nsw i64 %2807, 1
  %2812 = icmp eq i64 %2811, %2702
  br i1 %2812, label %2813, label %2806, !llvm.loop !124

2813:                                             ; preds = %2806, %2799
  %2814 = add nuw nsw i32 %2782, 1
  %2815 = icmp eq i32 %2814, %11
  br i1 %2815, label %2771, label %2781, !llvm.loop !283

2816:                                             ; preds = %2772, %2869
  %2817 = phi i64 [ 0, %2772 ], [ %2870, %2869 ]
  %2818 = sub nsw i64 %2632, %2817
  %2819 = trunc i64 %2817 to i32
  %2820 = mul i32 %2606, %2819
  %2821 = add i32 %2820, %11
  %2822 = shl i32 %2821, %2612
  %2823 = add i32 %2822, %2606
  %2824 = mul i32 %2823, %16
  %2825 = sext i32 %2824 to i64
  %2826 = getelementptr inbounds i8, ptr %2719, i64 %2825
  %2827 = trunc i64 %2818 to i32
  %2828 = sub i32 %2630, %2827
  %2829 = trunc i64 %2818 to i32
  %2830 = add i32 %2624, %2829
  %2831 = select i1 %2775, i32 %2830, i32 %2828
  %2832 = mul i32 %2831, %16
  %2833 = sext i32 %2832 to i64
  %2834 = getelementptr i8, ptr %2751, i64 %2833
  br i1 %2693, label %2835, label %2842

2835:                                             ; preds = %2816, %2835
  %2836 = phi i64 [ %2840, %2835 ], [ 0, %2816 ]
  %2837 = getelementptr inbounds float, ptr %2834, i64 %2836
  %2838 = load float, ptr %2837, align 4, !tbaa !95
  %2839 = getelementptr inbounds float, ptr %2826, i64 %2836
  store float %2838, ptr %2839, align 4, !tbaa !95
  %2840 = add nuw nsw i64 %2836, 1
  %2841 = icmp eq i64 %2840, %2703
  br i1 %2841, label %2842, label %2835, !llvm.loop !124

2842:                                             ; preds = %2835, %2816
  %2843 = trunc i64 %2817 to i32
  %2844 = add i32 %2613, %2843
  %2845 = shl i32 %2844, %2612
  %2846 = add i32 %2845, %2606
  %2847 = mul i32 %2846, %16
  %2848 = sext i32 %2847 to i64
  %2849 = getelementptr inbounds i8, ptr %2719, i64 %2848
  br i1 %2778, label %2850, label %2854

2850:                                             ; preds = %2842
  %2851 = add nsw i64 %2818, %2633
  %2852 = mul nsw i64 %2851, %2634
  %2853 = getelementptr inbounds i8, ptr %2780, i64 %2852
  br label %2860

2854:                                             ; preds = %2842
  %2855 = trunc i64 %2818 to i32
  %2856 = sub i32 %2631, %2855
  %2857 = mul nsw i32 %2856, %16
  %2858 = sext i32 %2857 to i64
  %2859 = getelementptr inbounds i8, ptr %2779, i64 %2858
  br label %2860

2860:                                             ; preds = %2850, %2854
  %2861 = phi ptr [ %2853, %2850 ], [ %2859, %2854 ]
  br i1 %2694, label %2862, label %2869

2862:                                             ; preds = %2860, %2862
  %2863 = phi i64 [ %2867, %2862 ], [ 0, %2860 ]
  %2864 = getelementptr inbounds float, ptr %2861, i64 %2863
  %2865 = load float, ptr %2864, align 4, !tbaa !95
  %2866 = getelementptr inbounds float, ptr %2849, i64 %2863
  store float %2865, ptr %2866, align 4, !tbaa !95
  %2867 = add nuw nsw i64 %2863, 1
  %2868 = icmp eq i64 %2867, %2704
  br i1 %2868, label %2869, label %2862, !llvm.loop !124

2869:                                             ; preds = %2862, %2860
  %2870 = add nuw nsw i64 %2817, 1
  %2871 = icmp eq i64 %2870, %2639
  br i1 %2871, label %2872, label %2816, !llvm.loop !284

2872:                                             ; preds = %2869, %2771
  %2873 = add nuw nsw i64 %2706, 1
  %2874 = icmp eq i64 %2873, %2696
  br i1 %2874, label %2875, label %2705, !llvm.loop !285

2875:                                             ; preds = %2872, %2673
  %2876 = add nuw nsw i64 %2674, 1
  %2877 = icmp eq i64 %2876, %2638
  br i1 %2877, label %2878, label %2673, !llvm.loop !286

2878:                                             ; preds = %2875, %2601
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !51
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVert(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = ptrtoint ptr %1 to i64
  %5 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = zext i32 %6 to i64
  %8 = urem i64 %4, %7
  %9 = load ptr, ptr %3, align 8, !tbaa !55
  %10 = shl nuw i64 %8, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %12, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._EHEntry, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %13, !llvm.loop !132

21:                                               ; preds = %13, %17
  ret ptr %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getEdge(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = ptrtoint ptr %1 to i64
  %6 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = zext i32 %7 to i64
  %9 = urem i64 %5, %8
  %10 = load ptr, ptr %4, align 8, !tbaa !55
  %11 = shl nuw i64 %9, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._EHEntry, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !132

22:                                               ; preds = %14, %18
  ret ptr %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getFace(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = ptrtoint ptr %1 to i64
  %6 = getelementptr inbounds %struct._EHash, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = zext i32 %7 to i64
  %9 = urem i64 %5, %8
  %10 = load ptr, ptr %4, align 8, !tbaa !55
  %11 = shl nuw i64 %9, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._EHEntry, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !132

22:                                               ; preds = %14, %18
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getSubdivisionLevels(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeSize(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = icmp slt i32 %3, 1
  %5 = shl nuw i32 1, %3
  %6 = add nuw nsw i32 %5, 1
  %7 = select i1 %4, i32 -1, i32 %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeLevelSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = shl nuw i32 1, %1
  %10 = add nuw nsw i32 %9, 1
  br label %11

11:                                               ; preds = %2, %4, %8
  %12 = phi i32 [ %10, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getGridSize(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = icmp slt i32 %3, 1
  %5 = add nsw i32 %3, -1
  %6 = shl nuw i32 1, %5
  %7 = add nuw nsw i32 %6, 1
  %8 = select i1 %4, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getGridLevelSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %1, -1
  %10 = shl nuw i32 1, %9
  %11 = add nuw nsw i32 %10, 1
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi i32 [ %11, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getSimpleSubdiv(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !160
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertVertHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getVertAge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 1
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = add nsw i32 %11, 1
  %13 = mul nsw i32 %12, %9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %17 = load i32, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 19
  %19 = load i32, ptr %18, align 8, !tbaa !98
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %15, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = sub nsw i32 %17, %22
  br label %24

24:                                               ; preds = %2, %6
  %25 = phi i32 [ %23, %6 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getVertUserData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 1
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = add nsw i32 %7, 1
  %9 = mul nsw i32 %8, %5
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getVertNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2, !tbaa !108
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVertFace(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !108
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getVertNumEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !109
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getVertEdge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !109
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGVert, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertData(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 1
  %10 = mul nsw i32 %8, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi ptr [ %12, %6 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getVertLevelData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.CCGVert, ptr %1, i64 1
  %13 = mul nsw i32 %11, %2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %3, %5, %9
  %17 = phi ptr [ %15, %9 ], [ null, %5 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeEdgeHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeAge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 1
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = add nsw i32 %11, 1
  %13 = shl nuw i32 1, %12
  %14 = add i32 %13, %11
  %15 = mul nsw i32 %14, %9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %7, i64 %16
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 20
  %21 = load i32, ptr %20, align 4, !tbaa !99
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %17, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !60
  %25 = sub nsw i32 %19, %24
  br label %26

26:                                               ; preds = %2, %6
  %27 = phi i32 [ %25, %6 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getEdgeNumFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !111
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ccgSubSurf_getEdgeFace(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !111
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi ptr [ %14, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeVert0(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeVert1(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeDataArray(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = shl nuw i32 1, %4
  %10 = add nsw i32 %4, -1
  %11 = add i32 %10, %9
  %12 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 1
  %13 = mul nsw i32 %8, %11
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi ptr [ %15, %6 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = shl nuw i32 1, %5
  %11 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 1
  %12 = add i32 %2, -1
  %13 = add i32 %12, %5
  %14 = add i32 %13, %10
  %15 = mul nsw i32 %9, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  br label %18

18:                                               ; preds = %3, %7
  %19 = phi ptr [ %17, %7 ], [ null, %3 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getEdgeLevelData(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp slt i32 %8, %3
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = shl nuw i32 1, %3
  %14 = getelementptr inbounds %struct.CCGEdge, ptr %1, i64 1
  %15 = add i32 %2, -1
  %16 = add i32 %15, %3
  %17 = add i32 %16, %13
  %18 = mul nsw i32 %12, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  br label %21

21:                                               ; preds = %4, %6, %10
  %22 = phi ptr [ %20, %10 ], [ null, %6 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @ccgSubSurf_getEdgeCrease(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGEdge, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 4, !tbaa !131
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getFaceFaceHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getFaceAge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = add nsw i32 %8, -1
  %10 = shl nuw i32 1, %9
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %13 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !119
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = sext i16 %14 to i32
  %21 = mul nsw i32 %11, %20
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 %21, %11
  %24 = add nsw i32 %22, %23
  %25 = mul nsw i32 %24, %19
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %17, i64 %26
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 8, !tbaa !69
  %30 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 21
  %31 = load i32, ptr %30, align 8, !tbaa !100
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !60
  %35 = sub nsw i32 %29, %34
  br label %36

36:                                               ; preds = %2, %6
  %37 = phi i32 [ %35, %6 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceUserData(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = add nsw i32 %4, -1
  %6 = shl nuw i32 1, %5
  %7 = add nuw nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %9 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !119
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = sext i16 %10 to i32
  %17 = mul nsw i32 %7, %16
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %17, %7
  %20 = add nsw i32 %18, %19
  %21 = mul nsw i32 %20, %15
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %13, i64 %22
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getFaceNumVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !119
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getFaceVert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !119
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 1
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %2, %4, %9
  %15 = phi ptr [ %13, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgSubSurf_getFaceEdge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !119
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 1
  %11 = sext i16 %6 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = zext nneg i32 %1 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %2, %4, %9
  %17 = phi ptr [ %15, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getFaceEdgeIndex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !119
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 1
  %9 = zext nneg i16 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  br label %11

11:                                               ; preds = %6, %16
  %12 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %21, label %11, !llvm.loop !287

19:                                               ; preds = %11
  %20 = trunc i64 %12 to i32
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceCenterData(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 1
  %3 = getelementptr inbounds %struct.CCGFace, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !119
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridEdgeDataArray(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = add nsw i32 %5, -1
  %9 = shl nuw i32 1, %8
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %12 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !119
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = add nuw i32 %9, 2
  %18 = mul i32 %17, %2
  %19 = mul i32 %18, %10
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, %7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %16, i64 %22
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridEdgeData(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = add nsw i32 %6, -1
  %10 = shl nuw i32 1, %9
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %13 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !119
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = add nuw i32 %10, 2
  %19 = mul i32 %18, %2
  %20 = mul i32 %19, %11
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, %8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %17, i64 %23
  %25 = mul nsw i32 %8, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  ret ptr %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridDataArray(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = add nsw i32 %5, -1
  %9 = shl nuw i32 1, %8
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %12 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !119
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = add nuw i32 %9, 2
  %18 = mul i32 %17, %2
  %19 = mul i32 %18, %10
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, %7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %16, i64 %22
  %24 = mul nsw i32 %10, %7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  ret ptr %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ccgSubSurf_getFaceGridData(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = add nsw i32 %7, -1
  %11 = shl nuw i32 1, %10
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 1
  %14 = getelementptr inbounds %struct.CCGFace, ptr %1, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !119
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = add nuw i32 %11, 2
  %20 = mul i32 %19, %2
  %21 = mul i32 %20, %12
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 %22, %9
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %18, i64 %24
  %26 = mul nsw i32 %12, %4
  %27 = add i32 %12, %3
  %28 = add i32 %27, %26
  %29 = mul nsw i32 %28, %9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ccgSubSurf_getVertIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr %4(ptr noundef %6, i32 noundef 24) #23
  store ptr %2, ptr %7, align 8, !tbaa !288
  %8 = getelementptr inbounds %struct._EHashIterator, ptr %7, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !290
  %9 = getelementptr inbounds %struct._EHashIterator, ptr %7, i64 0, i32 1
  store i32 -1, ptr %9, align 8, !tbaa !291
  %10 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %17, %1
  %14 = phi i64 [ -1, %1 ], [ %15, %17 ]
  %15 = add nsw i64 %14, 1
  %16 = icmp eq i64 %15, %12
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 8, !tbaa !55
  %19 = getelementptr inbounds ptr, ptr %18, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  store ptr %20, ptr %8, align 8, !tbaa !290
  %21 = icmp eq ptr %20, null
  br i1 %21, label %13, label %22, !llvm.loop !292

22:                                               ; preds = %13, %17
  %23 = trunc i64 %15 to i32
  store i32 %23, ptr %9, align 8, !tbaa !291
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ccgSubSurf_getEdgeIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr %5(ptr noundef %7, i32 noundef 24) #23
  store ptr %3, ptr %8, align 8, !tbaa !288
  %9 = getelementptr inbounds %struct._EHashIterator, ptr %8, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !290
  %10 = getelementptr inbounds %struct._EHashIterator, ptr %8, i64 0, i32 1
  store i32 -1, ptr %10, align 8, !tbaa !291
  %11 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %18, %1
  %15 = phi i64 [ -1, %1 ], [ %16, %18 ]
  %16 = add nsw i64 %15, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !tbaa !55
  %20 = getelementptr inbounds ptr, ptr %19, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  store ptr %21, ptr %9, align 8, !tbaa !290
  %22 = icmp eq ptr %21, null
  br i1 %22, label %14, label %23, !llvm.loop !292

23:                                               ; preds = %14, %18
  %24 = trunc i64 %16 to i32
  store i32 %24, ptr %10, align 8, !tbaa !291
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ccgSubSurf_getFaceIterator(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr %5(ptr noundef %7, i32 noundef 24) #23
  store ptr %3, ptr %8, align 8, !tbaa !288
  %9 = getelementptr inbounds %struct._EHashIterator, ptr %8, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !290
  %10 = getelementptr inbounds %struct._EHashIterator, ptr %8, i64 0, i32 1
  store i32 -1, ptr %10, align 8, !tbaa !291
  %11 = getelementptr inbounds %struct._EHash, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %18, %1
  %15 = phi i64 [ -1, %1 ], [ %16, %18 ]
  %16 = add nsw i64 %15, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !tbaa !55
  %20 = getelementptr inbounds ptr, ptr %19, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  store ptr %21, ptr %9, align 8, !tbaa !290
  %22 = icmp eq ptr %21, null
  br i1 %22, label %14, label %23, !llvm.loop !292

23:                                               ; preds = %14, %18
  %24 = trunc i64 %16 to i32
  store i32 %24, ptr %10, align 8, !tbaa !291
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgVertIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgVertIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgVertIterator_next(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !43
  store ptr %7, ptr %2, align 8, !tbaa !290
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = load i32, ptr %6, align 8, !tbaa !291
  %14 = sext i32 %13 to i64
  %15 = sext i32 %12 to i64
  br label %16

16:                                               ; preds = %9, %20
  %17 = phi i64 [ %14, %9 ], [ %18, %20 ]
  %18 = add nsw i64 %17, 1
  %19 = icmp eq i64 %18, %15
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !55
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  store ptr %23, ptr %2, align 8, !tbaa !290
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %25, !llvm.loop !293

25:                                               ; preds = %20, %16
  %26 = trunc i64 %18 to i32
  store i32 %26, ptr %6, align 8, !tbaa !291
  br label %27

27:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ccgVertIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  tail call void %4(ptr noundef %6, ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgEdgeIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgEdgeIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgEdgeIterator_next(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !43
  store ptr %7, ptr %2, align 8, !tbaa !290
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = load i32, ptr %6, align 8, !tbaa !291
  %14 = sext i32 %13 to i64
  %15 = sext i32 %12 to i64
  br label %16

16:                                               ; preds = %9, %20
  %17 = phi i64 [ %14, %9 ], [ %18, %20 ]
  %18 = add nsw i64 %17, 1
  %19 = icmp eq i64 %18, %15
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !55
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  store ptr %23, ptr %2, align 8, !tbaa !290
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %25, !llvm.loop !293

25:                                               ; preds = %20, %16
  %26 = trunc i64 %18 to i32
  store i32 %26, ptr %6, align 8, !tbaa !291
  br label %27

27:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ccgEdgeIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  tail call void %4(ptr noundef %6, ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ccgFaceIterator_getCurrent(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgFaceIterator_isStopped(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ccgFaceIterator_next(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._EHashIterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !43
  store ptr %7, ptr %2, align 8, !tbaa !290
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct._EHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = load i32, ptr %6, align 8, !tbaa !291
  %14 = sext i32 %13 to i64
  %15 = sext i32 %12 to i64
  br label %16

16:                                               ; preds = %9, %20
  %17 = phi i64 [ %14, %9 ], [ %18, %20 ]
  %18 = add nsw i64 %17, 1
  %19 = icmp eq i64 %18, %15
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !55
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  store ptr %23, ptr %2, align 8, !tbaa !290
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %25, !llvm.loop !293

25:                                               ; preds = %20, %16
  %26 = trunc i64 %18 to i32
  store i32 %26, ptr %6, align 8, !tbaa !291
  br label %27

27:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ccgFaceIterator_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 4, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._EHash, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  tail call void %4(ptr noundef %6, ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalVerts(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = add nsw i32 %3, -1
  %5 = load ptr, ptr %0, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct._EHash, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct._EHash, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = freeze i32 %11
  %13 = shl i32 %12, %3
  %14 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct._EHash, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !96
  %20 = shl nsw i32 -1, %4
  %21 = xor i32 %20, -1
  %22 = shl i32 %21, %4
  %23 = mul nsw i32 %19, %22
  %24 = sub i32 %7, %12
  %25 = add i32 %24, %13
  %26 = add nsw i32 %25, %17
  %27 = add nsw i32 %26, %23
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalEdges(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = add nsw i32 %3, -1
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct._EHash, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = shl i32 %9, %3
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !96
  %13 = add nsw i32 %5, -1
  %14 = shl i32 %13, %4
  %15 = shl nsw i32 %14, 1
  %16 = add nsw i32 %15, %5
  %17 = mul nsw i32 %16, %12
  %18 = add nsw i32 %17, %10
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ccgSubSurf_getNumFinalFaces(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = add nsw i32 %3, -1
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.CCGSubSurf, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !96
  %8 = shl i32 %5, %4
  %9 = mul nsw i32 %8, %7
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @CCG_key(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  store i32 %2, ptr %0, align 4, !tbaa !294
  %4 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !296
  %7 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 8
  store i32 %8, ptr %9, align 4, !tbaa !297
  %10 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !104
  %12 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 7
  store i32 %11, ptr %12, align 4, !tbaa !298
  %13 = icmp eq i32 %8, 0
  %14 = add i32 %5, -12
  %15 = select i1 %13, i32 -1, i32 %14
  %16 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !299
  %17 = icmp slt i32 %2, 1
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %2, -1
  %24 = shl nuw i32 1, %23
  %25 = add nuw nsw i32 %24, 1
  br label %26

26:                                               ; preds = %3, %18, %22
  %27 = phi i32 [ %25, %22 ], [ -1, %18 ], [ -1, %3 ]
  %28 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  store i32 %27, ptr %28, align 4, !tbaa !300
  %29 = mul nsw i32 %27, %27
  %30 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !301
  %31 = mul nsw i32 %29, %5
  %32 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 4
  store i32 %31, ptr %32, align 4, !tbaa !302
  %33 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 15
  %34 = load i32, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 9
  store i32 %34, ptr %35, align 4, !tbaa !303
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 16
  %39 = load i32, ptr %38, align 4, !tbaa !103
  br label %40

40:                                               ; preds = %26, %37
  %41 = phi i32 [ %39, %37 ], [ -1, %26 ]
  %42 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  store i32 %41, ptr %42, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @CCG_key_top_level(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !61
  store i32 %4, ptr %0, align 4, !tbaa !294
  %5 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !296
  %8 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 8
  store i32 %9, ptr %10, align 4, !tbaa !297
  %11 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !104
  %13 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 7
  store i32 %12, ptr %13, align 4, !tbaa !298
  %14 = icmp eq i32 %9, 0
  %15 = add i32 %6, -12
  %16 = select i1 %14, i32 -1, i32 %15
  %17 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  store i32 %16, ptr %17, align 4, !tbaa !299
  %18 = icmp slt i32 %4, 1
  %19 = add nsw i32 %4, -1
  %20 = shl nuw i32 1, %19
  %21 = add nuw nsw i32 %20, 1
  %22 = select i1 %18, i32 -1, i32 %21
  %23 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !300
  %24 = mul nsw i32 %22, %22
  %25 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !301
  %26 = mul nsw i32 %24, %6
  %27 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 4
  store i32 %26, ptr %27, align 4, !tbaa !302
  %28 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 15
  %29 = load i32, ptr %28, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 9
  store i32 %29, ptr %30, align 4, !tbaa !303
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.CCGSubSurf, ptr %1, i64 0, i32 16
  %34 = load i32, ptr %33, align 4, !tbaa !103
  br label %35

35:                                               ; preds = %2, %32
  %36 = phi i32 [ %34, %32 ], [ -1, %2 ]
  %37 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  store i32 %36, ptr %37, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias noundef ptr @_stdAllocator_alloc(ptr nocapture readnone %0, i32 noundef %1) #14 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noalias noundef ptr @_stdAllocator_realloc(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 %3) #15 {
  %5 = sext i32 %2 to i64
  %6 = tail call ptr @realloc(ptr noundef %1, i64 noundef %5) #25
  ret ptr %6
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_stdAllocator_free(ptr nocapture readnone %0, ptr nocapture noundef %1) #15 {
  tail call void @free(ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }

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
!35 = !{!"CCGAllocatorIFC", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!35, !36, i64 16}
!41 = !{!35, !36, i64 24}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !36, i64 80}
!45 = !{!"CCGSubSurf", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !35, i64 48, !36, i64 80, !47, i64 88, !47, i64 92, !47, i64 96, !48, i64 100, !36, i64 104, !36, i64 112, !36, i64 120, !47, i64 128, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !47, i64 192, !36, i64 200, !36, i64 208}
!46 = !{!"CCGMeshIFC", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20}
!47 = !{!"int", !37, i64 0}
!48 = !{!"float", !37, i64 0}
!49 = !{!50, !36, i64 56}
!50 = !{!"_EHash", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !35, i64 24, !36, i64 56}
!51 = !{!50, !47, i64 8}
!52 = !{!50, !47, i64 16}
!53 = !{!50, !47, i64 12}
!54 = !{!50, !36, i64 24}
!55 = !{!50, !36, i64 0}
!56 = !{!45, !36, i64 0}
!57 = !{!45, !36, i64 8}
!58 = !{!45, !36, i64 16}
!59 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 4, !60, i64 12, i64 4, !60, i64 16, i64 4, !60, i64 20, i64 4, !60}
!60 = !{!47, !47, i64 0}
!61 = !{!45, !47, i64 88}
!62 = !{!45, !47, i64 128}
!63 = !{!45, !47, i64 132}
!64 = !{!45, !47, i64 136}
!65 = !{!45, !36, i64 48}
!66 = !{!45, !47, i64 40}
!67 = !{!45, !36, i64 112}
!68 = !{!45, !36, i64 120}
!69 = !{!45, !47, i64 144}
!70 = !{i64 0, i64 8, !43}
!71 = !{!45, !47, i64 164}
!72 = !{!45, !36, i64 184}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!77, !36, i64 0}
!77 = !{!"_EHEntry", !36, i64 0, !36, i64 8}
!78 = !{!45, !36, i64 64}
!79 = distinct !{!79, !74, !75}
!80 = !{!50, !36, i64 40}
!81 = !{!45, !36, i64 176}
!82 = !{!83, !36, i64 40}
!83 = !{!"CCGEdge", !36, i64 0, !36, i64 8, !84, i64 16, !84, i64 18, !48, i64 20, !36, i64 24, !36, i64 32, !36, i64 40}
!84 = !{!"short", !37, i64 0}
!85 = !{!45, !36, i64 168}
!86 = !{!87, !36, i64 24}
!87 = !{!"CCGVert", !36, i64 0, !36, i64 8, !84, i64 16, !84, i64 18, !84, i64 20, !84, i64 22, !36, i64 24, !36, i64 32}
!88 = !{!87, !36, i64 32}
!89 = !{!45, !36, i64 200}
!90 = !{!45, !36, i64 208}
!91 = !{!45, !36, i64 104}
!92 = !{!45, !47, i64 96}
!93 = !{!45, !48, i64 100}
!94 = !{!45, !47, i64 28}
!95 = !{!48, !48, i64 0}
!96 = !{!45, !47, i64 92}
!97 = !{!45, !47, i64 148}
!98 = !{!45, !47, i64 152}
!99 = !{!45, !47, i64 156}
!100 = !{!45, !47, i64 160}
!101 = !{!45, !47, i64 24}
!102 = !{!45, !47, i64 32}
!103 = !{!45, !47, i64 140}
!104 = !{!45, !47, i64 36}
!105 = !{!45, !47, i64 192}
!106 = !{!77, !36, i64 8}
!107 = distinct !{!107, !74, !75}
!108 = !{!87, !84, i64 18}
!109 = !{!87, !84, i64 16}
!110 = !{!87, !36, i64 0}
!111 = !{!83, !84, i64 16}
!112 = !{!83, !36, i64 0}
!113 = !{!83, !36, i64 24}
!114 = distinct !{!114, !74, !75}
!115 = !{!83, !36, i64 32}
!116 = !{!87, !84, i64 20}
!117 = !{!118, !36, i64 0}
!118 = !{!"CCGFace", !36, i64 0, !36, i64 8, !84, i64 16, !84, i64 18, !84, i64 20, !84, i64 22}
!119 = !{!118, !84, i64 16}
!120 = distinct !{!120, !74, !75}
!121 = distinct !{!121, !74, !75}
!122 = distinct !{!122, !74, !75}
!123 = !{!87, !36, i64 8}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = distinct !{!126, !74, !75}
!127 = distinct !{!127, !74, !75}
!128 = distinct !{!128, !74, !75}
!129 = distinct !{!129, !74, !75}
!130 = distinct !{!130, !74, !75}
!131 = !{!83, !48, i64 20}
!132 = distinct !{!132, !74, !75}
!133 = !{!83, !84, i64 18}
!134 = !{!83, !36, i64 8}
!135 = !{!45, !36, i64 56}
!136 = distinct !{!136, !74, !75}
!137 = distinct !{!137, !74, !75}
!138 = distinct !{!138, !74, !75}
!139 = distinct !{!139, !74, !75}
!140 = distinct !{!140, !74, !75}
!141 = distinct !{!141, !74, !75}
!142 = distinct !{!142, !74, !75}
!143 = !{!118, !84, i64 18}
!144 = distinct !{!144, !74, !75}
!145 = distinct !{!145, !74, !75}
!146 = !{!118, !36, i64 8}
!147 = distinct !{!147, !74, !75}
!148 = distinct !{!148, !74, !75}
!149 = distinct !{!149, !74, !75}
!150 = distinct !{!150, !74, !75}
!151 = distinct !{!151, !74, !75}
!152 = distinct !{!152, !74, !75}
!153 = distinct !{!153, !74, !75}
!154 = distinct !{!154, !74, !75}
!155 = distinct !{!155, !74, !75}
!156 = distinct !{!156, !74, !75}
!157 = distinct !{!157, !74, !75}
!158 = distinct !{!158, !74, !75}
!159 = distinct !{!159, !74, !75}
!160 = !{!45, !47, i64 44}
!161 = distinct !{!161, !74, !75}
!162 = distinct !{!162, !74, !75}
!163 = distinct !{!163, !74, !75}
!164 = distinct !{!164, !74, !75}
!165 = distinct !{!165, !74, !75}
!166 = distinct !{!166, !74, !75}
!167 = distinct !{!167, !74, !75}
!168 = distinct !{!168, !74, !75}
!169 = distinct !{!169, !74, !75}
!170 = distinct !{!170, !74, !75}
!171 = distinct !{!171, !74, !75}
!172 = distinct !{!172, !74, !75}
!173 = distinct !{!173, !74, !75}
!174 = distinct !{!174, !74, !75}
!175 = distinct !{!175, !74, !75}
!176 = distinct !{!176, !74, !75}
!177 = distinct !{!177, !74, !75}
!178 = distinct !{!178, !74, !75}
!179 = distinct !{!179, !74, !75}
!180 = distinct !{!180, !74, !75}
!181 = distinct !{!181, !74, !75}
!182 = distinct !{!182, !74, !75}
!183 = distinct !{!183, !74, !75}
!184 = distinct !{!184, !74, !75}
!185 = distinct !{!185, !74, !75}
!186 = distinct !{!186, !74, !75}
!187 = distinct !{!187, !74, !75}
!188 = distinct !{!188, !74, !75}
!189 = distinct !{!189, !74, !75}
!190 = distinct !{!190, !74, !75}
!191 = distinct !{!191, !74, !75}
!192 = distinct !{!192, !74, !75}
!193 = distinct !{!193, !74, !75}
!194 = distinct !{!194, !74, !75}
!195 = distinct !{!195, !74, !75}
!196 = distinct !{!196, !74, !75}
!197 = distinct !{!197, !74, !75}
!198 = distinct !{!198, !74, !75}
!199 = distinct !{!199, !74, !75}
!200 = distinct !{!200, !74, !75}
!201 = distinct !{!201, !74, !75}
!202 = distinct !{!202, !74, !75}
!203 = distinct !{!203, !74, !75}
!204 = distinct !{!204, !74, !75}
!205 = distinct !{!205, !74, !75}
!206 = distinct !{!206, !74, !75}
!207 = distinct !{!207, !74, !75}
!208 = distinct !{!208, !74, !75}
!209 = distinct !{!209, !74, !75}
!210 = distinct !{!210, !74, !75}
!211 = distinct !{!211, !74, !75}
!212 = distinct !{!212, !74, !75}
!213 = distinct !{!213, !74, !75}
!214 = distinct !{!214, !74, !75}
!215 = distinct !{!215, !74, !75}
!216 = distinct !{!216, !74, !75}
!217 = distinct !{!217, !74, !75}
!218 = distinct !{!218, !74, !75}
!219 = distinct !{!219, !74, !75}
!220 = distinct !{!220, !74, !75}
!221 = distinct !{!221, !74, !75}
!222 = distinct !{!222, !74, !75}
!223 = distinct !{!223, !74, !75}
!224 = distinct !{!224, !74, !75}
!225 = distinct !{!225, !74, !75}
!226 = distinct !{!226, !74, !75}
!227 = distinct !{!227, !74, !75}
!228 = distinct !{!228, !74, !75}
!229 = distinct !{!229, !74, !75}
!230 = distinct !{!230, !74, !75}
!231 = distinct !{!231, !74, !75}
!232 = distinct !{!232, !74, !75}
!233 = distinct !{!233, !74, !75}
!234 = distinct !{!234, !74, !75}
!235 = distinct !{!235, !74, !75}
!236 = distinct !{!236, !74, !75}
!237 = distinct !{!237, !74, !75}
!238 = distinct !{!238, !74, !75}
!239 = distinct !{!239, !74, !75}
!240 = distinct !{!240, !74, !75}
!241 = distinct !{!241, !74, !75}
!242 = distinct !{!242, !74, !75}
!243 = distinct !{!243, !74, !75}
!244 = distinct !{!244, !74, !75}
!245 = distinct !{!245, !74, !75}
!246 = distinct !{!246, !74, !75}
!247 = distinct !{!247, !74, !75}
!248 = distinct !{!248, !74, !75}
!249 = distinct !{!249, !74, !75}
!250 = distinct !{!250, !74, !75}
!251 = distinct !{!251, !74, !75}
!252 = distinct !{!252, !74, !75}
!253 = distinct !{!253, !74, !75}
!254 = distinct !{!254, !74, !75}
!255 = distinct !{!255, !74, !75}
!256 = distinct !{!256, !74, !75}
!257 = distinct !{!257, !74, !75}
!258 = distinct !{!258, !74, !75}
!259 = distinct !{!259, !74, !75}
!260 = distinct !{!260, !74, !75}
!261 = distinct !{!261, !74, !75}
!262 = distinct !{!262, !74, !75}
!263 = distinct !{!263, !74, !75}
!264 = distinct !{!264, !74, !75}
!265 = distinct !{!265, !74, !75}
!266 = distinct !{!266, !74, !75}
!267 = distinct !{!267, !74, !75}
!268 = distinct !{!268, !74, !75}
!269 = distinct !{!269, !74, !75}
!270 = distinct !{!270, !74, !75}
!271 = distinct !{!271, !74, !75}
!272 = distinct !{!272, !74, !75}
!273 = distinct !{!273, !74, !75}
!274 = distinct !{!274, !74, !75}
!275 = distinct !{!275, !74, !75}
!276 = distinct !{!276, !74, !75}
!277 = distinct !{!277, !74, !75}
!278 = distinct !{!278, !74, !75}
!279 = distinct !{!279, !74, !75}
!280 = distinct !{!280, !74, !75}
!281 = distinct !{!281, !74, !75}
!282 = distinct !{!282, !74, !75}
!283 = distinct !{!283, !74, !75}
!284 = distinct !{!284, !74, !75}
!285 = distinct !{!285, !74, !75}
!286 = distinct !{!286, !74, !75}
!287 = distinct !{!287, !74, !75}
!288 = !{!289, !36, i64 0}
!289 = !{!"_EHashIterator", !36, i64 0, !47, i64 8, !36, i64 16}
!290 = !{!289, !36, i64 16}
!291 = !{!289, !47, i64 8}
!292 = distinct !{!292, !74, !75}
!293 = distinct !{!293, !74, !75}
!294 = !{!295, !47, i64 0}
!295 = !{!"CCGKey", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!296 = !{!295, !47, i64 4}
!297 = !{!295, !47, i64 32}
!298 = !{!295, !47, i64 28}
!299 = !{!295, !47, i64 20}
!300 = !{!295, !47, i64 8}
!301 = !{!295, !47, i64 12}
!302 = !{!295, !47, i64 16}
!303 = !{!295, !47, i64 36}
!304 = !{!295, !47, i64 24}
