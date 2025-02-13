; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_iterators.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMElemF = type { %struct.BMHeader, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMIter__edge_of_vert = type { ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter__loop_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMIter__loop_of_edge = type { ptr, ptr, ptr }
%struct.BMIter__loop_of_loop = type { ptr, ptr, ptr }
%struct.BMIter__face_of_edge = type { ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMIter__vert_of_face = type { ptr, ptr, ptr }
%struct.BMIter__edge_of_face = type { ptr, ptr, ptr }
%struct.BMIter__loop_of_face = type { ptr, ptr, ptr }

@bm_iter_itype_htype_map = dso_local local_unnamed_addr constant [15 x i8] c"\00\01\02\08\02\08\04\01\08\01\02\04\04\04\04", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_iter_as_arrayN = private unnamed_addr constant [18 x i8] c"BM_iter_as_arrayN\00", align 1
@__func__.BMO_iter_as_arrayN = private unnamed_addr constant [19 x i8] c"BMO_iter_as_arrayN\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BM_iter_mesh_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %1, label %11 [
    i8 1, label %3
    i8 2, label %5
    i8 3, label %8
  ]

3:                                                ; preds = %2
  %4 = load i32, ptr %0, align 8, !tbaa !34
  br label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !43
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !44
  br label %11

11:                                               ; preds = %2, %8, %5, %3
  %12 = phi i32 [ %10, %8 ], [ %7, %5 ], [ %4, %3 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_iter_at_index(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %6 = icmp slt i32 %3, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #8
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %12 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %13 = add nuw nsw i32 %11, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %15, label %10, !llvm.loop !45

15:                                               ; preds = %10, %7, %4
  %16 = phi ptr [ null, %4 ], [ %8, %7 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !47 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #8, !range !48
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #2 !PGOFuncName !49 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_iter_as_array(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMIter, align 8
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %19
  %14 = phi i64 [ 0, %11 ], [ %17, %19 ]
  %15 = phi ptr [ %9, %11 ], [ %20, %19 ]
  %16 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !52
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !53

22:                                               ; preds = %19
  %23 = trunc i64 %17 to i32
  br label %24

24:                                               ; preds = %13, %22, %8
  %25 = phi i32 [ 0, %8 ], [ %23, %22 ], [ %4, %13 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ 0, %5 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_iter_as_array(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMOIter, align 8
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %19
  %14 = phi i64 [ 0, %11 ], [ %17, %19 ]
  %15 = phi ptr [ %9, %11 ], [ %20, %19 ]
  %16 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !52
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !54

22:                                               ; preds = %19
  %23 = trunc i64 %17 to i32
  br label %24

24:                                               ; preds = %13, %22, %8
  %25 = phi i32 [ 0, %8 ], [ %23, %22 ], [ %4, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ 0, %5 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_iter_as_arrayN(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  switch i8 %1, label %16 [
    i8 1, label %12
    i8 2, label %8
    i8 3, label %10
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %6, %8, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %0, %6 ]
  %14 = load i32, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 3
  store i32 %14, ptr %15, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %12, %6
  %17 = call fastcc zeroext i8 @BM_iter_init(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #8, !range !48
  %18 = icmp ne i8 %17, 0
  %19 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, 0
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = icmp sgt i32 %20, %5
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %27 = zext nneg i32 %20 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = call ptr %26(i64 noundef %28, ptr noundef nonnull @__func__.BM_iter_as_arrayN) #9
  %30 = load i32, ptr %19, align 8, !tbaa !56
  br label %31

31:                                               ; preds = %23, %25
  %32 = phi i32 [ %30, %25 ], [ %20, %23 ]
  %33 = phi ptr [ %29, %25 ], [ %4, %23 ]
  store i32 %32, ptr %3, align 4, !tbaa !55
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %39, %36 ], [ 0, %31 ]
  %38 = phi ptr [ %41, %36 ], [ %34, %31 ]
  %39 = add nuw i64 %37, 1
  %40 = getelementptr inbounds ptr, ptr %33, i64 %37
  store ptr %38, ptr %40, align 8, !tbaa !52
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %36, !llvm.loop !57

43:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !tbaa !55
  br label %44

44:                                               ; preds = %36, %31, %43
  %45 = phi ptr [ null, %43 ], [ %33, %31 ], [ %33, %36 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !58 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !59
  switch i8 %2, label %54 [
    i8 1, label %6
    i8 2, label %11
    i8 3, label %16
    i8 4, label %21
    i8 5, label %24
    i8 6, label %27
    i8 7, label %30
    i8 8, label %33
    i8 9, label %36
    i8 10, label %39
    i8 11, label %42
    i8 13, label %45
    i8 14, label %48
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  br label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  br label %51

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  br label %51

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !50
  br label %51

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !50
  br label %51

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %28, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %29, align 8, !tbaa !50
  br label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %32, align 8, !tbaa !50
  br label %51

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %34, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %35, align 8, !tbaa !50
  br label %51

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %38, align 8, !tbaa !50
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %40, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %41, align 8, !tbaa !50
  br label %51

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %43, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %44, align 8, !tbaa !50
  br label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %46, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %47, align 8, !tbaa !50
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %49, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %50, align 8, !tbaa !50
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %16, %11, %6
  %52 = phi ptr [ %3, %48 ], [ %3, %45 ], [ %3, %42 ], [ %3, %39 ], [ %3, %36 ], [ %3, %33 ], [ %3, %30 ], [ %3, %27 ], [ %3, %24 ], [ %3, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  %53 = phi ptr [ @bmiter__loop_of_edge_begin, %48 ], [ @bmiter__loop_of_loop_begin, %45 ], [ @bmiter__loop_of_face_begin, %42 ], [ @bmiter__edge_of_face_begin, %39 ], [ @bmiter__vert_of_face_begin, %36 ], [ @bmiter__face_of_edge_begin, %33 ], [ @bmiter__vert_of_edge_begin, %30 ], [ @bmiter__loop_of_vert_begin, %27 ], [ @bmiter__face_of_vert_begin, %24 ], [ @bmiter__edge_of_vert_begin, %21 ], [ @bmiter__elem_of_mesh_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %52, ptr %0, align 8, !tbaa !64
  tail call void %53(ptr noundef nonnull %0) #9
  br label %54

54:                                               ; preds = %4, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMO_iter_as_arrayN(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #7
  %8 = tail call i32 @BMO_slot_buffer_count(ptr noundef %0, ptr noundef %1) #9
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #9
  %10 = icmp ne ptr %9, null
  %11 = icmp sgt i32 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %39

13:                                               ; preds = %6
  %14 = icmp sgt i32 %8, %5
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %17 = zext nneg i32 %8 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.BMO_iter_as_arrayN) #9
  br label %20

20:                                               ; preds = %13, %15
  %21 = phi ptr [ %19, %15 ], [ %4, %13 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ %25, %22 ], [ 0, %20 ]
  %24 = phi ptr [ %27, %22 ], [ %9, %20 ]
  %25 = add nuw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %24, ptr %26, align 8, !tbaa !52
  %27 = call ptr @BMO_iter_step(ptr noundef nonnull %7) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %22, !llvm.loop !65

29:                                               ; preds = %22
  %30 = trunc i64 %25 to i32
  %31 = icmp eq i32 %8, %30
  %32 = icmp eq ptr %21, %4
  %33 = or i1 %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !52
  %36 = shl i64 %25, 3
  %37 = and i64 %36, 34359738360
  %38 = call ptr %35(ptr noundef nonnull %21, i64 noundef %37, ptr noundef nonnull @__func__.BMO_iter_as_arrayN) #9
  br label %39

39:                                               ; preds = %6, %29, %34
  %40 = phi i32 [ %30, %34 ], [ %30, %29 ], [ 0, %6 ]
  %41 = phi ptr [ %38, %34 ], [ %21, %29 ], [ null, %6 ]
  store i32 %40, ptr %3, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #7
  ret ptr %41
}

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_iter_elem_count_flag(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext %0, ptr noundef %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %10 = phi ptr [ %15, %8 ], [ %6, %4 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %10, i8 noundef zeroext %2) #8, !range !48
  %12 = icmp eq i8 %11, %3
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !66

17:                                               ; preds = %8, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !68
  %5 = and i8 %4, %1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_iter_elem_count_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext %1, ptr noundef %2) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %18, %9 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.BMElemF, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %13, i16 noundef signext %3) #8, !range !48
  %15 = icmp eq i8 %14, %4
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %10, %16
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !72

20:                                               ; preds = %9, %5
  %21 = phi i32 [ 0, %5 ], [ %17, %9 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = and i16 %9, %2
  %11 = icmp ne i16 %10, 0
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_iter_mesh_count_flag(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext %0, ptr noundef null) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %10 = phi ptr [ %15, %8 ], [ %6, %4 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %10, i8 noundef zeroext %2) #8, !range !48
  %12 = icmp eq i8 %11, %3
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !77

17:                                               ; preds = %8, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmiter__elem_of_mesh_begin(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  tail call void @BLI_mempool_iternew(ptr noundef %2, ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bmiter__elem_of_mesh_step(ptr noundef %0) #2 {
  %2 = tail call ptr @BLI_mempool_iterstep(ptr noundef %0) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__edge_of_vert_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 2
  store ptr %4, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__edge_of_vert_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !81
  %7 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %3, ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmiter__face_of_vert_begin(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 8, !tbaa !56
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef %9, ptr noundef %7) #9
  %11 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = load ptr, ptr %0, align 8, !tbaa !92
  %16 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %14, ptr noundef %15) #9
  br label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi ptr [ null, %17 ], [ %16, %6 ]
  %21 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 1
  store ptr %20, ptr %22, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @bmesh_disk_facevert_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bmesh_disk_faceedge_find_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bmesh_radial_faceloop_find_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bmiter__face_of_vert_step(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq ptr %3, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = add nsw i32 %5, -1
  store i32 %10, ptr %4, align 8, !tbaa !56
  %11 = load ptr, ptr %0, align 8, !tbaa !92
  %12 = tail call ptr @bmesh_radial_faceloop_find_next(ptr noundef nonnull %3, ptr noundef %11) #9
  store ptr %12, ptr %2, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr %0, align 8, !tbaa !92
  %20 = tail call ptr @bmesh_disk_faceedge_find_next(ptr noundef %18, ptr noundef %19) #9
  store ptr %20, ptr %17, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = load ptr, ptr %0, align 8, !tbaa !92
  %24 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %22, ptr noundef %23) #9
  store ptr %24, ptr %13, align 8, !tbaa !98
  store ptr %24, ptr %2, align 8, !tbaa !97
  br label %25

25:                                               ; preds = %16, %9
  %26 = load i32, ptr %4, align 8, !tbaa !56
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ %5, %1 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store ptr null, ptr %2, align 8, !tbaa !97
  br label %31

31:                                               ; preds = %30, %27
  br i1 %7, label %35, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  br label %35

35:                                               ; preds = %31, %32
  %36 = phi ptr [ %34, %32 ], [ null, %31 ]
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @bmesh_radial_faceloop_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bmesh_disk_faceedge_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmiter__loop_of_vert_begin(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !101
  %3 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 8, !tbaa !56
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef %9, ptr noundef %7) #9
  %11 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = load ptr, ptr %0, align 8, !tbaa !101
  %16 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %14, ptr noundef %15) #9
  br label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi ptr [ null, %17 ], [ %16, %6 ]
  %21 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 1
  store ptr %20, ptr %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bmiter__loop_of_vert_step(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !56
  %9 = load ptr, ptr %0, align 8, !tbaa !101
  %10 = tail call ptr @bmesh_radial_faceloop_find_next(ptr noundef %3, ptr noundef %9) #9
  store ptr %10, ptr %2, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = load ptr, ptr %0, align 8, !tbaa !101
  %18 = tail call ptr @bmesh_disk_faceedge_find_next(ptr noundef %16, ptr noundef %17) #9
  store ptr %18, ptr %15, align 8, !tbaa !104
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = load ptr, ptr %0, align 8, !tbaa !101
  %22 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %20, ptr noundef %21) #9
  store ptr %22, ptr %11, align 8, !tbaa !106
  store ptr %22, ptr %2, align 8, !tbaa !105
  br label %23

23:                                               ; preds = %7, %14
  %24 = load i32, ptr %4, align 8, !tbaa !56
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1, %23
  store ptr null, ptr %2, align 8, !tbaa !105
  br label %27

27:                                               ; preds = %26, %23
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_edge_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_loop_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, %2
  %7 = select i1 %6, ptr null, ptr %5
  %8 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_loop_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__face_of_edge_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__face_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @bmiter__vert_of_edge_begin(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__vert_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !56
  switch i32 %3, label %14 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 2
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  br label %11

11:                                               ; preds = %5, %8
  %12 = phi ptr [ %10, %8 ], [ %7, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ null, %1 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__vert_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__vert_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__edge_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__edge_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!35, !36, i64 4}
!44 = !{!35, !36, i64 12}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"bmesh_iterators.c:BM_iter_new"}
!48 = !{i8 0, i8 2}
!49 = !{!"bmesh_iterators.c:BM_iter_step"}
!50 = !{!51, !39, i64 48}
!51 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!52 = !{!39, !39, i64 0}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
!55 = !{!36, !36, i64 0}
!56 = !{!51, !36, i64 56}
!57 = distinct !{!57, !46}
!58 = !{!"bmesh_iterators.c:BM_iter_init"}
!59 = !{!51, !37, i64 60}
!60 = !{!51, !39, i64 40}
!61 = !{!35, !39, i64 32}
!62 = !{!35, !39, i64 40}
!63 = !{!35, !39, i64 56}
!64 = !{!37, !37, i64 0}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !46}
!67 = !{!"bmesh_iterators.c:_bm_elem_flag_test_bool"}
!68 = !{!69, !37, i64 13}
!69 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!70 = !{!71, !39, i64 16}
!71 = !{!"BMElemF", !69, i64 0, !39, i64 16}
!72 = distinct !{!72, !46}
!73 = !{!"bmesh_iterators.c:_bmo_elem_flag_test_bool"}
!74 = !{!35, !36, i64 128}
!75 = !{!76, !41, i64 0}
!76 = !{!"BMFlagLayer", !41, i64 0}
!77 = distinct !{!77, !46}
!78 = !{!79, !39, i64 0}
!79 = !{!"BMIter__elem_of_mesh", !80, i64 0}
!80 = !{!"BLI_mempool_iter", !39, i64 0, !39, i64 8, !36, i64 16}
!81 = !{!82, !39, i64 0}
!82 = !{!"BMIter__edge_of_vert", !39, i64 0, !39, i64 8, !39, i64 16}
!83 = !{!84, !39, i64 48}
!84 = !{!"BMVert", !69, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!85 = !{!82, !39, i64 16}
!86 = !{!82, !39, i64 8}
!87 = !{!"bmesh_iterators.c:bmesh_disk_edge_next"}
!88 = !{!89, !39, i64 32}
!89 = !{!"BMEdge", !69, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !90, i64 48, !90, i64 64}
!90 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!91 = !{!89, !39, i64 48}
!92 = !{!93, !39, i64 0}
!93 = !{!"BMIter__face_of_vert", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!94 = !{!93, !39, i64 24}
!95 = !{!93, !39, i64 32}
!96 = !{!89, !39, i64 40}
!97 = !{!93, !39, i64 16}
!98 = !{!93, !39, i64 8}
!99 = !{!100, !39, i64 32}
!100 = !{!"BMLoop", !69, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!101 = !{!102, !39, i64 0}
!102 = !{!"BMIter__loop_of_vert", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!103 = !{!102, !39, i64 24}
!104 = !{!102, !39, i64 32}
!105 = !{!102, !39, i64 16}
!106 = !{!102, !39, i64 8}
!107 = !{!108, !39, i64 0}
!108 = !{!"BMIter__loop_of_edge", !39, i64 0, !39, i64 8, !39, i64 16}
!109 = !{!108, !39, i64 16}
!110 = !{!108, !39, i64 8}
!111 = !{!100, !39, i64 40}
!112 = !{!113, !39, i64 0}
!113 = !{!"BMIter__loop_of_loop", !39, i64 0, !39, i64 8, !39, i64 16}
!114 = !{!113, !39, i64 8}
!115 = !{!113, !39, i64 16}
!116 = !{!117, !39, i64 0}
!117 = !{!"BMIter__face_of_edge", !39, i64 0, !39, i64 8, !39, i64 16}
!118 = !{!117, !39, i64 16}
!119 = !{!117, !39, i64 8}
!120 = !{!121, !39, i64 0}
!121 = !{!"BMIter__vert_of_edge", !39, i64 0}
!122 = !{!123, !39, i64 0}
!123 = !{!"BMIter__vert_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!124 = !{!125, !39, i64 24}
!125 = !{!"BMFace", !69, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!126 = !{!123, !39, i64 16}
!127 = !{!123, !39, i64 8}
!128 = !{!100, !39, i64 56}
!129 = !{!100, !39, i64 16}
!130 = !{!131, !39, i64 0}
!131 = !{!"BMIter__edge_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!132 = !{!131, !39, i64 16}
!133 = !{!131, !39, i64 8}
!134 = !{!100, !39, i64 24}
!135 = !{!136, !39, i64 0}
!136 = !{!"BMIter__loop_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!137 = !{!136, !39, i64 16}
!138 = !{!136, !39, i64 8}
