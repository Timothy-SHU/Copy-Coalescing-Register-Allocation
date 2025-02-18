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

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #5
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false) #5
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @clip_grease_pencil_panel_poll, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @clip_grease_pencil_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !45
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateMovieClip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #5
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMovieClip, ptr noundef %16, ptr noundef %3)
  br label %41

18:                                               ; preds = %10
  %19 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #5
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #5
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMovieClip, ptr noundef %24, ptr noundef %3)
  br label %41

26:                                               ; preds = %18
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %2, ptr noundef nonnull %11) #5
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #5
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef null) #5
  br label %31

31:                                               ; preds = %30, %26
  %32 = icmp eq ptr %28, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #5
  %35 = call ptr @uiLayoutGetBlock(ptr noundef %34) #5
  %36 = call ptr @uiDefBut(ptr noundef %35, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 19, i16 noundef signext 145, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %37 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #5
  %38 = call ptr @uiLayoutSplit(ptr noundef %37, float noundef 0.000000e+00, i32 noundef 0) #5
  %39 = call ptr @uiLayoutRow(ptr noundef %38, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  call void @uiItemO(ptr noundef %39, ptr noundef nonnull @.str.9, i32 noundef 692, ptr noundef nonnull @.str.11) #5
  %40 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #5
  call void @uiTemplateColorspaceSettings(ptr noundef %40, ptr noundef nonnull %6, ptr noundef nonnull @.str.12) #5
  br label %41

41:                                               ; preds = %31, %33, %5, %21, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  ret void
}

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateColorspaceSettings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateTrack(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call ptr @RNA_struct_identifier(ptr noundef %13) #5
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateTrack, ptr noundef %14, ptr noundef %2)
  br label %52

16:                                               ; preds = %8
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #5
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = tail call ptr @RNA_struct_identifier(ptr noundef %21) #5
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateTrack, ptr noundef %22, ptr noundef %2)
  br label %52

24:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %9) #5
  %25 = getelementptr inbounds i8, ptr %4, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  %27 = getelementptr inbounds %struct.MovieClipScopes, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !59
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = mul nsw i32 %30, 20
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %30, %24 ], [ %33, %32 ]
  store i32 %36, ptr %27, align 4, !tbaa !59
  br label %37

37:                                               ; preds = %35, %32
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  %39 = call ptr @uiLayoutGetBlock(ptr noundef %38) #5
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %41 = mul i16 %40, 10
  %42 = load i32, ptr %27, align 4, !tbaa !59
  %43 = trunc i32 %42 to i16
  %44 = call ptr @uiDefBut(ptr noundef %39, i32 noundef 20480, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i16 noundef signext %41, i16 noundef signext %43, ptr noundef %26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %46 = mul i16 %45, 10
  %47 = sitofp i16 %45 to float
  %48 = fmul float %47, 0x3FE99999A0000000
  %49 = fptosi float %48 to i16
  %50 = fmul float %47, 2.000000e+01
  %51 = call ptr @uiDefIconButI(ptr noundef %39, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %49, ptr noundef nonnull %27, float noundef %47, float noundef %50, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  br label %52

52:                                               ; preds = %3, %37, %19, %11
  ret void
}

declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateMarker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %297, label %15

15:                                               ; preds = %6
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = tail call ptr @RNA_struct_identifier(ptr noundef %20) #5
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMarker, ptr noundef %21, ptr noundef %2)
  br label %297

23:                                               ; preds = %15
  %24 = tail call i32 @RNA_property_type(ptr noundef nonnull %16) #5
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = tail call ptr @RNA_struct_identifier(ptr noundef %28) #5
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMarker, ptr noundef %29, ptr noundef %2)
  br label %297

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #5
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %1, ptr noundef nonnull %16) #5
  %32 = getelementptr inbounds i8, ptr %9, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #5
  %34 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = load i32, ptr %35, align 4, !tbaa !64
  %39 = call ptr @BKE_tracking_marker_get(ptr noundef %37, i32 noundef %38) #5
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = call ptr %40(i64 noundef 88, ptr noundef nonnull @.str.13) #5
  store i32 %5, ptr %41, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 1
  store ptr %33, ptr %42, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 2
  store ptr %35, ptr %43, align 8, !tbaa !68
  %44 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 3
  store ptr %37, ptr %44, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 4
  store ptr %39, ptr %45, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !71
  %48 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 11
  store i32 %47, ptr %48, align 4, !tbaa !72
  %49 = load i32, ptr %35, align 4, !tbaa !64
  %50 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 5
  store i32 %49, ptr %50, align 8, !tbaa !73
  %51 = icmp eq i32 %5, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %31
  %53 = call ptr @uiLayoutGetBlock(ptr noundef %0) #5
  %54 = load i32, ptr %48, align 4, !tbaa !72
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.15, ptr @.str.14
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %59 = call ptr @uiDefIconButBitI(ptr noundef %53, i32 noundef 4608, i32 noundef 1, i32 noundef 0, i32 noundef 253, i32 noundef 0, i32 noundef 0, i16 noundef signext %58, i16 noundef signext %58, ptr noundef nonnull %48, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %57) #5
  call void @uiButSetNFunc(ptr noundef %59, ptr noundef nonnull @marker_update_cb, ptr noundef nonnull %41, ptr noundef null) #5
  br label %297

60:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  call void @BKE_movieclip_get_size(ptr noundef %33, ptr noundef nonnull %35, ptr noundef nonnull %10, ptr noundef nonnull %11) #5
  %61 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %37, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !74
  %63 = and i32 %62, 64
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  call void @uiLayoutSetActive(ptr noundef %0, i8 noundef zeroext 0) #5
  %66 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #5
  %67 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %68 = mul i16 %67, 15
  %69 = call ptr @uiDefBut(ptr noundef %66, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i16 noundef signext %68, i16 noundef signext %67, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  br label %296

70:                                               ; preds = %60
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %71 = load float, ptr %8, align 4, !tbaa !76
  %72 = load float, ptr %7, align 4, !tbaa !76
  %73 = fsub float %71, %72
  %74 = getelementptr inbounds float, ptr %8, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !76
  %76 = getelementptr inbounds float, ptr %7, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !76
  %78 = fsub float %75, %77
  %79 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 3
  %80 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 2
  %81 = load float, ptr %79, align 4, !tbaa !76
  %82 = load float, ptr %80, align 4, !tbaa !76
  %83 = fsub float %81, %82
  %84 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 3, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !76
  %86 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !76
  %88 = fsub float %85, %87
  %89 = fadd float %81, %82
  %90 = fadd float %85, %87
  %91 = fmul float %89, 5.000000e-01
  %92 = fmul float %90, 5.000000e-01
  %93 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 6
  %94 = load i32, ptr %10, align 4, !tbaa !77
  %95 = load i32, ptr %11, align 4, !tbaa !77
  %96 = load float, ptr %39, align 4, !tbaa !76
  store float %96, ptr %93, align 4, !tbaa !76
  %97 = getelementptr inbounds float, ptr %39, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !76
  %99 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 6, i64 1
  store float %98, ptr %99, align 4, !tbaa !76
  %100 = sitofp i32 %94 to float
  %101 = fmul float %96, %100
  store float %101, ptr %93, align 4, !tbaa !76
  %102 = sitofp i32 %95 to float
  %103 = fmul float %98, %102
  store float %103, ptr %99, align 4, !tbaa !76
  %104 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 7
  store float %73, ptr %104, align 4, !tbaa !76
  %105 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 7, i64 1
  store float %78, ptr %105, align 4, !tbaa !76
  %106 = fmul float %73, %100
  store float %106, ptr %104, align 4, !tbaa !76
  %107 = fmul float %78, %102
  store float %107, ptr %105, align 4, !tbaa !76
  %108 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 10
  store float %83, ptr %108, align 4, !tbaa !76
  %109 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 10, i64 1
  store float %88, ptr %109, align 4, !tbaa !76
  %110 = fmul float %83, %100
  store float %110, ptr %108, align 4, !tbaa !76
  %111 = fmul float %88, %102
  store float %111, ptr %109, align 4, !tbaa !76
  %112 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 9
  store float %91, ptr %112, align 4, !tbaa !76
  %113 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 9, i64 1
  store float %92, ptr %113, align 4, !tbaa !76
  %114 = fmul float %91, %100
  store float %114, ptr %112, align 4, !tbaa !76
  %115 = fmul float %92, %102
  store float %115, ptr %113, align 4, !tbaa !76
  %116 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 8
  %117 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %37, i64 0, i32 7
  %118 = load float, ptr %117, align 4, !tbaa !76
  store float %118, ptr %116, align 4, !tbaa !76
  %119 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %37, i64 0, i32 7, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !76
  %121 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %41, i64 0, i32 8, i64 1
  store float %120, ptr %121, align 4, !tbaa !76
  %122 = fmul float %118, %100
  store float %122, ptr %116, align 4, !tbaa !76
  %123 = fmul float %120, %102
  store float %123, ptr %121, align 4, !tbaa !76
  %124 = load i32, ptr %46, align 4, !tbaa !71
  store i32 %124, ptr %48, align 4, !tbaa !72
  %125 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #5
  call void @uiBlockSetHandleFunc(ptr noundef %125, ptr noundef nonnull @marker_block_handler, ptr noundef nonnull %41) #5
  call void @uiBlockSetNFunc(ptr noundef %125, ptr noundef nonnull @marker_update_cb, ptr noundef nonnull %41, ptr noundef null) #5
  %126 = load i32, ptr %48, align 4, !tbaa !72
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, ptr @.str.15, ptr @.str.14
  %130 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %131 = sitofp i16 %130 to double
  %132 = fmul double %131, 5.000000e-01
  %133 = fptosi double %132 to i32
  %134 = fmul double %131, 9.500000e+00
  %135 = fptosi double %134 to i32
  %136 = fmul double %131, 7.250000e+00
  %137 = fptosi double %136 to i16
  %138 = call ptr @uiDefButBitI(ptr noundef %125, i32 noundef 19968, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %133, i32 noundef %135, i16 noundef signext %137, i16 noundef signext %130, ptr noundef nonnull %48, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %129) #5
  %139 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  %140 = load i32, ptr %48, align 4, !tbaa !72
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  call void @uiLayoutSetActive(ptr noundef %139, i8 noundef zeroext %143) #5
  %144 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %139) #5
  call void @uiBlockBeginAlign(ptr noundef %144) #5
  %145 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %146 = sext i16 %145 to i32
  %147 = mul nsw i32 %146, 10
  %148 = mul i16 %145, 15
  %149 = call ptr @uiDefBut(ptr noundef %144, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %147, i16 noundef signext %148, i16 noundef signext %145, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %151 = sext i16 %150 to i32
  %152 = sitofp i16 %150 to double
  %153 = fmul double %152, 5.000000e-01
  %154 = fptosi double %153 to i32
  %155 = mul nsw i32 %151, 9
  %156 = fmul double %152, 7.250000e+00
  %157 = fptosi double %156 to i16
  %158 = load i32, ptr %10, align 4, !tbaa !77
  %159 = mul nsw i32 %158, -10
  %160 = sitofp i32 %159 to float
  %161 = sitofp i32 %158 to double
  %162 = fmul double %161, 1.000000e+01
  %163 = fptrunc double %162 to float
  %164 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %154, i32 noundef %155, i16 noundef signext %157, i16 noundef signext %150, ptr noundef nonnull %93, float noundef %160, float noundef %163, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.20) #5
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %166 = sext i16 %165 to i32
  %167 = sitofp i16 %165 to double
  %168 = fmul double %167, 8.250000e+00
  %169 = fptosi double %168 to i32
  %170 = mul nsw i32 %166, 9
  %171 = fmul double %167, 7.250000e+00
  %172 = fptosi double %171 to i16
  %173 = load i32, ptr %11, align 4, !tbaa !77
  %174 = mul nsw i32 %173, -10
  %175 = sitofp i32 %174 to float
  %176 = sitofp i32 %173 to double
  %177 = fmul double %176, 1.000000e+01
  %178 = fptrunc double %177 to float
  %179 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %169, i32 noundef %170, i16 noundef signext %172, i16 noundef signext %165, ptr noundef nonnull %99, float noundef %175, float noundef %178, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.22) #5
  %180 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %181 = sext i16 %180 to i32
  %182 = shl nsw i32 %181, 3
  %183 = mul i16 %180, 15
  %184 = call ptr @uiDefBut(ptr noundef %144, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %182, i16 noundef signext %183, i16 noundef signext %180, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %185 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %186 = sext i16 %185 to i32
  %187 = sitofp i16 %185 to double
  %188 = fmul double %187, 5.000000e-01
  %189 = fptosi double %188 to i32
  %190 = mul nsw i32 %186, 7
  %191 = fmul double %187, 7.250000e+00
  %192 = fptosi double %191 to i16
  %193 = load i32, ptr %10, align 4, !tbaa !77
  %194 = mul nsw i32 %193, -10
  %195 = sitofp i32 %194 to float
  %196 = sitofp i32 %193 to double
  %197 = fmul double %196, 1.000000e+01
  %198 = fptrunc double %197 to float
  %199 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %189, i32 noundef %190, i16 noundef signext %192, i16 noundef signext %185, ptr noundef nonnull %116, float noundef %195, float noundef %198, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.24) #5
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %201 = sext i16 %200 to i32
  %202 = sitofp i16 %200 to double
  %203 = fmul double %202, 8.250000e+00
  %204 = fptosi double %203 to i32
  %205 = mul nsw i32 %201, 7
  %206 = fmul double %202, 7.250000e+00
  %207 = fptosi double %206 to i16
  %208 = load i32, ptr %11, align 4, !tbaa !77
  %209 = mul nsw i32 %208, -10
  %210 = sitofp i32 %209 to float
  %211 = sitofp i32 %208 to double
  %212 = fmul double %211, 1.000000e+01
  %213 = fptrunc double %212 to float
  %214 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %204, i32 noundef %205, i16 noundef signext %207, i16 noundef signext %200, ptr noundef nonnull %121, float noundef %210, float noundef %213, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.25) #5
  %215 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %216 = sext i16 %215 to i32
  %217 = mul nsw i32 %216, 6
  %218 = mul i16 %215, 15
  %219 = call ptr @uiDefBut(ptr noundef %144, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %217, i16 noundef signext %218, i16 noundef signext %215, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %220 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %221 = sext i16 %220 to i32
  %222 = sitofp i16 %220 to double
  %223 = fmul double %222, 5.000000e-01
  %224 = fptosi double %223 to i32
  %225 = mul nsw i32 %221, 5
  %226 = mul i16 %220, 15
  %227 = load i32, ptr %10, align 4, !tbaa !77
  %228 = sitofp i32 %227 to double
  %229 = fmul double %228, 1.000000e+01
  %230 = fptrunc double %229 to float
  %231 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 5, ptr noundef nonnull @.str.27, i32 noundef %224, i32 noundef %225, i16 noundef signext %226, i16 noundef signext %220, ptr noundef nonnull %104, float noundef 3.000000e+00, float noundef %230, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.28) #5
  %232 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %233 = sext i16 %232 to i32
  %234 = sitofp i16 %232 to double
  %235 = fmul double %234, 5.000000e-01
  %236 = fptosi double %235 to i32
  %237 = shl nsw i32 %233, 2
  %238 = mul i16 %232, 15
  %239 = load i32, ptr %11, align 4, !tbaa !77
  %240 = sitofp i32 %239 to double
  %241 = fmul double %240, 1.000000e+01
  %242 = fptrunc double %241 to float
  %243 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 5, ptr noundef nonnull @.str.29, i32 noundef %236, i32 noundef %237, i16 noundef signext %238, i16 noundef signext %232, ptr noundef nonnull %105, float noundef 3.000000e+00, float noundef %242, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.30) #5
  %244 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %245 = sext i16 %244 to i32
  %246 = mul nsw i32 %245, 3
  %247 = mul i16 %244, 15
  %248 = call ptr @uiDefBut(ptr noundef %144, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %246, i16 noundef signext %247, i16 noundef signext %244, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #5
  %249 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %250 = sext i16 %249 to i32
  %251 = sitofp i16 %249 to double
  %252 = fmul double %251, 5.000000e-01
  %253 = fptosi double %252 to i32
  %254 = shl nsw i32 %250, 1
  %255 = fmul double %251, 7.250000e+00
  %256 = fptosi double %255 to i16
  %257 = load i32, ptr %10, align 4, !tbaa !77
  %258 = sub nsw i32 0, %257
  %259 = sitofp i32 %258 to float
  %260 = sitofp i32 %257 to float
  %261 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 6, ptr noundef nonnull @.str.19, i32 noundef %253, i32 noundef %254, i16 noundef signext %256, i16 noundef signext %249, ptr noundef nonnull %112, float noundef %259, float noundef %260, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.32) #5
  %262 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %263 = sext i16 %262 to i32
  %264 = sitofp i16 %262 to double
  %265 = fmul double %264, 8.250000e+00
  %266 = fptosi double %265 to i32
  %267 = shl nsw i32 %263, 1
  %268 = fmul double %264, 7.250000e+00
  %269 = fptosi double %268 to i16
  %270 = load i32, ptr %11, align 4, !tbaa !77
  %271 = sub nsw i32 0, %270
  %272 = sitofp i32 %271 to float
  %273 = sitofp i32 %270 to float
  %274 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 6, ptr noundef nonnull @.str.21, i32 noundef %266, i32 noundef %267, i16 noundef signext %269, i16 noundef signext %262, ptr noundef nonnull %113, float noundef %272, float noundef %273, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.33) #5
  %275 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %276 = sext i16 %275 to i32
  %277 = sitofp i16 %275 to double
  %278 = fmul double %277, 5.000000e-01
  %279 = fptosi double %278 to i32
  %280 = mul i16 %275, 15
  %281 = load i32, ptr %10, align 4, !tbaa !77
  %282 = sitofp i32 %281 to double
  %283 = fmul double %282, 1.000000e+01
  %284 = fptrunc double %283 to float
  %285 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 7, ptr noundef nonnull @.str.27, i32 noundef %279, i32 noundef %276, i16 noundef signext %280, i16 noundef signext %275, ptr noundef nonnull %108, float noundef 3.000000e+00, float noundef %284, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.34) #5
  %286 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !60
  %287 = sitofp i16 %286 to double
  %288 = fmul double %287, 5.000000e-01
  %289 = fptosi double %288 to i32
  %290 = mul i16 %286, 15
  %291 = load i32, ptr %11, align 4, !tbaa !77
  %292 = sitofp i32 %291 to double
  %293 = fmul double %292, 1.000000e+01
  %294 = fptrunc double %293 to float
  %295 = call ptr @uiDefButF(ptr noundef %144, i32 noundef 2560, i32 noundef 7, ptr noundef nonnull @.str.29, i32 noundef %289, i32 noundef 0, i16 noundef signext %290, i16 noundef signext %286, ptr noundef nonnull %109, float noundef 3.000000e+00, float noundef %294, float noundef 1.000000e+02, float noundef 2.000000e+00, ptr noundef nonnull @.str.35) #5
  call void @uiBlockEndAlign(ptr noundef %144) #5
  br label %296

296:                                              ; preds = %70, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br label %297

297:                                              ; preds = %296, %52, %6, %26, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret void
}

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @marker_update_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !65
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef %8, i32 noundef %10) #5
  %12 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !71
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #5
  br label %15

15:                                               ; preds = %3, %6
  ret void
}

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @marker_block_handler(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %8 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  call void @BKE_movieclip_get_size(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %12 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = call ptr @BKE_tracking_marker_ensure(ptr noundef %13, i32 noundef %15) #5
  switch i32 %2, label %169 [
    i32 3, label %17
    i32 5, label %30
    i32 6, label %66
    i32 7, label %95
    i32 8, label %126
    i32 4, label %130
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 6
  %19 = load float, ptr %18, align 4, !tbaa !76
  %20 = load i32, ptr %4, align 4, !tbaa !77
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %19, %21
  store float %22, ptr %16, align 4, !tbaa !76
  %23 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 6, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !76
  %25 = load i32, ptr %5, align 4, !tbaa !77
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %24, %26
  %28 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !76
  %29 = load ptr, ptr %8, align 8, !tbaa !67
  call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 0) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #5
  br label %167

30:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %31 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %33 = load float, ptr %7, align 4, !tbaa !76
  %34 = load float, ptr %6, align 4, !tbaa !76
  %35 = fsub float %33, %34
  %36 = getelementptr inbounds float, ptr %7, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !76
  %38 = getelementptr inbounds float, ptr %6, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !76
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 4, !tbaa !76
  %43 = load i32, ptr %4, align 4, !tbaa !77
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %42, %44
  %46 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 7, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !76
  %48 = load i32, ptr %5, align 4, !tbaa !77
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %47, %49
  %51 = fdiv float %45, %35
  %52 = fdiv float %50, %40
  %53 = load ptr, ptr %31, align 8, !tbaa !70
  br label %54

54:                                               ; preds = %30, %54
  %55 = phi i64 [ 0, %30 ], [ %62, %54 ]
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %53, i64 0, i32 1, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !76
  %58 = fmul float %51, %57
  store float %58, ptr %56, align 4, !tbaa !76
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %53, i64 0, i32 1, i64 %55, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !76
  %61 = fmul float %52, %60
  store float %61, ptr %59, align 4, !tbaa !76
  %62 = add nuw nsw i64 %55, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %54, !llvm.loop !78

64:                                               ; preds = %54
  %65 = load ptr, ptr %31, align 8, !tbaa !70
  call void @BKE_tracking_marker_clamp(ptr noundef %65, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %167

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 3
  %70 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 2
  %71 = load float, ptr %69, align 4, !tbaa !76
  %72 = load float, ptr %70, align 4, !tbaa !76
  %73 = fsub float %71, %72
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 3, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !76
  %76 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 2, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !76
  %78 = fsub float %75, %77
  %79 = fmul float %73, 5.000000e-01
  %80 = fmul float %78, 5.000000e-01
  %81 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 9
  %82 = load float, ptr %81, align 4, !tbaa !76
  %83 = load i32, ptr %4, align 4, !tbaa !77
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %82, %84
  %86 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 9, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !76
  %88 = load i32, ptr %5, align 4, !tbaa !77
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %87, %89
  %91 = fsub float %85, %79
  store float %91, ptr %70, align 4, !tbaa !76
  %92 = fsub float %90, %80
  store float %92, ptr %76, align 4, !tbaa !76
  %93 = fadd float %79, %85
  store float %93, ptr %69, align 4, !tbaa !76
  %94 = fadd float %80, %90
  store float %94, ptr %74, align 4, !tbaa !76
  call void @BKE_tracking_marker_clamp(ptr noundef %68, i32 noundef 4) #5
  br label %167

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  %98 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %97, i64 0, i32 3
  %99 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %97, i64 0, i32 2
  %100 = load float, ptr %98, align 4, !tbaa !76
  %101 = load float, ptr %99, align 4, !tbaa !76
  %102 = fsub float %100, %101
  %103 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %97, i64 0, i32 3, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !76
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %97, i64 0, i32 2, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !76
  %107 = fsub float %104, %106
  %108 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 10
  %109 = load float, ptr %108, align 4, !tbaa !76
  %110 = load i32, ptr %4, align 4, !tbaa !77
  %111 = sitofp i32 %110 to float
  %112 = fdiv float %109, %111
  %113 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 10, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !76
  %115 = load i32, ptr %5, align 4, !tbaa !77
  %116 = sitofp i32 %115 to float
  %117 = fdiv float %114, %116
  %118 = fsub float %112, %102
  %119 = fsub float %117, %107
  %120 = fmul float %118, 5.000000e-01
  %121 = fmul float %119, 5.000000e-01
  %122 = fsub float %101, %120
  store float %122, ptr %99, align 4, !tbaa !76
  %123 = fsub float %106, %121
  store float %123, ptr %105, align 4, !tbaa !76
  %124 = fadd float %100, %120
  store float %124, ptr %98, align 4, !tbaa !76
  %125 = fadd float %104, %121
  store float %125, ptr %103, align 4, !tbaa !76
  call void @BKE_tracking_marker_clamp(ptr noundef %97, i32 noundef 3) #5
  br label %167

126:                                              ; preds = %3
  %127 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 11
  %128 = load i32, ptr %127, align 4, !tbaa !72
  %129 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 0, i32 5
  store i32 %128, ptr %129, align 4, !tbaa !71
  br label %167

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 8
  %132 = load float, ptr %131, align 4, !tbaa !76
  %133 = load i32, ptr %4, align 4, !tbaa !77
  %134 = sitofp i32 %133 to float
  %135 = fdiv float %132, %134
  %136 = getelementptr inbounds %struct.MarkerUpdateCb, ptr %1, i64 0, i32 8, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !76
  %138 = load i32, ptr %5, align 4, !tbaa !77
  %139 = sitofp i32 %138 to float
  %140 = fdiv float %137, %139
  %141 = load ptr, ptr %12, align 8, !tbaa !69
  %142 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 7
  %143 = load float, ptr %142, align 4, !tbaa !76
  %144 = fsub float %135, %143
  %145 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 7, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !76
  %147 = fsub float %140, %146
  store float %135, ptr %142, align 4, !tbaa !76
  store float %140, ptr %145, align 4, !tbaa !76
  %148 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 8
  %149 = load i32, ptr %148, align 8, !tbaa !81
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %130
  %152 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !82
  %154 = zext nneg i32 %149 to i64
  br label %155

155:                                              ; preds = %151, %155
  %156 = phi i64 [ 0, %151 ], [ %163, %155 ]
  %157 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %153, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !76
  %159 = fsub float %158, %144
  store float %159, ptr %157, align 4, !tbaa !76
  %160 = getelementptr inbounds float, ptr %157, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !76
  %162 = fsub float %161, %147
  store float %162, ptr %160, align 4, !tbaa !76
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %163, %154
  br i1 %164, label %165, label %155, !llvm.loop !83

165:                                              ; preds = %155, %130
  %166 = load ptr, ptr %8, align 8, !tbaa !67
  call void @DAG_id_tag_update(ptr noundef %166, i16 noundef signext 0) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #5
  br label %167

167:                                              ; preds = %165, %126, %95, %66, %64, %17
  %168 = load ptr, ptr %8, align 8, !tbaa !67
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %168) #5
  br label %169

169:                                              ; preds = %3, %167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret void
}

declare void @uiBlockSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateMovieclipInformation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %103, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = tail call ptr @RNA_struct_identifier(ptr noundef %18) #5
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.uiTemplateMovieclipInformation, ptr noundef %19, ptr noundef %2)
  br label %103

21:                                               ; preds = %13
  %22 = tail call i32 @RNA_property_type(ptr noundef nonnull %14) #5
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = tail call ptr @RNA_struct_identifier(ptr noundef %26) #5
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.uiTemplateMovieclipInformation, ptr noundef %27, ptr noundef %2)
  br label %103

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %1, ptr noundef nonnull %14) #5
  %30 = getelementptr inbounds i8, ptr %8, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #5
  %35 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !84
  %37 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %31, ptr noundef %33, i32 noundef %36, i32 noundef 1) #5
  call void @BKE_movieclip_get_size(ptr noundef %31, ptr noundef %33, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %38 = load i32, ptr %6, align 4, !tbaa !77
  %39 = load i32, ptr %7, align 4, !tbaa !77
  %40 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.36, i32 noundef %38, i32 noundef %39) #5
  %41 = icmp eq ptr %37, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !99
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %5, i64 %40
  %52 = sub i64 1024, %40
  %53 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %51, i64 noundef %52, ptr noundef nonnull @.str.37, i32 noundef %48) #5
  br label %78

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 4
  %56 = load i8, ptr %55, align 8, !tbaa !100
  %57 = icmp eq i8 %56, 32
  %58 = getelementptr inbounds i8, ptr %5, i64 %40
  %59 = sub i64 1024, %40
  br i1 %57, label %60, label %62

60:                                               ; preds = %54
  %61 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %58, ptr noundef nonnull @.str.38, i64 noundef %59) #5
  br label %78

62:                                               ; preds = %54
  %63 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %58, ptr noundef nonnull @.str.39, i64 noundef %59) #5
  br label %78

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 4
  %66 = load i8, ptr %65, align 8, !tbaa !100
  %67 = icmp eq i8 %66, 32
  %68 = getelementptr inbounds i8, ptr %5, i64 %40
  %69 = sub i64 1024, %40
  br i1 %67, label %70, label %72

70:                                               ; preds = %64
  %71 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %68, ptr noundef nonnull @.str.40, i64 noundef %69) #5
  br label %78

72:                                               ; preds = %64
  %73 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %68, ptr noundef nonnull @.str.41, i64 noundef %69) #5
  br label %78

74:                                               ; preds = %29
  %75 = getelementptr inbounds i8, ptr %5, i64 %40
  %76 = sub i64 1024, %40
  %77 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %75, ptr noundef nonnull @.str.42, i64 noundef %76) #5
  br label %78

78:                                               ; preds = %60, %62, %50, %72, %70, %74
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #5
  %79 = load i32, ptr %33, align 4, !tbaa !64
  %80 = sitofp i32 %79 to float
  %81 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %31, float noundef %80) #5
  %82 = fptosi float %81 to i32
  %83 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 15
  %84 = load i32, ptr %83, align 4, !tbaa !101
  %85 = icmp slt i32 %84, %82
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.43, i32 noundef %82, i32 noundef %84) #5
  br label %90

88:                                               ; preds = %78
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.44, i32 noundef %84) #5
  br label %90

90:                                               ; preds = %88, %86
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #5
  %91 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !102
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #5
  %95 = load i32, ptr %83, align 4, !tbaa !101
  %96 = icmp slt i32 %95, %82
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  call void @BKE_movieclip_filename_for_frame(ptr noundef %31, ptr noundef nonnull %33, ptr noundef nonnull %9) #5
  %98 = call ptr @BLI_last_slash(ptr noundef nonnull %9) #5
  br label %99

99:                                               ; preds = %94, %97
  %100 = phi ptr [ %98, %97 ], [ @.str.45, %94 ]
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.46, ptr noundef %100) #5
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #5
  br label %102

102:                                              ; preds = %99, %90
  call void @IMB_freeImBuf(ptr noundef %37) #5
  br label %103

103:                                              ; preds = %4, %102, %24, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #5
  ret void
}

declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 360}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 368}
!43 = !{!39, !40, i64 344}
!44 = !{!39, !35, i64 352}
!45 = !{!46, !50, i64 214}
!46 = !{!"SpaceClip", !35, i64 0, !35, i64 8, !47, i64 16, !40, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !49, i64 56, !35, i64 64, !51, i64 72, !40, i64 208, !50, i64 212, !50, i64 214, !40, i64 216, !36, i64 220, !48, i64 228, !48, i64 232, !40, i64 236, !36, i64 240, !36, i64 304, !40, i64 368, !50, i64 372, !50, i64 374, !40, i64 376, !40, i64 380, !36, i64 384, !53, i64 392}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!"float", !36, i64 0}
!49 = !{!"MovieClipUser", !40, i64 0, !50, i64 4, !50, i64 6}
!50 = !{!"short", !36, i64 0}
!51 = !{!"MovieClipScopes", !50, i64 0, !50, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !52, i64 16, !35, i64 80, !35, i64 88, !36, i64 96, !50, i64 104, !50, i64 106, !40, i64 108, !35, i64 112, !35, i64 120, !36, i64 128}
!52 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60}
!53 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!54 = !{!55, !35, i64 16}
!55 = !{!"PointerRNA", !56, i64 0, !35, i64 8, !35, i64 16}
!56 = !{!"", !35, i64 0}
!57 = !{!55, !35, i64 8}
!58 = !{i64 0, i64 8, !34}
!59 = !{!51, !40, i64 4}
!60 = !{!61, !50, i64 8948}
!61 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !50, i64 8472, !50, i64 8474, !50, i64 8476, !50, i64 8478, !50, i64 8480, !50, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !50, i64 8496, !50, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !50, i64 8528, !50, i64 8530, !50, i64 8532, !50, i64 8534, !47, i64 8536, !47, i64 8552, !47, i64 8568, !47, i64 8584, !47, i64 8600, !47, i64 8616, !47, i64 8632, !36, i64 8648, !50, i64 8712, !50, i64 8714, !50, i64 8716, !50, i64 8718, !50, i64 8720, !50, i64 8722, !50, i64 8724, !50, i64 8726, !36, i64 8728, !50, i64 8896, !50, i64 8898, !50, i64 8900, !50, i64 8902, !50, i64 8904, !50, i64 8906, !50, i64 8908, !50, i64 8910, !40, i64 8912, !40, i64 8916, !50, i64 8920, !50, i64 8922, !50, i64 8924, !50, i64 8926, !50, i64 8928, !50, i64 8930, !50, i64 8932, !50, i64 8934, !50, i64 8936, !50, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !50, i64 8944, !50, i64 8946, !50, i64 8948, !50, i64 8950, !50, i64 8952, !50, i64 8954, !48, i64 8956, !48, i64 8960, !40, i64 8964, !50, i64 8968, !50, i64 8970, !48, i64 8972, !50, i64 8976, !50, i64 8978, !50, i64 8980, !50, i64 8982, !62, i64 8984, !36, i64 9760, !36, i64 9772, !50, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !48, i64 10904, !48, i64 10908, !40, i64 10912, !50, i64 10916, !50, i64 10918, !50, i64 10920, !50, i64 10922, !50, i64 10924, !50, i64 10926, !63, i64 10928}
!62 = !{!"ColorBand", !50, i64 0, !50, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!63 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !50, i64 24, !36, i64 26}
!64 = !{!49, !40, i64 0}
!65 = !{!66, !40, i64 0}
!66 = !{!"", !40, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !36, i64 52, !36, i64 60, !36, i64 68, !36, i64 76, !40, i64 84}
!67 = !{!66, !35, i64 8}
!68 = !{!66, !35, i64 16}
!69 = !{!66, !35, i64 24}
!70 = !{!66, !35, i64 32}
!71 = !{!52, !40, i64 60}
!72 = !{!66, !40, i64 84}
!73 = !{!66, !40, i64 40}
!74 = !{!75, !40, i64 152}
!75 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !40, i64 124, !35, i64 128, !36, i64 136, !48, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !36, i64 164, !50, i64 176, !50, i64 178, !50, i64 180, !50, i64 182, !40, i64 184, !48, i64 188, !35, i64 192, !48, i64 200, !48, i64 204}
!76 = !{!48, !48, i64 0}
!77 = !{!40, !40, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!75, !40, i64 120}
!82 = !{!75, !35, i64 128}
!83 = distinct !{!83, !79, !80}
!84 = !{!85, !40, i64 2312}
!85 = !{!"MovieClip", !86, i64 0, !35, i64 120, !36, i64 128, !40, i64 1152, !40, i64 1156, !36, i64 1160, !48, i64 1168, !48, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !87, i64 1200, !35, i64 1528, !93, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !94, i64 2328}
!86 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!87 = !{!"MovieTracking", !88, i64 0, !89, i64 72, !47, i64 128, !47, i64 144, !90, i64 160, !91, i64 184, !35, i64 232, !35, i64 240, !47, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !92, i64 280}
!88 = !{!"MovieTrackingSettings", !40, i64 0, !50, i64 4, !50, i64 6, !48, i64 8, !50, i64 12, !50, i64 14, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !48, i64 24, !50, i64 28, !50, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !50, i64 44, !50, i64 46, !48, i64 48, !40, i64 52, !40, i64 56, !48, i64 60, !48, i64 64, !40, i64 68}
!89 = !{!"MovieTrackingCamera", !35, i64 0, !50, i64 8, !50, i64 10, !48, i64 12, !48, i64 16, !48, i64 20, !50, i64 24, !50, i64 26, !36, i64 28, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52}
!90 = !{!"MovieTrackingReconstruction", !40, i64 0, !48, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!91 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !48, i64 12, !35, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !40, i64 36, !40, i64 40, !48, i64 44}
!92 = !{!"MovieTrackingDopesheet", !40, i64 0, !50, i64 4, !50, i64 6, !47, i64 8, !47, i64 24, !40, i64 40, !40, i64 44}
!93 = !{!"MovieClipProxy", !36, i64 0, !50, i64 768, !50, i64 770, !50, i64 772, !50, i64 774}
!94 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!95 = !{!96, !35, i64 48}
!96 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !97, i64 2436, !98, i64 2456}
!97 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!98 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!99 = !{!96, !40, i64 28}
!100 = !{!96, !36, i64 24}
!101 = !{!85, !40, i64 2316}
!102 = !{!85, !40, i64 1152}
