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
  %4 = load ptr, ptr %3, align 8, !tbaa !5
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
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !20
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %20 = zext nneg i32 %16 to i64
  br label %21

21:                                               ; preds = %18, %32
  %22 = phi i64 [ 0, %18 ], [ %33, %32 ]
  %23 = getelementptr inbounds i32, ptr %10, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !21
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 8, !tbaa !22
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds %struct.MPoly, ptr %27, i64 %28, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !23
  %31 = getelementptr inbounds %struct.MFace, ptr %14, i64 %22, i32 6
  store i8 %30, ptr %31, align 1, !tbaa !25
  br label %32

32:                                               ; preds = %21, %26
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21, !llvm.loop !27

35:                                               ; preds = %32, %12, %8
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 4
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %36, i32 noundef 7) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %41 = load ptr, ptr %40, align 8, !tbaa !29
  %42 = tail call ptr %41(ptr noundef nonnull %4) #9
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !31
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
  %53 = load i32, ptr %52, align 4, !tbaa !21
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %48, align 8, !tbaa !22
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds %struct.MPoly, ptr %56, i64 %57, i32 3
  %59 = load i8, ptr %58, align 2, !tbaa !23
  %60 = getelementptr inbounds %struct.MPoly, ptr %42, i64 %51, i32 3
  store i8 %59, ptr %60, align 2, !tbaa !23
  br label %61

61:                                               ; preds = %50, %55
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, %49
  br i1 %63, label %64, label %50, !llvm.loop !32

64:                                               ; preds = %61, %39, %35
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 2
  %66 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %65, i32 noundef 7) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 35
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = tail call ptr %70(ptr noundef nonnull %4) #9
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %73 = load ptr, ptr %72, align 8, !tbaa !33
  %74 = tail call ptr %73(ptr noundef nonnull %4) #9
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = tail call i32 %76(ptr noundef nonnull %4) #9
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %68
  %80 = zext nneg i32 %77 to i64
  br label %81

81:                                               ; preds = %79, %91
  %82 = phi i64 [ 0, %79 ], [ %92, %91 ]
  %83 = getelementptr inbounds i32, ptr %66, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !21
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds %struct.MPoly, ptr %71, i64 %87, i32 3
  %89 = load i8, ptr %88, align 2, !tbaa !23
  %90 = getelementptr inbounds %struct.MFace, ptr %74, i64 %82, i32 6
  store i8 %89, ptr %90, align 1, !tbaa !25
  br label %91

91:                                               ; preds = %81, %86
  %92 = add nuw nsw i64 %82, 1
  %93 = icmp eq i64 %92, %80
  br i1 %93, label %94, label %81, !llvm.loop !35

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
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = zext i8 %1 to i32
  br label %13

13:                                               ; preds = %9, %35
  %14 = phi i32 [ %7, %9 ], [ %16, %35 ]
  %15 = phi ptr [ %11, %9 ], [ %36, %35 ]
  %16 = add nsw i32 %14, -1
  %17 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !23
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
  store i8 %28, ptr %17, align 2, !tbaa !23
  br label %29

29:                                               ; preds = %22, %27, %13
  %30 = phi i8 [ %18, %22 ], [ %28, %27 ], [ %18, %13 ]
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = and i8 %30, -3
  store i8 %34, ptr %17, align 2, !tbaa !23
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.MPoly, ptr %15, i64 1
  %37 = icmp eq i32 %16, 0
  br i1 %37, label %38, label %13, !llvm.loop !37

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
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %8, %22
  %12 = phi i32 [ %6, %8 ], [ %14, %22 ]
  %13 = phi ptr [ %10, %8 ], [ %23, %22 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.MPoly, ptr %13, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !23
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = or i8 %16, 2
  %21 = add nsw i8 %20, -16
  store i8 %21, ptr %15, align 2, !tbaa !23
  br label %22

22:                                               ; preds = %19, %11
  %23 = getelementptr inbounds %struct.MPoly, ptr %13, i64 1
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %25, label %11, !llvm.loop !38

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
  store i32 -1, ptr %5, align 4, !tbaa !21
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !36
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
  %18 = load i32, ptr %5, align 4, !tbaa !21
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
define internal fastcc void @select_linked_tfaces_with_seams(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = ashr i32 %6, 5
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %4(i64 noundef %10, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #9
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = ashr i32 %14, 5
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %12(i64 noundef %18, ptr noundef nonnull @__func__.select_linked_tfaces_with_seams) #9
  %20 = icmp eq i32 %1, -1
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds %struct.MPoly, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = load i32, ptr %25, align 4, !tbaa !42
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MLoop, ptr %27, i64 %29
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %11, ptr noundef nonnull %25, ptr noundef %30) #9
  %31 = and i32 %1, 31
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %1, 5
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %19, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !21
  %37 = or i32 %36, %32
  store i32 %37, ptr %35, align 4, !tbaa !21
  %38 = load i32, ptr %13, align 8, !tbaa !36
  br label %72

39:                                               ; preds = %3
  %40 = load i32, ptr %13, align 8, !tbaa !36
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %46

46:                                               ; preds = %42, %67
  %47 = phi i32 [ %40, %42 ], [ %68, %67 ]
  %48 = phi ptr [ %44, %42 ], [ %70, %67 ]
  %49 = phi i32 [ 0, %42 ], [ %69, %67 ]
  %50 = getelementptr inbounds %struct.MPoly, ptr %48, i64 0, i32 3
  %51 = load i8, ptr %50, align 2, !tbaa !23
  %52 = and i8 %51, 18
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load ptr, ptr %45, align 8, !tbaa !41
  %56 = load i32, ptr %48, align 4, !tbaa !42
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.MLoop, ptr %55, i64 %57
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef %11, ptr noundef nonnull %48, ptr noundef %58) #9
  %59 = and i32 %49, 31
  %60 = shl nuw i32 1, %59
  %61 = lshr i32 %49, 5
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %19, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !21
  %65 = or i32 %64, %60
  store i32 %65, ptr %63, align 4, !tbaa !21
  %66 = load i32, ptr %13, align 8, !tbaa !36
  br label %67

67:                                               ; preds = %46, %54
  %68 = phi i32 [ %47, %46 ], [ %66, %54 ]
  %69 = add nuw nsw i32 %49, 1
  %70 = getelementptr inbounds %struct.MPoly, ptr %48, i64 1
  %71 = icmp slt i32 %69, %68
  br i1 %71, label %46, label %72, !llvm.loop !43

72:                                               ; preds = %67, %39, %21
  %73 = phi i32 [ %40, %39 ], [ %38, %21 ], [ %68, %67 ]
  %74 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %75 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %76 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  br label %79

77:                                               ; preds = %141
  %78 = icmp eq i8 %143, 0
  br i1 %78, label %147, label %79, !llvm.loop !44

79:                                               ; preds = %72, %77
  %80 = phi i32 [ %73, %72 ], [ %142, %77 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %147

82:                                               ; preds = %79
  %83 = load ptr, ptr %74, align 8, !tbaa !22
  br label %84

84:                                               ; preds = %82, %141
  %85 = phi i32 [ %142, %141 ], [ %80, %82 ]
  %86 = phi ptr [ %145, %141 ], [ %83, %82 ]
  %87 = phi i8 [ %143, %141 ], [ 0, %82 ]
  %88 = phi i32 [ %144, %141 ], [ 0, %82 ]
  %89 = getelementptr inbounds %struct.MPoly, ptr %86, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !23
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %84
  %94 = lshr i32 %88, 5
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %19, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !21
  %98 = and i32 %88, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %93
  %103 = load ptr, ptr %75, align 8, !tbaa !41
  %104 = getelementptr inbounds %struct.MPoly, ptr %86, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !45
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102
  %108 = load i32, ptr %86, align 4, !tbaa !42
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %109
  %111 = load ptr, ptr %76, align 8, !tbaa !46
  br label %112

112:                                              ; preds = %107, %131
  %113 = phi ptr [ %110, %107 ], [ %133, %131 ]
  %114 = phi i32 [ 0, %107 ], [ %132, %131 ]
  %115 = getelementptr inbounds %struct.MLoop, ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !47
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.MEdge, ptr %111, i64 %117, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !49
  %120 = and i16 %119, 4
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %112
  %123 = lshr i32 %116, 5
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %11, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !21
  %127 = and i32 %116, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %112, %122
  %132 = add nuw nsw i32 %114, 1
  %133 = getelementptr inbounds %struct.MLoop, ptr %113, i64 1
  %134 = icmp eq i32 %132, %105
  br i1 %134, label %141, label %112, !llvm.loop !51

135:                                              ; preds = %122
  %136 = or i32 %97, %99
  store i32 %136, ptr %96, align 4, !tbaa !21
  %137 = load i32, ptr %86, align 4, !tbaa !42
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %138
  tail call void @BKE_mesh_poly_edgebitmap_insert(ptr noundef nonnull %11, ptr noundef nonnull %86, ptr noundef %139) #9
  %140 = load i32, ptr %13, align 8, !tbaa !36
  br label %141

141:                                              ; preds = %131, %102, %93, %135, %84
  %142 = phi i32 [ %85, %84 ], [ %85, %93 ], [ %140, %135 ], [ %85, %102 ], [ %85, %131 ]
  %143 = phi i8 [ %87, %84 ], [ %87, %93 ], [ 1, %135 ], [ %87, %102 ], [ %87, %131 ]
  %144 = add nuw nsw i32 %88, 1
  %145 = getelementptr inbounds %struct.MPoly, ptr %86, i64 1
  %146 = icmp slt i32 %144, %142
  br i1 %146, label %84, label %77, !llvm.loop !52

147:                                              ; preds = %79, %77
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %148(ptr noundef %11) #9
  %149 = load i32, ptr %13, align 8, !tbaa !36
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load ptr, ptr %74, align 8, !tbaa !22
  %153 = icmp eq i8 %2, 0
  %154 = select i1 %153, i8 0, i8 2
  br label %155

155:                                              ; preds = %151, %171
  %156 = phi ptr [ %152, %151 ], [ %173, %171 ]
  %157 = phi i32 [ 0, %151 ], [ %172, %171 ]
  %158 = lshr i32 %157, 5
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %19, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !21
  %162 = and i32 %157, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.MPoly, ptr %156, i64 0, i32 3
  %168 = load i8, ptr %167, align 2, !tbaa !23
  %169 = and i8 %168, -3
  %170 = or disjoint i8 %169, %154
  store i8 %170, ptr %167, align 2, !tbaa !23
  br label %171

171:                                              ; preds = %166, %155
  %172 = add nuw nsw i32 %157, 1
  %173 = getelementptr inbounds %struct.MPoly, ptr %156, i64 1
  %174 = icmp eq i32 %172, %149
  br i1 %174, label %175, label %155, !llvm.loop !53

175:                                              ; preds = %171, %147
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
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
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !36
  br i1 %7, label %12, label %25

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %48, label %18

14:                                               ; preds = %18
  %15 = add nsw i32 %19, -1
  %16 = getelementptr inbounds %struct.MPoly, ptr %20, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %25, label %18, !llvm.loop !54

18:                                               ; preds = %12, %14
  %19 = phi i32 [ %15, %14 ], [ %11, %12 ]
  %20 = phi ptr [ %16, %14 ], [ %9, %12 ]
  %21 = getelementptr inbounds %struct.MPoly, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 2, !tbaa !23
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
  %33 = load i8, ptr %32, align 2, !tbaa !23
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
  store i8 %44, ptr %32, align 2, !tbaa !23
  br label %45

45:                                               ; preds = %43, %36, %28
  %46 = getelementptr inbounds %struct.MPoly, ptr %30, i64 1
  %47 = icmp eq i32 %31, 0
  br i1 %47, label %48, label %28, !llvm.loop !55

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
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %13) #9
  %14 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !36
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  br label %24

24:                                               ; preds = %19, %50
  %25 = phi i8 [ 0, %19 ], [ %51, %50 ]
  %26 = phi i32 [ %17, %19 ], [ %52, %50 ]
  %27 = phi ptr [ %21, %19 ], [ %53, %50 ]
  %28 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 2, !tbaa !23
  %30 = and i8 %29, 18
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load ptr, ptr %22, align 8, !tbaa !41
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds %struct.MLoop, ptr %37, i64 %38
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i32 [ %46, %40 ], [ 0, %36 ]
  %42 = phi ptr [ %47, %40 ], [ %39, %36 ]
  %43 = load i32, ptr %42, align 4, !tbaa !58
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %15, i64 %44
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %45) #10
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %23) #10
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #9
  %46 = add nuw nsw i32 %41, 1
  %47 = getelementptr inbounds %struct.MLoop, ptr %42, i64 1
  %48 = load i32, ptr %33, align 4, !tbaa !45
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !59

50:                                               ; preds = %40, %32, %24
  %51 = phi i8 [ %25, %24 ], [ 1, %32 ], [ 1, %40 ]
  %52 = add nsw i32 %26, -1
  %53 = getelementptr inbounds %struct.MPoly, ptr %27, i64 1
  %54 = icmp sgt i32 %26, 1
  br i1 %54, label %24, label %55, !llvm.loop !60

55:                                               ; preds = %50, %12, %3, %8
  %56 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %12 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i8 %56
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !61
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
  %12 = load i32, ptr %7, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = zext i32 %12 to i64
  %20 = getelementptr inbounds %struct.MPoly, ptr %18, i64 %19, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !23
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
  %36 = load i8, ptr %35, align 2, !tbaa !23
  %37 = and i8 %36, -3
  store i8 %37, ptr %35, align 2, !tbaa !23
  %38 = getelementptr inbounds %struct.MPoly, ptr %33, i64 1
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %40, label %31, !llvm.loop !62

40:                                               ; preds = %31, %24
  %41 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 32
  store i32 %12, ptr %41, align 8, !tbaa !63
  %42 = load i8, ptr %20, align 2, !tbaa !23
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
  store i8 %59, ptr %20, align 2, !tbaa !23
  call void @paintface_flush_flags(ptr noundef %1) #10
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !64
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
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #10
  %8 = add nsw i32 %7, 1
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #10
  %10 = add nsw i32 %9, 1
  %11 = tail call ptr @BKE_mesh_from_object(ptr noundef %6) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %104, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !36
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %104, label %17

17:                                               ; preds = %13
  %18 = mul nsw i32 %10, %8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %104, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %22 = add nsw i32 %15, 1
  %23 = sext i32 %22 to i64
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str) #9
  %25 = icmp eq i8 %3, 0
  %26 = icmp ne i8 %2, 0
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @paintface_deselect_all_visible(ptr noundef %29, i32 noundef 2, i8 noundef zeroext 0) #10
  %30 = load i32, ptr %14, align 8, !tbaa !36
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  br label %35

35:                                               ; preds = %32, %44
  %36 = phi ptr [ %46, %44 ], [ %34, %32 ]
  %37 = phi i32 [ %45, %44 ], [ 1, %32 ]
  %38 = getelementptr inbounds %struct.MPoly, ptr %36, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !23
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = and i8 %39, -19
  store i8 %43, ptr %38, align 2, !tbaa !23
  br label %44

44:                                               ; preds = %35, %42
  %45 = add nuw i32 %37, 1
  %46 = getelementptr inbounds %struct.MPoly, ptr %36, i64 1
  %47 = icmp eq i32 %37, %30
  br i1 %47, label %48, label %35, !llvm.loop !67

48:                                               ; preds = %44, %28, %20
  tail call void @view3d_validate_backbuf(ptr noundef %0) #9
  %49 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext 32, i32 noundef 1) #9
  %50 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  %54 = load i32, ptr %1, align 4, !tbaa !73
  %55 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !74
  tail call void @view3d_opengl_read_pixels(ptr noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %8, i32 noundef %10, i32 noundef 6408, i32 noundef 5121, ptr noundef %51) #9
  br label %57

57:                                               ; preds = %48, %70
  %58 = phi i32 [ %18, %48 ], [ %60, %70 ]
  %59 = phi ptr [ %51, %48 ], [ %71, %70 ]
  %60 = add nsw i32 %58, -1
  %61 = load i32, ptr %59, align 4, !tbaa !21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @WM_framebuffer_to_index(i32 noundef %61) #9
  %65 = load i32, ptr %14, align 8, !tbaa !36
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds i8, ptr %24, i64 %68
  store i8 1, ptr %69, align 1, !tbaa !75
  br label %70

70:                                               ; preds = %63, %67, %57
  %71 = getelementptr inbounds i32, ptr %59, i64 1
  %72 = icmp eq i32 %60, 0
  br i1 %72, label %73, label %57, !llvm.loop !76

73:                                               ; preds = %70
  %74 = load i32, ptr %14, align 8, !tbaa !36
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %101, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = icmp eq i8 %2, 0
  %80 = add nuw i32 %74, 1
  %81 = zext i32 %80 to i64
  br label %82

82:                                               ; preds = %76, %97
  %83 = phi i64 [ 1, %76 ], [ %98, %97 ]
  %84 = phi ptr [ %78, %76 ], [ %99, %97 ]
  %85 = getelementptr inbounds i8, ptr %24, i64 %83
  %86 = load i8, ptr %85, align 1, !tbaa !75
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.MPoly, ptr %84, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !23
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = or i8 %90, 2
  %95 = and i8 %90, -19
  %96 = select i1 %79, i8 %95, i8 %94
  store i8 %96, ptr %89, align 2, !tbaa !23
  br label %97

97:                                               ; preds = %93, %82, %88
  %98 = add nuw nsw i64 %83, 1
  %99 = getelementptr inbounds %struct.MPoly, ptr %84, i64 1
  %100 = icmp eq i64 %98, %81
  br i1 %100, label %101, label %82, !llvm.loop !77

101:                                              ; preds = %97, %73
  tail call void @IMB_freeImBuf(ptr noundef %49) #9
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %102(ptr noundef %24) #9
  %103 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @paintface_flush_flags(ptr noundef %103) #10
  br label %104

104:                                              ; preds = %4, %13, %17, %101
  %105 = phi i32 [ 4, %101 ], [ 2, %17 ], [ 2, %13 ], [ 2, %4 ]
  ret i32 %105
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !78
  %4 = load i32, ptr %0, align 4, !tbaa !73
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !79
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
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
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %2, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  tail call void @BKE_mesh_flush_select_from_verts(ptr noundef nonnull %2) #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = tail call ptr %10(ptr noundef nonnull %4, i32 noundef 7) #9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = tail call ptr %13(ptr noundef nonnull %4) #9
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !82
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
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = zext nneg i32 %17 to i64
  br label %45

29:                                               ; preds = %21, %41
  %30 = phi i64 [ 0, %21 ], [ %42, %41 ]
  %31 = phi ptr [ %14, %21 ], [ %43, %41 ]
  %32 = getelementptr inbounds i32, ptr %11, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !21
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %22, align 8, !tbaa !57
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %36, i64 %37, i32 2
  %39 = load i8, ptr %38, align 2, !tbaa !83
  %40 = getelementptr inbounds %struct.MVert, ptr %31, i64 0, i32 2
  store i8 %39, ptr %40, align 2, !tbaa !83
  br label %41

41:                                               ; preds = %29, %35
  %42 = add nuw nsw i64 %30, 1
  %43 = getelementptr inbounds %struct.MVert, ptr %31, i64 1
  %44 = icmp eq i64 %42, %23
  br i1 %44, label %54, label %29, !llvm.loop !85

45:                                               ; preds = %25, %45
  %46 = phi i64 [ 0, %25 ], [ %51, %45 ]
  %47 = phi ptr [ %14, %25 ], [ %52, %45 ]
  %48 = getelementptr inbounds %struct.MVert, ptr %27, i64 %46, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !83
  %50 = getelementptr inbounds %struct.MVert, ptr %47, i64 0, i32 2
  store i8 %49, ptr %50, align 2, !tbaa !83
  %51 = add nuw nsw i64 %46, 1
  %52 = getelementptr inbounds %struct.MVert, ptr %47, i64 1
  %53 = icmp eq i64 %51, %28
  br i1 %53, label %54, label %45, !llvm.loop !86

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
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !87
  br i1 %7, label %12, label %25

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %55, label %18

14:                                               ; preds = %18
  %15 = add nsw i32 %19, -1
  %16 = getelementptr inbounds %struct.MVert, ptr %20, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %25, label %18, !llvm.loop !88

18:                                               ; preds = %12, %14
  %19 = phi i32 [ %15, %14 ], [ %11, %12 ]
  %20 = phi ptr [ %16, %14 ], [ %9, %12 ]
  %21 = getelementptr inbounds %struct.MVert, ptr %20, i64 0, i32 2
  %22 = load i8, ptr %21, align 2, !tbaa !83
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
  %33 = load i8, ptr %32, align 2, !tbaa !83
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
  store i8 %44, ptr %32, align 2, !tbaa !83
  br label %45

45:                                               ; preds = %43, %36, %28
  %46 = getelementptr inbounds %struct.MVert, ptr %30, i64 1
  %47 = icmp eq i32 %31, 0
  br i1 %47, label %48, label %28, !llvm.loop !89

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
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  tail call void @paintvert_deselect_all_visible(ptr noundef %0, i32 noundef 2, i8 noundef zeroext 0) #10
  %13 = load ptr, ptr %7, align 8, !tbaa !90
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  br label %22

22:                                               ; preds = %19, %35
  %23 = phi ptr [ %37, %35 ], [ %21, %19 ]
  %24 = phi i32 [ %36, %35 ], [ 0, %19 ]
  %25 = phi ptr [ %38, %35 ], [ %15, %19 ]
  %26 = getelementptr inbounds %struct.MVert, ptr %23, i64 0, i32 2
  %27 = load i8, ptr %26, align 2, !tbaa !83
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load ptr, ptr %25, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = or i8 %27, 1
  store i8 %34, ptr %26, align 2, !tbaa !83
  br label %35

35:                                               ; preds = %22, %33, %30
  %36 = add nuw nsw i32 %24, 1
  %37 = getelementptr inbounds %struct.MVert, ptr %23, i64 1
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %25, i64 1
  %39 = icmp eq i32 %36, %17
  br i1 %39, label %40, label %22, !llvm.loop !93

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
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 1
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %8, %7 ], [ %11, %10 ]
  %15 = phi ptr [ %9, %7 ], [ %12, %10 ]
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = load i32, ptr %14, align 8, !tbaa !21
  %18 = load ptr, ptr %2, align 8, !tbaa !97
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !99
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !100
  %27 = icmp eq i32 %17, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !101
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
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  tail call void @ED_mesh_mirrtopo_free(ptr noundef %2) #10
  %8 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !99
  %9 = icmp ne ptr %7, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 8, !tbaa !95
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %11, i8 noundef zeroext 1) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !95
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %12, %10 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 8, !tbaa !21
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.1) #9
  br i1 %9, label %22, label %48

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 8, !tbaa !94
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !102
  %27 = load ptr, ptr %7, align 8, !tbaa !95
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %73, label %30

30:                                               ; preds = %22, %30
  %31 = phi ptr [ %46, %30 ], [ %28, %22 ]
  %32 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !104
  %34 = call fastcc i32 @_bm_elem_index_get(ptr noundef %33) #10
  %35 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = call fastcc i32 @_bm_elem_index_get(ptr noundef %36) #10
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i32, ptr %21, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !21
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %21, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !21
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !21
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %30, !llvm.loop !109

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %70, %55 ], [ %54, %52 ]
  %57 = phi i32 [ %69, %55 ], [ 0, %52 ]
  %58 = load i32, ptr %56, align 4, !tbaa !110
  %59 = getelementptr inbounds %struct.MEdge, ptr %56, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !111
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds i32, ptr %21, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !21
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !21
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds i32, ptr %21, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !21
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !21
  %69 = add nuw nsw i32 %57, 1
  %70 = getelementptr inbounds %struct.MEdge, ptr %56, i64 1
  %71 = load i32, ptr %49, align 4, !tbaa !40
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %55, label %73, !llvm.loop !112

73:                                               ; preds = %55, %30, %48, %22
  %74 = phi i32 [ %26, %22 ], [ %50, %48 ], [ %26, %30 ], [ %50, %55 ]
  %75 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !39
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
  %86 = load ptr, ptr %7, align 8, !tbaa !95
  %87 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %86) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %152, label %89

89:                                               ; preds = %85, %89
  %90 = phi ptr [ %116, %89 ], [ %87, %85 ]
  %91 = phi i32 [ %115, %89 ], [ 0, %85 ]
  %92 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !104
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef %93) #10
  %95 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !108
  %97 = call fastcc i32 @_bm_elem_index_get(ptr noundef %96) #10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %76, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !21
  %101 = mul i32 %100, %83
  %102 = sext i32 %94 to i64
  %103 = getelementptr inbounds i32, ptr %21, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !21
  %105 = add i32 %104, %101
  store i32 %105, ptr %103, align 4, !tbaa !21
  %106 = getelementptr inbounds i32, ptr %76, i64 %102
  %107 = load i32, ptr %106, align 4, !tbaa !21
  %108 = mul i32 %107, %83
  %109 = getelementptr inbounds i32, ptr %21, i64 %98
  %110 = load i32, ptr %109, align 4, !tbaa !21
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4, !tbaa !21
  %112 = load i32, ptr %103, align 4, !tbaa !21
  %113 = icmp ne i32 %112, %111
  %114 = zext i1 %113 to i32
  %115 = add nuw nsw i32 %91, %114
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %152, label %89, !llvm.loop !113

118:                                              ; preds = %81
  %119 = load i32, ptr %78, align 4, !tbaa !40
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %118
  %122 = load ptr, ptr %77, align 8, !tbaa !46
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi ptr [ %149, %123 ], [ %122, %121 ]
  %125 = phi i32 [ %148, %123 ], [ 0, %121 ]
  %126 = phi i32 [ %147, %123 ], [ 0, %121 ]
  %127 = load i32, ptr %124, align 4, !tbaa !110
  %128 = getelementptr inbounds %struct.MEdge, ptr %124, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !111
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %76, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !21
  %133 = mul i32 %132, %83
  %134 = zext i32 %127 to i64
  %135 = getelementptr inbounds i32, ptr %21, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !21
  %137 = add i32 %136, %133
  store i32 %137, ptr %135, align 4, !tbaa !21
  %138 = getelementptr inbounds i32, ptr %76, i64 %134
  %139 = load i32, ptr %138, align 4, !tbaa !21
  %140 = mul i32 %139, %83
  %141 = getelementptr inbounds i32, ptr %21, i64 %130
  %142 = load i32, ptr %141, align 4, !tbaa !21
  %143 = add i32 %142, %140
  store i32 %143, ptr %141, align 4, !tbaa !21
  %144 = load i32, ptr %135, align 4, !tbaa !21
  %145 = icmp ne i32 %144, %143
  %146 = zext i1 %145 to i32
  %147 = add nuw nsw i32 %126, %146
  %148 = add nuw nsw i32 %125, 1
  %149 = getelementptr inbounds %struct.MEdge, ptr %124, i64 1
  %150 = load i32, ptr %78, align 4, !tbaa !40
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %123, label %152, !llvm.loop !114

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
  %159 = load i32, ptr %158, align 4, !tbaa !21
  %160 = load i32, ptr %157, align 4, !tbaa !21
  %161 = icmp ne i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = add nuw nsw i32 %156, %162
  %164 = add nuw nsw i64 %155, 1
  %165 = icmp eq i64 %164, %80
  br i1 %165, label %166, label %154, !llvm.loop !115

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
  %174 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %175 = shl nsw i64 %19, 3
  %176 = call ptr %174(i64 noundef %175, ptr noundef nonnull @.str.2) #9
  %177 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %178 = call ptr %177(i64 noundef %175, ptr noundef nonnull @.str.3) #9
  %179 = icmp eq i8 %3, 0
  %180 = and i1 %179, %9
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load ptr, ptr %7, align 8, !tbaa !95
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
  %191 = load i32, ptr %190, align 4, !tbaa !21
  %192 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 %189
  store i32 %191, ptr %192, align 4, !tbaa !116
  %193 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 %189, i32 1
  %194 = trunc i64 %189 to i32
  store i32 %194, ptr %193, align 4, !tbaa !118
  %195 = getelementptr inbounds i64, ptr %178, i64 %189
  store i64 -1, ptr %195, align 8, !tbaa !119
  %196 = add nuw nsw i64 %189, 1
  %197 = icmp eq i64 %196, %187
  br i1 %197, label %198, label %188, !llvm.loop !120

198:                                              ; preds = %188
  call void @qsort(ptr noundef nonnull %176, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @mirrtopo_vert_sort) #9
  br i1 %79, label %199, label %256

199:                                              ; preds = %198
  %200 = load i32, ptr %176, align 4, !tbaa !116
  %201 = getelementptr inbounds %struct.MirrTopoVert_t, ptr %176, i64 1
  %202 = load i32, ptr %201, align 4, !tbaa !116
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
  %216 = load i32, ptr %215, align 4, !tbaa !116
  %217 = load i32, ptr %214, align 4, !tbaa !116
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %252, label %219

219:                                              ; preds = %213, %208
  %220 = sub nsw i32 %211, %210
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %252

222:                                              ; preds = %219
  br i1 %9, label %223, label %239

223:                                              ; preds = %222
  %224 = load ptr, ptr %7, align 8, !tbaa !95
  %225 = getelementptr %struct.MirrTopoVert_t, ptr %176, i64 %209
  %226 = getelementptr %struct.MirrTopoVert_t, ptr %225, i64 -2, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !118
  %228 = call ptr @BM_vert_at_index(ptr noundef %224, i32 noundef %227) #9
  %229 = ptrtoint ptr %228 to i64
  %230 = getelementptr %struct.MirrTopoVert_t, ptr %225, i64 -1, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !118
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, ptr %178, i64 %232
  store i64 %229, ptr %233, align 8, !tbaa !119
  %234 = load ptr, ptr %7, align 8, !tbaa !95
  %235 = call ptr @BM_vert_at_index(ptr noundef %234, i32 noundef %231) #9
  %236 = ptrtoint ptr %235 to i64
  %237 = load i32, ptr %226, align 4, !tbaa !118
  %238 = sext i32 %237 to i64
  br label %248

239:                                              ; preds = %222
  %240 = getelementptr %struct.MirrTopoVert_t, ptr %176, i64 %209
  %241 = getelementptr %struct.MirrTopoVert_t, ptr %240, i64 -2, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !118
  %243 = sext i32 %242 to i64
  %244 = getelementptr %struct.MirrTopoVert_t, ptr %240, i64 -1, i32 1
  %245 = load i32, ptr %244, align 4, !tbaa !118
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, ptr %178, i64 %246
  store i64 %243, ptr %247, align 8, !tbaa !119
  br label %248

248:                                              ; preds = %223, %239
  %249 = phi i64 [ %243, %239 ], [ %238, %223 ]
  %250 = phi i64 [ %246, %239 ], [ %236, %223 ]
  %251 = getelementptr inbounds i64, ptr %178, i64 %249
  store i64 %250, ptr %251, align 8, !tbaa !119
  br label %252

252:                                              ; preds = %248, %219, %213
  %253 = phi i32 [ %210, %213 ], [ %211, %219 ], [ %211, %248 ]
  %254 = add nuw nsw i64 %209, 1
  %255 = icmp eq i64 %254, %207
  br i1 %255, label %256, label %208, !llvm.loop !121

256:                                              ; preds = %252, %198, %185
  %257 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %257(ptr noundef %176) #9
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %258(ptr noundef %21) #9
  %259 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %259(ptr noundef %76) #9
  store ptr %178, ptr %2, align 8, !tbaa !97
  %260 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 1
  store i32 %17, ptr %260, align 8, !tbaa !100
  %261 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %2, i64 0, i32 2
  store i32 %74, ptr %261, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_mirrtopo_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %5(ptr noundef nonnull %2) #9
  br label %6

6:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !97
  %7 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.MirrTopoStore_t, ptr %0, i64 0, i32 2
  store i32 -1, ptr %8, align 4, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #10
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !122
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @mirrtopo_hash_sort(ptr noundef %0, ptr noundef %1) #8 {
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
define internal i32 @mirrtopo_vert_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i32, ptr %0, align 4, !tbaa !116
  %4 = load i32, ptr %1, align 4, !tbaa !116
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
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !125
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  store ptr %7, ptr %0, align 8, !tbaa !75
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 1296}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 208}
!18 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !19, i64 280, !19, i64 480, !19, i64 680, !19, i64 880, !19, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !15, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!19 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!20 = !{!18, !12, i64 1288}
!21 = !{!12, !12, i64 0}
!22 = !{!18, !8, i64 168}
!23 = !{!24, !9, i64 10}
!24 = !{!"MPoly", !12, i64 0, !12, i64 4, !11, i64 8, !9, i64 10, !9, i64 11}
!25 = !{!26, !9, i64 19}
!26 = !{!"MFace", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !9, i64 18, !9, i64 19}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !8, i64 1200}
!30 = !{!"DerivedMesh", !19, i64 0, !19, i64 200, !19, i64 400, !19, i64 600, !19, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !8, i64 1032, !8, i64 1040, !12, i64 1048, !15, i64 1052, !12, i64 1056, !12, i64 1060, !8, i64 1064, !9, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !8, i64 1200, !8, i64 1208, !8, i64 1216, !8, i64 1224, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !8, i64 1464, !8, i64 1472, !8, i64 1480, !8, i64 1488, !8, i64 1496, !8, i64 1504, !8, i64 1512, !8, i64 1520, !8, i64 1528, !8, i64 1536, !8, i64 1544, !8, i64 1552, !8, i64 1560, !8, i64 1568, !8, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !8, i64 1624, !8, i64 1632, !8, i64 1640, !8, i64 1648, !8, i64 1656, !8, i64 1664, !8, i64 1672, !8, i64 1680}
!31 = !{!30, !8, i64 1136}
!32 = distinct !{!32, !28}
!33 = !{!30, !8, i64 1184}
!34 = !{!30, !8, i64 1120}
!35 = distinct !{!35, !28}
!36 = !{!18, !12, i64 1296}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = !{!8, !8, i64 0}
!40 = !{!18, !12, i64 1284}
!41 = !{!18, !8, i64 184}
!42 = !{!24, !12, i64 0}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = !{!24, !12, i64 4}
!46 = !{!18, !8, i64 240}
!47 = !{!48, !12, i64 4}
!48 = !{!"MLoop", !12, i64 0, !12, i64 4}
!49 = !{!50, !11, i64 10}
!50 = !{!"MEdge", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 9, !11, i64 10}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !28}
!56 = !{!18, !8, i64 176}
!57 = !{!18, !8, i64 232}
!58 = !{!48, !12, i64 0}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = !{!15, !15, i64 0}
!62 = distinct !{!62, !28}
!63 = !{!18, !12, i64 1304}
!64 = !{!6, !8, i64 296}
!65 = !{!66, !8, i64 8}
!66 = !{!"ViewContext", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !9, i64 56}
!67 = distinct !{!67, !28}
!68 = !{!69, !8, i64 40}
!69 = !{!"ImBuf", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !8, i64 48, !9, i64 56, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !8, i64 88, !8, i64 96, !8, i64 104, !15, i64 112, !9, i64 120, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !8, i64 296, !8, i64 304, !12, i64 312, !9, i64 316, !9, i64 1340, !8, i64 2368, !12, i64 2376, !8, i64 2384, !12, i64 2392, !12, i64 2396, !8, i64 2400, !8, i64 2408, !8, i64 2416, !8, i64 2424, !12, i64 2432, !70, i64 2436, !71, i64 2456}
!70 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!71 = !{!"DDSData", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 16}
!72 = !{!66, !8, i64 24}
!73 = !{!70, !12, i64 0}
!74 = !{!70, !12, i64 8}
!75 = !{!9, !9, i64 0}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !28}
!78 = !{!70, !12, i64 4}
!79 = !{!70, !12, i64 12}
!80 = !{!30, !8, i64 1320}
!81 = !{!30, !8, i64 1168}
!82 = !{!30, !8, i64 1104}
!83 = !{!84, !9, i64 18}
!84 = !{!"MVert", !9, i64 0, !9, i64 12, !9, i64 18, !9, i64 19}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = !{!18, !12, i64 1280}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28}
!90 = !{!18, !8, i64 248}
!91 = !{!92, !8, i64 0}
!92 = !{!"MDeformVert", !8, i64 0, !12, i64 8, !12, i64 12}
!93 = distinct !{!93, !28}
!94 = !{!18, !8, i64 272}
!95 = !{!96, !8, i64 0}
!96 = !{!"BMEditMesh", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 48, !16, i64 56, !8, i64 64, !12, i64 72, !8, i64 80, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !12, i64 104}
!97 = !{!98, !8, i64 0}
!98 = !{!"MirrTopoStore_t", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!99 = !{!98, !12, i64 16}
!100 = !{!98, !12, i64 8}
!101 = !{!98, !12, i64 12}
!102 = !{!103, !12, i64 4}
!103 = !{!"BMesh", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 29, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !19, i64 144, !19, i64 344, !19, i64 544, !19, i64 744, !11, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !14, i64 960, !8, i64 976, !14, i64 984, !8, i64 1000}
!104 = !{!105, !8, i64 24}
!105 = !{!"BMEdge", !106, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !107, i64 48, !107, i64 64}
!106 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!107 = !{!"BMDiskLink", !8, i64 0, !8, i64 8}
!108 = !{!105, !8, i64 32}
!109 = distinct !{!109, !28}
!110 = !{!50, !12, i64 0}
!111 = !{!50, !12, i64 4}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = !{!117, !12, i64 0}
!117 = !{!"MirrTopoVert_t", !12, i64 0, !12, i64 4}
!118 = !{!117, !12, i64 4}
!119 = !{!16, !16, i64 0}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !28}
!122 = !{!106, !12, i64 8}
!123 = !{!124, !8, i64 48}
!124 = !{!"BMIter", !9, i64 0, !8, i64 40, !8, i64 48, !12, i64 56, !9, i64 60}
!125 = !{!124, !9, i64 60}
!126 = !{!124, !8, i64 40}
!127 = !{!103, !8, i64 40}
