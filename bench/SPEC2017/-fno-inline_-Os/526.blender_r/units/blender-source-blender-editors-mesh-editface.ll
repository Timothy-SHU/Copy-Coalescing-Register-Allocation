; ModuleID = 'blender/source/blender/editors/mesh/editface.c'
source_filename = "blender/source/blender/editors/mesh/editface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MirrTopoStore_t = type { ptr, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.MirrTopoVert_t = type { i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"selar\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"TopoMirr\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"MirrTopoPairs\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"mesh_topo_lookup\00", align 1
@__func__.select_linked_tfaces_with_seams = private unnamed_addr constant [32 x i8] c"select_linked_tfaces_with_seams\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintface_flush_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %2, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %1
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef nonnull %2) #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 23
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 7) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %20 = zext nneg i32 %16 to i64
  br label %21

21:                                               ; preds = %18, %32
  %22 = phi i64 [ 0, %18 ], [ %33, %32 ]
  %23 = getelementptr inbounds i32, ptr %10, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 8, !tbaa !51
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds %struct.MPoly, ptr %27, i64 %28, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !52
  %31 = getelementptr inbounds %struct.MFace, ptr %14, i64 %22, i32 6
  store i8 %30, ptr %31, align 1, !tbaa !54
  br label %32

32:                                               ; preds = %21, %26
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21, !llvm.loop !56

35:                                               ; preds = %32, %12, %8
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 4
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %36, i32 noundef 7) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = tail call ptr %41(ptr noundef nonnull %4) #9
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = tail call i32 %44(ptr noundef nonnull %4) #9
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %49 = zext nneg i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %61
  %51 = phi i64 [ 0, %47 ], [ %62, %61 ]
  %52 = getelementptr inbounds i32, ptr %37, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %48, align 8, !tbaa !51
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds %struct.MPoly, ptr %56, i64 %57, i32 3
  %59 = load i8, ptr %58, align 2, !tbaa !52
  %60 = getelementptr inbounds %struct.MPoly, ptr %42, i64 %51, i32 3
  store i8 %59, ptr %60, align 2, !tbaa !52
  br label %61

61:                                               ; preds = %50, %55
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, %49
  br i1 %63, label %64, label %50, !llvm.loop !61

64:                                               ; preds = %61, %39, %35
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 2
  %66 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %65, i32 noundef 7) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  %71 = tail call ptr %70(ptr noundef nonnull %4) #9
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  %74 = tail call ptr %73(ptr noundef nonnull %4) #9
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  %77 = tail call i32 %76(ptr noundef nonnull %4) #9
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %68
  %80 = zext nneg i32 %77 to i64
  br label %81

81:                                               ; preds = %79, %91
  %82 = phi i64 [ 0, %79 ], [ %92, %91 ]
  %83 = getelementptr inbounds i32, ptr %66, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds %struct.MPoly, ptr %71, i64 %87, i32 3
  %89 = load i8, ptr %88, align 2, !tbaa !52
  %90 = getelementptr inbounds %struct.MFace, ptr %74, i64 %82, i32 6
  store i8 %89, ptr %90, align 1, !tbaa !54
  br label %91

91:                                               ; preds = %81, %86
  %92 = add nuw nsw i64 %82, 1
  %93 = icmp eq i64 %92, %80
  br i1 %93, label %94, label %81, !llvm.loop !64

94:                                               ; preds = %91, %68, %64, %6, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_flush_select_from_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintface_hide(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = zext i8 %1 to i32
  br label %13

13:                                               ; preds = %9, %35
  %14 = phi i32 [ %7, %9 ], [ %16, %35 ]
  %15 = phi ptr [ %11, %9 ], [ %36, %35 ]
  %16 = add nsw i32 %14, -1
  %17 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !52
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = lshr i32 %19, 1
  %24 = and i32 %23, 1
  %25 = xor i32 %24, %12
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = or i8 %18, 16
  store i8 %28, ptr %17, align 2, !tbaa !52
  br label %29

29:                                               ; preds = %22, %27, %13
  %30 = phi i8 [ %18, %22 ], [ %28, %27 ], [ %18, %13 ]
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = and i8 %30, -3
  store i8 %34, ptr %17, align 2, !tbaa !52
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.MPoly, ptr %15, i64 1
  %37 = icmp eq i32 %16, 0
  br i1 %37, label %38, label %13, !llvm.loop !66

38:                                               ; preds = %35
  tail call void @BKE_mesh_flush_hidden_from_polys(ptr noundef nonnull %3) #9
  tail call void @paintface_flush_flags(ptr noundef %0) #10
  br label %39

39:                                               ; preds = %2, %5, %38
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_flush_hidden_from_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintface_reveal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  br label %11

11:                                               ; preds = %8, %22
  %12 = phi i32 [ %6, %8 ], [ %14, %22 ]
  %13 = phi ptr [ %10, %8 ], [ %23, %22 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MPoly, ptr %13, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !52
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = or i8 %16, 2
  %21 = add nsw i8 %20, -16
  store i8 %21, ptr %15, align 2, !tbaa !52
  br label %22

22:                                               ; preds = %19, %11
  %23 = getelementptr inbounds %struct.MPoly, ptr %13, i64 1
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %25, label %11, !llvm.loop !67

25:                                               ; preds = %22
  tail call void @BKE_mesh_flush_hidden_from_polys(ptr noundef nonnull %2) #9
  tail call void @paintface_flush_flags(ptr noundef %0) #10
  br label %26

26:                                               ; preds = %1, %4, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintface_select_linked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 -1, ptr %5, align 4, !tbaa !50
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 3) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ -1, %12 ]
  call fastcc void @select_linked_tfaces_with_seams(ptr noundef nonnull %6, i32 noundef %20, i8 noundef zeroext %3) #10
  call void @paintface_flush_flags(ptr noundef %1) #10
  br label %21

21:                                               ; preds = %14, %4, %8, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_pick_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_linked_tfaces_with_seams(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !68 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = ashr i32 %6, 5
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %4(i64 noundef %10, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #9
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = ashr i32 %14, 5
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %12(i64 noundef %18, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #9
  %20 = icmp eq i32 %1, -1
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds %struct.MPoly, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = load i32, ptr %25, align 4, !tbaa !72
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MLoop, ptr %27, i64 %29
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %11, ptr noundef nonnull %25, ptr noundef %30) #9
  %31 = and i32 %1, 31
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %1, 5
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %19, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = or i32 %36, %32
  store i32 %37, ptr %35, align 4, !tbaa !50
  %38 = load i32, ptr %13, align 8, !tbaa !65
  br label %72

39:                                               ; preds = %3
  %40 = load i32, ptr %13, align 8, !tbaa !65
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %46

46:                                               ; preds = %42, %67
  %47 = phi i32 [ %40, %42 ], [ %68, %67 ]
  %48 = phi ptr [ %44, %42 ], [ %70, %67 ]
  %49 = phi i32 [ 0, %42 ], [ %69, %67 ]
  %50 = getelementptr inbounds %struct.MPoly, ptr %48, i64 0, i32 3
  %51 = load i8, ptr %50, align 2, !tbaa !52
  %52 = and i8 %51, 18
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load ptr, ptr %45, align 8, !tbaa !71
  %56 = load i32, ptr %48, align 4, !tbaa !72
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MLoop, ptr %55, i64 %57
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %11, ptr noundef nonnull %48, ptr noundef %58) #9
  %59 = and i32 %49, 31
  %60 = shl nuw i32 1, %59
  %61 = lshr i32 %49, 5
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %19, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = or i32 %64, %60
  store i32 %65, ptr %63, align 4, !tbaa !50
  %66 = load i32, ptr %13, align 8, !tbaa !65
  br label %67

67:                                               ; preds = %46, %54
  %68 = phi i32 [ %47, %46 ], [ %66, %54 ]
  %69 = add nuw nsw i32 %49, 1
  %70 = getelementptr inbounds %struct.MPoly, ptr %48, i64 1
  %71 = icmp slt i32 %69, %68
  br i1 %71, label %46, label %72, !llvm.loop !73

72:                                               ; preds = %67, %39, %21
  %73 = phi i32 [ %40, %39 ], [ %38, %21 ], [ %68, %67 ]
  %74 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %75 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %76 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  br label %79

77:                                               ; preds = %141
  %78 = icmp eq i8 %143, 0
  br i1 %78, label %147, label %79, !llvm.loop !74

79:                                               ; preds = %72, %77
  %80 = phi i32 [ %73, %72 ], [ %142, %77 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %147

82:                                               ; preds = %79
  %83 = load ptr, ptr %74, align 8, !tbaa !51
  br label %84

84:                                               ; preds = %82, %141
  %85 = phi i32 [ %142, %141 ], [ %80, %82 ]
  %86 = phi ptr [ %145, %141 ], [ %83, %82 ]
  %87 = phi i8 [ %143, %141 ], [ 0, %82 ]
  %88 = phi i32 [ %144, %141 ], [ 0, %82 ]
  %89 = getelementptr inbounds %struct.MPoly, ptr %86, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !52
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %84
  %94 = lshr i32 %88, 5
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %19, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !50
  %98 = and i32 %88, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %93
  %103 = load ptr, ptr %75, align 8, !tbaa !71
  %104 = getelementptr inbounds %struct.MPoly, ptr %86, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !75
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102
  %108 = load i32, ptr %86, align 4, !tbaa !72
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %109
  %111 = load ptr, ptr %76, align 8, !tbaa !76
  br label %112

112:                                              ; preds = %107, %131
  %113 = phi ptr [ %110, %107 ], [ %133, %131 ]
  %114 = phi i32 [ 0, %107 ], [ %132, %131 ]
  %115 = getelementptr inbounds %struct.MLoop, ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !77
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.MEdge, ptr %111, i64 %117, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !79
  %120 = and i16 %119, 4
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %112
  %123 = lshr i32 %116, 5
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %11, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = and i32 %116, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %112, %122
  %132 = add nuw nsw i32 %114, 1
  %133 = getelementptr inbounds %struct.MLoop, ptr %113, i64 1
  %134 = icmp eq i32 %132, %105
  br i1 %134, label %141, label %112, !llvm.loop !81

135:                                              ; preds = %122
  %136 = or i32 %97, %99
  store i32 %136, ptr %96, align 4, !tbaa !50
  %137 = load i32, ptr %86, align 4, !tbaa !72
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %138
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef nonnull %11, ptr noundef nonnull %86, ptr noundef %139) #9
  %140 = load i32, ptr %13, align 8, !tbaa !65
  br label %141

141:                                              ; preds = %131, %102, %93, %135, %84
  %142 = phi i32 [ %85, %84 ], [ %85, %93 ], [ %140, %135 ], [ %85, %102 ], [ %85, %131 ]
  %143 = phi i8 [ %87, %84 ], [ %87, %93 ], [ 1, %135 ], [ %87, %102 ], [ %87, %131 ]
  %144 = add nuw nsw i32 %88, 1
  %145 = getelementptr inbounds %struct.MPoly, ptr %86, i64 1
  %146 = icmp slt i32 %144, %142
  br i1 %146, label %84, label %77, !llvm.loop !82

147:                                              ; preds = %79, %77
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %148(ptr noundef %11) #9
  %149 = load i32, ptr %13, align 8, !tbaa !65
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load ptr, ptr %74, align 8, !tbaa !51
  %153 = icmp eq i8 %2, 0
  %154 = select i1 %153, i8 0, i8 2
  br label %155

155:                                              ; preds = %151, %171
  %156 = phi ptr [ %152, %151 ], [ %173, %171 ]
  %157 = phi i32 [ 0, %151 ], [ %172, %171 ]
  %158 = lshr i32 %157, 5
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %19, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !50
  %162 = and i32 %157, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.MPoly, ptr %156, i64 0, i32 3
  %168 = load i8, ptr %167, align 2, !tbaa !52
  %169 = and i8 %168, -3
  %170 = or disjoint i8 %169, %154
  store i8 %170, ptr %167, align 2, !tbaa !52
  br label %171

171:                                              ; preds = %166, %155
  %172 = add nuw nsw i32 %157, 1
  %173 = getelementptr inbounds %struct.MPoly, ptr %156, i64 1
  %174 = icmp eq i32 %172, %149
  br i1 %174, label %175, label %155, !llvm.loop !83

175:                                              ; preds = %171, %147
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %176(ptr noundef %19) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintface_deselect_all_visible(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !65
  br i1 %7, label %12, label %25

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %48, label %18

14:                                               ; preds = %18
  %15 = add nsw i32 %19, -1
  %16 = getelementptr inbounds %struct.MPoly, ptr %20, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %25, label %18, !llvm.loop !84

18:                                               ; preds = %12, %14
  %19 = phi i32 [ %15, %14 ], [ %11, %12 ]
  %20 = phi ptr [ %16, %14 ], [ %9, %12 ]
  %21 = getelementptr inbounds %struct.MPoly, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 2, !tbaa !52
  %23 = and i8 %22, 18
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %18, %6
  %26 = phi i32 [ %1, %6 ], [ 1, %14 ], [ 2, %18 ]
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %25, %45
  %29 = phi i32 [ %31, %45 ], [ %11, %25 ]
  %30 = phi ptr [ %46, %45 ], [ %9, %25 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.MPoly, ptr %30, i64 0, i32 3
  %33 = load i8, ptr %32, align 2, !tbaa !52
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  switch i32 %26, label %45 [
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
  ]

37:                                               ; preds = %36
  %38 = or i8 %33, 2
  br label %43

39:                                               ; preds = %36
  %40 = and i8 %33, -19
  br label %43

41:                                               ; preds = %36
  %42 = xor i8 %33, 2
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi i8 [ %38, %37 ], [ %40, %39 ], [ %42, %41 ]
  store i8 %44, ptr %32, align 2, !tbaa !52
  br label %45

45:                                               ; preds = %43, %36, %28
  %46 = getelementptr inbounds %struct.MPoly, ptr %30, i64 1
  %47 = icmp eq i32 %31, 0
  br i1 %47, label %48, label %28, !llvm.loop !85

48:                                               ; preds = %45, %12, %25
  %49 = icmp eq i8 %2, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @paintface_flush_flags(ptr noundef %0) #10
  br label %51

51:                                               ; preds = %48, %50, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @paintface_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %13) #9
  %14 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  br label %24

24:                                               ; preds = %19, %50
  %25 = phi i8 [ 0, %19 ], [ %51, %50 ]
  %26 = phi i32 [ %17, %19 ], [ %52, %50 ]
  %27 = phi ptr [ %21, %19 ], [ %53, %50 ]
  %28 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 2, !tbaa !52
  %30 = and i8 %29, 18
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !75
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load ptr, ptr %22, align 8, !tbaa !71
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds %struct.MLoop, ptr %37, i64 %38
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i32 [ %46, %40 ], [ 0, %36 ]
  %42 = phi ptr [ %47, %40 ], [ %39, %36 ]
  %43 = load i32, ptr %42, align 4, !tbaa !88
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %15, i64 %44
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %45) #10
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %23) #10
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #9
  %46 = add nuw nsw i32 %41, 1
  %47 = getelementptr inbounds %struct.MLoop, ptr %42, i64 1
  %48 = load i32, ptr %33, align 4, !tbaa !75
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !89

50:                                               ; preds = %40, %32, %24
  %51 = phi i8 [ %25, %24 ], [ 1, %32 ], [ 1, %40 ]
  %52 = add nsw i32 %26, -1
  %53 = getelementptr inbounds %struct.MPoly, ptr %27, i64 1
  %54 = icmp sgt i32 %26, 1
  br i1 %54, label %24, label %55, !llvm.loop !90

55:                                               ; preds = %50, %12, %3, %8
  %56 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %12 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i8 %56
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !91 {
  %3 = load float, ptr %1, align 4, !tbaa !92
  store float %3, ptr %0, align 4, !tbaa !92
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !92
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !92
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !93 {
  %4 = load float, ptr %1, align 4, !tbaa !92
  %5 = load float, ptr %2, align 4, !tbaa !92
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !92
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !92
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !92
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !92
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !92
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @paintface_mouse_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %8 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #9
  %9 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = zext i32 %12 to i64
  %20 = getelementptr inbounds %struct.MPoly, ptr %18, i64 %19, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !52
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = icmp eq i8 %3, 0
  %26 = icmp eq i8 %4, 0
  %27 = or i8 %4, %3
  %28 = icmp eq i8 %5, 0
  %29 = or i8 %27, %5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %34, %31 ], [ %14, %24 ]
  %33 = phi ptr [ %38, %31 ], [ %18, %24 ]
  %34 = add i32 %32, -1
  %35 = getelementptr inbounds %struct.MPoly, ptr %33, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !52
  %37 = and i8 %36, -3
  store i8 %37, ptr %35, align 2, !tbaa !52
  %38 = getelementptr inbounds %struct.MPoly, ptr %33, i64 1
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %40, label %31, !llvm.loop !94

40:                                               ; preds = %31, %24
  %41 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 32
  store i32 %12, ptr %41, align 8, !tbaa !95
  %42 = load i8, ptr %20, align 2, !tbaa !52
  br i1 %25, label %45, label %43

43:                                               ; preds = %40
  %44 = or i8 %42, 2
  br label %58

45:                                               ; preds = %40
  br i1 %26, label %48, label %46

46:                                               ; preds = %45
  %47 = and i8 %42, -3
  br label %58

48:                                               ; preds = %45
  br i1 %28, label %56, label %49

49:                                               ; preds = %48
  %50 = and i8 %42, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = and i8 %42, -3
  br label %58

54:                                               ; preds = %49
  %55 = or disjoint i8 %42, 2
  br label %58

56:                                               ; preds = %48
  %57 = or i8 %42, 2
  br label %58

58:                                               ; preds = %46, %52, %54, %56, %43
  %59 = phi i8 [ %47, %46 ], [ %53, %52 ], [ %55, %54 ], [ %57, %56 ], [ %44, %43 ]
  store i8 %59, ptr %20, align 2, !tbaa !52
  call void @paintface_flush_flags(ptr noundef %1) #10
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !96
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %61) #9
  %62 = call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @ED_region_tag_redraw(ptr noundef %62) #9
  br label %63

63:                                               ; preds = %16, %11, %6, %58
  %64 = phi i8 [ 1, %58 ], [ 0, %6 ], [ 0, %11 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i8 %64
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @do_paintface_box_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #10
  %8 = add nsw i32 %7, 1
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #10
  %10 = add nsw i32 %9, 1
  %11 = tail call ptr @BKE_mesh_from_object(ptr noundef %6) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %104, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %104, label %17

17:                                               ; preds = %13
  %18 = mul nsw i32 %10, %8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %104, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %22 = add nsw i32 %15, 1
  %23 = sext i32 %22 to i64
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str) #9
  %25 = icmp eq i8 %3, 0
  %26 = icmp ne i8 %2, 0
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @paintface_deselect_all_visible(ptr noundef %29, i32 noundef 2, i8 noundef zeroext 0) #10
  %30 = load i32, ptr %14, align 8, !tbaa !65
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %32, %44
  %36 = phi ptr [ %46, %44 ], [ %34, %32 ]
  %37 = phi i32 [ %45, %44 ], [ 1, %32 ]
  %38 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !52
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = and i8 %39, -19
  store i8 %43, ptr %38, align 2, !tbaa !52
  br label %44

44:                                               ; preds = %35, %42
  %45 = add nuw i32 %37, 1
  %46 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %47 = icmp eq i32 %37, %30
  br i1 %47, label %48, label %35, !llvm.loop !99

48:                                               ; preds = %44, %28, %20
  tail call void @view3d_validate_backbuf(ptr noundef %0) #9
  %49 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext 32, i32 noundef 1) #9
  %50 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !100
  %52 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !104
  %54 = load i32, ptr %1, align 4, !tbaa !105
  %55 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !106
  tail call void @view3d_opengl_read_pixels(ptr noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %8, i32 noundef %10, i32 noundef 6408, i32 noundef 5121, ptr noundef %51) #9
  br label %57

57:                                               ; preds = %48, %70
  %58 = phi i32 [ %18, %48 ], [ %60, %70 ]
  %59 = phi ptr [ %51, %48 ], [ %71, %70 ]
  %60 = add nsw i32 %58, -1
  %61 = load i32, ptr %59, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @WM_framebuffer_to_index(i32 noundef %61) #9
  %65 = load i32, ptr %14, align 8, !tbaa !65
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds i8, ptr %24, i64 %68
  store i8 1, ptr %69, align 1, !tbaa !107
  br label %70

70:                                               ; preds = %63, %67, %57
  %71 = getelementptr inbounds i32, ptr %59, i64 1
  %72 = icmp eq i32 %60, 0
  br i1 %72, label %73, label %57, !llvm.loop !108

73:                                               ; preds = %70
  %74 = load i32, ptr %14, align 8, !tbaa !65
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %101, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = icmp eq i8 %2, 0
  %80 = add nuw i32 %74, 1
  %81 = zext i32 %80 to i64
  br label %82

82:                                               ; preds = %76, %97
  %83 = phi i64 [ 1, %76 ], [ %98, %97 ]
  %84 = phi ptr [ %78, %76 ], [ %99, %97 ]
  %85 = getelementptr inbounds i8, ptr %24, i64 %83
  %86 = load i8, ptr %85, align 1, !tbaa !107
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.MPoly, ptr %84, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !52
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = or i8 %90, 2
  %95 = and i8 %90, -19
  %96 = select i1 %79, i8 %95, i8 %94
  store i8 %96, ptr %89, align 2, !tbaa !52
  br label %97

97:                                               ; preds = %93, %82, %88
  %98 = add nuw nsw i64 %83, 1
  %99 = getelementptr inbounds %struct.MPoly, ptr %84, i64 1
  %100 = icmp eq i64 %98, %81
  br i1 %100, label %101, label %82, !llvm.loop !109

101:                                              ; preds = %97, %73
  tail call void @IMB_freeImBuf(ptr noundef %49) #9
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %102(ptr noundef %24) #9
  %103 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @paintface_flush_flags(ptr noundef %103) #10
  br label %104

104:                                              ; preds = %4, %13, %17, %101
  %105 = phi i32 [ 4, %101 ], [ 2, %17 ], [ 2, %13 ], [ 2, %4 ]
  ret i32 %105
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !111
  %4 = load i32, ptr %0, align 4, !tbaa !105
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !113
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_opengl_read_pixels(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintvert_flush_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %2, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  tail call void @BKE_mesh_flush_select_from_verts(ptr noundef nonnull %2) #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call ptr %10(ptr noundef nonnull %4, i32 noundef 7) #9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = tail call ptr %13(ptr noundef nonnull %4) #9
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = tail call i32 %16(ptr noundef nonnull %4) #9
  %18 = icmp eq ptr %11, null
  %19 = icmp sgt i32 %17, 0
  br i1 %18, label %24, label %20

20:                                               ; preds = %8
  br i1 %19, label %21, label %54

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 15
  %23 = zext nneg i32 %17 to i64
  br label %29

24:                                               ; preds = %8
  br i1 %19, label %25, label %54

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = zext nneg i32 %17 to i64
  br label %45

29:                                               ; preds = %21, %41
  %30 = phi i64 [ 0, %21 ], [ %42, %41 ]
  %31 = phi ptr [ %14, %21 ], [ %43, %41 ]
  %32 = getelementptr inbounds i32, ptr %11, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %22, align 8, !tbaa !87
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %36, i64 %37, i32 2
  %39 = load i8, ptr %38, align 2, !tbaa !117
  %40 = getelementptr inbounds %struct.MVert, ptr %31, i64 0, i32 2
  store i8 %39, ptr %40, align 2, !tbaa !117
  br label %41

41:                                               ; preds = %29, %35
  %42 = add nuw nsw i64 %30, 1
  %43 = getelementptr inbounds %struct.MVert, ptr %31, i64 1
  %44 = icmp eq i64 %42, %23
  br i1 %44, label %54, label %29, !llvm.loop !119

45:                                               ; preds = %25, %45
  %46 = phi i64 [ 0, %25 ], [ %51, %45 ]
  %47 = phi ptr [ %14, %25 ], [ %52, %45 ]
  %48 = getelementptr inbounds %struct.MVert, ptr %27, i64 %46, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !117
  %50 = getelementptr inbounds %struct.MVert, ptr %47, i64 0, i32 2
  store i8 %49, ptr %50, align 2, !tbaa !117
  %51 = add nuw nsw i64 %46, 1
  %52 = getelementptr inbounds %struct.MVert, ptr %47, i64 1
  %53 = icmp eq i64 %51, %28
  br i1 %53, label %54, label %45, !llvm.loop !120

54:                                               ; preds = %41, %45, %20, %24, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_flush_select_from_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintvert_deselect_all_visible(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !121
  br i1 %7, label %12, label %25

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %55, label %18

14:                                               ; preds = %18
  %15 = add nsw i32 %19, -1
  %16 = getelementptr inbounds %struct.MVert, ptr %20, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %25, label %18, !llvm.loop !122

18:                                               ; preds = %12, %14
  %19 = phi i32 [ %15, %14 ], [ %11, %12 ]
  %20 = phi ptr [ %16, %14 ], [ %9, %12 ]
  %21 = getelementptr inbounds %struct.MVert, ptr %20, i64 0, i32 2
  %22 = load i8, ptr %21, align 2, !tbaa !117
  %23 = and i8 %22, 17
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %18, %6
  %26 = phi i32 [ %1, %6 ], [ 1, %14 ], [ 2, %18 ]
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %25, %45
  %29 = phi i32 [ %31, %45 ], [ %11, %25 ]
  %30 = phi ptr [ %46, %45 ], [ %9, %25 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.MVert, ptr %30, i64 0, i32 2
  %33 = load i8, ptr %32, align 2, !tbaa !117
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  switch i32 %26, label %45 [
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
  ]

37:                                               ; preds = %36
  %38 = or i8 %33, 1
  br label %43

39:                                               ; preds = %36
  %40 = and i8 %33, -18
  br label %43

41:                                               ; preds = %36
  %42 = xor i8 %33, 1
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi i8 [ %38, %37 ], [ %40, %39 ], [ %42, %41 ]
  store i8 %44, ptr %32, align 2, !tbaa !117
  br label %45

45:                                               ; preds = %43, %36, %28
  %46 = getelementptr inbounds %struct.MVert, ptr %30, i64 1
  %47 = icmp eq i32 %31, 0
  br i1 %47, label %48, label %28, !llvm.loop !123

48:                                               ; preds = %45, %25
  %49 = icmp eq i32 %26, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = and i32 %26, -2
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @BKE_mesh_mselect_clear(ptr noundef nonnull %4) #9
  br label %55

54:                                               ; preds = %50
  tail call void @BKE_mesh_mselect_validate(ptr noundef nonnull %4) #9
  br label %55

55:                                               ; preds = %12, %53, %54, %48
  %56 = icmp eq i8 %2, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  tail call void @paintvert_flush_flags(ptr noundef %0) #10
  br label %58

58:                                               ; preds = %55, %57, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_mselect_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_mselect_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paintvert_select_ungrouped(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  tail call void @paintvert_deselect_all_visible(ptr noundef %0, i32 noundef 2, i8 noundef zeroext 0) #10
  %13 = load ptr, ptr %7, align 8, !tbaa !124
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !121
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  br label %22

22:                                               ; preds = %19, %35
  %23 = phi ptr [ %37, %35 ], [ %21, %19 ]
  %24 = phi i32 [ %36, %35 ], [ 0, %19 ]
  %25 = phi ptr [ %38, %35 ], [ %15, %19 ]
  %26 = getelementptr inbounds %struct.MVert, ptr %23, i64 0, i32 2
  %27 = load i8, ptr %26, align 2, !tbaa !117
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load ptr, ptr %25, align 8, !tbaa !125
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = or i8 %27, 1
  store i8 %34, ptr %26, align 2, !tbaa !117
  br label %35

35:                                               ; preds = %22, %33, %30
  %36 = add nuw nsw i32 %24, 1
  %37 = getelementptr inbounds %struct.MVert, ptr %23, i64 1
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %25, i64 1
  %39 = icmp eq i32 %36, %17
  br i1 %39, label %40, label %22, !llvm.loop !127

40:                                               ; preds = %35, %14
  %41 = icmp eq i8 %2, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @paintvert_flush_flags(ptr noundef %0) #10
  br label %43

43:                                               ; preds = %40, %42, %3, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 1
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %8, %7 ], [ %11, %10 ]
  %15 = phi ptr [ %9, %7 ], [ %12, %10 ]
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = load i32, ptr %14, align 8, !tbaa !50
  %18 = load ptr, ptr %2, align 8, !tbaa !131
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !133
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !134
  %27 = icmp eq i32 %17, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !135
  %31 = icmp ne i32 %16, %30
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %28, %13, %20, %24
  %34 = phi i8 [ 1, %24 ], [ 1, %20 ], [ 1, %13 ], [ %32, %28 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_mirrtopo_init(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  tail call void @ED_mesh_mirrtopo_free(ptr noundef %2) #10
  %8 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !133
  %9 = icmp ne ptr %7, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 8, !tbaa !129
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %11, i8 noundef zeroext 1) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !129
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %12, %10 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.1) #9
  br i1 %9, label %22, label %48

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 8, !tbaa !128
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !136
  %27 = load ptr, ptr %7, align 8, !tbaa !129
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %73, label %30

30:                                               ; preds = %22, %30
  %31 = phi ptr [ %46, %30 ], [ %28, %22 ]
  %32 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = call fastcc i32 @_bm_elem_index_get(ptr noundef %33) #10
  %35 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !142
  %37 = call fastcc i32 @_bm_elem_index_get(ptr noundef %36) #10
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i32, ptr %21, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !50
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %21, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !50
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %30, !llvm.loop !143

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %50 = load i32, ptr %49, align 4, !tbaa !70
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %70, %55 ], [ %54, %52 ]
  %57 = phi i32 [ %69, %55 ], [ 0, %52 ]
  %58 = load i32, ptr %56, align 4, !tbaa !144
  %59 = getelementptr inbounds %struct.MEdge, ptr %56, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !145
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds i32, ptr %21, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !50
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds i32, ptr %21, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !50
  %69 = add nuw nsw i32 %57, 1
  %70 = getelementptr inbounds %struct.MEdge, ptr %56, i64 1
  %71 = load i32, ptr %49, align 4, !tbaa !70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %55, label %73, !llvm.loop !146

73:                                               ; preds = %55, %30, %48, %22
  %74 = phi i32 [ %26, %22 ], [ %50, %48 ], [ %26, %30 ], [ %50, %55 ]
  %75 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !69
  %76 = call ptr %75(ptr noundef %21) #9
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %78 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %79 = icmp sgt i32 %17, 1
  %80 = zext nneg i32 %17 to i64
  br label %81

81:                                               ; preds = %171, %73
  %82 = phi i32 [ -1, %73 ], [ %153, %171 ]
  %83 = phi i32 [ 1, %73 ], [ %172, %171 ]
  %84 = phi i32 [ -1, %73 ], [ %167, %171 ]
  br i1 %9, label %85, label %118

85:                                               ; preds = %81
  %86 = load ptr, ptr %7, align 8, !tbaa !129
  %87 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %86) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %152, label %89

89:                                               ; preds = %85, %89
  %90 = phi ptr [ %116, %89 ], [ %87, %85 ]
  %91 = phi i32 [ %115, %89 ], [ 0, %85 ]
  %92 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !138
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef %93) #10
  %95 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !142
  %97 = call fastcc i32 @_bm_elem_index_get(ptr noundef %96) #10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %76, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !50
  %101 = mul i32 %100, %83
  %102 = sext i32 %94 to i64
  %103 = getelementptr inbounds i32, ptr %21, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = add i32 %104, %101
  store i32 %105, ptr %103, align 4, !tbaa !50
  %106 = getelementptr inbounds i32, ptr %76, i64 %102
  %107 = load i32, ptr %106, align 4, !tbaa !50
  %108 = mul i32 %107, %83
  %109 = getelementptr inbounds i32, ptr %21, i64 %98
  %110 = load i32, ptr %109, align 4, !tbaa !50
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4, !tbaa !50
  %112 = load i32, ptr %103, align 4, !tbaa !50
  %113 = icmp ne i32 %112, %111
  %114 = zext i1 %113 to i32
  %115 = add nuw nsw i32 %91, %114
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %152, label %89, !llvm.loop !147

118:                                              ; preds = %81
  %119 = load i32, ptr %78, align 4, !tbaa !70
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %118
  %122 = load ptr, ptr %77, align 8, !tbaa !76
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi ptr [ %149, %123 ], [ %122, %121 ]
  %125 = phi i32 [ %148, %123 ], [ 0, %121 ]
  %126 = phi i32 [ %147, %123 ], [ 0, %121 ]
  %127 = load i32, ptr %124, align 4, !tbaa !144
  %128 = getelementptr inbounds %struct.MEdge, ptr %124, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !145
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %76, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = mul i32 %132, %83
  %134 = zext i32 %127 to i64
  %135 = getelementptr inbounds i32, ptr %21, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = add i32 %136, %133
  store i32 %137, ptr %135, align 4, !tbaa !50
  %138 = getelementptr inbounds i32, ptr %76, i64 %134
  %139 = load i32, ptr %138, align 4, !tbaa !50
  %140 = mul i32 %139, %83
  %141 = getelementptr inbounds i32, ptr %21, i64 %130
  %142 = load i32, ptr %141, align 4, !tbaa !50
  %143 = add i32 %142, %140
  store i32 %143, ptr %141, align 4, !tbaa !50
  %144 = load i32, ptr %135, align 4, !tbaa !50
  %145 = icmp ne i32 %144, %143
  %146 = zext i1 %145 to i32
  %147 = add nuw nsw i32 %126, %146
  %148 = add nuw nsw i32 %125, 1
  %149 = getelementptr inbounds %struct.MEdge, ptr %124, i64 1
  %150 = load i32, ptr %78, align 4, !tbaa !70
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %123, label %152, !llvm.loop !148

152:                                              ; preds = %123, %89, %118, %85
  %153 = phi i32 [ 0, %85 ], [ 0, %118 ], [ %115, %89 ], [ %147, %123 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %76, ptr align 4 %21, i64 %20, i1 false)
  call void @qsort(ptr noundef %76, i64 noundef %19, i64 noundef 4, ptr noundef nonnull @mirrtopo_hash_sort) #9
  br i1 %79, label %154, label %166

154:                                              ; preds = %152, %154
  %155 = phi i64 [ %164, %154 ], [ 1, %152 ]
  %156 = phi i32 [ %163, %154 ], [ 1, %152 ]
  %157 = getelementptr i32, ptr %76, i64 %155
  %158 = getelementptr i32, ptr %157, i64 -1
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = load i32, ptr %157, align 4, !tbaa !50
  %161 = icmp ne i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = add nuw nsw i32 %156, %162
  %164 = add nuw nsw i64 %155, 1
  %165 = icmp eq i64 %164, %80
  br i1 %165, label %166, label %154, !llvm.loop !149

166:                                              ; preds = %154, %152
  %167 = phi i32 [ 1, %152 ], [ %163, %154 ]
  %168 = icmp sgt i32 %167, %84
  %169 = icmp sgt i32 %153, %82
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %76, ptr align 4 %21, i64 %20, i1 false)
  %172 = add i32 %83, 1
  br label %81

173:                                              ; preds = %166
  %174 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %175 = shl nsw i64 %19, 3
  %176 = call ptr %174(i64 noundef %175, ptr noundef nonnull @.str.2) #9
  %177 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !69
  %178 = call ptr %177(i64 noundef %175, ptr noundef nonnull @.str.3) #9
  %179 = icmp eq i8 %3, 0
  %180 = and i1 %179, %9
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load ptr, ptr %7, align 8, !tbaa !129
  call void @BM_mesh_elem_table_ensure(ptr noundef %182, i8 noundef zeroext 1) #9
  br label %183

183:                                              ; preds = %181, %173
  %184 = icmp sgt i32 %17, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %183
  call void @qsort(ptr noundef %176, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @mirrtopo_vert_sort) #9
  br label %256

186:                                              ; preds = %183
  %187 = zext nneg i32 %17 to i64
  br label %188

188:                                              ; preds = %186, %188
  %189 = phi i64 [ 0, %186 ], [ %196, %188 ]
  %190 = getelementptr inbounds i32, ptr %21, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !50
  %192 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 %189
  store i32 %191, ptr %192, align 4, !tbaa !150
  %193 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 %189, i32 1
  %194 = trunc i64 %189 to i32
  store i32 %194, ptr %193, align 4, !tbaa !152
  %195 = getelementptr inbounds i64, ptr %178, i64 %189
  store i64 -1, ptr %195, align 8, !tbaa !153
  %196 = add nuw nsw i64 %189, 1
  %197 = icmp eq i64 %196, %187
  br i1 %197, label %198, label %188, !llvm.loop !154

198:                                              ; preds = %188
  call void @qsort(ptr noundef nonnull %176, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @mirrtopo_vert_sort) #9
  br i1 %79, label %199, label %256

199:                                              ; preds = %198
  %200 = load i32, ptr %176, align 4, !tbaa !150
  %201 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 1
  %202 = load i32, ptr %201, align 4, !tbaa !150
  %203 = icmp ne i32 %200, %202
  %204 = zext i1 %203 to i32
  %205 = zext nneg i32 %17 to i64
  %206 = add nuw i32 %17, 1
  %207 = zext i32 %206 to i64
  br label %208

208:                                              ; preds = %199, %252
  %209 = phi i64 [ 2, %199 ], [ %254, %252 ]
  %210 = phi i32 [ %204, %199 ], [ %253, %252 ]
  %211 = trunc i64 %209 to i32
  %212 = icmp eq i64 %209, %205
  br i1 %212, label %219, label %213

213:                                              ; preds = %208
  %214 = getelementptr %struct.MirrTopoVert_t, ptr %176, i64 %209
  %215 = getelementptr %struct.MirrTopoVert_t, ptr %214, i64 -1
  %216 = load i32, ptr %215, align 4, !tbaa !150
  %217 = load i32, ptr %214, align 4, !tbaa !150
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %252, label %219

219:                                              ; preds = %213, %208
  %220 = sub nsw i32 %211, %210
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %252

222:                                              ; preds = %219
  br i1 %9, label %223, label %239

223:                                              ; preds = %222
  %224 = load ptr, ptr %7, align 8, !tbaa !129
  %225 = getelementptr %struct.MirrTopoVert_t, ptr %176, i64 %209
  %226 = getelementptr %struct.MirrTopoVert_t, ptr %225, i64 -2, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !152
  %228 = call ptr @BM_vert_at_index(ptr noundef %224, i32 noundef %227) #9
  %229 = ptrtoint ptr %228 to i64
  %230 = getelementptr %struct.MirrTopoVert_t, ptr %225, i64 -1, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !152
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, ptr %178, i64 %232
  store i64 %229, ptr %233, align 8, !tbaa !153
  %234 = load ptr, ptr %7, align 8, !tbaa !129
  %235 = call ptr @BM_vert_at_index(ptr noundef %234, i32 noundef %231) #9
  %236 = ptrtoint ptr %235 to i64
  %237 = load i32, ptr %226, align 4, !tbaa !152
  %238 = sext i32 %237 to i64
  br label %248

239:                                              ; preds = %222
  %240 = getelementptr %struct.MirrTopoVert_t, ptr %176, i64 %209
  %241 = getelementptr %struct.MirrTopoVert_t, ptr %240, i64 -2, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !152
  %243 = sext i32 %242 to i64
  %244 = getelementptr %struct.MirrTopoVert_t, ptr %240, i64 -1, i32 1
  %245 = load i32, ptr %244, align 4, !tbaa !152
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, ptr %178, i64 %246
  store i64 %243, ptr %247, align 8, !tbaa !153
  br label %248

248:                                              ; preds = %223, %239
  %249 = phi i64 [ %243, %239 ], [ %238, %223 ]
  %250 = phi i64 [ %246, %239 ], [ %236, %223 ]
  %251 = getelementptr inbounds i64, ptr %178, i64 %249
  store i64 %250, ptr %251, align 8, !tbaa !153
  br label %252

252:                                              ; preds = %248, %219, %213
  %253 = phi i32 [ %210, %213 ], [ %211, %219 ], [ %211, %248 ]
  %254 = add nuw nsw i64 %209, 1
  %255 = icmp eq i64 %254, %207
  br i1 %255, label %256, label %208, !llvm.loop !155

256:                                              ; preds = %252, %198, %185
  %257 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %257(ptr noundef %176) #9
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %258(ptr noundef %21) #9
  %259 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %259(ptr noundef %76) #9
  store ptr %178, ptr %2, align 8, !tbaa !131
  %260 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  store i32 %17, ptr %260, align 8, !tbaa !134
  %261 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  store i32 %74, ptr %261, align 4, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_mirrtopo_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %5(ptr noundef nonnull %2) #9
  br label %6

6:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 2
  store i32 -1, ptr %8, align 4, !tbaa !135
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !156 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #10
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !158
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @mirrtopo_hash_sort(ptr noundef %0, ptr noundef %1) #8 !PGOFuncName !162 {
  %3 = ptrtoint ptr %0 to i64
  %4 = trunc i64 %3 to i32
  %5 = ptrtoint ptr %1 to i64
  %6 = trunc i64 %5 to i32
  %7 = icmp ugt i32 %4, %6
  %8 = icmp ult i32 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mirrtopo_vert_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !163 {
  %3 = load i32, ptr %0, align 4, !tbaa !150
  %4 = load i32, ptr %1, align 4, !tbaa !150
  %5 = icmp ugt i32 %3, %4
  %6 = icmp ult i32 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_poly_edgebitmap_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !164 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !165
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  store ptr %7, ptr %0, align 8, !tbaa !107
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 1296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 208}
!47 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !48, i64 280, !48, i64 480, !48, i64 680, !48, i64 880, !48, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!48 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!49 = !{!47, !41, i64 1288}
!50 = !{!41, !41, i64 0}
!51 = !{!47, !37, i64 168}
!52 = !{!53, !38, i64 10}
!53 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!54 = !{!55, !38, i64 19}
!55 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !37, i64 1200}
!59 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!60 = !{!59, !37, i64 1136}
!61 = distinct !{!61, !57}
!62 = !{!59, !37, i64 1184}
!63 = !{!59, !37, i64 1120}
!64 = distinct !{!64, !57}
!65 = !{!47, !41, i64 1296}
!66 = distinct !{!66, !57}
!67 = distinct !{!67, !57}
!68 = !{!"editface.c:select_linked_tfaces_with_seams"}
!69 = !{!37, !37, i64 0}
!70 = !{!47, !41, i64 1284}
!71 = !{!47, !37, i64 184}
!72 = !{!53, !41, i64 0}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = !{!53, !41, i64 4}
!76 = !{!47, !37, i64 240}
!77 = !{!78, !41, i64 4}
!78 = !{!"MLoop", !41, i64 0, !41, i64 4}
!79 = !{!80, !40, i64 10}
!80 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!81 = distinct !{!81, !57}
!82 = distinct !{!82, !57}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57}
!85 = distinct !{!85, !57}
!86 = !{!47, !37, i64 176}
!87 = !{!47, !37, i64 232}
!88 = !{!78, !41, i64 0}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !57}
!91 = !{!"editface.c:copy_v3_v3"}
!92 = !{!44, !44, i64 0}
!93 = !{!"editface.c:add_v3_v3v3"}
!94 = distinct !{!94, !57}
!95 = !{!47, !41, i64 1304}
!96 = !{!35, !37, i64 296}
!97 = !{!98, !37, i64 8}
!98 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!99 = distinct !{!99, !57}
!100 = !{!101, !37, i64 40}
!101 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !44, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !102, i64 2436, !103, i64 2456}
!102 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!103 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!104 = !{!98, !37, i64 24}
!105 = !{!102, !41, i64 0}
!106 = !{!102, !41, i64 8}
!107 = !{!38, !38, i64 0}
!108 = distinct !{!108, !57}
!109 = distinct !{!109, !57}
!110 = !{!"editface.c:BLI_rcti_size_x"}
!111 = !{!102, !41, i64 4}
!112 = !{!"editface.c:BLI_rcti_size_y"}
!113 = !{!102, !41, i64 12}
!114 = !{!59, !37, i64 1320}
!115 = !{!59, !37, i64 1168}
!116 = !{!59, !37, i64 1104}
!117 = !{!118, !38, i64 18}
!118 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = !{!47, !41, i64 1280}
!122 = distinct !{!122, !57}
!123 = distinct !{!123, !57}
!124 = !{!47, !37, i64 248}
!125 = !{!126, !37, i64 0}
!126 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!127 = distinct !{!127, !57}
!128 = !{!47, !37, i64 272}
!129 = !{!130, !37, i64 0}
!130 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!131 = !{!132, !37, i64 0}
!132 = !{!"MirrTopoStore_t", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!133 = !{!132, !41, i64 16}
!134 = !{!132, !41, i64 8}
!135 = !{!132, !41, i64 12}
!136 = !{!137, !41, i64 4}
!137 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!138 = !{!139, !37, i64 24}
!139 = !{!"BMEdge", !140, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !141, i64 48, !141, i64 64}
!140 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!141 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!142 = !{!139, !37, i64 32}
!143 = distinct !{!143, !57}
!144 = !{!80, !41, i64 0}
!145 = !{!80, !41, i64 4}
!146 = distinct !{!146, !57}
!147 = distinct !{!147, !57}
!148 = distinct !{!148, !57}
!149 = distinct !{!149, !57}
!150 = !{!151, !41, i64 0}
!151 = !{!"MirrTopoVert_t", !41, i64 0, !41, i64 4}
!152 = !{!151, !41, i64 4}
!153 = !{!45, !45, i64 0}
!154 = distinct !{!154, !57}
!155 = distinct !{!155, !57}
!156 = !{!"editface.c:BM_iter_new"}
!157 = !{!"editface.c:_bm_elem_index_get"}
!158 = !{!140, !41, i64 8}
!159 = !{!"editface.c:BM_iter_step"}
!160 = !{!161, !37, i64 48}
!161 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!162 = !{!"editface.c:mirrtopo_hash_sort"}
!163 = !{!"editface.c:mirrtopo_vert_sort"}
!164 = !{!"editface.c:BM_iter_init"}
!165 = !{!161, !38, i64 60}
!166 = !{!161, !37, i64 40}
!167 = !{!137, !37, i64 40}
