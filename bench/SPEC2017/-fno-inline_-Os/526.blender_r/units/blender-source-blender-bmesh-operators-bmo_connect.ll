; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [17 x i8] c"check_degenerate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_connect_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store ptr null, ptr %4, align 8, !tbaa !34
  %7 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #6
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 4) #6
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %13

10:                                               ; preds = %66
  %11 = load ptr, ptr %4, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %79, label %69

13:                                               ; preds = %2, %66
  %14 = phi ptr [ %67, %66 ], [ %8, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %16, i16 noundef signext 1) #7
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %14) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %13, %63
  %20 = phi ptr [ %64, %63 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %24, i16 noundef signext 4) #7, !range !47
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %24, i16 noundef signext 2) #7, !range !47
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %24, i16 noundef signext 2) #7
  %31 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef %7) #6
  br label %35

35:                                               ; preds = %27, %34, %30, %19
  %36 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #7, !range !47
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.BMEdge, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %48, i16 noundef signext 2) #7
  br label %49

49:                                               ; preds = %44, %35
  %50 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %55, i16 noundef signext 1) #7, !range !47
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %62, i16 noundef signext 2) #7
  br label %63

63:                                               ; preds = %49, %58
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %19, !llvm.loop !56

66:                                               ; preds = %63, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  %67 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %10, label %13, !llvm.loop !58

69:                                               ; preds = %10, %76
  %70 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %4, ptr noundef %7) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = call fastcc i32 @bm_face_connect_verts(ptr noundef %0, ptr noundef nonnull %70, i8 noundef zeroext %6) #7
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef null) #6
  br label %76

76:                                               ; preds = %75, %72
  %77 = load ptr, ptr %4, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %69, !llvm.loop !59

79:                                               ; preds = %69, %76, %2, %10
  call void @BLI_mempool_destroy(ptr noundef %7) #6
  store ptr null, ptr %4, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %80, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !60 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !65
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !67 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #7
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !68 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !65
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call ptr %3(ptr noundef %0) #6
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @bm_face_connect_verts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !72 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = sdiv i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 4
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %63, %3
  %15 = phi ptr [ %13, %3 ], [ %68, %63 ]
  %16 = phi ptr [ null, %3 ], [ %64, %63 ]
  %17 = phi ptr [ null, %3 ], [ %65, %63 ]
  %18 = phi i32 [ 0, %3 ], [ %66, %63 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %22, i16 noundef signext 1) #7, !range !47
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %63, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %31, i16 noundef signext 1) #7, !range !47
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %40, i16 noundef signext 1) #7, !range !47
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34, %25
  %44 = icmp eq ptr %17, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %43
  %46 = tail call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef nonnull %17, ptr noundef nonnull %15) #7, !range !74
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = tail call ptr @BM_edge_exists(ptr noundef %50, ptr noundef nonnull %20) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  %56 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %55, i16 noundef signext 1) #7, !range !47
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %48
  %59 = add i32 %18, 1
  %60 = zext i32 %18 to i64
  %61 = getelementptr inbounds [2 x ptr], ptr %10, i64 %60
  store ptr %17, ptr %61, align 16, !tbaa !34
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  store ptr %15, ptr %62, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %45, %58, %53, %43, %14, %34
  %64 = phi ptr [ %16, %34 ], [ %16, %14 ], [ %15, %43 ], [ %16, %53 ], [ %16, %58 ], [ %16, %45 ]
  %65 = phi ptr [ %17, %34 ], [ %17, %14 ], [ %15, %43 ], [ %15, %53 ], [ %15, %58 ], [ %15, %45 ]
  %66 = phi i32 [ %18, %34 ], [ %18, %14 ], [ %18, %43 ], [ %18, %53 ], [ %59, %58 ], [ %18, %45 ]
  %67 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  %69 = icmp eq ptr %68, %13
  br i1 %69, label %70, label %14, !llvm.loop !75

70:                                               ; preds = %63
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %147, label %72

72:                                               ; preds = %70
  %73 = tail call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef %64, ptr noundef %65) #7, !range !74
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load ptr, ptr %10, align 16, !tbaa !34
  %77 = icmp eq ptr %76, %64
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, %65
  br i1 %81, label %87, label %82

82:                                               ; preds = %75, %78
  %83 = add i32 %66, 1
  %84 = zext i32 %66 to i64
  %85 = getelementptr inbounds [2 x ptr], ptr %10, i64 %84
  store ptr %64, ptr %85, align 16, !tbaa !34
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  store ptr %65, ptr %86, align 8, !tbaa !34
  br label %87

87:                                               ; preds = %82, %78, %72
  %88 = phi i32 [ %66, %72 ], [ %83, %82 ], [ %66, %78 ]
  %89 = icmp eq i8 %2, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void @BM_face_splits_check_legal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %88) #6
  br label %92

91:                                               ; preds = %87
  call void @BM_face_splits_check_optimal(ptr noundef %1, ptr noundef nonnull %10, i32 noundef %88) #6
  br label %92

92:                                               ; preds = %91, %90
  %93 = icmp eq i32 %88, 0
  br i1 %93, label %147, label %94

94:                                               ; preds = %92
  %95 = zext i32 %88 to i64
  br label %100

96:                                               ; preds = %117
  %97 = icmp eq i32 %118, 0
  br i1 %97, label %147, label %98

98:                                               ; preds = %96
  %99 = zext i32 %118 to i64
  br label %121

100:                                              ; preds = %94, %117
  %101 = phi i64 [ 0, %94 ], [ %119, %117 ]
  %102 = phi i32 [ 0, %94 ], [ %118, %117 ]
  %103 = getelementptr inbounds [2 x ptr], ptr %10, i64 %101
  %104 = load ptr, ptr %103, align 16, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %100
  %107 = add i32 %102, 1
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds [2 x ptr], ptr %11, i64 %108
  %110 = getelementptr inbounds %struct.BMLoop, ptr %104, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !50
  store ptr %111, ptr %109, align 16, !tbaa !34
  %112 = getelementptr inbounds [2 x ptr], ptr %10, i64 %101, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !50
  %116 = getelementptr inbounds ptr, ptr %109, i64 1
  store ptr %115, ptr %116, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %100, %106
  %118 = phi i32 [ %107, %106 ], [ %102, %100 ]
  %119 = add nuw nsw i64 %101, 1
  %120 = icmp eq i64 %119, %95
  br i1 %120, label %96, label %100, !llvm.loop !76

121:                                              ; preds = %98, %139
  %122 = phi i64 [ 0, %98 ], [ %144, %139 ]
  %123 = phi ptr [ %1, %98 ], [ %134, %139 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %124 = getelementptr inbounds [2 x ptr], ptr %11, i64 %122
  %125 = load ptr, ptr %124, align 16, !tbaa !34
  %126 = call ptr @BM_face_vert_share_loop(ptr noundef %123, ptr noundef %125) #6
  %127 = icmp eq ptr %126, null
  br i1 %127, label %146, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds [2 x ptr], ptr %11, i64 %122, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = call ptr @BM_face_vert_share_loop(ptr noundef %123, ptr noundef %130) #6
  %132 = icmp eq ptr %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %128
  %134 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %123, ptr noundef nonnull %126, ptr noundef nonnull %131, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #6
  %135 = load ptr, ptr %4, align 8, !tbaa !34
  %136 = icmp ne ptr %135, null
  %137 = icmp ne ptr %134, null
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.BMLoop, ptr %135, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !51
  %142 = getelementptr inbounds %struct.BMEdge, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %143, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %144 = add nuw nsw i64 %122, 1
  %145 = icmp eq i64 %144, %99
  br i1 %145, label %147, label %121, !llvm.loop !77

146:                                              ; preds = %133, %128, %121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %147

147:                                              ; preds = %139, %92, %96, %146, %70
  %148 = phi i32 [ 0, %70 ], [ -1, %146 ], [ 1, %96 ], [ 1, %92 ], [ 1, %139 ]
  ret i32 %148
}

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 6, ptr %3, align 4, !tbaa !79
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %5, align 8, !tbaa !70
  store ptr %1, ptr %0, align 8, !tbaa !81
  tail call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_splits_check_legal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_splits_check_optimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !35, i64 32}
!43 = !{!"BMLoop", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!44 = !{!45, !35, i64 16}
!45 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !46, i64 48}
!46 = !{!"short", !36, i64 0}
!47 = !{i16 0, i16 5}
!48 = !{!45, !41, i64 32}
!49 = !{!43, !35, i64 64}
!50 = !{!43, !35, i64 16}
!51 = !{!43, !35, i64 24}
!52 = !{!53, !35, i64 16}
!53 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !54, i64 48, !54, i64 64}
!54 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!55 = !{!43, !35, i64 56}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = !{!"bmo_connect.c:_bmo_elem_flag_enable"}
!61 = !{!62, !41, i64 128}
!62 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !63, i64 144, !63, i64 344, !63, i64 544, !63, i64 744, !46, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !64, i64 960, !35, i64 976, !64, i64 984, !35, i64 1000}
!63 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!64 = !{!"ListBase", !35, i64 0, !35, i64 8}
!65 = !{!66, !46, i64 0}
!66 = !{!"BMFlagLayer", !46, i64 0}
!67 = !{!"bmo_connect.c:BM_iter_new"}
!68 = !{!"bmo_connect.c:_bmo_elem_flag_test"}
!69 = !{!"bmo_connect.c:BM_iter_step"}
!70 = !{!71, !35, i64 48}
!71 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!72 = !{!"bmo_connect.c:bm_face_connect_verts"}
!73 = !{!45, !35, i64 24}
!74 = !{i8 0, i8 2}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = !{!"bmo_connect.c:BM_iter_init"}
!79 = !{!71, !36, i64 60}
!80 = !{!71, !35, i64 40}
!81 = !{!36, !36, i64 0}
!82 = !{!"bmo_connect.c:BM_loop_is_adjacent"}
