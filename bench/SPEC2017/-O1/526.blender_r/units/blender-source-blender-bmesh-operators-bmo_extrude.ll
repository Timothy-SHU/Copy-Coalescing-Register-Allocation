; ModuleID = 'blender/source/blender/bmesh/operators/bmo_extrude.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_extrude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
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

; Function Attrs: nounwind uwtable
define dso_local void @bmo_extrude_discrete_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BM_select_history_map_create(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %14 = icmp eq ptr %9, null
  br label %15

15:                                               ; preds = %12, %89
  %16 = phi ptr [ %10, %12 ], [ %90, %89 ]
  %17 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load i32, ptr %13, align 8, !tbaa !42
  %20 = sext i32 %19 to i64
  %21 = getelementptr %struct.BMFlagLayer, ptr %18, i64 %20
  %22 = getelementptr %struct.BMFlagLayer, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !46
  %24 = or i16 %23, 4
  store i16 %24, ptr %22, align 2, !tbaa !46
  %25 = call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %16, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load i32, ptr %13, align 8, !tbaa !42
  %29 = sext i32 %28 to i64
  %30 = getelementptr %struct.BMFlagLayer, ptr %27, i64 %29
  %31 = getelementptr %struct.BMFlagLayer, ptr %30, i64 -1
  %32 = load i16, ptr %31, align 2, !tbaa !46
  %33 = or i16 %32, 2
  store i16 %33, ptr %31, align 2, !tbaa !46
  br i1 %14, label %39, label %34

34:                                               ; preds = %15
  %35 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef nonnull %16) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMEditSelection, ptr %35, i64 0, i32 2
  store ptr %25, ptr %38, align 8, !tbaa !48
  br label %39

39:                                               ; preds = %34, %37, %15
  %40 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 2
  br label %43

43:                                               ; preds = %86, %39
  %44 = phi ptr [ %42, %39 ], [ %51, %86 ]
  %45 = phi ptr [ %41, %39 ], [ %87, %86 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !51
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %45, ptr noundef %46) #5
  %47 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %50, ptr noundef %54, ptr noundef %56, ptr noundef %58, ptr noundef nonnull %16, i32 noundef 0) #5
  %60 = getelementptr inbounds %struct.BMFace, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = load ptr, ptr %47, align 8, !tbaa !52
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %62, ptr noundef %61) #5
  %63 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = load ptr, ptr %47, align 8, !tbaa !52
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %65, ptr noundef %64) #5
  %66 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %45, ptr noundef %67) #5
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %45, ptr noundef %69) #5
  br i1 %14, label %86, label %70

70:                                               ; preds = %43
  %71 = load ptr, ptr %57, align 8, !tbaa !54
  %72 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef %71) #5
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %55, align 8, !tbaa !54
  %76 = getelementptr inbounds %struct.BMEditSelection, ptr %72, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !48
  br label %77

77:                                               ; preds = %74, %70
  %78 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  %80 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %9, ptr noundef %79) #5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = getelementptr inbounds %struct.BMEditSelection, ptr %80, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !48
  br label %86

86:                                               ; preds = %77, %82, %43
  %87 = load ptr, ptr %47, align 8, !tbaa !52
  %88 = icmp eq ptr %87, %41
  br i1 %88, label %89, label %43, !llvm.loop !56

89:                                               ; preds = %86
  %90 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %15, !llvm.loop !59

92:                                               ; preds = %89, %8
  %93 = icmp eq ptr %9, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  call void @BLI_ghash_free(ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #5
  br label %95

95:                                               ; preds = %94, %92
  %96 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !60
  %98 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %97, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 3) #5
  %99 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %99, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_select_history_map_create(ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_extrude_edge_only_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  %6 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 2) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %36, %10 ]
  %12 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = load i32, ptr %9, align 8, !tbaa !42
  %15 = sext i32 %14 to i64
  %16 = getelementptr %struct.BMFlagLayer, ptr %13, i64 %15
  %17 = getelementptr %struct.BMFlagLayer, ptr %16, i64 -1
  %18 = load i16, ptr %17, align 2, !tbaa !46
  %19 = or i16 %18, 1
  store i16 %19, ptr %17, align 2, !tbaa !46
  %20 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = getelementptr %struct.BMFlagLayer, ptr %23, i64 %15
  %25 = getelementptr %struct.BMFlagLayer, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !46
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !46
  %28 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !66
  %32 = getelementptr %struct.BMFlagLayer, ptr %31, i64 %15
  %33 = getelementptr %struct.BMFlagLayer, ptr %32, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !46
  %35 = or i16 %34, 1
  store i16 %35, ptr %33, align 2, !tbaa !46
  %36 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !69

38:                                               ; preds = %10, %2
  %39 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %42 = zext i8 %41 to i32
  %43 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %40, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %42) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #5
  %44 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %45 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %44, i32 noundef 36) #5
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %49 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %48, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47, %51
  %52 = phi ptr [ %58, %51 ], [ %49, %47 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %44, ptr noundef %53, i32 noundef 36) #5
  %55 = getelementptr inbounds %struct.MVertSkin, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !71
  %57 = and i32 %56, -2
  store i32 %57, ptr %55, align 4, !tbaa !71
  %58 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %51, !llvm.loop !73

60:                                               ; preds = %51, %47, %38
  %61 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %62 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %61, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %143, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  %66 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  %67 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  %68 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  %69 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  %70 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  %71 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %72

72:                                               ; preds = %64, %98
  %73 = phi ptr [ %62, %64 ], [ %141, %98 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #5
  %74 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %3) #5
  %75 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !74
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  %83 = icmp eq ptr %80, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  store ptr %80, ptr %5, align 16, !tbaa !51
  %85 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !68
  store ptr %86, ptr %65, align 8, !tbaa !51
  %87 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !68
  store ptr %88, ptr %66, align 16, !tbaa !51
  %89 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 2
  br label %98

90:                                               ; preds = %78, %72
  %91 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !68
  store ptr %92, ptr %5, align 16, !tbaa !51
  %93 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !65
  store ptr %94, ptr %68, align 8, !tbaa !51
  %95 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !65
  store ptr %96, ptr %69, align 16, !tbaa !51
  %97 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 3
  br label %98

98:                                               ; preds = %90, %84
  %99 = phi ptr [ %97, %90 ], [ %89, %84 ]
  %100 = phi ptr [ %70, %90 ], [ %67, %84 ]
  %101 = load ptr, ptr %99, align 8, !tbaa !51
  store ptr %101, ptr %100, align 8, !tbaa !51
  %102 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #5
  call fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %102)
  %103 = getelementptr inbounds %struct.BMEdge, ptr %73, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !62
  %105 = load i32, ptr %71, align 8, !tbaa !42
  %106 = sext i32 %105 to i64
  %107 = getelementptr %struct.BMFlagLayer, ptr %104, i64 %106
  %108 = getelementptr %struct.BMFlagLayer, ptr %107, i64 -1
  %109 = load i16, ptr %108, align 2, !tbaa !46
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %111, ptr %73, ptr %74
  %113 = getelementptr inbounds %struct.BMFace, ptr %102, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = getelementptr %struct.BMFlagLayer, ptr %114, i64 %106
  %116 = getelementptr %struct.BMFlagLayer, ptr %115, i64 -1
  %117 = load i16, ptr %116, align 2, !tbaa !46
  %118 = or i16 %117, 2
  store i16 %118, ptr %116, align 2, !tbaa !46
  %119 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !62
  %121 = getelementptr %struct.BMFlagLayer, ptr %120, i64 %106
  %122 = getelementptr %struct.BMFlagLayer, ptr %121, i64 -1
  %123 = load i16, ptr %122, align 2, !tbaa !46
  %124 = or i16 %123, 2
  store i16 %124, ptr %122, align 2, !tbaa !46
  %125 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  %127 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !66
  %129 = getelementptr %struct.BMFlagLayer, ptr %128, i64 %106
  %130 = getelementptr %struct.BMFlagLayer, ptr %129, i64 -1
  %131 = load i16, ptr %130, align 2, !tbaa !46
  %132 = or i16 %131, 2
  store i16 %132, ptr %130, align 2, !tbaa !46
  %133 = getelementptr inbounds %struct.BMEdge, ptr %112, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !68
  %135 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !66
  %137 = getelementptr %struct.BMFlagLayer, ptr %136, i64 %106
  %138 = getelementptr %struct.BMFlagLayer, ptr %137, i64 -1
  %139 = load i16, ptr %138, align 2, !tbaa !46
  %140 = or i16 %139, 2
  store i16 %140, ptr %138, align 2, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  %141 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %72, !llvm.loop !75

143:                                              ; preds = %98, %60
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #5
  %144 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %144, ptr noundef nonnull @.str.6, i8 noundef zeroext 11, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMO_iter_map_value_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = tail call ptr @BM_edge_other_loop(ptr noundef %16, ptr noundef %4) #5
  %18 = load ptr, ptr %15, align 8, !tbaa !55
  %19 = tail call ptr @BM_edge_other_loop(ptr noundef %18, ptr noundef %10) #5
  %20 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %21, ptr noundef %1) #5
  %22 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !78
  %24 = and i8 %23, -3
  store i8 %24, ptr %22, align 1, !tbaa !78
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %17, ptr noundef %4) #5
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %17, ptr noundef %14) #5
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef %10) #5
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef %12) #5
  br label %25

25:                                               ; preds = %2, %8
  ret void
}

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_extrude_vert_indiv_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %5, i32 noundef 36) #5
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BM_select_history_map_create(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.8, i8 noundef zeroext 1) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %16 = icmp eq i8 %6, 0
  %17 = icmp eq ptr %11, null
  br label %18

18:                                               ; preds = %14, %69
  %19 = phi ptr [ %12, %14 ], [ %81, %69 ]
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %19, i32 noundef 0) #5
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = load i32, ptr %15, align 8, !tbaa !42
  %25 = sext i32 %24 to i64
  %26 = getelementptr %struct.BMFlagLayer, ptr %23, i64 %25
  %27 = getelementptr %struct.BMFlagLayer, ptr %26, i64 -1
  %28 = load i16, ptr %27, align 2, !tbaa !46
  %29 = or i16 %28, 2
  store i16 %29, ptr %27, align 2, !tbaa !46
  br i1 %16, label %36, label %30

30:                                               ; preds = %18
  %31 = load ptr, ptr %19, align 8, !tbaa !70
  %32 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %5, ptr noundef %31, i32 noundef 36) #5
  %33 = getelementptr inbounds %struct.MVertSkin, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !71
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 4, !tbaa !71
  br label %36

36:                                               ; preds = %30, %18
  br i1 %17, label %42, label %37

37:                                               ; preds = %36
  %38 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %11, ptr noundef nonnull %19) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.BMEditSelection, ptr %38, i64 0, i32 2
  store ptr %21, ptr %41, align 8, !tbaa !48
  br label %42

42:                                               ; preds = %37, %40, %36
  %43 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 5
  %52 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = icmp eq ptr %53, %19
  %55 = zext i1 %54 to i64
  %56 = getelementptr inbounds %struct.BMDiskLink, ptr %51, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !80
  %58 = icmp eq ptr %57, %44
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %42, %46, %50
  %61 = phi i8 [ %59, %50 ], [ 0, %46 ], [ 0, %42 ]
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = icmp eq ptr %65, %19
  %67 = select i1 %66, ptr %19, ptr %21
  %68 = select i1 %66, ptr %21, ptr %19
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi ptr [ %21, %60 ], [ %67, %63 ]
  %71 = phi ptr [ %19, %60 ], [ %68, %63 ]
  %72 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %71, ptr noundef %70, ptr noundef null, i32 noundef 0) #5
  %73 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = load i32, ptr %15, align 8, !tbaa !42
  %76 = sext i32 %75 to i64
  %77 = getelementptr %struct.BMFlagLayer, ptr %74, i64 %76
  %78 = getelementptr %struct.BMFlagLayer, ptr %77, i64 -1
  %79 = load i16, ptr %78, align 2, !tbaa !46
  %80 = or i16 %79, 2
  store i16 %80, ptr %78, align 2, !tbaa !46
  %81 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %18, !llvm.loop !81

83:                                               ; preds = %69, %10
  %84 = icmp eq ptr %11, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  call void @BLI_ghash_free(ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #5
  br label %86

86:                                               ; preds = %85, %83
  %87 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %87, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 2) #5
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %87, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_extrude_face_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %13 = zext i8 %12 to i32
  %14 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %11, ptr noundef nonnull @.str.11, i32 noundef %13) #5
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 10, i16 noundef signext 1) #5
  %15 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %18, align 4, !tbaa !82
  %19 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !85
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  store ptr %22, ptr %6, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %23 = load ptr, ptr %20, align 8, !tbaa !85
  %24 = call ptr %23(ptr noundef nonnull %6) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %92, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %31

31:                                               ; preds = %26, %87
  %32 = phi ptr [ %24, %26 ], [ %90, %87 ]
  %33 = phi i8 [ 0, %26 ], [ %88, %87 ]
  %34 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = load i32, ptr %27, align 8, !tbaa !42
  %37 = sext i32 %36 to i64
  %38 = getelementptr %struct.BMFlagLayer, ptr %35, i64 %37
  %39 = getelementptr %struct.BMFlagLayer, ptr %38, i64 -1
  %40 = load i16, ptr %39, align 2, !tbaa !46
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %87, label %43

43:                                               ; preds = %31
  store i8 8, ptr %28, align 4, !tbaa !82
  store ptr @bmiter__face_of_edge_begin, ptr %29, align 8, !tbaa !84
  store ptr @bmiter__face_of_edge_step, ptr %30, align 8, !tbaa !85
  store ptr %32, ptr %7, align 8, !tbaa !87
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %7) #5
  %44 = load ptr, ptr %30, align 8, !tbaa !85
  %45 = call ptr %44(ptr noundef nonnull %7) #5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.BMFace, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load i32, ptr %27, align 8, !tbaa !42
  %51 = sext i32 %50 to i64
  %52 = getelementptr %struct.BMFlagLayer, ptr %49, i64 %51
  %53 = getelementptr %struct.BMFlagLayer, ptr %52, i64 -1
  %54 = load i16, ptr %53, align 2, !tbaa !46
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %73, label %67

57:                                               ; preds = %67
  %58 = getelementptr inbounds %struct.BMFace, ptr %71, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = load i32, ptr %27, align 8, !tbaa !42
  %61 = sext i32 %60 to i64
  %62 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %61
  %63 = getelementptr %struct.BMFlagLayer, ptr %62, i64 -1
  %64 = load i16, ptr %63, align 2, !tbaa !46
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67, !llvm.loop !88

67:                                               ; preds = %47, %57
  %68 = phi i32 [ %69, %57 ], [ 0, %47 ]
  %69 = add nuw nsw i32 %68, 1
  %70 = load ptr, ptr %30, align 8, !tbaa !85
  %71 = call ptr %70(ptr noundef nonnull %7) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %57, !llvm.loop !88

73:                                               ; preds = %57, %67, %47, %43
  %74 = phi i32 [ 0, %43 ], [ 0, %47 ], [ %69, %67 ], [ %69, %57 ]
  %75 = phi i1 [ %46, %43 ], [ %46, %47 ], [ %72, %67 ], [ %72, %57 ]
  %76 = phi i8 [ %33, %43 ], [ 1, %47 ], [ %33, %67 ], [ 1, %57 ]
  %77 = icmp ugt i32 %74, 1
  %78 = and i1 %77, %75
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load ptr, ptr %34, align 8, !tbaa !62
  %81 = load i32, ptr %27, align 8, !tbaa !42
  %82 = sext i32 %81 to i64
  %83 = getelementptr %struct.BMFlagLayer, ptr %80, i64 %82
  %84 = getelementptr %struct.BMFlagLayer, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !46
  %86 = or i16 %85, 4
  store i16 %86, ptr %84, align 2, !tbaa !46
  br label %87

87:                                               ; preds = %73, %79, %31
  %88 = phi i8 [ %33, %31 ], [ %76, %79 ], [ %76, %73 ]
  %89 = load ptr, ptr %20, align 8, !tbaa !85
  %90 = call ptr %89(ptr noundef nonnull %6) #5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %31, !llvm.loop !89

92:                                               ; preds = %87, %17, %2
  %93 = phi i8 [ 0, %2 ], [ 0, %17 ], [ %88, %87 ]
  %94 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %94, align 4, !tbaa !82
  %95 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %95, align 8, !tbaa !84
  %96 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %96, align 8, !tbaa !85
  %97 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !90
  store ptr %98, ptr %6, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %99 = load ptr, ptr %96, align 8, !tbaa !85
  %100 = call ptr %99(ptr noundef nonnull %6) #5
  %101 = icmp eq ptr %100, null
  br i1 %101, label %180, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %104 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %105 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %106 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %107 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %108 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %109

109:                                              ; preds = %102, %176
  %110 = phi ptr [ %100, %102 ], [ %178, %176 ]
  %111 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !79
  %113 = icmp eq ptr %112, null
  br i1 %113, label %176, label %114

114:                                              ; preds = %109
  store i8 4, ptr %103, align 4, !tbaa !82
  store ptr @bmiter__edge_of_vert_begin, ptr %104, align 8, !tbaa !84
  store ptr @bmiter__edge_of_vert_step, ptr %105, align 8, !tbaa !85
  store ptr %110, ptr %8, align 8, !tbaa !87
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #5
  %115 = load ptr, ptr %105, align 8, !tbaa !85
  %116 = call ptr %115(ptr noundef nonnull %8) #5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %142, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.BMEdge, ptr %116, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !62
  %121 = load i32, ptr %106, align 8, !tbaa !42
  %122 = sext i32 %121 to i64
  %123 = getelementptr %struct.BMFlagLayer, ptr %120, i64 %122
  %124 = getelementptr %struct.BMFlagLayer, ptr %123, i64 -1
  %125 = load i16, ptr %124, align 2, !tbaa !46
  %126 = and i16 %125, 5
  %127 = icmp eq i16 %126, 5
  br i1 %127, label %138, label %142

128:                                              ; preds = %138
  %129 = getelementptr inbounds %struct.BMEdge, ptr %140, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !62
  %131 = load i32, ptr %106, align 8, !tbaa !42
  %132 = sext i32 %131 to i64
  %133 = getelementptr %struct.BMFlagLayer, ptr %130, i64 %132
  %134 = getelementptr %struct.BMFlagLayer, ptr %133, i64 -1
  %135 = load i16, ptr %134, align 2, !tbaa !46
  %136 = and i16 %135, 5
  %137 = icmp eq i16 %136, 5
  br i1 %137, label %138, label %142, !llvm.loop !91

138:                                              ; preds = %118, %128
  %139 = load ptr, ptr %105, align 8, !tbaa !85
  %140 = call ptr %139(ptr noundef nonnull %8) #5
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %128, !llvm.loop !91

142:                                              ; preds = %128, %138, %118, %114
  %143 = phi i1 [ %117, %114 ], [ %117, %118 ], [ %141, %138 ], [ %141, %128 ]
  %144 = phi i8 [ 0, %114 ], [ 1, %118 ], [ 0, %138 ], [ 1, %128 ]
  br i1 %143, label %164, label %145

145:                                              ; preds = %142
  store i8 5, ptr %103, align 4, !tbaa !82
  store ptr @bmiter__face_of_vert_begin, ptr %104, align 8, !tbaa !84
  store ptr @bmiter__face_of_vert_step, ptr %105, align 8, !tbaa !85
  store ptr %110, ptr %8, align 8, !tbaa !87
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %8) #5
  %146 = load ptr, ptr %105, align 8, !tbaa !85
  %147 = call ptr %146(ptr noundef nonnull %8) #5
  %148 = icmp eq ptr %147, null
  br i1 %148, label %164, label %149

149:                                              ; preds = %145, %160
  %150 = phi ptr [ %162, %160 ], [ %147, %145 ]
  %151 = getelementptr inbounds %struct.BMFace, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  %153 = load i32, ptr %107, align 8, !tbaa !42
  %154 = sext i32 %153 to i64
  %155 = getelementptr %struct.BMFlagLayer, ptr %152, i64 %154
  %156 = getelementptr %struct.BMFlagLayer, ptr %155, i64 -1
  %157 = load i16, ptr %156, align 2, !tbaa !46
  %158 = and i16 %157, 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %149
  %161 = load ptr, ptr %105, align 8, !tbaa !85
  %162 = call ptr %161(ptr noundef nonnull %8) #5
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %149, !llvm.loop !92

164:                                              ; preds = %160, %149, %145, %142
  %165 = phi i8 [ %144, %142 ], [ %144, %145 ], [ 1, %149 ], [ %144, %160 ]
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !66
  %170 = load i32, ptr %108, align 8, !tbaa !42
  %171 = sext i32 %170 to i64
  %172 = getelementptr %struct.BMFlagLayer, ptr %169, i64 %171
  %173 = getelementptr %struct.BMFlagLayer, ptr %172, i64 -1
  %174 = load i16, ptr %173, align 2, !tbaa !46
  %175 = or i16 %174, 4
  store i16 %175, ptr %173, align 2, !tbaa !46
  br label %176

176:                                              ; preds = %109, %167, %164
  %177 = load ptr, ptr %96, align 8, !tbaa !85
  %178 = call ptr %177(ptr noundef nonnull %6) #5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %109, !llvm.loop !93

180:                                              ; preds = %176, %92
  store i8 3, ptr %94, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %95, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %96, align 8, !tbaa !85
  %181 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %182 = load ptr, ptr %181, align 8, !tbaa !94
  store ptr %182, ptr %6, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %183 = load ptr, ptr %96, align 8, !tbaa !85
  %184 = call ptr %183(ptr noundef nonnull %6) #5
  %185 = icmp eq ptr %184, null
  br i1 %185, label %205, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %188

188:                                              ; preds = %186, %201
  %189 = phi ptr [ %184, %186 ], [ %203, %201 ]
  %190 = getelementptr inbounds %struct.BMFace, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  %192 = load i32, ptr %187, align 8, !tbaa !42
  %193 = sext i32 %192 to i64
  %194 = getelementptr %struct.BMFlagLayer, ptr %191, i64 %193
  %195 = getelementptr %struct.BMFlagLayer, ptr %194, i64 -1
  %196 = load i16, ptr %195, align 2, !tbaa !46
  %197 = and i16 %196, 1
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  %200 = or i16 %196, 4
  store i16 %200, ptr %195, align 2, !tbaa !46
  br label %201

201:                                              ; preds = %188, %199
  %202 = load ptr, ptr %96, align 8, !tbaa !85
  %203 = call ptr %202(ptr noundef nonnull %6) #5
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %188, !llvm.loop !95

205:                                              ; preds = %201, %180
  %206 = icmp eq i8 %93, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = load i32, ptr %10, align 8, !tbaa !60
  %209 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %208, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 6) #5
  br label %210

210:                                              ; preds = %207, %205
  %211 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !96
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef %212) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #5
  %213 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %214 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %213, i32 noundef 36) #5
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %218 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %217, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #5
  %219 = icmp eq ptr %218, null
  br i1 %219, label %229, label %220

220:                                              ; preds = %216, %220
  %221 = phi ptr [ %227, %220 ], [ %218, %216 ]
  %222 = load ptr, ptr %221, align 8, !tbaa !70
  %223 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %213, ptr noundef %222, i32 noundef 36) #5
  %224 = getelementptr inbounds %struct.MVertSkin, ptr %223, i64 0, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !71
  %226 = and i32 %225, -2
  store i32 %226, ptr %224, align 4, !tbaa !71
  %227 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %220, !llvm.loop !97

229:                                              ; preds = %220, %216, %210
  %230 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %231 = call ptr @BMO_slot_get(ptr noundef nonnull %230, ptr noundef nonnull @.str.15) #5
  %232 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %233 = load ptr, ptr %232, align 8, !tbaa !98
  %234 = icmp eq ptr %233, null
  br i1 %234, label %255, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.BMFace, ptr %233, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !34
  %238 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %239 = load i32, ptr %238, align 8, !tbaa !42
  %240 = sext i32 %239 to i64
  %241 = getelementptr %struct.BMFlagLayer, ptr %237, i64 %240
  %242 = getelementptr %struct.BMFlagLayer, ptr %241, i64 -1
  %243 = load i16, ptr %242, align 2, !tbaa !46
  %244 = and i16 %243, 1
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %255, label %246

246:                                              ; preds = %235
  %247 = getelementptr inbounds %struct.BMOpSlot, ptr %231, i64 0, i32 4
  %248 = load ptr, ptr %247, align 8, !tbaa !87
  %249 = call ptr @BLI_ghash_lookup_p(ptr noundef %248, ptr noundef nonnull %233) #5
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %249, align 8, !tbaa !51
  br label %253

253:                                              ; preds = %246, %251
  %254 = phi ptr [ %252, %251 ], [ null, %246 ]
  store ptr %254, ptr %232, align 8, !tbaa !98
  br label %255

255:                                              ; preds = %253, %235, %229
  %256 = icmp eq i8 %93, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %255
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %281

258:                                              ; preds = %255
  store i8 3, ptr %94, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %95, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %96, align 8, !tbaa !85
  %259 = load ptr, ptr %181, align 8, !tbaa !94
  store ptr %259, ptr %6, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %260 = load ptr, ptr %96, align 8, !tbaa !85
  %261 = call ptr %260(ptr noundef nonnull %6) #5
  %262 = icmp eq ptr %261, null
  br i1 %262, label %281, label %263

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %265

265:                                              ; preds = %263, %277
  %266 = phi ptr [ %261, %263 ], [ %279, %277 ]
  %267 = getelementptr inbounds %struct.BMFace, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !34
  %269 = load i32, ptr %264, align 8, !tbaa !42
  %270 = sext i32 %269 to i64
  %271 = getelementptr %struct.BMFlagLayer, ptr %268, i64 %270
  %272 = getelementptr %struct.BMFlagLayer, ptr %271, i64 -1
  %273 = load i16, ptr %272, align 2, !tbaa !46
  %274 = and i16 %273, 1
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %265
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef nonnull %266) #5
  br label %277

277:                                              ; preds = %265, %276
  %278 = load ptr, ptr %96, align 8, !tbaa !85
  %279 = call ptr %278(ptr noundef nonnull %6) #5
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %265, !llvm.loop !99

281:                                              ; preds = %277, %258, %257
  %282 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %283 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !96
  call void @_bmo_slot_copy(ptr noundef nonnull %230, ptr noundef nonnull @.str.6, ptr noundef nonnull %282, ptr noundef nonnull @.str.6, ptr noundef %284) #5
  %285 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.16) #5
  %286 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %230, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #5
  %287 = icmp eq ptr %286, null
  br i1 %287, label %372, label %288

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.BMOpSlot, ptr %285, i64 0, i32 4
  %290 = getelementptr inbounds %struct.BMOpSlot, ptr %285, i64 0, i32 4
  %291 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 1
  %292 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 2
  %293 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 3
  %294 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 1
  %295 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 2
  %296 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 3
  br label %297

297:                                              ; preds = %288, %369
  %298 = phi ptr [ %286, %288 ], [ %370, %369 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #5
  %299 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 4
  %300 = load ptr, ptr %299, align 8, !tbaa !74
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %320

302:                                              ; preds = %297
  %303 = load ptr, ptr %289, align 8, !tbaa !87
  %304 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %303, ptr noundef nonnull %298) #5
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %320, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !65
  %309 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !68
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %298) #5
  %311 = getelementptr inbounds %struct.BMVert, ptr %308, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !79
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %315

314:                                              ; preds = %306
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %308) #5
  br label %315

315:                                              ; preds = %314, %306
  %316 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 4
  %317 = load ptr, ptr %316, align 8, !tbaa !79
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %369

319:                                              ; preds = %315
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %310) #5
  br label %369

320:                                              ; preds = %302, %297
  %321 = load ptr, ptr %290, align 8, !tbaa !87
  %322 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %321, ptr noundef nonnull %298) #5
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %369

324:                                              ; preds = %320
  %325 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %5) #5
  %326 = icmp eq ptr %325, null
  br i1 %326, label %369, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !74
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %340

331:                                              ; preds = %327
  %332 = load ptr, ptr %299, align 8, !tbaa !74
  %333 = icmp eq ptr %332, null
  br i1 %333, label %348, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.BMLoop, ptr %332, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !54
  %337 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !65
  %339 = icmp ne ptr %336, %338
  br label %346

340:                                              ; preds = %327
  %341 = getelementptr inbounds %struct.BMLoop, ptr %329, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !54
  %343 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !65
  %345 = icmp eq ptr %342, %344
  br label %346

346:                                              ; preds = %334, %340
  %347 = phi i1 [ %345, %340 ], [ %339, %334 ]
  br i1 %347, label %348, label %356

348:                                              ; preds = %331, %346
  %349 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !65
  store ptr %350, ptr %9, align 16, !tbaa !51
  %351 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !68
  store ptr %352, ptr %294, align 8, !tbaa !51
  %353 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !68
  store ptr %354, ptr %295, align 16, !tbaa !51
  %355 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 2
  br label %364

356:                                              ; preds = %346
  %357 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !68
  store ptr %358, ptr %9, align 16, !tbaa !51
  %359 = getelementptr inbounds %struct.BMEdge, ptr %298, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !65
  store ptr %360, ptr %291, align 8, !tbaa !51
  %361 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !65
  store ptr %362, ptr %292, align 16, !tbaa !51
  %363 = getelementptr inbounds %struct.BMEdge, ptr %325, i64 0, i32 3
  br label %364

364:                                              ; preds = %356, %348
  %365 = phi ptr [ %363, %356 ], [ %355, %348 ]
  %366 = phi ptr [ %293, %356 ], [ %296, %348 ]
  %367 = load ptr, ptr %365, align 8, !tbaa !51
  store ptr %367, ptr %366, align 8, !tbaa !51
  %368 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #5
  call fastcc void @bm_extrude_copy_face_loop_attributes(ptr noundef %0, ptr noundef %368)
  br label %369

369:                                              ; preds = %324, %320, %315, %319, %364
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #5
  %370 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #5
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %297, !llvm.loop !100

372:                                              ; preds = %369, %281
  %373 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %230, ptr noundef nonnull @.str.17, i8 noundef zeroext 0) #5
  %374 = icmp eq ptr %373, null
  br i1 %374, label %410, label %375

375:                                              ; preds = %372, %404
  %376 = phi ptr [ %408, %404 ], [ %373, %372 ]
  %377 = call ptr @BMO_iter_map_value_ptr(ptr noundef nonnull %5) #5
  %378 = getelementptr inbounds %struct.BMVert, ptr %376, i64 0, i32 4
  %379 = load ptr, ptr %378, align 8, !tbaa !79
  %380 = icmp eq ptr %379, null
  br i1 %380, label %395, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.BMEdge, ptr %379, i64 0, i32 4
  %383 = load ptr, ptr %382, align 8, !tbaa !74
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %395

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.BMEdge, ptr %379, i64 0, i32 5
  %387 = getelementptr inbounds %struct.BMEdge, ptr %379, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !68
  %389 = icmp eq ptr %388, %376
  %390 = zext i1 %389 to i64
  %391 = getelementptr inbounds %struct.BMDiskLink, ptr %386, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !80
  %393 = icmp eq ptr %392, %379
  %394 = zext i1 %393 to i8
  br label %395

395:                                              ; preds = %375, %381, %385
  %396 = phi i8 [ %394, %385 ], [ 0, %381 ], [ 0, %375 ]
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.BMEdge, ptr %379, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !65
  %401 = icmp eq ptr %400, %376
  %402 = select i1 %401, ptr %377, ptr %376
  %403 = select i1 %401, ptr %376, ptr %377
  br label %404

404:                                              ; preds = %398, %395
  %405 = phi ptr [ %376, %395 ], [ %402, %398 ]
  %406 = phi ptr [ %377, %395 ], [ %403, %398 ]
  %407 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %405, ptr noundef %406, ptr noundef null, i32 noundef 2) #5
  %408 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #5
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %375, !llvm.loop !101

410:                                              ; preds = %404, %372
  br i1 %256, label %412, label %411

411:                                              ; preds = %410
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %412

412:                                              ; preds = %411, %410
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_solidify_face_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [32 x float], align 16
  %6 = alloca %struct.BLI_Buffer, align 8
  %7 = alloca [32 x ptr], align 16
  %8 = alloca %struct.BLI_Buffer, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMOperator, align 8
  %13 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %13) #5
  %14 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.18) #5
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !60
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %16, ptr noundef nonnull @.str.19) #5
  %17 = getelementptr inbounds %struct.BMOperator, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef %18) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %13) #5
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %13) #5
  %19 = load i32, ptr %15, align 8, !tbaa !60
  %20 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %19, ptr noundef nonnull @.str.20, i32 noundef 1) #5
  %21 = getelementptr inbounds %struct.BMOperator, ptr %12, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %12, ptr noundef nonnull @.str.12, ptr noundef %22) #5
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %12) #5
  %23 = getelementptr inbounds %struct.BMOperator, ptr %12, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #5
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !102
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  %29 = call ptr %24(i64 noundef %28, ptr noundef nonnull @__func__.calc_solidify_normals) #5
  %30 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 1, ptr %30, align 4, !tbaa !82
  %31 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  store ptr %34, ptr %9, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #5
  %35 = load ptr, ptr %32, align 8, !tbaa !85
  %36 = call ptr %35(ptr noundef nonnull %9) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %2, %38
  %39 = phi ptr [ %44, %38 ], [ %36, %2 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !78
  %42 = or i8 %41, 16
  store i8 %42, ptr %40, align 1, !tbaa !78
  %43 = load ptr, ptr %32, align 8, !tbaa !85
  %44 = call ptr %43(ptr noundef nonnull %9) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38, !llvm.loop !103

46:                                               ; preds = %38, %2
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 2) #5
  %47 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 3, ptr %47, align 4, !tbaa !82
  %48 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %48, align 8, !tbaa !84
  %49 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %49, align 8, !tbaa !85
  %50 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  store ptr %51, ptr %11, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #5
  %52 = load ptr, ptr %49, align 8, !tbaa !85
  %53 = call ptr %52(ptr noundef nonnull %11) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %114, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %57 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %58 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %59 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  br label %60

60:                                               ; preds = %55, %110
  %61 = phi ptr [ %53, %55 ], [ %112, %110 ]
  %62 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = load i32, ptr %56, align 8, !tbaa !42
  %65 = sext i32 %64 to i64
  %66 = getelementptr %struct.BMFlagLayer, ptr %63, i64 %65
  %67 = getelementptr %struct.BMFlagLayer, ptr %66, i64 -1
  %68 = load i16, ptr %67, align 2, !tbaa !46
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %60
  store i8 10, ptr %57, align 4, !tbaa !82
  store ptr @bmiter__edge_of_face_begin, ptr %58, align 8, !tbaa !84
  store ptr @bmiter__edge_of_face_step, ptr %59, align 8, !tbaa !85
  store ptr %61, ptr %10, align 8, !tbaa !87
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %10) #5
  %72 = load ptr, ptr %59, align 8, !tbaa !85
  %73 = call ptr %72(ptr noundef nonnull %10) #5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %110, label %75

75:                                               ; preds = %71, %75
  %76 = phi ptr [ %108, %75 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = load i32, ptr %56, align 8, !tbaa !42
  %80 = sext i32 %79 to i64
  %81 = getelementptr %struct.BMFlagLayer, ptr %78, i64 %80
  %82 = getelementptr %struct.BMFlagLayer, ptr %81, i64 -1
  %83 = load i16, ptr %82, align 2, !tbaa !46
  %84 = or i16 %83, 1
  store i16 %84, ptr %82, align 2, !tbaa !46
  %85 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !65
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !66
  %89 = getelementptr %struct.BMFlagLayer, ptr %88, i64 %80
  %90 = getelementptr %struct.BMFlagLayer, ptr %89, i64 -1
  %91 = load i16, ptr %90, align 2, !tbaa !46
  %92 = or i16 %91, 1
  store i16 %92, ptr %90, align 2, !tbaa !46
  %93 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !68
  %95 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = getelementptr %struct.BMFlagLayer, ptr %96, i64 %80
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !46
  %100 = or i16 %99, 1
  store i16 %100, ptr %98, align 2, !tbaa !46
  %101 = getelementptr inbounds %struct.BMHeader, ptr %76, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !104
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %29, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !105
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %104, align 4, !tbaa !105
  %107 = load ptr, ptr %59, align 8, !tbaa !85
  %108 = call ptr %107(ptr noundef nonnull %10) #5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %75, !llvm.loop !106

110:                                              ; preds = %75, %71, %60
  %111 = load ptr, ptr %49, align 8, !tbaa !85
  %112 = call ptr %111(ptr noundef nonnull %11) #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %60, !llvm.loop !107

114:                                              ; preds = %110, %46
  %115 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 2, ptr %115, align 4, !tbaa !82
  %116 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %116, align 8, !tbaa !84
  %117 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %117, align 8, !tbaa !85
  %118 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !86
  store ptr %119, ptr %10, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #5
  %120 = load ptr, ptr %117, align 8, !tbaa !85
  %121 = call ptr %120(ptr noundef nonnull %10) #5
  %122 = icmp eq ptr %121, null
  br i1 %122, label %173, label %123

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %125

125:                                              ; preds = %123, %169
  %126 = phi ptr [ %121, %123 ], [ %171, %169 ]
  %127 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !62
  %129 = load i32, ptr %124, align 8, !tbaa !42
  %130 = sext i32 %129 to i64
  %131 = getelementptr %struct.BMFlagLayer, ptr %128, i64 %130
  %132 = getelementptr %struct.BMFlagLayer, ptr %131, i64 -1
  %133 = load i16, ptr %132, align 2, !tbaa !46
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %169, label %136

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.BMHeader, ptr %126, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !104
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %29, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !105
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %140, align 4, !tbaa !105
  %143 = icmp eq i32 %141, 0
  %144 = icmp sgt i32 %141, 2
  %145 = or i1 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %136
  %147 = load i32, ptr %124, align 8, !tbaa !42
  %148 = sext i32 %147 to i64
  %149 = getelementptr %struct.BMFlagLayer, ptr %128, i64 %148
  %150 = getelementptr %struct.BMFlagLayer, ptr %149, i64 -1
  %151 = load i16, ptr %150, align 2, !tbaa !46
  %152 = or i16 %151, 2
  store i16 %152, ptr %150, align 2, !tbaa !46
  %153 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !65
  %155 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !66
  %157 = getelementptr %struct.BMFlagLayer, ptr %156, i64 %148
  %158 = getelementptr %struct.BMFlagLayer, ptr %157, i64 -1
  %159 = load i16, ptr %158, align 2, !tbaa !46
  %160 = or i16 %159, 2
  store i16 %160, ptr %158, align 2, !tbaa !46
  %161 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !68
  %163 = getelementptr inbounds %struct.BMVert, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !66
  %165 = getelementptr %struct.BMFlagLayer, ptr %164, i64 %148
  %166 = getelementptr %struct.BMFlagLayer, ptr %165, i64 -1
  %167 = load i16, ptr %166, align 2, !tbaa !46
  %168 = or i16 %167, 2
  store i16 %168, ptr %166, align 2, !tbaa !46
  br label %169

169:                                              ; preds = %146, %136, %125
  %170 = load ptr, ptr %117, align 8, !tbaa !85
  %171 = call ptr %170(ptr noundef nonnull %10) #5
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %125, !llvm.loop !108

173:                                              ; preds = %169, %114
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %174(ptr noundef %29) #5
  store i8 1, ptr %30, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !85
  %175 = load ptr, ptr %33, align 8, !tbaa !90
  store ptr %175, ptr %9, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #5
  %176 = load ptr, ptr %32, align 8, !tbaa !85
  %177 = call ptr %176(ptr noundef nonnull %9) #5
  %178 = icmp eq ptr %177, null
  br i1 %178, label %211, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %181 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %182

182:                                              ; preds = %179, %207
  %183 = phi ptr [ %177, %179 ], [ %209, %207 ]
  %184 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %183) #5
  %185 = icmp eq i8 %184, 0
  %186 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !66
  br i1 %185, label %188, label %195

188:                                              ; preds = %182
  %189 = load i32, ptr %181, align 8, !tbaa !42
  %190 = sext i32 %189 to i64
  %191 = getelementptr %struct.BMFlagLayer, ptr %187, i64 %190
  %192 = getelementptr %struct.BMFlagLayer, ptr %191, i64 -1
  %193 = load i16, ptr %192, align 2, !tbaa !46
  %194 = or i16 %193, 2
  store i16 %194, ptr %192, align 2, !tbaa !46
  br label %207

195:                                              ; preds = %182
  %196 = load i32, ptr %180, align 8, !tbaa !42
  %197 = sext i32 %196 to i64
  %198 = getelementptr %struct.BMFlagLayer, ptr %187, i64 %197
  %199 = getelementptr %struct.BMFlagLayer, ptr %198, i64 -1
  %200 = load i16, ptr %199, align 2, !tbaa !46
  %201 = and i16 %200, 1
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 3
  store float 0.000000e+00, ptr %204, align 4, !tbaa !109
  %205 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %205, align 4, !tbaa !109
  %206 = getelementptr inbounds %struct.BMVert, ptr %183, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %206, align 4, !tbaa !109
  br label %207

207:                                              ; preds = %203, %195, %188
  %208 = load ptr, ptr %32, align 8, !tbaa !85
  %209 = call ptr %208(ptr noundef nonnull %9) #5
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %182, !llvm.loop !111

211:                                              ; preds = %207, %173
  store i8 2, ptr %115, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %116, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %117, align 8, !tbaa !85
  %212 = load ptr, ptr %118, align 8, !tbaa !86
  store ptr %212, ptr %10, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #5
  %213 = load ptr, ptr %117, align 8, !tbaa !85
  %214 = call ptr %213(ptr noundef nonnull %10) #5
  %215 = icmp eq ptr %214, null
  br i1 %215, label %354, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %218

218:                                              ; preds = %216, %347
  %219 = phi ptr [ %214, %216 ], [ %352, %347 ]
  %220 = phi float [ undef, %216 ], [ %350, %347 ]
  %221 = phi float [ undef, %216 ], [ %349, %347 ]
  %222 = phi float [ undef, %216 ], [ %348, %347 ]
  %223 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !62
  %225 = load i32, ptr %217, align 8, !tbaa !42
  %226 = sext i32 %225 to i64
  %227 = getelementptr %struct.BMFlagLayer, ptr %224, i64 %226
  %228 = getelementptr %struct.BMFlagLayer, ptr %227, i64 -1
  %229 = load i16, ptr %228, align 2, !tbaa !46
  %230 = and i16 %229, 3
  %231 = icmp eq i16 %230, 1
  br i1 %231, label %232, label %347

232:                                              ; preds = %218
  store i8 8, ptr %47, align 4, !tbaa !82
  store ptr @bmiter__face_of_edge_begin, ptr %48, align 8, !tbaa !84
  store ptr @bmiter__face_of_edge_step, ptr %49, align 8, !tbaa !85
  store ptr %219, ptr %11, align 8, !tbaa !87
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %11) #5
  %233 = load ptr, ptr %49, align 8, !tbaa !85
  %234 = call ptr %233(ptr noundef nonnull %11) #5
  %235 = icmp eq ptr %234, null
  br i1 %235, label %257, label %236

236:                                              ; preds = %232, %236
  %237 = phi ptr [ %253, %236 ], [ null, %232 ]
  %238 = phi ptr [ %251, %236 ], [ null, %232 ]
  %239 = phi ptr [ %255, %236 ], [ %234, %232 ]
  %240 = getelementptr inbounds %struct.BMFace, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !34
  %242 = load i32, ptr %217, align 8, !tbaa !42
  %243 = sext i32 %242 to i64
  %244 = getelementptr %struct.BMFlagLayer, ptr %241, i64 %243
  %245 = getelementptr %struct.BMFlagLayer, ptr %244, i64 -1
  %246 = load i16, ptr %245, align 2, !tbaa !46
  %247 = and i16 %246, 1
  %248 = icmp eq i16 %247, 0
  %249 = icmp eq ptr %238, null
  %250 = select i1 %249, ptr %239, ptr %238
  %251 = select i1 %248, ptr %238, ptr %250
  %252 = select i1 %248, i1 true, i1 %249
  %253 = select i1 %252, ptr %237, ptr %239
  %254 = load ptr, ptr %49, align 8, !tbaa !85
  %255 = call ptr %254(ptr noundef nonnull %11) #5
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %236, !llvm.loop !112

257:                                              ; preds = %236, %232
  %258 = phi ptr [ null, %232 ], [ %251, %236 ]
  %259 = phi ptr [ null, %232 ], [ %253, %236 ]
  %260 = icmp eq ptr %259, null
  %261 = getelementptr inbounds %struct.BMFace, ptr %258, i64 0, i32 4
  br i1 %260, label %312, label %262

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 4
  %264 = call float @angle_normalized_v3v3(ptr noundef nonnull %261, ptr noundef nonnull %263) #5
  %265 = fcmp ogt float %264, 0.000000e+00
  br i1 %265, label %266, label %297

266:                                              ; preds = %262
  %267 = load float, ptr %261, align 4, !tbaa !109
  %268 = load float, ptr %263, align 4, !tbaa !109
  %269 = fadd float %267, %268
  %270 = getelementptr inbounds %struct.BMFace, ptr %258, i64 0, i32 4, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !109
  %272 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 4, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !109
  %274 = fadd float %271, %273
  %275 = getelementptr inbounds %struct.BMFace, ptr %258, i64 0, i32 4, i64 2
  %276 = load float, ptr %275, align 4, !tbaa !109
  %277 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 4, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !109
  %279 = fadd float %276, %278
  %280 = fmul float %274, %274
  %281 = call float @llvm.fmuladd.f32(float %269, float %269, float %280)
  %282 = call float @llvm.fmuladd.f32(float %279, float %279, float %281)
  %283 = fcmp ogt float %282, 0x38AA95A5C0000000
  br i1 %283, label %284, label %290

284:                                              ; preds = %266
  %285 = call float @sqrtf(float noundef %282) #5
  %286 = fdiv float 1.000000e+00, %285
  %287 = fmul float %269, %286
  %288 = fmul float %274, %286
  %289 = fmul float %279, %286
  br label %290

290:                                              ; preds = %284, %266
  %291 = phi float [ %288, %284 ], [ 0.000000e+00, %266 ]
  %292 = phi float [ %287, %284 ], [ 0.000000e+00, %266 ]
  %293 = phi float [ %289, %284 ], [ 0.000000e+00, %266 ]
  %294 = fmul float %264, %292
  %295 = fmul float %264, %291
  %296 = fmul float %264, %293
  br label %308

297:                                              ; preds = %262
  %298 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !65
  %300 = getelementptr inbounds %struct.BMHeader, ptr %299, i64 0, i32 3
  %301 = load i8, ptr %300, align 1, !tbaa !78
  %302 = and i8 %301, -17
  store i8 %302, ptr %300, align 1, !tbaa !78
  %303 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !68
  %305 = getelementptr inbounds %struct.BMHeader, ptr %304, i64 0, i32 3
  %306 = load i8, ptr %305, align 1, !tbaa !78
  %307 = and i8 %306, -17
  store i8 %307, ptr %305, align 1, !tbaa !78
  br label %308

308:                                              ; preds = %297, %290
  %309 = phi float [ %296, %290 ], [ %222, %297 ]
  %310 = phi float [ %295, %290 ], [ %221, %297 ]
  %311 = phi float [ %294, %290 ], [ %220, %297 ]
  br i1 %265, label %321, label %347

312:                                              ; preds = %257
  %313 = load float, ptr %261, align 4, !tbaa !109
  %314 = getelementptr inbounds %struct.BMFace, ptr %258, i64 0, i32 4, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !109
  %316 = getelementptr inbounds %struct.BMFace, ptr %258, i64 0, i32 4, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !109
  %318 = fmul float %313, 0x3FF921FB60000000
  %319 = fmul float %315, 0x3FF921FB60000000
  %320 = fmul float %317, 0x3FF921FB60000000
  br label %321

321:                                              ; preds = %312, %308
  %322 = phi float [ %320, %312 ], [ %309, %308 ]
  %323 = phi float [ %319, %312 ], [ %310, %308 ]
  %324 = phi float [ %318, %312 ], [ %311, %308 ]
  %325 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !65
  %327 = getelementptr inbounds %struct.BMVert, ptr %326, i64 0, i32 3
  %328 = load float, ptr %327, align 4, !tbaa !109
  %329 = fadd float %324, %328
  store float %329, ptr %327, align 4, !tbaa !109
  %330 = getelementptr inbounds %struct.BMVert, ptr %326, i64 0, i32 3, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !109
  %332 = fadd float %323, %331
  store float %332, ptr %330, align 4, !tbaa !109
  %333 = getelementptr inbounds %struct.BMVert, ptr %326, i64 0, i32 3, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !109
  %335 = fadd float %322, %334
  store float %335, ptr %333, align 4, !tbaa !109
  %336 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !68
  %338 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 3
  %339 = load float, ptr %338, align 4, !tbaa !109
  %340 = fadd float %324, %339
  store float %340, ptr %338, align 4, !tbaa !109
  %341 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 3, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !109
  %343 = fadd float %323, %342
  store float %343, ptr %341, align 4, !tbaa !109
  %344 = getelementptr inbounds %struct.BMVert, ptr %337, i64 0, i32 3, i64 2
  %345 = load float, ptr %344, align 4, !tbaa !109
  %346 = fadd float %322, %345
  store float %346, ptr %344, align 4, !tbaa !109
  br label %347

347:                                              ; preds = %321, %308, %218
  %348 = phi float [ %222, %218 ], [ %322, %321 ], [ %309, %308 ]
  %349 = phi float [ %221, %218 ], [ %323, %321 ], [ %310, %308 ]
  %350 = phi float [ %220, %218 ], [ %324, %321 ], [ %311, %308 ]
  %351 = load ptr, ptr %117, align 8, !tbaa !85
  %352 = call ptr %351(ptr noundef nonnull %10) #5
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %218, !llvm.loop !113

354:                                              ; preds = %347, %211
  store i8 1, ptr %30, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !85
  %355 = load ptr, ptr %33, align 8, !tbaa !90
  store ptr %355, ptr %9, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #5
  %356 = load ptr, ptr %32, align 8, !tbaa !85
  %357 = call ptr %356(ptr noundef nonnull %9) #5
  %358 = icmp eq ptr %357, null
  br i1 %358, label %437, label %359

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %361

361:                                              ; preds = %359, %433
  %362 = phi ptr [ %357, %359 ], [ %435, %433 ]
  %363 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !66
  %365 = load i32, ptr %360, align 8, !tbaa !42
  %366 = sext i32 %365 to i64
  %367 = getelementptr %struct.BMFlagLayer, ptr %364, i64 %366
  %368 = getelementptr %struct.BMFlagLayer, ptr %367, i64 -1
  %369 = load i16, ptr %368, align 2, !tbaa !46
  %370 = and i16 %369, 1
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %433, label %372

372:                                              ; preds = %361
  %373 = and i16 %369, 2
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %372
  call void @BM_vert_normal_update(ptr noundef nonnull %362) #5
  br label %433

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 3
  %378 = load float, ptr %377, align 4, !tbaa !109
  %379 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 3, i64 1
  %380 = load float, ptr %379, align 4, !tbaa !109
  %381 = fmul float %380, %380
  %382 = call float @llvm.fmuladd.f32(float %378, float %378, float %381)
  %383 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 3, i64 2
  %384 = load float, ptr %383, align 4, !tbaa !109
  %385 = call float @llvm.fmuladd.f32(float %384, float %384, float %382)
  %386 = fcmp ogt float %385, 0x38AA95A5C0000000
  br i1 %386, label %387, label %396

387:                                              ; preds = %376
  %388 = call float @sqrtf(float noundef %385) #5
  %389 = fdiv float 1.000000e+00, %388
  %390 = load float, ptr %377, align 4, !tbaa !109
  %391 = fmul float %390, %389
  store float %391, ptr %377, align 4, !tbaa !109
  %392 = load float, ptr %379, align 4, !tbaa !109
  %393 = fmul float %389, %392
  store float %393, ptr %379, align 4, !tbaa !109
  %394 = load float, ptr %383, align 4, !tbaa !109
  %395 = fmul float %389, %394
  br label %397

396:                                              ; preds = %376
  store float 0.000000e+00, ptr %377, align 4, !tbaa !109
  store float 0.000000e+00, ptr %379, align 4, !tbaa !109
  br label %397

397:                                              ; preds = %396, %387
  %398 = phi float [ 0.000000e+00, %396 ], [ %395, %387 ]
  %399 = phi float [ 0.000000e+00, %396 ], [ %388, %387 ]
  store float %398, ptr %383, align 4, !tbaa !109
  %400 = fcmp oeq float %399, 0.000000e+00
  br i1 %400, label %401, label %433

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.BMHeader, ptr %362, i64 0, i32 3
  %403 = load i8, ptr %402, align 1, !tbaa !78
  %404 = and i8 %403, 16
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %433

406:                                              ; preds = %401
  store i8 5, ptr %47, align 4, !tbaa !82
  store ptr @bmiter__face_of_vert_begin, ptr %48, align 8, !tbaa !84
  store ptr @bmiter__face_of_vert_step, ptr %49, align 8, !tbaa !85
  store ptr %362, ptr %11, align 8, !tbaa !87
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %11) #5
  %407 = load ptr, ptr %49, align 8, !tbaa !85
  %408 = call ptr %407(ptr noundef nonnull %11) #5
  %409 = icmp eq ptr %408, null
  br i1 %409, label %425, label %410

410:                                              ; preds = %406, %421
  %411 = phi ptr [ %423, %421 ], [ %408, %406 ]
  %412 = getelementptr inbounds %struct.BMFace, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !34
  %414 = load i32, ptr %360, align 8, !tbaa !42
  %415 = sext i32 %414 to i64
  %416 = getelementptr %struct.BMFlagLayer, ptr %413, i64 %415
  %417 = getelementptr %struct.BMFlagLayer, ptr %416, i64 -1
  %418 = load i16, ptr %417, align 2, !tbaa !46
  %419 = and i16 %418, 1
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %410
  %422 = load ptr, ptr %49, align 8, !tbaa !85
  %423 = call ptr %422(ptr noundef nonnull %11) #5
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %410, !llvm.loop !114

425:                                              ; preds = %421, %410, %406
  %426 = phi ptr [ %408, %406 ], [ %423, %421 ], [ %411, %410 ]
  %427 = getelementptr inbounds %struct.BMFace, ptr %426, i64 0, i32 4
  %428 = load float, ptr %427, align 4, !tbaa !109
  store float %428, ptr %377, align 4, !tbaa !109
  %429 = getelementptr inbounds %struct.BMFace, ptr %426, i64 0, i32 4, i64 1
  %430 = load float, ptr %429, align 4, !tbaa !109
  store float %430, ptr %379, align 4, !tbaa !109
  %431 = getelementptr inbounds %struct.BMFace, ptr %426, i64 0, i32 4, i64 2
  %432 = load float, ptr %431, align 4, !tbaa !109
  store float %432, ptr %383, align 4, !tbaa !109
  br label %433

433:                                              ; preds = %425, %401, %397, %375, %361
  %434 = load ptr, ptr %32, align 8, !tbaa !85
  %435 = call ptr %434(ptr noundef nonnull %9) #5
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %361, !llvm.loop !115

437:                                              ; preds = %433, %354
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %438 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %439 = load i32, ptr %0, align 8, !tbaa !116
  %440 = sext i32 %439 to i64
  %441 = shl nsw i64 %440, 3
  %442 = call ptr %438(i64 noundef %441, ptr noundef nonnull @.str.21) #5
  %443 = load i32, ptr %0, align 8, !tbaa !116
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, ptr %442, i64 %444
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  store ptr %5, ptr %6, align 8, !tbaa !117
  %446 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 1
  store i32 4, ptr %446, align 8, !tbaa !119
  %447 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 2
  store i32 0, ptr %447, align 4, !tbaa !120
  %448 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 3
  store i32 32, ptr %448, align 8, !tbaa !121
  %449 = getelementptr inbounds %struct.BLI_Buffer, ptr %6, i64 0, i32 4
  store i32 1, ptr %449, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  store ptr %7, ptr %8, align 8, !tbaa !117
  %450 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 1
  store i32 8, ptr %450, align 8, !tbaa !119
  %451 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 2
  store i32 0, ptr %451, align 4, !tbaa !120
  %452 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 3
  store i32 32, ptr %452, align 8, !tbaa !121
  %453 = getelementptr inbounds %struct.BLI_Buffer, ptr %8, i64 0, i32 4
  store i32 1, ptr %453, align 4, !tbaa !122
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  %454 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %454, align 4, !tbaa !82
  %455 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %455, align 8, !tbaa !84
  %456 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %456, align 8, !tbaa !85
  %457 = load ptr, ptr %50, align 8, !tbaa !94
  store ptr %457, ptr %3, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %458 = load ptr, ptr %456, align 8, !tbaa !85
  %459 = call ptr %458(ptr noundef nonnull %3) #5
  %460 = icmp eq ptr %459, null
  br i1 %460, label %552, label %461

461:                                              ; preds = %437
  %462 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %463 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %464 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %465 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %466

466:                                              ; preds = %461, %548
  %467 = phi ptr [ %459, %461 ], [ %550, %548 ]
  %468 = getelementptr inbounds %struct.BMFace, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !34
  %470 = load i32, ptr %462, align 8, !tbaa !42
  %471 = sext i32 %470 to i64
  %472 = getelementptr %struct.BMFlagLayer, ptr %469, i64 %471
  %473 = getelementptr %struct.BMFlagLayer, ptr %472, i64 -1
  %474 = load i16, ptr %473, align 2, !tbaa !46
  %475 = and i16 %474, 1
  %476 = icmp eq i16 %475, 0
  br i1 %476, label %548, label %477

477:                                              ; preds = %466
  %478 = getelementptr inbounds %struct.BMFace, ptr %467, i64 0, i32 3
  %479 = load i32, ptr %478, align 8, !tbaa !123
  call void @BLI_buffer_resize(ptr noundef nonnull %6, i32 noundef %479) #5
  %480 = load i32, ptr %478, align 8, !tbaa !123
  %481 = icmp eq i32 %480, 0
  %482 = load ptr, ptr %6, align 8
  %483 = select i1 %481, ptr null, ptr %482
  call void @BLI_buffer_resize(ptr noundef nonnull %8, i32 noundef %480) #5
  %484 = load i32, ptr %478, align 8, !tbaa !123
  %485 = icmp eq i32 %484, 0
  %486 = load ptr, ptr %8, align 8
  %487 = select i1 %485, ptr null, ptr %486
  store i8 11, ptr %463, align 4, !tbaa !82
  store ptr @bmiter__loop_of_face_begin, ptr %464, align 8, !tbaa !84
  store ptr @bmiter__loop_of_face_step, ptr %465, align 8, !tbaa !85
  store ptr %467, ptr %4, align 8, !tbaa !87
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #5
  %488 = load ptr, ptr %465, align 8, !tbaa !85
  %489 = call ptr %488(ptr noundef nonnull %4) #5
  %490 = icmp eq ptr %489, null
  br i1 %490, label %502, label %491

491:                                              ; preds = %477, %491
  %492 = phi i64 [ %500, %491 ], [ 0, %477 ]
  %493 = phi ptr [ %499, %491 ], [ %489, %477 ]
  %494 = getelementptr inbounds %struct.BMLoop, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !54
  %496 = getelementptr inbounds %struct.BMVert, ptr %495, i64 0, i32 2
  %497 = getelementptr inbounds ptr, ptr %487, i64 %492
  store ptr %496, ptr %497, align 8, !tbaa !51
  %498 = load ptr, ptr %465, align 8, !tbaa !85
  %499 = call ptr %498(ptr noundef nonnull %4) #5
  %500 = add nuw i64 %492, 1
  %501 = icmp eq ptr %499, null
  br i1 %501, label %502, label %491, !llvm.loop !124

502:                                              ; preds = %491, %477
  %503 = load i32, ptr %478, align 8, !tbaa !123
  call void @angle_poly_v3(ptr noundef %483, ptr noundef %487, i32 noundef %503) #5
  store i8 11, ptr %463, align 4, !tbaa !82
  store ptr @bmiter__loop_of_face_begin, ptr %464, align 8, !tbaa !84
  store ptr @bmiter__loop_of_face_step, ptr %465, align 8, !tbaa !85
  store ptr %467, ptr %4, align 8, !tbaa !87
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #5
  %504 = load ptr, ptr %465, align 8, !tbaa !85
  %505 = call ptr %504(ptr noundef nonnull %4) #5
  %506 = icmp eq ptr %505, null
  br i1 %506, label %548, label %507

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.BMFace, ptr %467, i64 0, i32 4
  %509 = getelementptr inbounds %struct.BMFace, ptr %467, i64 0, i32 4, i64 1
  %510 = getelementptr inbounds %struct.BMFace, ptr %467, i64 0, i32 4, i64 2
  br label %511

511:                                              ; preds = %507, %511
  %512 = phi i64 [ 0, %507 ], [ %544, %511 ]
  %513 = phi ptr [ %505, %507 ], [ %546, %511 ]
  %514 = getelementptr inbounds %struct.BMLoop, ptr %513, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !54
  %516 = getelementptr inbounds %struct.BMHeader, ptr %515, i64 0, i32 1
  %517 = load i32, ptr %516, align 8, !tbaa !104
  %518 = getelementptr inbounds float, ptr %483, i64 %512
  %519 = load float, ptr %518, align 4, !tbaa !109
  %520 = sext i32 %517 to i64
  %521 = getelementptr inbounds float, ptr %445, i64 %520
  %522 = load float, ptr %521, align 4, !tbaa !109
  %523 = fadd float %519, %522
  store float %523, ptr %521, align 4, !tbaa !109
  %524 = getelementptr inbounds %struct.BMVert, ptr %515, i64 0, i32 3
  %525 = load float, ptr %524, align 4, !tbaa !109
  %526 = load float, ptr %508, align 4, !tbaa !109
  %527 = getelementptr inbounds %struct.BMVert, ptr %515, i64 0, i32 3, i64 1
  %528 = load float, ptr %527, align 4, !tbaa !109
  %529 = load float, ptr %509, align 4, !tbaa !109
  %530 = fmul float %528, %529
  %531 = call float @llvm.fmuladd.f32(float %525, float %526, float %530)
  %532 = getelementptr inbounds %struct.BMVert, ptr %515, i64 0, i32 3, i64 2
  %533 = load float, ptr %532, align 4, !tbaa !109
  %534 = load float, ptr %510, align 4, !tbaa !109
  %535 = call float @llvm.fmuladd.f32(float %533, float %534, float %531)
  %536 = call float @llvm.fabs.f32(float %535)
  %537 = fcmp olt float %536, 0x3E45798EE0000000
  %538 = fdiv float 1.000000e+00, %536
  %539 = select i1 %537, float 1.000000e+00, float %538
  %540 = load float, ptr %518, align 4, !tbaa !109
  %541 = getelementptr inbounds float, ptr %442, i64 %520
  %542 = load float, ptr %541, align 4, !tbaa !109
  %543 = call float @llvm.fmuladd.f32(float %539, float %540, float %542)
  store float %543, ptr %541, align 4, !tbaa !109
  %544 = add nuw i64 %512, 1
  %545 = load ptr, ptr %465, align 8, !tbaa !85
  %546 = call ptr %545(ptr noundef nonnull %4) #5
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %511, !llvm.loop !125

548:                                              ; preds = %511, %502, %466
  %549 = load ptr, ptr %456, align 8, !tbaa !85
  %550 = call ptr %549(ptr noundef nonnull %3) #5
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %466, !llvm.loop !126

552:                                              ; preds = %548, %437
  call void @_bli_buffer_free(ptr noundef nonnull %6) #5
  call void @_bli_buffer_free(ptr noundef nonnull %8) #5
  store i8 1, ptr %454, align 4, !tbaa !82
  store ptr @bmiter__elem_of_mesh_begin, ptr %455, align 8, !tbaa !84
  store ptr @bmiter__elem_of_mesh_step, ptr %456, align 8, !tbaa !85
  %553 = load ptr, ptr %33, align 8, !tbaa !90
  store ptr %553, ptr %3, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %554 = load ptr, ptr %456, align 8, !tbaa !85
  %555 = call ptr %554(ptr noundef nonnull %3) #5
  %556 = icmp eq ptr %555, null
  br i1 %556, label %589, label %557

557:                                              ; preds = %552, %585
  %558 = phi ptr [ %587, %585 ], [ %555, %552 ]
  %559 = getelementptr inbounds %struct.BMHeader, ptr %558, i64 0, i32 1
  %560 = load i32, ptr %559, align 8, !tbaa !104
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, ptr %445, i64 %561
  %563 = load float, ptr %562, align 4, !tbaa !109
  %564 = fcmp une float %563, 0.000000e+00
  br i1 %564, label %565, label %585

565:                                              ; preds = %557
  %566 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 2
  %567 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 3
  %568 = getelementptr inbounds float, ptr %442, i64 %561
  %569 = load float, ptr %568, align 4, !tbaa !109
  %570 = fdiv float %569, %563
  %571 = fmul float %14, %570
  %572 = load float, ptr %567, align 4, !tbaa !109
  %573 = load float, ptr %566, align 4, !tbaa !109
  %574 = call float @llvm.fmuladd.f32(float %572, float %571, float %573)
  store float %574, ptr %566, align 4, !tbaa !109
  %575 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 3, i64 1
  %576 = load float, ptr %575, align 4, !tbaa !109
  %577 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 2, i64 1
  %578 = load float, ptr %577, align 4, !tbaa !109
  %579 = call float @llvm.fmuladd.f32(float %576, float %571, float %578)
  store float %579, ptr %577, align 4, !tbaa !109
  %580 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 3, i64 2
  %581 = load float, ptr %580, align 4, !tbaa !109
  %582 = getelementptr inbounds %struct.BMVert, ptr %558, i64 0, i32 2, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !109
  %584 = call float @llvm.fmuladd.f32(float %581, float %571, float %583)
  store float %584, ptr %582, align 4, !tbaa !109
  br label %585

585:                                              ; preds = %565, %557
  %586 = load ptr, ptr %456, align 8, !tbaa !85
  %587 = call ptr %586(ptr noundef nonnull %3) #5
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %557, !llvm.loop !127

589:                                              ; preds = %585, %552
  %590 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %590(ptr noundef %442) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  %591 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %592 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %593 = load ptr, ptr %592, align 8, !tbaa !96
  call void @_bmo_slot_copy(ptr noundef nonnull %23, ptr noundef nonnull @.str.6, ptr noundef nonnull %591, ptr noundef nonnull @.str.6, ptr noundef %593) #5
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %12) #5
  ret void
}

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__edge_of_face_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @angle_poly_v3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!43, !40, i64 128}
!43 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !45, i64 960, !37, i64 976, !45, i64 984, !37, i64 1000}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!47, !41, i64 0}
!47 = !{!"BMFlagLayer", !41, i64 0}
!48 = !{!49, !37, i64 16}
!49 = !{!"BMEditSelection", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24}
!50 = !{!35, !37, i64 24}
!51 = !{!37, !37, i64 0}
!52 = !{!53, !37, i64 56}
!53 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!54 = !{!53, !37, i64 16}
!55 = !{!53, !37, i64 24}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = !{!61, !40, i64 1304}
!61 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!62 = !{!63, !37, i64 16}
!63 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !64, i64 48, !64, i64 64}
!64 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!65 = !{!63, !37, i64 24}
!66 = !{!67, !37, i64 16}
!67 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!68 = !{!63, !37, i64 32}
!69 = distinct !{!69, !57, !58}
!70 = !{!67, !37, i64 0}
!71 = !{!72, !40, i64 12}
!72 = !{!"MVertSkin", !38, i64 0, !40, i64 12}
!73 = distinct !{!73, !57, !58}
!74 = !{!63, !37, i64 40}
!75 = distinct !{!75, !57, !58}
!76 = !{!53, !37, i64 40}
!77 = !{!53, !37, i64 32}
!78 = !{!36, !38, i64 13}
!79 = !{!67, !37, i64 48}
!80 = !{!63, !37, i64 48}
!81 = distinct !{!81, !57, !58}
!82 = !{!83, !38, i64 60}
!83 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!84 = !{!83, !37, i64 40}
!85 = !{!83, !37, i64 48}
!86 = !{!43, !37, i64 40}
!87 = !{!38, !38, i64 0}
!88 = distinct !{!88, !57, !58}
!89 = distinct !{!89, !57, !58}
!90 = !{!43, !37, i64 32}
!91 = distinct !{!91, !57, !58}
!92 = distinct !{!92, !57, !58}
!93 = distinct !{!93, !57, !58}
!94 = !{!43, !37, i64 56}
!95 = distinct !{!95, !57, !58}
!96 = !{!61, !37, i64 1288}
!97 = distinct !{!97, !57, !58}
!98 = !{!43, !37, i64 976}
!99 = distinct !{!99, !57, !58}
!100 = distinct !{!100, !57, !58}
!101 = distinct !{!101, !57, !58}
!102 = !{!43, !40, i64 4}
!103 = distinct !{!103, !57, !58}
!104 = !{!36, !40, i64 8}
!105 = !{!40, !40, i64 0}
!106 = distinct !{!106, !57, !58}
!107 = distinct !{!107, !57, !58}
!108 = distinct !{!108, !57, !58}
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !38, i64 0}
!111 = distinct !{!111, !57, !58}
!112 = distinct !{!112, !57, !58}
!113 = distinct !{!113, !57, !58}
!114 = distinct !{!114, !57, !58}
!115 = distinct !{!115, !57, !58}
!116 = !{!43, !40, i64 0}
!117 = !{!118, !37, i64 0}
!118 = !{!"", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!119 = !{!118, !40, i64 8}
!120 = !{!118, !40, i64 12}
!121 = !{!118, !40, i64 16}
!122 = !{!118, !40, i64 20}
!123 = !{!35, !40, i64 32}
!124 = distinct !{!124, !57, !58}
!125 = distinct !{!125, !57, !58}
!126 = distinct !{!126, !57, !58}
!127 = distinct !{!127, !57, !58}
