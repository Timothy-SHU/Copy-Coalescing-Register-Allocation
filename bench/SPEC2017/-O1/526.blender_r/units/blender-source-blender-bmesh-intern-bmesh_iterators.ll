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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_iter_at_index(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = icmp slt i32 %3, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 %1, ptr %8, align 4, !tbaa !45
  switch i8 %1, label %60 [
    i8 1, label %9
    i8 2, label %14
    i8 3, label %19
    i8 4, label %24
    i8 5, label %27
    i8 6, label %30
    i8 7, label %33
    i8 8, label %36
    i8 9, label %39
    i8 10, label %42
    i8 11, label %45
    i8 13, label %48
    i8 14, label %51
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  store ptr %13, ptr %5, align 8, !tbaa !50
  br label %54

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  store ptr %18, ptr %5, align 8, !tbaa !50
  br label %54

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  store ptr %23, ptr %5, align 8, !tbaa !50
  br label %54

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %26, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %29, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %31, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %32, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %34, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %35, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %37, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %38, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

39:                                               ; preds = %7
  %40 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %40, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %41, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %43, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %44, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

45:                                               ; preds = %7
  %46 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %46, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %47, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %49, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %50, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %52, align 8, !tbaa !47
  %53 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %53, align 8, !tbaa !48
  store ptr %2, ptr %5, align 8, !tbaa !50
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %19, %14, %9
  %55 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  call void %56(ptr noundef nonnull %5) #8
  %57 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = call ptr %58(ptr noundef nonnull %5) #8
  br label %60

60:                                               ; preds = %7, %54
  %61 = phi ptr [ %59, %54 ], [ null, %7 ]
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %65 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %66

66:                                               ; preds = %63, %66
  %67 = phi i32 [ 0, %63 ], [ %70, %66 ]
  %68 = load ptr, ptr %64, align 8, !tbaa !48
  %69 = call ptr %68(ptr noundef nonnull %5) #8
  %70 = add nuw nsw i32 %67, 1
  %71 = icmp eq i32 %70, %65
  br i1 %71, label %72, label %66, !llvm.loop !53

72:                                               ; preds = %66, %60, %4
  %73 = phi ptr [ null, %4 ], [ %61, %60 ], [ %69, %66 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret ptr %73
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_iter_as_array(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMIter, align 8
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %9 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 %1, ptr %9, align 4, !tbaa !45
  switch i8 %1, label %61 [
    i8 1, label %10
    i8 2, label %15
    i8 3, label %20
    i8 4, label %25
    i8 5, label %28
    i8 6, label %31
    i8 7, label %34
    i8 8, label %37
    i8 9, label %40
    i8 10, label %43
    i8 11, label %46
    i8 13, label %49
    i8 14, label %52
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  store ptr %14, ptr %6, align 8, !tbaa !50
  br label %55

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  store ptr %19, ptr %6, align 8, !tbaa !50
  br label %55

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  store ptr %24, ptr %6, align 8, !tbaa !50
  br label %55

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %26, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %27, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %30, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %33, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %36, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %38, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %39, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %42, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %44, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %45, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

46:                                               ; preds = %8
  %47 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %47, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %48, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %50, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %51, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

52:                                               ; preds = %8
  %53 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %53, align 8, !tbaa !47
  %54 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %54, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %20, %15, %10
  %56 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  call void %57(ptr noundef nonnull %6) #8
  %58 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = call ptr %59(ptr noundef nonnull %6) #8
  br label %61

61:                                               ; preds = %8, %55
  %62 = phi ptr [ %60, %55 ], [ null, %8 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %66 = zext nneg i32 %4 to i64
  br label %67

67:                                               ; preds = %64, %73
  %68 = phi i64 [ 0, %64 ], [ %71, %73 ]
  %69 = phi ptr [ %62, %64 ], [ %75, %73 ]
  %70 = getelementptr inbounds ptr, ptr %3, i64 %68
  store ptr %69, ptr %70, align 8, !tbaa !56
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, %66
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %65, align 8, !tbaa !48
  %75 = call ptr %74(ptr noundef nonnull %6) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67, !llvm.loop !57

77:                                               ; preds = %73
  %78 = trunc i64 %71 to i32
  br label %79

79:                                               ; preds = %77, %67, %61
  %80 = phi i32 [ 0, %61 ], [ %78, %77 ], [ %4, %67 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %81

81:                                               ; preds = %79, %5
  %82 = phi i32 [ 0, %5 ], [ %80, %79 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_iter_as_array(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMOIter, align 8
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %19
  %14 = phi i64 [ 0, %11 ], [ %17, %19 ]
  %15 = phi ptr [ %9, %11 ], [ %20, %19 ]
  %16 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !56
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !58

22:                                               ; preds = %19
  %23 = trunc i64 %17 to i32
  br label %24

24:                                               ; preds = %22, %13, %8
  %25 = phi i32 [ 0, %8 ], [ %23, %22 ], [ %4, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ 0, %5 ], [ %25, %24 ]
  ret i32 %27
}

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_iter_as_arrayN(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
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
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 3
  store i32 %14, ptr %15, align 8, !tbaa !60
  br label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 %1, ptr %17, align 4, !tbaa !45
  switch i8 %1, label %66 [
    i8 1, label %18
    i8 2, label %23
    i8 3, label %28
    i8 4, label %33
    i8 5, label %36
    i8 6, label %39
    i8 7, label %42
    i8 8, label %45
    i8 9, label %48
    i8 10, label %51
    i8 11, label %54
    i8 13, label %57
    i8 14, label %60
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  store ptr %22, ptr %7, align 8, !tbaa !50
  br label %63

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %25, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  store ptr %27, ptr %7, align 8, !tbaa !50
  br label %63

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  store ptr %32, ptr %7, align 8, !tbaa !50
  br label %63

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %34, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %35, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %37, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %38, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %40, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %41, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %43, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %44, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

45:                                               ; preds = %16
  %46 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %46, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %47, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %49, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %50, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

51:                                               ; preds = %16
  %52 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %52, align 8, !tbaa !47
  %53 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %53, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %55, align 8, !tbaa !47
  %56 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %56, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

57:                                               ; preds = %16
  %58 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %58, align 8, !tbaa !47
  %59 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %59, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

60:                                               ; preds = %16
  %61 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %61, align 8, !tbaa !47
  %62 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %62, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !50
  br label %63

63:                                               ; preds = %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %28, %23, %18
  %64 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  call void %65(ptr noundef nonnull %7) #8
  br label %66

66:                                               ; preds = %16, %63
  %67 = phi i1 [ true, %63 ], [ false, %16 ]
  %68 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 3
  %69 = load i32, ptr %68, align 8
  %70 = icmp sgt i32 %69, 0
  %71 = select i1 %67, i1 %70, i1 false
  br i1 %71, label %72, label %94

72:                                               ; preds = %66
  %73 = icmp sgt i32 %69, %5
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %76 = zext nneg i32 %69 to i64
  %77 = shl nuw nsw i64 %76, 3
  %78 = call ptr %75(i64 noundef %77, ptr noundef nonnull @__func__.BM_iter_as_arrayN) #8
  br label %79

79:                                               ; preds = %72, %74
  %80 = phi ptr [ %78, %74 ], [ %4, %72 ]
  %81 = load i32, ptr %68, align 8, !tbaa !60
  store i32 %81, ptr %3, align 4, !tbaa !59
  %82 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !48
  %84 = call ptr %83(ptr noundef nonnull %7) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %79, %86
  %87 = phi i64 [ %89, %86 ], [ 0, %79 ]
  %88 = phi ptr [ %92, %86 ], [ %84, %79 ]
  %89 = add nuw i64 %87, 1
  %90 = getelementptr inbounds ptr, ptr %80, i64 %87
  store ptr %88, ptr %90, align 8, !tbaa !56
  %91 = load ptr, ptr %82, align 8, !tbaa !48
  %92 = call ptr %91(ptr noundef nonnull %7) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %86, !llvm.loop !61

94:                                               ; preds = %66
  store i32 0, ptr %3, align 4, !tbaa !59
  br label %95

95:                                               ; preds = %86, %79, %94
  %96 = phi ptr [ null, %94 ], [ %80, %79 ], [ %80, %86 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  ret ptr %96
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMO_iter_as_arrayN(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  %8 = tail call i32 @BMO_slot_buffer_count(ptr noundef %0, ptr noundef %1) #8
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #8
  %10 = icmp ne ptr %9, null
  %11 = icmp sgt i32 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %39

13:                                               ; preds = %6
  %14 = icmp sgt i32 %8, %5
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %17 = zext nneg i32 %8 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.BMO_iter_as_arrayN) #8
  br label %20

20:                                               ; preds = %13, %15
  %21 = phi ptr [ %19, %15 ], [ %4, %13 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ %25, %22 ], [ 0, %20 ]
  %24 = phi ptr [ %27, %22 ], [ %9, %20 ]
  %25 = add nuw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %24, ptr %26, align 8, !tbaa !56
  %27 = call ptr @BMO_iter_step(ptr noundef nonnull %7) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %22, !llvm.loop !62

29:                                               ; preds = %22
  %30 = trunc i64 %25 to i32
  %31 = icmp eq i32 %8, %30
  %32 = icmp eq ptr %21, %4
  %33 = or i1 %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !56
  %36 = shl i64 %25, 3
  %37 = and i64 %36, 34359738360
  %38 = call ptr %35(ptr noundef %21, i64 noundef %37, ptr noundef nonnull @__func__.BMO_iter_as_arrayN) #8
  br label %39

39:                                               ; preds = %6, %29, %34
  %40 = phi i32 [ %30, %34 ], [ %30, %29 ], [ 0, %6 ]
  %41 = phi ptr [ %38, %34 ], [ %21, %29 ], [ null, %6 ]
  store i32 %40, ptr %3, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  ret ptr %41
}

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_iter_elem_count_flag(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 %0, ptr %6, align 4, !tbaa !45
  switch i8 %0, label %55 [
    i8 1, label %7
    i8 2, label %11
    i8 3, label %15
    i8 4, label %19
    i8 5, label %22
    i8 6, label %25
    i8 7, label %28
    i8 8, label %31
    i8 9, label %34
    i8 10, label %37
    i8 11, label %40
    i8 13, label %43
    i8 14, label %46
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %9, align 8, !tbaa !48
  %10 = load ptr, ptr inttoptr (i64 32 to ptr), align 32, !tbaa !49
  store ptr %10, ptr %5, align 8, !tbaa !50
  br label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !48
  %14 = load ptr, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !51
  store ptr %14, ptr %5, align 8, !tbaa !50
  br label %49

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !48
  %18 = load ptr, ptr inttoptr (i64 56 to ptr), align 8, !tbaa !52
  store ptr %18, ptr %5, align 8, !tbaa !50
  br label %49

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %21, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %24, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %26, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %27, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %30, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %33, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %36, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %38, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %39, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %42, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %44, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %45, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %47, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %48, align 8, !tbaa !48
  store ptr %1, ptr %5, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %15, %11, %7
  %50 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  call void %51(ptr noundef nonnull %5) #8
  %52 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = call ptr %53(ptr noundef nonnull %5) #8
  br label %55

55:                                               ; preds = %4, %49
  %56 = phi ptr [ %54, %49 ], [ null, %4 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32 [ 0, %58 ], [ %70, %60 ]
  %62 = phi ptr [ %56, %58 ], [ %72, %60 ]
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !63
  %65 = and i8 %64, %2
  %66 = icmp ne i8 %65, 0
  %67 = zext i1 %66 to i8
  %68 = icmp eq i8 %67, %3
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %61, %69
  %71 = load ptr, ptr %59, align 8, !tbaa !48
  %72 = call ptr %71(ptr noundef nonnull %5) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %60, !llvm.loop !65

74:                                               ; preds = %60, %55
  %75 = phi i32 [ 0, %55 ], [ %70, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_iter_elem_count_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 %1, ptr %7, align 4, !tbaa !45
  switch i8 %1, label %56 [
    i8 1, label %8
    i8 2, label %12
    i8 3, label %16
    i8 4, label %20
    i8 5, label %23
    i8 6, label %26
    i8 7, label %29
    i8 8, label %32
    i8 9, label %35
    i8 10, label %38
    i8 11, label %41
    i8 13, label %44
    i8 14, label %47
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !48
  %11 = load ptr, ptr inttoptr (i64 32 to ptr), align 32, !tbaa !49
  store ptr %11, ptr %6, align 8, !tbaa !50
  br label %50

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !48
  %15 = load ptr, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !51
  store ptr %15, ptr %6, align 8, !tbaa !50
  br label %50

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !48
  %19 = load ptr, ptr inttoptr (i64 56 to ptr), align 8, !tbaa !52
  store ptr %19, ptr %6, align 8, !tbaa !50
  br label %50

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %22, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %25, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %27, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %28, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %31, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %34, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %36, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %37, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %39, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %40, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %42, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %43, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %45, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %46, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %48, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %49, align 8, !tbaa !48
  store ptr %2, ptr %6, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %16, %12, %8
  %51 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  call void %52(ptr noundef nonnull %6) #8
  %53 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = call ptr %54(ptr noundef nonnull %6) #8
  br label %56

56:                                               ; preds = %5, %50
  %57 = phi ptr [ %55, %50 ], [ null, %5 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %61 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %62

62:                                               ; preds = %59, %62
  %63 = phi i32 [ 0, %59 ], [ %77, %62 ]
  %64 = phi ptr [ %57, %59 ], [ %79, %62 ]
  %65 = getelementptr inbounds %struct.BMElemF, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !66
  %67 = load i32, ptr %60, align 8, !tbaa !68
  %68 = sext i32 %67 to i64
  %69 = getelementptr %struct.BMFlagLayer, ptr %66, i64 %68
  %70 = getelementptr %struct.BMFlagLayer, ptr %69, i64 -1
  %71 = load i16, ptr %70, align 2, !tbaa !69
  %72 = and i16 %71, %3
  %73 = icmp ne i16 %72, 0
  %74 = zext i1 %73 to i8
  %75 = icmp eq i8 %74, %4
  %76 = zext i1 %75 to i32
  %77 = add nuw nsw i32 %63, %76
  %78 = load ptr, ptr %61, align 8, !tbaa !48
  %79 = call ptr %78(ptr noundef nonnull %6) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %62, !llvm.loop !71

81:                                               ; preds = %62, %56
  %82 = phi i32 [ 0, %56 ], [ %77, %62 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_iter_mesh_count_flag(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 %0, ptr %6, align 4, !tbaa !45
  switch i8 %0, label %58 [
    i8 1, label %7
    i8 2, label %12
    i8 3, label %17
    i8 4, label %22
    i8 5, label %25
    i8 6, label %28
    i8 7, label %31
    i8 8, label %34
    i8 9, label %37
    i8 10, label %40
    i8 11, label %43
    i8 13, label %46
    i8 14, label %49
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  store ptr %11, ptr %5, align 8, !tbaa !50
  br label %52

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  store ptr %16, ptr %5, align 8, !tbaa !50
  br label %52

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  store ptr %21, ptr %5, align 8, !tbaa !50
  br label %52

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %24, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %26, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %27, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %30, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %33, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %36, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %38, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %39, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %42, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %44, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %45, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %47, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %48, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %50, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %51, align 8, !tbaa !48
  store ptr null, ptr %5, align 8, !tbaa !50
  br label %52

52:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %17, %12, %7
  %53 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  call void %54(ptr noundef nonnull %5) #8
  %55 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = call ptr %56(ptr noundef nonnull %5) #8
  br label %58

58:                                               ; preds = %4, %52
  %59 = phi ptr [ %57, %52 ], [ null, %4 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i32 [ 0, %61 ], [ %73, %63 ]
  %65 = phi ptr [ %59, %61 ], [ %75, %63 ]
  %66 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !63
  %68 = and i8 %67, %2
  %69 = icmp ne i8 %68, 0
  %70 = zext i1 %69 to i8
  %71 = icmp eq i8 %70, %3
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %64, %72
  %74 = load ptr, ptr %62, align 8, !tbaa !48
  %75 = call ptr %74(ptr noundef nonnull %5) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %63, !llvm.loop !72

77:                                               ; preds = %63, %58
  %78 = phi i32 [ 0, %58 ], [ %73, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local void @bmiter__elem_of_mesh_begin(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  tail call void @BLI_mempool_iternew(ptr noundef %2, ptr noundef nonnull %0) #8
  ret void
}

declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @bmiter__elem_of_mesh_step(ptr noundef %0) #2 {
  %2 = tail call ptr @BLI_mempool_iterstep(ptr noundef %0) #8
  ret ptr %2
}

declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__edge_of_vert_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 1
  br i1 %5, label %9, label %7

7:                                                ; preds = %1
  store ptr %4, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !81
  br label %10

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__edge_of_vert_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 5
  %8 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, %6
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds %struct.BMDiskLink, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  store ptr %13, ptr %2, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.BMIter__edge_of_vert, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %13, %15
  %17 = select i1 %16, ptr null, ptr %13
  store ptr %17, ptr %2, align 8
  br label %18

18:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @bmiter__face_of_vert_begin(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  %3 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 8, !tbaa !60
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef %9, ptr noundef %7) #8
  %11 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = load ptr, ptr %0, align 8, !tbaa !86
  %16 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %14, ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !92
  br label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  br label %21

21:                                               ; preds = %19, %6
  ret void
}

declare i32 @bmesh_disk_facevert_count(ptr noundef) local_unnamed_addr #3

declare ptr @bmesh_disk_faceedge_find_first(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bmesh_radial_faceloop_find_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @bmiter__face_of_vert_step(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq ptr %3, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = add nsw i32 %5, -1
  store i32 %10, ptr %4, align 8, !tbaa !60
  %11 = load ptr, ptr %0, align 8, !tbaa !86
  %12 = tail call ptr @bmesh_radial_faceloop_find_next(ptr noundef %3, ptr noundef %11) #8
  store ptr %12, ptr %2, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.BMIter__face_of_vert, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = load ptr, ptr %0, align 8, !tbaa !86
  %20 = tail call ptr @bmesh_disk_faceedge_find_next(ptr noundef %18, ptr noundef %19) #8
  store ptr %20, ptr %17, align 8, !tbaa !89
  %21 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = load ptr, ptr %0, align 8, !tbaa !86
  %24 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %22, ptr noundef %23) #8
  store ptr %24, ptr %13, align 8, !tbaa !91
  store ptr %24, ptr %2, align 8, !tbaa !92
  br label %25

25:                                               ; preds = %9, %16, %1
  %26 = load i32, ptr %4, align 8, !tbaa !60
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store ptr null, ptr %2, align 8, !tbaa !92
  br label %29

29:                                               ; preds = %28, %25
  br i1 %7, label %33, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  br label %33

33:                                               ; preds = %29, %30
  %34 = phi ptr [ %32, %30 ], [ null, %29 ]
  ret ptr %34
}

declare ptr @bmesh_radial_faceloop_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bmesh_disk_faceedge_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @bmiter__loop_of_vert_begin(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 8, !tbaa !60
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef %9, ptr noundef %7) #8
  %11 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = load ptr, ptr %0, align 8, !tbaa !95
  %16 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %14, ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !100
  br label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  br label %21

21:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bmiter__loop_of_vert_step(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !60
  %9 = load ptr, ptr %0, align 8, !tbaa !95
  %10 = tail call ptr @bmesh_radial_faceloop_find_next(ptr noundef %3, ptr noundef %9) #8
  store ptr %10, ptr %2, align 8, !tbaa !100
  %11 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.BMIter__loop_of_vert, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = load ptr, ptr %0, align 8, !tbaa !95
  %18 = tail call ptr @bmesh_disk_faceedge_find_next(ptr noundef %16, ptr noundef %17) #8
  store ptr %18, ptr %15, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = load ptr, ptr %0, align 8, !tbaa !95
  %22 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %20, ptr noundef %21) #8
  store ptr %22, ptr %11, align 8, !tbaa !99
  store ptr %22, ptr %2, align 8, !tbaa !100
  br label %23

23:                                               ; preds = %7, %14, %1
  %24 = load i32, ptr %4, align 8, !tbaa !60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store ptr null, ptr %2, align 8, !tbaa !100
  br label %27

27:                                               ; preds = %26, %23
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_edge_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !101
  %3 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  store ptr %7, ptr %2, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.BMIter__loop_of_edge, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_loop_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = icmp eq ptr %5, %2
  %7 = select i1 %6, ptr null, ptr %5
  %8 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_loop_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  store ptr %7, ptr %2, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.BMIter__loop_of_loop, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__face_of_edge_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !112
  %6 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__face_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  store ptr %7, ptr %2, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.BMIter__face_of_edge, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @bmiter__vert_of_edge_begin(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__vert_of_edge_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !60
  switch i32 %3, label %14 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 2
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  br label %11

11:                                               ; preds = %5, %8
  %12 = phi ptr [ %10, %8 ], [ %7, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ null, %1 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__vert_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__vert_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  store ptr %7, ptr %2, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.BMIter__vert_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__edge_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__edge_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  store ptr %7, ptr %2, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.BMIter__edge_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmiter__loop_of_face_begin(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !129
  %3 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @bmiter__loop_of_face_step(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  store ptr %7, ptr %2, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.BMIter__loop_of_face, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %10, ptr null, ptr %7
  store ptr %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!45 = !{!46, !37, i64 60}
!46 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!47 = !{!46, !39, i64 40}
!48 = !{!46, !39, i64 48}
!49 = !{!35, !39, i64 32}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !39, i64 40}
!52 = !{!35, !39, i64 56}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!39, !39, i64 0}
!57 = distinct !{!57, !54, !55}
!58 = distinct !{!58, !54, !55}
!59 = !{!36, !36, i64 0}
!60 = !{!46, !36, i64 56}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = !{!64, !37, i64 13}
!64 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!65 = distinct !{!65, !54, !55}
!66 = !{!67, !39, i64 16}
!67 = !{!"BMElemF", !64, i64 0, !39, i64 16}
!68 = !{!35, !36, i64 128}
!69 = !{!70, !41, i64 0}
!70 = !{!"BMFlagLayer", !41, i64 0}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
!73 = !{!74, !39, i64 0}
!74 = !{!"BMIter__elem_of_mesh", !75, i64 0}
!75 = !{!"BLI_mempool_iter", !39, i64 0, !39, i64 8, !36, i64 16}
!76 = !{!77, !39, i64 0}
!77 = !{!"BMIter__edge_of_vert", !39, i64 0, !39, i64 8, !39, i64 16}
!78 = !{!79, !39, i64 48}
!79 = !{!"BMVert", !64, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!80 = !{!77, !39, i64 8}
!81 = !{!77, !39, i64 16}
!82 = !{!83, !39, i64 32}
!83 = !{!"BMEdge", !64, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !84, i64 48, !84, i64 64}
!84 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!85 = !{!83, !39, i64 48}
!86 = !{!87, !39, i64 0}
!87 = !{!"BMIter__face_of_vert", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!88 = !{!87, !39, i64 24}
!89 = !{!87, !39, i64 32}
!90 = !{!83, !39, i64 40}
!91 = !{!87, !39, i64 8}
!92 = !{!87, !39, i64 16}
!93 = !{!94, !39, i64 32}
!94 = !{!"BMLoop", !64, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!95 = !{!96, !39, i64 0}
!96 = !{!"BMIter__loop_of_vert", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!97 = !{!96, !39, i64 24}
!98 = !{!96, !39, i64 32}
!99 = !{!96, !39, i64 8}
!100 = !{!96, !39, i64 16}
!101 = !{!102, !39, i64 0}
!102 = !{!"BMIter__loop_of_edge", !39, i64 0, !39, i64 8, !39, i64 16}
!103 = !{!102, !39, i64 16}
!104 = !{!102, !39, i64 8}
!105 = !{!94, !39, i64 40}
!106 = !{!107, !39, i64 0}
!107 = !{!"BMIter__loop_of_loop", !39, i64 0, !39, i64 8, !39, i64 16}
!108 = !{!107, !39, i64 8}
!109 = !{!107, !39, i64 16}
!110 = !{!111, !39, i64 0}
!111 = !{!"BMIter__face_of_edge", !39, i64 0, !39, i64 8, !39, i64 16}
!112 = !{!111, !39, i64 16}
!113 = !{!111, !39, i64 8}
!114 = !{!115, !39, i64 0}
!115 = !{!"BMIter__vert_of_edge", !39, i64 0}
!116 = !{!117, !39, i64 0}
!117 = !{!"BMIter__vert_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!118 = !{!119, !39, i64 24}
!119 = !{!"BMFace", !64, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!120 = !{!117, !39, i64 16}
!121 = !{!117, !39, i64 8}
!122 = !{!94, !39, i64 56}
!123 = !{!94, !39, i64 16}
!124 = !{!125, !39, i64 0}
!125 = !{!"BMIter__edge_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!126 = !{!125, !39, i64 16}
!127 = !{!125, !39, i64 8}
!128 = !{!94, !39, i64 24}
!129 = !{!130, !39, i64 0}
!130 = !{!"BMIter__loop_of_face", !39, i64 0, !39, i64 8, !39, i64 16}
!131 = !{!130, !39, i64 16}
!132 = !{!130, !39, i64 8}
