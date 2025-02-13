; ModuleID = 'blender/source/blender/editors/screen/screendump.c'
source_filename = "blender/source/blender/editors/screen/screendump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ScreenshotData = type { ptr, i32, i32, %struct.rcti, %struct.ImageFormatData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ScreenshotJob = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ReportList }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.bMovieHandle = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Save Screenshot\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_screenshot\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Capture a picture of the active area or whole Blender window\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Full Screen\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Capture the whole window (otherwise only capture the active area)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Make Screencast\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_screencast\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Capture a video of the active area or whole Blender window\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"//screen\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"screenshot\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"dumprect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_ImageFormatSettings = external global %struct.StructRNA, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Screencast\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"screenshot job\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"Appended frame: %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Appended frame %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Write error: cannot save %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Write error: cannot save %s\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Saved file: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Saved file: %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Screencast job stopped\00", align 1
@screencast_cursor_toggle.cursor = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [23 x i8] c"screencast job stopped\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SCREEN_OT_screenshot(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screenshot_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @screenshot_check, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screenshot_exec, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @screenshot_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @screenshot_draw, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screenshot_poll, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %10, align 8, !tbaa !50
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2064, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screenshot_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !52 {
  %4 = tail call fastcc i32 @screenshot_data_create(ptr noundef %0, ptr noundef %1) #10, !range !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.9) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @screenshot_exec(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %20

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8, !tbaa !54
  %15 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !56
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @G, align 8
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = select i1 %16, ptr @.str.10, ptr %18
  tail call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.9, ptr noundef nonnull %19) #9
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %20

20:                                               ; preds = %3, %13, %11
  %21 = phi i32 [ 4, %11 ], [ 1, %13 ], [ 2, %3 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @screenshot_check(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.ScreenshotData, ptr %4, i64 0, i32 4
  %6 = tail call zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef %1, ptr noundef nonnull %5) #9
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screenshot_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !61 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @screenshot_data_create(ptr noundef %0, ptr noundef nonnull %1) #10, !range !53
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #11
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  call void @RNA_string_get(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #9
  %18 = load ptr, ptr @G, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 2
  %20 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %19) #9
  %21 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = call ptr @IMB_allocImBuf(i32 noundef %22, i32 noundef %24, i8 noundef zeroext 24, i32 noundef 0) #9
  %26 = load ptr, ptr %12, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 8
  store ptr %26, ptr %27, align 8, !tbaa !72
  %28 = load ptr, ptr %16, align 8, !tbaa !54
  %29 = call i32 @RNA_boolean_get(ptr noundef %28, ptr noundef nonnull @.str.3) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 3
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 3, i32 2
  %35 = load i64, ptr %34, align 8
  call fastcc void @screenshot_crop(ptr noundef nonnull %25, i64 %33, i64 %35) #10
  br label %36

36:                                               ; preds = %31, %15
  %37 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 4
  %38 = getelementptr inbounds %struct.ScreenshotData, ptr %12, i64 0, i32 4, i32 2
  %39 = load i8, ptr %38, align 2, !tbaa !75
  %40 = icmp eq i8 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @IMB_color_to_bw(ptr noundef nonnull %25) #9
  br label %42

42:                                               ; preds = %41, %36
  %43 = call i32 @BKE_imbuf_write(ptr noundef nonnull %25, ptr noundef nonnull %3, ptr noundef nonnull %37) #9
  call void @IMB_freeImBuf(ptr noundef nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #11
  br label %44

44:                                               ; preds = %11, %42, %7
  call fastcc void @screenshot_data_free(ptr noundef nonnull %1) #10
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !76 {
  tail call fastcc void @screenshot_data_free(ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !77 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %8 = getelementptr inbounds %struct.ScreenshotData, ptr %7, i64 0, i32 4
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ImageFormatSettings, ptr noundef nonnull %8, ptr noundef nonnull %3) #9
  call void @uiTemplateImageSettings(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %3) #9
  %15 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @screenshot_draw_check_prop, i8 noundef zeroext 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @screenshot_poll(ptr noundef %0) #0 !PGOFuncName !81 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !82
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @WM_operator_winactive(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SCREEN_OT_screencast(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screencast_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screenshot_poll, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = tail call ptr @RNA_def_property(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef 1) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screencast_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #9
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %3, ptr noundef %5, i32 noundef 4) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @WM_jobs_stop(ptr noundef %3, ptr noundef %5, ptr noundef nonnull @screenshot_startjob) #9
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call ptr @WM_jobs_get(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 4) #9
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !84
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.14) #9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.3) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 5
  store i32 0, ptr %19, align 4, !tbaa !88
  %20 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #9
  %21 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 6
  store i32 %20, ptr %21, align 8, !tbaa !89
  %22 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #9
  br label %38

23:                                               ; preds = %9
  %24 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %25 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 4
  store i32 %26, ptr %27, align 8, !tbaa !85
  %28 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 5
  store i32 %29, ptr %30, align 4, !tbaa !88
  %31 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !93
  %33 = sub nsw i32 %32, %26
  %34 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 6
  store i32 %33, ptr %34, align 8, !tbaa !89
  %35 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !94
  %37 = sub nsw i32 %36, %29
  br label %38

38:                                               ; preds = %23, %17
  %39 = phi i32 [ %37, %23 ], [ %22, %17 ]
  %40 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 7
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  store ptr %41, ptr %12, align 8, !tbaa !95
  %42 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %43 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 2
  store ptr %3, ptr %44, align 8, !tbaa !97
  %45 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 10
  tail call void @BKE_reports_init(ptr noundef nonnull %45, i32 noundef 1) #9
  tail call void @WM_jobs_customdata_set(ptr noundef %10, ptr noundef nonnull %12, ptr noundef nonnull @screenshot_freejob) #9
  tail call void @WM_jobs_timer(ptr noundef %10, double noundef 1.000000e-01, i32 noundef 0, i32 noundef 50528256) #9
  tail call void @WM_jobs_callbacks(ptr noundef %10, ptr noundef nonnull @screenshot_startjob, ptr noundef null, ptr noundef nonnull @screenshot_updatejob, ptr noundef nonnull @screenshot_endjob) #9
  %46 = load ptr, ptr %44, align 8, !tbaa !97
  tail call void @WM_jobs_start(ptr noundef %46, ptr noundef %10) #9
  %47 = load ptr, ptr %44, align 8, !tbaa !97
  tail call fastcc void @screencast_cursor_toggle(ptr noundef %47, i16 noundef signext 1) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50528256, ptr noundef %5) #9
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @screenshot_data_create(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  tail call void @WM_redraw_windows(ptr noundef %0) #9
  %5 = call fastcc ptr @screenshot(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !84
  %9 = tail call ptr %8(i64 noundef 280, ptr noundef nonnull @.str.11) #9
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %11 = load i32, ptr %3, align 4, !tbaa !99
  %12 = getelementptr inbounds %struct.ScreenshotData, ptr %9, i64 0, i32 1
  store i32 %11, ptr %12, align 8, !tbaa !70
  %13 = load i32, ptr %4, align 4, !tbaa !99
  %14 = getelementptr inbounds %struct.ScreenshotData, ptr %9, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !71
  store ptr %5, ptr %9, align 8, !tbaa !62
  %15 = icmp eq ptr %10, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ScreenshotData, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !100
  br label %19

19:                                               ; preds = %16, %7
  %20 = getelementptr inbounds %struct.ScreenshotData, ptr %9, i64 0, i32 4
  tail call void @BKE_imformat_defaults(ptr noundef nonnull %20) #9
  br label %21

21:                                               ; preds = %2, %19
  %22 = phi ptr [ %9, %19 ], [ null, %2 ]
  %23 = phi i32 [ 1, %19 ], [ 0, %2 ]
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %22, ptr %24, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %23
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @WM_redraw_windows(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @screenshot(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !101 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #9
  store i32 %5, ptr %1, align 4, !tbaa !99
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #9
  store i32 %6, ptr %2, align 4, !tbaa !99
  %7 = load i32, ptr %1, align 4, !tbaa !99
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !84
  %13 = sext i32 %7 to i64
  %14 = sext i32 %6 to i64
  %15 = shl nsw i64 %14, 2
  %16 = mul i64 %15, %13
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.12) #9
  tail call void @glReadBuffer(i32 noundef 1028) #9
  %18 = load i32, ptr %1, align 4, !tbaa !99
  %19 = load i32, ptr %2, align 4, !tbaa !99
  tail call fastcc void @screenshot_read_pixels(i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef %19, ptr noundef %17) #10
  tail call void @glReadBuffer(i32 noundef 1029) #9
  br label %20

20:                                               ; preds = %11, %3
  %21 = phi ptr [ %17, %11 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BKE_imformat_defaults(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glReadBuffer(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screenshot_read_pixels(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !102 {
  tail call void @glReadPixels(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 6408, i32 noundef 5121, ptr noundef %4) #9
  tail call void @glFinish() #9
  %6 = mul nsw i32 %3, %2
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %4, i64 3
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %8 ]
  %12 = phi ptr [ %14, %10 ], [ %9, %8 ]
  store i8 -1, ptr %12, align 1, !tbaa !103
  %13 = add nuw nsw i32 %11, 1
  %14 = getelementptr inbounds i8, ptr %12, i64 4
  %15 = icmp eq i32 %13, %6
  br i1 %15, label %16, label %10, !llvm.loop !104

16:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glFinish() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @screenshot_crop(ptr nocapture noundef %0, i64 %1, i64 %2) unnamed_addr #4 !PGOFuncName !106 {
  %4 = alloca %struct.rcti, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  store i64 %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #10
  %8 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #10
  %9 = icmp sgt i32 %7, 0
  %10 = icmp sgt i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = trunc i64 %2 to i32
  %14 = load i32, ptr %6, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = mul nsw i32 %14, %13
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = shl i64 %1, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = zext nneg i32 %7 to i64
  %24 = shl nuw nsw i64 %23, 2
  br label %25

25:                                               ; preds = %12, %25
  %26 = phi i32 [ 0, %12 ], [ %29, %25 ]
  %27 = phi ptr [ %16, %12 ], [ %30, %25 ]
  %28 = phi ptr [ %22, %12 ], [ %33, %25 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %28, i64 %24, i1 false)
  %29 = add nuw nsw i32 %26, 1
  %30 = getelementptr inbounds i32, ptr %27, i64 %23
  %31 = load i32, ptr %6, align 8, !tbaa !107
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %28, i64 %32
  %34 = icmp eq i32 %29, %8
  br i1 %34, label %35, label %25, !llvm.loop !108

35:                                               ; preds = %25
  store i32 %7, ptr %6, align 8, !tbaa !107
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  store i32 %8, ptr %36, align 4, !tbaa !109
  br label %37

37:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: optsize
declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screenshot_data_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %9(ptr noundef nonnull %6) #9
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %11(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !112
  %4 = load i32, ptr %0, align 4, !tbaa !113
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !116
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @screenshot_draw_check_prop(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !117 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #9
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.9) #12
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @WM_operator_winactive(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !118 {
  %5 = alloca %struct.RenderData, align 8
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3984, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %5, ptr noundef nonnull align 8 dereferenceable(3984) %9, i64 3984, i1 false), !tbaa.struct !119
  %10 = load i8, ptr %9, align 8, !tbaa !122
  %11 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %10) #9
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 55
  store i16 %12, ptr %13, align 4, !tbaa !143
  %14 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 65
  store float 1.000000e+00, ptr %14, align 4, !tbaa !144
  %15 = load i8, ptr %5, align 8, !tbaa !145
  %16 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %15) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %11, align 8, !tbaa !146
  %20 = load ptr, ptr %7, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !148
  %25 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %26 = call i32 %19(ptr noundef %20, ptr noundef nonnull %5, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %25) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %102

30:                                               ; preds = %4, %18
  %31 = phi ptr [ %11, %18 ], [ null, %4 ]
  %32 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 8
  store ptr %1, ptr %32, align 8, !tbaa !149
  %33 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 9
  store ptr %2, ptr %33, align 8, !tbaa !150
  store i16 1, ptr %2, align 2, !tbaa !120
  %34 = load i16, ptr %1, align 2, !tbaa !120
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %95

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %38 = icmp eq ptr %31, null
  %39 = getelementptr inbounds %struct.bMovieHandle, ptr %31, i64 0, i32 1
  %40 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 6
  %41 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 5
  %42 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %45 = getelementptr inbounds %struct.ImageFormatData, ptr %5, i64 0, i32 2
  %46 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 84
  %47 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 46
  br label %48

48:                                               ; preds = %36, %92
  %49 = load ptr, ptr %37, align 8, !tbaa !151
  %50 = icmp eq ptr %49, null
  br i1 %50, label %89, label %51

51:                                               ; preds = %48
  br i1 %38, label %64, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %39, align 8, !tbaa !152
  %54 = load i32, ptr %40, align 4, !tbaa !153
  %55 = load i32, ptr %41, align 8, !tbaa !154
  %56 = load i32, ptr %42, align 8, !tbaa !89
  %57 = load i32, ptr %43, align 4, !tbaa !148
  %58 = call i32 %53(ptr noundef nonnull %5, i32 noundef %54, i32 noundef %55, ptr noundef nonnull %49, i32 noundef %56, i32 noundef %57, ptr noundef nonnull %44) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %41, align 8, !tbaa !154
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %44, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %61) #9
  %62 = load i32, ptr %41, align 8, !tbaa !154
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %62) #10
  br label %84

64:                                               ; preds = %51
  %65 = load i32, ptr %42, align 8, !tbaa !89
  %66 = load i32, ptr %43, align 4, !tbaa !148
  %67 = load i8, ptr %45, align 2, !tbaa !155
  %68 = call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %66, i8 noundef zeroext %67, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #11
  %69 = load ptr, ptr %0, align 8, !tbaa !95
  %70 = getelementptr inbounds %struct.Main, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %41, align 8, !tbaa !154
  %72 = load i32, ptr %47, align 4, !tbaa !156
  %73 = trunc i32 %72 to i8
  %74 = lshr i8 %73, 4
  %75 = and i8 %74, 1
  call void @BKE_makepicstring(ptr noundef nonnull %6, ptr noundef nonnull %46, ptr noundef nonnull %70, i32 noundef %71, ptr noundef nonnull %5, i8 noundef zeroext %75, i8 noundef zeroext 1) #9
  %76 = load ptr, ptr %37, align 8, !tbaa !151
  %77 = getelementptr inbounds %struct.ImBuf, ptr %68, i64 0, i32 8
  store ptr %76, ptr %77, align 8, !tbaa !72
  %78 = call i32 @BKE_imbuf_write(ptr noundef %68, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %6) #10
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %44, i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull %6) #9
  call void @IMB_freeImBuf(ptr noundef nonnull %68) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #11
  br label %84

82:                                               ; preds = %64
  %83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %6) #10
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %44, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #11
  br label %100

84:                                               ; preds = %80, %60
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  %86 = load ptr, ptr %37, align 8, !tbaa !151
  call void %85(ptr noundef %86) #9
  store ptr null, ptr %37, align 8, !tbaa !151
  store i16 1, ptr %2, align 2, !tbaa !120
  %87 = load i32, ptr %41, align 8, !tbaa !154
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %41, align 8, !tbaa !154
  br label %92

89:                                               ; preds = %48
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 80), align 2, !tbaa !157
  %91 = sext i16 %90 to i32
  call void @PIL_sleep_ms(i32 noundef %91) #9
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i16, ptr %1, align 2, !tbaa !120
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %48, label %95, !llvm.loop !158

95:                                               ; preds = %92, %30
  %96 = icmp eq ptr %31, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %52, %95
  %98 = getelementptr inbounds %struct.bMovieHandle, ptr %31, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !159
  call void %99() #9
  br label %100

100:                                              ; preds = %82, %97, %95
  %101 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  call void @BKE_report(ptr noundef nonnull %101, i32 noundef 2, ptr noundef nonnull @.str.22) #9
  br label %102

102:                                              ; preds = %100, %28
  call void @llvm.lifetime.end.p0(i64 3984, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_freejob(ptr noundef %0) #0 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %6(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %8(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_updatejob(ptr nocapture noundef %0) #0 !PGOFuncName !161 {
  %2 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !89
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !148
  %13 = sext i32 %12 to i64
  %14 = mul i64 %10, %13
  %15 = tail call ptr %6(i64 noundef %14, ptr noundef nonnull @.str.12) #9
  %16 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !88
  %20 = load i32, ptr %7, align 8, !tbaa !89
  %21 = load i32, ptr %11, align 4, !tbaa !148
  tail call fastcc void @screenshot_read_pixels(i32 noundef %17, i32 noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %15) #10
  store ptr %15, ptr %2, align 8, !tbaa !151
  br label %22

22:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screenshot_endjob(ptr nocapture noundef readonly %0) #0 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  tail call fastcc void @screencast_cursor_toggle(ptr noundef %3, i16 noundef signext 0) #10
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screencast_cursor_toggle(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = load ptr, ptr @screencast_cursor_toggle.cursor, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i16 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @WM_paint_cursor_end(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %11

8:                                                ; preds = %2
  br i1 %5, label %9, label %13

9:                                                ; preds = %8
  %10 = tail call ptr @WM_paint_cursor_activate(ptr noundef %0, ptr noundef null, ptr noundef nonnull @screencast_draw_cursor, ptr noundef null) #9
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi ptr [ %10, %9 ], [ null, %7 ]
  store ptr %12, ptr @screencast_cursor_toggle.cursor, align 8, !tbaa !84
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screencast_draw_cursor(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !164 {
  tail call void @glPushMatrix() #9
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %5, float noundef %6, float noundef 0.000000e+00) #9
  tail call void @glEnable(i32 noundef 2848) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 32) #9
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 2.000000e+01, i32 noundef 40) #9
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #9
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 2.000000e+01, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glDisable(i32 noundef 2848) #9
  tail call void @glPopMatrix() #9
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 80}
!49 = !{!35, !36, i64 72}
!50 = !{!35, !41, i64 184}
!51 = !{!35, !36, i64 88}
!52 = !{!"screendump.c:screenshot_invoke"}
!53 = !{i32 0, i32 2}
!54 = !{!55, !36, i64 112}
!55 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!56 = !{!57, !37, i64 2056}
!57 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !58, i64 2096, !58, i64 2100, !37, i64 2104, !58, i64 2108, !58, i64 2112, !37, i64 2116}
!58 = !{!"int", !37, i64 0}
!59 = !{!"screendump.c:screenshot_check"}
!60 = !{!55, !36, i64 96}
!61 = !{!"screendump.c:screenshot_exec"}
!62 = !{!63, !36, i64 0}
!63 = !{!"ScreenshotData", !36, i64 0, !58, i64 8, !58, i64 12, !64, i64 16, !65, i64 32}
!64 = !{!"rcti", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!65 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !66, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !67, i64 24, !68, i64 184}
!66 = !{!"float", !37, i64 0}
!67 = !{!"ColorManagedViewSettings", !58, i64 0, !58, i64 4, !37, i64 8, !37, i64 72, !66, i64 136, !66, i64 140, !36, i64 144, !36, i64 152}
!68 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!69 = !{!57, !36, i64 0}
!70 = !{!63, !58, i64 8}
!71 = !{!63, !58, i64 12}
!72 = !{!73, !36, i64 40}
!73 = !{!"ImBuf", !36, i64 0, !36, i64 8, !58, i64 16, !58, i64 20, !37, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !66, i64 112, !37, i64 120, !58, i64 280, !58, i64 284, !58, i64 288, !58, i64 292, !36, i64 296, !36, i64 304, !58, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !58, i64 2376, !36, i64 2384, !58, i64 2392, !58, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !58, i64 2432, !64, i64 2436, !74, i64 2456}
!74 = !{!"DDSData", !58, i64 0, !58, i64 4, !36, i64 8, !58, i64 16}
!75 = !{!63, !37, i64 34}
!76 = !{!"screendump.c:screenshot_cancel"}
!77 = !{!"screendump.c:screenshot_draw"}
!78 = !{!55, !36, i64 152}
!79 = !{!55, !36, i64 88}
!80 = !{!55, !36, i64 80}
!81 = !{!"screendump.c:screenshot_poll"}
!82 = !{!57, !37, i64 2081}
!83 = !{!"screendump.c:screencast_exec"}
!84 = !{!36, !36, i64 0}
!85 = !{!86, !58, i64 32}
!86 = !{!"ScreenshotJob", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !36, i64 48, !36, i64 56, !87, i64 64}
!87 = !{!"ReportList", !39, i64 0, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !36, i64 32}
!88 = !{!86, !58, i64 36}
!89 = !{!86, !58, i64 40}
!90 = !{!91, !58, i64 56}
!91 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !64, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!92 = !{!91, !58, i64 64}
!93 = !{!91, !58, i64 60}
!94 = !{!91, !58, i64 68}
!95 = !{!86, !36, i64 0}
!96 = !{!86, !36, i64 8}
!97 = !{!86, !36, i64 16}
!98 = !{!"screendump.c:screenshot_data_create"}
!99 = !{!58, !58, i64 0}
!100 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !99}
!101 = !{!"screendump.c:screenshot"}
!102 = !{!"screendump.c:screenshot_read_pixels"}
!103 = !{!37, !37, i64 0}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"screendump.c:screenshot_crop"}
!107 = !{!73, !58, i64 16}
!108 = distinct !{!108, !105}
!109 = !{!73, !58, i64 20}
!110 = !{!"screendump.c:screenshot_data_free"}
!111 = !{!"screendump.c:BLI_rcti_size_x"}
!112 = !{!64, !58, i64 4}
!113 = !{!64, !58, i64 0}
!114 = !{!"screendump.c:BLI_rcti_size_y"}
!115 = !{!64, !58, i64 12}
!116 = !{!64, !58, i64 8}
!117 = !{!"screendump.c:screenshot_draw_check_prop"}
!118 = !{!"screendump.c:screenshot_startjob"}
!119 = !{i64 0, i64 1, !103, i64 1, i64 1, !103, i64 2, i64 1, !103, i64 3, i64 1, !103, i64 4, i64 1, !103, i64 5, i64 1, !103, i64 6, i64 1, !103, i64 7, i64 1, !103, i64 8, i64 2, !120, i64 10, i64 2, !120, i64 12, i64 4, !121, i64 16, i64 1, !103, i64 17, i64 1, !103, i64 18, i64 6, !103, i64 24, i64 4, !99, i64 28, i64 4, !99, i64 32, i64 64, !103, i64 96, i64 64, !103, i64 160, i64 4, !121, i64 164, i64 4, !121, i64 168, i64 8, !84, i64 176, i64 8, !84, i64 184, i64 64, !103, i64 248, i64 8, !84, i64 256, i64 8, !84, i64 264, i64 4, !99, i64 268, i64 4, !99, i64 272, i64 4, !99, i64 276, i64 4, !99, i64 280, i64 4, !99, i64 284, i64 4, !99, i64 288, i64 4, !99, i64 292, i64 4, !99, i64 296, i64 4, !99, i64 300, i64 4, !99, i64 304, i64 4, !99, i64 308, i64 4, !99, i64 312, i64 2, !120, i64 314, i64 2, !120, i64 316, i64 4, !99, i64 320, i64 4, !99, i64 324, i64 4, !99, i64 328, i64 4, !99, i64 332, i64 4, !99, i64 336, i64 4, !99, i64 340, i64 4, !99, i64 344, i64 4, !99, i64 348, i64 4, !99, i64 352, i64 4, !99, i64 356, i64 4, !99, i64 360, i64 4, !121, i64 364, i64 4, !99, i64 368, i64 4, !99, i64 372, i64 4, !99, i64 376, i64 4, !99, i64 380, i64 4, !99, i64 384, i64 4, !99, i64 388, i64 4, !99, i64 392, i64 8, !84, i64 400, i64 4, !99, i64 404, i64 4, !99, i64 408, i64 4, !99, i64 412, i64 4, !121, i64 416, i64 4, !99, i64 420, i64 4, !99, i64 424, i64 4, !99, i64 428, i64 4, !99, i64 432, i64 2, !120, i64 434, i64 2, !120, i64 436, i64 4, !121, i64 440, i64 4, !121, i64 444, i64 4, !121, i64 448, i64 4, !121, i64 452, i64 4, !121, i64 456, i64 2, !120, i64 458, i64 2, !120, i64 460, i64 2, !120, i64 462, i64 2, !120, i64 464, i64 2, !120, i64 466, i64 2, !120, i64 468, i64 4, !99, i64 472, i64 2, !120, i64 474, i64 2, !120, i64 476, i64 2, !120, i64 478, i64 2, !120, i64 480, i64 2, !120, i64 482, i64 2, !120, i64 484, i64 4, !99, i64 488, i64 4, !99, i64 492, i64 2, !120, i64 494, i64 2, !120, i64 496, i64 4, !99, i64 500, i64 4, !99, i64 504, i64 2, !120, i64 506, i64 2, !120, i64 508, i64 2, !120, i64 510, i64 2, !120, i64 512, i64 2, !120, i64 514, i64 1, !103, i64 515, i64 1, !103, i64 516, i64 4, !99, i64 520, i64 4, !99, i64 524, i64 4, !99, i64 528, i64 2, !120, i64 530, i64 2, !120, i64 532, i64 2, !120, i64 534, i64 2, !120, i64 536, i64 2, !120, i64 538, i64 2, !120, i64 540, i64 2, !120, i64 542, i64 2, !120, i64 544, i64 4, !121, i64 548, i64 4, !121, i64 552, i64 4, !121, i64 556, i64 4, !121, i64 560, i64 4, !121, i64 564, i64 4, !121, i64 568, i64 4, !121, i64 572, i64 4, !121, i64 576, i64 4, !99, i64 580, i64 4, !99, i64 584, i64 4, !99, i64 588, i64 4, !99, i64 592, i64 8, !84, i64 600, i64 8, !84, i64 608, i64 2, !120, i64 610, i64 2, !120, i64 612, i64 4, !121, i64 616, i64 4, !121, i64 620, i64 4, !121, i64 624, i64 4, !121, i64 628, i64 4, !99, i64 632, i64 4, !121, i64 636, i64 4, !121, i64 640, i64 4, !121, i64 644, i64 4, !121, i64 648, i64 2, !120, i64 650, i64 2, !120, i64 652, i64 2, !120, i64 654, i64 2, !120, i64 656, i64 2, !120, i64 658, i64 2, !120, i64 660, i64 4, !121, i64 664, i64 4, !121, i64 668, i64 2, !120, i64 670, i64 2, !120, i64 672, i64 4, !121, i64 676, i64 4, !121, i64 680, i64 1024, !103, i64 1704, i64 4, !99, i64 1708, i64 2, !120, i64 1710, i64 2, !120, i64 1712, i64 768, !103, i64 2480, i64 16, !103, i64 2496, i64 16, !103, i64 2512, i64 1, !103, i64 2513, i64 1, !103, i64 2514, i64 1, !103, i64 2515, i64 5, !103, i64 2520, i64 4, !99, i64 2524, i64 2, !120, i64 2526, i64 2, !120, i64 2528, i64 4, !121, i64 2532, i64 4, !121, i64 2536, i64 2, !120, i64 2538, i64 2, !120, i64 2540, i64 4, !121, i64 2544, i64 2, !120, i64 2546, i64 2, !120, i64 2548, i64 4, !99, i64 2552, i64 2, !120, i64 2554, i64 2, !120, i64 2556, i64 2, !120, i64 2558, i64 2, !120, i64 2560, i64 4, !121, i64 2564, i64 4, !121, i64 2568, i64 8, !84, i64 2576, i64 4, !99, i64 2580, i64 4, !121, i64 2584, i64 32, !103, i64 2616, i64 1, !103, i64 2617, i64 1, !103, i64 2618, i64 1, !103, i64 2619, i64 1, !103, i64 2620, i64 1, !103, i64 2621, i64 1, !103, i64 2622, i64 1, !103, i64 2623, i64 1, !103, i64 2624, i64 2, !120, i64 2626, i64 2, !120, i64 2628, i64 4, !121, i64 2632, i64 1, !103, i64 2633, i64 1, !103, i64 2634, i64 6, !103, i64 2640, i64 4, !99, i64 2644, i64 4, !99, i64 2648, i64 64, !103, i64 2712, i64 64, !103, i64 2776, i64 4, !121, i64 2780, i64 4, !121, i64 2784, i64 8, !84, i64 2792, i64 8, !84, i64 2800, i64 64, !103, i64 2864, i64 1024, !103, i64 3888, i64 2, !120, i64 3890, i64 2, !120, i64 3892, i64 2, !120, i64 3894, i64 2, !120, i64 3896, i64 4, !121, i64 3900, i64 4, !121, i64 3904, i64 3, !103, i64 3907, i64 1, !103, i64 3908, i64 1, !103, i64 3909, i64 3, !103, i64 3912, i64 64, !103, i64 3976, i64 4, !99, i64 3980, i64 4, !99}
!120 = !{!41, !41, i64 0}
!121 = !{!66, !66, i64 0}
!122 = !{!123, !37, i64 280}
!123 = !{!"Scene", !124, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !58, i64 232, !58, i64 236, !58, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !125, i64 280, !130, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !58, i64 4380, !39, i64 4384, !131, i64 4400, !132, i64 4416, !135, i64 4600, !36, i64 4608, !136, i64 4616, !36, i64 4640, !137, i64 4648, !137, i64 4656, !67, i64 4664, !68, i64 4824, !138, i64 4888, !36, i64 4952}
!124 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !58, i64 100, !58, i64 104, !58, i64 108, !36, i64 112}
!125 = !{!"RenderData", !65, i64 0, !36, i64 248, !36, i64 256, !126, i64 264, !127, i64 328, !58, i64 400, !58, i64 404, !58, i64 408, !66, i64 412, !58, i64 416, !58, i64 420, !58, i64 424, !58, i64 428, !41, i64 432, !41, i64 434, !66, i64 436, !66, i64 440, !66, i64 444, !66, i64 448, !66, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !58, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !58, i64 484, !58, i64 488, !41, i64 492, !41, i64 494, !58, i64 496, !58, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !58, i64 516, !58, i64 520, !58, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !128, i64 544, !128, i64 560, !64, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !66, i64 612, !66, i64 616, !66, i64 620, !66, i64 624, !58, i64 628, !66, i64 632, !66, i64 636, !66, i64 640, !66, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !66, i64 660, !66, i64 664, !41, i64 668, !41, i64 670, !66, i64 672, !66, i64 676, !37, i64 680, !58, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !58, i64 2520, !41, i64 2524, !41, i64 2526, !66, i64 2528, !66, i64 2532, !41, i64 2536, !41, i64 2538, !66, i64 2540, !41, i64 2544, !41, i64 2546, !58, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !66, i64 2560, !66, i64 2564, !36, i64 2568, !58, i64 2576, !66, i64 2580, !37, i64 2584, !129, i64 2616, !58, i64 3976, !58, i64 3980}
!126 = !{!"QuicktimeCodecSettings", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !41, i64 48, !41, i64 50, !58, i64 52, !58, i64 56, !58, i64 60}
!127 = !{!"FFMpegCodecData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !66, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !36, i64 64}
!128 = !{!"rctf", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!129 = !{!"BakeData", !65, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !66, i64 1280, !66, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!130 = !{!"AudioData", !58, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !58, i64 16, !41, i64 20, !41, i64 22, !66, i64 24, !66, i64 28}
!131 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!132 = !{!"GameData", !131, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !133, i64 40, !41, i64 64, !41, i64 66, !66, i64 68, !134, i64 72, !66, i64 128, !66, i64 132, !58, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !66, i64 164, !66, i64 168, !66, i64 172, !66, i64 176, !66, i64 180}
!133 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !66, i64 8, !66, i64 12, !36, i64 16}
!134 = !{!"RecastData", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !66, i64 28, !66, i64 32, !66, i64 36, !58, i64 40, !66, i64 44, !66, i64 48, !41, i64 52, !41, i64 54}
!135 = !{!"UnitSettings", !66, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!136 = !{!"PhysicsSettings", !37, i64 0, !58, i64 12, !58, i64 16, !58, i64 20}
!137 = !{!"long", !37, i64 0}
!138 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!139 = !{!140, !41, i64 8944}
!140 = !{!"UserDef", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !58, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !58, i64 8484, !58, i64 8488, !58, i64 8492, !41, i64 8496, !41, i64 8498, !58, i64 8500, !58, i64 8504, !58, i64 8508, !58, i64 8512, !58, i64 8516, !58, i64 8520, !58, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !58, i64 8912, !58, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !66, i64 8956, !66, i64 8960, !58, i64 8964, !41, i64 8968, !41, i64 8970, !66, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !141, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !58, i64 10896, !58, i64 10900, !66, i64 10904, !66, i64 10908, !58, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !142, i64 10928}
!141 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!142 = !{!"WalkNavigation", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !41, i64 24, !37, i64 26}
!143 = !{!125, !41, i64 540}
!144 = !{!125, !66, i64 620}
!145 = !{!125, !37, i64 0}
!146 = !{!147, !36, i64 0}
!147 = !{!"bMovieHandle", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!148 = !{!86, !58, i64 44}
!149 = !{!86, !36, i64 48}
!150 = !{!86, !36, i64 56}
!151 = !{!86, !36, i64 24}
!152 = !{!147, !36, i64 8}
!153 = !{!125, !58, i64 404}
!154 = !{!125, !58, i64 400}
!155 = !{!125, !37, i64 2}
!156 = !{!125, !58, i64 516}
!157 = !{!140, !41, i64 8946}
!158 = distinct !{!158, !105}
!159 = !{!147, !36, i64 16}
!160 = !{!"screendump.c:screenshot_freejob"}
!161 = !{!"screendump.c:screenshot_updatejob"}
!162 = !{!"screendump.c:screenshot_endjob"}
!163 = !{!"screendump.c:screencast_cursor_toggle"}
!164 = !{!"screendump.c:screencast_draw_cursor"}
