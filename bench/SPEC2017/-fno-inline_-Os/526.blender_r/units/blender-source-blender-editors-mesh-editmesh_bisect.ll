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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_bisect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @mesh_bisect_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @mesh_bisect_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #10
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.18, float noundef 0x3F1A36E2E0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #10
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !51 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.18) #10
  %18 = load ptr, ptr %15, align 8, !tbaa !52
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.9) #10
  %20 = load ptr, ptr %15, align 8, !tbaa !52
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.12) #10
  %22 = load ptr, ptr %15, align 8, !tbaa !52
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.15) #10
  %24 = load ptr, ptr %15, align 8, !tbaa !52
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef %24, ptr noundef nonnull @.str.3) #10
  %26 = load ptr, ptr %15, align 8, !tbaa !52
  %27 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %26, ptr noundef %25) #10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %15, align 8, !tbaa !52
  call void @RNA_property_float_get_array(ptr noundef %30, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %34

31:                                               ; preds = %2
  %32 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %10, ptr noundef %11) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %32) #12
  %33 = load ptr, ptr %15, align 8, !tbaa !52
  call void @RNA_property_float_set_array(ptr noundef %33, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %34

34:                                               ; preds = %31, %29
  %35 = load ptr, ptr %15, align 8, !tbaa !52
  %36 = call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.6) #10
  %37 = load ptr, ptr %15, align 8, !tbaa !52
  %38 = call zeroext i8 @RNA_property_is_set(ptr noundef %37, ptr noundef %36) #10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %15, align 8, !tbaa !52
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
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !54
  %47 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 1.000000e+00, ptr %47, align 8, !tbaa !54
  br label %48

48:                                               ; preds = %46, %44
  %49 = load ptr, ptr %15, align 8, !tbaa !52
  call void @RNA_property_float_set_array(ptr noundef %49, ptr noundef %36, ptr noundef nonnull %5) #10
  br label %50

50:                                               ; preds = %48, %40
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  call fastcc void @mesh_bisect_interactive_calc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %55 = load ptr, ptr %15, align 8, !tbaa !52
  call void @RNA_property_float_set_array(ptr noundef %55, ptr noundef %36, ptr noundef nonnull %5) #10
  %56 = load ptr, ptr %15, align 8, !tbaa !52
  call void @RNA_property_float_set_array(ptr noundef %56, ptr noundef %25, ptr noundef nonnull %4) #10
  br label %57

57:                                               ; preds = %54, %50
  %58 = load ptr, ptr %14, align 8, !tbaa !57
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
  %74 = load i16, ptr %73, align 8, !tbaa !61
  %75 = sext i16 %74 to i32
  %76 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %58, ptr noundef nonnull %8, i32 noundef %75, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, ptr noundef nonnull @.str.23, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %8) #10
  %77 = load i16, ptr %73, align 8, !tbaa !61
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
define internal i32 @mesh_bisect_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !62 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.30) #10
  br label %45

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.3) #10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !52
  %23 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %22, ptr noundef nonnull @.str.6) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %13
  %26 = tail call i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1) #12, !range !67
  br label %45

27:                                               ; preds = %21, %16
  %28 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #10
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %36 = tail call ptr %35(i64 noundef 16, ptr noundef nonnull @.str.31) #10
  %37 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %5) #10
  store ptr %37, ptr %36, align 8, !tbaa.struct !69
  %38 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 1
  store i8 1, ptr %38, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.wmGesture, ptr %34, i64 0, i32 9
  store ptr %36, ptr %39, align 8, !tbaa !73
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !75
  %40 = getelementptr inbounds %struct.View3D, ptr %32, i64 0, i32 40
  %41 = load i8, ptr %40, align 1, !tbaa !77
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 2
  store i16 %42, ptr %43, align 2, !tbaa !80
  store i8 0, ptr %40, align 1, !tbaa !77
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  tail call void @ED_area_headerprint(ptr noundef %44, ptr noundef nonnull @.str.32) #10
  br label %45

45:                                               ; preds = %27, %31, %25, %10
  %46 = phi i32 [ 2, %10 ], [ %26, %25 ], [ %28, %31 ], [ %28, %27 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_bisect_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !81 {
  %4 = alloca %struct.BisectData, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !82
  %9 = tail call i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !85
  %12 = icmp eq i16 %11, 20514
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !88
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
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !89 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_bisect_interactive_calc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !90 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.26) #10
  %19 = load ptr, ptr %16, align 8, !tbaa !52
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.27) #10
  %21 = load ptr, ptr %16, align 8, !tbaa !52
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.28) #10
  %23 = load ptr, ptr %16, align 8, !tbaa !52
  %24 = tail call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.29) #10
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %26 = insertelement <2 x i32> poison, i32 %18, i64 0
  %27 = insertelement <2 x i32> %26, i32 %20, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  store <2 x float> %28, ptr %6, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %29 = insertelement <2 x i32> poison, i32 %22, i64 0
  %30 = insertelement <2 x i32> %29, i32 %24, i64 1
  %31 = sitofp <2 x i32> %30 to <2 x float>
  store <2 x float> %31, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %32 = tail call float @ED_view3d_calc_zfac(ptr noundef %15, ptr noundef nonnull %25, ptr noundef null) #10
  %33 = getelementptr inbounds %struct.wmGesture, ptr %12, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  call void @ED_view3d_win_to_vector(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %9) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @ED_view3d_win_to_delta(ptr noundef %13, ptr noundef nonnull %8, ptr noundef nonnull %10, float noundef %32) #10
  call fastcc void @cross_v3_v3v3(ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  call fastcc void @normalize_v3(ptr noundef %4) #12
  call void @ED_view3d_win_to_3d(ptr noundef %13, ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef %3) #10
  %35 = getelementptr inbounds %struct.BisectData, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !70
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load ptr, ptr %34, align 8
  call void @EDBM_redo_state_restore(ptr %39, ptr noundef %2, i32 noundef 0) #10
  br label %40

40:                                               ; preds = %38, %5
  store i8 0, ptr %35, align 8, !tbaa !70
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
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !95 {
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
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !96 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !54
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
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !97 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !98 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !54
  %15 = load float, ptr %8, align 4, !tbaa !54
  %16 = load float, ptr %2, align 4, !tbaa !54
  %17 = load float, ptr %1, align 4, !tbaa !54
  %18 = load float, ptr %6, align 4, !tbaa !54
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !54
  %23 = load float, ptr %1, align 4, !tbaa !54
  %24 = load float, ptr %10, align 4, !tbaa !54
  %25 = load float, ptr %4, align 4, !tbaa !54
  %26 = load float, ptr %2, align 4, !tbaa !54
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !99 {
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !101 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !102 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
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
define internal fastcc void @edbm_bisect_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !103 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  tail call void @EDBM_redo_state_free(ptr noundef %1, ptr noundef null, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.BisectData, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !80
  %6 = trunc i16 %5 to i8
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 40
  store i8 %6, ptr %7, align 1, !tbaa !77
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !75
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
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!"editmesh_bisect.c:mesh_bisect_exec"}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !37, i64 0}
!56 = !{!53, !36, i64 96}
!57 = !{!58, !36, i64 0}
!58 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !59, i64 16, !36, i64 24, !59, i64 32, !36, i64 40, !36, i64 48, !60, i64 56, !36, i64 64, !59, i64 72, !36, i64 80, !59, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !59, i64 104}
!59 = !{!"int", !37, i64 0}
!60 = !{!"long", !37, i64 0}
!61 = !{!53, !41, i64 160}
!62 = !{!"editmesh_bisect.c:mesh_bisect_invoke"}
!63 = !{!64, !59, i64 20}
!64 = !{!"BMesh", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !59, i64 88, !59, i64 92, !59, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !59, i64 128, !36, i64 136, !65, i64 144, !65, i64 344, !65, i64 544, !65, i64 744, !41, i64 944, !59, i64 948, !59, i64 952, !59, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!65 = !{!"CustomData", !36, i64 0, !37, i64 8, !59, i64 172, !59, i64 176, !59, i64 180, !36, i64 184, !36, i64 192}
!66 = !{!53, !36, i64 120}
!67 = !{i32 2, i32 5}
!68 = !{!36, !36, i64 0}
!69 = !{i64 0, i64 8, !68}
!70 = !{!71, !37, i64 8}
!71 = !{!"", !72, i64 0, !37, i64 8, !41, i64 10}
!72 = !{!"BMBackup", !36, i64 0}
!73 = !{!74, !36, i64 48}
!74 = !{!"wmGesture", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !36, i64 40, !36, i64 48}
!75 = !{!76, !41, i64 2084}
!76 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !59, i64 2096, !59, i64 2100, !37, i64 2104, !59, i64 2108, !59, i64 2112, !37, i64 2116}
!77 = !{!78, !37, i64 291}
!78 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !59, i64 32, !55, i64 36, !37, i64 40, !37, i64 56, !55, i64 72, !55, i64 76, !37, i64 80, !37, i64 81, !59, i64 84, !59, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !79, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !59, i64 224, !59, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!79 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!80 = !{!71, !41, i64 10}
!81 = !{!"editmesh_bisect.c:mesh_bisect_modal"}
!82 = !{i64 0, i64 8, !68, i64 8, i64 1, !83, i64 10, i64 2, !84}
!83 = !{!37, !37, i64 0}
!84 = !{!41, !41, i64 0}
!85 = !{!86, !41, i64 16}
!86 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !59, i64 48, !59, i64 52, !87, i64 56, !59, i64 64, !59, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !59, i64 108, !36, i64 112}
!87 = !{!"double", !37, i64 0}
!88 = !{!86, !41, i64 18}
!89 = !{!"editmesh_bisect.c:copy_v3_v3"}
!90 = !{!"editmesh_bisect.c:mesh_bisect_interactive_calc"}
!91 = !{!92, !36, i64 376}
!92 = !{!"ARegion", !36, i64 0, !36, i64 8, !93, i64 16, !94, i64 176, !94, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !55, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!93 = !{!"View2D", !79, i64 0, !79, i64 16, !94, i64 32, !94, i64 48, !94, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !59, i64 136, !59, i64 140, !36, i64 144, !36, i64 152}
!94 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!95 = !{!"editmesh_bisect.c:normalize_v3_v3"}
!96 = !{!"editmesh_bisect.c:negate_v3"}
!97 = !{!"editmesh_bisect.c:sub_v2_v2v2"}
!98 = !{!"editmesh_bisect.c:cross_v3_v3v3"}
!99 = !{!"editmesh_bisect.c:normalize_v3"}
!100 = !{!"editmesh_bisect.c:dot_v3v3"}
!101 = !{!"editmesh_bisect.c:mul_v3_v3fl"}
!102 = !{!"editmesh_bisect.c:zero_v3"}
!103 = !{!"editmesh_bisect.c:edbm_bisect_exit"}
