; ModuleID = 'blender/source/blender/editors/uvedit/uvedit_buttons.c'
source_filename = "blender/source/blender/editors/uvedit/uvedit_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"spacetype image panel uv\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IMAGE_PT_uv\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"UV Vertex\00", align 1
@uvedit_old_center = internal global [2 x float] zeroinitializer, align 4
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #4
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @.str.1, i64 12, i1 false) #4
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #4
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @image_panel_uv, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @image_panel_uv_poll, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @image_panel_uv(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %7) #4
  tail call void @uiBlockSetHandleFunc(ptr noundef %8, ptr noundef nonnull @do_uvedit_vertex, ptr noundef null) #4
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #4
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = shl nsw i32 %15, 3
  %17 = sitofp i32 %16 to float
  call void @ED_space_image_get_size(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %11) #4
  %19 = call fastcc i32 @uvedit_center(ptr noundef %10, ptr noundef %18, ptr noundef %13, ptr noundef nonnull %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %2
  %22 = load float, ptr %3, align 4, !tbaa !58
  store float %22, ptr @uvedit_old_center, align 4, !tbaa !58
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !58
  store float %24, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  %25 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32, ptr %4, align 4, !tbaa !60
  %31 = sitofp i32 %30 to float
  %32 = fmul float %22, %31
  store float %32, ptr @uvedit_old_center, align 4, !tbaa !58
  %33 = load i32, ptr %5, align 4, !tbaa !60
  %34 = sitofp i32 %33 to float
  %35 = fmul float %24, %34
  store float %35, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  br label %36

36:                                               ; preds = %29, %21
  %37 = phi float [ 1.000000e+02, %29 ], [ 1.000000e+00, %21 ]
  %38 = phi float [ 2.000000e+00, %29 ], [ 3.000000e+00, %21 ]
  call void @uiBlockBeginAlign(ptr noundef %8) #4
  %39 = trunc i32 %16 to i16
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !54
  %41 = load i32, ptr %4, align 4, !tbaa !60
  %42 = mul nsw i32 %41, -10
  %43 = sitofp i32 %42 to float
  %44 = sitofp i32 %41 to double
  %45 = fmul double %44, 1.000000e+01
  %46 = fptrunc double %45 to float
  %47 = call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %40, ptr noundef nonnull @uvedit_old_center, float noundef %43, float noundef %46, float noundef %37, float noundef %38, ptr noundef nonnull @.str.4) #4
  %48 = fptosi float %17 to i32
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !54
  %50 = load i32, ptr %5, align 4, !tbaa !60
  %51 = mul nsw i32 %50, -10
  %52 = sitofp i32 %51 to float
  %53 = sitofp i32 %50 to double
  %54 = fmul double %53, 1.000000e+01
  %55 = fptrunc double %54 to float
  %56 = call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %48, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %49, ptr noundef nonnull getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), float noundef %52, float noundef %55, float noundef %37, float noundef %38, ptr noundef nonnull @.str.4) #4
  call void @uiBlockEndAlign(ptr noundef %8) #4
  br label %57

57:                                               ; preds = %2, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @image_panel_uv_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %4 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %3) #4
  %5 = zext i8 %4 to i32
  ret i32 %5
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_uvedit_vertex(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #4
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %14 = icmp eq i32 %2, 3
  br i1 %14, label %15, label %96

15:                                               ; preds = %3
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #4
  call void @ED_space_image_get_size(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  %17 = call fastcc i32 @uvedit_center(ptr noundef %10, ptr noundef %16, ptr noundef %13, ptr noundef nonnull %6)
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !59
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  %22 = load float, ptr @uvedit_old_center, align 4, !tbaa !58
  br i1 %21, label %27, label %23

23:                                               ; preds = %15
  %24 = load float, ptr %6, align 4, !tbaa !58
  %25 = fsub float %22, %24
  %26 = load float, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  br label %37

27:                                               ; preds = %15
  %28 = load i32, ptr %7, align 4, !tbaa !60
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %22, %29
  %31 = load float, ptr %6, align 4, !tbaa !58
  %32 = fsub float %30, %31
  %33 = load float, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  %34 = load i32, ptr %8, align 4, !tbaa !60
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %33, %35
  br label %37

37:                                               ; preds = %27, %23
  %38 = phi float [ %36, %27 ], [ %26, %23 ]
  %39 = phi float [ %32, %27 ], [ %25, %23 ]
  %40 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = fsub float %38, %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  %43 = load ptr, ptr %16, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 26
  %45 = call i32 @CustomData_get_offset(ptr noundef nonnull %44, i32 noundef 16) #4
  %46 = load ptr, ptr %16, align 8, !tbaa !61
  %47 = getelementptr inbounds %struct.BMesh, ptr %46, i64 0, i32 27
  %48 = call i32 @CustomData_get_offset(ptr noundef nonnull %47, i32 noundef 15) #4
  %49 = load ptr, ptr %16, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %50, align 4, !tbaa !64
  %51 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %51, align 8, !tbaa !66
  %52 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.BMesh, ptr %49, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !68
  store ptr %54, ptr %4, align 8, !tbaa !71
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #4
  %55 = load ptr, ptr %52, align 8, !tbaa !67
  %56 = call ptr %55(ptr noundef nonnull %4) #4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %94, label %58

58:                                               ; preds = %37
  %59 = sext i32 %48 to i64
  %60 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %62 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %63 = sext i32 %45 to i64
  br label %64

64:                                               ; preds = %58, %90
  %65 = phi ptr [ %56, %58 ], [ %92, %90 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds i8, ptr %66, i64 %59
  %68 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %10, ptr noundef %13, ptr noundef nonnull %65, ptr noundef %67) #4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %64
  store i8 11, ptr %60, align 4, !tbaa !64
  store ptr @bmiter__loop_of_face_begin, ptr %61, align 8, !tbaa !66
  store ptr @bmiter__loop_of_face_step, ptr %62, align 8, !tbaa !67
  store ptr %65, ptr %5, align 8, !tbaa !71
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #4
  %71 = load ptr, ptr %62, align 8, !tbaa !67
  %72 = call ptr %71(ptr noundef nonnull %5) #4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %70, %86
  %75 = phi ptr [ %88, %86 ], [ %72, %70 ]
  %76 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %10, ptr noundef nonnull %75, i32 noundef %45) #4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %75, align 8, !tbaa !75
  %80 = getelementptr inbounds i8, ptr %79, i64 %63
  %81 = load float, ptr %80, align 4, !tbaa !58
  %82 = fadd float %39, %81
  store float %82, ptr %80, align 4, !tbaa !58
  %83 = getelementptr inbounds float, ptr %80, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = fadd float %42, %84
  store float %85, ptr %83, align 4, !tbaa !58
  br label %86

86:                                               ; preds = %78, %74
  %87 = load ptr, ptr %62, align 8, !tbaa !67
  %88 = call ptr %87(ptr noundef nonnull %5) #4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %74, !llvm.loop !77

90:                                               ; preds = %86, %70, %64
  %91 = load ptr, ptr %52, align 8, !tbaa !67
  %92 = call ptr %91(ptr noundef nonnull %4) #4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %64, !llvm.loop !80

94:                                               ; preds = %90, %37
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  %95 = load ptr, ptr %12, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772160, ptr noundef %95) #4
  br label %96

96:                                               ; preds = %3, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  ret void
}

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @uvedit_center(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #4
  %7 = load ptr, ptr %1, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 16) #4
  %10 = load ptr, ptr %1, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %12 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %11, i32 noundef 15) #4
  store float 0.000000e+00, ptr %3, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !58
  %14 = load ptr, ptr %1, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %15, align 4, !tbaa !64
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  store ptr %19, ptr %5, align 8, !tbaa !71
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #4
  %20 = load ptr, ptr %17, align 8, !tbaa !67
  %21 = call ptr %20(ptr noundef nonnull %5) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %4
  %24 = sext i32 %12 to i64
  %25 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %28 = sext i32 %9 to i64
  br label %29

29:                                               ; preds = %23, %61
  %30 = phi ptr [ %21, %23 ], [ %64, %61 ]
  %31 = phi i32 [ 0, %23 ], [ %62, %61 ]
  %32 = load ptr, ptr %30, align 8, !tbaa !72
  %33 = getelementptr inbounds i8, ptr %32, i64 %24
  %34 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %30, ptr noundef %33) #4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %29
  store i8 11, ptr %25, align 4, !tbaa !64
  store ptr @bmiter__loop_of_face_begin, ptr %26, align 8, !tbaa !66
  store ptr @bmiter__loop_of_face_step, ptr %27, align 8, !tbaa !67
  store ptr %30, ptr %6, align 8, !tbaa !71
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #4
  %37 = load ptr, ptr %27, align 8, !tbaa !67
  %38 = call ptr %37(ptr noundef nonnull %6) #4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %36, %56
  %41 = phi ptr [ %59, %56 ], [ %38, %36 ]
  %42 = phi i32 [ %57, %56 ], [ %31, %36 ]
  %43 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %41, i32 noundef %9) #4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %41, align 8, !tbaa !75
  %47 = getelementptr inbounds i8, ptr %46, i64 %28
  %48 = load float, ptr %47, align 4, !tbaa !58
  %49 = load float, ptr %3, align 4, !tbaa !58
  %50 = fadd float %48, %49
  store float %50, ptr %3, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %47, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = load float, ptr %13, align 4, !tbaa !58
  %54 = fadd float %52, %53
  store float %54, ptr %13, align 4, !tbaa !58
  %55 = add nsw i32 %42, 1
  br label %56

56:                                               ; preds = %40, %45
  %57 = phi i32 [ %55, %45 ], [ %42, %40 ]
  %58 = load ptr, ptr %27, align 8, !tbaa !67
  %59 = call ptr %58(ptr noundef nonnull %6) #4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %40, !llvm.loop !81

61:                                               ; preds = %56, %36, %29
  %62 = phi i32 [ %31, %29 ], [ %31, %36 ], [ %57, %56 ]
  %63 = load ptr, ptr %17, align 8, !tbaa !67
  %64 = call ptr %63(ptr noundef nonnull %5) #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %29, !llvm.loop !82

66:                                               ; preds = %61, %4
  %67 = phi i32 [ 0, %4 ], [ %62, %61 ]
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = sitofp i32 %67 to float
  %71 = load float, ptr %3, align 4, !tbaa !58
  %72 = fdiv float %71, %70
  store float %72, ptr %3, align 4, !tbaa !58
  %73 = load float, ptr %13, align 4, !tbaa !58
  %74 = fdiv float %73, %70
  store float %74, ptr %13, align 4, !tbaa !58
  br label %75

75:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  ret i32 %67
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_uvedit_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 352}
!43 = !{!44, !35, i64 24}
!44 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!45 = !{!"short", !36, i64 0}
!46 = !{!47, !35, i64 40}
!47 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !48, i64 16, !40, i64 32, !40, i64 36, !35, i64 40, !49, i64 48, !35, i64 88, !50, i64 96, !52, i64 5360, !35, i64 10520, !36, i64 10528, !51, i64 10536, !51, i64 10540, !51, i64 10544, !51, i64 10548, !51, i64 10552, !36, i64 10556, !36, i64 10557, !45, i64 10558, !45, i64 10560, !45, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !53, i64 10568}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !40, i64 36}
!50 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !51, i64 12, !40, i64 16, !51, i64 20, !51, i64 24, !40, i64 28, !51, i64 32, !40, i64 36, !36, i64 40, !52, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !40, i64 5256, !40, i64 5260}
!51 = !{!"float", !36, i64 0}
!52 = !{!"Histogram", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !51, i64 5128, !51, i64 5132, !45, i64 5136, !45, i64 5138, !40, i64 5140, !36, i64 5144}
!53 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!54 = !{!55, !45, i64 8948}
!55 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !51, i64 8956, !51, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !51, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !56, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !51, i64 10904, !51, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !57, i64 10928}
!56 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!57 = !{!"WalkNavigation", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !45, i64 24, !36, i64 26}
!58 = !{!51, !51, i64 0}
!59 = !{!47, !40, i64 36}
!60 = !{!40, !40, i64 0}
!61 = !{!62, !35, i64 0}
!62 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !63, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !45, i64 92, !45, i64 94, !35, i64 96, !40, i64 104}
!63 = !{!"long", !36, i64 0}
!64 = !{!65, !36, i64 60}
!65 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!66 = !{!65, !35, i64 40}
!67 = !{!65, !35, i64 48}
!68 = !{!69, !35, i64 56}
!69 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !70, i64 144, !70, i64 344, !70, i64 544, !70, i64 744, !45, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !48, i64 960, !35, i64 976, !48, i64 984, !35, i64 1000}
!70 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!71 = !{!36, !36, i64 0}
!72 = !{!73, !35, i64 0}
!73 = !{!"BMFace", !74, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !45, i64 48}
!74 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!75 = !{!76, !35, i64 0}
!76 = !{!"BMLoop", !74, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !78, !79}
!81 = distinct !{!81, !78, !79}
!82 = distinct !{!82, !78, !79}
