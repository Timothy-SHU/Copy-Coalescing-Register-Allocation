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
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
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

; Function Attrs: nounwind uwtable
define dso_local void @paintface_flush_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %2, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %1
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef nonnull %2) #8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 23
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 7) #8
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
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %36, i32 noundef 7) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = tail call ptr %41(ptr noundef nonnull %4) #8
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = tail call i32 %44(ptr noundef nonnull %4) #8
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
  br i1 %63, label %64, label %50, !llvm.loop !62

64:                                               ; preds = %61, %39, %35
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 2
  %66 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %65, i32 noundef 7) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = tail call ptr %70(ptr noundef nonnull %4) #8
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = tail call ptr %73(ptr noundef nonnull %4) #8
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %76 = load ptr, ptr %75, align 8, !tbaa !64
  %77 = tail call i32 %76(ptr noundef nonnull %4) #8
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
  br i1 %93, label %94, label %81, !llvm.loop !65

94:                                               ; preds = %91, %68, %64, %6, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_flush_select_from_polys(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @paintface_hide(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !66
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
  %30 = load i8, ptr %17, align 2, !tbaa !52
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
  br i1 %37, label %38, label %13, !llvm.loop !67

38:                                               ; preds = %35
  tail call void @BKE_mesh_flush_hidden_from_polys(ptr noundef nonnull %3) #8
  tail call void @paintface_flush_flags(ptr noundef %0)
  br label %39

39:                                               ; preds = %2, %5, %38
  ret void
}

declare void @BKE_mesh_flush_hidden_from_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paintface_reveal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !66
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
  br i1 %24, label %25, label %11, !llvm.loop !68

25:                                               ; preds = %22
  tail call void @BKE_mesh_flush_hidden_from_polys(ptr noundef nonnull %2) #8
  tail call void @paintface_flush_flags(ptr noundef %0)
  br label %26

26:                                               ; preds = %1, %4, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @paintface_select_linked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 -1, ptr %5, align 4, !tbaa !50
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %187, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %187, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 3) #8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %187, label %17

17:                                               ; preds = %14, %12
  %18 = load i32, ptr %5, align 4, !tbaa !50
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 27
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = ashr i32 %21, 5
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = call ptr %19(i64 noundef %25, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #8
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %28 = load i32, ptr %9, align 8, !tbaa !66
  %29 = ashr i32 %28, 5
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = call ptr %27(i64 noundef %32, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #8
  %34 = icmp eq i32 %18, -1
  br i1 %34, label %52, label %35

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = zext i32 %18 to i64
  %39 = getelementptr inbounds %struct.MPoly, ptr %37, i64 %38
  %40 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = load i32, ptr %39, align 4, !tbaa !72
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.MLoop, ptr %41, i64 %43
  call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %26, ptr noundef nonnull %39, ptr noundef %44) #8
  %45 = and i32 %18, 31
  %46 = shl nuw i32 1, %45
  %47 = lshr i32 %18, 5
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %33, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = or i32 %50, %46
  store i32 %51, ptr %49, align 4, !tbaa !50
  br label %83

52:                                               ; preds = %17
  %53 = load i32, ptr %9, align 8, !tbaa !66
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  br label %59

59:                                               ; preds = %55, %78
  %60 = phi ptr [ %57, %55 ], [ %80, %78 ]
  %61 = phi i32 [ 0, %55 ], [ %79, %78 ]
  %62 = getelementptr inbounds %struct.MPoly, ptr %60, i64 0, i32 3
  %63 = load i8, ptr %62, align 2, !tbaa !52
  %64 = and i8 %63, 18
  %65 = icmp eq i8 %64, 2
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load ptr, ptr %58, align 8, !tbaa !71
  %68 = load i32, ptr %60, align 4, !tbaa !72
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.MLoop, ptr %67, i64 %69
  call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %26, ptr noundef nonnull %60, ptr noundef %70) #8
  %71 = and i32 %61, 31
  %72 = shl nuw i32 1, %71
  %73 = lshr i32 %61, 5
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %33, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = or i32 %76, %72
  store i32 %77, ptr %75, align 4, !tbaa !50
  br label %78

78:                                               ; preds = %66, %59
  %79 = add nuw nsw i32 %61, 1
  %80 = getelementptr inbounds %struct.MPoly, ptr %60, i64 1
  %81 = load i32, ptr %9, align 8, !tbaa !66
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %59, label %83, !llvm.loop !73

83:                                               ; preds = %78, %52, %35
  %84 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %85 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %86 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 16
  br label %90

87:                                               ; preds = %150, %90
  %88 = phi i8 [ 0, %90 ], [ %151, %150 ]
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %156, label %90, !llvm.loop !74

90:                                               ; preds = %83, %87
  %91 = load i32, ptr %9, align 8, !tbaa !66
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %87

93:                                               ; preds = %90
  %94 = load ptr, ptr %84, align 8, !tbaa !51
  br label %95

95:                                               ; preds = %93, %150
  %96 = phi ptr [ %153, %150 ], [ %94, %93 ]
  %97 = phi i8 [ %151, %150 ], [ 0, %93 ]
  %98 = phi i32 [ %152, %150 ], [ 0, %93 ]
  %99 = getelementptr inbounds %struct.MPoly, ptr %96, i64 0, i32 3
  %100 = load i8, ptr %99, align 2, !tbaa !52
  %101 = and i8 %100, 16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %95
  %104 = lshr i32 %98, 5
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %33, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !50
  %108 = and i32 %98, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %103
  %113 = load ptr, ptr %85, align 8, !tbaa !71
  %114 = getelementptr inbounds %struct.MPoly, ptr %96, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !75
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %112
  %118 = load i32, ptr %96, align 4, !tbaa !72
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MLoop, ptr %113, i64 %119
  %121 = load ptr, ptr %86, align 8, !tbaa !76
  br label %122

122:                                              ; preds = %117, %141
  %123 = phi ptr [ %120, %117 ], [ %143, %141 ]
  %124 = phi i32 [ 0, %117 ], [ %142, %141 ]
  %125 = getelementptr inbounds %struct.MLoop, ptr %123, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !77
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MEdge, ptr %121, i64 %127, i32 4
  %129 = load i16, ptr %128, align 2, !tbaa !79
  %130 = and i16 %129, 4
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = lshr i32 %126, 5
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %26, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = and i32 %126, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132, %122
  %142 = add nuw nsw i32 %124, 1
  %143 = getelementptr inbounds %struct.MLoop, ptr %123, i64 1
  %144 = icmp eq i32 %142, %115
  br i1 %144, label %150, label %122, !llvm.loop !81

145:                                              ; preds = %132
  %146 = or i32 %107, %109
  store i32 %146, ptr %106, align 4, !tbaa !50
  %147 = load i32, ptr %96, align 4, !tbaa !72
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.MLoop, ptr %113, i64 %148
  call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %26, ptr noundef nonnull %96, ptr noundef %149) #8
  br label %150

150:                                              ; preds = %141, %112, %145, %103, %95
  %151 = phi i8 [ %97, %95 ], [ %97, %103 ], [ 1, %145 ], [ %97, %112 ], [ %97, %141 ]
  %152 = add nuw nsw i32 %98, 1
  %153 = getelementptr inbounds %struct.MPoly, ptr %96, i64 1
  %154 = load i32, ptr %9, align 8, !tbaa !66
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %95, label %87, !llvm.loop !82

156:                                              ; preds = %87
  %157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %157(ptr noundef %26) #8
  %158 = load i32, ptr %9, align 8, !tbaa !66
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %162 = load ptr, ptr %161, align 8, !tbaa !51
  %163 = icmp eq i8 %3, 0
  %164 = select i1 %163, i8 0, i8 2
  br label %165

165:                                              ; preds = %160, %181
  %166 = phi ptr [ %162, %160 ], [ %183, %181 ]
  %167 = phi i32 [ 0, %160 ], [ %182, %181 ]
  %168 = lshr i32 %167, 5
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %33, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !50
  %172 = and i32 %167, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %171, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.MPoly, ptr %166, i64 0, i32 3
  %178 = load i8, ptr %177, align 2, !tbaa !52
  %179 = and i8 %178, -3
  %180 = or disjoint i8 %179, %164
  store i8 %180, ptr %177, align 2, !tbaa !52
  br label %181

181:                                              ; preds = %176, %165
  %182 = add nuw nsw i32 %167, 1
  %183 = getelementptr inbounds %struct.MPoly, ptr %166, i64 1
  %184 = icmp eq i32 %182, %158
  br i1 %184, label %185, label %165, !llvm.loop !83

185:                                              ; preds = %181, %156
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %186(ptr noundef %33) #8
  call void @paintface_flush_flags(ptr noundef %1)
  br label %187

187:                                              ; preds = %14, %4, %8, %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

declare zeroext i8 @ED_mesh_pick_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paintface_deselect_all_visible(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  br label %19

15:                                               ; preds = %19
  %16 = add nsw i32 %20, -1
  %17 = getelementptr inbounds %struct.MPoly, ptr %21, i64 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %26, label %19, !llvm.loop !84

19:                                               ; preds = %12, %15
  %20 = phi i32 [ %16, %15 ], [ %10, %12 ]
  %21 = phi ptr [ %17, %15 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.MPoly, ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 2, !tbaa !52
  %24 = and i8 %23, 18
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %15

26:                                               ; preds = %15, %19, %8, %6
  %27 = phi i32 [ %1, %6 ], [ 1, %8 ], [ 2, %19 ], [ 1, %15 ]
  %28 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %29 = load i32, ptr %28, align 8, !tbaa !66
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  br label %34

34:                                               ; preds = %31, %51
  %35 = phi i32 [ %37, %51 ], [ %29, %31 ]
  %36 = phi ptr [ %52, %51 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  %38 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !52
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  switch i32 %27, label %51 [
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
  ]

43:                                               ; preds = %42
  %44 = or i8 %39, 2
  br label %49

45:                                               ; preds = %42
  %46 = and i8 %39, -19
  br label %49

47:                                               ; preds = %42
  %48 = xor i8 %39, 2
  br label %49

49:                                               ; preds = %47, %45, %43
  %50 = phi i8 [ %44, %43 ], [ %46, %45 ], [ %48, %47 ]
  store i8 %50, ptr %38, align 2, !tbaa !52
  br label %51

51:                                               ; preds = %49, %42, %34
  %52 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %54, label %34, !llvm.loop !85

54:                                               ; preds = %51, %26
  %55 = icmp eq i8 %2, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @paintface_flush_flags(ptr noundef %0)
  br label %57

57:                                               ; preds = %54, %56, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @paintface_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 1
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 2
  br label %28

28:                                               ; preds = %19, %68
  %29 = phi i8 [ 0, %19 ], [ %69, %68 ]
  %30 = phi i32 [ %17, %19 ], [ %70, %68 ]
  %31 = phi ptr [ %21, %19 ], [ %71, %68 ]
  %32 = getelementptr inbounds %struct.MPoly, ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 2, !tbaa !52
  %34 = and i8 %33, 18
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.MPoly, ptr %31, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !75
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load ptr, ptr %22, align 8, !tbaa !71
  %42 = zext nneg i32 %38 to i64
  %43 = getelementptr inbounds %struct.MLoop, ptr %41, i64 %42
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i32 [ %64, %44 ], [ 0, %40 ]
  %46 = phi ptr [ %65, %44 ], [ %43, %40 ]
  %47 = load i32, ptr %46, align 4, !tbaa !88
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %15, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !89
  store float %50, ptr %4, align 4, !tbaa !89
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !89
  store float %52, ptr %23, align 4, !tbaa !89
  %53 = getelementptr inbounds float, ptr %49, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !89
  store float %54, ptr %24, align 4, !tbaa !89
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %55 = load float, ptr %4, align 4, !tbaa !89
  %56 = load float, ptr %25, align 4, !tbaa !89
  %57 = fadd float %55, %56
  store float %57, ptr %4, align 4, !tbaa !89
  %58 = load float, ptr %23, align 4, !tbaa !89
  %59 = load float, ptr %26, align 4, !tbaa !89
  %60 = fadd float %58, %59
  store float %60, ptr %23, align 4, !tbaa !89
  %61 = load float, ptr %24, align 4, !tbaa !89
  %62 = load float, ptr %27, align 4, !tbaa !89
  %63 = fadd float %61, %62
  store float %63, ptr %24, align 4, !tbaa !89
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #8
  %64 = add nuw nsw i32 %45, 1
  %65 = getelementptr inbounds %struct.MLoop, ptr %46, i64 1
  %66 = load i32, ptr %37, align 4, !tbaa !75
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %44, label %68, !llvm.loop !90

68:                                               ; preds = %44, %36, %28
  %69 = phi i8 [ %29, %28 ], [ 1, %36 ], [ 1, %44 ]
  %70 = add nsw i32 %30, -1
  %71 = getelementptr inbounds %struct.MPoly, ptr %31, i64 1
  %72 = icmp sgt i32 %30, 1
  br i1 %72, label %28, label %73, !llvm.loop !91

73:                                               ; preds = %68, %12, %3, %8
  %74 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %12 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret i8 %74
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @paintface_mouse_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #8
  %9 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 3) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !66
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
  br i1 %39, label %40, label %31, !llvm.loop !92

40:                                               ; preds = %31, %24
  %41 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 32
  store i32 %12, ptr %41, align 8, !tbaa !93
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
  call void @paintface_flush_flags(ptr noundef %1)
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !94
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %61) #8
  %62 = call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @ED_region_tag_redraw(ptr noundef %62) #8
  br label %63

63:                                               ; preds = %16, %11, %6, %58
  %64 = phi i8 [ 1, %58 ], [ 0, %6 ], [ 0, %11 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret i8 %64
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @do_paintface_box_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = load i32, ptr %1, align 4, !tbaa !99
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !100
  %14 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = sub nsw i32 %13, %15
  %17 = add nsw i32 %16, 1
  %18 = tail call ptr @BKE_mesh_from_object(ptr noundef %6) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %133, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !66
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %133, label %24

24:                                               ; preds = %20
  %25 = mul nsw i32 %17, %11
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %133, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %29 = add nsw i32 %22, 1
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %28(i64 noundef %30, ptr noundef nonnull @.str) #8
  %32 = icmp eq i8 %3, 0
  %33 = icmp ne i8 %2, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %78

35:                                               ; preds = %27
  %36 = load ptr, ptr %5, align 8, !tbaa !95
  %37 = tail call ptr @BKE_mesh_from_object(ptr noundef %36) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 30
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  br label %46

46:                                               ; preds = %56, %43
  %47 = phi i32 [ %49, %56 ], [ %41, %43 ]
  %48 = phi ptr [ %57, %56 ], [ %45, %43 ]
  %49 = add nsw i32 %47, -1
  %50 = getelementptr inbounds %struct.MPoly, ptr %48, i64 0, i32 3
  %51 = load i8, ptr %50, align 2, !tbaa !52
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = and i8 %51, -19
  store i8 %55, ptr %50, align 2, !tbaa !52
  br label %56

56:                                               ; preds = %54, %46
  %57 = getelementptr inbounds %struct.MPoly, ptr %48, i64 1
  %58 = icmp eq i32 %49, 0
  br i1 %58, label %59, label %46, !llvm.loop !85

59:                                               ; preds = %56, %39, %35
  %60 = load i32, ptr %21, align 8, !tbaa !66
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !51
  br label %65

65:                                               ; preds = %62, %74
  %66 = phi ptr [ %76, %74 ], [ %64, %62 ]
  %67 = phi i32 [ %75, %74 ], [ 1, %62 ]
  %68 = getelementptr inbounds %struct.MPoly, ptr %66, i64 0, i32 3
  %69 = load i8, ptr %68, align 2, !tbaa !52
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = and i8 %69, -19
  store i8 %73, ptr %68, align 2, !tbaa !52
  br label %74

74:                                               ; preds = %65, %72
  %75 = add nuw i32 %67, 1
  %76 = getelementptr inbounds %struct.MPoly, ptr %66, i64 1
  %77 = icmp eq i32 %67, %60
  br i1 %77, label %78, label %65, !llvm.loop !102

78:                                               ; preds = %74, %59, %27
  tail call void @view3d_validate_backbuf(ptr noundef %0) #8
  %79 = tail call ptr @IMB_allocImBuf(i32 noundef %11, i32 noundef %17, i8 noundef zeroext 32, i32 noundef 1) #8
  %80 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !106
  %84 = load i32, ptr %1, align 4, !tbaa !99
  %85 = load i32, ptr %14, align 4, !tbaa !101
  tail call void @view3d_opengl_read_pixels(ptr noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %11, i32 noundef %17, i32 noundef 6408, i32 noundef 5121, ptr noundef %81) #8
  br label %86

86:                                               ; preds = %78, %99
  %87 = phi i32 [ %25, %78 ], [ %89, %99 ]
  %88 = phi ptr [ %81, %78 ], [ %100, %99 ]
  %89 = add nsw i32 %87, -1
  %90 = load i32, ptr %88, align 4, !tbaa !50
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = tail call i32 @WM_framebuffer_to_index(i32 noundef %90) #8
  %94 = load i32, ptr %21, align 8, !tbaa !66
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds i8, ptr %31, i64 %97
  store i8 1, ptr %98, align 1, !tbaa !107
  br label %99

99:                                               ; preds = %92, %96, %86
  %100 = getelementptr inbounds i32, ptr %88, i64 1
  %101 = icmp eq i32 %89, 0
  br i1 %101, label %102, label %86, !llvm.loop !108

102:                                              ; preds = %99
  %103 = load i32, ptr %21, align 8, !tbaa !66
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !51
  %108 = icmp eq i8 %2, 0
  %109 = add nuw i32 %103, 1
  %110 = zext i32 %109 to i64
  br label %111

111:                                              ; preds = %105, %126
  %112 = phi i64 [ 1, %105 ], [ %127, %126 ]
  %113 = phi ptr [ %107, %105 ], [ %128, %126 ]
  %114 = getelementptr inbounds i8, ptr %31, i64 %112
  %115 = load i8, ptr %114, align 1, !tbaa !107
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.MPoly, ptr %113, i64 0, i32 3
  %119 = load i8, ptr %118, align 2, !tbaa !52
  %120 = and i8 %119, 16
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = or i8 %119, 2
  %124 = and i8 %119, -19
  %125 = select i1 %108, i8 %124, i8 %123
  store i8 %125, ptr %118, align 2, !tbaa !52
  br label %126

126:                                              ; preds = %122, %111, %117
  %127 = add nuw nsw i64 %112, 1
  %128 = getelementptr inbounds %struct.MPoly, ptr %113, i64 1
  %129 = icmp eq i64 %127, %110
  br i1 %129, label %130, label %111, !llvm.loop !109

130:                                              ; preds = %126, %102
  tail call void @IMB_freeImBuf(ptr noundef %79) #8
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %131(ptr noundef %31) #8
  %132 = load ptr, ptr %5, align 8, !tbaa !95
  tail call void @paintface_flush_flags(ptr noundef %132)
  br label %133

133:                                              ; preds = %4, %20, %24, %130
  %134 = phi i32 [ 4, %130 ], [ 2, %24 ], [ 2, %20 ], [ 2, %4 ]
  ret i32 %134
}

declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @view3d_opengl_read_pixels(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paintvert_flush_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %2, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  tail call void @BKE_mesh_flush_select_from_verts(ptr noundef nonnull %2) #8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = tail call ptr %10(ptr noundef nonnull %4, i32 noundef 7) #8
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = tail call ptr %13(ptr noundef nonnull %4) #8
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = tail call i32 %16(ptr noundef nonnull %4) #8
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
  %39 = load i8, ptr %38, align 2, !tbaa !113
  %40 = getelementptr inbounds %struct.MVert, ptr %31, i64 0, i32 2
  store i8 %39, ptr %40, align 2, !tbaa !113
  br label %41

41:                                               ; preds = %29, %35
  %42 = add nuw nsw i64 %30, 1
  %43 = getelementptr inbounds %struct.MVert, ptr %31, i64 1
  %44 = icmp eq i64 %42, %23
  br i1 %44, label %54, label %29, !llvm.loop !115

45:                                               ; preds = %25, %45
  %46 = phi i64 [ 0, %25 ], [ %51, %45 ]
  %47 = phi ptr [ %14, %25 ], [ %52, %45 ]
  %48 = getelementptr inbounds %struct.MVert, ptr %27, i64 %46, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !113
  %50 = getelementptr inbounds %struct.MVert, ptr %47, i64 0, i32 2
  store i8 %49, ptr %50, align 2, !tbaa !113
  %51 = add nuw nsw i64 %46, 1
  %52 = getelementptr inbounds %struct.MVert, ptr %47, i64 1
  %53 = icmp eq i64 %51, %28
  br i1 %53, label %54, label %45, !llvm.loop !116

54:                                               ; preds = %41, %45, %20, %24, %6, %1
  ret void
}

declare void @BKE_mesh_flush_select_from_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paintvert_deselect_all_visible(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  br label %19

15:                                               ; preds = %19
  %16 = add nsw i32 %20, -1
  %17 = getelementptr inbounds %struct.MVert, ptr %21, i64 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %26, label %19, !llvm.loop !118

19:                                               ; preds = %12, %15
  %20 = phi i32 [ %16, %15 ], [ %10, %12 ]
  %21 = phi ptr [ %17, %15 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.MVert, ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 2, !tbaa !113
  %24 = and i8 %23, 17
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %15

26:                                               ; preds = %15, %19, %8, %6
  %27 = phi i32 [ %1, %6 ], [ 1, %8 ], [ 2, %19 ], [ 1, %15 ]
  %28 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %29 = load i32, ptr %28, align 8, !tbaa !117
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  br label %34

34:                                               ; preds = %31, %51
  %35 = phi i32 [ %37, %51 ], [ %29, %31 ]
  %36 = phi ptr [ %52, %51 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  %38 = getelementptr inbounds %struct.MVert, ptr %36, i64 0, i32 2
  %39 = load i8, ptr %38, align 2, !tbaa !113
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  switch i32 %27, label %51 [
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
  ]

43:                                               ; preds = %42
  %44 = or i8 %39, 1
  br label %49

45:                                               ; preds = %42
  %46 = and i8 %39, -18
  br label %49

47:                                               ; preds = %42
  %48 = xor i8 %39, 1
  br label %49

49:                                               ; preds = %47, %45, %43
  %50 = phi i8 [ %44, %43 ], [ %46, %45 ], [ %48, %47 ]
  store i8 %50, ptr %38, align 2, !tbaa !113
  br label %51

51:                                               ; preds = %49, %42, %34
  %52 = getelementptr inbounds %struct.MVert, ptr %36, i64 1
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %54, label %34, !llvm.loop !119

54:                                               ; preds = %51, %26
  %55 = icmp eq i32 %27, 1
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = and i32 %27, -2
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @BKE_mesh_mselect_clear(ptr noundef nonnull %4) #8
  br label %61

60:                                               ; preds = %56
  tail call void @BKE_mesh_mselect_validate(ptr noundef nonnull %4) #8
  br label %61

61:                                               ; preds = %59, %60, %54
  %62 = icmp eq i8 %2, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  tail call void @paintvert_flush_flags(ptr noundef %0)
  br label %64

64:                                               ; preds = %61, %63, %3
  ret void
}

declare void @BKE_mesh_mselect_clear(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_mselect_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paintvert_select_ungrouped(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %10
  %13 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !117
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  br label %22

22:                                               ; preds = %32, %19
  %23 = phi i32 [ %25, %32 ], [ %17, %19 ]
  %24 = phi ptr [ %33, %32 ], [ %21, %19 ]
  %25 = add nsw i32 %23, -1
  %26 = getelementptr inbounds %struct.MVert, ptr %24, i64 0, i32 2
  %27 = load i8, ptr %26, align 2, !tbaa !113
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = and i8 %27, -18
  store i8 %31, ptr %26, align 2, !tbaa !113
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr inbounds %struct.MVert, ptr %24, i64 1
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %35, label %22, !llvm.loop !119

35:                                               ; preds = %32, %15
  tail call void @BKE_mesh_mselect_clear(ptr noundef nonnull %13) #8
  br label %36

36:                                               ; preds = %35, %12, %10
  %37 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %38 = load i32, ptr %37, align 8, !tbaa !117
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = load ptr, ptr %7, align 8, !tbaa !120
  br label %44

44:                                               ; preds = %40, %57
  %45 = phi ptr [ %59, %57 ], [ %42, %40 ]
  %46 = phi i32 [ %58, %57 ], [ 0, %40 ]
  %47 = phi ptr [ %60, %57 ], [ %43, %40 ]
  %48 = getelementptr inbounds %struct.MVert, ptr %45, i64 0, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !113
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load ptr, ptr %47, align 8, !tbaa !121
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = or i8 %49, 1
  store i8 %56, ptr %48, align 2, !tbaa !113
  br label %57

57:                                               ; preds = %44, %55, %52
  %58 = add nuw nsw i32 %46, 1
  %59 = getelementptr inbounds %struct.MVert, ptr %45, i64 1
  %60 = getelementptr inbounds %struct.MDeformVert, ptr %47, i64 1
  %61 = icmp eq i32 %58, %38
  br i1 %61, label %62, label %44, !llvm.loop !123

62:                                               ; preds = %57, %36
  %63 = icmp eq i8 %2, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  tail call void @paintvert_flush_flags(ptr noundef %0)
  br label %65

65:                                               ; preds = %62, %64, %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !125
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
  %18 = load ptr, ptr %2, align 8, !tbaa !127
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !129
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !130
  %27 = icmp eq i32 %17, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !131
  %31 = icmp ne i32 %16, %30
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %28, %13, %20, %24
  %34 = phi i8 [ 1, %24 ], [ 1, %20 ], [ 1, %13 ], [ %32, %28 ]
  ret i8 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_mirrtopo_init(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %8 = load ptr, ptr %2, align 8, !tbaa !127
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %11(ptr noundef nonnull %8) #8
  br label %12

12:                                               ; preds = %4, %10
  store ptr null, ptr %2, align 8, !tbaa !127
  %13 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  store i32 -1, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  store i32 -1, ptr %14, align 4, !tbaa !131
  %15 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  store i32 %1, ptr %15, align 8, !tbaa !129
  %16 = icmp ne ptr %7, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr %7, align 8, !tbaa !125
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %18, i8 noundef zeroext 1) #8
  %19 = load ptr, ptr %7, align 8, !tbaa !125
  br label %22

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = load i32, ptr %23, align 8, !tbaa !50
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.1) #8
  br i1 %16, label %29, label %64

29:                                               ; preds = %22
  %30 = load ptr, ptr %6, align 8, !tbaa !124
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = getelementptr inbounds %struct.BMesh, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !132
  %34 = load ptr, ptr %7, align 8, !tbaa !125
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %35, align 4, !tbaa !134
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !137
  %38 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  store ptr %39, ptr %5, align 8, !tbaa !107
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %40 = load ptr, ptr %37, align 8, !tbaa !137
  %41 = call ptr %40(ptr noundef nonnull %5) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %43

43:                                               ; preds = %29, %43
  %44 = phi ptr [ %62, %43 ], [ %41, %29 ]
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !143
  %49 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !144
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !143
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds i32, ptr %28, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !50
  %57 = sext i32 %52 to i64
  %58 = getelementptr inbounds i32, ptr %28, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !50
  %61 = load ptr, ptr %37, align 8, !tbaa !137
  %62 = call ptr %61(ptr noundef nonnull %5) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %43, !llvm.loop !145

64:                                               ; preds = %22
  %65 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %66 = load i32, ptr %65, align 4, !tbaa !70
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %86, %71 ], [ %70, %68 ]
  %73 = phi i32 [ %85, %71 ], [ 0, %68 ]
  %74 = load i32, ptr %72, align 4, !tbaa !146
  %75 = getelementptr inbounds %struct.MEdge, ptr %72, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !147
  %77 = zext i32 %74 to i64
  %78 = getelementptr inbounds i32, ptr %28, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !50
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4, !tbaa !50
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds i32, ptr %28, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !50
  %85 = add nuw nsw i32 %73, 1
  %86 = getelementptr inbounds %struct.MEdge, ptr %72, i64 1
  %87 = load i32, ptr %65, align 4, !tbaa !70
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %71, label %89, !llvm.loop !148

89:                                               ; preds = %71, %43, %64, %29
  %90 = phi i32 [ %33, %29 ], [ %66, %64 ], [ %33, %43 ], [ %66, %71 ]
  %91 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !69
  %92 = call ptr %91(ptr noundef %28) #8
  %93 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %94 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %95 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %96 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %98 = icmp sgt i32 %24, 1
  %99 = zext nneg i32 %24 to i64
  br label %100

100:                                              ; preds = %196, %89
  %101 = phi i32 [ -1, %89 ], [ %178, %196 ]
  %102 = phi i32 [ 1, %89 ], [ %197, %196 ]
  %103 = phi i32 [ -1, %89 ], [ %192, %196 ]
  br i1 %16, label %104, label %143

104:                                              ; preds = %100
  %105 = load ptr, ptr %7, align 8, !tbaa !125
  store i8 2, ptr %95, align 4, !tbaa !134
  store ptr @bmiter__elem_of_mesh_begin, ptr %96, align 8, !tbaa !136
  store ptr @bmiter__elem_of_mesh_step, ptr %97, align 8, !tbaa !137
  %106 = getelementptr inbounds %struct.BMesh, ptr %105, i64 0, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !138
  store ptr %107, ptr %5, align 8, !tbaa !107
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %108 = load ptr, ptr %97, align 8, !tbaa !137
  %109 = call ptr %108(ptr noundef nonnull %5) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %177, label %111

111:                                              ; preds = %104, %111
  %112 = phi ptr [ %141, %111 ], [ %109, %104 ]
  %113 = phi i32 [ %139, %111 ], [ 0, %104 ]
  %114 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !139
  %116 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !143
  %118 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !144
  %120 = getelementptr inbounds %struct.BMHeader, ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !143
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %92, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = mul i32 %124, %102
  %126 = sext i32 %117 to i64
  %127 = getelementptr inbounds i32, ptr %28, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !50
  %129 = add i32 %128, %125
  store i32 %129, ptr %127, align 4, !tbaa !50
  %130 = getelementptr inbounds i32, ptr %92, i64 %126
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = mul i32 %131, %102
  %133 = getelementptr inbounds i32, ptr %28, i64 %122
  %134 = load i32, ptr %133, align 4, !tbaa !50
  %135 = add i32 %134, %132
  store i32 %135, ptr %133, align 4, !tbaa !50
  %136 = load i32, ptr %127, align 4, !tbaa !50
  %137 = icmp ne i32 %136, %135
  %138 = zext i1 %137 to i32
  %139 = add nuw nsw i32 %113, %138
  %140 = load ptr, ptr %97, align 8, !tbaa !137
  %141 = call ptr %140(ptr noundef nonnull %5) #8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %177, label %111, !llvm.loop !149

143:                                              ; preds = %100
  %144 = load i32, ptr %94, align 4, !tbaa !70
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load ptr, ptr %93, align 8, !tbaa !76
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi ptr [ %174, %148 ], [ %147, %146 ]
  %150 = phi i32 [ %173, %148 ], [ 0, %146 ]
  %151 = phi i32 [ %172, %148 ], [ 0, %146 ]
  %152 = load i32, ptr %149, align 4, !tbaa !146
  %153 = getelementptr inbounds %struct.MEdge, ptr %149, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !147
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %92, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !50
  %158 = mul i32 %157, %102
  %159 = zext i32 %152 to i64
  %160 = getelementptr inbounds i32, ptr %28, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !50
  %162 = add i32 %161, %158
  store i32 %162, ptr %160, align 4, !tbaa !50
  %163 = getelementptr inbounds i32, ptr %92, i64 %159
  %164 = load i32, ptr %163, align 4, !tbaa !50
  %165 = mul i32 %164, %102
  %166 = getelementptr inbounds i32, ptr %28, i64 %155
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = add i32 %167, %165
  store i32 %168, ptr %166, align 4, !tbaa !50
  %169 = load i32, ptr %160, align 4, !tbaa !50
  %170 = icmp ne i32 %169, %168
  %171 = zext i1 %170 to i32
  %172 = add nuw nsw i32 %151, %171
  %173 = add nuw nsw i32 %150, 1
  %174 = getelementptr inbounds %struct.MEdge, ptr %149, i64 1
  %175 = load i32, ptr %94, align 4, !tbaa !70
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %148, label %177, !llvm.loop !150

177:                                              ; preds = %148, %111, %143, %104
  %178 = phi i32 [ 0, %104 ], [ 0, %143 ], [ %139, %111 ], [ %172, %148 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %92, ptr align 4 %28, i64 %27, i1 false)
  call void @qsort(ptr noundef %92, i64 noundef %26, i64 noundef 4, ptr noundef nonnull @mirrtopo_hash_sort) #8
  br i1 %98, label %179, label %191

179:                                              ; preds = %177, %179
  %180 = phi i64 [ %189, %179 ], [ 1, %177 ]
  %181 = phi i32 [ %188, %179 ], [ 1, %177 ]
  %182 = getelementptr i32, ptr %92, i64 %180
  %183 = getelementptr i32, ptr %182, i64 -1
  %184 = load i32, ptr %183, align 4, !tbaa !50
  %185 = load i32, ptr %182, align 4, !tbaa !50
  %186 = icmp ne i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = add nuw nsw i32 %181, %187
  %189 = add nuw nsw i64 %180, 1
  %190 = icmp eq i64 %189, %99
  br i1 %190, label %191, label %179, !llvm.loop !151

191:                                              ; preds = %179, %177
  %192 = phi i32 [ 1, %177 ], [ %188, %179 ]
  %193 = icmp sgt i32 %192, %103
  %194 = icmp sgt i32 %178, %101
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %92, ptr align 4 %28, i64 %27, i1 false)
  %197 = add i32 %102, 1
  br label %100, !llvm.loop !152

198:                                              ; preds = %191
  %199 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %200 = shl nsw i64 %26, 3
  %201 = call ptr %199(i64 noundef %200, ptr noundef nonnull @.str.2) #8
  %202 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !69
  %203 = call ptr %202(i64 noundef %200, ptr noundef nonnull @.str.3) #8
  %204 = icmp eq i8 %3, 0
  %205 = and i1 %204, %16
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load ptr, ptr %7, align 8, !tbaa !125
  call void @BM_mesh_elem_table_ensure(ptr noundef %207, i8 noundef zeroext 1) #8
  br label %208

208:                                              ; preds = %206, %198
  %209 = icmp sgt i32 %24, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %208
  %211 = zext nneg i32 %24 to i64
  br label %212

212:                                              ; preds = %210, %212
  %213 = phi i64 [ 0, %210 ], [ %220, %212 ]
  %214 = getelementptr inbounds i32, ptr %28, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !50
  %216 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %201, i64 %213
  store i32 %215, ptr %216, align 4, !tbaa !153
  %217 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %201, i64 %213, i32 1
  %218 = trunc i64 %213 to i32
  store i32 %218, ptr %217, align 4, !tbaa !155
  %219 = getelementptr inbounds i64, ptr %203, i64 %213
  store i64 -1, ptr %219, align 8, !tbaa !156
  %220 = add nuw nsw i64 %213, 1
  %221 = icmp eq i64 %220, %211
  br i1 %221, label %222, label %212, !llvm.loop !157

222:                                              ; preds = %212, %208
  call void @qsort(ptr noundef %201, i64 noundef %26, i64 noundef 8, ptr noundef nonnull @mirrtopo_vert_sort) #8
  %223 = icmp sgt i32 %24, 1
  br i1 %223, label %224, label %230

224:                                              ; preds = %222
  %225 = load i32, ptr %201, align 4, !tbaa !153
  %226 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %201, i64 1
  %227 = load i32, ptr %226, align 4, !tbaa !153
  %228 = icmp ne i32 %225, %227
  %229 = zext i1 %228 to i32
  br label %230

230:                                              ; preds = %224, %222
  %231 = phi i32 [ 1, %222 ], [ %229, %224 ]
  %232 = icmp slt i32 %24, 2
  br i1 %232, label %286, label %233

233:                                              ; preds = %230
  %234 = zext nneg i32 %24 to i64
  %235 = add nuw i32 %24, 1
  %236 = zext i32 %235 to i64
  br label %237

237:                                              ; preds = %233, %282
  %238 = phi i64 [ 2, %233 ], [ %284, %282 ]
  %239 = phi i32 [ %231, %233 ], [ %283, %282 ]
  %240 = trunc i64 %238 to i32
  %241 = icmp eq i64 %238, %234
  br i1 %241, label %248, label %242

242:                                              ; preds = %237
  %243 = getelementptr %struct.MirrTopoVert_t, ptr %201, i64 %238
  %244 = getelementptr %struct.MirrTopoVert_t, ptr %243, i64 -1
  %245 = load i32, ptr %244, align 4, !tbaa !153
  %246 = load i32, ptr %243, align 4, !tbaa !153
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %282, label %248

248:                                              ; preds = %242, %237
  %249 = sub nsw i32 %240, %239
  %250 = icmp eq i32 %249, 2
  %251 = trunc i64 %238 to i32
  br i1 %250, label %252, label %282

252:                                              ; preds = %248
  br i1 %16, label %253, label %269

253:                                              ; preds = %252
  %254 = load ptr, ptr %7, align 8, !tbaa !125
  %255 = getelementptr %struct.MirrTopoVert_t, ptr %201, i64 %238
  %256 = getelementptr %struct.MirrTopoVert_t, ptr %255, i64 -2, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !155
  %258 = call ptr @BM_vert_at_index(ptr noundef %254, i32 noundef %257) #8
  %259 = ptrtoint ptr %258 to i64
  %260 = getelementptr %struct.MirrTopoVert_t, ptr %255, i64 -1, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !155
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, ptr %203, i64 %262
  store i64 %259, ptr %263, align 8, !tbaa !156
  %264 = load ptr, ptr %7, align 8, !tbaa !125
  %265 = call ptr @BM_vert_at_index(ptr noundef %264, i32 noundef %261) #8
  %266 = ptrtoint ptr %265 to i64
  %267 = load i32, ptr %256, align 4, !tbaa !155
  %268 = sext i32 %267 to i64
  br label %278

269:                                              ; preds = %252
  %270 = getelementptr %struct.MirrTopoVert_t, ptr %201, i64 %238
  %271 = getelementptr %struct.MirrTopoVert_t, ptr %270, i64 -2, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !155
  %273 = sext i32 %272 to i64
  %274 = getelementptr %struct.MirrTopoVert_t, ptr %270, i64 -1, i32 1
  %275 = load i32, ptr %274, align 4, !tbaa !155
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, ptr %203, i64 %276
  store i64 %273, ptr %277, align 8, !tbaa !156
  br label %278

278:                                              ; preds = %253, %269
  %279 = phi i64 [ %273, %269 ], [ %268, %253 ]
  %280 = phi i64 [ %276, %269 ], [ %266, %253 ]
  %281 = getelementptr inbounds i64, ptr %203, i64 %279
  store i64 %280, ptr %281, align 8, !tbaa !156
  br label %282

282:                                              ; preds = %278, %248, %242
  %283 = phi i32 [ %239, %242 ], [ %251, %248 ], [ %251, %278 ]
  %284 = add nuw nsw i64 %238, 1
  %285 = icmp eq i64 %284, %236
  br i1 %285, label %286, label %237, !llvm.loop !158

286:                                              ; preds = %282, %230
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %287(ptr noundef %201) #8
  %288 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %288(ptr noundef %28) #8
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %289(ptr noundef %92) #8
  store ptr %203, ptr %2, align 8, !tbaa !127
  store i32 %24, ptr %13, align 8, !tbaa !130
  store i32 %90, ptr %14, align 4, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_mirrtopo_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  tail call void %5(ptr noundef nonnull %2) #8
  br label %6

6:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !127
  %7 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 2
  store i32 -1, ptr %8, align 4, !tbaa !131
  ret void
}

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @mirrtopo_hash_sort(ptr noundef %0, ptr noundef %1) #6 {
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

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mirrtopo_vert_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !153
  %4 = load i32, ptr %1, align 4, !tbaa !153
  %5 = icmp ugt i32 %3, %4
  %6 = icmp ult i32 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_poly_edgebitmap_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!60, !37, i64 1200}
!60 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!61 = !{!60, !37, i64 1136}
!62 = distinct !{!62, !57, !58}
!63 = !{!60, !37, i64 1184}
!64 = !{!60, !37, i64 1120}
!65 = distinct !{!65, !57, !58}
!66 = !{!47, !41, i64 1296}
!67 = distinct !{!67, !57, !58}
!68 = distinct !{!68, !57, !58}
!69 = !{!37, !37, i64 0}
!70 = !{!47, !41, i64 1284}
!71 = !{!47, !37, i64 184}
!72 = !{!53, !41, i64 0}
!73 = distinct !{!73, !57, !58}
!74 = distinct !{!74, !57, !58}
!75 = !{!53, !41, i64 4}
!76 = !{!47, !37, i64 240}
!77 = !{!78, !41, i64 4}
!78 = !{!"MLoop", !41, i64 0, !41, i64 4}
!79 = !{!80, !40, i64 10}
!80 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!81 = distinct !{!81, !57, !58}
!82 = distinct !{!82, !57, !58}
!83 = distinct !{!83, !57, !58}
!84 = distinct !{!84, !57, !58}
!85 = distinct !{!85, !57, !58}
!86 = !{!47, !37, i64 176}
!87 = !{!47, !37, i64 232}
!88 = !{!78, !41, i64 0}
!89 = !{!44, !44, i64 0}
!90 = distinct !{!90, !57, !58}
!91 = distinct !{!91, !57, !58}
!92 = distinct !{!92, !57, !58}
!93 = !{!47, !41, i64 1304}
!94 = !{!35, !37, i64 296}
!95 = !{!96, !37, i64 8}
!96 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!97 = !{!98, !41, i64 4}
!98 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!99 = !{!98, !41, i64 0}
!100 = !{!98, !41, i64 12}
!101 = !{!98, !41, i64 8}
!102 = distinct !{!102, !57, !58}
!103 = !{!104, !37, i64 40}
!104 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !44, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !98, i64 2436, !105, i64 2456}
!105 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!106 = !{!96, !37, i64 24}
!107 = !{!38, !38, i64 0}
!108 = distinct !{!108, !57, !58}
!109 = distinct !{!109, !57, !58}
!110 = !{!60, !37, i64 1320}
!111 = !{!60, !37, i64 1168}
!112 = !{!60, !37, i64 1104}
!113 = !{!114, !38, i64 18}
!114 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!115 = distinct !{!115, !57, !58}
!116 = distinct !{!116, !57, !58}
!117 = !{!47, !41, i64 1280}
!118 = distinct !{!118, !57, !58}
!119 = distinct !{!119, !57, !58}
!120 = !{!47, !37, i64 248}
!121 = !{!122, !37, i64 0}
!122 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!123 = distinct !{!123, !57, !58}
!124 = !{!47, !37, i64 272}
!125 = !{!126, !37, i64 0}
!126 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!127 = !{!128, !37, i64 0}
!128 = !{!"MirrTopoStore_t", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!129 = !{!128, !41, i64 16}
!130 = !{!128, !41, i64 8}
!131 = !{!128, !41, i64 12}
!132 = !{!133, !41, i64 4}
!133 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!134 = !{!135, !38, i64 60}
!135 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!136 = !{!135, !37, i64 40}
!137 = !{!135, !37, i64 48}
!138 = !{!133, !37, i64 40}
!139 = !{!140, !37, i64 24}
!140 = !{!"BMEdge", !141, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !142, i64 48, !142, i64 64}
!141 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!142 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!143 = !{!141, !41, i64 8}
!144 = !{!140, !37, i64 32}
!145 = distinct !{!145, !57, !58}
!146 = !{!80, !41, i64 0}
!147 = !{!80, !41, i64 4}
!148 = distinct !{!148, !57, !58}
!149 = distinct !{!149, !57, !58}
!150 = distinct !{!150, !57, !58}
!151 = distinct !{!151, !57, !58}
!152 = distinct !{!152, !58}
!153 = !{!154, !41, i64 0}
!154 = !{!"MirrTopoVert_t", !41, i64 0, !41, i64 4}
!155 = !{!154, !41, i64 4}
!156 = !{!45, !45, i64 0}
!157 = distinct !{!157, !57, !58}
!158 = distinct !{!158, !57, !58}
