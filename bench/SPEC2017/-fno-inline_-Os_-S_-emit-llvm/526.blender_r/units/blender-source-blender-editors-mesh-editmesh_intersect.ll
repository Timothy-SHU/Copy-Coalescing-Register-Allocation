; ModuleID = 'blender/source/blender/editors/mesh/editmesh_intersect.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [10 x i8] c"Intersect\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cut an intersection into faces\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MESH_OT_intersect\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@isect_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.16 }, %struct.EnumPropertyItem { i32 1, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"use_separate\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Separate\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Merge threshold\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Split by Edges\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Split faces by loose edges\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"MESH_OT_face_split_by_edges\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"No intersections found\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Self Intersect\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Self intersect selected faces\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SELECT_UNSELECT\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Selected/Unselected\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Intersect selected with unselected faces\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"BLI_array.edge_net\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_intersect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_intersect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @isect_mode_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !17
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #9
  %11 = load ptr, ptr %6, align 8, !tbaa !17
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.8, float noundef 0x3EB0C6F7A0000000, float noundef 0.000000e+00, float noundef 0x3F847AE140000000, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 0x3F50624DE0000000) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %13, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_intersect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #9
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #9
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %7, align 8, !tbaa !23
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.8) #9
  %15 = icmp eq i32 %9, 0
  %16 = zext i1 %15 to i8
  %17 = select i1 %15, ptr @bm_face_isect_self, ptr @bm_face_isect_pair
  %18 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !26
  %22 = tail call zeroext i8 @BM_mesh_intersect(ptr noundef %6, ptr noundef %19, i32 noundef %21, ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext %16, i8 noundef zeroext %12, float noundef %14) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %5, align 8, !tbaa !19
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %25, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  %26 = load ptr, ptr %5, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 28
  %28 = load i16, ptr %27, align 8, !tbaa !27
  %29 = and i16 %28, 3
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 2, ptr noundef null) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %39
  %35 = phi ptr [ %40, %39 ], [ %32, %31 ]
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %35, i8 noundef zeroext 16) #11, !range !30
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @BM_edge_select_set(ptr noundef %6, ptr noundef nonnull %35, i8 noundef zeroext 1) #9
  br label %39

39:                                               ; preds = %34, %38
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !31

42:                                               ; preds = %39, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  br label %43

43:                                               ; preds = %42, %24
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #9
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %47

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !33
  tail call void @BKE_report(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.13) #9
  br label %47

47:                                               ; preds = %44, %43
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_face_split_by_edges(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_face_split_by_edges_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_face_split_by_edges_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 1, ptr noundef null) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %2 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %13) #11
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !34

16:                                               ; preds = %12, %2
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16, %32
  %20 = phi ptr [ %33, %32 ], [ %17, %16 ]
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 1) #11, !range !30
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %20) #11, !range !35
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %20) #11
  %27 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  call fastcc void @_bm_elem_flag_enable(ptr noundef %28) #11
  %29 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  call fastcc void @_bm_elem_flag_enable(ptr noundef %30) #11
  br label %32

31:                                               ; preds = %23, %19
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %20) #11
  br label %32

32:                                               ; preds = %31, %26
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %20, i32 noundef -1) #11
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !llvm.loop !41

35:                                               ; preds = %32, %16
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35, %44
  %39 = phi ptr [ %45, %44 ], [ %36, %35 ]
  %40 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %39, i8 noundef zeroext 1) #11, !range !30
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %39) #11
  br label %44

43:                                               ; preds = %38
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %39) #11
  br label %44

44:                                               ; preds = %42, %43
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !42

47:                                               ; preds = %44, %35
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %175, label %50

50:                                               ; preds = %47, %170
  %51 = phi ptr [ %173, %170 ], [ %48, %47 ]
  %52 = phi ptr [ %172, %170 ], [ null, %47 ]
  %53 = phi ptr [ %171, %170 ], [ null, %47 ]
  %54 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %51, i8 noundef zeroext 16) #11, !range !30
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %170, label %56

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 7, ptr noundef nonnull %51) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %167, label %59

59:                                               ; preds = %56, %162
  %60 = phi ptr [ %165, %162 ], [ %57, %56 ]
  %61 = phi ptr [ %163, %162 ], [ %52, %56 ]
  %62 = phi ptr [ %164, %162 ], [ %53, %56 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %60) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %162, label %65

65:                                               ; preds = %59, %85
  %66 = phi i32 [ %88, %85 ], [ 0, %59 ]
  %67 = phi ptr [ %89, %85 ], [ %63, %59 ]
  %68 = phi ptr [ %87, %85 ], [ %61, %59 ]
  %69 = phi ptr [ %86, %85 ], [ %62, %59 ]
  %70 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %71, i8 noundef zeroext 16) #11, !range !30
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %65
  %75 = icmp eq ptr %68, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %68, align 8, !tbaa !45
  br label %80

78:                                               ; preds = %74
  %79 = alloca [16 x i8], align 16
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %77, %76 ], [ null, %78 ]
  %82 = phi ptr [ %68, %76 ], [ %79, %78 ]
  store ptr %69, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds %struct.LinkNode, ptr %82, i64 0, i32 1
  store ptr %67, ptr %83, align 8, !tbaa !47
  %84 = add i32 %66, 1
  br label %85

85:                                               ; preds = %65, %80
  %86 = phi ptr [ %82, %80 ], [ %69, %65 ]
  %87 = phi ptr [ %81, %80 ], [ %68, %65 ]
  %88 = phi i32 [ %84, %80 ], [ %66, %65 ]
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %65, !llvm.loop !48

91:                                               ; preds = %85
  switch i32 %88, label %98 [
    i32 0, label %162
    i32 1, label %92
  ]

92:                                               ; preds = %91
  %93 = icmp eq ptr %86, null
  br i1 %93, label %162, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %86, align 8, !tbaa !45
  store ptr %87, ptr %86, align 8, !tbaa !45
  %96 = getelementptr inbounds %struct.LinkNode, ptr %86, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  br label %153

98:                                               ; preds = %91
  %99 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %51, ptr noundef nonnull %60) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %100 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  %101 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %100, ptr noundef nonnull %101) #11
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #11
  %102 = icmp eq ptr %86, null
  br i1 %102, label %149, label %103

103:                                              ; preds = %98, %145
  %104 = phi float [ %147, %145 ], [ 0x47EFFFFFE0000000, %98 ]
  %105 = phi ptr [ %146, %145 ], [ null, %98 ]
  %106 = phi ptr [ %107, %145 ], [ %87, %98 ]
  %107 = phi ptr [ %108, %145 ], [ %86, %98 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  store ptr %106, ptr %107, align 8, !tbaa !45
  %109 = getelementptr inbounds %struct.LinkNode, ptr %107, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !47
  %111 = icmp eq ptr %110, null
  br i1 %111, label %149, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = getelementptr inbounds %struct.BMFace, ptr %114, i64 0, i32 4
  %116 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %115) #11
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = fcmp olt float %117, %104
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !49
  %122 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !50
  %124 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2
  %125 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  %127 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 2
  %128 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %124, ptr noundef nonnull %127, ptr noundef nonnull %100, ptr noundef nonnull %115) #9
  %129 = load ptr, ptr %120, align 8, !tbaa !49
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %125, align 8, !tbaa !50
  %134 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2
  %135 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  %137 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.BMVert, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %113, align 8, !tbaa !43
  %141 = getelementptr inbounds %struct.BMFace, ptr %140, i64 0, i32 4
  %142 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %132, ptr noundef nonnull %134, ptr noundef nonnull %139, ptr noundef nonnull %141) #9
  %143 = fcmp olt float %128, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %119
  br label %145

145:                                              ; preds = %119, %144, %112
  %146 = phi ptr [ %110, %144 ], [ %105, %119 ], [ %105, %112 ]
  %147 = phi float [ %117, %144 ], [ %104, %119 ], [ %104, %112 ]
  %148 = icmp eq ptr %108, null
  br i1 %148, label %149, label %103, !llvm.loop !52

149:                                              ; preds = %103, %145, %98
  %150 = phi ptr [ null, %98 ], [ %146, %145 ], [ %105, %103 ]
  %151 = phi ptr [ %87, %98 ], [ %107, %145 ], [ %107, %103 ]
  %152 = phi ptr [ null, %98 ], [ null, %145 ], [ %108, %103 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %153

153:                                              ; preds = %94, %149
  %154 = phi ptr [ %152, %149 ], [ %95, %94 ]
  %155 = phi ptr [ %151, %149 ], [ %86, %94 ]
  %156 = phi ptr [ %150, %149 ], [ %97, %94 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !43
  %161 = call fastcc i32 @_bm_elem_index_get(ptr noundef %160) #11
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %51, i32 noundef %161) #11
  br label %162

162:                                              ; preds = %59, %92, %91, %158, %153
  %163 = phi ptr [ %155, %158 ], [ %155, %153 ], [ %87, %91 ], [ %87, %92 ], [ %61, %59 ]
  %164 = phi ptr [ %154, %158 ], [ %154, %153 ], [ %86, %91 ], [ null, %92 ], [ %62, %59 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  %165 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %59, !llvm.loop !53

167:                                              ; preds = %162, %56
  %168 = phi ptr [ %53, %56 ], [ %164, %162 ]
  %169 = phi ptr [ %52, %56 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %170

170:                                              ; preds = %50, %167
  %171 = phi ptr [ %168, %167 ], [ %53, %50 ]
  %172 = phi ptr [ %169, %167 ], [ %52, %50 ]
  %173 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %50, !llvm.loop !54

175:                                              ; preds = %170, %47
  %176 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 7
  %177 = load i8, ptr %176, align 4, !tbaa !55
  %178 = or i8 %177, 2
  store i8 %178, ptr %176, align 4, !tbaa !55
  %179 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #11
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %175, %186
  %182 = phi ptr [ %187, %186 ], [ %179, %175 ]
  %183 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %182, i8 noundef zeroext 16) #11, !range !30
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  call fastcc void @bm_face_split_by_edges(ptr noundef %9, ptr noundef nonnull %182) #11
  br label %186

186:                                              ; preds = %181, %185
  %187 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %181, !llvm.loop !56

189:                                              ; preds = %186, %175
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %8) #9
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_isect_self(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 1) #11, !range !30
  %4 = icmp eq i8 %3, 0
  %5 = sext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_isect_pair(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #11, !range !30
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 1) #11, !range !30
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ -1, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare zeroext i8 @BM_mesh_intersect(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #11
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !57
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !60
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %21 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  br label %22

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  br label %22

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  br label %22

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !58
  br label %22

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !58
  br label %22

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !58
  br label %22

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !58
  br label %22

21:                                               ; preds = %4
  unreachable

22:                                               ; preds = %20, %19, %18, %17, %14, %11, %8
  %23 = phi ptr [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %24 = phi ptr [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %23, ptr %0, align 8, !tbaa !65
  tail call void %24(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !57
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !57
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = load float, ptr %2, align 4, !tbaa !68
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !68
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !68
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !68
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare float @angle_signed_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !67
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_split_by_edges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !70
  %8 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  br label %11

11:                                               ; preds = %55, %2
  %12 = phi ptr [ null, %2 ], [ %56, %55 ]
  %13 = phi ptr [ %10, %2 ], [ %59, %55 ]
  %14 = phi i32 [ 0, %2 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %11, %50
  %20 = phi i32 [ %52, %50 ], [ %14, %11 ]
  %21 = phi ptr [ %53, %50 ], [ %17, %11 ]
  %22 = phi ptr [ %51, %50 ], [ %12, %11 ]
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 16) #11, !range !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %19
  %26 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %21) #11
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !50
  %30 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %21, ptr noundef %29) #11
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 4
  store ptr %21, ptr %31, align 8, !tbaa !73
  %32 = alloca [16 x i8], align 16
  store ptr %22, ptr %32, align 16, !tbaa !45
  %33 = getelementptr inbounds %struct.LinkNode, ptr %32, i64 0, i32 1
  store ptr %30, ptr %33, align 8, !tbaa !47
  %34 = load ptr, ptr %3, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !70
  %38 = call i64 %37(ptr noundef nonnull %34) #9
  %39 = lshr i64 %38, 3
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i64 [ %39, %36 ], [ 0, %28 ]
  %42 = add nsw i32 %20, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @_bli_array_grow_func(ptr noundef nonnull %3, ptr noundef null, i32 noundef 8, i32 noundef %20, i32 noundef 1, ptr noundef nonnull @.str.20) #9
  br label %46

46:                                               ; preds = %45, %40
  %47 = load ptr, ptr %3, align 8, !tbaa !70
  %48 = sext i32 %20 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %21, ptr %49, align 8, !tbaa !70
  br label %50

50:                                               ; preds = %19, %25, %46
  %51 = phi ptr [ %32, %46 ], [ %22, %25 ], [ %22, %19 ]
  %52 = phi i32 [ %42, %46 ], [ %20, %25 ], [ %20, %19 ]
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %19, !llvm.loop !75

55:                                               ; preds = %50, %11
  %56 = phi ptr [ %12, %11 ], [ %51, %50 ]
  %57 = phi i32 [ %14, %11 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  %58 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = icmp eq ptr %59, %10
  br i1 %60, label %61, label %11, !llvm.loop !76

61:                                               ; preds = %55
  %62 = icmp eq ptr %56, null
  br i1 %62, label %131, label %63

63:                                               ; preds = %61, %125
  %64 = phi i32 [ %122, %125 ], [ %57, %61 ]
  %65 = phi ptr [ %129, %125 ], [ %56, %61 ]
  %66 = phi ptr [ %128, %125 ], [ null, %61 ]
  %67 = phi ptr [ %127, %125 ], [ null, %61 ]
  %68 = phi ptr [ %126, %125 ], [ null, %61 ]
  %69 = load ptr, ptr %65, align 8, !tbaa !45
  store ptr %66, ptr %65, align 8, !tbaa !45
  %70 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !47
  %72 = icmp eq ptr %71, null
  br i1 %72, label %131, label %73

73:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %71) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %119, label %76

76:                                               ; preds = %73, %113
  %77 = phi i32 [ %116, %113 ], [ %64, %73 ]
  %78 = phi ptr [ %117, %113 ], [ %74, %73 ]
  %79 = phi ptr [ %115, %113 ], [ %65, %73 ]
  %80 = phi ptr [ %114, %113 ], [ %67, %73 ]
  %81 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %78, i8 noundef zeroext 16) #11, !range !30
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %76
  %84 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %78) #11
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %78, ptr noundef nonnull %71) #11
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %78, i32 noundef %8) #11
  %88 = icmp eq ptr %79, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %79, align 8, !tbaa !45
  br label %93

91:                                               ; preds = %86
  %92 = alloca [16 x i8], align 16
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi ptr [ %90, %89 ], [ null, %91 ]
  %95 = phi ptr [ %79, %89 ], [ %92, %91 ]
  store ptr %80, ptr %95, align 8, !tbaa !45
  %96 = getelementptr inbounds %struct.LinkNode, ptr %95, i64 0, i32 1
  store ptr %87, ptr %96, align 8, !tbaa !47
  %97 = load ptr, ptr %3, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !70
  %101 = call i64 %100(ptr noundef nonnull %97) #9
  %102 = lshr i64 %101, 3
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i64 [ %102, %99 ], [ 0, %93 ]
  %105 = add nsw i32 %77, 1
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  call void @_bli_array_grow_func(ptr noundef nonnull %3, ptr noundef null, i32 noundef 8, i32 noundef %77, i32 noundef 1, ptr noundef nonnull @.str.20) #9
  br label %109

109:                                              ; preds = %108, %103
  %110 = load ptr, ptr %3, align 8, !tbaa !70
  %111 = sext i32 %77 to i64
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  store ptr %78, ptr %112, align 8, !tbaa !70
  br label %113

113:                                              ; preds = %76, %83, %109
  %114 = phi ptr [ %95, %109 ], [ %80, %83 ], [ %80, %76 ]
  %115 = phi ptr [ %94, %109 ], [ %79, %83 ], [ %79, %76 ]
  %116 = phi i32 [ %105, %109 ], [ %77, %83 ], [ %77, %76 ]
  %117 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #11
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %76, !llvm.loop !77

119:                                              ; preds = %113, %73
  %120 = phi ptr [ %67, %73 ], [ %114, %113 ]
  %121 = phi ptr [ %65, %73 ], [ %115, %113 ]
  %122 = phi i32 [ %64, %73 ], [ %116, %113 ]
  %123 = icmp eq ptr %69, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %119
  %126 = phi ptr [ %121, %124 ], [ %68, %119 ]
  %127 = phi ptr [ null, %124 ], [ %120, %119 ]
  %128 = phi ptr [ %68, %124 ], [ %121, %119 ]
  %129 = phi ptr [ %120, %124 ], [ %69, %119 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %63, !llvm.loop !78

131:                                              ; preds = %63, %125, %61
  %132 = phi i32 [ %57, %61 ], [ %122, %125 ], [ %64, %63 ]
  %133 = load ptr, ptr %3, align 8, !tbaa !70
  %134 = call zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr noundef %133, i32 noundef %132, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %135 = load ptr, ptr %3, align 8, !tbaa !70
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %138(ptr noundef nonnull %135) #9
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i32, ptr %5, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %139, %142
  %143 = phi i64 [ %150, %142 ], [ 0, %139 ]
  %144 = load ptr, ptr %4, align 8, !tbaa !70
  %145 = getelementptr inbounds ptr, ptr %144, i64 %143
  %146 = load ptr, ptr %145, align 8, !tbaa !70
  call void @BM_face_select_set(ptr noundef %0, ptr noundef %146, i8 noundef zeroext 1) #9
  %147 = load ptr, ptr %4, align 8, !tbaa !70
  %148 = getelementptr inbounds ptr, ptr %147, i64 %143
  %149 = load ptr, ptr %148, align 8, !tbaa !70
  call fastcc void @_bm_elem_flag_disable(ptr noundef %149) #11
  %150 = add nuw nsw i64 %143, 1
  %151 = load i32, ptr %5, align 4, !tbaa !79
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %142, label %154, !llvm.loop !80

154:                                              ; preds = %142, %139
  %155 = load ptr, ptr %4, align 8, !tbaa !70
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %158(ptr noundef nonnull %155) #9
  br label %159

159:                                              ; preds = %157, %154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #11
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #9
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #11
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !68
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BM_face_split_edgenet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !7, i64 88}
!18 = !{!6, !12, i64 184}
!19 = !{!20, !7, i64 0}
!20 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !21, i64 16, !7, i64 24, !21, i64 32, !7, i64 40, !7, i64 48, !22, i64 56, !7, i64 64, !21, i64 72, !7, i64 80, !21, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !21, i64 104}
!21 = !{!"int", !8, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!24, !7, i64 112}
!24 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!25 = !{!20, !7, i64 24}
!26 = !{!20, !21, i64 32}
!27 = !{!28, !12, i64 944}
!28 = !{!"BMesh", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !21, i64 88, !21, i64 92, !21, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !21, i64 128, !7, i64 136, !29, i64 144, !29, i64 344, !29, i64 544, !29, i64 744, !12, i64 944, !21, i64 948, !21, i64 952, !21, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!29 = !{!"CustomData", !7, i64 0, !8, i64 8, !21, i64 172, !21, i64 176, !21, i64 180, !7, i64 184, !7, i64 192}
!30 = !{i8 0, i8 17}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!24, !7, i64 120}
!34 = distinct !{!34, !32}
!35 = !{i8 0, i8 2}
!36 = !{!37, !7, i64 24}
!37 = !{!"BMEdge", !38, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !39, i64 48, !39, i64 64}
!38 = !{!"BMHeader", !7, i64 0, !21, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!39 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!40 = !{!37, !7, i64 32}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !32}
!43 = !{!44, !7, i64 32}
!44 = !{!"BMLoop", !38, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!45 = !{!46, !7, i64 0}
!46 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!47 = !{!46, !7, i64 8}
!48 = distinct !{!48, !32}
!49 = !{!44, !7, i64 64}
!50 = !{!44, !7, i64 16}
!51 = !{!44, !7, i64 56}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !32}
!55 = !{!28, !8, i64 28}
!56 = distinct !{!56, !32}
!57 = !{!38, !8, i64 13}
!58 = !{!59, !7, i64 48}
!59 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !21, i64 56, !8, i64 60}
!60 = !{!59, !8, i64 60}
!61 = !{!59, !7, i64 40}
!62 = !{!28, !7, i64 32}
!63 = !{!28, !7, i64 40}
!64 = !{!28, !7, i64 56}
!65 = !{!8, !8, i64 0}
!66 = !{!37, !7, i64 40}
!67 = !{!38, !21, i64 8}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !8, i64 0}
!70 = !{!7, !7, i64 0}
!71 = !{!72, !7, i64 24}
!72 = !{!"BMFace", !38, i64 0, !7, i64 16, !7, i64 24, !21, i64 32, !8, i64 36, !12, i64 48}
!73 = !{!74, !7, i64 48}
!74 = !{!"BMVert", !38, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = !{!21, !21, i64 0}
!80 = distinct !{!80, !32}
