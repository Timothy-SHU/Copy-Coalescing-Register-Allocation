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
@uvedit_old_center = internal global [2 x float] zeroinitializer, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @.str.1, i64 12, i1 false) #7
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #7
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @image_panel_uv, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @image_panel_uv_poll, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_panel_uv(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !43 {
  %3 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %4) #7
  tail call void @uiBlockSetHandleFunc(ptr noundef %5, ptr noundef nonnull @do_uvedit_vertex, ptr noundef null) #7
  tail call fastcc void @uvedit_vertex_buttons(ptr noundef %0, ptr noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_panel_uv_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %3) #7
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_uvedit_vertex(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 !PGOFuncName !48 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %13 = icmp eq i32 %2, 3
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %10) #7
  call void @ED_space_image_get_size(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %16 = call fastcc i32 @uvedit_center(ptr noundef %9, ptr noundef %15, ptr noundef %12, ptr noundef nonnull %4) #8
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  %21 = load float, ptr @uvedit_old_center, align 4, !tbaa !58
  br i1 %20, label %26, label %22

22:                                               ; preds = %14
  %23 = load float, ptr %4, align 4, !tbaa !58
  %24 = fsub float %21, %23
  %25 = load float, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  br label %36

26:                                               ; preds = %14
  %27 = load i32, ptr %6, align 4, !tbaa !59
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %21, %28
  %30 = load float, ptr %4, align 4, !tbaa !58
  %31 = fsub float %29, %30
  %32 = load float, ptr getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), align 4, !tbaa !58
  %33 = load i32, ptr %7, align 4, !tbaa !59
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %32, %34
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi float [ %35, %26 ], [ %25, %22 ]
  %38 = phi float [ %31, %26 ], [ %24, %22 ]
  %39 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = fsub float %37, %40
  store float %38, ptr %5, align 4
  %42 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %41, ptr %42, align 4
  call fastcc void @uvedit_translate(ptr noundef %9, ptr noundef %15, ptr noundef %12, ptr noundef nonnull %5) #8
  %43 = load ptr, ptr %11, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772160, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %3, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uvedit_vertex_buttons(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = alloca [2 x float], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 3
  %14 = sitofp i32 %13 to float
  call void @ED_space_image_get_size(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %15 = call ptr @BKE_editmesh_from_object(ptr noundef %8) #7
  %16 = call fastcc i32 @uvedit_center(ptr noundef %7, ptr noundef %15, ptr noundef %10, ptr noundef nonnull %3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3) #8
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !57
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4, !tbaa !59
  %25 = load i32, ptr %5, align 4, !tbaa !59
  %26 = insertelement <2 x i32> poison, i32 %24, i64 0
  %27 = insertelement <2 x i32> %26, i32 %25, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = load <2 x float>, ptr @uvedit_old_center, align 8, !tbaa !58
  %30 = fmul <2 x float> %29, %28
  store <2 x float> %30, ptr @uvedit_old_center, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi float [ 1.000000e+02, %23 ], [ 1.000000e+00, %18 ]
  %33 = phi float [ 2.000000e+00, %23 ], [ 3.000000e+00, %18 ]
  call void @uiBlockBeginAlign(ptr noundef %1) #7
  %34 = trunc i32 %13 to i16
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %36 = load i32, ptr %4, align 4, !tbaa !59
  %37 = mul nsw i32 %36, -10
  %38 = sitofp i32 %37 to float
  %39 = sitofp i32 %36 to double
  %40 = fmul double %39, 1.000000e+01
  %41 = fptrunc double %40 to float
  %42 = call ptr @uiDefButF(ptr noundef %1, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %35, ptr noundef nonnull @uvedit_old_center, float noundef %38, float noundef %41, float noundef %32, float noundef %33, ptr noundef nonnull @.str.4) #7
  %43 = fptosi float %14 to i32
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %45 = load i32, ptr %5, align 4, !tbaa !59
  %46 = mul nsw i32 %45, -10
  %47 = sitofp i32 %46 to float
  %48 = sitofp i32 %45 to double
  %49 = fmul double %48, 1.000000e+01
  %50 = fptrunc double %49 to float
  %51 = call ptr @uiDefButF(ptr noundef %1, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %43, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %44, ptr noundef nonnull getelementptr inbounds ([2 x float], ptr @uvedit_old_center, i64 0, i64 1), float noundef %47, float noundef %50, float noundef %32, float noundef %33, ptr noundef nonnull @.str.4) #7
  call void @uiBlockEndAlign(ptr noundef %1) #7
  br label %52

52:                                               ; preds = %31, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @uvedit_center(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !65 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 16) #7
  %10 = load ptr, ptr %1, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %12 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %11, i32 noundef 15) #7
  tail call fastcc void @zero_v2(ptr noundef %3) #8
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %13, i8 noundef zeroext 3, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %4
  %17 = sext i32 %12 to i64
  %18 = sext i32 %9 to i64
  br label %19

19:                                               ; preds = %16, %42
  %20 = phi ptr [ %14, %16 ], [ %44, %42 ]
  %21 = phi i32 [ 0, %16 ], [ %43, %42 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !69
  %23 = getelementptr inbounds i8, ptr %22, i64 %17
  %24 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %20, ptr noundef %23) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %19
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %20) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26, %38
  %30 = phi ptr [ %40, %38 ], [ %27, %26 ]
  %31 = phi i32 [ %39, %38 ], [ %21, %26 ]
  %32 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %9) #7
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %30, align 8, !tbaa !72
  %36 = getelementptr inbounds i8, ptr %35, i64 %18
  call fastcc void @add_v2_v2(ptr noundef %3, ptr noundef %36) #8
  %37 = add nsw i32 %31, 1
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %37, %34 ], [ %31, %29 ]
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29, !llvm.loop !74

42:                                               ; preds = %38, %26, %19
  %43 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %39, %38 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %19, !llvm.loop !76

46:                                               ; preds = %42
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = sitofp i32 %43 to float
  %50 = load <2 x float>, ptr %3, align 4, !tbaa !58
  %51 = insertelement <2 x float> poison, float %49, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = fdiv <2 x float> %50, %52
  store <2 x float> %53, ptr %3, align 4, !tbaa !58
  br label %54

54:                                               ; preds = %4, %48, %46
  %55 = phi i32 [ %43, %48 ], [ %43, %46 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uvedit_translate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !77 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 16) #7
  %10 = load ptr, ptr %1, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %12 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %11, i32 noundef 15) #7
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %13, i8 noundef zeroext 3, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %4
  %17 = sext i32 %12 to i64
  %18 = sext i32 %9 to i64
  br label %19

19:                                               ; preds = %16, %38
  %20 = phi ptr [ %14, %16 ], [ %39, %38 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds i8, ptr %21, i64 %17
  %23 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %20, ptr noundef %22) #7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %20) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %25, %35
  %29 = phi ptr [ %36, %35 ], [ %26, %25 ]
  %30 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %29, i32 noundef %9) #7
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %29, align 8, !tbaa !72
  %34 = getelementptr inbounds i8, ptr %33, i64 %18
  call fastcc void @add_v2_v2(ptr noundef %34, ptr noundef %3) #8
  br label %35

35:                                               ; preds = %28, %32
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %28, !llvm.loop !78

38:                                               ; preds = %35, %25, %19
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %19, !llvm.loop !79

41:                                               ; preds = %38, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !80 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !81 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #8
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !58
  %4 = load float, ptr %0, align 4, !tbaa !58
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !58
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !86 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !87
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %19 [
    i8 11, label %18
    i8 10, label %17
    i8 3, label %8
    i8 4, label %11
    i8 5, label %12
    i8 6, label %13
    i8 7, label %14
    i8 8, label %15
    i8 9, label %16
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !84
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !84
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !84
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !84
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !88
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !84
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !92
  tail call void %22(ptr noundef nonnull %0) #7
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !93 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !58
  store <2 x float> %2, ptr @uvedit_old_center, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_uvedit_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 352}
!43 = !{!"uvedit_buttons.c:image_panel_uv"}
!44 = !{!45, !35, i64 24}
!45 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !46, i64 240, !46, i64 242, !46, i64 244, !46, i64 246, !46, i64 248, !46, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!46 = !{!"short", !36, i64 0}
!47 = !{!"uvedit_buttons.c:image_panel_uv_poll"}
!48 = !{!"uvedit_buttons.c:do_uvedit_vertex"}
!49 = !{!50, !35, i64 40}
!50 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !51, i64 16, !40, i64 32, !40, i64 36, !35, i64 40, !52, i64 48, !35, i64 88, !53, i64 96, !55, i64 5360, !35, i64 10520, !36, i64 10528, !54, i64 10536, !54, i64 10540, !54, i64 10544, !54, i64 10548, !54, i64 10552, !36, i64 10556, !36, i64 10557, !46, i64 10558, !46, i64 10560, !46, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !56, i64 10568}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !46, i64 28, !46, i64 30, !46, i64 32, !46, i64 34, !40, i64 36}
!53 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !54, i64 12, !40, i64 16, !54, i64 20, !54, i64 24, !40, i64 28, !54, i64 32, !40, i64 36, !36, i64 40, !55, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !40, i64 5256, !40, i64 5260}
!54 = !{!"float", !36, i64 0}
!55 = !{!"Histogram", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !54, i64 5128, !54, i64 5132, !46, i64 5136, !46, i64 5138, !40, i64 5140, !36, i64 5144}
!56 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!57 = !{!50, !40, i64 36}
!58 = !{!54, !54, i64 0}
!59 = !{!40, !40, i64 0}
!60 = !{!"uvedit_buttons.c:uvedit_vertex_buttons"}
!61 = !{!62, !46, i64 8948}
!62 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !46, i64 8472, !46, i64 8474, !46, i64 8476, !46, i64 8478, !46, i64 8480, !46, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !46, i64 8496, !46, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !46, i64 8528, !46, i64 8530, !46, i64 8532, !46, i64 8534, !51, i64 8536, !51, i64 8552, !51, i64 8568, !51, i64 8584, !51, i64 8600, !51, i64 8616, !51, i64 8632, !36, i64 8648, !46, i64 8712, !46, i64 8714, !46, i64 8716, !46, i64 8718, !46, i64 8720, !46, i64 8722, !46, i64 8724, !46, i64 8726, !36, i64 8728, !46, i64 8896, !46, i64 8898, !46, i64 8900, !46, i64 8902, !46, i64 8904, !46, i64 8906, !46, i64 8908, !46, i64 8910, !40, i64 8912, !40, i64 8916, !46, i64 8920, !46, i64 8922, !46, i64 8924, !46, i64 8926, !46, i64 8928, !46, i64 8930, !46, i64 8932, !46, i64 8934, !46, i64 8936, !46, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !46, i64 8944, !46, i64 8946, !46, i64 8948, !46, i64 8950, !46, i64 8952, !46, i64 8954, !54, i64 8956, !54, i64 8960, !40, i64 8964, !46, i64 8968, !46, i64 8970, !54, i64 8972, !46, i64 8976, !46, i64 8978, !46, i64 8980, !46, i64 8982, !63, i64 8984, !36, i64 9760, !36, i64 9772, !46, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !54, i64 10904, !54, i64 10908, !40, i64 10912, !46, i64 10916, !46, i64 10918, !46, i64 10920, !46, i64 10922, !46, i64 10924, !46, i64 10926, !64, i64 10928}
!63 = !{!"ColorBand", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!64 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !46, i64 24, !36, i64 26}
!65 = !{!"uvedit_buttons.c:uvedit_center"}
!66 = !{!67, !35, i64 0}
!67 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !68, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !46, i64 92, !46, i64 94, !35, i64 96, !40, i64 104}
!68 = !{!"long", !36, i64 0}
!69 = !{!70, !35, i64 0}
!70 = !{!"BMFace", !71, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !46, i64 48}
!71 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!72 = !{!73, !35, i64 0}
!73 = !{!"BMLoop", !71, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = distinct !{!76, !75}
!77 = !{!"uvedit_buttons.c:uvedit_translate"}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !75}
!80 = !{!"uvedit_buttons.c:zero_v2"}
!81 = !{!"uvedit_buttons.c:BM_iter_new"}
!82 = !{!"uvedit_buttons.c:add_v2_v2"}
!83 = !{!"uvedit_buttons.c:BM_iter_step"}
!84 = !{!85, !35, i64 48}
!85 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!86 = !{!"uvedit_buttons.c:BM_iter_init"}
!87 = !{!85, !36, i64 60}
!88 = !{!85, !35, i64 40}
!89 = !{!90, !35, i64 56}
!90 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !91, i64 144, !91, i64 344, !91, i64 544, !91, i64 744, !46, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !51, i64 960, !35, i64 976, !51, i64 984, !35, i64 1000}
!91 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!92 = !{!36, !36, i64 0}
!93 = !{!"uvedit_buttons.c:copy_v2_v2"}
