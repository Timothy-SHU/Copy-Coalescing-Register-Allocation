; ModuleID = 'blender/source/blender/editors/object/object_warp.c'
source_filename = "blender/source/blender/editors/object/object_warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.TransVertStore = type { ptr, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }

@.str = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Warp vertices around the cursor\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_vertex_warp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"warp_angle\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Warp Angle\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Amount to warp about the cursor\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"offset_angle\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Offset Angle\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Angle to use as the basis for warping\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"viewmat\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Center\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_warp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_warp_verts_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_transverts_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 0x401921FB60000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #11
  tail call void @RNA_def_property_subtype(ptr noundef %9, i32 noundef 327696) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #11
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 327696) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef -1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef -1.000000e+02, float noundef 1.000000e+02) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.12, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, float noundef -1.000000e+02, float noundef 1.000000e+02) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float_matrix(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  tail call void @RNA_def_property_flag(ptr noundef %17, i32 noundef 268959744) #11
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #11
  tail call void @RNA_def_property_flag(ptr noundef %19, i32 noundef 268959744) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_warp_verts_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !48 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.3) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !49
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef %15, i32 noundef 3) #11
  %16 = load ptr, ptr %3, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %10, align 8, !tbaa !49
  %20 = call ptr @RNA_struct_find_property(ptr noundef %19, ptr noundef nonnull @.str.14) #11
  %21 = load ptr, ptr %10, align 8, !tbaa !49
  %22 = call zeroext i8 @RNA_property_is_set(ptr noundef %21, ptr noundef %20) #11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_property_float_get_array(ptr noundef %25, ptr noundef %20, ptr noundef nonnull %4) #11
  br label %34

26:                                               ; preds = %18
  %27 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %30) #11
  br label %32

31:                                               ; preds = %26
  call void @unit_m4(ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %31, %29
  %33 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_property_float_set_array(ptr noundef %33, ptr noundef %20, ptr noundef nonnull %4) #11
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %10, align 8, !tbaa !49
  %36 = call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.16) #11
  %37 = load ptr, ptr %10, align 8, !tbaa !49
  %38 = call zeroext i8 @RNA_property_is_set(ptr noundef %37, ptr noundef %36) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_property_float_get_array(ptr noundef %41, ptr noundef %36, ptr noundef nonnull %5) #11
  br label %47

42:                                               ; preds = %34
  %43 = call ptr @CTX_data_scene(ptr noundef %0) #11
  %44 = call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %45 = call ptr @ED_view3d_cursor3d_get(ptr noundef %43, ptr noundef %44) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %45) #13
  %46 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_property_float_set_array(ptr noundef %46, ptr noundef %36, ptr noundef nonnull %5) #11
  br label %47

47:                                               ; preds = %42, %40
  call fastcc void @object_warp_calc_view_matrix(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %14) #13
  %48 = load ptr, ptr %10, align 8, !tbaa !49
  %49 = call ptr @RNA_struct_find_property(ptr noundef %48, ptr noundef nonnull @.str.9) #11
  %50 = load ptr, ptr %10, align 8, !tbaa !49
  %51 = call ptr @RNA_struct_find_property(ptr noundef %50, ptr noundef nonnull @.str.12) #11
  %52 = load ptr, ptr %10, align 8, !tbaa !49
  %53 = call zeroext i8 @RNA_property_is_set(ptr noundef %52, ptr noundef %49) #11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load ptr, ptr %10, align 8, !tbaa !49
  %57 = call zeroext i8 @RNA_property_is_set(ptr noundef %56, ptr noundef %51) #11
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55, %47
  %60 = load ptr, ptr %10, align 8, !tbaa !49
  %61 = call float @RNA_property_float_get(ptr noundef %60, ptr noundef %49) #11
  %62 = load ptr, ptr %10, align 8, !tbaa !49
  %63 = call float @RNA_property_float_get(ptr noundef %62, ptr noundef %51) #11
  br label %69

64:                                               ; preds = %55
  call fastcc void @object_warp_transverts_minmax_x(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %65 = load ptr, ptr %10, align 8, !tbaa !49
  %66 = load float, ptr %8, align 4, !tbaa !54
  call void @RNA_property_float_set(ptr noundef %65, ptr noundef %49, float noundef %66) #11
  %67 = load ptr, ptr %10, align 8, !tbaa !49
  %68 = load float, ptr %9, align 4, !tbaa !54
  call void @RNA_property_float_set(ptr noundef %67, ptr noundef %51, float noundef %68) #11
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi float [ %68, %64 ], [ %63, %59 ]
  %71 = phi float [ %66, %64 ], [ %61, %59 ]
  %72 = fcmp ogt float %71, %70
  %73 = select i1 %72, float %71, float %70
  %74 = select i1 %72, float %70, float %71
  %75 = fcmp une float %74, %73
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  call fastcc void @object_warp_transverts(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %12, float noundef %74, float noundef %73) #13
  br label %77

77:                                               ; preds = %76, %69
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef %15) #11
  call void @ED_transverts_free(ptr noundef nonnull %3) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %15) #11
  br label %78

78:                                               ; preds = %2, %77
  %79 = phi i32 [ 4, %77 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %79
}

; Function Attrs: optsize
declare i32 @ED_transverts_poll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !56 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_warp_calc_view_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !57 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  call void @unit_m4(ptr noundef nonnull %7) #11
  call void @rotate_m4(ptr noundef nonnull %7, i8 noundef zeroext 90, float noundef %5) #11
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  call void @mul_v3_m4v3(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @object_warp_transverts_minmax_x(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #5 !PGOFuncName !58 {
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = load float, ptr %2, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !51
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi float [ %21, %14 ], [ 0x47EFFFFFE0000000, %12 ]
  %16 = phi i32 [ %23, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %24, %14 ], [ %13, %12 ]
  %18 = phi float [ %22, %14 ], [ 0xC7EFFFFFE0000000, %12 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !60
  %20 = tail call fastcc float @dot_m4_v3_row_x(ptr noundef %1, ptr noundef %19) #13
  %21 = tail call fastcc float @min_ff(float noundef %15, float noundef %20) #13
  %22 = tail call fastcc float @max_ff(float noundef %18, float noundef %20) #13
  %23 = add nuw nsw i32 %16, 1
  %24 = getelementptr inbounds %struct.TransVert, ptr %17, i64 1
  %25 = icmp eq i32 %23, %10
  br i1 %25, label %26, label %14, !llvm.loop !62

26:                                               ; preds = %14, %5
  %27 = phi float [ 0xC7EFFFFFE0000000, %5 ], [ %22, %14 ]
  %28 = phi float [ 0x47EFFFFFE0000000, %5 ], [ %21, %14 ]
  %29 = fsub float %7, %8
  %30 = fadd float %29, %28
  store float %30, ptr %3, align 4, !tbaa !54
  %31 = fadd float %29, %27
  store float %31, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_warp_transverts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !64 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = fneg float %3
  %13 = fsub float %5, %4
  %14 = fdiv float 1.000000e+00, %13
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  %16 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef %1) #11
  %17 = fmul float %3, -5.000000e-01
  %18 = call float @cosf(float noundef %17) #11
  store float %18, ptr %8, align 4, !tbaa !54
  %19 = call float @sinf(float noundef %17) #11
  %20 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %19, ptr %20, align 4, !tbaa !54
  %21 = fneg float %18
  store float %21, ptr %7, align 4, !tbaa !54
  %22 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %19, ptr %22, align 4, !tbaa !54
  %23 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %6
  %27 = load ptr, ptr %0, align 8, !tbaa !51
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  br label %29

29:                                               ; preds = %26, %42
  %30 = phi ptr [ %27, %26 ], [ %56, %42 ]
  %31 = phi i32 [ 0, %26 ], [ %55, %42 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %32 = load ptr, ptr %30, align 8, !tbaa !60
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %32) #11
  call fastcc void @sub_v2_v2(ptr noundef nonnull %10, ptr noundef %2) #13
  %33 = load float, ptr %10, align 4, !tbaa !54
  %34 = fcmp olt float %33, %4
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = fsub float %4, %33
  call fastcc void @mul_v2_v2fl(ptr noundef nonnull %11, ptr noundef nonnull %7, float noundef %36) #13
  br label %42

37:                                               ; preds = %29
  %38 = fcmp ogt float %33, %5
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = fsub float %33, %5
  call fastcc void @mul_v2_v2fl(ptr noundef nonnull %11, ptr noundef nonnull %8, float noundef %40) #13
  br label %42

41:                                               ; preds = %37
  call fastcc void @zero_v2(ptr noundef nonnull %11) #13
  br label %42

42:                                               ; preds = %39, %41, %35
  %43 = phi float [ %4, %35 ], [ %5, %39 ], [ %33, %41 ]
  %44 = fsub float %43, %15
  %45 = fmul float %14, %44
  %46 = fmul float %45, %12
  %47 = call float @sinf(float noundef %46) #11
  %48 = fneg float %47
  %49 = load float, ptr %28, align 4, !tbaa !54
  %50 = fmul float %49, %48
  store float %50, ptr %10, align 4, !tbaa !54
  %51 = call float @cosf(float noundef %46) #11
  %52 = load float, ptr %28, align 4, !tbaa !54
  %53 = fmul float %51, %52
  store float %53, ptr %28, align 4, !tbaa !54
  call fastcc void @add_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  call fastcc void @add_v2_v2(ptr noundef nonnull %10, ptr noundef %2) #13
  %54 = load ptr, ptr %30, align 8, !tbaa !60
  call void @mul_v3_m4v3(ptr noundef %54, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  %55 = add nuw nsw i32 %31, 1
  %56 = getelementptr inbounds %struct.TransVert, ptr %30, i64 1
  %57 = load i32, ptr %23, align 8, !tbaa !59
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %29, label %59, !llvm.loop !65

59:                                               ; preds = %42, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_m4_v3_row_x(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !66 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !67 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !68 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !69 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !70 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !71 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !72 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !54
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!"object_warp.c:object_warp_verts_exec"}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !36, i64 0}
!52 = !{!"TransVertStore", !36, i64 0, !53, i64 8, !53, i64 12}
!53 = !{!"int", !37, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !37, i64 0}
!56 = !{!"object_warp.c:copy_v3_v3"}
!57 = !{!"object_warp.c:object_warp_calc_view_matrix"}
!58 = !{!"object_warp.c:object_warp_transverts_minmax_x"}
!59 = !{!52, !53, i64 8}
!60 = !{!61, !36, i64 0}
!61 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !53, i64 44}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"object_warp.c:object_warp_transverts"}
!65 = distinct !{!65, !63}
!66 = !{!"object_warp.c:dot_m4_v3_row_x"}
!67 = !{!"object_warp.c:min_ff"}
!68 = !{!"object_warp.c:max_ff"}
!69 = !{!"object_warp.c:sub_v2_v2"}
!70 = !{!"object_warp.c:mul_v2_v2fl"}
!71 = !{!"object_warp.c:zero_v2"}
!72 = !{!"object_warp.c:add_v2_v2"}
