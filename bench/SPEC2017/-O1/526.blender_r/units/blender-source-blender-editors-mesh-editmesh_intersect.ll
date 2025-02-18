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
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
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

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_intersect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_intersect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @isect_mode_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !46
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.8, float noundef 0x3EB0C6F7A0000000, float noundef 0.000000e+00, float noundef 0x3F847AE140000000, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 0x3F50624DE0000000) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %13, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_intersect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #7
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %7, align 8, !tbaa !52
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.8) #7
  %15 = icmp eq i32 %9, 0
  %16 = zext i1 %15 to i8
  %17 = select i1 %15, ptr @bm_face_isect_self, ptr @bm_face_isect_pair
  %18 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = tail call zeroext i8 @BM_mesh_intersect(ptr noundef %6, ptr noundef %19, i32 noundef %21, ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext %16, i8 noundef zeroext %12, float noundef %14) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %5, align 8, !tbaa !48
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %25, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %26 = load ptr, ptr %5, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 28
  %28 = load i16, ptr %27, align 8, !tbaa !56
  %29 = and i16 %28, 3
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %32, align 4, !tbaa !59
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  store ptr %36, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %37 = load ptr, ptr %34, align 8, !tbaa !62
  %38 = call ptr %37(ptr noundef nonnull %3) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %31, %47
  %41 = phi ptr [ %49, %47 ], [ %38, %31 ]
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %43 = load i8, ptr %42, align 1, !tbaa !65
  %44 = and i8 %43, 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  call void @BM_edge_select_set(ptr noundef %6, ptr noundef nonnull %41, i8 noundef zeroext 1) #7
  br label %47

47:                                               ; preds = %40, %46
  %48 = load ptr, ptr %34, align 8, !tbaa !62
  %49 = call ptr %48(ptr noundef nonnull %3) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %40, !llvm.loop !67

51:                                               ; preds = %47, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  br label %52

52:                                               ; preds = %51, %24
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #7
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %56

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  tail call void @BKE_report(ptr noundef %55, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %56

56:                                               ; preds = %53, %52
  ret i32 4
}

declare i32 @ED_operator_editmesh(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_face_split_by_edges(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_face_split_by_edges_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_face_split_by_edges_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %13, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %14 = load ptr, ptr %11, align 8, !tbaa !62
  %15 = call ptr %14(ptr noundef nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2, %17
  %18 = phi ptr [ %23, %17 ], [ %15, %2 ]
  %19 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !65
  %21 = and i8 %20, -17
  store i8 %21, ptr %19, align 1, !tbaa !65
  %22 = load ptr, ptr %11, align 8, !tbaa !62
  %23 = call ptr %22(ptr noundef nonnull %3) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !llvm.loop !72

25:                                               ; preds = %17, %2
  store i8 2, ptr %9, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  store ptr %27, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %28 = load ptr, ptr %11, align 8, !tbaa !62
  %29 = call ptr %28(ptr noundef nonnull %3) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %25, %55
  %32 = phi ptr [ %58, %55 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !65
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = or i8 %34, 16
  store i8 %42, ptr %33, align 1, !tbaa !65
  %43 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !65
  %47 = or i8 %46, 16
  store i8 %47, ptr %45, align 1, !tbaa !65
  %48 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !65
  %52 = or i8 %51, 16
  store i8 %52, ptr %50, align 1, !tbaa !65
  br label %55

53:                                               ; preds = %37, %31
  %54 = and i8 %34, -17
  store i8 %54, ptr %33, align 1, !tbaa !65
  br label %55

55:                                               ; preds = %53, %41
  %56 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 1
  store i32 -1, ptr %56, align 8, !tbaa !78
  %57 = load ptr, ptr %11, align 8, !tbaa !62
  %58 = call ptr %57(ptr noundef nonnull %3) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %31, !llvm.loop !79

60:                                               ; preds = %55, %25
  store i8 3, ptr %9, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !62
  %61 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  store ptr %62, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %63 = load ptr, ptr %11, align 8, !tbaa !62
  %64 = call ptr %63(ptr noundef nonnull %3) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %60, %66
  %67 = phi ptr [ %76, %66 ], [ %64, %60 ]
  %68 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !65
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = or i8 %69, 16
  %73 = and i8 %69, -18
  %74 = select i1 %71, i8 %73, i8 %72
  store i8 %74, ptr %68, align 1, !tbaa !65
  %75 = load ptr, ptr %11, align 8, !tbaa !62
  %76 = call ptr %75(ptr noundef nonnull %3) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %66, !llvm.loop !81

78:                                               ; preds = %66, %60
  store i8 2, ptr %9, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !62
  %79 = load ptr, ptr %26, align 8, !tbaa !63
  store ptr %79, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %80 = load ptr, ptr %11, align 8, !tbaa !62
  %81 = call ptr %80(ptr noundef nonnull %3) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %274, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %85 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %86 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %87 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %88 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %89 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %90

90:                                               ; preds = %83, %268
  %91 = phi ptr [ %81, %83 ], [ %272, %268 ]
  %92 = phi ptr [ null, %83 ], [ %270, %268 ]
  %93 = phi ptr [ null, %83 ], [ %269, %268 ]
  %94 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !65
  %96 = and i8 %95, 16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %268, label %98

98:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  store i8 7, ptr %84, align 4, !tbaa !59
  store ptr @bmiter__vert_of_edge_begin, ptr %85, align 8, !tbaa !61
  store ptr @bmiter__vert_of_edge_step, ptr %86, align 8, !tbaa !62
  store ptr %91, ptr %4, align 8, !tbaa !64
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %4) #7
  %99 = load ptr, ptr %86, align 8, !tbaa !62
  %100 = call ptr %99(ptr noundef nonnull %4) #7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %265, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 2
  %104 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 3
  %105 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 3
  %106 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 1
  br label %107

107:                                              ; preds = %102, %261
  %108 = phi ptr [ %100, %102 ], [ %263, %261 ]
  %109 = phi ptr [ %92, %102 ], [ %253, %261 ]
  %110 = phi ptr [ %93, %102 ], [ %252, %261 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  store i8 6, ptr %87, align 4, !tbaa !59
  store ptr @bmiter__loop_of_vert_begin, ptr %88, align 8, !tbaa !61
  store ptr @bmiter__loop_of_vert_step, ptr %89, align 8, !tbaa !62
  store ptr %108, ptr %5, align 8, !tbaa !64
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #7
  %111 = load ptr, ptr %89, align 8, !tbaa !62
  %112 = call ptr %111(ptr noundef nonnull %5) #7
  %113 = icmp eq ptr %112, null
  br i1 %113, label %143, label %114

114:                                              ; preds = %107, %136
  %115 = phi i32 [ %139, %136 ], [ 0, %107 ]
  %116 = phi ptr [ %141, %136 ], [ %112, %107 ]
  %117 = phi ptr [ %138, %136 ], [ %109, %107 ]
  %118 = phi ptr [ %137, %136 ], [ %110, %107 ]
  %119 = getelementptr inbounds %struct.BMLoop, ptr %116, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !82
  %121 = getelementptr inbounds %struct.BMHeader, ptr %120, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !65
  %123 = and i8 %122, 16
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %114
  %126 = icmp eq ptr %117, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %117, align 8, !tbaa !84
  br label %131

129:                                              ; preds = %125
  %130 = alloca [16 x i8], align 16
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi ptr [ %128, %127 ], [ null, %129 ]
  %133 = phi ptr [ %117, %127 ], [ %130, %129 ]
  store ptr %118, ptr %133, align 8, !tbaa !84
  %134 = getelementptr inbounds %struct.LinkNode, ptr %133, i64 0, i32 1
  store ptr %116, ptr %134, align 8, !tbaa !86
  %135 = add i32 %115, 1
  br label %136

136:                                              ; preds = %114, %131
  %137 = phi ptr [ %133, %131 ], [ %118, %114 ]
  %138 = phi ptr [ %132, %131 ], [ %117, %114 ]
  %139 = phi i32 [ %135, %131 ], [ %115, %114 ]
  %140 = load ptr, ptr %89, align 8, !tbaa !62
  %141 = call ptr %140(ptr noundef nonnull %5) #7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %114, !llvm.loop !87

143:                                              ; preds = %136, %107
  %144 = phi ptr [ %110, %107 ], [ %137, %136 ]
  %145 = phi ptr [ %109, %107 ], [ %138, %136 ]
  %146 = phi i32 [ 0, %107 ], [ %139, %136 ]
  switch i32 %146, label %153 [
    i32 0, label %251
    i32 1, label %147
  ]

147:                                              ; preds = %143
  %148 = icmp eq ptr %144, null
  br i1 %148, label %251, label %149

149:                                              ; preds = %147
  %150 = load ptr, ptr %144, align 8, !tbaa !84
  store ptr %145, ptr %144, align 8, !tbaa !84
  %151 = getelementptr inbounds %struct.LinkNode, ptr %144, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !86
  br label %251

153:                                              ; preds = %143
  %154 = load ptr, ptr %103, align 8, !tbaa !76
  %155 = icmp eq ptr %154, %108
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load ptr, ptr %105, align 8, !tbaa !77
  br label %162

158:                                              ; preds = %153
  %159 = load ptr, ptr %104, align 8, !tbaa !77
  %160 = icmp eq ptr %159, %108
  %161 = select i1 %160, ptr %154, ptr null
  br label %162

162:                                              ; preds = %156, %158
  %163 = phi ptr [ %157, %156 ], [ %161, %158 ]
  %164 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 2
  %165 = getelementptr inbounds %struct.BMVert, ptr %108, i64 0, i32 2
  %166 = load float, ptr %164, align 4, !tbaa !88
  %167 = load float, ptr %165, align 4, !tbaa !88
  %168 = fsub float %166, %167
  %169 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 2, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !88
  %171 = getelementptr inbounds %struct.BMVert, ptr %108, i64 0, i32 2, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !88
  %173 = fsub float %170, %172
  %174 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 2, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !88
  %176 = getelementptr inbounds %struct.BMVert, ptr %108, i64 0, i32 2, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !88
  %178 = fsub float %175, %177
  %179 = fmul float %173, %173
  %180 = call float @llvm.fmuladd.f32(float %168, float %168, float %179)
  %181 = call float @llvm.fmuladd.f32(float %178, float %178, float %180)
  %182 = fcmp ogt float %181, 0x38AA95A5C0000000
  br i1 %182, label %183, label %189

183:                                              ; preds = %162
  %184 = call float @sqrtf(float noundef %181) #7
  %185 = fdiv float 1.000000e+00, %184
  %186 = fmul float %168, %185
  %187 = fmul float %173, %185
  %188 = fmul float %178, %185
  br label %189

189:                                              ; preds = %162, %183
  %190 = phi float [ %187, %183 ], [ 0.000000e+00, %162 ]
  %191 = phi float [ %186, %183 ], [ 0.000000e+00, %162 ]
  %192 = phi float [ %188, %183 ], [ 0.000000e+00, %162 ]
  br label %193

193:                                              ; preds = %225, %189
  %194 = phi ptr [ %144, %189 ], [ %207, %225 ]
  %195 = phi ptr [ %145, %189 ], [ %208, %225 ]
  %196 = phi ptr [ null, %189 ], [ %209, %225 ]
  %197 = phi float [ 0x47EFFFFFE0000000, %189 ], [ %223, %225 ]
  br label %198

198:                                              ; preds = %250, %193
  %199 = phi ptr [ %194, %193 ], [ %207, %250 ]
  %200 = phi ptr [ %195, %193 ], [ %208, %250 ]
  %201 = icmp eq ptr %199, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr %199, align 8, !tbaa !84
  store ptr %200, ptr %199, align 8, !tbaa !84
  %204 = getelementptr inbounds %struct.LinkNode, ptr %199, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !86
  br label %206

206:                                              ; preds = %198, %202
  %207 = phi ptr [ %203, %202 ], [ null, %198 ]
  %208 = phi ptr [ %199, %202 ], [ %200, %198 ]
  %209 = phi ptr [ %205, %202 ], [ null, %198 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %251, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !82
  %214 = getelementptr inbounds %struct.BMFace, ptr %213, i64 0, i32 4
  %215 = load float, ptr %214, align 4, !tbaa !88
  %216 = getelementptr inbounds %struct.BMFace, ptr %213, i64 0, i32 4, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !88
  %218 = fmul float %190, %217
  %219 = call float @llvm.fmuladd.f32(float %191, float %215, float %218)
  %220 = getelementptr inbounds %struct.BMFace, ptr %213, i64 0, i32 4, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !88
  %222 = call float @llvm.fmuladd.f32(float %192, float %221, float %219)
  %223 = call float @llvm.fabs.f32(float %222)
  %224 = fcmp olt float %223, %197
  br i1 %224, label %225, label %250

225:                                              ; preds = %211
  %226 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !90
  %228 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !91
  %230 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2
  %231 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !91
  %233 = getelementptr inbounds %struct.BMVert, ptr %232, i64 0, i32 2
  %234 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %230, ptr noundef nonnull %233, ptr noundef nonnull %164, ptr noundef nonnull %214) #7
  %235 = load ptr, ptr %226, align 8, !tbaa !90
  %236 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !91
  %238 = getelementptr inbounds %struct.BMVert, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %231, align 8, !tbaa !91
  %240 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 2
  %241 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 6
  %242 = load ptr, ptr %241, align 8, !tbaa !92
  %243 = getelementptr inbounds %struct.BMLoop, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !91
  %245 = getelementptr inbounds %struct.BMVert, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %212, align 8, !tbaa !82
  %247 = getelementptr inbounds %struct.BMFace, ptr %246, i64 0, i32 4
  %248 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %238, ptr noundef nonnull %240, ptr noundef nonnull %245, ptr noundef nonnull %247) #7
  %249 = fcmp olt float %234, %248
  br i1 %249, label %193, label %250, !llvm.loop !93

250:                                              ; preds = %225, %211
  br label %198, !llvm.loop !93

251:                                              ; preds = %206, %149, %147, %143
  %252 = phi ptr [ %144, %143 ], [ %150, %149 ], [ null, %147 ], [ %207, %206 ]
  %253 = phi ptr [ %145, %143 ], [ %144, %149 ], [ %145, %147 ], [ %208, %206 ]
  %254 = phi ptr [ null, %143 ], [ %152, %149 ], [ null, %147 ], [ %196, %206 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.BMLoop, ptr %254, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !82
  %259 = getelementptr inbounds %struct.BMHeader, ptr %258, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !78
  store i32 %260, ptr %106, align 8, !tbaa !78
  br label %261

261:                                              ; preds = %256, %251
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  %262 = load ptr, ptr %86, align 8, !tbaa !62
  %263 = call ptr %262(ptr noundef nonnull %4) #7
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %107, !llvm.loop !94

265:                                              ; preds = %261, %98
  %266 = phi ptr [ %93, %98 ], [ %252, %261 ]
  %267 = phi ptr [ %92, %98 ], [ %253, %261 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %268

268:                                              ; preds = %90, %265
  %269 = phi ptr [ %266, %265 ], [ %93, %90 ]
  %270 = phi ptr [ %267, %265 ], [ %92, %90 ]
  %271 = load ptr, ptr %11, align 8, !tbaa !62
  %272 = call ptr %271(ptr noundef nonnull %3) #7
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %90, !llvm.loop !95

274:                                              ; preds = %268, %78
  %275 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 7
  %276 = load i8, ptr %275, align 4, !tbaa !96
  %277 = or i8 %276, 2
  store i8 %277, ptr %275, align 4, !tbaa !96
  store i8 3, ptr %9, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !62
  %278 = load ptr, ptr %61, align 8, !tbaa !80
  store ptr %278, ptr %3, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %279 = load ptr, ptr %11, align 8, !tbaa !62
  %280 = call ptr %279(ptr noundef nonnull %3) #7
  %281 = icmp eq ptr %280, null
  br i1 %281, label %293, label %282

282:                                              ; preds = %274, %289
  %283 = phi ptr [ %291, %289 ], [ %280, %274 ]
  %284 = getelementptr inbounds %struct.BMHeader, ptr %283, i64 0, i32 3
  %285 = load i8, ptr %284, align 1, !tbaa !65
  %286 = and i8 %285, 16
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %282
  call fastcc void @bm_face_split_by_edges(ptr noundef %8, ptr noundef nonnull %283)
  br label %289

289:                                              ; preds = %282, %288
  %290 = load ptr, ptr %11, align 8, !tbaa !62
  %291 = call ptr %290(ptr noundef nonnull %3) #7
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %282, !llvm.loop !97

293:                                              ; preds = %289, %274
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %7) #7
  call void @EDBM_update_generic(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_isect_self(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = and i8 %4, 1
  %6 = add nsw i8 %5, -1
  %7 = sext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_isect_pair(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  %7 = and i8 %4, 1
  %8 = xor i8 %7, 1
  %9 = zext nneg i8 %8 to i32
  %10 = select i1 %6, i32 %9, i32 -1
  ret i32 %10
}

declare zeroext i8 @BM_mesh_intersect(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef) local_unnamed_addr #1

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare float @angle_signed_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_split_by_edges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store ptr null, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %15

15:                                               ; preds = %71, %2
  %16 = phi ptr [ null, %2 ], [ %72, %71 ]
  %17 = phi ptr [ %11, %2 ], [ %75, %71 ]
  %18 = phi i32 [ 0, %2 ], [ %73, %71 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  store i8 4, ptr %12, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %13, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %14, align 8, !tbaa !62
  store ptr %20, ptr %6, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #7
  %21 = load ptr, ptr %14, align 8, !tbaa !62
  %22 = call ptr %21(ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %71, label %24

24:                                               ; preds = %15, %65
  %25 = phi i32 [ %67, %65 ], [ %18, %15 ]
  %26 = phi ptr [ %69, %65 ], [ %22, %15 ]
  %27 = phi ptr [ %66, %65 ], [ %16, %15 ]
  %28 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !65
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !78
  %35 = icmp eq i32 %34, %9
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load ptr, ptr %19, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = icmp eq ptr %39, %37
  %41 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = icmp eq ptr %42, %37
  %44 = select i1 %43, ptr %39, ptr null
  %45 = select i1 %40, ptr %42, ptr %44
  %46 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 4
  store ptr %26, ptr %46, align 8, !tbaa !101
  %47 = alloca [16 x i8], align 16
  store ptr %27, ptr %47, align 16, !tbaa !84
  %48 = getelementptr inbounds %struct.LinkNode, ptr %47, i64 0, i32 1
  store ptr %45, ptr %48, align 8, !tbaa !86
  %49 = load ptr, ptr %3, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !98
  %53 = call i64 %52(ptr noundef nonnull %49) #7
  %54 = lshr i64 %53, 3
  br label %55

55:                                               ; preds = %51, %36
  %56 = phi i64 [ %54, %51 ], [ 0, %36 ]
  %57 = add nsw i32 %25, 1
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @_bli_array_grow_func(ptr noundef nonnull %3, ptr noundef null, i32 noundef 8, i32 noundef %25, i32 noundef 1, ptr noundef nonnull @.str.20) #7
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr %3, align 8, !tbaa !98
  %63 = sext i32 %25 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %26, ptr %64, align 8, !tbaa !98
  br label %65

65:                                               ; preds = %24, %32, %61
  %66 = phi ptr [ %47, %61 ], [ %27, %32 ], [ %27, %24 ]
  %67 = phi i32 [ %57, %61 ], [ %25, %32 ], [ %25, %24 ]
  %68 = load ptr, ptr %14, align 8, !tbaa !62
  %69 = call ptr %68(ptr noundef nonnull %6) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %24, !llvm.loop !103

71:                                               ; preds = %65, %15
  %72 = phi ptr [ %16, %15 ], [ %66, %65 ]
  %73 = phi i32 [ %18, %15 ], [ %67, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  %74 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = icmp eq ptr %75, %11
  br i1 %76, label %77, label %15, !llvm.loop !104

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %79 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %80 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %81

81:                                               ; preds = %77, %161
  %82 = phi ptr [ %162, %161 ], [ null, %77 ]
  %83 = phi ptr [ %163, %161 ], [ null, %77 ]
  %84 = phi ptr [ %164, %161 ], [ null, %77 ]
  %85 = phi ptr [ %165, %161 ], [ %72, %77 ]
  %86 = phi i32 [ %158, %161 ], [ %73, %77 ]
  %87 = icmp eq ptr %85, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %85, align 8, !tbaa !84
  store ptr %84, ptr %85, align 8, !tbaa !84
  %90 = getelementptr inbounds %struct.LinkNode, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  br label %92

92:                                               ; preds = %81, %88
  %93 = phi ptr [ %85, %88 ], [ %84, %81 ]
  %94 = phi ptr [ %89, %88 ], [ null, %81 ]
  %95 = phi ptr [ %91, %88 ], [ null, %81 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %166, label %97

97:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  store i8 4, ptr %78, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %79, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %80, align 8, !tbaa !62
  store ptr %95, ptr %7, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #7
  %98 = load ptr, ptr %80, align 8, !tbaa !62
  %99 = call ptr %98(ptr noundef nonnull %7) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %155, label %101

101:                                              ; preds = %97, %148
  %102 = phi i32 [ %151, %148 ], [ %86, %97 ]
  %103 = phi ptr [ %153, %148 ], [ %99, %97 ]
  %104 = phi ptr [ %150, %148 ], [ %93, %97 ]
  %105 = phi ptr [ %149, %148 ], [ %83, %97 ]
  %106 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !65
  %108 = and i8 %107, 16
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %148, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !78
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %148

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = icmp eq ptr %116, %95
  %118 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !77
  %120 = icmp eq ptr %119, %95
  %121 = select i1 %120, ptr %116, ptr null
  %122 = select i1 %117, ptr %119, ptr %121
  store i32 %9, ptr %111, align 8, !tbaa !78
  %123 = icmp eq ptr %104, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %114
  %125 = load ptr, ptr %104, align 8, !tbaa !84
  br label %128

126:                                              ; preds = %114
  %127 = alloca [16 x i8], align 16
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %125, %124 ], [ null, %126 ]
  %130 = phi ptr [ %104, %124 ], [ %127, %126 ]
  store ptr %105, ptr %130, align 8, !tbaa !84
  %131 = getelementptr inbounds %struct.LinkNode, ptr %130, i64 0, i32 1
  store ptr %122, ptr %131, align 8, !tbaa !86
  %132 = load ptr, ptr %3, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !98
  %136 = call i64 %135(ptr noundef nonnull %132) #7
  %137 = lshr i64 %136, 3
  br label %138

138:                                              ; preds = %134, %128
  %139 = phi i64 [ %137, %134 ], [ 0, %128 ]
  %140 = add nsw i32 %102, 1
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  call void @_bli_array_grow_func(ptr noundef nonnull %3, ptr noundef null, i32 noundef 8, i32 noundef %102, i32 noundef 1, ptr noundef nonnull @.str.20) #7
  br label %144

144:                                              ; preds = %143, %138
  %145 = load ptr, ptr %3, align 8, !tbaa !98
  %146 = sext i32 %102 to i64
  %147 = getelementptr inbounds ptr, ptr %145, i64 %146
  store ptr %103, ptr %147, align 8, !tbaa !98
  br label %148

148:                                              ; preds = %101, %110, %144
  %149 = phi ptr [ %130, %144 ], [ %105, %110 ], [ %105, %101 ]
  %150 = phi ptr [ %129, %144 ], [ %104, %110 ], [ %104, %101 ]
  %151 = phi i32 [ %140, %144 ], [ %102, %110 ], [ %102, %101 ]
  %152 = load ptr, ptr %80, align 8, !tbaa !62
  %153 = call ptr %152(ptr noundef nonnull %7) #7
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %101, !llvm.loop !105

155:                                              ; preds = %148, %97
  %156 = phi ptr [ %83, %97 ], [ %149, %148 ]
  %157 = phi ptr [ %93, %97 ], [ %150, %148 ]
  %158 = phi i32 [ %86, %97 ], [ %151, %148 ]
  %159 = icmp eq ptr %94, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %155
  %162 = phi ptr [ %157, %160 ], [ %82, %155 ]
  %163 = phi ptr [ null, %160 ], [ %156, %155 ]
  %164 = phi ptr [ %82, %160 ], [ %157, %155 ]
  %165 = phi ptr [ %156, %160 ], [ %94, %155 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  br label %81, !llvm.loop !106

166:                                              ; preds = %92
  %167 = load ptr, ptr %3, align 8, !tbaa !98
  %168 = call zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr noundef %167, i32 noundef %86, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %169 = load ptr, ptr %3, align 8, !tbaa !98
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  call void %172(ptr noundef nonnull %169) #7
  br label %173

173:                                              ; preds = %171, %166
  %174 = load i32, ptr %5, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %173, %176
  %177 = phi i64 [ %187, %176 ], [ 0, %173 ]
  %178 = load ptr, ptr %4, align 8, !tbaa !98
  %179 = getelementptr inbounds ptr, ptr %178, i64 %177
  %180 = load ptr, ptr %179, align 8, !tbaa !98
  call void @BM_face_select_set(ptr noundef %0, ptr noundef %180, i8 noundef zeroext 1) #7
  %181 = load ptr, ptr %4, align 8, !tbaa !98
  %182 = getelementptr inbounds ptr, ptr %181, i64 %177
  %183 = load ptr, ptr %182, align 8, !tbaa !98
  %184 = getelementptr inbounds %struct.BMHeader, ptr %183, i64 0, i32 3
  %185 = load i8, ptr %184, align 1, !tbaa !65
  %186 = and i8 %185, -17
  store i8 %186, ptr %184, align 1, !tbaa !65
  %187 = add nuw nsw i64 %177, 1
  %188 = load i32, ptr %5, align 4, !tbaa !107
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %176, label %191, !llvm.loop !108

191:                                              ; preds = %176, %173
  %192 = load ptr, ptr %4, align 8, !tbaa !98
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  call void %195(ptr noundef nonnull %192) #7
  br label %196

196:                                              ; preds = %194, %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_face_split_edgenet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !36, i64 88}
!47 = !{!35, !41, i64 184}
!48 = !{!49, !36, i64 0}
!49 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !50, i64 16, !36, i64 24, !50, i64 32, !36, i64 40, !36, i64 48, !51, i64 56, !36, i64 64, !50, i64 72, !36, i64 80, !50, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !50, i64 104}
!50 = !{!"int", !37, i64 0}
!51 = !{!"long", !37, i64 0}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!49, !36, i64 24}
!55 = !{!49, !50, i64 32}
!56 = !{!57, !41, i64 944}
!57 = !{!"BMesh", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !50, i64 88, !50, i64 92, !50, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !36, i64 136, !58, i64 144, !58, i64 344, !58, i64 544, !58, i64 744, !41, i64 944, !50, i64 948, !50, i64 952, !50, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!58 = !{!"CustomData", !36, i64 0, !37, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !36, i64 184, !36, i64 192}
!59 = !{!60, !37, i64 60}
!60 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !50, i64 56, !37, i64 60}
!61 = !{!60, !36, i64 40}
!62 = !{!60, !36, i64 48}
!63 = !{!57, !36, i64 40}
!64 = !{!37, !37, i64 0}
!65 = !{!66, !37, i64 13}
!66 = !{!"BMHeader", !36, i64 0, !50, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!53, !36, i64 120}
!71 = !{!57, !36, i64 32}
!72 = distinct !{!72, !68, !69}
!73 = !{!74, !36, i64 40}
!74 = !{!"BMEdge", !66, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!76 = !{!74, !36, i64 24}
!77 = !{!74, !36, i64 32}
!78 = !{!66, !50, i64 8}
!79 = distinct !{!79, !68, !69}
!80 = !{!57, !36, i64 56}
!81 = distinct !{!81, !68, !69}
!82 = !{!83, !36, i64 32}
!83 = !{!"BMLoop", !66, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!84 = !{!85, !36, i64 0}
!85 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!86 = !{!85, !36, i64 8}
!87 = distinct !{!87, !68, !69}
!88 = !{!89, !89, i64 0}
!89 = !{!"float", !37, i64 0}
!90 = !{!83, !36, i64 64}
!91 = !{!83, !36, i64 16}
!92 = !{!83, !36, i64 56}
!93 = distinct !{!93, !68, !69}
!94 = distinct !{!94, !68, !69}
!95 = distinct !{!95, !68, !69}
!96 = !{!57, !37, i64 28}
!97 = distinct !{!97, !68, !69}
!98 = !{!36, !36, i64 0}
!99 = !{!100, !36, i64 24}
!100 = !{!"BMFace", !66, i64 0, !36, i64 16, !36, i64 24, !50, i64 32, !37, i64 36, !41, i64 48}
!101 = !{!102, !36, i64 48}
!102 = !{!"BMVert", !66, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!103 = distinct !{!103, !68, !69}
!104 = distinct !{!104, !68, !69}
!105 = distinct !{!105, !68, !69}
!106 = distinct !{!106, !68, !69}
!107 = !{!50, !50, i64 0}
!108 = distinct !{!108, !68, !69}
