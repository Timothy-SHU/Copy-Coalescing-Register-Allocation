; ModuleID = 'blender/source/blender/bmesh/operators/bmo_dupe.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_dupe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"geom_orig.out\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"use_only_faces\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"boundary_map.out\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"isovert_map.out\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"cent\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dvec\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"use_duplicate\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"geom_last.out\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"duplicate geom=%S\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"rotate cent=%v matrix=%m3 space=%s verts=%S\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"extrude_face_region geom=%S\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"translate vec=%v space=%s verts=%S\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"use_select_history\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"vert_map.out\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"edge_map.out\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"face_map.out\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"bmesh dupeops v\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"bmesh dupeops e\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_duplicate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BMO_slot_ptr_get(ptr noundef %1, ptr noundef nonnull @.str) #9
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %0, ptr %3
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #9
  tail call fastcc void @bmo_mesh_copy(ptr noundef %1, ptr noundef %5, ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef %8) #9
  tail call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i8 noundef zeroext 11, i16 noundef signext 2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_slot_ptr_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_mesh_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !40 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %0, ptr noundef nonnull @.str.22) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 1
  %10 = tail call ptr @BMO_slot_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.8) #9
  %11 = tail call ptr @BMO_slot_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.9) #9
  %12 = tail call ptr @BMO_slot_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.23) #9
  %13 = tail call ptr @BMO_slot_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.24) #9
  %14 = tail call ptr @BMO_slot_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.25) #9
  %15 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.26) #9
  %16 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.27) #9
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 1, ptr noundef null) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %3, %56
  %20 = phi ptr [ %57, %56 ], [ %17, %3 ]
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %22, i16 noundef signext 1) #10, !range !44
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %19
  %26 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %22, i16 noundef signext 4) #10, !range !44
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %29 = call fastcc ptr @bmo_vert_copy(ptr noundef %0, ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %20, ptr noundef %15) #10
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %20) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %38
  %33 = phi ptr [ %39, %38 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %35, i16 noundef signext 1) #10, !range !44
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !48

41:                                               ; preds = %38, %28
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %20) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41, %50
  %45 = phi ptr [ %51, %50 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %47, i16 noundef signext 1) #10, !range !44
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !53

53:                                               ; preds = %50, %41
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %20, ptr noundef %29) #10
  br label %54

54:                                               ; preds = %32, %44, %53
  %55 = load ptr, ptr %21, align 8, !tbaa !41
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %55, i16 noundef signext 4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %56

56:                                               ; preds = %19, %25, %54
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %19, !llvm.loop !54

59:                                               ; preds = %56, %3
  %60 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %2, i8 noundef zeroext 2, ptr noundef null) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %100, label %62

62:                                               ; preds = %59, %97
  %63 = phi ptr [ %98, %97 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %65, i16 noundef signext 1) #10, !range !44
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %97, label %68

68:                                               ; preds = %62
  %69 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %65, i16 noundef signext 4) #10, !range !44
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !55
  %74 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  %76 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %75, i16 noundef signext 4) #10, !range !44
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = call fastcc ptr @bmo_vert_copy(ptr noundef %0, ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %73, ptr noundef %15) #10
  %80 = load ptr, ptr %72, align 8, !tbaa !55
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !41
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %82, i16 noundef signext 4) #10
  br label %83

83:                                               ; preds = %78, %71
  %84 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !56
  %86 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %87, i16 noundef signext 4) #10, !range !44
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = call fastcc ptr @bmo_vert_copy(ptr noundef %0, ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %85, ptr noundef %15) #10
  %92 = load ptr, ptr %84, align 8, !tbaa !56
  %93 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !41
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %94, i16 noundef signext 4) #10
  br label %95

95:                                               ; preds = %90, %83
  call fastcc void @bmo_edge_copy(ptr noundef %0, ptr noundef %13, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %63, ptr noundef %15, ptr noundef %16) #10
  %96 = load ptr, ptr %64, align 8, !tbaa !50
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %96, i16 noundef signext 4) #10
  br label %97

97:                                               ; preds = %62, %68, %95
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %62, !llvm.loop !57

100:                                              ; preds = %97, %59
  %101 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %2, i8 noundef zeroext 3, ptr noundef null) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %143, label %103

103:                                              ; preds = %100, %140
  %104 = phi ptr [ %141, %140 ], [ %101, %100 ]
  %105 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %106, i16 noundef signext 1) #10, !range !44
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %140, label %109

109:                                              ; preds = %103
  %110 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 9, ptr noundef nonnull %104) #10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %109, %121
  %113 = phi ptr [ %122, %121 ], [ %110, %109 ]
  %114 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !41
  %116 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %115, i16 noundef signext 4) #10, !range !44
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = call fastcc ptr @bmo_vert_copy(ptr noundef %0, ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %113, ptr noundef %15) #10
  %120 = load ptr, ptr %114, align 8, !tbaa !41
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %120, i16 noundef signext 4) #10
  br label %121

121:                                              ; preds = %112, %118
  %122 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #10
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %112, !llvm.loop !58

124:                                              ; preds = %121, %109
  %125 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 10, ptr noundef nonnull %104) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %124, %135
  %128 = phi ptr [ %136, %135 ], [ %125, %124 ]
  %129 = getelementptr inbounds %struct.BMEdge, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %2, ptr noundef %130, i16 noundef signext 4) #10, !range !44
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  call fastcc void @bmo_edge_copy(ptr noundef %0, ptr noundef %13, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %128, ptr noundef %15, ptr noundef %16) #10
  %134 = load ptr, ptr %129, align 8, !tbaa !50
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %134, i16 noundef signext 4) #10
  br label %135

135:                                              ; preds = %127, %133
  %136 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %127, !llvm.loop !59

138:                                              ; preds = %135, %124
  call fastcc void @bmo_face_copy(ptr noundef %0, ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %104, ptr noundef %15, ptr noundef %16) #10
  %139 = load ptr, ptr %105, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %139, i16 noundef signext 4) #10
  br label %140

140:                                              ; preds = %103, %138
  %141 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %103, !llvm.loop !60

143:                                              ; preds = %140, %100
  call void @BLI_ghash_free(ptr noundef %15, ptr noundef null, ptr noundef null) #9
  call void @BLI_ghash_free(ptr noundef %16, ptr noundef null, ptr noundef null) #9
  %144 = icmp eq i8 %8, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %143
  call void @BMO_mesh_selected_remap(ptr noundef %1, ptr noundef %12, ptr noundef %13, ptr noundef %14, i8 noundef zeroext 0) #9
  br label %146

146:                                              ; preds = %145, %143
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_split_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #11
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  %8 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !61
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %9, ptr noundef nonnull @.str.5) #9
  %10 = load i32, ptr %8, align 8, !tbaa !61
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %10, ptr noundef nonnull @.str.6) #9
  %11 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef %12) #9
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #9
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #9
  %13 = icmp eq i8 %7, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %14, %33
  %18 = phi ptr [ %34, %33 ], [ %15, %14 ]
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %18) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %27
  %22 = phi ptr [ %28, %27 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %24, i16 noundef signext 1) #10, !range !44
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !62

30:                                               ; preds = %27, %17
  %31 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %32, i16 noundef signext 1) #10
  br label %33

33:                                               ; preds = %21, %30
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %17, !llvm.loop !63

36:                                               ; preds = %33, %14
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %36, %55
  %40 = phi ptr [ %56, %55 ], [ %37, %36 ]
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %40) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39, %49
  %44 = phi ptr [ %50, %49 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %46, i16 noundef signext 1) #10, !range !44
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43, !llvm.loop !64

52:                                               ; preds = %49, %39
  %53 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %54, i16 noundef signext 1) #10
  br label %55

55:                                               ; preds = %43, %52
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %39, !llvm.loop !65

58:                                               ; preds = %55, %36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %59

59:                                               ; preds = %58, %2
  call void @BMO_slot_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef 5) #9
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #9
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #9
  %60 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %61 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %62 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef nonnull %60, ptr noundef nonnull @.str.3, ptr noundef nonnull %61, ptr noundef nonnull @.str.3, ptr noundef %63) #9
  %64 = load ptr, ptr %62, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef nonnull %60, ptr noundef nonnull @.str.8, ptr noundef nonnull %61, ptr noundef nonnull @.str.8, ptr noundef %64) #9
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef nonnull %60, ptr noundef nonnull @.str.9, ptr noundef nonnull %61, ptr noundef nonnull @.str.9, ptr noundef %65) #9
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #9
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !66 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #10
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !67 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !72
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !77 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !72
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_delete_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 11, i16 noundef signext 1) #9
  %3 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #9
  tail call void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext 1, i32 noundef %3) #9
  ret void
}

; Function Attrs: optsize
declare void @BMO_mesh_delete_oflag_context(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_spin_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #9
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #9
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #10
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #9
  %9 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %6) #10, !range !78
  %10 = call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  %11 = call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  %12 = sitofp i32 %10 to float
  %13 = fdiv float %11, %12
  %14 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %13) #9
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %15, ptr noundef nonnull @.str.16, ptr noundef %17) #9
  %18 = icmp sgt i32 %10, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = icmp eq i8 %14, 0
  %21 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %22 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  %24 = icmp eq i8 %9, 0
  br label %25

25:                                               ; preds = %19, %41
  %26 = phi i32 [ 0, %19 ], [ %42, %41 ]
  %27 = load i32, ptr %21, align 8, !tbaa !61
  br i1 %20, label %30, label %28

28:                                               ; preds = %25
  %29 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #9
  br label %32

30:                                               ; preds = %25
  %31 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %27, ptr noundef nonnull @.str.20, ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #9
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %4, %30 ], [ %3, %28 ]
  %34 = phi ptr [ %23, %30 ], [ %22, %28 ]
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %33) #9
  %35 = load i32, ptr %21, align 8, !tbaa !61
  %36 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %35, ptr noundef nonnull @.str.18, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %33, ptr noundef nonnull @.str.3) #9
  %37 = load ptr, ptr %16, align 8, !tbaa !34
  call void @_bmo_slot_copy(ptr noundef nonnull %34, ptr noundef nonnull @.str.3, ptr noundef nonnull %15, ptr noundef nonnull @.str.16, ptr noundef %37) #9
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %33) #9
  br i1 %24, label %38, label %41

38:                                               ; preds = %32
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #9
  %39 = load i32, ptr %21, align 8, !tbaa !61
  %40 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %39, ptr noundef nonnull @.str.21, ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %1, ptr noundef nonnull @.str.16) #9
  br label %41

41:                                               ; preds = %32, %38
  %42 = add nuw nsw i32 %26, 1
  %43 = icmp eq i32 %42, %10
  br i1 %43, label %44, label %25, !llvm.loop !79

44:                                               ; preds = %41, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !80 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !81 {
  %2 = load float, ptr %0, align 4, !tbaa !82
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bmo_vert_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !84 {
  %7 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %8 = tail call ptr @BM_vert_create(ptr noundef %2, ptr noundef nonnull %7, ptr noundef null, i32 noundef 4) #9
  tail call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %8) #10
  tail call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef %4) #10
  tail call void @BLI_ghash_insert(ptr noundef %5, ptr noundef %4, ptr noundef %8) #9
  tail call void @BM_elem_attrs_copy(ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %10, i16 noundef signext 2) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !85 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_edge_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !86 {
  %9 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %24, %12 ], [ %10, %8 ]
  %14 = phi i32 [ %22, %12 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %4, ptr noundef %18, i16 noundef signext 1) #10, !range !44
  %20 = icmp ne i16 %19, 0
  %21 = zext i1 %20 to i32
  %22 = add i32 %14, %21
  %23 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %26, label %12, !llvm.loop !91

26:                                               ; preds = %12
  %27 = icmp ult i32 %22, 2
  br label %28

28:                                               ; preds = %26, %8
  %29 = phi i1 [ %27, %26 ], [ true, %8 ]
  %30 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.BMEdge, ptr %5, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %34) #9
  %36 = tail call ptr @BM_edge_create(ptr noundef %3, ptr noundef %32, ptr noundef %35, ptr noundef null, i32 noundef 4) #9
  tail call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %36) #10
  tail call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %36, ptr noundef %5) #10
  br i1 %29, label %37, label %38

37:                                               ; preds = %28
  tail call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %36) #10
  br label %38

38:                                               ; preds = %37, %28
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %36) #9
  tail call void @BM_elem_attrs_copy(ptr noundef %4, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %36) #9
  %39 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %3, ptr noundef %40, i16 noundef signext 2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_face_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !92 {
  %8 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = alloca i8, i64 %11, align 16
  %14 = getelementptr inbounds %struct.BMFace, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %16, %7
  %17 = phi i64 [ %27, %16 ], [ 0, %7 ]
  %18 = phi ptr [ %29, %16 ], [ %15, %7 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %20) #9
  %22 = getelementptr inbounds ptr, ptr %12, i64 %17
  store ptr %21, ptr %22, align 8, !tbaa !96
  %23 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %24) #9
  %26 = getelementptr inbounds ptr, ptr %13, i64 %17
  store ptr %25, ptr %26, align 8, !tbaa !96
  %27 = add nuw i64 %17, 1
  %28 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !98
  %30 = icmp eq ptr %29, %15
  br i1 %30, label %31, label %16, !llvm.loop !99

31:                                               ; preds = %16
  %32 = load i32, ptr %8, align 8, !tbaa !93
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %32, ptr noundef null, i32 noundef 4) #9
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %33) #10
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %33, ptr noundef %4) #10
  call void @BM_elem_attrs_copy(ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %33) #9
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 2
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %34, %31 ], [ %39, %35 ]
  %37 = phi ptr [ %15, %31 ], [ %41, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !96
  call void @BM_elem_attrs_copy(ptr noundef %3, ptr noundef %2, ptr noundef %37, ptr noundef %38) #9
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 6
  %40 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = icmp eq ptr %41, %15
  br i1 %42, label %43, label %35, !llvm.loop !100

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %2, ptr noundef %45, i16 noundef signext 2) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_mesh_selected_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !101 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !102
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %24 [
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
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  br label %25

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  br label %25

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  br label %25

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %25

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %25

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %25

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %25

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %25

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !75
  br label %25

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !103
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !75
  br label %25

24:                                               ; preds = %4
  unreachable

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %26 = phi ptr [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %27 = phi ptr [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %26, ptr %0, align 8, !tbaa !107
  tail call void %27(ptr noundef nonnull %0) #9
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !108 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #10
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #9
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #10
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !109 {
  %3 = load float, ptr %0, align 4, !tbaa !82
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !110 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !82
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !111 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !82
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{!35, !38, i64 1288}
!35 = !{!"BMOperator", !36, i64 0, !36, i64 640, !38, i64 1280, !38, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"bmo_dupe.c:bmo_mesh_copy"}
!41 = !{!42, !38, i64 16}
!42 = !{!"BMVert", !43, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!43 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!44 = !{i16 0, i16 5}
!45 = !{!46, !38, i64 16}
!46 = !{!"BMFace", !43, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !47, i64 48}
!47 = !{!"short", !36, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!51, !38, i64 16}
!51 = !{!"BMEdge", !43, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !52, i64 48, !52, i64 64}
!52 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = !{!51, !38, i64 24}
!56 = !{!51, !38, i64 32}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = !{!35, !39, i64 1304}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = !{!"bmo_dupe.c:BM_iter_new"}
!67 = !{!"bmo_dupe.c:_bmo_elem_flag_test"}
!68 = !{!69, !39, i64 128}
!69 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !70, i64 144, !70, i64 344, !70, i64 544, !70, i64 744, !47, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !71, i64 960, !38, i64 976, !71, i64 984, !38, i64 1000}
!70 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!71 = !{!"ListBase", !38, i64 0, !38, i64 8}
!72 = !{!73, !47, i64 0}
!73 = !{!"BMFlagLayer", !47, i64 0}
!74 = !{!"bmo_dupe.c:BM_iter_step"}
!75 = !{!76, !38, i64 48}
!76 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!77 = !{!"bmo_dupe.c:_bmo_elem_flag_enable"}
!78 = !{i8 0, i8 2}
!79 = distinct !{!79, !49}
!80 = !{!"bmo_dupe.c:normalize_v3"}
!81 = !{!"bmo_dupe.c:is_zero_v3"}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !36, i64 0}
!84 = !{!"bmo_dupe.c:bmo_vert_copy"}
!85 = !{!"bmo_dupe.c:BMO_slot_map_elem_insert"}
!86 = !{!"bmo_dupe.c:bmo_edge_copy"}
!87 = !{!51, !38, i64 40}
!88 = !{!89, !38, i64 32}
!89 = !{!"BMLoop", !43, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!90 = !{!89, !38, i64 40}
!91 = distinct !{!91, !49}
!92 = !{!"bmo_dupe.c:bmo_face_copy"}
!93 = !{!46, !39, i64 32}
!94 = !{!46, !38, i64 24}
!95 = !{!89, !38, i64 16}
!96 = !{!38, !38, i64 0}
!97 = !{!89, !38, i64 24}
!98 = !{!89, !38, i64 56}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = !{!"bmo_dupe.c:BM_iter_init"}
!102 = !{!76, !36, i64 60}
!103 = !{!76, !38, i64 40}
!104 = !{!69, !38, i64 32}
!105 = !{!69, !38, i64 40}
!106 = !{!69, !38, i64 56}
!107 = !{!36, !36, i64 0}
!108 = !{!"bmo_dupe.c:normalize_v3_v3"}
!109 = !{!"bmo_dupe.c:dot_v3v3"}
!110 = !{!"bmo_dupe.c:mul_v3_v3fl"}
!111 = !{!"bmo_dupe.c:zero_v3"}
