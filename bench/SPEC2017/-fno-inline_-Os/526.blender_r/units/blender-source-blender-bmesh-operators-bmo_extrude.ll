; ModuleID = 'blender/source/blender/bmesh/operators/bmo_extrude.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_extrude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"use_select_history\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"delete geom=%ff context=%i\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"duplicate geom=%fve use_select_history=%b\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"boundary_map.out\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"duplicate use_select_history=%b\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"use_keep_orig\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"delete geom=%fvef context=%i\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"face_map.out\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"edges_exclude\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"isovert_map.out\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"reverse_faces\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"extrude_face_region use_keep_orig=%b\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.calc_solidify_normals = private unnamed_addr constant [22 x i8] c"calc_solidify_normals\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"solidify\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_extrude_discrete_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BM_select_history_map_create(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %79, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %9, null
  br label %14

14:                                               ; preds = %12, %76
  %15 = phi ptr [ %10, %12 ], [ %77, %76 ]
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %17, i16 noundef signext 4) #12
  %18 = call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %15, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %20, i16 noundef signext 2) #12
  br i1 %13, label %26, label %21

21:                                               ; preds = %14
  %22 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef nonnull %15) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 2
  store ptr %18, ptr %25, align 8, !tbaa !42
  br label %26

26:                                               ; preds = %21, %24, %14
  %27 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 2
  br label %30

30:                                               ; preds = %73, %26
  %31 = phi ptr [ %29, %26 ], [ %38, %73 ]
  %32 = phi ptr [ %28, %26 ], [ %74, %73 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !45
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %32, ptr noundef %33) #10
  %34 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %37, ptr noundef %41, ptr noundef %43, ptr noundef %45, ptr noundef nonnull %15, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = load ptr, ptr %34, align 8, !tbaa !46
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %49, ptr noundef %48) #10
  %50 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr %34, align 8, !tbaa !46
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %52, ptr noundef %51) #10
  %53 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %32, ptr noundef %54) #10
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %32, ptr noundef %56) #10
  br i1 %13, label %73, label %57

57:                                               ; preds = %30
  %58 = load ptr, ptr %44, align 8, !tbaa !48
  %59 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef %58) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %42, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.BMEditSelection, ptr %59, i64 0, i32 2
  store ptr %62, ptr %63, align 8, !tbaa !42
  br label %64

64:                                               ; preds = %61, %57
  %65 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef %66) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = getelementptr inbounds %struct.BMEditSelection, ptr %67, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !42
  br label %73

73:                                               ; preds = %64, %69, %30
  %74 = load ptr, ptr %34, align 8, !tbaa !46
  %75 = icmp eq ptr %74, %28
  br i1 %75, label %76, label %30, !llvm.loop !50

76:                                               ; preds = %73
  %77 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %14, !llvm.loop !52

79:                                               ; preds = %76, %8
  %80 = icmp eq ptr %9, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  call void @BLI_ghash_free(ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #10
  br label %82

82:                                               ; preds = %81, %79
  %83 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !53
  %85 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %84, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 3) #10
  %86 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %86, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_select_history_map_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !55 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !60
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_extrude_edge_only_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #11
  %6 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 2) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %20, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %11, i16 noundef signext 1) #12
  %12 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %15, i16 noundef signext 1) #12
  %16 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %19, i16 noundef signext 1) #12
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !69

22:                                               ; preds = %8, %2
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #10
  %26 = zext i8 %25 to i32
  %27 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %24, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %26) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #10
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %29 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %28, i32 noundef 36) #10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %33 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %32, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %37, %35 ], [ %33, %31 ]
  call fastcc void @bm_extrude_disable_skin_root(ptr noundef %0, ptr noundef nonnull %36) #12
  %37 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %35, !llvm.loop !70

39:                                               ; preds = %35, %31, %22
  %40 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %41 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %40, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %94, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  %45 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  %46 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  br label %47

47:                                               ; preds = %43, %71
  %48 = phi ptr [ %41, %43 ], [ %92, %71 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %49 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %3) #10
  %50 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  br i1 %52, label %65, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  store ptr %54, ptr %5, align 16, !tbaa !45
  %60 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  store ptr %61, ptr %44, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !68
  store ptr %63, ptr %45, align 16, !tbaa !45
  %64 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  br label %71

65:                                               ; preds = %47, %55
  %66 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !68
  store ptr %67, ptr %5, align 16, !tbaa !45
  store ptr %54, ptr %44, align 8, !tbaa !45
  %68 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  store ptr %69, ptr %45, align 16, !tbaa !45
  %70 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi ptr [ %64, %59 ], [ %70, %65 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  store ptr %73, ptr %46, align 8, !tbaa !45
  %74 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #10
  call fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %74) #12
  %75 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %76, i16 noundef signext 1) #12, !range !72
  %78 = icmp eq i16 %77, 0
  %79 = select i1 %78, ptr %48, ptr %49
  %80 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %81, i16 noundef signext 2) #12
  %82 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %83, i16 noundef signext 2) #12
  %84 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %87, i16 noundef signext 2) #12
  %88 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !68
  %90 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %91, i16 noundef signext 2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %92 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %47, !llvm.loop !73

94:                                               ; preds = %71, %39
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #10
  %95 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %95, ptr noundef nonnull @.str.6, i8 noundef zeroext 11, i16 noundef signext 2) #10
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_extrude_disable_skin_root(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %1, align 8, !tbaa !75
  %5 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 36) #10
  %6 = getelementptr inbounds %struct.MVertSkin, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = and i32 %7, -2
  store i32 %8, ptr %6, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_map_value_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call ptr @BM_edge_other_loop(ptr noundef %16, ptr noundef nonnull %4) #10
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = tail call ptr @BM_edge_other_loop(ptr noundef %18, ptr noundef %10) #10
  %20 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #10
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %1, i8 noundef zeroext 2) #12
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4) #10
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %17, ptr noundef %14) #10
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef %10) #10
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef %12) #10
  br label %22

22:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !81 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !60
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_extrude_vert_indiv_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %5, i32 noundef 36) #10
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BM_select_history_map_create(ptr noundef %0) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.8, i8 noundef zeroext 1) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = icmp eq i8 %6, 0
  %16 = icmp eq ptr %11, null
  br label %17

17:                                               ; preds = %14, %41
  %18 = phi ptr [ %12, %14 ], [ %47, %41 ]
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %18, i32 noundef 0) #10
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %22, i16 noundef signext 2) #12
  br i1 %15, label %24, label %23

23:                                               ; preds = %17
  call fastcc void @bm_extrude_disable_skin_root(ptr noundef %0, ptr noundef nonnull %18) #12
  br label %24

24:                                               ; preds = %23, %17
  br i1 %16, label %30, label %25

25:                                               ; preds = %24
  %26 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %11, ptr noundef nonnull %18) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BMEditSelection, ptr %26, i64 0, i32 2
  store ptr %20, ptr %29, align 8, !tbaa !42
  br label %30

30:                                               ; preds = %25, %28, %24
  %31 = call fastcc zeroext i8 @BM_vert_is_wire_endpoint(ptr noundef nonnull %18) #12, !range !82
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, %18
  %39 = select i1 %38, ptr %18, ptr %20
  %40 = select i1 %38, ptr %20, ptr %18
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi ptr [ %20, %30 ], [ %39, %33 ]
  %43 = phi ptr [ %18, %30 ], [ %40, %33 ]
  %44 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %42, ptr noundef null, i32 noundef 0) #10
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %46, i16 noundef signext 2) #12
  %47 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %17, !llvm.loop !84

49:                                               ; preds = %41, %10
  %50 = icmp eq ptr %11, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call void @BLI_ghash_free(ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #10
  br label %52

52:                                               ; preds = %51, %49
  %53 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %53, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 2) #10
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %53, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, i16 noundef signext 2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_vert_is_wire_endpoint(ptr noundef readonly %0) unnamed_addr #5 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 5
  %11 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, %0
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds %struct.BMDiskLink, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = icmp eq ptr %16, %3
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %1, %5, %9
  %20 = phi i8 [ %18, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_extrude_face_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #10
  %13 = zext i8 %12 to i32
  %14 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %11, ptr noundef nonnull @.str.11, i32 noundef %13) #10
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 10, i16 noundef signext 1) #10
  %15 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %17, %45
  %21 = phi ptr [ %47, %45 ], [ %18, %17 ]
  %22 = phi i8 [ %46, %45 ], [ 0, %17 ]
  %23 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %24, i16 noundef signext 1) #12, !range !72
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %20
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %21) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %27, %37
  %31 = phi ptr [ %39, %37 ], [ %28, %27 ]
  %32 = phi i32 [ %38, %37 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %34, i16 noundef signext 1) #12, !range !72
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %32, 1
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !87

41:                                               ; preds = %37
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %23, align 8, !tbaa !62
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %44, i16 noundef signext 4) #12
  br label %45

45:                                               ; preds = %30, %27, %41, %43, %20
  %46 = phi i8 [ %22, %20 ], [ %22, %43 ], [ %22, %41 ], [ %22, %27 ], [ 1, %30 ]
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !88

49:                                               ; preds = %45, %17, %2
  %50 = phi i8 [ 0, %2 ], [ 0, %17 ], [ %46, %45 ]
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %91, label %53

53:                                               ; preds = %49, %88
  %54 = phi ptr [ %89, %88 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58

58:                                               ; preds = %53
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %54) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %85, label %61

61:                                               ; preds = %58, %70
  %62 = phi ptr [ %71, %70 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %64, i16 noundef signext 1) #12, !range !72
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %64, i16 noundef signext 4) #12, !range !72
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %61, !llvm.loop !89

73:                                               ; preds = %61, %67
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %54) #12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %73, %82
  %77 = phi ptr [ %83, %82 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.BMFace, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %79, i16 noundef signext 1) #12, !range !72
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %76, !llvm.loop !90

85:                                               ; preds = %70, %58
  %86 = getelementptr inbounds %struct.BMVert, ptr %54, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %87, i16 noundef signext 4) #12
  br label %88

88:                                               ; preds = %82, %76, %73, %53, %85
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %53, !llvm.loop !91

91:                                               ; preds = %88, %49
  %92 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %91, %101
  %95 = phi ptr [ %102, %101 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %97, i16 noundef signext 1) #12, !range !72
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %97, i16 noundef signext 4) #12
  br label %101

101:                                              ; preds = %94, %100
  %102 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %94, !llvm.loop !92

104:                                              ; preds = %101, %91
  %105 = icmp eq i8 %50, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i32, ptr %10, align 8, !tbaa !53
  %108 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %107, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 6) #10
  br label %109

109:                                              ; preds = %106, %104
  %110 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !93
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef %111) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  %112 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %113 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %112, i32 noundef 36) #10
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %117 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %116, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  call fastcc void @bm_extrude_disable_skin_root(ptr noundef %0, ptr noundef nonnull %120) #12
  %121 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #10
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %119, !llvm.loop !94

123:                                              ; preds = %119, %115, %109
  %124 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %125 = call ptr @BMO_slot_get(ptr noundef nonnull %124, ptr noundef nonnull @.str.15) #10
  %126 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %127 = load ptr, ptr %126, align 8, !tbaa !95
  %128 = icmp eq ptr %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.BMFace, ptr %127, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !34
  %132 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef nonnull %0, ptr noundef %131, i16 noundef signext 1) #12, !range !72
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %125, ptr noundef nonnull %127) #12
  store ptr %135, ptr %126, align 8, !tbaa !95
  br label %136

136:                                              ; preds = %134, %129, %123
  %137 = icmp eq i8 %50, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %136
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %4) #10
  br label %152

139:                                              ; preds = %136
  %140 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #12
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139, %149
  %143 = phi ptr [ %150, %149 ], [ %140, %139 ]
  %144 = getelementptr inbounds %struct.BMFace, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !34
  %146 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %145, i16 noundef signext 1) #12, !range !72
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef nonnull %143) #10
  br label %149

149:                                              ; preds = %142, %148
  %150 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #12
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %142, !llvm.loop !96

152:                                              ; preds = %149, %139, %138
  %153 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %154 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !93
  call void @_bmo_slot_copy(ptr noundef nonnull %124, ptr noundef nonnull @.str.6, ptr noundef nonnull %153, ptr noundef nonnull @.str.6, ptr noundef %155) #10
  %156 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.16) #10
  %157 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %124, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %235, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 1
  %161 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 2
  %162 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 3
  br label %163

163:                                              ; preds = %159, %232
  %164 = phi ptr [ %157, %159 ], [ %233, %232 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  %165 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %164) #12, !range !82
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %163
  %168 = call fastcc zeroext i8 @BMO_slot_map_contains(ptr noundef %156, ptr noundef nonnull %164) #12
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !65
  %173 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !68
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %164) #10
  %175 = getelementptr inbounds %struct.BMVert, ptr %172, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !83
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %172) #10
  br label %179

179:                                              ; preds = %178, %170
  %180 = getelementptr inbounds %struct.BMVert, ptr %174, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !83
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %232

183:                                              ; preds = %179
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %174) #10
  br label %232

184:                                              ; preds = %167, %163
  %185 = call fastcc zeroext i8 @BMO_slot_map_contains(ptr noundef %156, ptr noundef nonnull %164) #12
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %232

187:                                              ; preds = %184
  %188 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %5) #10
  %189 = icmp eq ptr %188, null
  br i1 %189, label %232, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !71
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !71
  %197 = icmp eq ptr %196, null
  br i1 %197, label %216, label %207

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !48
  %201 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !65
  %203 = icmp eq ptr %200, %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !65
  br label %222

207:                                              ; preds = %194
  %208 = getelementptr inbounds %struct.BMLoop, ptr %196, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !48
  %210 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !65
  %212 = icmp eq ptr %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !65
  br label %222

216:                                              ; preds = %198, %194, %207
  %217 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 2
  %218 = load <2 x ptr>, ptr %217, align 8, !tbaa !45
  store <2 x ptr> %218, ptr %9, align 16, !tbaa !45
  %219 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !68
  store ptr %220, ptr %161, align 16, !tbaa !45
  %221 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 2
  br label %228

222:                                              ; preds = %213, %204
  %223 = phi ptr [ %202, %204 ], [ %215, %213 ]
  %224 = phi ptr [ %206, %204 ], [ %209, %213 ]
  %225 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !68
  store ptr %226, ptr %9, align 16, !tbaa !45
  store ptr %224, ptr %160, align 8, !tbaa !45
  store ptr %223, ptr %161, align 16, !tbaa !45
  %227 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 3
  br label %228

228:                                              ; preds = %222, %216
  %229 = phi ptr [ %227, %222 ], [ %221, %216 ]
  %230 = load ptr, ptr %229, align 8, !tbaa !45
  store ptr %230, ptr %162, align 8, !tbaa !45
  %231 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #10
  call fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %231) #12
  br label %232

232:                                              ; preds = %187, %184, %179, %183, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  %233 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #10
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %163, !llvm.loop !97

235:                                              ; preds = %232, %152
  %236 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %124, ptr noundef nonnull @.str.17, i8 noundef zeroext 0) #10
  %237 = icmp eq ptr %236, null
  br i1 %237, label %257, label %238

238:                                              ; preds = %235, %251
  %239 = phi ptr [ %255, %251 ], [ %236, %235 ]
  %240 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %5) #10
  %241 = call fastcc zeroext i8 @BM_vert_is_wire_endpoint(ptr noundef nonnull %239) #12, !range !82
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 4
  %245 = load ptr, ptr %244, align 8, !tbaa !83
  %246 = getelementptr inbounds %struct.BMEdge, ptr %245, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !65
  %248 = icmp eq ptr %247, %239
  %249 = select i1 %248, ptr %240, ptr %239
  %250 = select i1 %248, ptr %239, ptr %240
  br label %251

251:                                              ; preds = %243, %238
  %252 = phi ptr [ %239, %238 ], [ %249, %243 ]
  %253 = phi ptr [ %240, %238 ], [ %250, %243 ]
  %254 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %252, ptr noundef %253, ptr noundef null, i32 noundef 2) #10
  %255 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #10
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %238, !llvm.loop !98

257:                                              ; preds = %251, %235
  br i1 %137, label %259, label %258

258:                                              ; preds = %257
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %259

259:                                              ; preds = %258, %257
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #12
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_elem_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !103 {
  %3 = tail call fastcc ptr @BMO_slot_map_data_get(ptr noundef %0, ptr noundef %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !104 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @BMO_slot_map_contains(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !105 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %4, ptr noundef %1) #10
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_solidify_face_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #11
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.18) #10
  %6 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !53
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull @.str.19) #10
  %8 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef %9) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #10
  %10 = load i32, ptr %6, align 8, !tbaa !53
  %11 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %10, ptr noundef nonnull @.str.20, i32 noundef 1) #10
  %12 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef %13) #10
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #10
  %14 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #10
  call fastcc void @calc_solidify_normals(ptr noundef %0) #12
  call fastcc void @solidify_add_thickness(ptr noundef %0, float noundef %5) #12
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  call void @_bmo_slot_copy(ptr noundef nonnull %14, ptr noundef nonnull @.str.6, ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef %17) #10
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_solidify_normals(ptr noundef %0) unnamed_addr #0 !PGOFuncName !107 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %6(i64 noundef %10, ptr noundef nonnull @__func__.calc_solidify_normals) #10
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %1 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %15) #12
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !109

18:                                               ; preds = %14, %1
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 2) #10
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %18, %49
  %22 = phi ptr [ %50, %49 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %24, i16 noundef signext 1) #12, !range !72
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %21
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 10, ptr noundef nonnull %22) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %47, %30 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %33, i16 noundef signext 1) #12
  %34 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %37, i16 noundef signext 1) #12
  %38 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #12
  %42 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %31) #12
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 4, !tbaa !110
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %30, !llvm.loop !111

49:                                               ; preds = %30, %27, %21
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %21, !llvm.loop !112

52:                                               ; preds = %49, %18
  %53 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %52, %79
  %56 = phi ptr [ %80, %79 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %58, i16 noundef signext 1) #12, !range !72
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %56) #12
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %11, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !110
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !110
  %67 = icmp eq i32 %65, 0
  %68 = icmp sgt i32 %65, 2
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %58, i16 noundef signext 2) #12
  %71 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.BMVert, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %74, i16 noundef signext 2) #12
  %75 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !66
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %78, i16 noundef signext 2) #12
  br label %79

79:                                               ; preds = %70, %61, %55
  %80 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %55, !llvm.loop !113

82:                                               ; preds = %79, %52
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %83(ptr noundef %11) #10
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %82, %98
  %87 = phi ptr [ %99, %98 ], [ %84, %82 ]
  %88 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %87) #10
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !66
  br i1 %89, label %92, label %93

92:                                               ; preds = %86
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %91, i16 noundef signext 2) #12
  br label %98

93:                                               ; preds = %86
  %94 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %91, i16 noundef signext 1) #12, !range !72
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 3
  call fastcc void @zero_v3(ptr noundef nonnull %97) #12
  br label %98

98:                                               ; preds = %93, %96, %92
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %86, !llvm.loop !114

101:                                              ; preds = %98, %82
  %102 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #12
  %103 = icmp eq ptr %102, null
  br i1 %103, label %159, label %104

104:                                              ; preds = %101, %156
  %105 = phi ptr [ %157, %156 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  %108 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %107, i16 noundef signext 1) #12, !range !72
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %156, label %110

110:                                              ; preds = %104
  %111 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %107, i16 noundef signext 2) #12, !range !72
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %156

113:                                              ; preds = %110
  %114 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %105) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %145, label %116

116:                                              ; preds = %113, %116
  %117 = phi ptr [ %128, %116 ], [ null, %113 ]
  %118 = phi ptr [ %126, %116 ], [ null, %113 ]
  %119 = phi ptr [ %129, %116 ], [ %114, %113 ]
  %120 = getelementptr inbounds %struct.BMFace, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  %122 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %121, i16 noundef signext 1) #12, !range !72
  %123 = icmp eq i16 %122, 0
  %124 = icmp eq ptr %118, null
  %125 = select i1 %124, ptr %119, ptr %118
  %126 = select i1 %123, ptr %118, ptr %125
  %127 = select i1 %123, i1 true, i1 %124
  %128 = select i1 %127, ptr %117, ptr %119
  %129 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %116, !llvm.loop !115

131:                                              ; preds = %116
  %132 = icmp eq ptr %128, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.BMFace, ptr %126, i64 0, i32 4
  %135 = getelementptr inbounds %struct.BMFace, ptr %128, i64 0, i32 4
  %136 = call float @angle_normalized_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %135) #10
  %137 = fcmp ogt float %136, 0.000000e+00
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %134, ptr noundef nonnull %135) #12
  %139 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #12
  br label %148

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !65
  call fastcc void @_bm_elem_flag_disable(ptr noundef %142, i8 noundef zeroext 16) #12
  %143 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !68
  call fastcc void @_bm_elem_flag_disable(ptr noundef %144, i8 noundef zeroext 16) #12
  br label %156

145:                                              ; preds = %113, %131
  %146 = phi ptr [ %126, %131 ], [ null, %113 ]
  %147 = getelementptr inbounds %struct.BMFace, ptr %146, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %147) #12
  br label %148

148:                                              ; preds = %138, %145
  %149 = phi float [ %136, %138 ], [ 0x3FF921FB60000000, %145 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %149) #12
  %150 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !65
  %152 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %152, ptr noundef nonnull %5) #12
  %153 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !68
  %155 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %155, ptr noundef nonnull %5) #12
  br label %156

156:                                              ; preds = %140, %110, %104, %148
  %157 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %104, !llvm.loop !116

159:                                              ; preds = %156, %101
  %160 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %197, label %162

162:                                              ; preds = %159, %194
  %163 = phi ptr [ %195, %194 ], [ %160, %159 ]
  %164 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !66
  %166 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %165, i16 noundef signext 1) #12, !range !72
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %194, label %168

168:                                              ; preds = %162
  %169 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %165, i16 noundef signext 2) #12, !range !72
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  call void @BM_vert_normal_update(ptr noundef nonnull %163) #10
  br label %194

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 3
  %174 = call fastcc float @normalize_v3(ptr noundef nonnull %173) #12
  %175 = fcmp oeq float %174, 0.000000e+00
  br i1 %175, label %176, label %194

176:                                              ; preds = %172
  %177 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %163) #12
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %163) #12
  %181 = icmp eq ptr %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %179, %188
  %183 = phi ptr [ %189, %188 ], [ %180, %179 ]
  %184 = getelementptr inbounds %struct.BMFace, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %185, i16 noundef signext 1) #12, !range !72
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %182, !llvm.loop !117

191:                                              ; preds = %188, %182, %179
  %192 = phi ptr [ null, %179 ], [ %183, %182 ], [ null, %188 ]
  %193 = getelementptr inbounds %struct.BMFace, ptr %192, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %173, ptr noundef nonnull %193) #12
  br label %194

194:                                              ; preds = %171, %191, %176, %172, %162
  %195 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #12
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %162, !llvm.loop !118

197:                                              ; preds = %194, %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solidify_add_thickness(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [32 x float], align 16
  %6 = alloca %struct.BLI_Buffer, align 8
  %7 = alloca [32 x ptr], align 16
  %8 = alloca %struct.BLI_Buffer, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %10 = load i32, ptr %0, align 8, !tbaa !120
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.21) #10
  %14 = load i32, ptr %0, align 8, !tbaa !120
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %13, i64 %15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  store ptr %5, ptr %6, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 1
  store <4 x i32> <i32 4, i32 0, i32 32, i32 1>, ptr %17, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  store ptr %7, ptr %8, align 8, !tbaa !121
  %18 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 32, i32 1>, ptr %18, align 8, !tbaa !110
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %2, %77
  %22 = phi ptr [ %78, %77 ], [ %19, %2 ]
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef nonnull %0, ptr noundef %24, i16 noundef signext 1) #12, !range !72
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !123
  call void @BLI_buffer_resize(ptr noundef nonnull %6, i32 noundef %29) #10
  %30 = load i32, ptr %28, align 8, !tbaa !123
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %6, align 8
  %33 = select i1 %31, ptr null, ptr %32
  call void @BLI_buffer_resize(ptr noundef nonnull %8, i32 noundef %30) #10
  %34 = load i32, ptr %28, align 8, !tbaa !123
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %8, align 8
  %37 = select i1 %35, ptr null, ptr %36
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %27, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %27 ]
  %42 = phi ptr [ %47, %40 ], [ %38, %27 ]
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds ptr, ptr %37, i64 %41
  store ptr %45, ptr %46, align 8, !tbaa !45
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %48 = add nuw i64 %41, 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %40, !llvm.loop !124

50:                                               ; preds = %40, %27
  %51 = load i32, ptr %28, align 8, !tbaa !123
  call void @angle_poly_v3(ptr noundef %33, ptr noundef %37, i32 noundef %51) #10
  %52 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 4
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %74, %56 ]
  %58 = phi ptr [ %52, %54 ], [ %75, %56 ]
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = call fastcc i32 @_bm_elem_index_get(ptr noundef %60) #12
  %62 = getelementptr inbounds float, ptr %33, i64 %57
  %63 = load float, ptr %62, align 4, !tbaa !125
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds float, ptr %16, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !125
  %67 = fadd float %63, %66
  store float %67, ptr %65, align 4, !tbaa !125
  %68 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 3
  %69 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef nonnull %68, ptr noundef nonnull %55) #12
  %70 = load float, ptr %62, align 4, !tbaa !125
  %71 = getelementptr inbounds float, ptr %13, i64 %64
  %72 = load float, ptr %71, align 4, !tbaa !125
  %73 = call float @llvm.fmuladd.f32(float %69, float %70, float %72)
  store float %73, ptr %71, align 4, !tbaa !125
  %74 = add nuw i64 %57, 1
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %56, !llvm.loop !127

77:                                               ; preds = %56, %50, %21
  %78 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %21, !llvm.loop !128

80:                                               ; preds = %77, %2
  call void @_bli_buffer_free(ptr noundef nonnull %6) #10
  call void @_bli_buffer_free(ptr noundef nonnull %8) #10
  %81 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %100, label %83

83:                                               ; preds = %80, %97
  %84 = phi ptr [ %98, %97 ], [ %81, %80 ]
  %85 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %84) #12
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr %16, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !125
  %89 = fcmp une float %88, 0.000000e+00
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %92 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3
  %93 = getelementptr inbounds float, ptr %13, i64 %86
  %94 = load float, ptr %93, align 4, !tbaa !125
  %95 = fdiv float %94, %88
  %96 = fmul float %95, %1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %91, ptr noundef nonnull %92, float noundef %96) #12
  br label %97

97:                                               ; preds = %83, %90
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %83, !llvm.loop !129

100:                                              ; preds = %97, %80
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %101(ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !130 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !131
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !132 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !133
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !101
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !101
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !101
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !101
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !101
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !101
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !101
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !101
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !106
  tail call void %28(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_data_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %4, ptr noundef %1) #10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !131
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !141
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !142 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !125
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !143 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = load float, ptr %2, align 4, !tbaa !125
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !125
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !125
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !144 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !145 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !125
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !146 {
  %3 = load float, ptr %1, align 4, !tbaa !125
  store float %3, ptr %0, align 4, !tbaa !125
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !147 {
  %3 = load float, ptr %1, align 4, !tbaa !125
  %4 = load float, ptr %0, align 4, !tbaa !125
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !125
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !125
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !125
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !148 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !131
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !149 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #10
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !150 {
  %3 = load float, ptr %0, align 4, !tbaa !125
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !151 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !125
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !125
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !125
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @angle_poly_v3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @shell_v3v3_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !152 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #12
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fcmp olt float %4, 0x3E45798EE0000000
  %6 = fdiv float 1.000000e+00, %4
  %7 = select i1 %5, float 1.000000e+00, float %6
  ret float %7
}

; Function Attrs: optsize
declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !153 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = load float, ptr %0, align 4, !tbaa !125
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !125
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !125
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !125
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !125
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!43, !37, i64 16}
!43 = !{!"BMEditSelection", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24}
!44 = !{!35, !37, i64 24}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !37, i64 56}
!47 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!48 = !{!47, !37, i64 16}
!49 = !{!47, !37, i64 24}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!54, !40, i64 1304}
!54 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!55 = !{!"bmo_extrude.c:_bmo_elem_flag_enable"}
!56 = !{!57, !40, i64 128}
!57 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !58, i64 144, !58, i64 344, !58, i64 544, !58, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !59, i64 960, !37, i64 976, !59, i64 984, !37, i64 1000}
!58 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!59 = !{!"ListBase", !37, i64 0, !37, i64 8}
!60 = !{!61, !41, i64 0}
!61 = !{!"BMFlagLayer", !41, i64 0}
!62 = !{!63, !37, i64 16}
!63 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !64, i64 48, !64, i64 64}
!64 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!65 = !{!63, !37, i64 24}
!66 = !{!67, !37, i64 16}
!67 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!68 = !{!63, !37, i64 32}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = !{!63, !37, i64 40}
!72 = !{i16 0, i16 5}
!73 = distinct !{!73, !51}
!74 = !{!"bmo_extrude.c:bm_extrude_disable_skin_root"}
!75 = !{!67, !37, i64 0}
!76 = !{!77, !40, i64 12}
!77 = !{!"MVertSkin", !38, i64 0, !40, i64 12}
!78 = !{!"bmo_extrude.c:bm_extrude_copy_face_loop_attributes"}
!79 = !{!47, !37, i64 40}
!80 = !{!47, !37, i64 32}
!81 = !{!"bmo_extrude.c:_bmo_elem_flag_test"}
!82 = !{i8 0, i8 2}
!83 = !{!67, !37, i64 48}
!84 = distinct !{!84, !51}
!85 = !{!"bmo_extrude.c:BM_vert_is_wire_endpoint"}
!86 = !{!63, !37, i64 48}
!87 = distinct !{!87, !51}
!88 = distinct !{!88, !51}
!89 = distinct !{!89, !51}
!90 = distinct !{!90, !51}
!91 = distinct !{!91, !51}
!92 = distinct !{!92, !51}
!93 = !{!54, !37, i64 1288}
!94 = distinct !{!94, !51}
!95 = !{!57, !37, i64 976}
!96 = distinct !{!96, !51}
!97 = distinct !{!97, !51}
!98 = distinct !{!98, !51}
!99 = !{!"bmo_extrude.c:BM_iter_new"}
!100 = !{!"bmo_extrude.c:BM_iter_step"}
!101 = !{!102, !37, i64 48}
!102 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!103 = !{!"bmo_extrude.c:BMO_slot_map_elem_get"}
!104 = !{!"bmo_extrude.c:BM_edge_is_wire"}
!105 = !{!"bmo_extrude.c:BMO_slot_map_contains"}
!106 = !{!38, !38, i64 0}
!107 = !{!"bmo_extrude.c:calc_solidify_normals"}
!108 = !{!57, !40, i64 4}
!109 = distinct !{!109, !51}
!110 = !{!40, !40, i64 0}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !51}
!117 = distinct !{!117, !51}
!118 = distinct !{!118, !51}
!119 = !{!"bmo_extrude.c:solidify_add_thickness"}
!120 = !{!57, !40, i64 0}
!121 = !{!122, !37, i64 0}
!122 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!123 = !{!35, !40, i64 32}
!124 = distinct !{!124, !51}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !38, i64 0}
!127 = distinct !{!127, !51}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !51}
!130 = !{!"bmo_extrude.c:_bm_elem_flag_disable"}
!131 = !{!36, !38, i64 13}
!132 = !{!"bmo_extrude.c:BM_iter_init"}
!133 = !{!102, !38, i64 60}
!134 = !{!102, !37, i64 40}
!135 = !{!57, !37, i64 32}
!136 = !{!57, !37, i64 40}
!137 = !{!57, !37, i64 56}
!138 = !{!"bmo_extrude.c:BMO_slot_map_data_get"}
!139 = !{!"bmo_extrude.c:_bm_elem_flag_enable"}
!140 = !{!"bmo_extrude.c:_bm_elem_index_get"}
!141 = !{!36, !40, i64 8}
!142 = !{!"bmo_extrude.c:zero_v3"}
!143 = !{!"bmo_extrude.c:add_v3_v3v3"}
!144 = !{!"bmo_extrude.c:normalize_v3"}
!145 = !{!"bmo_extrude.c:mul_v3_fl"}
!146 = !{!"bmo_extrude.c:copy_v3_v3"}
!147 = !{!"bmo_extrude.c:add_v3_v3"}
!148 = !{!"bmo_extrude.c:_bm_elem_flag_test"}
!149 = !{!"bmo_extrude.c:normalize_v3_v3"}
!150 = !{!"bmo_extrude.c:dot_v3v3"}
!151 = !{!"bmo_extrude.c:mul_v3_v3fl"}
!152 = !{!"bmo_extrude.c:shell_v3v3_normalized_to_dist"}
!153 = !{!"bmo_extrude.c:madd_v3_v3fl"}
