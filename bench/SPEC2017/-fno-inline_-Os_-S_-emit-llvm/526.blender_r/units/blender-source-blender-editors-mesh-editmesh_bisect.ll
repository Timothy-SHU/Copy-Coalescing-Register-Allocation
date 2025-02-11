; ModuleID = 'blender/source/blender/editors/mesh/editmesh_bisect.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_bisect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BisectData = type { %struct.BMBackup, i8, i16 }
%struct.BMBackup = type { ptr }
%struct.wmGesture = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Bisect\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Cut geometry along a plane (click-drag to define plane)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MESH_OT_bisect\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"plane_co\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Plane Point\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"A point on the plane\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"plane_no\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Plane Normal\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"The direction the plane points\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Fill in the cut\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"clear_inner\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Clear Inner\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Remove geometry behind the plane\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"clear_outer\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Clear Outer\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Remove geometry in front of the plane\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Axis Threshold\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [86 x i8] c"bisect_plane geom=%hvef plane_co=%v plane_no=%v dist=%f clear_inner=%b clear_outer=%b\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"triangle_fill edges=%S normal=%v use_dissolve=%b\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"geom_cut.out\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"face_attribute_fill faces=%S use_normals=%b use_data=%b\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"xstart\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ystart\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xend\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"yend\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Selected edges/faces required\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [20 x i8] c"inset_operator_data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.32 = private unnamed_addr constant [37 x i8] c"LMB: Click and drag to draw cut line\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"LMB: Release to confirm cut line\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_bisect(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_bisect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @mesh_bisect_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @mesh_bisect_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !21
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #10
  %15 = load ptr, ptr %10, align 8, !tbaa !21
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !21
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  %19 = load ptr, ptr %10, align 8, !tbaa !21
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10
  %21 = load ptr, ptr %10, align 8, !tbaa !21
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.18, float noundef 0x3F1A36E2E0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #10
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMOperator, align 8
  %9 = alloca %struct.BMOperator, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %11 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %12 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #10
  %13 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %13) #10
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.18) #10
  %18 = load ptr, ptr %15, align 8, !tbaa !22
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.9) #10
  %20 = load ptr, ptr %15, align 8, !tbaa !22
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.12) #10
  %22 = load ptr, ptr %15, align 8, !tbaa !22
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.15) #10
  %24 = load ptr, ptr %15, align 8, !tbaa !22
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef %24, ptr noundef nonnull @.str.3) #10
  %26 = load ptr, ptr %15, align 8, !tbaa !22
  %27 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %26, ptr noundef %25) #10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_get_array(ptr noundef %30, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %34

31:                                               ; preds = %2
  %32 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %10, ptr noundef %11) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %32) #12
  %33 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_set_array(ptr noundef %33, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %34

34:                                               ; preds = %31, %29
  %35 = load ptr, ptr %15, align 8, !tbaa !22
  %36 = call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.6) #10
  %37 = load ptr, ptr %15, align 8, !tbaa !22
  %38 = call zeroext i8 @RNA_property_is_set(ptr noundef %37, ptr noundef %36) #10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_get_array(ptr noundef %41, ptr noundef %36, ptr noundef nonnull %5) #10
  br label %50

42:                                               ; preds = %34
  %43 = icmp eq ptr %12, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 2, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %45) #12
  br label %48

46:                                               ; preds = %42
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !24
  %47 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 1.000000e+00, ptr %47, align 8, !tbaa !24
  br label %48

48:                                               ; preds = %46, %44
  %49 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_set_array(ptr noundef %49, ptr noundef %36, ptr noundef nonnull %5) #10
  br label %50

50:                                               ; preds = %48, %40
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !26
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  call fastcc void @mesh_bisect_interactive_calc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %55 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_set_array(ptr noundef %55, ptr noundef %36, ptr noundef nonnull %5) #10
  %56 = load ptr, ptr %15, align 8, !tbaa !22
  call void @RNA_property_float_set_array(ptr noundef %56, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %57

57:                                               ; preds = %54, %50
  %58 = load ptr, ptr %14, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  %60 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %59) #10
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #10
  call void @mul_mat3_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  %61 = fpext float %17 to double
  %62 = and i32 %21, 255
  %63 = and i32 %23, 255
  %64 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef %61, i32 noundef %62, i32 noundef %63) #10
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %3) #10
  call void @EDBM_flag_disable_all(ptr noundef nonnull %14, i8 noundef zeroext 1) #10
  %65 = and i32 %19, 255
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %9) #11
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %68 = icmp eq i32 %63, 1
  %69 = icmp eq i32 %62, 0
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call fastcc void @negate_v3(ptr noundef nonnull %7) #12
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %74 = load i16, ptr %73, align 8, !tbaa !31
  %75 = sext i16 %74 to i32
  %76 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %58, ptr noundef nonnull %8, i32 noundef %75, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, ptr noundef nonnull @.str.23, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %8) #10
  %77 = load i16, ptr %73, align 8, !tbaa !31
  %78 = sext i16 %77 to i32
  %79 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %58, ptr noundef nonnull %9, i32 noundef %78, ptr noundef nonnull @.str.24, ptr noundef nonnull %8, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 1) #10
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %9) #10
  %80 = getelementptr inbounds %struct.BMOperator, ptr %8, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %58, ptr noundef nonnull %80, ptr noundef nonnull @.str.25, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  call void @BMO_op_finish(ptr noundef %58, ptr noundef nonnull %9) #10
  call void @BMO_op_finish(ptr noundef %58, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %81

81:                                               ; preds = %72, %57
  %82 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %58, ptr noundef nonnull %82, ptr noundef nonnull @.str.23, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %83 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #10
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @EDBM_update_generic(ptr noundef nonnull %14, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  call void @EDBM_selectmode_flush(ptr noundef nonnull %14) #10
  br label %86

86:                                               ; preds = %81, %85
  %87 = phi i32 [ 4, %85 ], [ 2, %81 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_bisect_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.30) #10
  br label %45

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.3) #10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !22
  %23 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %22, ptr noundef nonnull @.str.6) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %13
  %26 = tail call i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1) #12, !range !36
  br label %45

27:                                               ; preds = %21, %16
  %28 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #10
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %36 = tail call ptr %35(i64 noundef 16, ptr noundef nonnull @.str.31) #10
  %37 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %5) #10
  store ptr %37, ptr %36, align 8, !tbaa.struct !38
  %38 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 1
  store i8 1, ptr %38, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.wmGesture, ptr %34, i64 0, i32 9
  store ptr %36, ptr %39, align 8, !tbaa !42
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.View3D, ptr %32, i64 0, i32 40
  %41 = load i8, ptr %40, align 1, !tbaa !46
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 2
  store i16 %42, ptr %43, align 2, !tbaa !49
  store i8 0, ptr %40, align 1, !tbaa !46
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  tail call void @ED_area_headerprint(ptr noundef %44, ptr noundef nonnull @.str.32) #10
  br label %45

45:                                               ; preds = %27, %31, %25, %10
  %46 = phi i32 [ 2, %10 ], [ %26, %25 ], [ %28, %31 ], [ %28, %27 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_bisect_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BisectData, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !50
  %9 = tail call i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i16 %11, 20514
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !56
  %16 = icmp eq i16 %15, 8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  tail call void @ED_area_headerprint(ptr noundef %17, ptr noundef nonnull @.str.33) #10
  br label %20

19:                                               ; preds = %13
  tail call void @ED_area_headerprint(ptr noundef %17, ptr noundef null) #10
  br label %20

20:                                               ; preds = %18, %19, %3
  %21 = and i32 %9, 6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call fastcc void @edbm_bisect_exit(ptr noundef %0, ptr noundef nonnull %4) #12
  br label %24

24:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %9
}

; Function Attrs: optsize
declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_bisect_interactive_calc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.26) #10
  %19 = load ptr, ptr %16, align 8, !tbaa !22
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.27) #10
  %21 = load ptr, ptr %16, align 8, !tbaa !22
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.28) #10
  %23 = load ptr, ptr %16, align 8, !tbaa !22
  %24 = tail call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.29) #10
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %26 = insertelement <2 x i32> poison, i32 %18, i64 0
  %27 = insertelement <2 x i32> %26, i32 %20, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  store <2 x float> %28, ptr %6, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %29 = insertelement <2 x i32> poison, i32 %22, i64 0
  %30 = insertelement <2 x i32> %29, i32 %24, i64 1
  %31 = sitofp <2 x i32> %30 to <2 x float>
  store <2 x float> %31, ptr %7, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %32 = tail call float @ED_view3d_calc_zfac(ptr noundef %15, ptr noundef nonnull %25, ptr noundef null) #10
  %33 = getelementptr inbounds %struct.wmGesture, ptr %12, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  call void @ED_view3d_win_to_vector(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %9) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @ED_view3d_win_to_delta(ptr noundef %13, ptr noundef nonnull %8, ptr noundef nonnull %10, float noundef %32) #10
  call fastcc void @cross_v3_v3v3(ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  call fastcc void @normalize_v3(ptr noundef %4) #12
  call void @ED_view3d_win_to_3d(ptr noundef %13, ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef %3) #10
  %35 = getelementptr inbounds %struct.BisectData, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !39
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load ptr, ptr %34, align 8
  call void @EDBM_redo_state_restore(ptr %39, ptr noundef %2, i32 noundef 0) #10
  br label %40

40:                                               ; preds = %38, %5
  store i8 0, ptr %35, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !24
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = load float, ptr %2, align 4, !tbaa !24
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !24
  %15 = load float, ptr %8, align 4, !tbaa !24
  %16 = load float, ptr %2, align 4, !tbaa !24
  %17 = load float, ptr %1, align 4, !tbaa !24
  %18 = load float, ptr %6, align 4, !tbaa !24
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !24
  %23 = load float, ptr %1, align 4, !tbaa !24
  %24 = load float, ptr %10, align 4, !tbaa !24
  %25 = load float, ptr %4, align 4, !tbaa !24
  %26 = load float, ptr %2, align 4, !tbaa !24
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_redo_state_restore(ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !24
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !24
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_redo_state_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_bisect_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  tail call void @EDBM_redo_state_free(ptr noundef %1, ptr noundef null, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.BisectData, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = trunc i16 %5 to i8
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 40
  store i8 %6, ptr %7, align 1, !tbaa !46
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @EDBM_redo_state_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{!6, !7, i64 88}
!22 = !{!23, !7, i64 112}
!23 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !8, i64 0}
!26 = !{!23, !7, i64 96}
!27 = !{!28, !7, i64 0}
!28 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !29, i64 16, !7, i64 24, !29, i64 32, !7, i64 40, !7, i64 48, !30, i64 56, !7, i64 64, !29, i64 72, !7, i64 80, !29, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !29, i64 104}
!29 = !{!"int", !8, i64 0}
!30 = !{!"long", !8, i64 0}
!31 = !{!23, !12, i64 160}
!32 = !{!33, !29, i64 20}
!33 = !{!"BMesh", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !29, i64 88, !29, i64 92, !29, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !29, i64 128, !7, i64 136, !34, i64 144, !34, i64 344, !34, i64 544, !34, i64 744, !12, i64 944, !29, i64 948, !29, i64 952, !29, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!34 = !{!"CustomData", !7, i64 0, !8, i64 8, !29, i64 172, !29, i64 176, !29, i64 180, !7, i64 184, !7, i64 192}
!35 = !{!23, !7, i64 120}
!36 = !{i32 2, i32 5}
!37 = !{!7, !7, i64 0}
!38 = !{i64 0, i64 8, !37}
!39 = !{!40, !8, i64 8}
!40 = !{!"", !41, i64 0, !8, i64 8, !12, i64 10}
!41 = !{!"BMBackup", !7, i64 0}
!42 = !{!43, !7, i64 48}
!43 = !{!"wmGesture", !7, i64 0, !7, i64 8, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !7, i64 40, !7, i64 48}
!44 = !{!45, !12, i64 2084}
!45 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !29, i64 2096, !29, i64 2100, !8, i64 2104, !29, i64 2108, !29, i64 2112, !8, i64 2116}
!46 = !{!47, !8, i64 291}
!47 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !29, i64 32, !25, i64 36, !8, i64 40, !8, i64 56, !25, i64 72, !25, i64 76, !8, i64 80, !8, i64 81, !29, i64 84, !29, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !48, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !29, i64 224, !29, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !25, i64 244, !25, i64 248, !25, i64 252, !25, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!48 = !{!"rctf", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!49 = !{!40, !12, i64 10}
!50 = !{i64 0, i64 8, !37, i64 8, i64 1, !51, i64 10, i64 2, !52}
!51 = !{!8, !8, i64 0}
!52 = !{!12, !12, i64 0}
!53 = !{!54, !12, i64 16}
!54 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !29, i64 20, !29, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !29, i64 48, !29, i64 52, !55, i64 56, !29, i64 64, !29, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !29, i64 108, !7, i64 112}
!55 = !{!"double", !8, i64 0}
!56 = !{!54, !12, i64 18}
!57 = !{!58, !7, i64 376}
!58 = !{!"ARegion", !7, i64 0, !7, i64 8, !59, i64 16, !60, i64 176, !60, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !25, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!59 = !{!"View2D", !48, i64 0, !48, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !8, i64 80, !8, i64 88, !25, i64 96, !25, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !29, i64 136, !29, i64 140, !7, i64 144, !7, i64 152}
!60 = !{!"rcti", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
