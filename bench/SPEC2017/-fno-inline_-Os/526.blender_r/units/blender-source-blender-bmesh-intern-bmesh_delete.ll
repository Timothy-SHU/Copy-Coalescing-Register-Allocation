; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_delete.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_mesh_delete_oflag_tagged(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @bmo_remove_tagged_faces(ptr noundef %0, i16 noundef signext %1) #5
  br label %8

8:                                                ; preds = %7, %3
  %9 = and i32 %4, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @bmo_remove_tagged_edges(ptr noundef %0, i16 noundef signext %1) #5
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @bmo_remove_tagged_verts(ptr noundef %0, i16 noundef signext %1) #5
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_remove_tagged_faces(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !34 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = getelementptr inbounds %struct.BMFace, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext %1) #5
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %6, %13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !43

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_remove_tagged_edges(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !45 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext %1) #5
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %6, %13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !49

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_remove_tagged_verts(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !50 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext %1) #5
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %6, %13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !53

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  switch i32 %2, label %110 [
    i32 1, label %6
    i32 2, label %7
    i32 4, label %29
    i32 3, label %30
    i32 6, label %31
    i32 5, label %32
  ]

6:                                                ; preds = %3
  tail call fastcc void @bmo_remove_tagged_verts(ptr noundef %0, i16 noundef signext %1) #5
  br label %110

7:                                                ; preds = %3
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7, %25
  %11 = phi ptr [ %26, %25 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %13, i16 noundef signext %1) #5
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %20, i16 noundef signext %1) #5
  %21 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %24, i16 noundef signext %1) #5
  br label %25

25:                                               ; preds = %10, %16
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !56

28:                                               ; preds = %25, %7
  call fastcc void @bmo_remove_tagged_edges(ptr noundef %0, i16 noundef signext %1) #5
  call fastcc void @bmo_remove_tagged_verts_loose(ptr noundef %0, i16 noundef signext %1) #5
  br label %110

29:                                               ; preds = %3
  tail call fastcc void @bmo_remove_tagged_edges(ptr noundef %0, i16 noundef signext %1) #5
  br label %110

30:                                               ; preds = %3
  tail call fastcc void @bmo_remove_tagged_faces(ptr noundef %0, i16 noundef signext %1) #5
  br label %110

31:                                               ; preds = %3
  tail call void @BMO_mesh_delete_oflag_tagged(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext 11) #5
  br label %110

32:                                               ; preds = %3
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %32, %57
  %36 = phi ptr [ %58, %57 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %38, i16 noundef signext %1) #5
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %43, %41 ], [ %55, %44 ]
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %49, i16 noundef signext %1) #5
  %50 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %53, i16 noundef signext %1) #5
  %54 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !61
  %56 = icmp eq ptr %55, %43
  br i1 %56, label %57, label %44, !llvm.loop !62

57:                                               ; preds = %44, %35
  %58 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %35, !llvm.loop !63

60:                                               ; preds = %57, %32
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %60, %85
  %64 = phi ptr [ %86, %85 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.BMFace, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %66, i16 noundef signext %1) #5
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.BMFace, ptr %64, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %71, %69 ], [ %83, %72 ]
  %74 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %77, i16 noundef signext %1) #5
  %78 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  %80 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %81, i16 noundef signext %1) #5
  %82 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !61
  %84 = icmp eq ptr %83, %71
  br i1 %84, label %85, label %72, !llvm.loop !64

85:                                               ; preds = %72, %63
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %63, !llvm.loop !65

88:                                               ; preds = %85, %60
  %89 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2) #5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %88, %106
  %92 = phi ptr [ %107, %106 ], [ %89, %88 ]
  %93 = getelementptr inbounds %struct.BMEdge, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %94, i16 noundef signext %1) #5
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.BMEdge, ptr %92, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %101, i16 noundef signext %1) #5
  %102 = getelementptr inbounds %struct.BMEdge, ptr %92, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.BMVert, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %105, i16 noundef signext %1) #5
  br label %106

106:                                              ; preds = %91, %97
  %107 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %91, !llvm.loop !66

109:                                              ; preds = %106, %88
  call fastcc void @bmo_remove_tagged_faces(ptr noundef %0, i16 noundef signext %1) #5
  call fastcc void @bmo_remove_tagged_edges(ptr noundef %0, i16 noundef signext %1) #5
  call fastcc void @bmo_remove_tagged_verts(ptr noundef %0, i16 noundef signext %1) #5
  br label %110

110:                                              ; preds = %3, %109, %31, %30, %29, %28, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !67 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #5
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !68 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !73
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !75 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !73
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_remove_tagged_verts_loose(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %8, %18 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext %1) #5
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %18

18:                                               ; preds = %6, %13, %17
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %6, !llvm.loop !81

20:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !82 {
  %4 = xor i16 %2, -1
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !73
  %11 = and i16 %10, %4
  store i16 %11, ptr %9, align 2, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_delete_hflag_tagged(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @bm_remove_tagged_faces(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %8

8:                                                ; preds = %7, %3
  %9 = and i32 %4, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @bm_remove_tagged_edges(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @bm_remove_tagged_verts(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_remove_tagged_faces(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %8, %12 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext %1) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %12

12:                                               ; preds = %6, %11
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %6, !llvm.loop !84

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_remove_tagged_edges(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !85 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %8, %12 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext %1) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %12

12:                                               ; preds = %6, %11
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %6, !llvm.loop !86

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_remove_tagged_verts(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %8, %12 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext %1) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %12

12:                                               ; preds = %6, %11
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %6, !llvm.loop !88

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_delete_hflag_context(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  switch i32 %2, label %86 [
    i32 1, label %6
    i32 2, label %7
    i32 4, label %23
    i32 3, label %24
    i32 6, label %25
    i32 5, label %26
  ]

6:                                                ; preds = %3
  tail call fastcc void @bm_remove_tagged_verts(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %86

7:                                                ; preds = %3
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %7 ]
  %12 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11, i8 noundef zeroext %1) #5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  call fastcc void @_bm_elem_flag_enable(ptr noundef %16, i8 noundef zeroext %1) #5
  %17 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  call fastcc void @_bm_elem_flag_enable(ptr noundef %18, i8 noundef zeroext %1) #5
  br label %19

19:                                               ; preds = %10, %14
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !89

22:                                               ; preds = %19, %7
  call fastcc void @bm_remove_tagged_edges(ptr noundef %0, i8 noundef zeroext %1) #5
  call fastcc void @bm_remove_tagged_verts_loose(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %86

23:                                               ; preds = %3
  tail call fastcc void @bm_remove_tagged_edges(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %86

24:                                               ; preds = %3
  tail call fastcc void @bm_remove_tagged_faces(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %86

25:                                               ; preds = %3
  tail call void @BM_mesh_delete_hflag_tagged(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 11) #5
  br label %86

26:                                               ; preds = %3
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26, %45
  %30 = phi ptr [ %46, %45 ], [ %27, %26 ]
  %31 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %30, i8 noundef zeroext %1) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMFace, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %35, %33 ], [ %43, %36 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  call fastcc void @_bm_elem_flag_enable(ptr noundef %39, i8 noundef zeroext %1) #5
  %40 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  call fastcc void @_bm_elem_flag_enable(ptr noundef %41, i8 noundef zeroext %1) #5
  %42 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = icmp eq ptr %43, %35
  br i1 %44, label %45, label %36, !llvm.loop !90

45:                                               ; preds = %36, %29
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %29, !llvm.loop !91

48:                                               ; preds = %45, %26
  %49 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %48, %67
  %52 = phi ptr [ %68, %67 ], [ %49, %48 ]
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %52, i8 noundef zeroext %1) #5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.BMFace, ptr %52, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %57, %55 ], [ %65, %58 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  call fastcc void @_bm_elem_flag_disable(ptr noundef %61, i8 noundef zeroext %1) #5
  %62 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  call fastcc void @_bm_elem_flag_disable(ptr noundef %63, i8 noundef zeroext %1) #5
  %64 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = icmp eq ptr %65, %57
  br i1 %66, label %67, label %58, !llvm.loop !92

67:                                               ; preds = %58, %51
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %51, !llvm.loop !93

70:                                               ; preds = %67, %48
  %71 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %70, %82
  %74 = phi ptr [ %83, %82 ], [ %71, %70 ]
  %75 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %74, i8 noundef zeroext %1) #5
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  call fastcc void @_bm_elem_flag_disable(ptr noundef %79, i8 noundef zeroext %1) #5
  %80 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !55
  call fastcc void @_bm_elem_flag_disable(ptr noundef %81, i8 noundef zeroext %1) #5
  br label %82

82:                                               ; preds = %73, %77
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %73, !llvm.loop !94

85:                                               ; preds = %82, %70
  call fastcc void @bm_remove_tagged_faces(ptr noundef %0, i8 noundef zeroext %1) #5
  call fastcc void @bm_remove_tagged_edges(ptr noundef %0, i8 noundef zeroext %1) #5
  call fastcc void @bm_remove_tagged_verts(ptr noundef %0, i8 noundef zeroext %1) #5
  br label %86

86:                                               ; preds = %3, %85, %25, %24, %23, %22, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 !PGOFuncName !95 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !96
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !96
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_remove_tagged_verts_loose(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %8, %16 ], [ %4, %2 ]
  %8 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #5
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext %1) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %16

16:                                               ; preds = %6, %11, %15
  %17 = icmp eq ptr %8, null
  br i1 %17, label %18, label %6, !llvm.loop !99

18:                                               ; preds = %16, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !100 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !96
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !101 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !102
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !77
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  store ptr %16, ptr %0, align 8, !tbaa !105
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

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
!34 = !{!"bmesh_delete.c:bmo_remove_tagged_faces"}
!35 = !{!36, !38, i64 16}
!36 = !{!"BMFace", !37, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !42, i64 48}
!37 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"short", !39, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"bmesh_delete.c:bmo_remove_tagged_edges"}
!46 = !{!47, !38, i64 16}
!47 = !{!"BMEdge", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !48, i64 48, !48, i64 64}
!48 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!49 = distinct !{!49, !44}
!50 = !{!"bmesh_delete.c:bmo_remove_tagged_verts"}
!51 = !{!52, !38, i64 16}
!52 = !{!"BMVert", !37, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!53 = distinct !{!53, !44}
!54 = !{!47, !38, i64 24}
!55 = !{!47, !38, i64 32}
!56 = distinct !{!56, !44}
!57 = !{!36, !38, i64 24}
!58 = !{!59, !38, i64 16}
!59 = !{!"BMLoop", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!60 = !{!59, !38, i64 24}
!61 = !{!59, !38, i64 56}
!62 = distinct !{!62, !44}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = !{!"bmesh_delete.c:BM_iter_new"}
!68 = !{!"bmesh_delete.c:_bmo_elem_flag_test"}
!69 = !{!70, !41, i64 128}
!70 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !71, i64 144, !71, i64 344, !71, i64 544, !71, i64 744, !42, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !72, i64 960, !38, i64 976, !72, i64 984, !38, i64 1000}
!71 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!72 = !{!"ListBase", !38, i64 0, !38, i64 8}
!73 = !{!74, !42, i64 0}
!74 = !{!"BMFlagLayer", !42, i64 0}
!75 = !{!"bmesh_delete.c:_bmo_elem_flag_enable"}
!76 = !{!"bmesh_delete.c:BM_iter_step"}
!77 = !{!78, !38, i64 48}
!78 = !{!"BMIter", !39, i64 0, !38, i64 40, !38, i64 48, !41, i64 56, !39, i64 60}
!79 = !{!"bmesh_delete.c:bmo_remove_tagged_verts_loose"}
!80 = !{!52, !38, i64 48}
!81 = distinct !{!81, !44}
!82 = !{!"bmesh_delete.c:_bmo_elem_flag_disable"}
!83 = !{!"bmesh_delete.c:bm_remove_tagged_faces"}
!84 = distinct !{!84, !44}
!85 = !{!"bmesh_delete.c:bm_remove_tagged_edges"}
!86 = distinct !{!86, !44}
!87 = !{!"bmesh_delete.c:bm_remove_tagged_verts"}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = distinct !{!94, !44}
!95 = !{!"bmesh_delete.c:_bm_elem_flag_test"}
!96 = !{!37, !39, i64 13}
!97 = !{!"bmesh_delete.c:_bm_elem_flag_enable"}
!98 = !{!"bmesh_delete.c:bm_remove_tagged_verts_loose"}
!99 = distinct !{!99, !44}
!100 = !{!"bmesh_delete.c:_bm_elem_flag_disable"}
!101 = !{!"bmesh_delete.c:BM_iter_init"}
!102 = !{!78, !39, i64 60}
!103 = !{!78, !38, i64 40}
!104 = !{!38, !38, i64 0}
!105 = !{!39, !39, i64 0}
