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

; Function Attrs: nounwind uwtable
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
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2064, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screenshot_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @screenshot_data_create(ptr noundef %0, ptr noundef %1), !range !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.9) #7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @screenshot_exec(ptr noundef %0, ptr noundef %1)
  br label %20

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8, !tbaa !53
  %15 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !55
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @G, align 8
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = select i1 %16, ptr @.str.10, ptr %18
  tail call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.9, ptr noundef nonnull %19) #7
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #7
  br label %20

20:                                               ; preds = %3, %13, %11
  %21 = phi i32 [ 4, %11 ], [ 1, %13 ], [ 2, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @screenshot_check(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.ScreenshotData, ptr %4, i64 0, i32 4
  %6 = tail call zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef %1, ptr noundef nonnull %5) #7
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screenshot_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @screenshot_data_create(ptr noundef %0, ptr noundef %1), !range !52
  %9 = load ptr, ptr %4, align 8, !tbaa !58
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %80, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @RNA_string_get(ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #7
  %19 = load ptr, ptr @G, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 2
  %21 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %20) #7
  %22 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !68
  %26 = call ptr @IMB_allocImBuf(i32 noundef %23, i32 noundef %25, i8 noundef zeroext 24, i32 noundef 0) #7
  %27 = load ptr, ptr %11, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 8
  store ptr %27, ptr %28, align 8, !tbaa !69
  %29 = load ptr, ptr %17, align 8, !tbaa !53
  %30 = call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.3) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 3
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 3, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %34 to i32
  %38 = lshr i64 %34, 32
  %39 = trunc i64 %38 to i32
  %40 = trunc i64 %36 to i32
  %41 = lshr i64 %36, 32
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %44 = sub nsw i32 %39, %37
  %45 = sub i32 %42, %40
  %46 = icmp sgt i32 %44, 0
  %47 = icmp sgt i32 %45, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %72

49:                                               ; preds = %32
  %50 = load i32, ptr %43, align 8, !tbaa !72
  %51 = load ptr, ptr %28, align 8, !tbaa !69
  %52 = mul nsw i32 %50, %40
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  %55 = shl i64 %34, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  %58 = zext nneg i32 %44 to i64
  %59 = shl nuw nsw i64 %58, 2
  br label %60

60:                                               ; preds = %49, %60
  %61 = phi i32 [ 0, %49 ], [ %64, %60 ]
  %62 = phi ptr [ %51, %49 ], [ %65, %60 ]
  %63 = phi ptr [ %57, %49 ], [ %68, %60 ]
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %62, ptr align 4 %63, i64 %59, i1 false)
  %64 = add nuw nsw i32 %61, 1
  %65 = getelementptr inbounds i32, ptr %62, i64 %58
  %66 = load i32, ptr %43, align 8, !tbaa !72
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  %69 = icmp eq i32 %64, %45
  br i1 %69, label %70, label %60, !llvm.loop !73

70:                                               ; preds = %60
  store i32 %44, ptr %43, align 8, !tbaa !72
  %71 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 3
  store i32 %45, ptr %71, align 4, !tbaa !76
  br label %72

72:                                               ; preds = %70, %32, %16
  %73 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 4
  %74 = getelementptr inbounds %struct.ScreenshotData, ptr %11, i64 0, i32 4, i32 2
  %75 = load i8, ptr %74, align 2, !tbaa !77
  %76 = icmp eq i8 %75, 8
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @IMB_color_to_bw(ptr noundef %26) #7
  br label %78

78:                                               ; preds = %77, %72
  %79 = call i32 @BKE_imbuf_write(ptr noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %73) #7
  call void @IMB_freeImBuf(ptr noundef %26) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  br label %80

80:                                               ; preds = %13, %78, %10
  %81 = load ptr, ptr %4, align 8, !tbaa !58
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %81, align 8, !tbaa !59
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  call void %87(ptr noundef nonnull %84) #7
  br label %88

88:                                               ; preds = %86, %83
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  call void %89(ptr noundef nonnull %81) #7
  store ptr null, ptr %4, align 8, !tbaa !58
  br label %90

90:                                               ; preds = %80, %88
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal void @screenshot_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %10(ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %9, %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %12(ptr noundef nonnull %4) #7
  store ptr null, ptr %3, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @screenshot_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.ScreenshotData, ptr %7, i64 0, i32 4
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ImageFormatSettings, ptr noundef nonnull %8, ptr noundef nonnull %3) #7
  call void @uiTemplateImageSettings(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %3) #7
  %15 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @screenshot_draw_check_prop, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @screenshot_poll(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !82
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @WM_operator_winactive(ptr noundef %0) #7
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_property(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef 1) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screencast_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %3, ptr noundef %5, i32 noundef 4) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @WM_jobs_stop(ptr noundef %3, ptr noundef %5, ptr noundef nonnull @screenshot_startjob) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call ptr @WM_jobs_get(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 4) #7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %12 = tail call ptr %11(i64 noundef 104, ptr noundef nonnull @.str.14) #7
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 5
  store i32 0, ptr %19, align 4, !tbaa !86
  %20 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #7
  %21 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 6
  store i32 %20, ptr %21, align 8, !tbaa !87
  %22 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #7
  br label %38

23:                                               ; preds = %9
  %24 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %25 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 4
  store i32 %26, ptr %27, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 5
  store i32 %29, ptr %30, align 4, !tbaa !86
  %31 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !91
  %33 = sub nsw i32 %32, %26
  %34 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 6
  store i32 %33, ptr %34, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !92
  %37 = sub nsw i32 %36, %29
  br label %38

38:                                               ; preds = %23, %17
  %39 = phi i32 [ %37, %23 ], [ %22, %17 ]
  %40 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 7
  store i32 %39, ptr %40, align 4, !tbaa !93
  %41 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  store ptr %41, ptr %12, align 8, !tbaa !94
  %42 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %43 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 2
  store ptr %3, ptr %44, align 8, !tbaa !96
  %45 = getelementptr inbounds %struct.ScreenshotJob, ptr %12, i64 0, i32 10
  tail call void @BKE_reports_init(ptr noundef nonnull %45, i32 noundef 1) #7
  tail call void @WM_jobs_customdata_set(ptr noundef %10, ptr noundef nonnull %12, ptr noundef nonnull @screenshot_freejob) #7
  tail call void @WM_jobs_timer(ptr noundef %10, double noundef 1.000000e-01, i32 noundef 0, i32 noundef 50528256) #7
  tail call void @WM_jobs_callbacks(ptr noundef %10, ptr noundef nonnull @screenshot_startjob, ptr noundef null, ptr noundef nonnull @screenshot_updatejob, ptr noundef nonnull @screenshot_endjob) #7
  %46 = load ptr, ptr %44, align 8, !tbaa !96
  tail call void @WM_jobs_start(ptr noundef %46, ptr noundef %10) #7
  %47 = load ptr, ptr %44, align 8, !tbaa !96
  %48 = tail call ptr @WM_paint_cursor_activate(ptr noundef %47, ptr noundef null, ptr noundef nonnull @screencast_draw_cursor, ptr noundef null) #7
  store ptr %48, ptr @screencast_cursor_toggle.cursor, align 8, !tbaa !78
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50528256, ptr noundef %5) #7
  ret i32 4
}

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @screenshot_data_create(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  tail call void @WM_redraw_windows(ptr noundef %0) #7
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %3) #7
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %3) #7
  %6 = icmp eq i32 %4, 0
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !78
  %11 = sext i32 %4 to i64
  %12 = shl nsw i64 %11, 2
  %13 = sext i32 %5 to i64
  %14 = mul i64 %12, %13
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.12) #7
  tail call void @glReadBuffer(i32 noundef 1028) #7
  tail call void @glReadPixels(i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef 6408, i32 noundef 5121, ptr noundef %15) #7
  tail call void @glFinish() #7
  %16 = mul nsw i32 %5, %4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %15, i64 3
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %23, %20 ], [ 0, %18 ]
  %22 = phi ptr [ %24, %20 ], [ %19, %18 ]
  store i8 -1, ptr %22, align 1, !tbaa !97
  %23 = add nuw nsw i32 %21, 1
  %24 = getelementptr inbounds i8, ptr %22, i64 4
  %25 = icmp eq i32 %23, %16
  br i1 %25, label %26, label %20, !llvm.loop !98

26:                                               ; preds = %20, %9
  tail call void @glReadBuffer(i32 noundef 1029) #7
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi ptr [ %15, %26 ], [ null, %2 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %32 = tail call ptr %31(i64 noundef 280, ptr noundef nonnull @.str.11) #7
  %33 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %34 = getelementptr inbounds %struct.ScreenshotData, ptr %32, i64 0, i32 1
  store i32 %4, ptr %34, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.ScreenshotData, ptr %32, i64 0, i32 2
  store i32 %5, ptr %35, align 4, !tbaa !68
  store ptr %28, ptr %32, align 8, !tbaa !59
  %36 = icmp eq ptr %33, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ScreenshotData, ptr %32, i64 0, i32 3
  %39 = getelementptr inbounds %struct.ScrArea, ptr %33, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !99
  br label %40

40:                                               ; preds = %37, %30
  %41 = getelementptr inbounds %struct.ScreenshotData, ptr %32, i64 0, i32 4
  tail call void @BKE_imformat_defaults(ptr noundef nonnull %41) #7
  br label %42

42:                                               ; preds = %27, %40
  %43 = phi ptr [ %32, %40 ], [ null, %27 ]
  %44 = phi i32 [ 1, %40 ], [ 0, %27 ]
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %43, ptr %45, align 8, !tbaa !58
  ret i32 %44
}

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @WM_redraw_windows(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BKE_imformat_defaults(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #1

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glFinish() local_unnamed_addr #1

declare zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @screenshot_draw_check_prop(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #7
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.9) #8
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @WM_operator_winactive(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @screenshot_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca %struct.RenderData, align 8
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3984, ptr nonnull %5) #7
  %7 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %5, ptr noundef nonnull align 8 dereferenceable(3984) %9, i64 3984, i1 false), !tbaa.struct !101
  %10 = load i8, ptr %9, align 8, !tbaa !104
  %11 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %10) #7
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 55
  store i16 %12, ptr %13, align 4, !tbaa !125
  %14 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 65
  store float 1.000000e+00, ptr %14, align 4, !tbaa !126
  %15 = load i8, ptr %5, align 8, !tbaa !127
  %16 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %15) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %11, align 8, !tbaa !128
  %20 = load ptr, ptr %7, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !93
  %25 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %26 = call i32 %19(ptr noundef %20, ptr noundef nonnull %5, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %109

30:                                               ; preds = %4, %18
  %31 = phi ptr [ %11, %18 ], [ null, %4 ]
  %32 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 8
  store ptr %1, ptr %32, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 9
  store ptr %2, ptr %33, align 8, !tbaa !131
  store i16 1, ptr %2, align 2, !tbaa !102
  %34 = getelementptr inbounds %struct.bMovieHandle, ptr %31, i64 0, i32 1
  %35 = load i16, ptr %1, align 2, !tbaa !102
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %102

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %39 = icmp eq ptr %31, null
  %40 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 6
  %41 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 5
  %42 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %45 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %47 = getelementptr inbounds %struct.ImageFormatData, ptr %5, i64 0, i32 2
  %48 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 84
  %49 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 5
  %50 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 46
  %51 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %52 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  %53 = getelementptr inbounds %struct.RenderData, ptr %5, i64 0, i32 5
  br label %54

54:                                               ; preds = %37, %99
  %55 = load ptr, ptr %38, align 8, !tbaa !132
  %56 = icmp eq ptr %55, null
  br i1 %56, label %96, label %57

57:                                               ; preds = %54
  br i1 %39, label %70, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %34, align 8, !tbaa !133
  %60 = load i32, ptr %40, align 4, !tbaa !134
  %61 = load i32, ptr %41, align 8, !tbaa !135
  %62 = load i32, ptr %42, align 8, !tbaa !87
  %63 = load i32, ptr %43, align 4, !tbaa !93
  %64 = call i32 %59(ptr noundef nonnull %5, i32 noundef %60, i32 noundef %61, ptr noundef nonnull %55, i32 noundef %62, i32 noundef %63, ptr noundef nonnull %44) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %58
  %67 = load i32, ptr %41, align 8, !tbaa !135
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %44, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %67) #7
  %68 = load i32, ptr %41, align 8, !tbaa !135
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %68)
  br label %91

70:                                               ; preds = %57
  %71 = load i32, ptr %45, align 8, !tbaa !87
  %72 = load i32, ptr %46, align 4, !tbaa !93
  %73 = load i8, ptr %47, align 2, !tbaa !136
  %74 = call ptr @IMB_allocImBuf(i32 noundef %71, i32 noundef %72, i8 noundef zeroext %73, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #7
  %75 = load ptr, ptr %0, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.Main, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %49, align 8, !tbaa !135
  %78 = load i32, ptr %50, align 4, !tbaa !137
  %79 = trunc i32 %78 to i8
  %80 = lshr i8 %79, 4
  %81 = and i8 %80, 1
  call void @BKE_makepicstring(ptr noundef nonnull %6, ptr noundef nonnull %48, ptr noundef nonnull %76, i32 noundef %77, ptr noundef nonnull %5, i8 noundef zeroext %81, i8 noundef zeroext 1) #7
  %82 = load ptr, ptr %38, align 8, !tbaa !132
  %83 = getelementptr inbounds %struct.ImBuf, ptr %74, i64 0, i32 8
  store ptr %82, ptr %83, align 8, !tbaa !69
  %84 = call i32 @BKE_imbuf_write(ptr noundef %74, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %6)
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %52, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #7
  br label %90

88:                                               ; preds = %70
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %6)
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %51, i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull %6) #7
  call void @IMB_freeImBuf(ptr noundef %74) #7
  br label %90

90:                                               ; preds = %88, %86
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #7
  br i1 %85, label %102, label %91

91:                                               ; preds = %90, %66
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  %93 = load ptr, ptr %38, align 8, !tbaa !132
  call void %92(ptr noundef %93) #7
  store ptr null, ptr %38, align 8, !tbaa !132
  store i16 1, ptr %2, align 2, !tbaa !102
  %94 = load i32, ptr %53, align 8, !tbaa !135
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %53, align 8, !tbaa !135
  br label %99

96:                                               ; preds = %54
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 80), align 2, !tbaa !138
  %98 = sext i16 %97 to i32
  call void @PIL_sleep_ms(i32 noundef %98) #7
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i16, ptr %1, align 2, !tbaa !102
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %54, label %102, !llvm.loop !139

102:                                              ; preds = %99, %58, %90, %30
  %103 = icmp eq ptr %31, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.bMovieHandle, ptr %31, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !140
  call void %106() #7
  br label %107

107:                                              ; preds = %104, %102
  %108 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 10
  call void @BKE_report(ptr noundef nonnull %108, i32 noundef 2, ptr noundef nonnull @.str.22) #7
  br label %109

109:                                              ; preds = %107, %28
  call void @llvm.lifetime.end.p0(i64 3984, ptr nonnull %5) #7
  ret void
}

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @screenshot_freejob(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %6(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %8(ptr noundef %0) #7
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @screenshot_updatejob(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !93
  %13 = sext i32 %12 to i64
  %14 = mul i64 %10, %13
  %15 = tail call ptr %6(i64 noundef %14, ptr noundef nonnull @.str.12) #7
  %16 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !86
  %20 = load i32, ptr %7, align 8, !tbaa !87
  %21 = load i32, ptr %11, align 4, !tbaa !93
  tail call void @glReadPixels(i32 noundef %17, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef 6408, i32 noundef 5121, ptr noundef %15) #7
  tail call void @glFinish() #7
  %22 = mul nsw i32 %21, %20
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = getelementptr inbounds i8, ptr %15, i64 3
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %29, %26 ], [ 0, %24 ]
  %28 = phi ptr [ %30, %26 ], [ %25, %24 ]
  store i8 -1, ptr %28, align 1, !tbaa !97
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds i8, ptr %28, i64 4
  %31 = icmp eq i32 %29, %22
  br i1 %31, label %32, label %26, !llvm.loop !98

32:                                               ; preds = %26, %5
  store ptr %15, ptr %2, align 8, !tbaa !132
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @screenshot_endjob(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @screencast_cursor_toggle.cursor, align 8, !tbaa !78
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScreenshotJob, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  tail call void @WM_paint_cursor_end(ptr noundef %6, ptr noundef nonnull %2) #7
  store ptr null, ptr @screencast_cursor_toggle.cursor, align 8, !tbaa !78
  br label %7

7:                                                ; preds = %1, %4
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @screencast_draw_cursor(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  tail call void @glPushMatrix() #7
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %5, float noundef %6, float noundef 0.000000e+00) #7
  tail call void @glEnable(i32 noundef 2848) #7
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 32) #7
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 2.000000e+01, i32 noundef 40) #7
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 2.000000e+01, i32 noundef 40) #7
  tail call void @glDisable(i32 noundef 3042) #7
  tail call void @glDisable(i32 noundef 2848) #7
  tail call void @glPopMatrix() #7
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #1

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!52 = !{i32 0, i32 2}
!53 = !{!54, !36, i64 112}
!54 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!55 = !{!56, !37, i64 2056}
!56 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !57, i64 2096, !57, i64 2100, !37, i64 2104, !57, i64 2108, !57, i64 2112, !37, i64 2116}
!57 = !{!"int", !37, i64 0}
!58 = !{!54, !36, i64 96}
!59 = !{!60, !36, i64 0}
!60 = !{!"ScreenshotData", !36, i64 0, !57, i64 8, !57, i64 12, !61, i64 16, !62, i64 32}
!61 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!62 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !63, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !64, i64 24, !65, i64 184}
!63 = !{!"float", !37, i64 0}
!64 = !{!"ColorManagedViewSettings", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 72, !63, i64 136, !63, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!66 = !{!56, !36, i64 0}
!67 = !{!60, !57, i64 8}
!68 = !{!60, !57, i64 12}
!69 = !{!70, !36, i64 40}
!70 = !{!"ImBuf", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !37, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !63, i64 112, !37, i64 120, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !36, i64 296, !36, i64 304, !57, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !57, i64 2376, !36, i64 2384, !57, i64 2392, !57, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !57, i64 2432, !61, i64 2436, !71, i64 2456}
!71 = !{!"DDSData", !57, i64 0, !57, i64 4, !36, i64 8, !57, i64 16}
!72 = !{!70, !57, i64 16}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!70, !57, i64 20}
!77 = !{!60, !37, i64 34}
!78 = !{!36, !36, i64 0}
!79 = !{!54, !36, i64 152}
!80 = !{!54, !36, i64 88}
!81 = !{!54, !36, i64 80}
!82 = !{!56, !37, i64 2081}
!83 = !{!84, !57, i64 32}
!84 = !{!"ScreenshotJob", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !36, i64 48, !36, i64 56, !85, i64 64}
!85 = !{!"ReportList", !39, i64 0, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !36, i64 32}
!86 = !{!84, !57, i64 36}
!87 = !{!84, !57, i64 40}
!88 = !{!89, !57, i64 56}
!89 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !61, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!90 = !{!89, !57, i64 64}
!91 = !{!89, !57, i64 60}
!92 = !{!89, !57, i64 68}
!93 = !{!84, !57, i64 44}
!94 = !{!84, !36, i64 0}
!95 = !{!84, !36, i64 8}
!96 = !{!84, !36, i64 16}
!97 = !{!37, !37, i64 0}
!98 = distinct !{!98, !74, !75}
!99 = !{i64 0, i64 4, !100, i64 4, i64 4, !100, i64 8, i64 4, !100, i64 12, i64 4, !100}
!100 = !{!57, !57, i64 0}
!101 = !{i64 0, i64 1, !97, i64 1, i64 1, !97, i64 2, i64 1, !97, i64 3, i64 1, !97, i64 4, i64 1, !97, i64 5, i64 1, !97, i64 6, i64 1, !97, i64 7, i64 1, !97, i64 8, i64 2, !102, i64 10, i64 2, !102, i64 12, i64 4, !103, i64 16, i64 1, !97, i64 17, i64 1, !97, i64 18, i64 6, !97, i64 24, i64 4, !100, i64 28, i64 4, !100, i64 32, i64 64, !97, i64 96, i64 64, !97, i64 160, i64 4, !103, i64 164, i64 4, !103, i64 168, i64 8, !78, i64 176, i64 8, !78, i64 184, i64 64, !97, i64 248, i64 8, !78, i64 256, i64 8, !78, i64 264, i64 4, !100, i64 268, i64 4, !100, i64 272, i64 4, !100, i64 276, i64 4, !100, i64 280, i64 4, !100, i64 284, i64 4, !100, i64 288, i64 4, !100, i64 292, i64 4, !100, i64 296, i64 4, !100, i64 300, i64 4, !100, i64 304, i64 4, !100, i64 308, i64 4, !100, i64 312, i64 2, !102, i64 314, i64 2, !102, i64 316, i64 4, !100, i64 320, i64 4, !100, i64 324, i64 4, !100, i64 328, i64 4, !100, i64 332, i64 4, !100, i64 336, i64 4, !100, i64 340, i64 4, !100, i64 344, i64 4, !100, i64 348, i64 4, !100, i64 352, i64 4, !100, i64 356, i64 4, !100, i64 360, i64 4, !103, i64 364, i64 4, !100, i64 368, i64 4, !100, i64 372, i64 4, !100, i64 376, i64 4, !100, i64 380, i64 4, !100, i64 384, i64 4, !100, i64 388, i64 4, !100, i64 392, i64 8, !78, i64 400, i64 4, !100, i64 404, i64 4, !100, i64 408, i64 4, !100, i64 412, i64 4, !103, i64 416, i64 4, !100, i64 420, i64 4, !100, i64 424, i64 4, !100, i64 428, i64 4, !100, i64 432, i64 2, !102, i64 434, i64 2, !102, i64 436, i64 4, !103, i64 440, i64 4, !103, i64 444, i64 4, !103, i64 448, i64 4, !103, i64 452, i64 4, !103, i64 456, i64 2, !102, i64 458, i64 2, !102, i64 460, i64 2, !102, i64 462, i64 2, !102, i64 464, i64 2, !102, i64 466, i64 2, !102, i64 468, i64 4, !100, i64 472, i64 2, !102, i64 474, i64 2, !102, i64 476, i64 2, !102, i64 478, i64 2, !102, i64 480, i64 2, !102, i64 482, i64 2, !102, i64 484, i64 4, !100, i64 488, i64 4, !100, i64 492, i64 2, !102, i64 494, i64 2, !102, i64 496, i64 4, !100, i64 500, i64 4, !100, i64 504, i64 2, !102, i64 506, i64 2, !102, i64 508, i64 2, !102, i64 510, i64 2, !102, i64 512, i64 2, !102, i64 514, i64 1, !97, i64 515, i64 1, !97, i64 516, i64 4, !100, i64 520, i64 4, !100, i64 524, i64 4, !100, i64 528, i64 2, !102, i64 530, i64 2, !102, i64 532, i64 2, !102, i64 534, i64 2, !102, i64 536, i64 2, !102, i64 538, i64 2, !102, i64 540, i64 2, !102, i64 542, i64 2, !102, i64 544, i64 4, !103, i64 548, i64 4, !103, i64 552, i64 4, !103, i64 556, i64 4, !103, i64 560, i64 4, !103, i64 564, i64 4, !103, i64 568, i64 4, !103, i64 572, i64 4, !103, i64 576, i64 4, !100, i64 580, i64 4, !100, i64 584, i64 4, !100, i64 588, i64 4, !100, i64 592, i64 8, !78, i64 600, i64 8, !78, i64 608, i64 2, !102, i64 610, i64 2, !102, i64 612, i64 4, !103, i64 616, i64 4, !103, i64 620, i64 4, !103, i64 624, i64 4, !103, i64 628, i64 4, !100, i64 632, i64 4, !103, i64 636, i64 4, !103, i64 640, i64 4, !103, i64 644, i64 4, !103, i64 648, i64 2, !102, i64 650, i64 2, !102, i64 652, i64 2, !102, i64 654, i64 2, !102, i64 656, i64 2, !102, i64 658, i64 2, !102, i64 660, i64 4, !103, i64 664, i64 4, !103, i64 668, i64 2, !102, i64 670, i64 2, !102, i64 672, i64 4, !103, i64 676, i64 4, !103, i64 680, i64 1024, !97, i64 1704, i64 4, !100, i64 1708, i64 2, !102, i64 1710, i64 2, !102, i64 1712, i64 768, !97, i64 2480, i64 16, !97, i64 2496, i64 16, !97, i64 2512, i64 1, !97, i64 2513, i64 1, !97, i64 2514, i64 1, !97, i64 2515, i64 5, !97, i64 2520, i64 4, !100, i64 2524, i64 2, !102, i64 2526, i64 2, !102, i64 2528, i64 4, !103, i64 2532, i64 4, !103, i64 2536, i64 2, !102, i64 2538, i64 2, !102, i64 2540, i64 4, !103, i64 2544, i64 2, !102, i64 2546, i64 2, !102, i64 2548, i64 4, !100, i64 2552, i64 2, !102, i64 2554, i64 2, !102, i64 2556, i64 2, !102, i64 2558, i64 2, !102, i64 2560, i64 4, !103, i64 2564, i64 4, !103, i64 2568, i64 8, !78, i64 2576, i64 4, !100, i64 2580, i64 4, !103, i64 2584, i64 32, !97, i64 2616, i64 1, !97, i64 2617, i64 1, !97, i64 2618, i64 1, !97, i64 2619, i64 1, !97, i64 2620, i64 1, !97, i64 2621, i64 1, !97, i64 2622, i64 1, !97, i64 2623, i64 1, !97, i64 2624, i64 2, !102, i64 2626, i64 2, !102, i64 2628, i64 4, !103, i64 2632, i64 1, !97, i64 2633, i64 1, !97, i64 2634, i64 6, !97, i64 2640, i64 4, !100, i64 2644, i64 4, !100, i64 2648, i64 64, !97, i64 2712, i64 64, !97, i64 2776, i64 4, !103, i64 2780, i64 4, !103, i64 2784, i64 8, !78, i64 2792, i64 8, !78, i64 2800, i64 64, !97, i64 2864, i64 1024, !97, i64 3888, i64 2, !102, i64 3890, i64 2, !102, i64 3892, i64 2, !102, i64 3894, i64 2, !102, i64 3896, i64 4, !103, i64 3900, i64 4, !103, i64 3904, i64 3, !97, i64 3907, i64 1, !97, i64 3908, i64 1, !97, i64 3909, i64 3, !97, i64 3912, i64 64, !97, i64 3976, i64 4, !100, i64 3980, i64 4, !100}
!102 = !{!41, !41, i64 0}
!103 = !{!63, !63, i64 0}
!104 = !{!105, !37, i64 280}
!105 = !{!"Scene", !106, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !57, i64 232, !57, i64 236, !57, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !107, i64 280, !112, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !57, i64 4380, !39, i64 4384, !113, i64 4400, !114, i64 4416, !117, i64 4600, !36, i64 4608, !118, i64 4616, !36, i64 4640, !119, i64 4648, !119, i64 4656, !64, i64 4664, !65, i64 4824, !120, i64 4888, !36, i64 4952}
!106 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !57, i64 100, !57, i64 104, !57, i64 108, !36, i64 112}
!107 = !{!"RenderData", !62, i64 0, !36, i64 248, !36, i64 256, !108, i64 264, !109, i64 328, !57, i64 400, !57, i64 404, !57, i64 408, !63, i64 412, !57, i64 416, !57, i64 420, !57, i64 424, !57, i64 428, !41, i64 432, !41, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !57, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !57, i64 484, !57, i64 488, !41, i64 492, !41, i64 494, !57, i64 496, !57, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !57, i64 516, !57, i64 520, !57, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !110, i64 544, !110, i64 560, !61, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !57, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !63, i64 660, !63, i64 664, !41, i64 668, !41, i64 670, !63, i64 672, !63, i64 676, !37, i64 680, !57, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !57, i64 2520, !41, i64 2524, !41, i64 2526, !63, i64 2528, !63, i64 2532, !41, i64 2536, !41, i64 2538, !63, i64 2540, !41, i64 2544, !41, i64 2546, !57, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !63, i64 2560, !63, i64 2564, !36, i64 2568, !57, i64 2576, !63, i64 2580, !37, i64 2584, !111, i64 2616, !57, i64 3976, !57, i64 3980}
!108 = !{!"QuicktimeCodecSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !41, i64 48, !41, i64 50, !57, i64 52, !57, i64 56, !57, i64 60}
!109 = !{!"FFMpegCodecData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !63, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !36, i64 64}
!110 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!111 = !{!"BakeData", !62, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !63, i64 1280, !63, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!112 = !{!"AudioData", !57, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !57, i64 16, !41, i64 20, !41, i64 22, !63, i64 24, !63, i64 28}
!113 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!114 = !{!"GameData", !113, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !115, i64 40, !41, i64 64, !41, i64 66, !63, i64 68, !116, i64 72, !63, i64 128, !63, i64 132, !57, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!115 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !63, i64 8, !63, i64 12, !36, i64 16}
!116 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !57, i64 40, !63, i64 44, !63, i64 48, !41, i64 52, !41, i64 54}
!117 = !{!"UnitSettings", !63, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!118 = !{!"PhysicsSettings", !37, i64 0, !57, i64 12, !57, i64 16, !57, i64 20}
!119 = !{!"long", !37, i64 0}
!120 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!121 = !{!122, !41, i64 8944}
!122 = !{!"UserDef", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !57, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !57, i64 8484, !57, i64 8488, !57, i64 8492, !41, i64 8496, !41, i64 8498, !57, i64 8500, !57, i64 8504, !57, i64 8508, !57, i64 8512, !57, i64 8516, !57, i64 8520, !57, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !57, i64 8912, !57, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !63, i64 8956, !63, i64 8960, !57, i64 8964, !41, i64 8968, !41, i64 8970, !63, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !123, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !57, i64 10896, !57, i64 10900, !63, i64 10904, !63, i64 10908, !57, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !124, i64 10928}
!123 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!124 = !{!"WalkNavigation", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !41, i64 24, !37, i64 26}
!125 = !{!107, !41, i64 540}
!126 = !{!107, !63, i64 620}
!127 = !{!107, !37, i64 0}
!128 = !{!129, !36, i64 0}
!129 = !{!"bMovieHandle", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!130 = !{!84, !36, i64 48}
!131 = !{!84, !36, i64 56}
!132 = !{!84, !36, i64 24}
!133 = !{!129, !36, i64 8}
!134 = !{!107, !57, i64 404}
!135 = !{!107, !57, i64 400}
!136 = !{!107, !37, i64 2}
!137 = !{!107, !57, i64 516}
!138 = !{!122, !41, i64 8946}
!139 = distinct !{!139, !74, !75}
!140 = !{!129, !36, i64 16}
