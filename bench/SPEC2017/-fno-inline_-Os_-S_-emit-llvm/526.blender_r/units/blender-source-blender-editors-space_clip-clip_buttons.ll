; ModuleID = 'blender/source/blender/editors/space_clip/clip_buttons.c'
source_filename = "blender/source/blender/editors/space_clip/clip_buttons.c"
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
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.MarkerUpdateCb = type { i32, ptr, ptr, ptr, ptr, i32, [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"spacetype clip panel gpencil\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CLIP_PT_gpencil\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateMovieClip = private unnamed_addr constant [20 x i8] c"uiTemplateMovieClip\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: expected pointer property for %s.%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"edit_movieclip\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CLIP_OT_open\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"File Path:\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"clip.reload\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"colorspace_settings\00", align 1
@__func__.uiTemplateTrack = private unnamed_addr constant [16 x i8] c"uiTemplateTrack\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.uiTemplateMarker = private unnamed_addr constant [17 x i8] c"uiTemplateMarker\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"uiTemplateMarker update_cb\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Marker is disabled at current frame\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Marker is enabled at current frame\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Track is locked\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Position:\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"X-position of marker at frame in screen coordinates\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"Y-position of marker at frame in screen coordinates\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Offset:\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"X-offset to parenting point\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Y-offset to parenting point\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Pattern Area:\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Width:\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"Width of marker's pattern in screen coordinates\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Height:\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"Height of marker's pattern in screen coordinates\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Search Area:\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"X-position of search at frame relative to marker's position\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"Y-position of search at frame relative to marker's position\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"Width of marker's search in screen coordinates\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Height of marker's search in screen coordinates\00", align 1
@__func__.uiTemplateMovieclipInformation = private unnamed_addr constant [31 x i8] c"uiTemplateMovieclipInformation\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Size %d x %d\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c", %d float channel(s)\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c", RGBA float\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c", RGB float\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c", RGBA byte\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c", RGB byte\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c", failed to load\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Frame: %d / %d\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Frame: - / %d\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"File: %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #6
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #6
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false) #6
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @clip_grease_pencil_panel_poll, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @clip_grease_pencil_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateMovieClip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef %3) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #6
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMovieClip, ptr noundef %16, ptr noundef %3) #8
  br label %41

18:                                               ; preds = %10
  %19 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #6
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #6
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMovieClip, ptr noundef %24, ptr noundef %3) #8
  br label %41

26:                                               ; preds = %18
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %2, ptr noundef nonnull %11) #6
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #6
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef null) #6
  br label %31

31:                                               ; preds = %30, %26
  %32 = icmp eq ptr %28, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #6
  %35 = call ptr @uiLayoutGetBlock(ptr noundef %34) #6
  %36 = call ptr @uiDefBut(ptr noundef %35, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 19, i16 noundef signext 145, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %37 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #6
  %38 = call ptr @uiLayoutSplit(ptr noundef %37, float noundef 0.000000e+00, i32 noundef 0) #6
  %39 = call ptr @uiLayoutRow(ptr noundef %38, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  call void @uiItemO(ptr noundef %39, ptr noundef nonnull @.str.9, i32 noundef 692, ptr noundef nonnull @.str.11) #6
  %40 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #6
  call void @uiTemplateColorspaceSettings(ptr noundef %40, ptr noundef nonnull %6, ptr noundef nonnull @.str.12) #6
  br label %41

41:                                               ; preds = %31, %33, %5, %21, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateColorspaceSettings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateTrack(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef %2) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = tail call ptr @RNA_struct_identifier(ptr noundef %13) #6
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateTrack, ptr noundef %14, ptr noundef %2) #8
  br label %52

16:                                               ; preds = %8
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #6
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = tail call ptr @RNA_struct_identifier(ptr noundef %21) #6
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateTrack, ptr noundef %22, ptr noundef %2) #8
  br label %52

24:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %1, ptr noundef nonnull %9) #6
  %25 = getelementptr inbounds i8, ptr %4, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  %27 = getelementptr inbounds %struct.MovieClipScopes, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = mul nsw i32 %30, 20
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %30, %24 ], [ %33, %32 ]
  store i32 %36, ptr %27, align 4, !tbaa !30
  br label %37

37:                                               ; preds = %35, %32
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #6
  %39 = call ptr @uiLayoutGetBlock(ptr noundef %38) #6
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %41 = mul i16 %40, 10
  %42 = load i32, ptr %27, align 4, !tbaa !30
  %43 = trunc i32 %42 to i16
  %44 = call ptr @uiDefBut(ptr noundef %39, i32 noundef 20480, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i16 noundef signext %41, i16 noundef signext %43, ptr noundef nonnull %26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %46 = mul i16 %45, 10
  %47 = sitofp i16 %45 to float
  %48 = fmul float %47, 0x3FE99999A0000000
  %49 = fptosi float %48 to i16
  %50 = fmul float %47, 2.000000e+01
  %51 = call ptr @uiDefIconButI(ptr noundef %39, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %49, ptr noundef nonnull %27, float noundef %47, float noundef %50, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  br label %52

52:                                               ; preds = %3, %37, %19, %11
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateMarker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %262, label %18

18:                                               ; preds = %6
  %19 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef %2) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #6
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMarker, ptr noundef %24, ptr noundef %2) #8
  br label %262

26:                                               ; preds = %18
  %27 = tail call i32 @RNA_property_type(ptr noundef nonnull %19) #6
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = tail call ptr @RNA_struct_identifier(ptr noundef %31) #6
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMarker, ptr noundef %32, ptr noundef %2) #8
  br label %262

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef nonnull %1, ptr noundef nonnull %19) #6
  %35 = getelementptr inbounds i8, ptr %9, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  %37 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = load i32, ptr %38, align 4, !tbaa !35
  %42 = call ptr @BKE_tracking_marker_get(ptr noundef %40, i32 noundef %41) #6
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %44 = call ptr %43(i64 noundef 88, ptr noundef nonnull @.str.13) #6
  store i32 %5, ptr %44, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 1
  store ptr %36, ptr %45, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 2
  store ptr %38, ptr %46, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 3
  store ptr %40, ptr %47, align 8, !tbaa !40
  %48 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 4
  store ptr %42, ptr %48, align 8, !tbaa !41
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %42, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 11
  store i32 %50, ptr %51, align 4, !tbaa !43
  %52 = load i32, ptr %38, align 4, !tbaa !35
  %53 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 5
  store i32 %52, ptr %53, align 8, !tbaa !44
  %54 = icmp eq i32 %5, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %34
  %56 = call ptr @uiLayoutGetBlock(ptr noundef %0) #6
  %57 = load i32, ptr %51, align 4, !tbaa !43
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, ptr @.str.15, ptr @.str.14
  %61 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %62 = call ptr @uiDefIconButBitI(ptr noundef %56, i32 noundef 4608, i32 noundef 1, i32 noundef 0, i32 noundef 253, i32 noundef 0, i32 noundef 0, i16 noundef signext %61, i16 noundef signext %61, ptr noundef nonnull %51, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %60) #6
  call void @uiButSetNFunc(ptr noundef %62, ptr noundef nonnull @marker_update_cb, ptr noundef nonnull %44, ptr noundef null) #6
  br label %262

63:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  call void @BKE_movieclip_get_size(ptr noundef %36, ptr noundef nonnull %38, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %65 = load i32, ptr %64, align 8, !tbaa !45
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  call void @uiLayoutSetActive(ptr noundef %0, i8 noundef zeroext 0) #6
  %69 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #6
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %71 = mul i16 %70, 15
  %72 = call ptr @uiDefBut(ptr noundef %69, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i16 noundef signext %71, i16 noundef signext %70, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  br label %261

73:                                               ; preds = %63
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %42, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %42, i64 0, i32 3
  %75 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %42, i64 0, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %13, ptr noundef nonnull %74, ptr noundef nonnull %75) #8
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %74, ptr noundef nonnull %75) #8
  call fastcc void @mul_v2_fl(ptr noundef nonnull %14) #8
  %76 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 6
  %77 = load i32, ptr %10, align 4, !tbaa !47
  %78 = load i32, ptr %11, align 4, !tbaa !47
  call fastcc void @to_pixel_space(ptr noundef nonnull %76, ptr noundef nonnull %42, i32 noundef %77, i32 noundef %78) #8
  %79 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 7
  call fastcc void @to_pixel_space(ptr noundef nonnull %79, ptr noundef nonnull %12, i32 noundef %77, i32 noundef %78) #8
  %80 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 10
  call fastcc void @to_pixel_space(ptr noundef nonnull %80, ptr noundef nonnull %13, i32 noundef %77, i32 noundef %78) #8
  %81 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 9
  call fastcc void @to_pixel_space(ptr noundef nonnull %81, ptr noundef nonnull %14, i32 noundef %77, i32 noundef %78) #8
  %82 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 8
  %83 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 7
  call fastcc void @to_pixel_space(ptr noundef nonnull %82, ptr noundef nonnull %83, i32 noundef %77, i32 noundef %78) #8
  %84 = load i32, ptr %49, align 4, !tbaa !42
  store i32 %84, ptr %51, align 4, !tbaa !43
  %85 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #6
  call void @uiBlockSetHandleFunc(ptr noundef %85, ptr noundef nonnull @marker_block_handler, ptr noundef nonnull %44) #6
  call void @uiBlockSetNFunc(ptr noundef %85, ptr noundef nonnull @marker_update_cb, ptr noundef nonnull %44, ptr noundef null) #6
  %86 = load i32, ptr %51, align 4, !tbaa !43
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @.str.15, ptr @.str.14
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %91 = sitofp i16 %90 to double
  %92 = fmul double %91, 5.000000e-01
  %93 = fptosi double %92 to i32
  %94 = fmul double %91, 9.500000e+00
  %95 = fptosi double %94 to i32
  %96 = fmul double %91, 7.250000e+00
  %97 = fptosi double %96 to i16
  %98 = call ptr @uiDefButBitI(ptr noundef %85, i32 noundef 19968, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %93, i32 noundef %95, i16 noundef signext %97, i16 noundef signext %90, ptr noundef nonnull %51, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %89) #6
  %99 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #6
  %100 = load i32, ptr %51, align 4, !tbaa !43
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  call void @uiLayoutSetActive(ptr noundef %99, i8 noundef zeroext %103) #6
  %104 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %99) #6
  call void @uiBlockBeginAlign(ptr noundef %104) #6
  %105 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %106 = sext i16 %105 to i32
  %107 = mul nsw i32 %106, 10
  %108 = mul i16 %105, 15
  %109 = call ptr @uiDefBut(ptr noundef %104, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %107, i16 noundef signext %108, i16 noundef signext %105, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %110 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %111 = sext i16 %110 to i32
  %112 = sitofp i16 %110 to double
  %113 = fmul double %112, 5.000000e-01
  %114 = fptosi double %113 to i32
  %115 = mul nsw i32 %111, 9
  %116 = fmul double %112, 7.250000e+00
  %117 = fptosi double %116 to i16
  %118 = load i32, ptr %10, align 4, !tbaa !47
  %119 = mul nsw i32 %118, -10
  %120 = sitofp i32 %119 to float
  %121 = sitofp i32 %118 to double
  %122 = fmul double %121, 1.000000e+01
  %123 = fptrunc double %122 to float
  %124 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %114, i32 noundef %115, i16 noundef signext %117, i16 noundef signext %110, ptr noundef nonnull %76, float noundef %120, float noundef %123, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.20) #6
  %125 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %126 = sext i16 %125 to i32
  %127 = sitofp i16 %125 to double
  %128 = fmul double %127, 8.250000e+00
  %129 = fptosi double %128 to i32
  %130 = mul nsw i32 %126, 9
  %131 = fmul double %127, 7.250000e+00
  %132 = fptosi double %131 to i16
  %133 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 6, i64 1
  %134 = load i32, ptr %11, align 4, !tbaa !47
  %135 = mul nsw i32 %134, -10
  %136 = sitofp i32 %135 to float
  %137 = sitofp i32 %134 to double
  %138 = fmul double %137, 1.000000e+01
  %139 = fptrunc double %138 to float
  %140 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %129, i32 noundef %130, i16 noundef signext %132, i16 noundef signext %125, ptr noundef nonnull %133, float noundef %136, float noundef %139, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.22) #6
  %141 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %142 = sext i16 %141 to i32
  %143 = shl nsw i32 %142, 3
  %144 = mul i16 %141, 15
  %145 = call ptr @uiDefBut(ptr noundef %104, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %143, i16 noundef signext %144, i16 noundef signext %141, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %146 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %147 = sext i16 %146 to i32
  %148 = sitofp i16 %146 to double
  %149 = fmul double %148, 5.000000e-01
  %150 = fptosi double %149 to i32
  %151 = mul nsw i32 %147, 7
  %152 = fmul double %148, 7.250000e+00
  %153 = fptosi double %152 to i16
  %154 = load i32, ptr %10, align 4, !tbaa !47
  %155 = mul nsw i32 %154, -10
  %156 = sitofp i32 %155 to float
  %157 = sitofp i32 %154 to double
  %158 = fmul double %157, 1.000000e+01
  %159 = fptrunc double %158 to float
  %160 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %150, i32 noundef %151, i16 noundef signext %153, i16 noundef signext %146, ptr noundef nonnull %82, float noundef %156, float noundef %159, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.24) #6
  %161 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %162 = sext i16 %161 to i32
  %163 = sitofp i16 %161 to double
  %164 = fmul double %163, 8.250000e+00
  %165 = fptosi double %164 to i32
  %166 = mul nsw i32 %162, 7
  %167 = fmul double %163, 7.250000e+00
  %168 = fptosi double %167 to i16
  %169 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 8, i64 1
  %170 = load i32, ptr %11, align 4, !tbaa !47
  %171 = mul nsw i32 %170, -10
  %172 = sitofp i32 %171 to float
  %173 = sitofp i32 %170 to double
  %174 = fmul double %173, 1.000000e+01
  %175 = fptrunc double %174 to float
  %176 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %165, i32 noundef %166, i16 noundef signext %168, i16 noundef signext %161, ptr noundef nonnull %169, float noundef %172, float noundef %175, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.25) #6
  %177 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %178 = sext i16 %177 to i32
  %179 = mul nsw i32 %178, 6
  %180 = mul i16 %177, 15
  %181 = call ptr @uiDefBut(ptr noundef %104, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %179, i16 noundef signext %180, i16 noundef signext %177, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %182 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %183 = sext i16 %182 to i32
  %184 = sitofp i16 %182 to double
  %185 = fmul double %184, 5.000000e-01
  %186 = fptosi double %185 to i32
  %187 = mul nsw i32 %183, 5
  %188 = mul i16 %182, 15
  %189 = load i32, ptr %10, align 4, !tbaa !47
  %190 = sitofp i32 %189 to double
  %191 = fmul double %190, 1.000000e+01
  %192 = fptrunc double %191 to float
  %193 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 5, ptr noundef nonnull @.str.27, i32 noundef %186, i32 noundef %187, i16 noundef signext %188, i16 noundef signext %182, ptr noundef nonnull %79, float noundef 3.000000e+00, float noundef %192, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.28) #6
  %194 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %195 = sext i16 %194 to i32
  %196 = sitofp i16 %194 to double
  %197 = fmul double %196, 5.000000e-01
  %198 = fptosi double %197 to i32
  %199 = shl nsw i32 %195, 2
  %200 = mul i16 %194, 15
  %201 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 7, i64 1
  %202 = load i32, ptr %11, align 4, !tbaa !47
  %203 = sitofp i32 %202 to double
  %204 = fmul double %203, 1.000000e+01
  %205 = fptrunc double %204 to float
  %206 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 5, ptr noundef nonnull @.str.29, i32 noundef %198, i32 noundef %199, i16 noundef signext %200, i16 noundef signext %194, ptr noundef nonnull %201, float noundef 3.000000e+00, float noundef %205, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.30) #6
  %207 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %208 = sext i16 %207 to i32
  %209 = mul nsw i32 %208, 3
  %210 = mul i16 %207, 15
  %211 = call ptr @uiDefBut(ptr noundef %104, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %209, i16 noundef signext %210, i16 noundef signext %207, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #6
  %212 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %213 = sext i16 %212 to i32
  %214 = sitofp i16 %212 to double
  %215 = fmul double %214, 5.000000e-01
  %216 = fptosi double %215 to i32
  %217 = shl nsw i32 %213, 1
  %218 = fmul double %214, 7.250000e+00
  %219 = fptosi double %218 to i16
  %220 = load i32, ptr %10, align 4, !tbaa !47
  %221 = sub nsw i32 0, %220
  %222 = sitofp i32 %221 to float
  %223 = sitofp i32 %220 to float
  %224 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 6, ptr noundef nonnull @.str.19, i32 noundef %216, i32 noundef %217, i16 noundef signext %219, i16 noundef signext %212, ptr noundef nonnull %81, float noundef %222, float noundef %223, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.32) #6
  %225 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %226 = sext i16 %225 to i32
  %227 = sitofp i16 %225 to double
  %228 = fmul double %227, 8.250000e+00
  %229 = fptosi double %228 to i32
  %230 = shl nsw i32 %226, 1
  %231 = fmul double %227, 7.250000e+00
  %232 = fptosi double %231 to i16
  %233 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 9, i64 1
  %234 = load i32, ptr %11, align 4, !tbaa !47
  %235 = sub nsw i32 0, %234
  %236 = sitofp i32 %235 to float
  %237 = sitofp i32 %234 to float
  %238 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 6, ptr noundef nonnull @.str.21, i32 noundef %229, i32 noundef %230, i16 noundef signext %232, i16 noundef signext %225, ptr noundef nonnull %233, float noundef %236, float noundef %237, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.33) #6
  %239 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %240 = sext i16 %239 to i32
  %241 = sitofp i16 %239 to double
  %242 = fmul double %241, 5.000000e-01
  %243 = fptosi double %242 to i32
  %244 = mul i16 %239, 15
  %245 = load i32, ptr %10, align 4, !tbaa !47
  %246 = sitofp i32 %245 to double
  %247 = fmul double %246, 1.000000e+01
  %248 = fptrunc double %247 to float
  %249 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 7, ptr noundef nonnull @.str.27, i32 noundef %243, i32 noundef %240, i16 noundef signext %244, i16 noundef signext %239, ptr noundef nonnull %80, float noundef 3.000000e+00, float noundef %248, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.34) #6
  %250 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %251 = sitofp i16 %250 to double
  %252 = fmul double %251, 5.000000e-01
  %253 = fptosi double %252 to i32
  %254 = mul i16 %250, 15
  %255 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %44, i64 0, i32 10, i64 1
  %256 = load i32, ptr %11, align 4, !tbaa !47
  %257 = sitofp i32 %256 to double
  %258 = fmul double %257, 1.000000e+01
  %259 = fptrunc double %258 to float
  %260 = call ptr @uiDefButF(ptr noundef %104, i32 noundef 2560, i32 noundef 7, ptr noundef nonnull @.str.29, i32 noundef %253, i32 noundef 0, i16 noundef signext %254, i16 noundef signext %250, ptr noundef nonnull %255, float noundef 3.000000e+00, float noundef %259, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.35) #6
  call void @uiBlockEndAlign(ptr noundef %104) #6
  br label %261

261:                                              ; preds = %73, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %262

262:                                              ; preds = %261, %55, %6, %29, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marker_update_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !36
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef %8, i32 noundef %10) #6
  %12 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #6
  br label %15

15:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !48
  %3 = fmul <2 x float> %2, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %3, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @to_pixel_space(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %1) #8
  %5 = insertelement <2 x i32> poison, i32 %2, i64 0
  %6 = insertelement <2 x i32> %5, i32 %3, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !48
  %9 = fmul <2 x float> %8, %7
  store <2 x float> %9, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marker_block_handler(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 8
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %15 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  call void @BKE_movieclip_get_size(ptr noundef %16, ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %19 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = call ptr @BKE_tracking_marker_ensure(ptr noundef %20, i32 noundef %22) #6
  switch i32 %2, label %143 [
    i32 3, label %24
    i32 5, label %37
    i32 6, label %73
    i32 7, label %89
    i32 8, label %108
    i32 4, label %112
  ]

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !48
  %27 = load i32, ptr %4, align 4, !tbaa !47
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  store float %29, ptr %23, align 4, !tbaa !48
  %30 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 6, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !48
  %32 = load i32, ptr %5, align 4, !tbaa !47
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %31, %33
  %35 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !48
  %36 = load ptr, ptr %15, align 8, !tbaa !38
  call void @DAG_id_tag_update(ptr noundef %36, i16 noundef signext 0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #6
  br label %141

37:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %38 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  %40 = load ptr, ptr %38, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 7, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !48
  %43 = load i32, ptr %5, align 4, !tbaa !47
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %42, %44
  %46 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !48
  %48 = fdiv float %45, %47
  %49 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 7
  %50 = load float, ptr %49, align 4, !tbaa !48
  %51 = load i32, ptr %4, align 4, !tbaa !47
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = load float, ptr %6, align 4, !tbaa !48
  %55 = fdiv float %53, %54
  %56 = insertelement <2 x float> poison, float %55, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = insertelement <2 x float> poison, float %48, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  br label %60

60:                                               ; preds = %60, %37
  %61 = phi i64 [ 0, %37 ], [ %70, %60 ]
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %40, i64 0, i32 1, i64 %61
  %63 = load <4 x float>, ptr %62, align 4, !tbaa !48
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %65 = shufflevector <4 x float> %63, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %66 = fmul <2 x float> %57, %64
  %67 = fmul <2 x float> %59, %65
  %68 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %40, i64 0, i32 1, i64 %61
  %69 = shufflevector <2 x float> %66, <2 x float> %67, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %69, ptr %68, align 4, !tbaa !48
  %70 = add nuw i64 %61, 2
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %60, !llvm.loop !49

72:                                               ; preds = %60
  call void @BKE_tracking_marker_clamp(ptr noundef nonnull %40, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %141

73:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  %74 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  %76 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %75, i64 0, i32 3
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %75, i64 0, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %76, ptr noundef nonnull %77) #8
  call fastcc void @mul_v2_fl(ptr noundef nonnull %10) #8
  %78 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 9
  %79 = load i32, ptr %4, align 4, !tbaa !47
  %80 = load i32, ptr %5, align 4, !tbaa !47
  %81 = load <2 x float>, ptr %78, align 4, !tbaa !48
  %82 = insertelement <2 x i32> poison, i32 %79, i64 0
  %83 = insertelement <2 x i32> %82, i32 %80, i64 1
  %84 = sitofp <2 x i32> %83 to <2 x float>
  %85 = fdiv <2 x float> %81, %84
  store <2 x float> %85, ptr %9, align 8, !tbaa !48
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %77, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %86 = load ptr, ptr %74, align 8, !tbaa !41
  %87 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %86, i64 0, i32 3
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %87, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %88 = load ptr, ptr %74, align 8, !tbaa !41
  call void @BKE_tracking_marker_clamp(ptr noundef %88, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %141

89:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  %90 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !41
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %91, i64 0, i32 3
  %93 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %91, i64 0, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %92, ptr noundef nonnull %93) #8
  %94 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 10
  %95 = load i32, ptr %4, align 4, !tbaa !47
  %96 = load i32, ptr %5, align 4, !tbaa !47
  %97 = load <2 x float>, ptr %94, align 4, !tbaa !48
  %98 = insertelement <2 x i32> poison, i32 %95, i64 0
  %99 = insertelement <2 x i32> %98, i32 %96, i64 1
  %100 = sitofp <2 x i32> %99 to <2 x float>
  %101 = fdiv <2 x float> %97, %100
  store <2 x float> %101, ptr %11, align 8, !tbaa !48
  call fastcc void @sub_v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  call fastcc void @mul_v2_fl(ptr noundef nonnull %11) #8
  %102 = load <2 x float>, ptr %11, align 8, !tbaa !48
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %104 = load <4 x float>, ptr %93, align 4, !tbaa !48
  %105 = fsub <4 x float> %104, %103
  %106 = fadd <4 x float> %104, %103
  %107 = shufflevector <4 x float> %105, <4 x float> %106, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %107, ptr %93, align 4, !tbaa !48
  call void @BKE_tracking_marker_clamp(ptr noundef %91, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %141

108:                                              ; preds = %3
  %109 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !43
  %111 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %23, i64 0, i32 5
  store i32 %110, ptr %111, align 4, !tbaa !42
  br label %141

112:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  %113 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 8
  %114 = load i32, ptr %4, align 4, !tbaa !47
  %115 = load i32, ptr %5, align 4, !tbaa !47
  %116 = load <2 x float>, ptr %113, align 4, !tbaa !48
  %117 = insertelement <2 x i32> poison, i32 %114, i64 0
  %118 = insertelement <2 x i32> %117, i32 %115, i64 1
  %119 = sitofp <2 x i32> %118 to <2 x float>
  %120 = fdiv <2 x float> %116, %119
  store <2 x float> %120, ptr %13, align 8, !tbaa !48
  %121 = load ptr, ptr %19, align 8, !tbaa !40
  %122 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %121, i64 0, i32 7
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %122) #8
  call fastcc void @copy_v2_v2(ptr noundef nonnull %122, ptr noundef nonnull %13) #8
  %123 = load ptr, ptr %19, align 8, !tbaa !40
  %124 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %123, i64 0, i32 8
  %125 = load i32, ptr %124, align 8, !tbaa !53
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %112, %127
  %128 = phi i64 [ %133, %127 ], [ 0, %112 ]
  %129 = phi ptr [ %134, %127 ], [ %123, %112 ]
  %130 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %129, i64 0, i32 10
  %131 = load ptr, ptr %130, align 8, !tbaa !54
  %132 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %131, i64 %128
  call fastcc void @sub_v2_v2(ptr noundef %132, ptr noundef nonnull %14) #8
  %133 = add nuw nsw i64 %128, 1
  %134 = load ptr, ptr %19, align 8, !tbaa !40
  %135 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %134, i64 0, i32 8
  %136 = load i32, ptr %135, align 8, !tbaa !53
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %133, %137
  br i1 %138, label %127, label %139, !llvm.loop !55

139:                                              ; preds = %127, %112
  %140 = load ptr, ptr %15, align 8, !tbaa !38
  call void @DAG_id_tag_update(ptr noundef %140, i16 noundef signext 0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  br label %141

141:                                              ; preds = %139, %108, %89, %73, %72, %24
  %142 = load ptr, ptr %15, align 8, !tbaa !38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %142) #6
  br label %143

143:                                              ; preds = %3, %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateMovieclipInformation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %103, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef %2) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = tail call ptr @RNA_struct_identifier(ptr noundef %18) #6
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMovieclipInformation, ptr noundef %19, ptr noundef %2) #8
  br label %103

21:                                               ; preds = %13
  %22 = tail call i32 @RNA_property_type(ptr noundef nonnull %14) #6
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = tail call ptr @RNA_struct_identifier(ptr noundef %26) #6
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMovieclipInformation, ptr noundef %27, ptr noundef %2) #8
  br label %103

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef nonnull %1, ptr noundef nonnull %14) #6
  %30 = getelementptr inbounds i8, ptr %8, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #6
  %35 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %31, ptr noundef %33, i32 noundef %36, i32 noundef 1) #6
  call void @BKE_movieclip_get_size(ptr noundef %31, ptr noundef %33, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %38 = load i32, ptr %6, align 4, !tbaa !47
  %39 = load i32, ptr %7, align 4, !tbaa !47
  %40 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.36, i32 noundef %38, i32 noundef %39) #6
  %41 = icmp eq ptr %37, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !67
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !71
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %5, i64 %40
  %52 = sub i64 1024, %40
  %53 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %51, i64 noundef %52, ptr noundef nonnull @.str.37, i32 noundef %48) #6
  br label %78

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 4
  %56 = load i8, ptr %55, align 8, !tbaa !72
  %57 = icmp eq i8 %56, 32
  %58 = getelementptr inbounds i8, ptr %5, i64 %40
  %59 = sub i64 1024, %40
  br i1 %57, label %60, label %62

60:                                               ; preds = %54
  %61 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %58, ptr noundef nonnull @.str.38, i64 noundef %59) #6
  br label %78

62:                                               ; preds = %54
  %63 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %58, ptr noundef nonnull @.str.39, i64 noundef %59) #6
  br label %78

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 4
  %66 = load i8, ptr %65, align 8, !tbaa !72
  %67 = icmp eq i8 %66, 32
  %68 = getelementptr inbounds i8, ptr %5, i64 %40
  %69 = sub i64 1024, %40
  br i1 %67, label %70, label %72

70:                                               ; preds = %64
  %71 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %68, ptr noundef nonnull @.str.40, i64 noundef %69) #6
  br label %78

72:                                               ; preds = %64
  %73 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %68, ptr noundef nonnull @.str.41, i64 noundef %69) #6
  br label %78

74:                                               ; preds = %29
  %75 = getelementptr inbounds i8, ptr %5, i64 %40
  %76 = sub i64 1024, %40
  %77 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %75, ptr noundef nonnull @.str.42, i64 noundef %76) #6
  br label %78

78:                                               ; preds = %60, %62, %50, %72, %70, %74
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #6
  %79 = load i32, ptr %33, align 4, !tbaa !35
  %80 = sitofp i32 %79 to float
  %81 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %31, float noundef %80) #6
  %82 = fptosi float %81 to i32
  %83 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 15
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = icmp slt i32 %84, %82
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.43, i32 noundef %82, i32 noundef %84) #6
  br label %90

88:                                               ; preds = %78
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.44, i32 noundef %84) #6
  br label %90

90:                                               ; preds = %88, %86
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #6
  %91 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !74
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #7
  %95 = load i32, ptr %83, align 4, !tbaa !73
  %96 = icmp slt i32 %95, %82
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  call void @BKE_movieclip_filename_for_frame(ptr noundef nonnull %31, ptr noundef nonnull %33, ptr noundef nonnull %9) #6
  %98 = call ptr @BLI_last_slash(ptr noundef nonnull %9) #6
  br label %99

99:                                               ; preds = %94, %97
  %100 = phi ptr [ %98, %97 ], [ @.str.45, %94 ]
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.46, ptr noundef %100) #6
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #7
  br label %102

102:                                              ; preds = %99, %90
  call void @IMB_freeImBuf(ptr noundef %37) #6
  br label %103

103:                                              ; preds = %4, %102, %24, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  store float %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  %4 = load float, ptr %0, align 4, !tbaa !48
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !48
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !48
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 360}
!10 = !{!"PanelType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !7, i64 208, !7, i64 272, !11, i64 336, !11, i64 340, !11, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !12, i64 376}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!10, !6, i64 368}
!14 = !{!10, !11, i64 344}
!15 = !{!10, !6, i64 352}
!16 = !{!17, !21, i64 214}
!17 = !{!"SpaceClip", !6, i64 0, !6, i64 8, !18, i64 16, !11, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !20, i64 56, !6, i64 64, !22, i64 72, !11, i64 208, !21, i64 212, !21, i64 214, !11, i64 216, !7, i64 220, !19, i64 228, !19, i64 232, !11, i64 236, !7, i64 240, !7, i64 304, !11, i64 368, !21, i64 372, !21, i64 374, !11, i64 376, !11, i64 380, !7, i64 384, !24, i64 392}
!18 = !{!"ListBase", !6, i64 0, !6, i64 8}
!19 = !{!"float", !7, i64 0}
!20 = !{!"MovieClipUser", !11, i64 0, !21, i64 4, !21, i64 6}
!21 = !{!"short", !7, i64 0}
!22 = !{!"MovieClipScopes", !21, i64 0, !21, i64 2, !11, i64 4, !11, i64 8, !11, i64 12, !23, i64 16, !6, i64 80, !6, i64 88, !7, i64 96, !21, i64 104, !21, i64 106, !11, i64 108, !6, i64 112, !6, i64 120, !7, i64 128}
!23 = !{!"MovieTrackingMarker", !7, i64 0, !7, i64 8, !7, i64 40, !7, i64 48, !11, i64 56, !11, i64 60}
!24 = !{!"MaskSpaceInfo", !6, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!25 = !{!26, !6, i64 16}
!26 = !{!"PointerRNA", !27, i64 0, !6, i64 8, !6, i64 16}
!27 = !{!"", !6, i64 0}
!28 = !{!26, !6, i64 8}
!29 = !{i64 0, i64 8, !5}
!30 = !{!22, !11, i64 4}
!31 = !{!32, !21, i64 8948}
!32 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !11, i64 8468, !21, i64 8472, !21, i64 8474, !21, i64 8476, !21, i64 8478, !21, i64 8480, !21, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !21, i64 8496, !21, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !21, i64 8528, !21, i64 8530, !21, i64 8532, !21, i64 8534, !18, i64 8536, !18, i64 8552, !18, i64 8568, !18, i64 8584, !18, i64 8600, !18, i64 8616, !18, i64 8632, !7, i64 8648, !21, i64 8712, !21, i64 8714, !21, i64 8716, !21, i64 8718, !21, i64 8720, !21, i64 8722, !21, i64 8724, !21, i64 8726, !7, i64 8728, !21, i64 8896, !21, i64 8898, !21, i64 8900, !21, i64 8902, !21, i64 8904, !21, i64 8906, !21, i64 8908, !21, i64 8910, !11, i64 8912, !11, i64 8916, !21, i64 8920, !21, i64 8922, !21, i64 8924, !21, i64 8926, !21, i64 8928, !21, i64 8930, !21, i64 8932, !21, i64 8934, !21, i64 8936, !21, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !21, i64 8944, !21, i64 8946, !21, i64 8948, !21, i64 8950, !21, i64 8952, !21, i64 8954, !19, i64 8956, !19, i64 8960, !11, i64 8964, !21, i64 8968, !21, i64 8970, !19, i64 8972, !21, i64 8976, !21, i64 8978, !21, i64 8980, !21, i64 8982, !33, i64 8984, !7, i64 9760, !7, i64 9772, !21, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !11, i64 10896, !11, i64 10900, !19, i64 10904, !19, i64 10908, !11, i64 10912, !21, i64 10916, !21, i64 10918, !21, i64 10920, !21, i64 10922, !21, i64 10924, !21, i64 10926, !34, i64 10928}
!33 = !{!"ColorBand", !21, i64 0, !21, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!34 = !{!"WalkNavigation", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !21, i64 24, !7, i64 26}
!35 = !{!20, !11, i64 0}
!36 = !{!37, !11, i64 0}
!37 = !{!"", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !7, i64 44, !7, i64 52, !7, i64 60, !7, i64 68, !7, i64 76, !11, i64 84}
!38 = !{!37, !6, i64 8}
!39 = !{!37, !6, i64 16}
!40 = !{!37, !6, i64 24}
!41 = !{!37, !6, i64 32}
!42 = !{!23, !11, i64 60}
!43 = !{!37, !11, i64 84}
!44 = !{!37, !11, i64 40}
!45 = !{!46, !11, i64 152}
!46 = !{!"MovieTrackingTrack", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !11, i64 120, !11, i64 124, !6, i64 128, !7, i64 136, !19, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !7, i64 164, !21, i64 176, !21, i64 178, !21, i64 180, !21, i64 182, !11, i64 184, !19, i64 188, !6, i64 192, !19, i64 200, !19, i64 204}
!47 = !{!11, !11, i64 0}
!48 = !{!19, !19, i64 0}
!49 = distinct !{!49, !50, !51, !52}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!46, !11, i64 120}
!54 = !{!46, !6, i64 128}
!55 = distinct !{!55, !50}
!56 = !{!57, !11, i64 2312}
!57 = !{!"MovieClip", !58, i64 0, !6, i64 120, !7, i64 128, !11, i64 1152, !11, i64 1156, !7, i64 1160, !19, i64 1168, !19, i64 1172, !6, i64 1176, !6, i64 1184, !6, i64 1192, !59, i64 1200, !6, i64 1528, !65, i64 1536, !11, i64 2312, !11, i64 2316, !11, i64 2320, !11, i64 2324, !66, i64 2328}
!58 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !21, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!59 = !{!"MovieTracking", !60, i64 0, !61, i64 72, !18, i64 128, !18, i64 144, !62, i64 160, !63, i64 184, !6, i64 232, !6, i64 240, !18, i64 248, !11, i64 264, !11, i64 268, !6, i64 272, !64, i64 280}
!60 = !{!"MovieTrackingSettings", !11, i64 0, !21, i64 4, !21, i64 6, !19, i64 8, !21, i64 12, !21, i64 14, !21, i64 16, !21, i64 18, !21, i64 20, !21, i64 22, !19, i64 24, !21, i64 28, !21, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !21, i64 44, !21, i64 46, !19, i64 48, !11, i64 52, !11, i64 56, !19, i64 60, !19, i64 64, !11, i64 68}
!61 = !{!"MovieTrackingCamera", !6, i64 0, !21, i64 8, !21, i64 10, !19, i64 12, !19, i64 16, !19, i64 20, !21, i64 24, !21, i64 26, !7, i64 28, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52}
!62 = !{!"MovieTrackingReconstruction", !11, i64 0, !19, i64 4, !11, i64 8, !11, i64 12, !6, i64 16}
!63 = !{!"MovieTrackingStabilization", !11, i64 0, !11, i64 4, !11, i64 8, !19, i64 12, !6, i64 16, !19, i64 24, !19, i64 28, !19, i64 32, !11, i64 36, !11, i64 40, !19, i64 44}
!64 = !{!"MovieTrackingDopesheet", !11, i64 0, !21, i64 4, !21, i64 6, !18, i64 8, !18, i64 24, !11, i64 40, !11, i64 44}
!65 = !{!"MovieClipProxy", !7, i64 0, !21, i64 768, !21, i64 770, !21, i64 772, !21, i64 774}
!66 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!67 = !{!68, !6, i64 48}
!68 = !{!"ImBuf", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48, !7, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !19, i64 112, !7, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !6, i64 296, !6, i64 304, !11, i64 312, !7, i64 316, !7, i64 1340, !6, i64 2368, !11, i64 2376, !6, i64 2384, !11, i64 2392, !11, i64 2396, !6, i64 2400, !6, i64 2408, !6, i64 2416, !6, i64 2424, !11, i64 2432, !69, i64 2436, !70, i64 2456}
!69 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!70 = !{!"DDSData", !11, i64 0, !11, i64 4, !6, i64 8, !11, i64 16}
!71 = !{!68, !11, i64 28}
!72 = !{!68, !7, i64 24}
!73 = !{!57, !11, i64 2316}
!74 = !{!57, !11, i64 1152}
