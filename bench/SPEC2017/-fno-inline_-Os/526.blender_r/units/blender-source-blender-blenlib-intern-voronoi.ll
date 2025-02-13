; ModuleID = 'blender/source/blender/blenlib/intern/voronoi.c'
source_filename = "blender/source/blender/blenlib/intern/voronoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VoronoiProcess = type { %struct.ListBase, %struct.ListBase, ptr, i32, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.VoronoiEvent = type { ptr, ptr, i32, [2 x float], ptr }
%struct.VoronoiSite = type { [2 x float], [3 x float] }
%struct.VoronoiEdge = type { ptr, ptr, [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], float, float, ptr }
%struct.VoronoiParabola = type { ptr, ptr, ptr, ptr, ptr, [2 x float], i8 }
%struct.VoronoiTriangulationPoint = type { [2 x float], [3 x float], i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"voronoi site event\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"voronoi parabola site\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"voronoi edge\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"voronoi parabola\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"voronoi circle event\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"clamped edge\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"boundary edge\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.voronoi_addTriangulationPoint = private unnamed_addr constant [30 x i8] c"voronoi_addTriangulationPoint\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"triangulation points\00", align 1
@__func__.voronoi_addTriangle = private unnamed_addr constant [20 x i8] c"voronoi_addTriangle\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"trianglulation triangles\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_voronoi_compute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.VoronoiProcess, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 4
  store i32 %3, ptr %8, align 4, !tbaa !42
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = zext nneg i32 %1 to i64
  br label %17

12:                                               ; preds = %17
  %13 = load ptr, ptr %6, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 5
  br label %26

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %24, %17 ]
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %20 = call ptr %19(i64 noundef 40, ptr noundef nonnull @.str) #16
  %21 = getelementptr inbounds %struct.VoronoiEvent, ptr %20, i64 0, i32 2
  store i32 0, ptr %21, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.VoronoiEvent, ptr %20, i64 0, i32 3
  %23 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %18
  call fastcc void @copy_v2_v2(ptr noundef nonnull %22, ptr noundef %23) #17
  call fastcc void @voronoi_insertEvent(ptr noundef nonnull %6, ptr noundef %20) #17
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %12, label %17, !llvm.loop !47

26:                                               ; preds = %15, %36
  %27 = phi ptr [ %13, %15 ], [ %37, %36 ]
  %28 = getelementptr inbounds %struct.VoronoiEvent, ptr %27, i64 0, i32 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !49
  store float %29, ptr %16, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.VoronoiEvent, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !45
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.VoronoiEvent, ptr %27, i64 0, i32 3
  call fastcc void @voronoi_addParabola(ptr noundef nonnull %6, ptr noundef nonnull %34) #17
  br label %36

35:                                               ; preds = %26
  call fastcc void @voronoi_removeParabola(ptr noundef nonnull %6, ptr noundef nonnull %27) #17
  br label %36

36:                                               ; preds = %35, %33
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %27) #16
  %37 = load ptr, ptr %6, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !51

39:                                               ; preds = %36, %5, %12
  %40 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  call fastcc void @voronoi_finishEdge(ptr noundef nonnull %6, ptr noundef %41) #17
  %42 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %39, %55
  %46 = phi ptr [ %56, %55 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct.VoronoiEdge, ptr %46, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.VoronoiEdge, ptr %46, i64 0, i32 2
  %52 = getelementptr inbounds %struct.VoronoiEdge, ptr %48, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %52) #17
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %54 = load ptr, ptr %47, align 8, !tbaa !54
  call void %53(ptr noundef %54) #16
  br label %55

55:                                               ; preds = %50, %45
  %56 = load ptr, ptr %46, align 8, !tbaa !56
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %45, !llvm.loop !57

58:                                               ; preds = %55, %39
  call void @BLI_movelisttolist(ptr noundef %4, ptr noundef nonnull %42) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !58 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_insertEvent(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !59 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.VoronoiEvent, ptr %1, i64 0, i32 3, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi float [ %7, %5 ], [ %19, %18 ]
  %10 = phi ptr [ %3, %5 ], [ %20, %18 ]
  %11 = getelementptr inbounds %struct.VoronoiEvent, ptr %10, i64 0, i32 3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fcmp olt float %12, %9
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = fcmp oeq float %12, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = fadd float %9, 0xBF847AE140000000
  store float %17, ptr %6, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %17, %16 ], [ %9, %14 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !60

22:                                               ; preds = %18, %8, %2
  %23 = phi ptr [ null, %2 ], [ %10, %8 ], [ null, %18 ]
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_addParabola(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !61 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef %1) #17
  store ptr %9, ptr %5, align 8, !tbaa !52
  br label %67

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 6
  %12 = load i8, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 5
  %16 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = fsub float %17, %19
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i8 0, ptr %11, align 8, !tbaa !62
  %23 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef nonnull %15) #17
  tail call fastcc void @voronoiParabola_setLeft(ptr noundef nonnull %6, ptr noundef %23) #17
  %24 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef nonnull %1) #17
  tail call fastcc void @voronoiParabola_setRight(ptr noundef nonnull %6, ptr noundef %24) #17
  %25 = load float, ptr %1, align 4, !tbaa !49
  %26 = load float, ptr %15, align 4, !tbaa !49
  %27 = fadd float %25, %26
  %28 = fmul float %27, 5.000000e-01
  store float %28, ptr %4, align 4, !tbaa !49
  %29 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !42
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !49
  %33 = fcmp ogt float %25, %26
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call fastcc ptr @voronoiEdge_new(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %1) #17
  br label %38

36:                                               ; preds = %22
  %37 = call fastcc ptr @voronoiEdge_new(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %15) #17
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 4
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %41, ptr noundef %39) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %67

42:                                               ; preds = %14, %10
  %43 = load float, ptr %1, align 4, !tbaa !49
  %44 = tail call fastcc ptr @voronoi_getParabolaByX(ptr noundef nonnull %0, float noundef %43) #17
  %45 = getelementptr inbounds %struct.VoronoiParabola, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %46) #16
  store ptr null, ptr %45, align 8, !tbaa !64
  br label %49

49:                                               ; preds = %48, %42
  %50 = load float, ptr %1, align 4, !tbaa !49
  store float %50, ptr %3, align 4, !tbaa !49
  %51 = getelementptr inbounds %struct.VoronoiParabola, ptr %44, i64 0, i32 5
  %52 = tail call fastcc float @voronoi_getY(ptr noundef nonnull %0, ptr noundef nonnull %51, float noundef %50) #17
  %53 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  store float %52, ptr %53, align 4, !tbaa !49
  %54 = call fastcc ptr @voronoiEdge_new(ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef nonnull %1) #17
  %55 = call fastcc ptr @voronoiEdge_new(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %51) #17
  %56 = getelementptr inbounds %struct.VoronoiEdge, ptr %54, i64 0, i32 9
  store ptr %55, ptr %56, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %57, ptr noundef %54) #16
  %58 = getelementptr inbounds %struct.VoronoiParabola, ptr %44, i64 0, i32 4
  store ptr %55, ptr %58, align 8, !tbaa !65
  %59 = getelementptr inbounds %struct.VoronoiParabola, ptr %44, i64 0, i32 6
  store i8 0, ptr %59, align 8, !tbaa !62
  %60 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef nonnull %51) #17
  %61 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef nonnull %1) #17
  %62 = tail call fastcc ptr @voronoiParabola_newSite(ptr noundef nonnull %51) #17
  tail call fastcc void @voronoiParabola_setRight(ptr noundef nonnull %44, ptr noundef %62) #17
  %63 = tail call fastcc ptr @voronoiParabola_new() #17
  tail call fastcc void @voronoiParabola_setLeft(ptr noundef nonnull %44, ptr noundef %63) #17
  %64 = load ptr, ptr %44, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 4
  store ptr %54, ptr %65, align 8, !tbaa !65
  tail call fastcc void @voronoiParabola_setLeft(ptr noundef %64, ptr noundef %60) #17
  %66 = load ptr, ptr %44, align 8, !tbaa !66
  tail call fastcc void @voronoiParabola_setRight(ptr noundef %66, ptr noundef %61) #17
  tail call fastcc void @voronoi_checkCircle(ptr noundef nonnull %0, ptr noundef %60) #17
  tail call fastcc void @voronoi_checkCircle(ptr noundef nonnull %0, ptr noundef %62) #17
  br label %67

67:                                               ; preds = %49, %38, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_removeParabola(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !67 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.VoronoiEvent, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call fastcc ptr @voronoiParabola_getLeftParent(ptr noundef %5) #17
  %7 = tail call fastcc ptr @voronoiParabola_getRightParent(ptr noundef %5) #17
  %8 = tail call fastcc ptr @voronoiParabola_getLeftChild(ptr noundef %6) #17
  %9 = tail call fastcc ptr @voronoiParabola_getRightChild(ptr noundef %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %10 = getelementptr inbounds %struct.VoronoiParabola, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %11) #16
  store ptr null, ptr %10, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.VoronoiParabola, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %16) #16
  store ptr null, ptr %15, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.VoronoiEvent, ptr %1, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !49
  store float %21, ptr %3, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 5
  %23 = tail call fastcc float @voronoi_getY(ptr noundef %0, ptr noundef nonnull %22, float noundef %21) #17
  %24 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.VoronoiEdge, ptr %26, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %27, ptr noundef nonnull %3) #17
  %28 = getelementptr inbounds %struct.VoronoiParabola, ptr %7, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.VoronoiEdge, ptr %29, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %30, ptr noundef nonnull %3) #17
  %31 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %5, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %19, %34
  %35 = phi ptr [ %42, %34 ], [ null, %19 ]
  %36 = phi ptr [ %38, %34 ], [ %5, %19 ]
  %37 = getelementptr inbounds %struct.VoronoiParabola, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = icmp eq ptr %38, %6
  %40 = select i1 %39, ptr %6, ptr %35
  %41 = icmp eq ptr %38, %7
  %42 = select i1 %41, ptr %7, ptr %40
  %43 = icmp eq ptr %38, %32
  br i1 %43, label %44, label %34, !llvm.loop !70

44:                                               ; preds = %34, %19
  %45 = phi ptr [ null, %19 ], [ %42, %34 ]
  %46 = getelementptr inbounds %struct.VoronoiParabola, ptr %8, i64 0, i32 5
  %47 = getelementptr inbounds %struct.VoronoiParabola, ptr %9, i64 0, i32 5
  %48 = call fastcc ptr @voronoiEdge_new(ptr noundef nonnull %3, ptr noundef nonnull %46, ptr noundef nonnull %47) #17
  %49 = getelementptr inbounds %struct.VoronoiParabola, ptr %45, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %50, ptr noundef %48) #16
  %51 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.VoronoiParabola, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = load ptr, ptr %52, align 8, !tbaa !66
  %56 = icmp eq ptr %55, %5
  %57 = load ptr, ptr %54, align 8, !tbaa !66
  %58 = icmp eq ptr %57, %52
  br i1 %56, label %59, label %71

59:                                               ; preds = %44
  br i1 %58, label %60, label %64

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.VoronoiParabola, ptr %52, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  tail call fastcc void @voronoiParabola_setLeft(ptr noundef nonnull %54, ptr noundef %62) #17
  %63 = load ptr, ptr %51, align 8, !tbaa !69
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi ptr [ %63, %60 ], [ %52, %59 ]
  %66 = getelementptr inbounds %struct.VoronoiParabola, ptr %54, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.VoronoiParabola, ptr %65, i64 0, i32 1
  br label %79

71:                                               ; preds = %44
  br i1 %58, label %72, label %74

72:                                               ; preds = %71
  tail call fastcc void @voronoiParabola_setLeft(ptr noundef nonnull %54, ptr noundef %55) #17
  %73 = load ptr, ptr %51, align 8, !tbaa !69
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi ptr [ %73, %72 ], [ %52, %71 ]
  %76 = getelementptr inbounds %struct.VoronoiParabola, ptr %54, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !71
  %78 = icmp eq ptr %77, %75
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = phi ptr [ %70, %69 ], [ %75, %74 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  tail call fastcc void @voronoiParabola_setRight(ptr noundef nonnull %54, ptr noundef %81) #17
  br label %82

82:                                               ; preds = %79, %74, %64
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %84 = load ptr, ptr %51, align 8, !tbaa !69
  tail call void %83(ptr noundef %84) #16
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %85(ptr noundef nonnull %5) #16
  tail call fastcc void @voronoi_checkCircle(ptr noundef nonnull %0, ptr noundef %8) #17
  tail call fastcc void @voronoi_checkCircle(ptr noundef nonnull %0, ptr noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !49
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !49
  %18 = fadd float %17, 1.000000e+01
  %19 = tail call fastcc float @max_ff(float noundef %15, float noundef %18) #17
  br label %27

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !49
  %23 = fadd float %22, -1.000000e+01
  %24 = tail call fastcc float @min_ff(float noundef 0.000000e+00, float noundef %23) #17
  br label %27

25:                                               ; preds = %2, %27
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %26(ptr noundef nonnull %1) #16
  ret void

27:                                               ; preds = %20, %12
  %28 = phi float [ %19, %12 ], [ %24, %20 ]
  %29 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 3
  store float %28, ptr %29, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 8
  %33 = load float, ptr %32, align 4, !tbaa !74
  %34 = tail call float @llvm.fmuladd.f32(float %28, float %31, float %33)
  %35 = getelementptr inbounds %struct.VoronoiEdge, ptr %8, i64 0, i32 3, i64 1
  store float %34, ptr %35, align 4, !tbaa !49
  %36 = load ptr, ptr %1, align 8, !tbaa !66
  tail call fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  tail call fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %38) #17
  br label %25
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_voronoi_triangulate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  store ptr null, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store ptr null, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 0, ptr %13, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call fastcc void @voronoi_clampEdges(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %14) #17
  call fastcc void @voronoi_createBoundaryEdges(ptr noundef nonnull %14, i32 noundef %3, i32 noundef %4) #17
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %9
  %17 = zext nneg i32 %1 to i64
  br label %24

18:                                               ; preds = %51
  %19 = load i32, ptr %12, align 4, !tbaa !75
  %20 = load ptr, ptr %10, align 8, !tbaa !44
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = zext nneg i32 %19 to i64
  br label %54

24:                                               ; preds = %16, %51
  %25 = phi i64 [ 0, %16 ], [ %52, %51 ]
  %26 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %25
  %27 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %25, i32 1
  %28 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %10, ptr noundef nonnull %12) #17
  %29 = load ptr, ptr %14, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %24, %48
  %32 = phi ptr [ %49, %48 ], [ %29, %24 ]
  %33 = getelementptr inbounds %struct.VoronoiEdge, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.VoronoiEdge, ptr %32, i64 0, i32 3
  br label %35

35:                                               ; preds = %31, %42
  %36 = phi ptr [ %37, %42 ], [ %14, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = call fastcc zeroext i8 @testVoronoiEdge(ptr noundef %26, ptr noundef nonnull %33, ptr noundef nonnull %37) #17, !range !76
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = call fastcc zeroext i8 @testVoronoiEdge(ptr noundef %26, ptr noundef nonnull %34, ptr noundef nonnull %37) #17, !range !76
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %35, !llvm.loop !77

45:                                               ; preds = %35
  %46 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef nonnull %33, ptr noundef nonnull %27, ptr noundef nonnull %10, ptr noundef nonnull %12) #17
  %47 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef nonnull %34, ptr noundef nonnull %27, ptr noundef nonnull %10, ptr noundef nonnull %12) #17
  call fastcc void @voronoi_addTriangle(i32 noundef %28, i32 noundef %46, i32 noundef %47, ptr noundef nonnull %11, ptr noundef nonnull %13) #17
  br label %48

48:                                               ; preds = %39, %42, %45
  %49 = load ptr, ptr %32, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %31, !llvm.loop !78

51:                                               ; preds = %48, %24
  %52 = add nuw nsw i64 %25, 1
  %53 = icmp eq i64 %52, %17
  br i1 %53, label %18, label %24, !llvm.loop !79

54:                                               ; preds = %22, %54
  %55 = phi i64 [ 0, %22 ], [ %61, %54 ]
  %56 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %20, i64 %55, i32 1
  %57 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %20, i64 %55, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !80
  %59 = sitofp i32 %58 to float
  %60 = fdiv float 1.000000e+00, %59
  call fastcc void @mul_v3_fl(ptr noundef nonnull %56, float noundef %60) #17
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %23
  br i1 %62, label %63, label %54, !llvm.loop !82

63:                                               ; preds = %54, %9, %18
  %64 = phi i32 [ %19, %18 ], [ 0, %9 ], [ %19, %54 ]
  %65 = phi ptr [ %20, %18 ], [ null, %9 ], [ %20, %54 ]
  store ptr %65, ptr %5, align 8, !tbaa !44
  store i32 %64, ptr %6, align 4, !tbaa !75
  %66 = load ptr, ptr %11, align 8, !tbaa !44
  store ptr %66, ptr %7, align 8, !tbaa !44
  %67 = load i32, ptr %13, align 4, !tbaa !75
  store i32 %67, ptr %8, align 4, !tbaa !75
  call void @BLI_freelistN(ptr noundef nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_clampEdges(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %13, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %10 = tail call ptr %9(i64 noundef 72, ptr noundef nonnull @.str.5) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !84
  tail call void @BLI_addtail(ptr noundef %3, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 3
  tail call fastcc void @voronoi_clampEdgeVertex(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  tail call fastcc void @voronoi_clampEdgeVertex(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %11) #17
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !86

15:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_createBoundaryEdges(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !87 {
  %4 = alloca [4 x [2 x float]], align 16
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %7 = insertelement <2 x i32> poison, i32 %1, i64 0
  %8 = insertelement <2 x i32> %7, i32 %2, i64 1
  %9 = add nsw <2 x i32> %8, <i32 -1, i32 -1>
  %10 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds [2 x float], ptr %4, i64 1
  %12 = sitofp <2 x i32> %9 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  store float %13, ptr %4, align 16, !tbaa !49
  store <2 x float> %12, ptr %11, align 8, !tbaa !49
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 2
  store float 0.000000e+00, ptr %14, align 16, !tbaa !49
  %15 = getelementptr inbounds [2 x float], ptr %4, i64 2, i64 1
  %16 = extractelement <2 x float> %12, i64 1
  store float %16, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds [2 x float], ptr %4, i64 3
  store <2 x float> zeroinitializer, ptr %17, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i64 0, ptr %6, align 8
  br label %18

18:                                               ; preds = %3, %40
  %19 = phi i64 [ 0, %3 ], [ %44, %40 ]
  %20 = phi i32 [ 0, %3 ], [ %41, %40 ]
  %21 = phi i32 [ 1, %3 ], [ %43, %40 ]
  %22 = call fastcc i32 @voronoi_getNextSideCoord(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %20, i32 noundef %21, ptr noundef nonnull %6) #17, !range !88
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18, %24
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %26 = tail call ptr %25(i64 noundef 72, ptr noundef nonnull @.str.6) #16
  %27 = getelementptr inbounds %struct.VoronoiEdge, ptr %26, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %27, ptr noundef nonnull %5) #17
  %28 = getelementptr inbounds %struct.VoronoiEdge, ptr %26, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %28, ptr noundef nonnull %6) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %26) #16
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %29 = call fastcc i32 @voronoi_getNextSideCoord(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %20, i32 noundef %21, ptr noundef nonnull %6) #17, !range !88
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %24, !llvm.loop !89

31:                                               ; preds = %24, %18
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 %19
  %33 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %32) #17
  %34 = fcmp ogt float %33, 0x3F847AE140000000
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %37 = tail call ptr %36(i64 noundef 72, ptr noundef nonnull @.str.6) #16
  %38 = getelementptr inbounds %struct.VoronoiEdge, ptr %37, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %38, ptr noundef nonnull %5) #17
  %39 = getelementptr inbounds %struct.VoronoiEdge, ptr %37, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %39, ptr noundef nonnull %32) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %37) #16
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %32) #17
  br label %40

40:                                               ; preds = %35, %31
  %41 = xor i32 %20, 1
  %42 = icmp eq i64 %19, 1
  %43 = select i1 %42, i32 -1, i32 %21
  %44 = add nuw nsw i64 %19, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %18, !llvm.loop !90

46:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @voronoi_addTriangulationPoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !91 {
  %5 = load i32, ptr %3, align 4, !tbaa !75
  %6 = icmp sgt i32 %5, 0
  %7 = load ptr, ptr %2, align 8, !tbaa !44
  br i1 %6, label %8, label %23

8:                                                ; preds = %4
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %12 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %7, i64 %11
  %13 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef %0, ptr noundef %12) #17, !range !76
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  %17 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %7, i64 %11, i32 1
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %17, ptr noundef %1) #17
  %18 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %7, i64 %11, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !80
  br label %42

20:                                               ; preds = %10
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %23, label %10, !llvm.loop !92

23:                                               ; preds = %20, %4
  %24 = icmp eq ptr %7, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %27 = add nsw i32 %5, 1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 24
  %30 = tail call ptr %26(ptr noundef nonnull %7, i64 noundef %29, ptr noundef nonnull @__func__.voronoi_addTriangulationPoint) #16
  br label %34

31:                                               ; preds = %23
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %33 = tail call ptr %32(i64 noundef 24, ptr noundef nonnull @.str.7) #16
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ %30, %25 ]
  store ptr %35, ptr %2, align 8, !tbaa !44
  %36 = load i32, ptr %3, align 4, !tbaa !75
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %35, i64 %37
  tail call fastcc void @copy_v2_v2(ptr noundef %38, ptr noundef %0) #17
  %39 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %35, i64 %37, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef %1) #17
  %40 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %35, i64 %37, i32 2
  store i32 1, ptr %40, align 4, !tbaa !80
  %41 = load i32, ptr %3, align 4, !tbaa !75
  br label %42

42:                                               ; preds = %34, %15
  %43 = phi i32 [ %41, %34 ], [ %19, %15 ]
  %44 = phi ptr [ %3, %34 ], [ %18, %15 ]
  %45 = phi i32 [ %41, %34 ], [ %16, %15 ]
  %46 = add nsw i32 %43, 1
  store i32 %46, ptr %44, align 4, !tbaa !75
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @testVoronoiEdge(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !93 {
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.VoronoiEdge, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.VoronoiEdge, ptr %2, i64 0, i32 3
  %7 = call i32 @isect_seg_seg_v2_point(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %11 = fcmp ogt float %10, 0x3F847AE140000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %14 = fcmp ogt float %13, 0x3F847AE140000000
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %12, %3
  br label %16

16:                                               ; preds = %12, %15
  %17 = phi i8 [ 1, %15 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_addTriangle(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !94 {
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %10 = load i32, ptr %4, align 4, !tbaa !75
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 12
  %14 = tail call ptr %9(ptr noundef nonnull %6, i64 noundef %13, ptr noundef nonnull @__func__.voronoi_addTriangle) #16
  br label %18

15:                                               ; preds = %5
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %17 = tail call ptr %16(i64 noundef 12, ptr noundef nonnull @.str.8) #16
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %17, %15 ], [ %14, %8 ]
  store ptr %19, ptr %3, align 8, !tbaa !44
  %20 = load i32, ptr %4, align 4, !tbaa !75
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 %21
  store i32 %0, ptr %22, align 4, !tbaa !75
  %23 = getelementptr inbounds i32, ptr %22, i64 1
  store i32 %1, ptr %23, align 4, !tbaa !75
  %24 = getelementptr inbounds i32, ptr %22, i64 2
  store i32 %2, ptr %24, align 4, !tbaa !75
  %25 = load i32, ptr %4, align 4, !tbaa !75
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %4, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !95 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @voronoiParabola_newSite(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !96 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str.1) #16
  %4 = getelementptr inbounds %struct.VoronoiParabola, ptr %3, i64 0, i32 5
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.VoronoiParabola, ptr %3, i64 0, i32 6
  store i8 1, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.VoronoiParabola, ptr %3, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @voronoiParabola_setLeft(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !97 {
  store ptr %1, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @voronoiParabola_setRight(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @voronoiEdge_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !99 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %5 = tail call ptr %4(i64 noundef 72, ptr noundef nonnull @.str.2) #16
  %6 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 5
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %1) #17
  %8 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 6
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef %2) #17
  %9 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 9
  store ptr null, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 3
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !49
  %11 = load float, ptr %2, align 4, !tbaa !49
  %12 = load float, ptr %1, align 4, !tbaa !49
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = fsub float %15, %17
  %19 = fdiv float %13, %18
  %20 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 7
  store float %19, ptr %20, align 8, !tbaa !73
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = load float, ptr %0, align 4, !tbaa !49
  %24 = fneg float %19
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float %22)
  %26 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !74
  %27 = load float, ptr %16, align 4, !tbaa !49
  %28 = load float, ptr %14, align 4, !tbaa !49
  %29 = fsub float %27, %28
  %30 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 4
  store float %29, ptr %30, align 8, !tbaa !49
  %31 = load float, ptr %2, align 4, !tbaa !49
  %32 = load float, ptr %1, align 4, !tbaa !49
  %33 = fsub float %31, %32
  %34 = fneg float %33
  %35 = getelementptr inbounds %struct.VoronoiEdge, ptr %5, i64 0, i32 4, i64 1
  store float %34, ptr %35, align 4, !tbaa !49
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc ptr @voronoi_getParabolaByX(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !50
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 6
  %8 = load i8, ptr %7, align 8, !tbaa !62
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %6, %2 ]
  %12 = tail call fastcc float @voronoi_getXOfEdge(ptr noundef %0, ptr noundef nonnull %11, float noundef %5) #17
  %13 = fcmp ogt float %12, %1
  %14 = getelementptr inbounds %struct.VoronoiParabola, ptr %11, i64 0, i32 1
  %15 = select i1 %13, ptr %11, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.VoronoiParabola, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 8, !tbaa !62
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %10, label %20, !llvm.loop !101

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %6, %2 ], [ %16, %10 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @voronoi_getY(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !102 {
  %4 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fsub float %7, %5
  %9 = fmul float %8, 2.000000e+00
  %10 = fdiv float 1.000000e+00, %9
  %11 = load float, ptr %1, align 4, !tbaa !49
  %12 = fmul float %11, -2.000000e+00
  %13 = fdiv float %12, %9
  %14 = fmul float %9, 2.500000e-01
  %15 = fadd float %5, %14
  %16 = fmul float %11, %11
  %17 = fdiv float %16, %9
  %18 = fadd float %17, %15
  %19 = fmul float %10, %2
  %20 = fmul float %13, %2
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %2, float %20)
  %22 = fadd float %21, %18
  ret float %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @voronoiParabola_new() unnamed_addr #0 !PGOFuncName !103 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %2 = tail call ptr %1(i64 noundef 56, ptr noundef nonnull @.str.3) #16
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %2, i64 0, i32 6
  store i8 0, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.VoronoiParabola, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_checkCircle(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = alloca [2 x float], align 4
  %4 = tail call fastcc ptr @voronoiParabola_getLeftParent(ptr noundef %1) #17
  %5 = tail call fastcc ptr @voronoiParabola_getRightParent(ptr noundef %1) #17
  %6 = tail call fastcc ptr @voronoiParabola_getLeftChild(ptr noundef %4) #17
  %7 = tail call fastcc ptr @voronoiParabola_getRightChild(ptr noundef %5) #17
  %8 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %10 = icmp ne ptr %6, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 5
  %15 = getelementptr inbounds %struct.VoronoiParabola, ptr %7, i64 0, i32 5
  %16 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %17 = fcmp olt float %16, 0x3F847AE140000000
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.VoronoiParabola, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = call fastcc i32 @voronoi_getEdgeIntersection(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %3) #17, !range !88
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %18
  %26 = load float, ptr %14, align 8, !tbaa !49
  %27 = load float, ptr %3, align 4, !tbaa !49
  %28 = fsub float %26, %27
  %29 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 5, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = fsub float %30, %32
  %34 = fmul float %33, %33
  %35 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %34)
  %36 = tail call float @llvm.sqrt.f32(float %35)
  %37 = fsub float %32, %36
  %38 = fcmp ult float %37, %9
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %41 = tail call ptr %40(i64 noundef 40, ptr noundef nonnull @.str.4) #16
  %42 = getelementptr inbounds %struct.VoronoiEvent, ptr %41, i64 0, i32 2
  store i32 1, ptr %42, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.VoronoiEvent, ptr %41, i64 0, i32 3
  store float %27, ptr %43, align 4, !tbaa !49
  %44 = getelementptr inbounds %struct.VoronoiEvent, ptr %41, i64 0, i32 3, i64 1
  store float %37, ptr %44, align 4, !tbaa !49
  %45 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 3
  store ptr %41, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds %struct.VoronoiEvent, ptr %41, i64 0, i32 4
  store ptr %1, ptr %46, align 8, !tbaa !68
  tail call fastcc void @voronoi_insertEvent(ptr noundef nonnull %0, ptr noundef %41) #17
  br label %47

47:                                               ; preds = %25, %18, %2, %13, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef float @voronoi_getXOfEdge(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !105 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call fastcc ptr @voronoiParabola_getLeftChild(ptr noundef %1) #17
  %7 = tail call fastcc ptr @voronoiParabola_getRightChild(ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %8 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.VoronoiParabola, ptr %7, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %11) #17
  %12 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fsub float %13, %2
  %15 = fmul float %14, 2.000000e+00
  %16 = fdiv float 1.000000e+00, %15
  %17 = load float, ptr %4, align 4, !tbaa !49
  %18 = fmul float %17, -2.000000e+00
  %19 = fdiv float %18, %15
  %20 = fmul float %15, 2.500000e-01
  %21 = fadd float %20, %2
  %22 = fmul float %17, %17
  %23 = fdiv float %22, %15
  %24 = fadd float %23, %21
  %25 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = fsub float %26, %2
  %28 = fmul float %27, 2.000000e+00
  %29 = fdiv float 1.000000e+00, %28
  %30 = load float, ptr %5, align 4, !tbaa !49
  %31 = fmul float %30, 2.000000e+00
  %32 = fdiv float %31, %28
  %33 = fmul float %28, 2.500000e-01
  %34 = fadd float %9, %33
  %35 = fmul float %30, %30
  %36 = fdiv float %35, %28
  %37 = fadd float %36, %34
  %38 = fsub float %16, %29
  %39 = fadd float %19, %32
  %40 = fsub float %24, %37
  %41 = fmul float %38, -4.000000e+00
  %42 = fmul float %41, %40
  %43 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %42)
  %44 = fneg float %39
  %45 = tail call float @sqrtf(float noundef %43) #16
  %46 = fsub float %45, %39
  %47 = fmul float %38, 2.000000e+00
  %48 = fdiv float %46, %47
  %49 = tail call float @sqrtf(float noundef %43) #16
  %50 = fsub float %44, %49
  %51 = fdiv float %50, %47
  %52 = fcmp olt float %13, %26
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = tail call fastcc float @max_ff(float noundef %48, float noundef %51) #17
  br label %57

55:                                               ; preds = %3
  %56 = tail call fastcc float @min_ff(float noundef %48, float noundef %51) #17
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi float [ %54, %53 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret float %58
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @voronoiParabola_getLeftChild(ptr noundef readonly %0) unnamed_addr #9 !PGOFuncName !106 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %9, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 1
  br i1 %8, label %3, label %10, !llvm.loop !107

10:                                               ; preds = %3, %1
  %11 = phi ptr [ null, %1 ], [ %5, %3 ]
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @voronoiParabola_getRightChild(ptr noundef readonly %0) unnamed_addr #9 !PGOFuncName !108 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VoronoiParabola, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.VoronoiParabola, ptr %7, i64 0, i32 6
  %9 = load i8, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %5, label %11, !llvm.loop !109

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %7, %5 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !110 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !111 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @voronoiParabola_getLeftParent(ptr noundef readonly %0) unnamed_addr #9 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.VoronoiParabola, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  br label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %3, %1 ], [ %11, %9 ]
  %6 = phi ptr [ %0, %1 ], [ %5, %9 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !66
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !113

13:                                               ; preds = %4, %9
  %14 = phi ptr [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @voronoiParabola_getRightParent(ptr noundef readonly %0) unnamed_addr #9 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.VoronoiParabola, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %6 = phi ptr [ %0, %1 ], [ %5, %10 ]
  %7 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.VoronoiParabola, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !115

14:                                               ; preds = %4, %10
  %15 = phi ptr [ null, %10 ], [ %5, %4 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !116 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @voronoi_getEdgeIntersection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !74
  %6 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !74
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 7
  %12 = load float, ptr %11, align 8, !tbaa !73
  %13 = fsub float %10, %12
  %14 = fdiv float %8, %13
  %15 = tail call float @llvm.fmuladd.f32(float %10, float %14, float %7)
  %16 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !49
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 4
  %20 = load float, ptr %19, align 8, !tbaa !49
  %21 = fdiv float %18, %20
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %49, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = fsub float %15, %25
  %27 = getelementptr inbounds %struct.VoronoiEdge, ptr %0, i64 0, i32 4, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = fdiv float %26, %28
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %49, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !49
  %34 = fsub float %14, %33
  %35 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 4
  %36 = load float, ptr %35, align 8, !tbaa !49
  %37 = fdiv float %34, %36
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = fsub float %15, %41
  %43 = getelementptr inbounds %struct.VoronoiEdge, ptr %1, i64 0, i32 4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fdiv float %42, %44
  %46 = fcmp olt float %45, 0.000000e+00
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  store float %14, ptr %2, align 4, !tbaa !49
  %48 = getelementptr inbounds float, ptr %2, i64 1
  store float %15, ptr %48, align 4, !tbaa !49
  br label %49

49:                                               ; preds = %39, %31, %23, %3, %47
  %50 = phi i32 [ 1, %47 ], [ 0, %3 ], [ 0, %23 ], [ 0, %31 ], [ 0, %39 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !118 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !119 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @voronoi_clampEdgeVertex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = alloca [4 x [2 x float]], align 16
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  store <2 x float> zeroinitializer, ptr %5, align 16, !tbaa !49
  %9 = getelementptr inbounds [2 x float], ptr %5, i64 1
  %10 = insertelement <2 x i32> poison, i32 %0, i64 0
  %11 = insertelement <2 x i32> %10, i32 %1, i64 1
  %12 = add nsw <2 x i32> %11, <i32 -1, i32 -1>
  %13 = getelementptr inbounds [2 x float], ptr %5, i64 1, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 2
  %15 = sitofp <2 x i32> %12 to <2 x float>
  %16 = extractelement <2 x float> %15, i64 0
  store float %16, ptr %9, align 8, !tbaa !49
  store <2 x float> %15, ptr %14, align 16, !tbaa !49
  %17 = getelementptr inbounds [2 x float], ptr %5, i64 3
  store float 0.000000e+00, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds [2 x float], ptr %5, i64 3, i64 1
  %19 = extractelement <2 x float> %15, i64 1
  store float %19, ptr %18, align 4, !tbaa !49
  %20 = icmp sgt i32 %0, 1
  %21 = load float, ptr %2, align 4, !tbaa !49
  br i1 %20, label %22, label %26

22:                                               ; preds = %4
  %23 = fcmp ult float %21, 0.000000e+00
  %24 = fcmp ugt float %21, %16
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %42, label %30

26:                                               ; preds = %4
  %27 = fcmp ult float %21, %16
  %28 = fcmp ugt float %21, 0.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %22
  %31 = icmp sgt i32 %1, 1
  %32 = getelementptr inbounds float, ptr %2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !49
  br i1 %31, label %34, label %38

34:                                               ; preds = %30
  %35 = fcmp ult float %33, 0.000000e+00
  %36 = fcmp ugt float %33, %19
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %42, label %76

38:                                               ; preds = %30
  %39 = fcmp ult float %33, %19
  %40 = fcmp ugt float %33, 0.000000e+00
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38, %34, %26, %22
  %43 = getelementptr inbounds float, ptr %2, i64 1
  %44 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  br label %45

45:                                               ; preds = %42, %73
  %46 = phi i64 [ 0, %42 ], [ %74, %73 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %47 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %46
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %47) #17
  %48 = icmp eq i64 %46, 3
  %49 = add nuw nsw i64 %46, 1
  %50 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %49
  %51 = select i1 %48, ptr %5, ptr %50
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %51) #17
  %52 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %8) #16
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = trunc i64 %46 to i32
  switch i32 %55, label %68 [
    i32 0, label %56
    i32 1, label %60
    i32 2, label %64
  ]

56:                                               ; preds = %54
  %57 = load float, ptr %43, align 4, !tbaa !49
  %58 = load float, ptr %44, align 4, !tbaa !49
  %59 = fcmp ogt float %57, %58
  br i1 %59, label %73, label %72

60:                                               ; preds = %54
  %61 = load float, ptr %2, align 4, !tbaa !49
  %62 = load float, ptr %8, align 4, !tbaa !49
  %63 = fcmp olt float %61, %62
  br i1 %63, label %73, label %72

64:                                               ; preds = %54
  %65 = load float, ptr %43, align 4, !tbaa !49
  %66 = load float, ptr %44, align 4, !tbaa !49
  %67 = fcmp olt float %65, %66
  br i1 %67, label %73, label %72

68:                                               ; preds = %54
  %69 = load float, ptr %2, align 4, !tbaa !49
  %70 = load float, ptr %8, align 4, !tbaa !49
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %64, %56, %60, %68
  call fastcc void @copy_v2_v2(ptr noundef nonnull %2, ptr noundef nonnull %8) #17
  br label %73

73:                                               ; preds = %45, %72, %68, %64, %60, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %74 = add nuw nsw i64 %46, 1
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %45, !llvm.loop !121

76:                                               ; preds = %73, %34, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @voronoi_getNextSideCoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #13 !PGOFuncName !122 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !123
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds float, ptr %1, i64 %11
  %13 = icmp sgt i32 %3, 0
  %14 = icmp slt i32 %3, 0
  %15 = zext nneg i32 %2 to i64
  %16 = getelementptr inbounds float, ptr %1, i64 %15
  %17 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 %15
  br label %18

18:                                               ; preds = %9, %59
  %19 = phi ptr [ %7, %9 ], [ %61, %59 ]
  %20 = phi float [ 0x47EFFFFFE0000000, %9 ], [ %60, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %21 = getelementptr inbounds %struct.VoronoiEdge, ptr %19, i64 0, i32 2
  %22 = getelementptr inbounds %struct.VoronoiEdge, ptr %19, i64 0, i32 2, i64 %11
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = load float, ptr %12, align 4, !tbaa !49
  %25 = fsub float %23, %24
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp olt float %26, 0x3F847AE140000000
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %1, ptr noundef nonnull %21) #17
  %30 = fcmp ogt float %29, 0x3F847AE140000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %21) #17
  br label %32

32:                                               ; preds = %31, %28, %18
  %33 = phi i1 [ false, %31 ], [ true, %28 ], [ true, %18 ]
  %34 = getelementptr inbounds %struct.VoronoiEdge, ptr %19, i64 0, i32 3
  %35 = getelementptr inbounds %struct.VoronoiEdge, ptr %19, i64 0, i32 3, i64 %11
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = fsub float %36, %24
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp olt float %38, 0x3F847AE140000000
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %1, ptr noundef nonnull %34) #17
  %42 = fcmp ogt float %41, 0x3F847AE140000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %34) #17
  br label %45

44:                                               ; preds = %40, %32
  br i1 %33, label %59, label %45

45:                                               ; preds = %43, %44
  br i1 %13, label %46, label %50

46:                                               ; preds = %45
  %47 = load float, ptr %16, align 4, !tbaa !49
  %48 = load float, ptr %17, align 4, !tbaa !49
  %49 = fcmp ogt float %47, %48
  br i1 %49, label %59, label %55

50:                                               ; preds = %45
  br i1 %14, label %51, label %55

51:                                               ; preds = %50
  %52 = load float, ptr %16, align 4, !tbaa !49
  %53 = load float, ptr %17, align 4, !tbaa !49
  %54 = fcmp olt float %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %46, %50, %51
  %56 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %1, ptr noundef nonnull %6) #17
  %57 = fcmp olt float %56, %20
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %6) #17
  br label %59

59:                                               ; preds = %51, %44, %46, %55, %58
  %60 = phi float [ %56, %58 ], [ %20, %55 ], [ %20, %46 ], [ %20, %44 ], [ %20, %51 ]
  %61 = load ptr, ptr %19, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %18, !llvm.loop !124

63:                                               ; preds = %59
  %64 = fcmp olt float %60, 0x47EFFFFFE0000000
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %63, %5
  %67 = phi i32 [ 0, %5 ], [ %65, %63 ]
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !125 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !126 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !127 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

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
!34 = !{!35, !40, i64 40}
!35 = !{!"VoronoiProcess", !36, i64 0, !36, i64 16, !37, i64 32, !40, i64 40, !40, i64 44, !41, i64 48}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !40, i64 44}
!43 = !{!35, !37, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !40, i64 16}
!46 = !{!"VoronoiEvent", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 20, !37, i64 32}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!41, !41, i64 0}
!50 = !{!35, !41, i64 48}
!51 = distinct !{!51, !48}
!52 = !{!35, !37, i64 32}
!53 = !{!35, !37, i64 16}
!54 = !{!55, !37, i64 64}
!55 = !{!"VoronoiEdge", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!56 = !{!55, !37, i64 0}
!57 = distinct !{!57, !48}
!58 = !{!"voronoi.c:copy_v2_v2"}
!59 = !{!"voronoi.c:voronoi_insertEvent"}
!60 = distinct !{!60, !48}
!61 = !{!"voronoi.c:voronoi_addParabola"}
!62 = !{!63, !38, i64 48}
!63 = !{!"VoronoiParabola", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 48}
!64 = !{!63, !37, i64 24}
!65 = !{!63, !37, i64 32}
!66 = !{!63, !37, i64 0}
!67 = !{!"voronoi.c:voronoi_removeParabola"}
!68 = !{!46, !37, i64 32}
!69 = !{!63, !37, i64 16}
!70 = distinct !{!70, !48}
!71 = !{!63, !37, i64 8}
!72 = !{!"voronoi.c:voronoi_finishEdge"}
!73 = !{!55, !41, i64 56}
!74 = !{!55, !41, i64 60}
!75 = !{!40, !40, i64 0}
!76 = !{i8 0, i8 2}
!77 = distinct !{!77, !48}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = !{!81, !40, i64 20}
!81 = !{!"VoronoiTriangulationPoint", !38, i64 0, !38, i64 8, !40, i64 20}
!82 = distinct !{!82, !48}
!83 = !{!"voronoi.c:voronoi_clampEdges"}
!84 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !85, i64 24, i64 8, !85, i64 32, i64 8, !85, i64 40, i64 8, !85, i64 48, i64 8, !85, i64 56, i64 4, !49, i64 60, i64 4, !49, i64 64, i64 8, !44}
!85 = !{!38, !38, i64 0}
!86 = distinct !{!86, !48}
!87 = !{!"voronoi.c:voronoi_createBoundaryEdges"}
!88 = !{i32 0, i32 2}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = !{!"voronoi.c:voronoi_addTriangulationPoint"}
!92 = distinct !{!92, !48}
!93 = !{!"voronoi.c:testVoronoiEdge"}
!94 = !{!"voronoi.c:voronoi_addTriangle"}
!95 = !{!"voronoi.c:mul_v3_fl"}
!96 = !{!"voronoi.c:voronoiParabola_newSite"}
!97 = !{!"voronoi.c:voronoiParabola_setLeft"}
!98 = !{!"voronoi.c:voronoiParabola_setRight"}
!99 = !{!"voronoi.c:voronoiEdge_new"}
!100 = !{!"voronoi.c:voronoi_getParabolaByX"}
!101 = distinct !{!101, !48}
!102 = !{!"voronoi.c:voronoi_getY"}
!103 = !{!"voronoi.c:voronoiParabola_new"}
!104 = !{!"voronoi.c:voronoi_checkCircle"}
!105 = !{!"voronoi.c:voronoi_getXOfEdge"}
!106 = !{!"voronoi.c:voronoiParabola_getLeftChild"}
!107 = distinct !{!107, !48}
!108 = !{!"voronoi.c:voronoiParabola_getRightChild"}
!109 = distinct !{!109, !48}
!110 = !{!"voronoi.c:max_ff"}
!111 = !{!"voronoi.c:min_ff"}
!112 = !{!"voronoi.c:voronoiParabola_getLeftParent"}
!113 = distinct !{!113, !48}
!114 = !{!"voronoi.c:voronoiParabola_getRightParent"}
!115 = distinct !{!115, !48}
!116 = !{!"voronoi.c:len_squared_v2v2"}
!117 = !{!"voronoi.c:voronoi_getEdgeIntersection"}
!118 = !{!"voronoi.c:sub_v2_v2v2"}
!119 = !{!"voronoi.c:dot_v2v2"}
!120 = !{!"voronoi.c:voronoi_clampEdgeVertex"}
!121 = distinct !{!121, !48}
!122 = !{!"voronoi.c:voronoi_getNextSideCoord"}
!123 = !{!36, !37, i64 0}
!124 = distinct !{!124, !48}
!125 = !{!"voronoi.c:equals_v2v2"}
!126 = !{!"voronoi.c:add_v3_v3"}
!127 = !{!"voronoi.c:copy_v3_v3"}
