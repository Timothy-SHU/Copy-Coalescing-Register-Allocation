; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_structure.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"blender/source/blender/bmesh/intern/bmesh_structure.c\00", align 1
@__func__.bmesh_radial_validate = private unnamed_addr constant [22 x i8] c"bmesh_radial_validate\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__func__.bmesh_radial_loop_remove = private unnamed_addr constant [25 x i8] c"bmesh_radial_loop_remove\00", align 1
@__func__.bmesh_radial_length = private unnamed_addr constant [20 x i8] c"bmesh_radial_length\00", align 1
@__func__.bmesh_radial_append = private unnamed_addr constant [20 x i8] c"bmesh_radial_append\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bmesh_edge_swapverts(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store ptr %2, ptr %4, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  store ptr %2, ptr %10, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %7 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i8 [ 0, %9 ], [ 1, %15 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_disk_edge_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  %6 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef %0, ptr noundef nonnull %1) #7
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !45
  br label %19

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef nonnull %4, ptr noundef nonnull %1) #7
  %11 = getelementptr inbounds %struct.BMDiskLink, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  store ptr %4, ptr %6, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !45
  br label %19

16:                                               ; preds = %9
  %17 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef nonnull %12, ptr noundef nonnull %1) #7
  store ptr %4, ptr %6, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 0, i32 1
  store ptr %12, ptr %18, align 8, !tbaa !45
  store ptr %0, ptr %11, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %14, %16, %7
  %20 = phi ptr [ %11, %14 ], [ %17, %16 ], [ %6, %7 ]
  store ptr %0, ptr %20, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @bmesh_disk_edge_link_from_vert(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 !PGOFuncName !48 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_disk_edge_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef %0, ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %3, align 8, !tbaa !46
  br i1 %6, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef nonnull %5, ptr noundef %1) #7
  store ptr %7, ptr %9, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq ptr %7, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @bmesh_disk_edge_link_from_vert(ptr noundef nonnull %7, ptr noundef %1) #7
  %14 = getelementptr inbounds %struct.BMDiskLink, ptr %13, i64 0, i32 1
  store ptr %5, ptr %14, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = icmp eq ptr %7, %0
  %21 = select i1 %20, ptr null, ptr %7
  store ptr %21, ptr %16, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %19, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @bmesh_disk_edge_exists(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %11, %10 ], [ %4, %2 ]
  %8 = tail call fastcc zeroext i8 @BM_verts_in_edge(ptr noundef %0, ptr noundef %1, ptr noundef %7) #7, !range !49
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %7, ptr noundef %0) #7
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %6, !llvm.loop !50

13:                                               ; preds = %10, %6, %2
  %14 = phi ptr [ null, %2 ], [ null, %10 ], [ %7, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_verts_in_edge(ptr noundef readnone %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !52 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %3
  %12 = icmp eq ptr %5, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, %0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %11, %13, %7
  %19 = phi i8 [ 1, %7 ], [ 0, %11 ], [ %17, %13 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_disk_count(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %8 = add nuw nsw i32 %6, 1
  %9 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %7, ptr noundef %0) #7
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %5, !llvm.loop !55

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bmesh_disk_validate(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef %1, ptr noundef %2) #7, !range !49
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @bmesh_disk_count(ptr noundef %2) #7
  %8 = icmp ne i32 %7, %0
  %9 = icmp eq i32 %0, 0
  %10 = or i1 %9, %8
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %0, 1
  br label %13

13:                                               ; preds = %11, %18
  %14 = phi ptr [ %19, %18 ], [ %1, %11 ]
  br i1 %12, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call fastcc ptr @bmesh_disk_edge_prev(ptr noundef %14, ptr noundef %2) #7
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %15
  %19 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %14, ptr noundef %2) #7
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %13, !llvm.loop !56

21:                                               ; preds = %18, %15, %6, %3
  %22 = phi i8 [ 0, %3 ], [ 0, %6 ], [ 1, %18 ], [ 0, %15 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_disk_facevert_count(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %16, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @bmesh_radial_facevert_count(ptr noundef nonnull %9, ptr noundef %0) #7
  %13 = add nsw i32 %12, %7
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i32 [ %13, %11 ], [ %7, %5 ]
  %16 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %6, ptr noundef %0) #7
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %5, !llvm.loop !61

18:                                               ; preds = %14, %1
  %19 = phi i32 [ 0, %1 ], [ %15, %14 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_radial_facevert_count(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %2 ], [ %10, %3 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, %1
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %5, %9
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %3, !llvm.loop !65

14:                                               ; preds = %3
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_disk_faceedge_find_first(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %11 ]
  %5 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @bmesh_radial_facevert_check(ptr noundef nonnull %6, ptr noundef %1) #7, !range !49
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3, %8
  %12 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %4, ptr noundef %1) #7
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %3, !llvm.loop !66

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %4, %8 ], [ null, %11 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bmesh_radial_facevert_check(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %3, !llvm.loop !67

12:                                               ; preds = %8, %3
  %13 = phi i8 [ 1, %3 ], [ 0, %8 ]
  ret i8 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_disk_faceedge_find_next(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %0, ptr noundef %1) #7
  br label %4

4:                                                ; preds = %12, %2
  %5 = phi ptr [ %3, %2 ], [ %13, %12 ]
  %6 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @bmesh_radial_facevert_check(ptr noundef nonnull %7, ptr noundef %1) #7, !range !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4, %9
  %13 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %5, ptr noundef %1) #7
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %4, !llvm.loop !68

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %5, %9 ], [ %0, %12 ]
  ret ptr %16
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bmesh_radial_validate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call i32 @bmesh_radial_length(ptr noundef %1) #7, !range !69
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %31, %28 ], [ %1, %5 ]
  %9 = phi i32 [ %29, %28 ], [ 0, %5 ]
  %10 = icmp eq ptr %8, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = load ptr, ptr %6, align 8, !tbaa !70
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22, %16
  %27 = icmp eq i32 %9, 10001
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %9, 1
  %30 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %37, label %7, !llvm.loop !71

33:                                               ; preds = %26, %7
  %34 = phi i32 [ 300, %7 ], [ 310, %26 ]
  %35 = load ptr, ptr @stderr, align 8, !tbaa !47
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_validate, i32 noundef %34, ptr noundef nonnull @.str.2) #8
  br label %37

37:                                               ; preds = %28, %22, %11, %33, %2
  %38 = phi i8 [ 0, %2 ], [ 0, %33 ], [ 1, %28 ], [ 0, %22 ], [ 0, %11 ]
  ret i8 %38
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @bmesh_radial_length(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %12, %9 ], [ %0, %1 ]
  %5 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %6 = icmp eq ptr %4, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 9999
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %5, 1
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %19, label %3, !llvm.loop !72

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 401, %3 ], [ 407, %7 ]
  %16 = phi i32 [ 0, %3 ], [ -1, %7 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !47
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_length, i32 noundef %15, ptr noundef nonnull @.str.2) #8
  br label %19

19:                                               ; preds = %9, %14, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %14 ], [ %10, %9 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @bmesh_radial_loop_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !47
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_loop_remove, i32 noundef 332, ptr noundef nonnull @.str.2) #8
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, %0
  %15 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = icmp eq ptr %16, %0
  br i1 %14, label %31, label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %36, label %24

22:                                               ; preds = %11
  br i1 %17, label %23, label %24

23:                                               ; preds = %22
  store ptr %13, ptr %15, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %18, %23, %22
  %25 = phi ptr [ %12, %23 ], [ %12, %22 ], [ %19, %18 ]
  %26 = phi ptr [ %13, %23 ], [ %13, %22 ], [ %20, %18 ]
  %27 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 4
  store ptr %26, ptr %30, align 8, !tbaa !64
  br label %36

31:                                               ; preds = %11
  br i1 %17, label %32, label %33

32:                                               ; preds = %31
  store ptr null, ptr %15, align 8, !tbaa !60
  br label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr @stderr, align 8, !tbaa !47
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_loop_remove, i32 noundef 348, ptr noundef nonnull @.str.2) #8
  br label %36

36:                                               ; preds = %18, %33, %32, %24
  %37 = phi ptr [ %12, %33 ], [ %12, %32 ], [ %25, %24 ], [ %19, %18 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !73
  store ptr null, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  store ptr null, ptr %39, align 8, !tbaa !70
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_radial_faceloop_find_first(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %3, !llvm.loop !74

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %4, %3 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_radial_faceloop_find_next(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5, !llvm.loop !75

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ %0, %10 ]
  ret ptr %15
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @bmesh_radial_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 5
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  store ptr %1, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  br label %14

9:                                                ; preds = %2
  store ptr %4, ptr %6, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 5
  store ptr %1, ptr %13, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %10, %9 ], [ %8, %7 ]
  store ptr %1, ptr %15, align 8, !tbaa !64
  store ptr %1, ptr %3, align 8
  %16 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %0
  %20 = or i1 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr @stderr, align 8, !tbaa !47
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_append, i32 noundef 433, ptr noundef nonnull @.str.2) #8
  br label %24

24:                                               ; preds = %21, %14
  store ptr %0, ptr %16, align 8, !tbaa !70
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bmesh_loop_validate(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp sgt i32 %3, 1
  br i1 %10, label %16, label %26

11:                                               ; preds = %16
  %12 = add nuw nsw i32 %18, 1
  %13 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq i32 %12, %3
  br i1 %15, label %24, label %16, !llvm.loop !81

16:                                               ; preds = %7, %11
  %17 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %18 = phi i32 [ %12, %11 ], [ 1, %7 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = icmp ne ptr %20, %0
  %22 = icmp eq ptr %17, %5
  %23 = or i1 %21, %22
  br i1 %23, label %47, label %11

24:                                               ; preds = %11
  %25 = icmp eq ptr %14, %5
  br i1 %25, label %31, label %47

26:                                               ; preds = %7
  %27 = icmp eq ptr %9, %5
  br i1 %27, label %28, label %47

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  br label %43

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  br i1 %10, label %39, label %43

34:                                               ; preds = %39
  %35 = add nuw nsw i32 %41, 1
  %36 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq i32 %35, %3
  br i1 %38, label %43, label %39, !llvm.loop !84

39:                                               ; preds = %31, %34
  %40 = phi ptr [ %37, %34 ], [ %33, %31 ]
  %41 = phi i32 [ %35, %34 ], [ 1, %31 ]
  %42 = icmp eq ptr %40, %5
  br i1 %42, label %47, label %34

43:                                               ; preds = %34, %28, %31
  %44 = phi ptr [ %33, %31 ], [ %30, %28 ], [ %37, %34 ]
  %45 = icmp eq ptr %44, %5
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %16, %39, %26, %43, %24, %1
  %48 = phi i8 [ 0, %1 ], [ 0, %24 ], [ %46, %43 ], [ 0, %26 ], [ 0, %39 ], [ 0, %16 ]
  ret i8 %48
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { cold optsize }

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
!34 = !{!35, !37, i64 24}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{!35, !37, i64 32}
!43 = !{!44, !37, i64 48}
!44 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!45 = !{!41, !37, i64 8}
!46 = !{!41, !37, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!"bmesh_structure.c:bmesh_disk_edge_link_from_vert"}
!49 = !{i8 0, i8 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"bmesh_structure.c:BM_verts_in_edge"}
!53 = !{!"bmesh_structure.c:bmesh_disk_edge_next"}
!54 = !{!35, !37, i64 48}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = !{!"bmesh_structure.c:BM_vert_in_edge"}
!58 = !{!"bmesh_structure.c:bmesh_disk_edge_prev"}
!59 = !{!35, !37, i64 56}
!60 = !{!35, !37, i64 40}
!61 = distinct !{!61, !51}
!62 = !{!63, !37, i64 16}
!63 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!64 = !{!63, !37, i64 40}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51}
!69 = !{i32 -2147483648, i32 10000}
!70 = !{!63, !37, i64 24}
!71 = distinct !{!71, !51}
!72 = distinct !{!72, !51}
!73 = !{!63, !37, i64 48}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !51}
!76 = !{!77, !40, i64 32}
!77 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !78, i64 48}
!78 = !{!"short", !38, i64 0}
!79 = !{!77, !37, i64 24}
!80 = !{!63, !37, i64 56}
!81 = distinct !{!81, !51}
!82 = !{!63, !37, i64 32}
!83 = !{!63, !37, i64 64}
!84 = distinct !{!84, !51}
