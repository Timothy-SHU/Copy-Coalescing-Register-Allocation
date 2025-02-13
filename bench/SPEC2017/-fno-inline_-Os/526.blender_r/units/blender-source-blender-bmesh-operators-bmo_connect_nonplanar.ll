; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect_nonplanar.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect_nonplanar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@.str = private unnamed_addr constant [12 x i8] c"angle_limit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_connect_verts_nonplanar_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %7 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %17, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp sgt i32 %13, 3
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !42

19:                                               ; preds = %9
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %19
  store ptr null, ptr %4, align 8, !tbaa !44
  %22 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #7
  %23 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %28

25:                                               ; preds = %34
  %26 = load ptr, ptr %4, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %37

28:                                               ; preds = %21, %34
  %29 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %30 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !34
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef nonnull %29, ptr noundef %22) #7
  br label %34

34:                                               ; preds = %28, %33
  %35 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %25, label %28, !llvm.loop !45

37:                                               ; preds = %25, %53
  %38 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %4, ptr noundef %22) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %41 = call fastcc zeroext i8 @bm_face_split_by_angle(ptr noundef %0, ptr noundef nonnull %38, ptr noundef nonnull %5, float noundef %6) #8, !range !46
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40, %52
  %44 = phi i1 [ false, %52 ], [ true, %40 ]
  %45 = phi i64 [ 1, %52 ], [ 0, %40 ]
  %46 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  call void @BM_face_normal_update(ptr noundef %47) #7
  %48 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !34
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef nonnull %47, ptr noundef %22) #7
  br label %52

52:                                               ; preds = %43, %51
  br i1 %44, label %43, label %53, !llvm.loop !47

53:                                               ; preds = %52, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  %54 = load ptr, ptr %4, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %37, !llvm.loop !48

56:                                               ; preds = %37, %53, %21, %25
  call void @BLI_mempool_destroy(ptr noundef %22) #7
  store ptr null, ptr %4, align 8, !tbaa !44
  %57 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %57, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i16 noundef signext 1) #7
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %57, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 2) #7
  br label %58

58:                                               ; preds = %2, %19, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_face_split_by_angle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !49 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca float, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %8 = call fastcc zeroext i8 @bm_face_split_find(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #8, !range !46
  %9 = icmp ne i8 %8, 0
  %10 = load float, ptr %6, align 4
  %11 = fcmp ogt float %10, %3
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %14 = load ptr, ptr %5, align 16, !tbaa !44
  %15 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  store ptr %1, ptr %2, align 8, !tbaa !44
  %20 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %17, ptr %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %22, i16 noundef signext 2) #8
  %23 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %24, i16 noundef signext 2) #8
  %25 = load ptr, ptr %7, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.BMEdge, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %29, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %31

30:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %31

31:                                               ; preds = %4, %30, %19
  %32 = phi i8 [ 1, %19 ], [ 0, %30 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret i8 %32
}

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_face_split_find(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !56 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x ptr], align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi i32 [ 0, %4 ], [ %18, %15 ]
  %17 = phi ptr [ %14, %4 ], [ %22, %15 ]
  %18 = add i32 %16, 1
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %12, i64 %19
  store ptr %17, ptr %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, %14
  br i1 %23, label %24, label %15, !llvm.loop !59

24:                                               ; preds = %15
  %25 = icmp eq i32 %9, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds ptr, ptr %7, i64 1
  %28 = getelementptr inbounds ptr, ptr %2, i64 1
  %29 = zext i32 %9 to i64
  br label %30

30:                                               ; preds = %26, %83
  %31 = phi i64 [ 0, %26 ], [ %87, %83 ]
  %32 = phi i32 [ 2, %26 ], [ %89, %83 ]
  %33 = phi i32 [ 0, %26 ], [ %88, %83 ]
  %34 = phi i8 [ 0, %26 ], [ %86, %83 ]
  %35 = phi float [ 0x47EFFFFFE0000000, %26 ], [ %85, %83 ]
  %36 = phi float [ 0x47EFFFFFE0000000, %26 ], [ %84, %83 ]
  %37 = getelementptr inbounds ptr, ptr %12, i64 %31
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = add i32 %33, 2
  %40 = icmp ult i32 %39, %9
  br i1 %40, label %41, label %83

41:                                               ; preds = %30
  %42 = zext i32 %32 to i64
  br label %43

43:                                               ; preds = %41, %76
  %44 = phi i64 [ %42, %41 ], [ %80, %76 ]
  %45 = phi i8 [ %34, %41 ], [ %79, %76 ]
  %46 = phi float [ %35, %41 ], [ %78, %76 ]
  %47 = phi float [ %36, %41 ], [ %77, %76 ]
  %48 = getelementptr inbounds ptr, ptr %12, i64 %44
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef %38, ptr noundef %49) #8, !range !46
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %53 = call float @BM_face_calc_normal_subset(ptr noundef %38, ptr noundef %49, ptr noundef nonnull %5) #7
  %54 = fcmp une float %53, 0.000000e+00
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = call float @BM_face_calc_normal_subset(ptr noundef %49, ptr noundef %38, ptr noundef nonnull %6) #7
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = call fastcc float @bm_face_subset_calc_planar(ptr noundef %38, ptr noundef %49, ptr noundef nonnull %5) #8
  %60 = call fastcc float @bm_face_subset_calc_planar(ptr noundef %49, ptr noundef %38, ptr noundef nonnull %6) #8
  %61 = fadd float %59, %60
  %62 = fcmp olt float %61, %46
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  store ptr %38, ptr %7, align 16, !tbaa !44
  store ptr %49, ptr %27, align 8, !tbaa !44
  call void @BM_face_splits_check_legal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #7
  %64 = load ptr, ptr %7, align 16, !tbaa !44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  store ptr %38, ptr %2, align 8, !tbaa !44
  store ptr %49, ptr %28, align 8, !tbaa !44
  %67 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi float [ %67, %66 ], [ %47, %63 ]
  %70 = phi float [ %61, %66 ], [ %46, %63 ]
  %71 = phi i8 [ 1, %66 ], [ %45, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %72

72:                                               ; preds = %58, %68, %55, %52
  %73 = phi float [ %47, %55 ], [ %47, %52 ], [ %69, %68 ], [ %47, %58 ]
  %74 = phi float [ %46, %55 ], [ %46, %52 ], [ %70, %68 ], [ %46, %58 ]
  %75 = phi i8 [ %45, %55 ], [ %45, %52 ], [ %71, %68 ], [ %45, %58 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  br label %76

76:                                               ; preds = %72, %43
  %77 = phi float [ %47, %43 ], [ %73, %72 ]
  %78 = phi float [ %46, %43 ], [ %74, %72 ]
  %79 = phi i8 [ %45, %43 ], [ %75, %72 ]
  %80 = add nuw nsw i64 %44, 1
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %9, %81
  br i1 %82, label %83, label %43, !llvm.loop !60

83:                                               ; preds = %76, %30
  %84 = phi float [ %36, %30 ], [ %77, %76 ]
  %85 = phi float [ %35, %30 ], [ %78, %76 ]
  %86 = phi i8 [ %34, %30 ], [ %79, %76 ]
  %87 = add nuw nsw i64 %31, 1
  %88 = add nuw i32 %33, 1
  %89 = add i32 %32, 1
  %90 = icmp eq i64 %87, %29
  br i1 %90, label %91, label %30, !llvm.loop !61

91:                                               ; preds = %83, %24
  %92 = phi float [ 0x47EFFFFFE0000000, %24 ], [ %84, %83 ]
  %93 = phi i8 [ 0, %24 ], [ %86, %83 ]
  store float %92, ptr %3, align 4, !tbaa !62
  ret i8 %93
}

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !64 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !69
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare float @BM_face_calc_normal_subset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_face_subset_calc_planar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef %2) #7
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = call fastcc float @dot_m3_v3_row_z(ptr noundef nonnull %4, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi float [ 0.000000e+00, %3 ], [ %21, %11 ]
  %13 = phi ptr [ %0, %3 ], [ %23, %11 ]
  %14 = phi float [ %10, %3 ], [ %18, %11 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = call fastcc float @dot_m3_v3_row_z(ptr noundef nonnull %4, ptr noundef nonnull %17) #8
  %19 = fsub float %18, %14
  %20 = call float @llvm.fabs.f32(float %19)
  %21 = fadd float %12, %20
  %22 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %11, !llvm.loop !75

25:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret float %21
}

; Function Attrs: optsize
declare void @BM_face_splits_check_legal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_m3_v3_row_z(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !76 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !62
  %5 = load float, ptr %1, align 4, !tbaa !62
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !62
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !62
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !62
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  ret float %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !43}
!46 = !{i8 0, i8 2}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = !{!"bmo_connect_nonplanar.c:bm_face_split_by_angle"}
!50 = !{!35, !37, i64 16}
!51 = !{!52, !37, i64 24}
!52 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!53 = !{!54, !37, i64 16}
!54 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !55, i64 48, !55, i64 64}
!55 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!56 = !{!"bmo_connect_nonplanar.c:bm_face_split_find"}
!57 = !{!35, !37, i64 24}
!58 = !{!52, !37, i64 56}
!59 = distinct !{!59, !43}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !38, i64 0}
!64 = !{!"bmo_connect_nonplanar.c:_bmo_elem_flag_enable"}
!65 = !{!66, !40, i64 128}
!66 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !67, i64 144, !67, i64 344, !67, i64 544, !67, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !68, i64 960, !37, i64 976, !68, i64 984, !37, i64 1000}
!67 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!68 = !{!"ListBase", !37, i64 0, !37, i64 8}
!69 = !{!70, !41, i64 0}
!70 = !{!"BMFlagLayer", !41, i64 0}
!71 = !{!"bmo_connect_nonplanar.c:BM_loop_is_adjacent"}
!72 = !{!52, !37, i64 64}
!73 = !{!"bmo_connect_nonplanar.c:bm_face_subset_calc_planar"}
!74 = !{!52, !37, i64 16}
!75 = distinct !{!75, !43}
!76 = !{!"bmo_connect_nonplanar.c:dot_m3_v3_row_z"}
