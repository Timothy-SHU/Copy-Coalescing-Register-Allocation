; ModuleID = 'blender/source/blender/editors/interface/interface.c'
source_filename = "blender/source/blender/editors/interface/interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.rctf = type { float, float, float, float }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.uiLink = type { ptr, ptr, ptr, i16, i16, i16, i16, %struct.ListBase }
%struct.uiLinkLine = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.AutoComplete = type { i64, i32, ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.uiStringInfo = type { i32, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
%struct.uiPopupBlockHandle = type { ptr, [2 x float], double, i8, i8, ptr, ptr, ptr, %struct.uiPopupBlockCreate, ptr, %struct.uiKeyNavLock, ptr, ptr, ptr, i32, i32, i32, i32, [4 x float], i32, i8, [2 x i32] }
%struct.uiPopupBlockCreate = type { ptr, ptr, ptr, [2 x i32], ptr }
%struct.uiKeyNavLock = type { i8, [2 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s|%s\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@ui_radial_dir_order = dso_local local_unnamed_addr constant [8 x i8] c"\06\02\04\00\07\01\05\03", align 1
@ui_radial_dir_to_numpad = dso_local local_unnamed_addr constant [8 x i8] c"\08\09\06\03\02\01\04\07", align 1
@ui_radial_dir_to_angle = dso_local local_unnamed_addr constant [8 x i16] [i16 90, i16 45, i16 0, i16 315, i16 270, i16 225, i16 180, i16 135], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: can't get color, should never happen\0A\00", align 1
@__func__.ui_get_but_vectorf = private unnamed_addr constant [19 x i8] c"ui_get_but_vectorf\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"property removed %s: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@PointerRNA_NULL = external constant %struct.PointerRNA, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"UI_OT_reset_default_button\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"uiBlock\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"UI UnitSettings\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" px\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s%.*f\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Press a key\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Shift \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Ctrl \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Alt \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Cmd \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"AutoComplete\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"AutoCompleteTruncate\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"new uilink\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"uiButOpPtr\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"linkline\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"uiBut\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"ui_def_but str\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [33 x i8] c"%s: %s has no enum property set\0A\00", align 1
@__func__.operator_enum_search_cb = private unnamed_addr constant [24 x i8] c"operator_enum_search_cb\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"%s: %s \22%s\22 is not an enum property\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"%s: op->prop for '%s' is NULL\0A\00", align 1
@__func__.operator_enum_call_cb = private unnamed_addr constant [22 x i8] c"operator_enum_call_cb\00", align 1
@__func__.ui_but_event_operator_string = private unnamed_addr constant [29 x i8] c"ui_but_event_operator_string\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"WM_OT_call_menu\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"WM_OT_context_toggle_enum\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"WM_OT_context_cycle_int\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"WM_OT_context_cycle_enum\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"WM_OT_context_cycle_array\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"WM_OT_context_menu_enum\00", align 1
@__const.ui_but_event_property_operator_string.ctx_toggle_opnames = private unnamed_addr constant [7 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null], align 16
@RNA_Space = external global %struct.StructRNA, align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"space_data.%s\00", align 1
@RNA_DopeSheet = external global %struct.StructRNA, align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"space_data.dopesheet.%s\00", align 1
@RNA_ToolSettings = external global %struct.StructRNA, align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"scene.%s\00", align 1
@__func__.ui_but_event_property_operator_string = private unnamed_addr constant [38 x i8] c"ui_but_event_property_operator_string\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ui_block_is_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, 257
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ui_block_is_pie_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = lshr i32 %3, 20
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window_fl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #25
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #25
  %8 = load i32, ptr %5, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = load float, ptr %2, align 4, !tbaa !51
  %12 = load float, ptr %3, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  %16 = insertelement <2 x float> poison, float %11, i64 0
  %17 = insertelement <2 x float> %16, float %12, i64 1
  br i1 %15, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 7
  %20 = load <2 x i32>, ptr %19, align 8, !tbaa !53
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = fadd <2 x float> %17, %21
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi <2 x float> [ %22, %18 ], [ %17, %4 ]
  %25 = add nsw i32 %7, 1
  %26 = add nsw i32 %6, 1
  %27 = sitofp i32 %8 to float
  %28 = sitofp i32 %26 to float
  %29 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %30 = load float, ptr %29, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %32 = load float, ptr %31, align 8, !tbaa !51
  %33 = extractelement <2 x float> %24, i64 1
  %34 = fmul float %33, %32
  %35 = extractelement <2 x float> %24, i64 0
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %30, float %34)
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %38 = load float, ptr %37, align 8, !tbaa !51
  %39 = fadd float %38, %36
  %40 = tail call float @llvm.fmuladd.f32(float %39, float 5.000000e-01, float 5.000000e-01)
  %41 = tail call float @llvm.fmuladd.f32(float %28, float %40, float %27)
  store float %41, ptr %2, align 4, !tbaa !51
  %42 = sitofp i32 %10 to float
  %43 = sitofp i32 %25 to float
  %44 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = fmul float %33, %47
  %49 = tail call float @llvm.fmuladd.f32(float %35, float %45, float %48)
  %50 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !51
  %52 = fadd float %51, %49
  %53 = tail call float @llvm.fmuladd.f32(float %52, float 5.000000e-01, float 5.000000e-01)
  %54 = tail call float @llvm.fmuladd.f32(float %43, float %53, float %42)
  store float %54, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = load i32, ptr %0, align 4, !tbaa !56
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %7 = load i32, ptr %2, align 4, !tbaa !53
  %8 = sitofp i32 %7 to float
  store float %8, ptr %5, align 4, !tbaa !51
  %9 = load i32, ptr %3, align 4, !tbaa !53
  %10 = sitofp i32 %9 to float
  store float %10, ptr %6, align 4, !tbaa !51
  call void @ui_block_to_window_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %11 = load float, ptr %5, align 4, !tbaa !51
  %12 = fadd float %11, 5.000000e-01
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %2, align 4, !tbaa !53
  %14 = load float, ptr %6, align 4, !tbaa !51
  %15 = fadd float %14, 5.000000e-01
  %16 = fptosi float %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !60
  %5 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  tail call void @ui_block_to_window_fl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %6 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  tail call void @ui_block_to_window_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_window_to_block_fl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #25
  %7 = add nsw i32 %6, 1
  %8 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #25
  %9 = add nsw i32 %8, 1
  %10 = load i32, ptr %5, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = sitofp i32 %7 to float
  %14 = fmul float %13, 5.000000e-01
  %15 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %16 = load float, ptr %15, align 8, !tbaa !51
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %19 = load float, ptr %18, align 8, !tbaa !51
  %20 = fmul float %14, %19
  %21 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %22 = load float, ptr %21, align 8, !tbaa !51
  %23 = fadd float %22, 1.000000e+00
  %24 = fmul float %14, %23
  %25 = sitofp i32 %9 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = fmul float %26, %28
  %30 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fmul float %26, %31
  %33 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = fadd float %34, 1.000000e+00
  %36 = fmul float %26, %35
  %37 = load float, ptr %2, align 4, !tbaa !51
  %38 = sitofp i32 %10 to float
  %39 = fsub float %37, %38
  %40 = load float, ptr %3, align 4, !tbaa !51
  %41 = sitofp i32 %12 to float
  %42 = fsub float %40, %41
  %43 = fsub float %42, %36
  %44 = fsub float %24, %39
  %45 = fmul float %29, %44
  %46 = tail call float @llvm.fmuladd.f32(float %17, float %43, float %45)
  %47 = fneg float %29
  %48 = fmul float %20, %47
  %49 = tail call float @llvm.fmuladd.f32(float %17, float %32, float %48)
  %50 = fdiv float %46, %49
  store float %50, ptr %3, align 4, !tbaa !51
  %51 = fneg float %20
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %50, float %39)
  %53 = fsub float %52, %24
  %54 = fdiv float %53, %17
  store float %54, ptr %2, align 4, !tbaa !51
  %55 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %4
  %59 = getelementptr inbounds %struct.Panel, ptr %56, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !61
  %61 = sitofp i32 %60 to float
  %62 = fsub float %54, %61
  store float %62, ptr %2, align 4, !tbaa !51
  %63 = getelementptr inbounds %struct.Panel, ptr %56, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !63
  %65 = sitofp i32 %64 to float
  %66 = load float, ptr %3, align 4, !tbaa !51
  %67 = fsub float %66, %65
  store float %67, ptr %3, align 4, !tbaa !51
  br label %68

68:                                               ; preds = %58, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_window_to_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %7 = load i32, ptr %2, align 4, !tbaa !53
  %8 = sitofp i32 %7 to float
  store float %8, ptr %5, align 4, !tbaa !51
  %9 = load i32, ptr %3, align 4, !tbaa !53
  %10 = sitofp i32 %9 to float
  store float %10, ptr %6, align 4, !tbaa !51
  call void @ui_window_to_block_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %11 = load float, ptr %5, align 4, !tbaa !51
  %12 = fadd float %11, 5.000000e-01
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %2, align 4, !tbaa !53
  %14 = load float, ptr %6, align 4, !tbaa !51
  %15 = fadd float %14, 5.000000e-01
  %16 = fptosi float %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_window_to_region(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = load i32, ptr %1, align 4, !tbaa !53
  %7 = sub nsw i32 %6, %5
  store i32 %7, ptr %1, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = load i32, ptr %2, align 4, !tbaa !53
  %11 = sub nsw i32 %10, %9
  store i32 %11, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_block_translate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  %7 = sitofp i32 %1 to float
  %8 = sitofp i32 %2 to float
  br i1 %6, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18
  tail call void @BLI_rctf_translate(ptr noundef nonnull %11, float noundef %7, float noundef %8) #27
  %12 = load ptr, ptr %10, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !65

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  tail call void @BLI_rctf_translate(ptr noundef nonnull %15, float noundef %7, float noundef %8) #27
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_bounds_block(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #25, !range !67
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  br i1 %8, label %10, label %12

10:                                               ; preds = %5
  %11 = load float, ptr %9, align 8, !tbaa !68
  br label %42

12:                                               ; preds = %5
  store float 0.000000e+00, ptr %9, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  store float %15, ptr %16, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !72
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  store float %20, ptr %21, align 4, !tbaa !73
  br label %42

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %23) #27
  %24 = load ptr, ptr %2, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 18
  tail call void @BLI_rctf_union(ptr noundef nonnull %23, ptr noundef nonnull %28) #27
  %29 = load ptr, ptr %27, align 8, !tbaa !64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !74

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  %33 = load i32, ptr %32, align 8, !tbaa !75
  %34 = sitofp i32 %33 to float
  %35 = load <4 x float>, ptr %23, align 8, !tbaa !51
  %36 = insertelement <4 x float> poison, float %34, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %38 = fsub <4 x float> %35, %37
  %39 = fadd <4 x float> %35, %37
  %40 = shufflevector <4 x float> %38, <4 x float> %39, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %40, ptr %23, align 8, !tbaa !51
  %41 = extractelement <4 x float> %38, i64 0
  br label %42

42:                                               ; preds = %10, %12, %31
  %43 = phi float [ %11, %10 ], [ 0.000000e+00, %12 ], [ %41, %31 ]
  %44 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  %45 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %44) #25
  %46 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 43
  %47 = load i32, ptr %46, align 4, !tbaa !76
  %48 = sitofp i32 %47 to float
  %49 = tail call fastcc float @max_ff(float noundef %45, float noundef %48) #25
  %50 = fadd float %43, %49
  %51 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  store float %50, ptr %51, align 4, !tbaa !70
  %52 = load ptr, ptr %2, align 8, !tbaa !77
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.uiBut, ptr %52, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !78
  %57 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(6) @.str, i64 noundef 5) #28
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %42
  br label %60

60:                                               ; preds = %54, %59
  %61 = phi float [ 4.000000e+01, %59 ], [ 1.000000e+01, %54 ]
  %62 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 44
  %63 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %64 = load <2 x float>, ptr %63, align 8, !tbaa !51
  %65 = insertelement <4 x float> poison, float %43, i64 0
  %66 = insertelement <4 x float> %65, float %50, i64 1
  %67 = shufflevector <2 x float> %64, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %68 = shufflevector <4 x float> %66, <4 x float> %67, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %69 = insertelement <4 x float> poison, float %61, i64 0
  %70 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> zeroinitializer
  %71 = fsub <4 x float> %68, %70
  %72 = fadd <4 x float> %68, %70
  %73 = shufflevector <4 x float> %71, <4 x float> %72, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %73, ptr %62, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !82 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !84 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !86
  %4 = load float, ptr %0, align 4, !tbaa !87
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBoundsBlock(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 1, ptr %6, align 4, !tbaa !88
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiTextBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 2, ptr %4, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiPopupBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 3, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 40
  store i32 %2, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 41
  store i32 %3, ptr %8, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiMenuPopupBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 4, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 40
  store i32 %2, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 41
  store i32 %3, ptr %8, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiCenteredBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 5, ptr %4, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiExplicitBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 {
  %6 = insertelement <4 x i32> poison, i32 %1, i64 0
  %7 = insertelement <4 x i32> %6, i32 %3, i64 1
  %8 = insertelement <4 x i32> %7, i32 %2, i64 2
  %9 = insertelement <4 x i32> %8, i32 %4, i64 3
  %10 = sitofp <4 x i32> %9 to <4 x float>
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  store <4 x float> %10, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 0, ptr %12, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_but_find_old(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @ui_but_equals_old(ptr noundef %1, ptr noundef nonnull %6) #25, !range !67
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %4, label %11, !llvm.loop !91

11:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ui_but_equals_old(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !93
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !93
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %77

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %77

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %22 = load i32, ptr %21, align 8, !tbaa !96
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 56
  %24 = load i32, ptr %23, align 8, !tbaa !96
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 27
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 27
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 30
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 28
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 28
  %44 = load ptr, ptr %43, align 8, !tbaa !99
  %45 = icmp eq ptr %44, %40
  br i1 %45, label %46, label %77

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 29
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  %53 = icmp eq ptr %52, %48
  br i1 %53, label %54, label %77

54:                                               ; preds = %50, %46
  %55 = icmp eq ptr %34, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !101
  %59 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = icmp eq ptr %58, %60
  %62 = icmp eq ptr %60, %1
  %63 = or i1 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !102
  %67 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !102
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64, %54
  %71 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 59
  %72 = load ptr, ptr %71, align 8, !tbaa !103
  %73 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  %75 = icmp eq ptr %72, %74
  %76 = zext i1 %75 to i8
  br label %77

77:                                               ; preds = %70, %64, %56, %50, %42, %32, %26, %14, %20, %8, %2
  %78 = phi i8 [ 0, %2 ], [ 0, %8 ], [ 0, %20 ], [ 0, %14 ], [ 0, %26 ], [ 0, %32 ], [ 0, %42 ], [ 0, %50 ], [ 0, %56 ], [ 0, %64 ], [ %76, %70 ]
  ret i8 %78
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_but_find_new(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @ui_but_equals_old(ptr noundef nonnull %6, ptr noundef %1) #25, !range !67
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %4, label %11, !llvm.loop !104

11:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @ui_but_find_old(ptr noundef nonnull %6, ptr noundef %3) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4
  tail call void @ui_button_activate_do(ptr noundef %0, ptr noundef %1, ptr noundef %3) #27
  br label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 67
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef %3) #27
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef %3) #25
  br label %18

18:                                               ; preds = %11, %12, %16
  %19 = phi i8 [ 0, %16 ], [ 1, %12 ], [ 1, %11 ]
  ret i8 %19
}

; Function Attrs: optsize
declare void @ui_button_activate_do(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_free_but(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @WM_operator_properties_free(ptr noundef nonnull %4) #27
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %8 = load ptr, ptr %3, align 8, !tbaa !108
  tail call void %7(ptr noundef %8) #27
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %14(ptr noundef nonnull %11) #27
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @ui_button_active_free(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %23(ptr noundef nonnull %17) #27
  br label %24

24:                                               ; preds = %21, %22, %15
  %25 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 16
  %29 = icmp eq ptr %26, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %32(ptr noundef nonnull %26) #27
  br label %33

33:                                               ; preds = %31, %24
  %34 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %35 = load ptr, ptr %34, align 8, !tbaa !110
  tail call fastcc void @ui_free_link(ptr noundef %35) #25
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !111
  %38 = icmp eq i32 %37, 24064
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @IMB_freeImBuf(ptr noundef nonnull %41) #27
  br label %44

44:                                               ; preds = %43, %39, %33
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %45(ptr noundef nonnull %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiButExecute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @ui_button_execute_begin(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3) #27
  %5 = load ptr, ptr %3, align 8, !tbaa !64
  call void @ui_button_execute_end(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_button_execute_begin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_button_execute_end(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_add_shortcut(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 124) #28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  store i8 0, ptr %13, align 1, !tbaa !113
  %16 = load i32, ptr %6, align 8, !tbaa !112
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %7, %10 ]
  %19 = and i32 %18, -134217729
  store i32 %19, ptr %6, align 8, !tbaa !112
  br label %20

20:                                               ; preds = %17, %5, %3
  %21 = icmp eq ptr %1, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 16
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call ptr @BLI_strdup(ptr noundef %24) #27
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi ptr [ %28, %27 ], [ %24, %22 ]
  %31 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %25, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %30, ptr noundef nonnull %1) #27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %32(ptr noundef %30) #27
  store ptr %25, ptr %23, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !112
  %35 = or i32 %34, 134217728
  store i32 %35, ptr %33, align 8, !tbaa !112
  tail call void @ui_check_but(ptr noundef nonnull %0) #25
  br label %36

36:                                               ; preds = %29, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_check_but(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [400 x i8], align 16
  %5 = alloca [400 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !114
  call fastcc void @ui_check_but_select(ptr noundef %0, ptr noundef nonnull %2) #25
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %15 = load ptr, ptr %14, align 8, !tbaa !117
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !102
  %28 = and i32 %27, 224
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  tail call fastcc void @ui_set_but_soft_range(ptr noundef nonnull %0) #25
  br label %31

31:                                               ; preds = %21, %25, %30, %13, %9, %1
  %32 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !111
  switch i32 %33, label %70 [
    i32 2560, label %34
    i32 9216, label %34
    i32 7168, label %34
    i32 6656, label %52
    i32 17408, label %52
  ]

34:                                               ; preds = %31, %31, %31
  %35 = load double, ptr %2, align 8, !tbaa !114
  %36 = fcmp oeq double %35, 0x7FEFFFFFFFFFFFFF
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  store double %38, ptr %2, align 8, !tbaa !114
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi double [ %38, %37 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %42 = load float, ptr %41, align 8, !tbaa !118
  %43 = fpext float %42 to double
  %44 = fcmp olt double %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @ui_set_but_val(ptr noundef nonnull %0, double noundef %43) #25
  br label %68

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %48 = load float, ptr %47, align 4, !tbaa !119
  %49 = fpext float %48 to double
  %50 = fcmp ogt double %40, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  tail call void @ui_set_but_val(ptr noundef nonnull %0, double noundef %49) #25
  br label %68

52:                                               ; preds = %31, %31
  %53 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %54 = load ptr, ptr %53, align 8, !tbaa !95
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @RNA_property_flag(ptr noundef nonnull %54) #27
  %58 = and i32 %57, 4096
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !112
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 51
  br i1 %64, label %67, label %66

66:                                               ; preds = %60
  store i16 1, ptr %65, align 4, !tbaa !120
  br label %68

67:                                               ; preds = %60
  store i16 0, ptr %65, align 4, !tbaa !120
  br label %68

68:                                               ; preds = %46, %51, %45, %66, %67, %56
  %69 = load i32, ptr %32, align 8, !tbaa !111
  br label %70

70:                                               ; preds = %68, %31
  %71 = phi i32 [ %69, %68 ], [ %33, %31 ]
  switch i32 %71, label %269 [
    i32 5632, label %72
    i32 2560, label %111
    i32 7168, label %111
    i32 5120, label %171
    i32 3072, label %191
    i32 20992, label %191
    i32 26624, label %191
    i32 12288, label %200
    i32 23552, label %220
    i32 13312, label %274
    i32 22016, label %274
  ]

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %74 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %73) #25
  %75 = fcmp ogt float %74, 2.400000e+01
  br i1 %75, label %76, label %274

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %78 = load ptr, ptr %77, align 8, !tbaa !121
  %79 = getelementptr inbounds %struct.uiBlock, ptr %78, i64 0, i32 27
  %80 = load i32, ptr %79, align 8, !tbaa !34
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %85 = load ptr, ptr %84, align 8, !tbaa !95
  %86 = icmp eq ptr %85, null
  br i1 %86, label %106, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @RNA_property_type(ptr noundef nonnull %85) #27
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %92 = load ptr, ptr %84, align 8, !tbaa !95
  %93 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %91, ptr noundef %92) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %94 = load ptr, ptr %77, align 8, !tbaa !121
  %95 = getelementptr inbounds %struct.uiBlock, ptr %94, i64 0, i32 48
  %96 = load ptr, ptr %95, align 8, !tbaa !122
  %97 = load ptr, ptr %84, align 8, !tbaa !95
  %98 = call zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef %96, ptr noundef nonnull %91, ptr noundef %97, i32 noundef %93, ptr noundef nonnull %3) #27
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !78
  %103 = load ptr, ptr %3, align 8, !tbaa !64
  %104 = call ptr @BLI_strncpy(ptr noundef %102, ptr noundef %103, i64 noundef 128) #27
  br label %105

105:                                              ; preds = %100, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br label %106

106:                                              ; preds = %83, %87, %105, %76
  %107 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %108 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !78
  %110 = call ptr @BLI_strncpy(ptr noundef nonnull %107, ptr noundef %109, i64 noundef 400) #27
  br label %274

111:                                              ; preds = %70, %70
  %112 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %113 = load ptr, ptr %112, align 8, !tbaa !116
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %274

115:                                              ; preds = %111
  %116 = load double, ptr %2, align 8, !tbaa !114
  %117 = fcmp oeq double %116, 0x7FEFFFFFFFFFFFFF
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi double [ %119, %118 ], [ %116, %115 ]
  %122 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %123 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !78
  %125 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %122, ptr noundef %124, i64 noundef 400) #27
  %126 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %0) #25, !range !67
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %120
  %129 = fcmp oeq double %121, 0x47EFFFFFE0000000
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, ptr %122, i64 %125
  %132 = sub i64 400, %125
  %133 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %131, ptr noundef nonnull @.str.10, i64 noundef %132) #27
  br label %157

134:                                              ; preds = %128
  %135 = fcmp oeq double %121, 0xC7EFFFFFE0000000
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = getelementptr inbounds i8, ptr %122, i64 %125
  %138 = sub i64 400, %125
  %139 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %137, ptr noundef nonnull @.str.11, i64 noundef %138) #27
  br label %157

140:                                              ; preds = %134
  %141 = tail call zeroext i8 @ui_is_but_unit(ptr noundef nonnull %0) #25, !range !67
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %4) #26
  call fastcc void @ui_get_but_string_unit(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 400, double noundef %121, i8 noundef zeroext 1, i32 noundef -1) #25
  %144 = getelementptr inbounds i8, ptr %122, i64 %125
  %145 = sub i64 400, %125
  %146 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %144, ptr noundef nonnull %4, i64 noundef %145) #27
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #26
  br label %157

147:                                              ; preds = %140
  %148 = tail call fastcc i32 @ui_but_float_precision(ptr noundef nonnull %0, double noundef %121) #25
  %149 = getelementptr inbounds i8, ptr %122, i64 %125
  %150 = sub i64 400, %125
  %151 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %149, i64 noundef %150, ptr noundef nonnull @.str.4, i32 noundef %148, double noundef %121) #27
  br label %157

152:                                              ; preds = %120
  %153 = getelementptr inbounds i8, ptr %122, i64 %125
  %154 = sub i64 400, %125
  %155 = fptosi double %121 to i32
  %156 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %153, i64 noundef %154, ptr noundef nonnull @.str.5, i32 noundef %155) #27
  br label %157

157:                                              ; preds = %130, %143, %147, %136, %152
  %158 = phi i64 [ %133, %130 ], [ %139, %136 ], [ %146, %143 ], [ %151, %147 ], [ %156, %152 ]
  %159 = add i64 %158, %125
  %160 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %161 = load ptr, ptr %160, align 8, !tbaa !95
  %162 = icmp eq ptr %161, null
  br i1 %162, label %274, label %163

163:                                              ; preds = %157
  %164 = call i32 @RNA_property_subtype(ptr noundef nonnull %161) #27
  switch i32 %164, label %274 [
    i32 14, label %166
    i32 12, label %165
  ]

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %163, %165
  %167 = phi ptr [ @.str.12, %163 ], [ @.str.13, %165 ]
  %168 = getelementptr inbounds i8, ptr %122, i64 %159
  %169 = sub i64 400, %159
  %170 = call ptr @BLI_strncpy(ptr noundef nonnull %168, ptr noundef nonnull %167, i64 noundef %169) #27
  br label %274

171:                                              ; preds = %70
  %172 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %0) #25, !range !67
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %171
  %175 = load double, ptr %2, align 8, !tbaa !114
  %176 = fcmp oeq double %175, 0x7FEFFFFFFFFFFFFF
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi double [ %178, %177 ], [ %175, %174 ]
  %181 = tail call fastcc i32 @ui_but_float_precision(ptr noundef nonnull %0, double noundef %180) #25
  %182 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %183 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %184 = load ptr, ptr %183, align 8, !tbaa !78
  %185 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %182, i64 noundef 400, ptr noundef nonnull @.str.14, ptr noundef %184, i32 noundef %181, double noundef %180) #27
  br label %274

186:                                              ; preds = %171
  %187 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %188 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %189 = load ptr, ptr %188, align 8, !tbaa !78
  %190 = tail call ptr @BLI_strncpy(ptr noundef nonnull %187, ptr noundef %189, i64 noundef 400) #27
  br label %274

191:                                              ; preds = %70, %70, %70
  %192 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %193 = load ptr, ptr %192, align 8, !tbaa !116
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %274

195:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #26
  call void @ui_get_but_string(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 400) #25
  %196 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %197 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %198 = load ptr, ptr %197, align 8, !tbaa !78
  %199 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %196, i64 noundef 400, ptr noundef nonnull @.str.15, ptr noundef %198, ptr noundef nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #26
  br label %274

200:                                              ; preds = %70
  %201 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !112
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load double, ptr %2, align 8, !tbaa !114
  %207 = fcmp oeq double %206, 0x7FEFFFFFFFFFFFFF
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  br label %210

210:                                              ; preds = %208, %205
  %211 = phi double [ %209, %208 ], [ %206, %205 ]
  %212 = fptosi double %211 to i16
  %213 = tail call ptr @WM_key_event_string(i16 noundef signext %212) #27
  br label %214

214:                                              ; preds = %200, %210
  %215 = phi ptr [ %213, %210 ], [ @.str.16, %200 ]
  %216 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %217 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %218 = load ptr, ptr %217, align 8, !tbaa !78
  %219 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %216, i64 noundef 400, ptr noundef nonnull @.str.15, ptr noundef %218, ptr noundef %215) #27
  br label %274

220:                                              ; preds = %70
  %221 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %222 = load i32, ptr %221, align 8, !tbaa !112
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %264, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 50
  %227 = load i16, ptr %226, align 2, !tbaa !123
  %228 = icmp eq i16 %227, 0
  %229 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  br i1 %228, label %262, label %230

230:                                              ; preds = %225
  store i8 0, ptr %229, align 8, !tbaa !113
  %231 = and i16 %227, 1
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %230
  %234 = tail call i64 @BLI_strcpy_rlen(ptr noundef nonnull %229, ptr noundef nonnull @.str.17) #27
  %235 = getelementptr inbounds i8, ptr %229, i64 %234
  %236 = load i16, ptr %226, align 2, !tbaa !123
  br label %237

237:                                              ; preds = %233, %230
  %238 = phi i16 [ %236, %233 ], [ %227, %230 ]
  %239 = phi ptr [ %235, %233 ], [ %229, %230 ]
  %240 = and i16 %238, 2
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %237
  %243 = tail call i64 @BLI_strcpy_rlen(ptr noundef nonnull %239, ptr noundef nonnull @.str.18) #27
  %244 = getelementptr inbounds i8, ptr %239, i64 %243
  %245 = load i16, ptr %226, align 2, !tbaa !123
  br label %246

246:                                              ; preds = %242, %237
  %247 = phi i16 [ %245, %242 ], [ %238, %237 ]
  %248 = phi ptr [ %244, %242 ], [ %239, %237 ]
  %249 = and i16 %247, 4
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %246
  %252 = tail call i64 @BLI_strcpy_rlen(ptr noundef %248, ptr noundef nonnull @.str.19) #27
  %253 = getelementptr inbounds i8, ptr %248, i64 %252
  %254 = load i16, ptr %226, align 2, !tbaa !123
  br label %255

255:                                              ; preds = %251, %246
  %256 = phi i16 [ %254, %251 ], [ %247, %246 ]
  %257 = phi ptr [ %253, %251 ], [ %248, %246 ]
  %258 = and i16 %256, 8
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %255
  %261 = tail call i64 @BLI_strcpy_rlen(ptr noundef %257, ptr noundef nonnull @.str.20) #27
  br label %274

262:                                              ; preds = %225
  %263 = tail call ptr @BLI_strncpy(ptr noundef nonnull %229, ptr noundef nonnull @.str.16, i64 noundef 400) #27
  br label %274

264:                                              ; preds = %220
  %265 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %266 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %267 = load ptr, ptr %266, align 8, !tbaa !78
  %268 = tail call ptr @BLI_strncpy(ptr noundef nonnull %265, ptr noundef %267, i64 noundef 400) #27
  br label %274

269:                                              ; preds = %70
  %270 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %271 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %272 = load ptr, ptr %271, align 8, !tbaa !78
  %273 = tail call ptr @BLI_strncpy(ptr noundef nonnull %270, ptr noundef %272, i64 noundef 400) #27
  br label %274

274:                                              ; preds = %163, %157, %255, %260, %166, %70, %70, %264, %262, %191, %195, %179, %186, %111, %72, %106, %269, %214
  %275 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %276 = load ptr, ptr %275, align 8, !tbaa !116
  %277 = icmp eq ptr %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  store i8 0, ptr %279, align 8, !tbaa !113
  br label %280

280:                                              ; preds = %278, %274
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %10, ptr %3, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 5
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #25, !range !67
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @UI_butstore_update(ptr noundef nonnull %1) #27
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  store ptr %17, ptr %4, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %24
  %20 = call fastcc zeroext i8 @ui_but_update_from_old_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !67
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %4, align 8, !tbaa !64
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  tail call void @ui_check_but(ptr noundef %22) #25
  br label %24

24:                                               ; preds = %19, %23
  %25 = load ptr, ptr %22, align 8, !tbaa !64
  store ptr %25, ptr %4, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19, !llvm.loop !124

27:                                               ; preds = %24, %15
  %28 = load ptr, ptr %5, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 31
  %30 = load i8, ptr %29, align 8, !tbaa !125
  %31 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 31
  store i8 %30, ptr %31, align 8, !tbaa !125
  %32 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 33
  %33 = load double, ptr %32, align 8, !tbaa !126
  %34 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 33
  store double %33, ptr %34, align 8, !tbaa !126
  %35 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 37
  %36 = load i8, ptr %35, align 2, !tbaa !127
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 37
  store i8 %36, ptr %37, align 2, !tbaa !127
  %38 = tail call ptr @ui_block_hsv_get(ptr noundef %1) #27
  %39 = load ptr, ptr %5, align 8, !tbaa !105
  %40 = tail call ptr @ui_block_hsv_get(ptr noundef %39) #27
  tail call fastcc void @copy_v3_v3(ptr noundef %38, ptr noundef %40) #25
  store ptr null, ptr %5, align 8, !tbaa !105
  br label %41

41:                                               ; preds = %2, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @UI_butstore_update(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_but_update_from_old_block(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #6 !PGOFuncName !128 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = load ptr, ptr %2, align 8, !tbaa !64
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc zeroext i8 @ui_but_equals_old(ptr noundef %7, ptr noundef nonnull %8) #25, !range !67
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4, %10
  %14 = tail call ptr @ui_but_find_old(ptr noundef %6, ptr noundef %7) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %14, %13 ], [ %8, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  store ptr %18, ptr %3, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 67
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, null
  br i1 %21, label %83, label %23

22:                                               ; preds = %13
  store ptr null, ptr %3, align 8, !tbaa !64
  br label %92

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %17) #27
  %25 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %25, ptr noundef %7, ptr noundef nonnull %17) #27
  %26 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 74
  store ptr %1, ptr %26, align 8, !tbaa !121
  store ptr %17, ptr %2, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 18
  %28 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !60
  %29 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 32
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  %31 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 32
  store ptr %30, ptr %31, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 44
  %33 = load i32, ptr %32, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %33, ptr %34, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 51
  %36 = load i16, ptr %35, align 4, !tbaa !120
  %37 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 51
  store i16 %36, ptr %37, align 4, !tbaa !120
  %38 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 10
  %39 = load i16, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 10
  store i16 %39, ptr %40, align 8, !tbaa !132
  %41 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = icmp eq ptr %42, %17
  br i1 %43, label %51, label %44

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  store ptr %46, ptr %41, align 8, !tbaa !101
  store ptr %42, ptr %45, align 8, !tbaa !101
  %47 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 31
  %48 = load ptr, ptr %47, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 31
  %50 = load ptr, ptr %49, align 8, !tbaa !109
  store ptr %50, ptr %47, align 8, !tbaa !109
  store ptr %48, ptr %49, align 8, !tbaa !109
  br label %51

51:                                               ; preds = %44, %23
  %52 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !112
  %54 = and i32 %53, -65537
  %55 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !112
  %57 = and i32 %56, 65536
  %58 = or disjoint i32 %57, %54
  store i32 %58, ptr %52, align 8, !tbaa !112
  %59 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !111
  switch i32 %60, label %65 [
    i32 1024, label %61
    i32 18432, label %61
  ]

61:                                               ; preds = %51, %51
  %62 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 21
  %63 = load float, ptr %62, align 4, !tbaa !119
  %64 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 21
  store float %63, ptr %64, align 4, !tbaa !119
  br label %65

65:                                               ; preds = %51, %61
  tail call fastcc void @ui_but_update_linklines(ptr noundef nonnull %1, ptr noundef nonnull %17, ptr noundef nonnull %7) #25
  %66 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !78
  %68 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 16
  %69 = icmp eq ptr %67, %68
  %70 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !78
  %72 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 16
  %73 = icmp eq ptr %71, %72
  br i1 %69, label %77, label %74

74:                                               ; preds = %65
  br i1 %73, label %76, label %75

75:                                               ; preds = %74
  store ptr %71, ptr %66, align 8, !tbaa !78
  store ptr %67, ptr %70, align 8, !tbaa !78
  br label %82

76:                                               ; preds = %74
  store ptr %67, ptr %70, align 8, !tbaa !78
  store ptr %68, ptr %66, align 8, !tbaa !78
  br label %82

77:                                               ; preds = %65
  br i1 %73, label %80, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %79(ptr noundef %71) #27
  store ptr %72, ptr %70, align 8, !tbaa !78
  br label %80

80:                                               ; preds = %78, %77
  %81 = tail call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef nonnull %67, i64 noundef 128) #27
  br label %82

82:                                               ; preds = %75, %76, %80
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %7) #27
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef nonnull %7) #25
  br label %92

83:                                               ; preds = %16
  %84 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !112
  %86 = and i32 %85, -33554433
  %87 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !112
  %89 = and i32 %88, 33554432
  %90 = or disjoint i32 %89, %86
  store i32 %90, ptr %84, align 8, !tbaa !112
  %91 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %91, ptr noundef nonnull %17) #27
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef nonnull %17) #25
  br label %92

92:                                               ; preds = %82, %83, %22
  %93 = phi i8 [ 0, %22 ], [ 1, %82 ], [ 0, %83 ]
  ret i8 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !133 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  store float %3, ptr %0, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare ptr @ui_block_hsv_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiEndBlock_ex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #27
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #27
  tail call void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %1) #25
  %6 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, null
  %11 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  br label %12

12:                                               ; preds = %9, %40
  %13 = phi ptr [ %7, %9 ], [ %42, %40 ]
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 59
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 32
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef nonnull %19) #27
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 61
  %24 = load i16, ptr %23, align 8, !tbaa !134
  %25 = tail call i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef nonnull %15, i16 noundef signext %24) #27
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !112
  %30 = or i32 %29, 2048
  store i32 %30, ptr %28, align 8, !tbaa !112
  %31 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 45
  store i8 1, ptr %31, align 4, !tbaa !135
  br label %32

32:                                               ; preds = %27, %22
  %33 = load ptr, ptr %18, align 8, !tbaa !130
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef null) #27
  br label %36

36:                                               ; preds = %32, %35, %12
  br i1 %10, label %40, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %11, align 8, !tbaa !136
  %39 = sitofp i32 %38 to float
  br label %40

40:                                               ; preds = %36, %37
  %41 = phi float [ %39, %37 ], [ 0.000000e+00, %36 ]
  tail call void @ui_but_anim_flag(ptr noundef nonnull %13, float noundef %41) #27
  %42 = load ptr, ptr %13, align 8, !tbaa !64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %12, !llvm.loop !155

44:                                               ; preds = %40, %3
  %45 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !156
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @uiBlockLayoutResolve(ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #27
  br label %49

49:                                               ; preds = %48, %44
  tail call void @ui_block_do_align(ptr noundef nonnull %1) #25
  %50 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %51 = load i32, ptr %50, align 8, !tbaa !34
  %52 = and i32 %51, 9
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  tail call fastcc void @ui_menu_block_set_keyaccels(ptr noundef nonnull %1) #25
  %55 = load i32, ptr %50, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi i32 [ %55, %54 ], [ %51, %49 ]
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call fastcc void @ui_menu_block_set_keymaps(ptr noundef %0, ptr noundef nonnull %1) #25
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 39
  %63 = load i32, ptr %62, align 4, !tbaa !88
  switch i32 %63, label %69 [
    i32 4, label %68
    i32 1, label %64
    i32 2, label %65
    i32 5, label %66
    i32 6, label %67
    i32 3, label %68
  ]

64:                                               ; preds = %61
  tail call void @ui_bounds_block(ptr noundef nonnull %1) #25
  br label %69

65:                                               ; preds = %61
  tail call fastcc void @ui_text_bounds_block(ptr noundef nonnull %1, float noundef 0.000000e+00) #25
  br label %69

66:                                               ; preds = %61
  tail call fastcc void @ui_centered_bounds_block(ptr noundef %4, ptr noundef nonnull %1) #25
  br label %69

67:                                               ; preds = %61
  tail call fastcc void @ui_centered_pie_bounds_block(ptr noundef nonnull %1) #25
  br label %69

68:                                               ; preds = %61, %61
  tail call fastcc void @ui_popup_bounds_block(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %63, ptr noundef %2) #25
  br label %69

69:                                               ; preds = %61, %68, %67, %66, %65, %64
  %70 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %71 = load float, ptr %70, align 8, !tbaa !68
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !70
  %76 = fcmp oeq float %75, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @uiBoundsBlock(ptr noundef nonnull %1, i32 noundef 0) #25
  br label %78

78:                                               ; preds = %77, %73, %69
  %79 = load i32, ptr %50, align 8, !tbaa !34
  %80 = and i32 %79, 245760
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @uiBlockEndAlign(ptr noundef nonnull %1) #25
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 38
  store i8 1, ptr %84, align 1, !tbaa !157
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CTX_store_set(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @WM_operator_poll_context(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_but_anim_flag(ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_do_align(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 8, !tbaa !132
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  tail call fastcc void @ui_block_do_align_but(ptr noundef nonnull %6, i16 noundef signext %8) #25
  br label %11

11:                                               ; preds = %10, %16
  %12 = phi ptr [ %6, %10 ], [ %17, %16 ]
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 10
  %14 = load i16, ptr %13, align 8, !tbaa !132
  %15 = icmp eq i16 %14, %8
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !129
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %11, !llvm.loop !158

19:                                               ; preds = %5
  %20 = load ptr, ptr %6, align 8, !tbaa !129
  br label %21

21:                                               ; preds = %11, %19
  %22 = phi ptr [ %20, %19 ], [ %12, %11 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !159

24:                                               ; preds = %21, %16, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_menu_block_set_keyaccels(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  %3 = load float, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !70
  %6 = fcmp une float %3, %5
  br i1 %6, label %95, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %90, %7
  %12 = phi i32 [ 0, %7 ], [ %92, %90 ]
  %13 = phi i32 [ 0, %7 ], [ %91, %90 ]
  %14 = phi i1 [ true, %7 ], [ false, %90 ]
  br i1 %10, label %90, label %15

15:                                               ; preds = %11, %85
  %16 = phi ptr [ %88, %85 ], [ %9, %11 ]
  %17 = phi i32 [ %87, %85 ], [ %12, %11 ]
  %18 = phi i32 [ %86, %85 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !111
  switch i32 %20, label %85 [
    i32 512, label %21
    i32 10240, label %21
    i32 5632, label %21
    i32 9728, label %21
    i32 13824, label %21
  ]

21:                                               ; preds = %15, %15, %15, %15, %15
  %22 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !112
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %85

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 62
  %28 = load i8, ptr %27, align 2, !tbaa !161
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %85

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  %33 = icmp eq ptr %32, null
  br i1 %33, label %85, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %32, align 1, !tbaa !113
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %79, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @__ctype_tolower_loc() #29
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  br label %40

40:                                               ; preds = %37, %72
  %41 = phi i8 [ %35, %37 ], [ %74, %72 ]
  %42 = phi ptr [ %32, %37 ], [ %73, %72 ]
  %43 = zext i8 %41 to i64
  %44 = getelementptr inbounds i32, ptr %39, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, -97
  %48 = icmp ult i32 %47, 26
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = shl nuw nsw i32 1, %47
  %51 = and i32 %50, %17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %49, %40
  br i1 %14, label %54, label %70

54:                                               ; preds = %53
  %55 = tail call ptr @__ctype_b_loc() #29
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi ptr [ %65, %57 ], [ %42, %54 ]
  %59 = load i8, ptr %58, align 1, !tbaa !113
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %56, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !162
  %63 = and i16 %62, 1024
  %64 = icmp eq i16 %63, 0
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %64, label %66, label %57, !llvm.loop !163

66:                                               ; preds = %57
  %67 = icmp ne i8 %59, 0
  %68 = zext i1 %67 to i64
  %69 = getelementptr inbounds i8, ptr %58, i64 %68
  br label %72

70:                                               ; preds = %53
  %71 = getelementptr inbounds i8, ptr %42, i64 1
  br label %72

72:                                               ; preds = %66, %70
  %73 = phi ptr [ %71, %70 ], [ %69, %66 ]
  %74 = load i8, ptr %73, align 1, !tbaa !113
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %40, !llvm.loop !164

76:                                               ; preds = %49
  %77 = trunc i32 %45 to i8
  %78 = or i32 %50, %17
  store i8 %77, ptr %27, align 2, !tbaa !161
  br label %81

79:                                               ; preds = %72, %34
  %80 = add nsw i32 %18, 1
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %78, %76 ], [ %17, %79 ]
  %83 = phi i32 [ %18, %76 ], [ %80, %79 ]
  %84 = icmp eq i32 %82, 67108863
  br i1 %84, label %95, label %85

85:                                               ; preds = %15, %21, %30, %81, %26
  %86 = phi i32 [ %18, %21 ], [ %83, %81 ], [ %18, %30 ], [ %18, %26 ], [ %18, %15 ]
  %87 = phi i32 [ %17, %21 ], [ %82, %81 ], [ %17, %30 ], [ %17, %26 ], [ %17, %15 ]
  %88 = load ptr, ptr %16, align 8, !tbaa !64
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %15, !llvm.loop !165

90:                                               ; preds = %85, %11
  %91 = phi i32 [ %13, %11 ], [ %86, %85 ]
  %92 = phi i32 [ %12, %11 ], [ %87, %85 ]
  %93 = icmp ne i32 %91, 0
  %94 = and i1 %93, %14
  br i1 %94, label %11, label %95, !llvm.loop !166

95:                                               ; preds = %90, %81, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_menu_block_set_keymaps(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !167 {
  %3 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = fcmp une float %5, %7
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %13, label %27, label %17

17:                                               ; preds = %9
  br i1 %16, label %39, label %18

18:                                               ; preds = %17, %24
  %19 = phi ptr [ %25, %24 ], [ %15, %17 ]
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 47
  %21 = load i8, ptr %20, align 2, !tbaa !168
  %22 = icmp eq i8 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call fastcc void @ui_but_pie_direction_string(ptr noundef nonnull %19, ptr noundef nonnull %3) #25
  call void @ui_but_add_shortcut(ptr noundef nonnull %19, ptr noundef nonnull %3, i8 noundef zeroext 0) #25
  br label %24

24:                                               ; preds = %18, %23
  %25 = load ptr, ptr %19, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %18, !llvm.loop !169

27:                                               ; preds = %9
  br i1 %16, label %39, label %28

28:                                               ; preds = %27, %36
  %29 = phi ptr [ %37, %36 ], [ %15, %27 ]
  %30 = call fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %3) #25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call fastcc zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %3) #25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %28
  call void @ui_but_add_shortcut(ptr noundef nonnull %29, ptr noundef nonnull %3, i8 noundef zeroext 0) #25
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %29, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !llvm.loop !170

39:                                               ; preds = %24, %36, %17, %27, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_bounds_block(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !171 {
  %3 = tail call ptr @UI_GetStyle() #27
  %4 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %4) #27
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %92, label %8

8:                                                ; preds = %2
  %9 = fptosi float %1 to i32
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  br label %21

11:                                               ; preds = %35, %73
  %12 = phi ptr [ %75, %73 ], [ %25, %35 ]
  %13 = phi i32 [ %76, %73 ], [ %36, %35 ]
  %14 = phi i32 [ %77, %73 ], [ %22, %35 ]
  %15 = icmp eq ptr %12, null
  br i1 %15, label %92, label %16

16:                                               ; preds = %11
  %17 = sitofp i32 %14 to float
  %18 = add nsw i32 %14, %13
  %19 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  %20 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 43
  br label %79

21:                                               ; preds = %8, %73
  %22 = phi i32 [ %9, %8 ], [ %77, %73 ]
  %23 = phi ptr [ %6, %8 ], [ %74, %73 ]
  %24 = phi i32 [ 0, %8 ], [ %76, %73 ]
  %25 = phi ptr [ %6, %8 ], [ %75, %73 ]
  %26 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !111
  switch i32 %27, label %28 [
    i32 10752, label %35
    i32 27648, label %35
  ]

28:                                               ; preds = %21
  %29 = load i16, ptr %4, align 8, !tbaa !172
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 17
  %32 = tail call float @BLF_width(i32 noundef %30, ptr noundef nonnull %31, i64 noundef 400) #27
  %33 = fptosi float %32 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %24, i32 %33)
  br label %35

35:                                               ; preds = %28, %21, %21
  %36 = phi i32 [ %24, %21 ], [ %24, %21 ], [ %34, %28 ]
  %37 = load ptr, ptr %23, align 8, !tbaa !129
  %38 = icmp eq ptr %37, null
  br i1 %38, label %11, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 18
  %41 = load float, ptr %40, align 8, !tbaa !175
  %42 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 18
  %43 = load float, ptr %42, align 8, !tbaa !175
  %44 = fcmp olt float %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.uiBut, ptr %25, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !176
  %48 = icmp eq ptr %47, %23
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = add i32 %36, %22
  br label %67

51:                                               ; preds = %45
  %52 = sitofp i32 %22 to float
  %53 = add i32 %36, %22
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %25, %51 ], [ %61, %54 ]
  %56 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 18
  store float %52, ptr %56, align 8, !tbaa !175
  %57 = load i32, ptr %10, align 8, !tbaa !75
  %58 = add nsw i32 %53, %57
  %59 = sitofp i32 %58 to float
  %60 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 18, i32 1
  store float %59, ptr %60, align 4, !tbaa !177
  tail call void @ui_check_but(ptr noundef nonnull %55) #25
  %61 = load ptr, ptr %55, align 8, !tbaa !129
  %62 = getelementptr inbounds %struct.uiBut, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !176
  %64 = icmp eq ptr %63, %23
  br i1 %64, label %65, label %54, !llvm.loop !178

65:                                               ; preds = %54
  %66 = load ptr, ptr %23, align 8, !tbaa !129
  br label %67

67:                                               ; preds = %49, %65
  %68 = phi i32 [ %50, %49 ], [ %53, %65 ]
  %69 = phi ptr [ %37, %49 ], [ %66, %65 ]
  %70 = phi ptr [ %25, %49 ], [ %61, %65 ]
  %71 = load i32, ptr %10, align 8, !tbaa !75
  %72 = add i32 %68, %71
  br label %73

73:                                               ; preds = %39, %67
  %74 = phi ptr [ %69, %67 ], [ %37, %39 ]
  %75 = phi ptr [ %70, %67 ], [ %25, %39 ]
  %76 = phi i32 [ 0, %67 ], [ %36, %39 ]
  %77 = phi i32 [ %72, %67 ], [ %22, %39 ]
  %78 = icmp eq ptr %74, null
  br i1 %78, label %11, label %21, !llvm.loop !179

79:                                               ; preds = %16, %79
  %80 = phi ptr [ %12, %16 ], [ %90, %79 ]
  %81 = getelementptr inbounds %struct.uiBut, ptr %80, i64 0, i32 18
  store float %17, ptr %81, align 8, !tbaa !175
  %82 = load i32, ptr %19, align 8, !tbaa !75
  %83 = add nsw i32 %18, %82
  %84 = sitofp i32 %83 to float
  %85 = load i32, ptr %20, align 4, !tbaa !76
  %86 = sitofp i32 %85 to float
  %87 = fadd float %86, %1
  %88 = tail call fastcc float @max_ff(float noundef %84, float noundef %87) #25
  %89 = getelementptr inbounds %struct.uiBut, ptr %80, i64 0, i32 18, i32 1
  store float %88, ptr %89, align 4, !tbaa !177
  tail call void @ui_check_but(ptr noundef nonnull %80) #25
  %90 = load ptr, ptr %80, align 8, !tbaa !129
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %79, !llvm.loop !180

92:                                               ; preds = %79, %2, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_centered_bounds_block(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !181 {
  %3 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #27
  %4 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #27
  tail call void @ui_bounds_block(ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %6 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #25
  %7 = fptosi float %6 to i32
  %8 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #25
  %9 = fptosi float %8 to i32
  %10 = sitofp i32 %3 to float
  %11 = sitofp i32 %7 to float
  %12 = fmul float %11, -5.000000e-01
  %13 = tail call float @llvm.fmuladd.f32(float %10, float 5.000000e-01, float %12)
  %14 = fptosi float %13 to i32
  %15 = sitofp i32 %4 to float
  %16 = sitofp i32 %9 to float
  %17 = fmul float %16, -5.000000e-01
  %18 = tail call float @llvm.fmuladd.f32(float %15, float 5.000000e-01, float %17)
  %19 = fptosi float %18 to i32
  %20 = sitofp i32 %14 to float
  %21 = load float, ptr %5, align 8, !tbaa !68
  %22 = fsub float %20, %21
  %23 = fptosi float %22 to i32
  %24 = sitofp i32 %19 to float
  %25 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !71
  %27 = fsub float %24, %26
  %28 = fptosi float %27 to i32
  tail call void @ui_block_translate(ptr noundef %1, i32 noundef %23, i32 noundef %28) #25
  tail call void @ui_bounds_block(ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_centered_pie_bounds_block(ptr noundef %0) unnamed_addr #6 !PGOFuncName !182 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2
  %3 = load float, ptr %2, align 8, !tbaa !51
  %4 = fptosi float %3 to i32
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = fptosi float %6 to i32
  tail call void @ui_block_translate(ptr noundef %0, i32 noundef %4, i32 noundef %7) #25
  tail call void @ui_bounds_block(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_popup_bounds_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #6 !PGOFuncName !183 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 42
  %6 = load i32, ptr %5, align 8, !tbaa !75
  tail call void @ui_bounds_block(ptr noundef %1) #25
  %7 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #27
  %8 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #27
  %9 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %10 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %9) #25
  %11 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %9) #25
  %12 = icmp eq i32 %2, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !184
  %20 = sitofp i16 %19 to float
  %21 = fmul float %20, 2.500000e+00
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %5, align 8, !tbaa !75
  %23 = load float, ptr %9, align 8, !tbaa !68
  tail call fastcc void @ui_text_bounds_block(ptr noundef nonnull %1, float noundef %23) #25
  br label %24

24:                                               ; preds = %13, %18, %4
  %25 = fptosi float %11 to i32
  %26 = fptosi float %10 to i32
  store i32 %6, ptr %5, align 8, !tbaa !75
  tail call void @ui_bounds_block(ptr noundef nonnull %1) #25
  %27 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %9) #25
  %28 = fptosi float %27 to i32
  %29 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %9) #25
  %30 = fptosi float %29 to i32
  %31 = icmp sgt i32 %26, 0
  %32 = tail call i32 @llvm.smax.i32(i32 %28, i32 1)
  %33 = select i1 %31, i32 %26, i32 %32
  %34 = icmp sgt i32 %25, 0
  %35 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  %36 = select i1 %34, i32 %25, i32 %35
  %37 = load i32, ptr %3, align 4, !tbaa !53
  %38 = sitofp i32 %37 to float
  %39 = load float, ptr %9, align 8, !tbaa !68
  %40 = fadd float %39, %38
  %41 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 40
  %42 = load i32, ptr %41, align 8, !tbaa !89
  %43 = mul nsw i32 %42, %28
  %44 = sdiv i32 %43, %33
  %45 = sitofp i32 %44 to float
  %46 = fadd float %40, %45
  %47 = fptosi float %46 to i32
  %48 = getelementptr inbounds i32, ptr %3, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !71
  %53 = fadd float %52, %50
  %54 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 41
  %55 = load i32, ptr %54, align 4, !tbaa !90
  %56 = mul nsw i32 %55, %30
  %57 = sdiv i32 %56, %36
  %58 = sitofp i32 %57 to float
  %59 = fadd float %53, %58
  %60 = fptosi float %59 to i32
  %61 = tail call i32 @llvm.smax.i32(i32 %47, i32 10)
  %62 = tail call i32 @llvm.smax.i32(i32 %60, i32 10)
  %63 = add nsw i32 %61, %28
  %64 = add nsw i32 %62, %30
  %65 = icmp sgt i32 %63, %7
  %66 = add nsw i32 %7, -10
  %67 = sub i32 %66, %28
  %68 = select i1 %65, i32 %67, i32 %61
  %69 = add nsw i32 %8, -10
  %70 = icmp sgt i32 %64, %69
  %71 = sub nsw i32 %69, %30
  %72 = select i1 %70, i32 %71, i32 %62
  %73 = sitofp i32 %68 to float
  %74 = fsub float %73, %39
  %75 = fptosi float %74 to i32
  %76 = sitofp i32 %72 to float
  %77 = fsub float %76, %52
  %78 = fptosi float %77 to i32
  tail call void @ui_block_translate(ptr noundef nonnull %1, i32 noundef %75, i32 noundef %78) #25
  tail call void @ui_bounds_block(ptr noundef nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockEndAlign(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, -245761
  store i32 %4, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiEndBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #27
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 4
  tail call void @uiEndBlock_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_fontscale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = fcmp olt float %1, 0x3FECCCCCC0000000
  %4 = fcmp ogt float %1, 0x3FF19999A0000000
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !162
  %8 = sitofp i16 %7 to float
  %9 = fdiv float %8, %1
  %10 = fcmp ogt float %1, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call float @llvm.ceil.f32(float %9)
  br label %15

13:                                               ; preds = %6
  %14 = tail call float @llvm.floor.f32(float %9)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi float [ %14, %13 ], [ %12, %11 ]
  %17 = fptosi float %16 to i16
  store i16 %17, ptr %0, align 2, !tbaa !162
  br label %18

18:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.uiStyle, align 8
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #26
  %5 = tail call ptr @UI_GetStyleDraw() #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(232) %5, i64 232, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  %6 = tail call ptr @CTX_wm_menu(ptr noundef %0) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #27
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %6, %2 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 38
  %13 = load i8, ptr %12, align 1, !tbaa !157
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef nonnull %1) #25
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #27
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @glDisable(i32 noundef 32925) #27
  br label %20

20:                                               ; preds = %19, %16
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #27
  %21 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !191
  call void @ui_fontscale(ptr noundef nonnull %21, float noundef %23) #25
  %24 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 4, i32 1
  call void @ui_fontscale(ptr noundef nonnull %24, float noundef %23) #25
  %25 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 5, i32 1
  call void @ui_fontscale(ptr noundef nonnull %25, float noundef %23) #25
  %26 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 6, i32 1
  call void @ui_fontscale(ptr noundef nonnull %26, float noundef %23) #25
  call fastcc void @ui_but_to_pixelrect(ptr noundef nonnull %4, ptr noundef %11, ptr noundef nonnull %1, ptr noundef null) #25
  tail call void @glMatrixMode(i32 noundef 5889) #27
  tail call void @glPushMatrix() #27
  tail call void @glMatrixMode(i32 noundef 5888) #27
  tail call void @glPushMatrix() #27
  tail call void @glLoadIdentity() #27
  tail call void @wmOrtho2_region_ui(ptr noundef %11) #27
  %27 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  tail call void @ui_draw_pie_center(ptr noundef nonnull %1) #27
  br label %42

32:                                               ; preds = %20
  %33 = and i32 %28, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @ui_draw_menu_back(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #27
  br label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %11) #27
  call void @ui_draw_aligned_panel(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext %41) #27
  br label %42

42:                                               ; preds = %35, %40, %36, %31
  %43 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %48 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %49 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  br label %50

50:                                               ; preds = %46, %65
  %51 = phi ptr [ %44, %46 ], [ %66, %65 ]
  %52 = getelementptr inbounds %struct.uiBut, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !112
  %54 = and i32 %53, 34
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  call fastcc void @ui_but_to_pixelrect(ptr noundef nonnull %4, ptr noundef %11, ptr noundef %1, ptr noundef nonnull %51) #25
  %57 = load i32, ptr %4, align 4, !tbaa !56
  %58 = load i32, ptr %47, align 4, !tbaa !55
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, ptr %48, align 4, !tbaa !59
  %62 = load i32, ptr %49, align 4, !tbaa !58
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call void @ui_draw_but(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef nonnull %4) #27
  br label %65

65:                                               ; preds = %50, %64, %60, %56
  %66 = load ptr, ptr %51, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !192

68:                                               ; preds = %65, %42
  call void @glMatrixMode(i32 noundef 5889) #27
  call void @glPopMatrix() #27
  call void @glMatrixMode(i32 noundef 5888) #27
  call void @glPopMatrix() #27
  br i1 %18, label %70, label %69

69:                                               ; preds = %68
  call void @glEnable(i32 noundef 32925) #27
  br label %70

70:                                               ; preds = %69, %68
  call fastcc void @ui_draw_links(ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetStyleDraw() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_but_to_pixelrect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #14 !PGOFuncName !193 {
  %5 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  %6 = icmp eq ptr %3, null
  %7 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 18
  %8 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 11
  %9 = select i1 %6, ptr %8, ptr %7
  call void @ui_block_to_window_rctf(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %9) #25
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !50
  %14 = insertelement <2 x i32> poison, i32 %11, i64 0
  %15 = insertelement <2 x i32> %14, i32 %13, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x float>
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %18 = load <4 x float>, ptr %5, align 16, !tbaa !51
  %19 = fsub <4 x float> %18, %17
  %20 = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %19)
  %21 = fptosi <4 x float> %20 to <4 x i32>
  store <4 x i32> %21, ptr %0, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #7

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #7

; Function Attrs: optsize
declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_draw_pie_center(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_draw_menu_back(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_draw_aligned_panel(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @UI_panel_category_is_visible(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_draw_but(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #7

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_links(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !194 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %151, label %11

5:                                                ; preds = %68
  %6 = load ptr, ptr %2, align 8, !tbaa !64
  %7 = icmp eq i8 %70, 0
  %8 = icmp eq i8 %69, 0
  %9 = zext i1 %8 to i32
  %10 = icmp eq ptr %6, null
  br i1 %10, label %112, label %73

11:                                               ; preds = %1, %68
  %12 = phi ptr [ %71, %68 ], [ %3, %1 ]
  %13 = phi i8 [ %70, %68 ], [ 0, %1 ]
  %14 = phi i8 [ %69, %68 ], [ 0, %1 ]
  %15 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !111
  %17 = icmp eq i32 %16, 11264
  br i1 %17, label %18, label %68

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 40
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = icmp eq ptr %20, null
  br i1 %21, label %68, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uiLink, ptr %20, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26

26:                                               ; preds = %22, %64
  %27 = phi ptr [ %66, %64 ], [ %24, %22 ]
  %28 = phi i8 [ %53, %64 ], [ %13, %22 ]
  %29 = phi i8 [ %65, %64 ], [ %14, %22 ]
  %30 = getelementptr inbounds %struct.uiLinkLine, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !195
  %32 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !112
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.uiLinkLine, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !197
  %39 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !112
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.uiLinkLine, ptr %27, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !198
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  tail call fastcc void @ui_draw_linkline(ptr noundef nonnull %27, i32 noundef 0, i32 noundef 1) #25
  %48 = load ptr, ptr %30, align 8, !tbaa !195
  %49 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !112
  br label %51

51:                                               ; preds = %26, %36, %43, %47
  %52 = phi i32 [ %50, %47 ], [ %33, %43 ], [ %33, %36 ], [ %33, %26 ]
  %53 = phi i8 [ %28, %47 ], [ %28, %43 ], [ 1, %36 ], [ 1, %26 ]
  %54 = and i32 %52, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.uiLinkLine, ptr %27, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  %59 = getelementptr inbounds %struct.uiBut, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !112
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %56, %63
  %65 = phi i8 [ 1, %63 ], [ %29, %56 ]
  %66 = load ptr, ptr %27, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %26, !llvm.loop !199

68:                                               ; preds = %64, %22, %11, %18
  %69 = phi i8 [ %14, %18 ], [ %14, %11 ], [ %14, %22 ], [ %65, %64 ]
  %70 = phi i8 [ %13, %18 ], [ %13, %11 ], [ %13, %22 ], [ %53, %64 ]
  %71 = load ptr, ptr %12, align 8, !tbaa !64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %5, label %11, !llvm.loop !200

73:                                               ; preds = %5, %109
  %74 = phi ptr [ %110, %109 ], [ %6, %5 ]
  %75 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !111
  %77 = icmp eq i32 %76, 11264
  br i1 %77, label %78, label %109

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 40
  %80 = load ptr, ptr %79, align 8, !tbaa !110
  %81 = icmp eq ptr %80, null
  br i1 %81, label %109, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.uiLink, ptr %80, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !64
  %85 = icmp eq ptr %84, null
  br i1 %85, label %109, label %86

86:                                               ; preds = %82, %106
  %87 = phi ptr [ %107, %106 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.uiLinkLine, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !195
  %90 = getelementptr inbounds %struct.uiBut, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !112
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.uiLinkLine, ptr %87, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !197
  %97 = getelementptr inbounds %struct.uiBut, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !112
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.uiLinkLine, ptr %87, i64 0, i32 5
  %103 = load i16, ptr %102, align 2, !tbaa !198
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call fastcc void @ui_draw_linkline(ptr noundef nonnull %87, i32 noundef 0, i32 noundef 0) #25
  br label %106

106:                                              ; preds = %86, %94, %105, %101
  %107 = load ptr, ptr %87, align 8, !tbaa !64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %86, !llvm.loop !201

109:                                              ; preds = %106, %82, %73, %78
  %110 = load ptr, ptr %74, align 8, !tbaa !64
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %73, !llvm.loop !202

112:                                              ; preds = %109, %5
  br i1 %7, label %151, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %2, align 8, !tbaa !64
  %115 = icmp eq ptr %114, null
  br i1 %115, label %151, label %116

116:                                              ; preds = %113, %148
  %117 = phi ptr [ %149, %148 ], [ %114, %113 ]
  %118 = getelementptr inbounds %struct.uiBut, ptr %117, i64 0, i32 4
  %119 = load i32, ptr %118, align 8, !tbaa !111
  %120 = icmp eq i32 %119, 11264
  br i1 %120, label %121, label %148

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.uiBut, ptr %117, i64 0, i32 40
  %123 = load ptr, ptr %122, align 8, !tbaa !110
  %124 = icmp eq ptr %123, null
  br i1 %124, label %148, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.uiLink, ptr %123, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !64
  %128 = icmp eq ptr %127, null
  br i1 %128, label %148, label %129

129:                                              ; preds = %125, %145
  %130 = phi ptr [ %146, %145 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.uiLinkLine, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !195
  %133 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !112
  %135 = and i32 %134, 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.uiLinkLine, ptr %130, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !197
  %140 = getelementptr inbounds %struct.uiBut, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !112
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137, %129
  tail call fastcc void @ui_draw_linkline(ptr noundef nonnull %130, i32 noundef %9, i32 noundef 0) #25
  br label %145

145:                                              ; preds = %137, %144
  %146 = load ptr, ptr %130, align 8, !tbaa !64
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %129, !llvm.loop !203

148:                                              ; preds = %145, %125, %116, %121
  %149 = load ptr, ptr %117, align 8, !tbaa !64
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %116, !llvm.loop !204

151:                                              ; preds = %148, %1, %113, %112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_is_but_push_ex(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 6
  %4 = load i16, ptr %3, align 8, !tbaa !205
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !111
  br i1 %5, label %28, label %8

8:                                                ; preds = %2
  switch i32 %7, label %9 [
    i32 4608, label %12
    i32 17408, label %12
  ]

9:                                                ; preds = %8
  %10 = icmp ne i32 %7, 19968
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %8, %9
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ], [ 0, %8 ]
  %14 = load double, ptr %1, align 8, !tbaa !114
  %15 = fcmp oeq double %14, 0x7FEFFFFFFFFFFFFF
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  store double %17, ptr %1, align 8, !tbaa !114
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi double [ %17, %16 ], [ %14, %12 ]
  %20 = fptosi double %19 to i32
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 2, !tbaa !206
  %23 = zext nneg i16 %22 to i32
  %24 = xor i32 %20, -1
  %25 = lshr i32 %24, %23
  %26 = and i32 %25, 1
  %27 = xor i32 %26, %13
  br label %80

28:                                               ; preds = %2
  switch i32 %7, label %80 [
    i32 18432, label %50
    i32 1024, label %50
    i32 19968, label %41
    i32 4608, label %41
    i32 18944, label %29
    i32 1536, label %29
    i32 6656, label %29
    i32 19456, label %29
    i32 17408, label %41
  ]

29:                                               ; preds = %28, %28, %28, %28
  %30 = load double, ptr %1, align 8, !tbaa !114
  %31 = fcmp oeq double %30, 0x7FEFFFFFFFFFFFFF
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  store double %33, ptr %1, align 8, !tbaa !114
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi double [ %33, %32 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %37 = load float, ptr %36, align 8, !tbaa !118
  %38 = fpext float %37 to double
  %39 = fcmp une double %35, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  br label %80

41:                                               ; preds = %28, %28, %28
  %42 = load double, ptr %1, align 8, !tbaa !114
  %43 = fcmp oeq double %42, 0x7FEFFFFFFFFFFFFF
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  store double %45, ptr %1, align 8, !tbaa !114
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi double [ %45, %44 ], [ %42, %41 ]
  %48 = fcmp oeq double %47, 0.000000e+00
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  br label %80

50:                                               ; preds = %28, %28
  %51 = load double, ptr %1, align 8, !tbaa !114
  %52 = fcmp oeq double %51, 0x7FEFFFFFFFFFFFFF
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  store double %54, ptr %1, align 8, !tbaa !114
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi double [ %54, %53 ], [ %51, %50 ]
  %57 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @RNA_property_flag(ptr noundef nonnull %58) #27
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  %64 = load double, ptr %1, align 8, !tbaa !114
  br i1 %63, label %73, label %65

65:                                               ; preds = %60
  %66 = fptosi double %64 to i32
  %67 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %68 = load float, ptr %67, align 4, !tbaa !119
  %69 = fptosi float %68 to i32
  %70 = and i32 %69, %66
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  br label %80

73:                                               ; preds = %60, %55
  %74 = phi double [ %64, %60 ], [ %56, %55 ]
  %75 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %76 = load float, ptr %75, align 4, !tbaa !119
  %77 = fpext float %76 to double
  %78 = fcmp oeq double %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %65, %28, %40, %34, %49, %46, %73, %79, %18
  %81 = phi i32 [ %27, %18 ], [ 1, %79 ], [ 0, %73 ], [ 1, %49 ], [ 0, %46 ], [ 1, %40 ], [ 0, %34 ], [ %72, %65 ], [ -1, %28 ]
  ret i32 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @ui_get_but_val(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load double, ptr %3, align 8, !tbaa !114
  br label %78

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @RNA_property_type(ptr noundef nonnull %17) #27
  switch i32 %20, label %78 [
    i32 0, label %21
    i32 1, label %33
    i32 2, label %45
    i32 4, label %57
  ]

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #27
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %23, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = tail call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %24, ptr noundef nonnull %17, i32 noundef %27) #27
  %29 = sitofp i32 %28 to double
  br label %78

30:                                               ; preds = %21
  %31 = tail call i32 @RNA_property_boolean_get(ptr noundef nonnull %24, ptr noundef nonnull %17) #27
  %32 = sitofp i32 %31 to double
  br label %78

33:                                               ; preds = %19
  %34 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #27
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %35, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %39 = load i32, ptr %38, align 8, !tbaa !96
  %40 = tail call i32 @RNA_property_int_get_index(ptr noundef nonnull %36, ptr noundef nonnull %17, i32 noundef %39) #27
  %41 = sitofp i32 %40 to double
  br label %78

42:                                               ; preds = %33
  %43 = tail call i32 @RNA_property_int_get(ptr noundef nonnull %36, ptr noundef nonnull %17) #27
  %44 = sitofp i32 %43 to double
  br label %78

45:                                               ; preds = %19
  %46 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #27
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %47, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %51 = load i32, ptr %50, align 8, !tbaa !96
  %52 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %48, ptr noundef nonnull %17, i32 noundef %51) #27
  %53 = fpext float %52 to double
  br label %78

54:                                               ; preds = %45
  %55 = tail call float @RNA_property_float_get(ptr noundef nonnull %48, ptr noundef nonnull %17) #27
  %56 = fpext float %55 to double
  br label %78

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %59 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %58, ptr noundef nonnull %17) #27
  %60 = sitofp i32 %59 to double
  br label %78

61:                                               ; preds = %15
  %62 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !102
  %64 = add i32 %63, -32
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 27)
  switch i32 %65, label %78 [
    i32 0, label %66
    i32 1, label %69
    i32 2, label %72
    i32 3, label %75
  ]

66:                                               ; preds = %61
  %67 = load i8, ptr %9, align 1, !tbaa !113
  %68 = uitofp i8 %67 to double
  br label %78

69:                                               ; preds = %61
  %70 = load i16, ptr %9, align 2, !tbaa !162
  %71 = sitofp i16 %70 to double
  br label %78

72:                                               ; preds = %61
  %73 = load i32, ptr %9, align 4, !tbaa !53
  %74 = sitofp i32 %73 to double
  br label %78

75:                                               ; preds = %61
  %76 = load float, ptr %9, align 4, !tbaa !51
  %77 = fpext float %76 to double
  br label %78

78:                                               ; preds = %49, %54, %37, %42, %25, %30, %57, %69, %75, %72, %66, %19, %61, %11, %5
  %79 = phi double [ %6, %5 ], [ 0.000000e+00, %11 ], [ %60, %57 ], [ %53, %49 ], [ %56, %54 ], [ %41, %37 ], [ %44, %42 ], [ %29, %25 ], [ %32, %30 ], [ %68, %66 ], [ %71, %69 ], [ %74, %72 ], [ %77, %75 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %61 ]
  ret double %79
}

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_is_but_push(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !114
  %3 = call i32 @ui_is_but_push_ex(ptr noundef %0, ptr noundef nonnull %2) #25, !range !207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiFindInlink(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #11 {
  %3 = tail call fastcc ptr @ui_find_inlink(ptr noundef %0, ptr noundef %1) #25
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_find_inlink(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 !PGOFuncName !208 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !111
  %10 = icmp eq i32 %9, 11776
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !209

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ null, %2 ], [ null, %15 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiComposeLinks(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %1, %72
  %6 = phi ptr [ %73, %72 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = icmp eq i32 %8, 11264
  br i1 %9, label %10, label %72

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = icmp eq ptr %12, null
  br i1 %13, label %72, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !212
  %21 = load i16, ptr %20, align 2, !tbaa !162
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %25 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  br label %26

26:                                               ; preds = %23, %45
  %27 = phi i64 [ 0, %23 ], [ %46, %45 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !64
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = tail call fastcc ptr @ui_find_inlink(ptr noundef %0, ptr noundef %30) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %24, align 8, !tbaa !112
  %35 = and i32 %34, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !112
  %40 = lshr i32 %39, 26
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, 1
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i16 [ 1, %33 ], [ %42, %37 ]
  tail call fastcc void @ui_add_link_line(ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef nonnull %31, i16 noundef signext %44) #25
  br label %45

45:                                               ; preds = %43, %26
  %46 = add nuw nsw i64 %27, 1
  %47 = load ptr, ptr %19, align 8, !tbaa !212
  %48 = load i16, ptr %47, align 2, !tbaa !162
  %49 = sext i16 %48 to i64
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %26, label %72, !llvm.loop !213

51:                                               ; preds = %14
  %52 = load ptr, ptr %12, align 8, !tbaa !214
  %53 = icmp eq ptr %52, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8, !tbaa !64
  %56 = tail call fastcc ptr @ui_find_inlink(ptr noundef %0, ptr noundef %55) #25
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !112
  %61 = and i32 %60, 67108864
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.uiBut, ptr %56, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !112
  %66 = lshr i32 %65, 26
  %67 = trunc i32 %66 to i16
  %68 = and i16 %67, 1
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i16 [ 1, %58 ], [ %68, %63 ]
  %71 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  tail call fastcc void @ui_add_link_line(ptr noundef nonnull %71, ptr noundef nonnull %6, ptr noundef nonnull %56, i16 noundef signext %70) #25
  br label %72

72:                                               ; preds = %45, %69, %18, %10, %51, %54, %5
  %73 = load ptr, ptr %6, align 8, !tbaa !64
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %5, !llvm.loop !215

75:                                               ; preds = %72, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_add_link_line(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #6 !PGOFuncName !216 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.27) #27
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %6) #27
  %7 = getelementptr inbounds %struct.uiLinkLine, ptr %6, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.uiLinkLine, ptr %6, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !197
  %9 = getelementptr inbounds %struct.uiLinkLine, ptr %6, i64 0, i32 5
  store i16 %3, ptr %9, align 2, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetButLock(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  store i8 %1, ptr %6, align 8, !tbaa !217
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  store ptr %2, ptr %7, align 8, !tbaa !218
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockClearButLock(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  store i8 0, ptr %2, align 8, !tbaa !217
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  store ptr null, ptr %3, align 8, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_delete_linkline(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.uiLink, ptr %4, i64 0, i32 7
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = getelementptr inbounds %struct.uiLink, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uiLink, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !212
  %16 = load i16, ptr %15, align 2, !tbaa !162
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = icmp sgt i16 %16, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 3
  br label %26

22:                                               ; preds = %13
  store i16 0, ptr %15, align 2, !tbaa !162
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %24 = load ptr, ptr %11, align 8, !tbaa !64
  tail call void %23(ptr noundef %24) #27
  %25 = load ptr, ptr %10, align 8, !tbaa !210
  store ptr null, ptr %25, align 8, !tbaa !64
  br label %58

26:                                               ; preds = %20, %45
  %27 = phi i16 [ %16, %20 ], [ %46, %45 ]
  %28 = phi ptr [ %15, %20 ], [ %47, %45 ]
  %29 = phi i64 [ 0, %20 ], [ %49, %45 ]
  %30 = phi i32 [ 0, %20 ], [ %48, %45 ]
  %31 = load ptr, ptr %10, align 8, !tbaa !210
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds ptr, ptr %32, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = load ptr, ptr %21, align 8, !tbaa !197
  %36 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = sext i32 %30 to i64
  %41 = getelementptr inbounds ptr, ptr %32, i64 %40
  store ptr %34, ptr %41, align 8, !tbaa !64
  %42 = add nsw i32 %30, 1
  %43 = load ptr, ptr %14, align 8, !tbaa !212
  %44 = load i16, ptr %43, align 2, !tbaa !162
  br label %45

45:                                               ; preds = %26, %39
  %46 = phi i16 [ %44, %39 ], [ %27, %26 ]
  %47 = phi ptr [ %43, %39 ], [ %28, %26 ]
  %48 = phi i32 [ %42, %39 ], [ %30, %26 ]
  %49 = add nuw nsw i64 %29, 1
  %50 = sext i16 %46 to i64
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %26, label %52, !llvm.loop !219

52:                                               ; preds = %45, %18
  %53 = phi ptr [ %15, %18 ], [ %47, %45 ]
  %54 = phi i16 [ %16, %18 ], [ %46, %45 ]
  %55 = add i16 %54, -1
  store i16 %55, ptr %53, align 2, !tbaa !162
  br label %58

56:                                               ; preds = %2
  %57 = load ptr, ptr %9, align 8, !tbaa !214
  store ptr null, ptr %57, align 8, !tbaa !64
  br label %58

58:                                               ; preds = %22, %52, %56
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %59(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_get_but_vectorf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %4) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  tail call fastcc void @zero_v3(ptr noundef %1) #25
  %12 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #27
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %16 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %15, ptr noundef nonnull %9) #27
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef %1) #27
  br label %59

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @min_ii(i32 noundef %16) #25
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = trunc i64 %25 to i32
  %27 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef %26) #27
  %28 = getelementptr inbounds float, ptr %1, i64 %25
  store float %27, ptr %28, align 4, !tbaa !51
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, %23
  br i1 %30, label %59, label %24, !llvm.loop !220

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !102
  switch i32 %33, label %53 [
    i32 32, label %34
    i32 128, label %50
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = load i8, ptr %36, align 1, !tbaa !113
  %38 = uitofp i8 %37 to float
  %39 = fdiv float %38, 2.550000e+02
  store float %39, ptr %1, align 4, !tbaa !51
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !113
  %42 = uitofp i8 %41 to float
  %43 = fdiv float %42, 2.550000e+02
  %44 = getelementptr inbounds float, ptr %1, i64 1
  store float %43, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds i8, ptr %36, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !113
  %47 = uitofp i8 %46 to float
  %48 = fdiv float %47, 2.550000e+02
  %49 = getelementptr inbounds float, ptr %1, i64 2
  store float %48, ptr %49, align 4, !tbaa !51
  br label %59

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %52) #25
  br label %59

53:                                               ; preds = %31
  %54 = load ptr, ptr %3, align 8, !tbaa !117
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !64
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ui_get_but_vectorf) #30
  tail call fastcc void @zero_v3(ptr noundef %1) #25
  br label %59

59:                                               ; preds = %24, %19, %18, %34, %53, %56, %50, %11
  %60 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !111
  %62 = icmp eq i32 %61, 15872
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call fastcc void @normalize_v3(ptr noundef %1) #25
  br label %64

64:                                               ; preds = %63, %59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !221 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !51
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0) unnamed_addr #8 !PGOFuncName !222 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 3)
  ret i32 %2
}

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !223 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_set_but_vectorf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #27
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %16 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %15, ptr noundef nonnull %9) #27
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @RNA_property_float_set_array(ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef %1) #27
  br label %53

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @min_ii(i32 noundef %16) #25
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = getelementptr inbounds float, ptr %1, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = trunc i64 %25 to i32
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef %28, float noundef %27) #27
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, %23
  br i1 %30, label %53, label %24, !llvm.loop !224

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !102
  switch i32 %33, label %53 [
    i32 32, label %34
    i32 128, label %50
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = load float, ptr %1, align 4, !tbaa !51
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 2.550000e+02, float 5.000000e-01)
  %39 = fptoui float %38 to i8
  store i8 %39, ptr %36, align 1, !tbaa !113
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 2.550000e+02, float 5.000000e-01)
  %43 = fptoui float %42 to i8
  %44 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !113
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 2.550000e+02, float 5.000000e-01)
  %48 = fptoui float %47 to i8
  %49 = getelementptr inbounds i8, ptr %36, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !113
  br label %53

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  tail call fastcc void @copy_v3_v3(ptr noundef %52, ptr noundef %1) #25
  br label %53

53:                                               ; preds = %24, %19, %31, %18, %34, %50, %11
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_set_index(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_is_but_float(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !102
  %4 = icmp eq i32 %3, 128
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #27
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %13, %5, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %5 ], [ 1, %13 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_is_but_bool(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !111
  switch i32 %3, label %4 [
    i32 1536, label %12
    i32 4608, label %12
    i32 6656, label %12
    i32 17408, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %4
  br label %12

12:                                               ; preds = %8, %1, %1, %1, %1, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ui_is_but_unit(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @ui_is_but_unit_radians_ex(ptr noundef %5, i32 noundef %6) #25, !range !67
  %10 = icmp ne i8 %9, 0
  %11 = icmp eq i32 %6, 393216
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.UnitSettings, ptr %5, i64 0, i32 1
  %15 = load i8, ptr %14, align 4, !tbaa !227
  %16 = icmp ne i8 %15, 0
  %17 = icmp eq i32 %6, 327680
  %18 = or i1 %17, %16
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %8, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %8 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @uiButGetUnitType(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %3 = load i8, ptr %2, align 8, !tbaa !228
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = shl nuw nsw i32 %4, 16
  br label %15

12:                                               ; preds = %6
  %13 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %8) #27
  %14 = and i32 %13, 16711680
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ui_is_but_unit_radians_ex(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.UnitSettings, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !230
  %5 = icmp eq i8 %4, 2
  %6 = icmp eq i32 %1, 327680
  %7 = and i1 %6, %5
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_is_but_compatible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !111
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !102
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %20 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !231
  %22 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !231
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load ptr, ptr %19, align 8, !tbaa !232
  %34 = load ptr, ptr %22, align 8, !tbaa !232
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = tail call i32 @RNA_property_type(ptr noundef nonnull %16) #27
  %38 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = tail call i32 @RNA_property_type(ptr noundef %39) #27
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load ptr, ptr %15, align 8, !tbaa !95
  %44 = tail call i32 @RNA_property_subtype(ptr noundef %43) #27
  %45 = load ptr, ptr %38, align 8, !tbaa !95
  %46 = tail call i32 @RNA_property_subtype(ptr noundef %45) #27
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %14
  br label %49

49:                                               ; preds = %42, %36, %32, %26, %18, %8, %2, %48
  %50 = phi i8 [ 1, %48 ], [ 0, %2 ], [ 0, %8 ], [ 0, %18 ], [ 0, %26 ], [ 0, %32 ], [ 0, %36 ], [ 0, %42 ]
  ret i8 %50
}

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_is_but_rna_valid(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %7 = tail call zeroext i8 @RNA_struct_contains_property(ptr noundef nonnull %6, ptr noundef nonnull %3) #27
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %2, align 8, !tbaa !95
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %10, ptr noundef %11) #25
  br label %13

13:                                               ; preds = %1, %5, %9
  %14 = phi i8 [ 0, %9 ], [ 1, %5 ], [ 1, %1 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_contains_property(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_set_but_val(ptr noundef %0, double noundef %1) local_unnamed_addr #6 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %9 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %8, ptr noundef nonnull %5) #27
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #27
  switch i32 %12, label %49 [
    i32 0, label %13
    i32 1, label %22
    i32 2, label %31
    i32 4, label %40
  ]

13:                                               ; preds = %11
  %14 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #27
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = fptosi double %1 to i32
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %18, i32 noundef %19) #27
  br label %49

20:                                               ; preds = %13
  %21 = fptosi double %1 to i32
  tail call void @RNA_property_boolean_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %21) #27
  br label %49

22:                                               ; preds = %11
  %23 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #27
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = fptosi double %1 to i32
  tail call void @RNA_property_int_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %27, i32 noundef %28) #27
  br label %49

29:                                               ; preds = %22
  %30 = fptosi double %1 to i32
  tail call void @RNA_property_int_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %30) #27
  br label %49

31:                                               ; preds = %11
  %32 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #27
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %36 = load i32, ptr %35, align 8, !tbaa !96
  %37 = fptrunc double %1 to float
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %36, float noundef %37) #27
  br label %49

38:                                               ; preds = %31
  %39 = fptrunc double %1 to float
  tail call void @RNA_property_float_set(ptr noundef nonnull %8, ptr noundef nonnull %5, float noundef %39) #27
  br label %49

40:                                               ; preds = %11
  %41 = tail call i32 @RNA_property_flag(ptr noundef nonnull %5) #27
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  %44 = fptosi double %1 to i32
  br i1 %43, label %48, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %8, ptr noundef nonnull %5) #27
  %47 = xor i32 %46, %44
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %47) #27
  br label %49

48:                                               ; preds = %40
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %44) #27
  br label %49

49:                                               ; preds = %20, %16, %29, %25, %38, %34, %48, %45, %11, %7
  store double 0x7FEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !114
  br label %105

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !102
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 27)
  switch i32 %53, label %76 [
    i32 0, label %105
    i32 1, label %54
    i32 2, label %59
    i32 3, label %64
    i32 4, label %69
  ]

54:                                               ; preds = %50
  %55 = fadd double %1, 5.000000e-01
  %56 = tail call double @llvm.floor.f64(double %55)
  %57 = fptoui double %56 to i8
  %58 = uitofp i8 %57 to double
  store double %58, ptr %3, align 8, !tbaa !114
  br label %76

59:                                               ; preds = %50
  %60 = fadd double %1, 5.000000e-01
  %61 = tail call double @llvm.floor.f64(double %60)
  %62 = fptosi double %61 to i16
  %63 = sitofp i16 %62 to double
  store double %63, ptr %3, align 8, !tbaa !114
  br label %76

64:                                               ; preds = %50
  %65 = fadd double %1, 5.000000e-01
  %66 = tail call double @llvm.floor.f64(double %65)
  %67 = fptosi double %66 to i32
  %68 = sitofp i32 %67 to double
  store double %68, ptr %3, align 8, !tbaa !114
  br label %76

69:                                               ; preds = %50
  %70 = fptrunc double %1 to float
  %71 = fcmp oge float %70, 0xBEE4F8B580000000
  %72 = fcmp ole float %70, 0x3EE4F8B580000000
  %73 = and i1 %71, %72
  %74 = fpext float %70 to double
  %75 = select i1 %73, double 0.000000e+00, double %74
  store double %75, ptr %3, align 8, !tbaa !114
  br label %76

76:                                               ; preds = %50, %59, %69, %64, %54
  %77 = phi double [ %1, %50 ], [ %63, %59 ], [ %75, %69 ], [ %68, %64 ], [ %58, %54 ]
  %78 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %79 = load ptr, ptr %78, align 8, !tbaa !115
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store double %77, ptr %79, align 8, !tbaa !114
  br label %105

82:                                               ; preds = %76
  %83 = add i32 %52, -32
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 27)
  switch i32 %84, label %105 [
    i32 0, label %85
    i32 1, label %90
    i32 2, label %95
    i32 3, label %100
  ]

85:                                               ; preds = %82
  %86 = fptoui double %77 to i8
  %87 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %88 = load ptr, ptr %87, align 8, !tbaa !101
  store i8 %86, ptr %88, align 1, !tbaa !113
  %89 = uitofp i8 %86 to double
  store double %89, ptr %3, align 8, !tbaa !114
  br label %105

90:                                               ; preds = %82
  %91 = fptosi double %77 to i16
  %92 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %93 = load ptr, ptr %92, align 8, !tbaa !101
  store i16 %91, ptr %93, align 2, !tbaa !162
  %94 = sitofp i16 %91 to double
  store double %94, ptr %3, align 8, !tbaa !114
  br label %105

95:                                               ; preds = %82
  %96 = fptosi double %77 to i32
  %97 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !101
  store i32 %96, ptr %98, align 4, !tbaa !53
  %99 = sitofp i32 %96 to double
  store double %99, ptr %3, align 8, !tbaa !114
  br label %105

100:                                              ; preds = %82
  %101 = fptrunc double %77 to float
  %102 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %103 = load ptr, ptr %102, align 8, !tbaa !101
  store float %101, ptr %103, align 4, !tbaa !51
  %104 = fpext float %101 to double
  store double %104, ptr %3, align 8, !tbaa !114
  br label %105

105:                                              ; preds = %82, %50, %85, %95, %100, %90, %81, %49
  call fastcc void @ui_check_but_select(ptr noundef nonnull %0, ptr noundef nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_int_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_check_but_select(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !233 {
  %3 = tail call i32 @ui_is_but_push_ex(ptr noundef %0, ptr noundef %1) #25, !range !207
  switch i32 %3, label %12 [
    i32 1, label %4
    i32 0, label %8
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !112
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 8, !tbaa !112
  br label %12

12:                                               ; preds = %2, %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ui_get_but_string_max_length(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !111
  switch i32 %3, label %8 [
    i32 3072, label %4
    i32 20992, label %4
    i32 26624, label %4
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %6 = load float, ptr %5, align 4, !tbaa !119
  %7 = fptosi float %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 400, %1 ]
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_get_but_drag_multi_edit(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 69
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13, !llvm.loop !234

13:                                               ; preds = %9, %5
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_convert_to_unit_alt_name(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = tail call zeroext i8 @ui_is_but_unit(ptr noundef %0) #25, !range !67
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %12 = tail call ptr @BLI_strdup(ptr noundef %1) #27
  %13 = trunc i64 %2 to i32
  %14 = getelementptr inbounds %struct.UnitSettings, ptr %10, i64 0, i32 1
  %15 = load i8, ptr %14, align 4, !tbaa !227
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %11, 16
  tail call void @bUnit_ToUnitAltName(ptr noundef %1, i32 noundef %13, ptr noundef %12, i32 noundef %16, i32 noundef %17) #27
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %18(ptr noundef %12) #27
  br label %19

19:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare void @bUnit_ToUnitAltName(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_get_but_string_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !111
  br i1 %10, label %53, label %13

13:                                               ; preds = %4
  switch i32 %12, label %62 [
    i32 3072, label %14
    i32 20992, label %14
    i32 26624, label %14
  ]

14:                                               ; preds = %13, %13, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %15 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #27
  switch i32 %15, label %43 [
    i32 3, label %16
    i32 4, label %21
    i32 5, label %35
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %18 = load ptr, ptr %8, align 8, !tbaa !95
  %19 = trunc i64 %2 to i32
  %20 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %17, ptr noundef %18, ptr noundef %1, i32 noundef %19, ptr noundef nonnull %6) #27
  store ptr %20, ptr %5, align 8, !tbaa !64
  br label %40

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %8, align 8, !tbaa !95
  %24 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %22, ptr noundef %23) #27
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %26 = load ptr, ptr %25, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.uiBlock, ptr %26, i64 0, i32 48
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = load ptr, ptr %8, align 8, !tbaa !95
  %30 = call zeroext i8 @RNA_property_enum_name(ptr noundef %28, ptr noundef nonnull %22, ptr noundef %29, i32 noundef %24, ptr noundef nonnull %5) #27
  %31 = icmp eq i8 %30, 0
  %32 = load ptr, ptr %5, align 8, !tbaa !64
  br i1 %31, label %40, label %33

33:                                               ; preds = %21
  %34 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %32, i64 noundef %2) #27
  store ptr %1, ptr %5, align 8, !tbaa !64
  br label %40

35:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %37 = load ptr, ptr %8, align 8, !tbaa !95
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %36, ptr noundef %37) #27
  %38 = trunc i64 %2 to i32
  %39 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %38, ptr noundef nonnull %6) #27
  store ptr %39, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  br label %40

40:                                               ; preds = %21, %33, %35, %16
  %41 = phi ptr [ %1, %33 ], [ %39, %35 ], [ %20, %16 ], [ %32, %21 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %14, %40
  store i8 0, ptr %1, align 1, !tbaa !113
  br label %52

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, %1
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = call i64 @llvm.umin.i64(i64 %49, i64 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %41, i64 %50, i1 false)
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %51(ptr noundef nonnull %41) #27
  br label %52

52:                                               ; preds = %44, %46, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %84

53:                                               ; preds = %4
  switch i32 %12, label %62 [
    i32 3072, label %54
    i32 20992, label %58
    i32 26624, label %58
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !101
  %57 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %56, i64 noundef %2) #27
  br label %84

58:                                               ; preds = %53, %53
  %59 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %60, i64 noundef %2) #27
  br label %84

62:                                               ; preds = %13, %53
  %63 = tail call zeroext i8 @ui_but_anim_expression_get(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #27
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  %67 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %0) #25, !range !67
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @ui_is_but_unit(ptr noundef nonnull %0) #25, !range !67
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = trunc i64 %2 to i32
  tail call fastcc void @ui_get_but_string_unit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %73, double noundef %66, i8 noundef zeroext 0, i32 noundef %3) #25
  br label %84

74:                                               ; preds = %69
  %75 = icmp eq i32 %3, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %74
  %77 = tail call fastcc i32 @ui_but_float_precision(ptr noundef nonnull %0, double noundef %66) #25
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi i32 [ %77, %76 ], [ %3, %74 ]
  %80 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.4, i32 noundef %79, double noundef %66) #27
  br label %84

81:                                               ; preds = %65
  %82 = fptosi double %66 to i32
  %83 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.5, i32 noundef %82) #27
  br label %84

84:                                               ; preds = %81, %78, %72, %62, %54, %58, %52
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_property_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @ui_but_anim_expression_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_get_but_string_unit(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, double noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #6 !PGOFuncName !235 {
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.UnitSettings, ptr %10, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !236
  %13 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %14 = load float, ptr %10, align 4, !tbaa !237
  %15 = fcmp olt float %14, 0x3F1A36E2E0000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store float 1.000000e+00, ptr %10, align 4, !tbaa !237
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq i32 %5, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %21 = load float, ptr %20, align 4, !tbaa !238
  %22 = fptosi float %21 to i32
  %23 = icmp sgt i32 %22, 7
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %22, -1
  %26 = select i1 %25, i32 2, i32 %22
  br label %27

27:                                               ; preds = %17, %19, %24
  %28 = phi i32 [ %26, %24 ], [ 7, %19 ], [ %5, %17 ]
  %29 = trunc i16 %12 to i8
  %30 = and i8 %29, 1
  %31 = tail call fastcc double @ui_get_but_scale_unit(ptr noundef nonnull %0, double noundef %3) #25
  %32 = getelementptr inbounds %struct.UnitSettings, ptr %10, i64 0, i32 1
  %33 = load i8, ptr %32, align 4, !tbaa !227
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %13, 16
  %36 = tail call i64 @bUnit_AsString(ptr noundef %1, i32 noundef %2, double noundef %31, i32 noundef %28, i32 noundef %34, i32 noundef %35, i8 noundef zeroext %30, i8 noundef zeroext %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_but_float_precision(ptr nocapture noundef readonly %0, double noundef %1) unnamed_addr #6 !PGOFuncName !239 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %4 = load float, ptr %3, align 4, !tbaa !238
  %5 = fptosi float %4 to i32
  %6 = tail call fastcc zeroext i8 @ui_is_but_unit_radians(ptr noundef %0) #25, !range !67
  %7 = icmp ne i8 %6, 0
  %8 = icmp slt i32 %5, 5
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = fcmp olt float %14, 0x4024008320000000
  %16 = select i1 %15, i32 3, i32 2
  br label %17

17:                                               ; preds = %2, %10, %12
  %18 = phi i32 [ %16, %12 ], [ %5, %10 ], [ 5, %2 ]
  %19 = tail call i32 @uiFloatPrecisionCalc(i32 noundef %18, double noundef %1) #27
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_get_but_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  tail call void @ui_get_but_string_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef -1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @ui_set_but_string_eval_num(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #17 {
  %5 = tail call double @atof(ptr noundef %2) #28
  store double %5, ptr %3, align 8, !tbaa !114
  ret i8 1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ui_set_but_string(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !111
  br i1 %10, label %52, label %13

13:                                               ; preds = %3
  switch i32 %12, label %72 [
    i32 3072, label %14
    i32 20992, label %14
    i32 26624, label %14
  ]

14:                                               ; preds = %13, %13, %13
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %16 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %15, ptr noundef nonnull %9) #27
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %103, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 8, !tbaa !95
  %20 = tail call i32 @RNA_property_type(ptr noundef %19) #27
  switch i32 %20, label %103 [
    i32 3, label %21
    i32 5, label %23
    i32 4, label %39
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void @RNA_property_string_set(ptr noundef nonnull %15, ptr noundef %22, ptr noundef %2) #27
  br label %103

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %24 = load i8, ptr %2, align 1, !tbaa !113
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void @RNA_property_pointer_set(ptr noundef nonnull %15, ptr noundef %27, ptr noundef nonnull byval(%struct.PointerRNA) align 8 @PointerRNA_NULL) #27
  br label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false), !tbaa.struct !240
  %30 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 58
  %31 = load ptr, ptr %30, align 8, !tbaa !241
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef nonnull %31, ptr noundef nonnull %2, ptr noundef nonnull %5) #27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 8, !tbaa !95
  call void @RNA_property_pointer_set(ptr noundef nonnull %15, ptr noundef %37, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #27
  br label %38

38:                                               ; preds = %28, %33, %36, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %103

39:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %40 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %41 = load ptr, ptr %40, align 8, !tbaa !121
  %42 = getelementptr inbounds %struct.uiBlock, ptr %41, i64 0, i32 48
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  %44 = load ptr, ptr %8, align 8, !tbaa !95
  %45 = call zeroext i8 @RNA_property_enum_value(ptr noundef %43, ptr noundef nonnull %15, ptr noundef %44, ptr noundef %2, ptr noundef nonnull %6) #27
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %8, align 8, !tbaa !95
  %49 = load i32, ptr %6, align 4, !tbaa !53
  call void @RNA_property_enum_set(ptr noundef nonnull %15, ptr noundef %48, i32 noundef %49) #27
  br label %50

50:                                               ; preds = %39, %47
  %51 = phi i8 [ 1, %47 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  br label %103

52:                                               ; preds = %3
  switch i32 %12, label %72 [
    i32 3072, label %53
    i32 20992, label %65
    i32 26624, label %65
  ]

53:                                               ; preds = %52
  %54 = tail call zeroext i8 @ui_is_but_utf8(ptr noundef nonnull %1) #27
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !101
  %58 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %59 = load float, ptr %58, align 4, !tbaa !119
  %60 = fptoui float %59 to i64
  br i1 %55, label %63, label %61

61:                                               ; preds = %53
  %62 = tail call ptr @BLI_strncpy_utf8(ptr noundef %57, ptr noundef %2, i64 noundef %60) #27
  br label %103

63:                                               ; preds = %53
  %64 = tail call ptr @BLI_strncpy(ptr noundef %57, ptr noundef %2, i64 noundef %60) #27
  br label %103

65:                                               ; preds = %52, %52
  %66 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %69 = load float, ptr %68, align 4, !tbaa !119
  %70 = fptoui float %69 to i64
  %71 = tail call ptr @BLI_strncpy(ptr noundef %67, ptr noundef %2, i64 noundef %70) #27
  br label %103

72:                                               ; preds = %13, %52
  %73 = tail call zeroext i8 @ui_but_anim_expression_set(ptr noundef nonnull %1, ptr noundef %2) #27
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i8, ptr %2, align 1, !tbaa !113
  %77 = icmp eq i8 %76, 35
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %2, i64 1
  %80 = tail call zeroext i8 @ui_but_anim_expression_create(ptr noundef nonnull %1, ptr noundef nonnull %79) #27
  br label %103

81:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  %82 = call zeroext i8 @ui_set_but_string_eval_num(ptr poison, ptr nonnull poison, ptr noundef nonnull %2, ptr noundef nonnull %7) #25
  %83 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %1) #25, !range !67
  %84 = icmp eq i8 %83, 0
  %85 = load double, ptr %7, align 8, !tbaa !114
  br i1 %84, label %86, label %91

86:                                               ; preds = %81
  %87 = fadd double %85, 5.000000e-01
  %88 = tail call double @llvm.floor.f64(double %87)
  %89 = fptosi double %88 to i32
  %90 = sitofp i32 %89 to double
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi double [ %90, %86 ], [ %85, %81 ]
  %93 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 20
  %94 = load float, ptr %93, align 8, !tbaa !118
  %95 = fpext float %94 to double
  %96 = fcmp olt double %92, %95
  %97 = select i1 %96, double %95, double %92
  %98 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %99 = load float, ptr %98, align 4, !tbaa !119
  %100 = fpext float %99 to double
  %101 = fcmp ogt double %97, %100
  %102 = select i1 %101, double %100, double %97
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef %102) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  br label %103

103:                                              ; preds = %50, %38, %21, %14, %18, %72, %61, %63, %91, %78, %65
  %104 = phi i8 [ 1, %65 ], [ %80, %78 ], [ 1, %91 ], [ 1, %63 ], [ 1, %61 ], [ 1, %72 ], [ 0, %18 ], [ 0, %14 ], [ %51, %50 ], [ 1, %38 ], [ 1, %21 ]
  ret i8 %104
}

; Function Attrs: optsize
declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_utf8(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @ui_but_anim_expression_set(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @ui_but_anim_expression_create(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_set_but_default(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = icmp eq i8 %2, 0
  %6 = zext i8 %1 to i32
  br i1 %5, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.6, i8 noundef zeroext 0) #27
  %9 = tail call ptr @ui_handle_afterfunc_add_operator(ptr noundef %8, i32 noundef 6, i8 noundef zeroext 1) #27
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %6) #27
  br label %12

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @WM_operator_properties_create(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #27
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef %6) #27
  %11 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 6, ptr noundef nonnull %4) #27
  call void @WM_operator_properties_free(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @ui_handle_afterfunc_add_operator(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiFreeBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  tail call void @UI_butstore_clear(ptr noundef %1) #27
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef nonnull %7) #25
  %8 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !242

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %15(ptr noundef nonnull %12) #27
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !243
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %21(ptr noundef nonnull %18) #27
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 8
  tail call void @CTX_store_free_list(ptr noundef nonnull %23) #27
  %24 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 45
  tail call void @BLI_freelistN(ptr noundef nonnull %24) #27
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %25(ptr noundef nonnull %1) #27
  ret void
}

; Function Attrs: optsize
declare void @UI_butstore_clear(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @CTX_store_free_list(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiFreeBlocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BLI_pophead(ptr noundef %1) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @uiFreeBlock(ptr noundef %0, ptr noundef nonnull %6) #25
  %7 = tail call ptr @BLI_pophead(ptr noundef %1) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !244

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %17
  %6 = phi ptr [ %7, %17 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !245
  %8 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %9 = load ptr, ptr %8, align 8, !tbaa !246
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 36
  %13 = load i8, ptr %12, align 1, !tbaa !247
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %6) #27
  tail call void @uiFreeBlock(ptr noundef %0, ptr noundef nonnull %6) #25
  br label %17

16:                                               ; preds = %11
  store i8 0, ptr %12, align 1, !tbaa !247
  br label %17

17:                                               ; preds = %5, %16, %15
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %5, !llvm.loop !248

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiBlockSetRegion(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 9
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 104) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 36
  store i8 0, ptr %8, align 1, !tbaa !247
  %9 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 46
  store ptr null, ptr %10, align 8, !tbaa !246
  br label %11

11:                                               ; preds = %7, %2
  tail call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef %0) #27
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 4
  store ptr %5, ptr %12, align 8, !tbaa !105
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #27
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #27
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %10 = tail call ptr %9(i64 noundef 680, ptr noundef nonnull @.str.8) #27
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 36
  store i8 1, ptr %11, align 1, !tbaa !247
  %12 = trunc i16 %3 to i8
  %13 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 30
  store i8 %12, ptr %13, align 1, !tbaa !249
  %14 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 48
  store ptr %0, ptr %14, align 8, !tbaa !122
  %15 = icmp eq ptr %8, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 51
  store i8 1, ptr %17, align 4, !tbaa !250
  %18 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 52
  %19 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 45
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #27
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %22 = tail call ptr %21(i64 noundef 8, ptr noundef nonnull @.str.9) #27
  %23 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 49
  store ptr %22, ptr %23, align 8, !tbaa !225
  %24 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %22, align 4
  br label %26

26:                                               ; preds = %16, %4
  %27 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 9
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %2, i64 noundef 128) #27
  %29 = icmp eq ptr %1, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  tail call void @uiBlockSetRegion(ptr noundef nonnull %10, ptr noundef nonnull %1) #25
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !251
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = sext i16 %32 to i32
  %36 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 10
  tail call void @wm_subwindow_matrix_get(ptr noundef %7, i32 noundef %35, ptr noundef nonnull %36) #27
  %37 = load i16, ptr %31, align 4, !tbaa !251
  %38 = sext i16 %37 to i32
  call void @wm_subwindow_size_get(ptr noundef %7, i32 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %39 = load i32, ptr %5, align 4, !tbaa !53
  %40 = sitofp i32 %39 to float
  %41 = load float, ptr %36, align 8, !tbaa !51
  %42 = fmul float %41, %40
  %43 = call float @llvm.fabs.f32(float %42)
  %44 = fdiv float 2.000000e+00, %43
  %45 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 12
  store float %44, ptr %45, align 8, !tbaa !191
  br label %68

46:                                               ; preds = %26, %30
  %47 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !252
  %49 = getelementptr inbounds %struct.bScreen, ptr %48, i64 0, i32 18
  %50 = load i16, ptr %49, align 2, !tbaa !253
  %51 = sext i16 %50 to i32
  %52 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 10
  tail call void @wm_subwindow_matrix_get(ptr noundef %7, i32 noundef %51, ptr noundef nonnull %52) #27
  %53 = load ptr, ptr %47, align 8, !tbaa !252
  %54 = getelementptr inbounds %struct.bScreen, ptr %53, i64 0, i32 18
  %55 = load i16, ptr %54, align 2, !tbaa !253
  %56 = sext i16 %55 to i32
  call void @wm_subwindow_size_get(ptr noundef %7, i32 noundef %56, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %57 = load i32, ptr %5, align 4, !tbaa !53
  %58 = sitofp i32 %57 to float
  %59 = load float, ptr %52, align 8, !tbaa !51
  %60 = fmul float %59, %58
  %61 = call float @llvm.fabs.f32(float %60)
  %62 = fdiv float 2.000000e+00, %61
  %63 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 12
  store float %62, ptr %63, align 8, !tbaa !191
  %64 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 31
  store i8 1, ptr %64, align 8, !tbaa !125
  %65 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  %66 = load i32, ptr %65, align 8, !tbaa !34
  %67 = or i32 %66, 1
  store i32 %67, ptr %65, align 8, !tbaa !34
  br label %68

68:                                               ; preds = %46, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret ptr %10
}

; Function Attrs: optsize
declare void @wm_subwindow_matrix_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @wm_subwindow_size_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiGetBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 104) #27
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetEmboss(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 30
  store i8 %1, ptr %3, align 1, !tbaa !249
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_set_but_soft_range(ptr noundef %0) unnamed_addr #6 !PGOFuncName !255 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 8
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp eq ptr %12, null
  br i1 %13, label %119, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @RNA_property_type(ptr noundef nonnull %12) #27
  switch i32 %15, label %147 [
    i32 1, label %16
    i32 2, label %43
  ]

16:                                               ; preds = %14
  %17 = load ptr, ptr %11, align 8, !tbaa !95
  %18 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %17) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  %19 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %11, align 8, !tbaa !95
  call void @RNA_property_int_ui_range(ptr noundef nonnull %19, ptr noundef %20, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #27
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %3, align 4
  %23 = insertelement <2 x i32> poison, i32 %21, i64 0
  %24 = shufflevector <2 x i32> %23, <2 x i32> poison, <2 x i32> zeroinitializer
  %25 = icmp eq <2 x i32> %24, <i32 2147483647, i32 -2147483648>
  %26 = insertelement <2 x i32> poison, i32 %22, i64 0
  %27 = insertelement <2 x i32> %26, i32 %21, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x double>
  %29 = select <2 x i1> %25, <2 x double> <double 1.000000e+04, double -1.000000e+04>, <2 x double> %28
  %30 = icmp eq i8 %18, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %32 = load ptr, ptr %11, align 8, !tbaa !95
  call void @RNA_property_int_get_array_range(ptr noundef nonnull %19, ptr noundef %32, ptr noundef nonnull %5) #27
  %33 = load <2 x i32>, ptr %5, align 8, !tbaa !53
  %34 = sitofp <2 x i32> %33 to <2 x double>
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %41

35:                                               ; preds = %16
  %36 = load ptr, ptr %11, align 8, !tbaa !95
  %37 = call i32 @RNA_property_int_get(ptr noundef nonnull %19, ptr noundef %36) #27
  %38 = sitofp i32 %37 to double
  %39 = insertelement <2 x double> poison, double %38, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi <2 x double> [ %34, %31 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  br label %68

43:                                               ; preds = %14
  %44 = load ptr, ptr %11, align 8, !tbaa !95
  %45 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %44) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  %46 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %47 = load ptr, ptr %11, align 8, !tbaa !95
  call void @RNA_property_float_ui_range(ptr noundef nonnull %46, ptr noundef %47, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #27
  %48 = load float, ptr %6, align 4
  %49 = load float, ptr %7, align 4
  %50 = insertelement <2 x float> poison, float %49, i64 0
  %51 = insertelement <2 x float> %50, float %48, i64 1
  %52 = fcmp oeq <2 x float> %51, <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %53 = select <2 x i1> %52, <2 x float> <float 1.000000e+04, float -1.000000e+04>, <2 x float> %51
  %54 = fpext <2 x float> %53 to <2 x double>
  %55 = icmp eq i8 %45, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  %57 = load ptr, ptr %11, align 8, !tbaa !95
  call void @RNA_property_float_get_array_range(ptr noundef nonnull %46, ptr noundef %57, ptr noundef nonnull %10) #27
  %58 = load <2 x float>, ptr %10, align 8, !tbaa !51
  %59 = fpext <2 x float> %58 to <2 x double>
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  br label %66

60:                                               ; preds = %43
  %61 = load ptr, ptr %11, align 8, !tbaa !95
  %62 = call float @RNA_property_float_get(ptr noundef nonnull %46, ptr noundef %61) #27
  %63 = fpext float %62 to double
  %64 = insertelement <2 x double> poison, double %63, i64 0
  %65 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi <2 x double> [ %59, %56 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  br label %68

68:                                               ; preds = %66, %41
  %69 = phi <2 x double> [ %42, %41 ], [ %67, %66 ]
  %70 = phi <2 x double> [ %29, %41 ], [ %54, %66 ]
  %71 = extractelement <2 x double> %69, i64 0
  %72 = fadd double %71, 1.000000e-10
  %73 = extractelement <2 x double> %70, i64 1
  %74 = fcmp olt double %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = fcmp olt double %71, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = fneg double %71
  %79 = fneg double %73
  %80 = call fastcc double @soft_range_round_up(double noundef %78, double noundef %79) #25
  %81 = fneg double %80
  br label %84

82:                                               ; preds = %75
  %83 = call fastcc double @soft_range_round_down(double noundef %71, double noundef %73) #25
  br label %84

84:                                               ; preds = %82, %77
  %85 = phi double [ %81, %77 ], [ %83, %82 ]
  %86 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %87 = load float, ptr %86, align 8, !tbaa !118
  %88 = fpext float %87 to double
  %89 = fcmp olt double %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %84, %90, %68
  %92 = phi double [ %88, %90 ], [ %85, %84 ], [ %73, %68 ]
  %93 = extractelement <2 x double> %69, i64 1
  %94 = fadd double %93, -1.000000e-10
  %95 = extractelement <2 x double> %70, i64 0
  %96 = fcmp ogt double %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = fcmp olt double %93, 0.000000e+00
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = fneg double %93
  %101 = fneg double %95
  %102 = call fastcc double @soft_range_round_down(double noundef %100, double noundef %101) #25
  %103 = fneg double %102
  br label %106

104:                                              ; preds = %97
  %105 = call fastcc double @soft_range_round_up(double noundef %93, double noundef %95) #25
  br label %106

106:                                              ; preds = %104, %99
  %107 = phi double [ %103, %99 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %109 = load float, ptr %108, align 4, !tbaa !119
  %110 = fpext float %109 to double
  %111 = fcmp ogt double %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %106, %112, %91
  %114 = phi double [ %110, %112 ], [ %107, %106 ], [ %95, %91 ]
  %115 = insertelement <2 x double> poison, double %92, i64 0
  %116 = insertelement <2 x double> %115, double %114, i64 1
  %117 = fptrunc <2 x double> %116 to <2 x float>
  %118 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  store <2 x float> %117, ptr %118, align 8, !tbaa !51
  br label %147

119:                                              ; preds = %1
  %120 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !101
  %122 = icmp eq ptr %121, null
  br i1 %122, label %147, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %125 = load i32, ptr %124, align 4, !tbaa !102
  %126 = and i32 %125, 224
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %123
  %129 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %132 = load float, ptr %131, align 8, !tbaa !118
  %133 = fcmp ogt float %132, %130
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %136 = load float, ptr %135, align 4, !tbaa !119
  %137 = fcmp olt float %136, %130
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %128, %134, %138
  %140 = phi float [ %136, %138 ], [ %130, %134 ], [ %132, %128 ]
  %141 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %142 = load float, ptr %141, align 8, !tbaa !256
  %143 = tail call fastcc float @min_ff(float noundef %142, float noundef %140) #25
  store float %143, ptr %141, align 8, !tbaa !256
  %144 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %145 = load float, ptr %144, align 4, !tbaa !257
  %146 = tail call fastcc float @max_ff(float noundef %145, float noundef %140) #25
  store float %146, ptr %144, align 4, !tbaa !257
  br label %147

147:                                              ; preds = %113, %14, %139, %123, %119
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @WM_key_event_string(i16 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockBeginAlign(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, 245760
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  tail call void @uiBlockEndAlign(ptr noundef nonnull %0) #25
  %7 = load i32, ptr %2, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %3, %1 ]
  %10 = or i32 %9, 131072
  store i32 %10, ptr %2, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 28
  %12 = load i16, ptr %11, align 4, !tbaa !258
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ui_but_can_align(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !111
  switch i32 %3, label %4 [
    i32 5120, label %7
    i32 19456, label %7
    i32 19968, label %7
    i32 10752, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp ne i32 %3, 27648
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %4
  %8 = phi i8 [ 0, %1 ], [ %6, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_block_do_align_but(ptr noundef %0, i16 noundef signext %1) unnamed_addr #12 !PGOFuncName !259 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %201, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 8, !tbaa !132
  %7 = icmp eq i16 %6, %1
  br i1 %7, label %8, label %35

8:                                                ; preds = %4, %25
  %9 = phi ptr [ %12, %25 ], [ %0, %4 ]
  %10 = phi i32 [ %26, %25 ], [ 0, %4 ]
  %11 = phi i32 [ %27, %25 ], [ 0, %4 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 10
  %16 = load i16, ptr %15, align 8, !tbaa !132
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %9, ptr noundef nonnull %12) #25, !range !67
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %10, 1
  br label %25

23:                                               ; preds = %18
  %24 = add nsw i32 %11, 1
  br label %25

25:                                               ; preds = %14, %23, %21
  %26 = phi i32 [ %22, %21 ], [ %10, %23 ], [ %10, %14 ]
  %27 = phi i32 [ %11, %21 ], [ %24, %23 ], [ %11, %14 ]
  %28 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 10
  %29 = load i16, ptr %28, align 8, !tbaa !132
  %30 = icmp eq i16 %29, %1
  br i1 %30, label %8, label %31, !llvm.loop !260

31:                                               ; preds = %8, %25
  %32 = phi i32 [ %27, %25 ], [ %11, %8 ]
  %33 = phi i32 [ %26, %25 ], [ %10, %8 ]
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %31, %4
  %36 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %37 = phi i1 [ true, %4 ], [ %34, %31 ]
  br i1 %3, label %201, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i32 %36, 0
  %40 = icmp eq i32 %36, 0
  %41 = select i1 %40, i32 65536, i32 196608
  %42 = select i1 %40, i32 32768, i32 49152
  br label %43

43:                                               ; preds = %38, %199
  %44 = phi i32 [ 0, %38 ], [ %200, %199 ]
  %45 = phi ptr [ %0, %38 ], [ %51, %199 ]
  %46 = phi ptr [ null, %38 ], [ %45, %199 ]
  %47 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 10
  %48 = load i16, ptr %47, align 8, !tbaa !132
  %49 = icmp eq i16 %48, %1
  br i1 %49, label %50, label %201

50:                                               ; preds = %43
  %51 = load ptr, ptr %45, align 8, !tbaa !129
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.uiBut, ptr %51, i64 0, i32 10
  %55 = load i16, ptr %54, align 8, !tbaa !132
  %56 = icmp eq i16 %55, %1
  %57 = select i1 %56, ptr %51, ptr null
  %58 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !261
  %60 = and i32 %59, -245761
  store i32 %60, ptr %58, align 4, !tbaa !261
  %61 = icmp eq i32 %44, 0
  %62 = icmp eq ptr %57, null
  br i1 %61, label %68, label %73

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !261
  %66 = and i32 %65, -245761
  store i32 %66, ptr %64, align 4, !tbaa !261
  %67 = icmp eq i32 %44, 0
  br i1 %67, label %132, label %74

68:                                               ; preds = %53
  br i1 %62, label %132, label %69

69:                                               ; preds = %68
  %70 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %45, ptr noundef nonnull %57) #25, !range !67
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 131072, i32 %41
  br label %132

73:                                               ; preds = %53
  br i1 %62, label %74, label %82

74:                                               ; preds = %63, %73
  %75 = phi ptr [ %58, %73 ], [ %64, %63 ]
  %76 = phi i32 [ %60, %73 ], [ %66, %63 ]
  %77 = icmp eq ptr %46, null
  br i1 %77, label %130, label %78

78:                                               ; preds = %74
  %79 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %46, ptr noundef nonnull %45) #25, !range !67
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 16384, i32 %42
  br label %124

82:                                               ; preds = %73
  %83 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %45, ptr noundef nonnull %57) #25, !range !67
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %82
  %86 = icmp eq ptr %46, null
  br i1 %86, label %106, label %87

87:                                               ; preds = %85
  %88 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %46, ptr noundef nonnull %45) #25, !range !67
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = and i32 %44, -49153
  %92 = or disjoint i32 %91, 16384
  br i1 %39, label %93, label %124

93:                                               ; preds = %90, %104
  %94 = phi ptr [ %95, %104 ], [ %45, %90 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !129
  %96 = icmp eq ptr %95, null
  br i1 %96, label %132, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.uiBut, ptr %95, i64 0, i32 10
  %99 = load i16, ptr %98, align 8, !tbaa !132
  %100 = icmp eq i16 %99, %1
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %94, ptr noundef nonnull %95) #25, !range !67
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %132, label %104

104:                                              ; preds = %101, %97
  %105 = icmp eq i16 %99, %1
  br i1 %105, label %93, label %132

106:                                              ; preds = %87, %85
  %107 = or i32 %44, 32768
  br label %132

108:                                              ; preds = %82
  br i1 %37, label %109, label %111

109:                                              ; preds = %108
  %110 = or i32 %44, 16384
  br label %132

111:                                              ; preds = %108
  %112 = icmp eq ptr %46, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %111
  %114 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %46, ptr noundef nonnull %45) #25, !range !67
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %113
  %117 = and i32 %44, -49153
  %118 = or disjoint i32 %117, 16384
  br label %132

119:                                              ; preds = %113
  %120 = or i32 %44, 32768
  %121 = and i32 %44, 16384
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 163840, i32 %120
  br label %124

124:                                              ; preds = %78, %119, %90
  %125 = phi i32 [ %60, %90 ], [ %60, %119 ], [ %76, %78 ]
  %126 = phi ptr [ %58, %90 ], [ %58, %119 ], [ %75, %78 ]
  %127 = phi ptr [ %51, %90 ], [ %51, %119 ], [ null, %78 ]
  %128 = phi i32 [ %92, %90 ], [ %123, %119 ], [ %81, %78 ]
  %129 = or i32 %128, %125
  store i32 %129, ptr %126, align 4, !tbaa !261
  br label %139

130:                                              ; preds = %74
  %131 = or i32 %76, %44
  store i32 %131, ptr %75, align 4, !tbaa !261
  br label %199

132:                                              ; preds = %93, %101, %104, %69, %116, %63, %109, %106, %68
  %133 = phi i32 [ %60, %68 ], [ %60, %106 ], [ %60, %109 ], [ %60, %116 ], [ %66, %63 ], [ %60, %69 ], [ %60, %104 ], [ %60, %101 ], [ %60, %93 ]
  %134 = phi ptr [ %58, %68 ], [ %58, %106 ], [ %58, %109 ], [ %58, %116 ], [ %64, %63 ], [ %58, %69 ], [ %58, %104 ], [ %58, %101 ], [ %58, %93 ]
  %135 = phi ptr [ null, %68 ], [ %51, %106 ], [ %51, %109 ], [ %51, %116 ], [ null, %63 ], [ %51, %69 ], [ %57, %104 ], [ %57, %101 ], [ %57, %93 ]
  %136 = phi i32 [ 0, %68 ], [ %107, %106 ], [ %110, %109 ], [ %118, %116 ], [ 0, %63 ], [ %72, %69 ], [ 81920, %93 ], [ %92, %101 ], [ 81920, %104 ]
  %137 = or i32 %136, %133
  store i32 %137, ptr %134, align 4, !tbaa !261
  %138 = icmp eq ptr %46, null
  br i1 %138, label %199, label %139

139:                                              ; preds = %124, %132
  %140 = phi i32 [ %128, %124 ], [ %136, %132 ]
  %141 = phi ptr [ %127, %124 ], [ %135, %132 ]
  br i1 %40, label %142, label %149

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 1
  %144 = load float, ptr %143, align 4, !tbaa !177
  %145 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18
  %146 = load float, ptr %145, align 8, !tbaa !175
  %147 = fadd float %144, %146
  %148 = fmul float %147, 5.000000e-01
  store float %148, ptr %145, align 8, !tbaa !175
  store float %148, ptr %143, align 4, !tbaa !177
  br label %199

149:                                              ; preds = %139
  br i1 %37, label %150, label %157

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 2
  %152 = load float, ptr %151, align 8, !tbaa !262
  %153 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18, i32 3
  %154 = load float, ptr %153, align 4, !tbaa !263
  %155 = fadd float %152, %154
  %156 = fmul float %155, 5.000000e-01
  store float %156, ptr %153, align 4, !tbaa !263
  store float %156, ptr %151, align 8, !tbaa !262
  br label %199

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %46, ptr noundef nonnull %45) #25, !range !67
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 1
  %162 = load float, ptr %161, align 4, !tbaa !177
  %163 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18
  %164 = load float, ptr %163, align 8, !tbaa !175
  %165 = fadd float %162, %164
  %166 = fmul float %165, 5.000000e-01
  store float %166, ptr %163, align 8, !tbaa !175
  store float %166, ptr %161, align 4, !tbaa !177
  %167 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 3
  %168 = load float, ptr %167, align 4, !tbaa !263
  %169 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18, i32 3
  store float %168, ptr %169, align 4, !tbaa !263
  br label %199

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !176
  %173 = icmp eq ptr %172, null
  br i1 %173, label %195, label %174

174:                                              ; preds = %170
  %175 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %172, ptr noundef nonnull %46) #25, !range !67
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18
  %179 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 2
  %180 = load float, ptr %179, align 8, !tbaa !262
  %181 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18
  %182 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18, i32 3
  %183 = load float, ptr %182, align 4, !tbaa !263
  %184 = fadd float %180, %183
  %185 = fmul float %184, 5.000000e-01
  store float %185, ptr %182, align 4, !tbaa !263
  store float %185, ptr %179, align 8, !tbaa !262
  %186 = load float, ptr %178, align 8, !tbaa !175
  store float %186, ptr %181, align 8, !tbaa !175
  %187 = icmp eq ptr %141, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %177
  %189 = tail call fastcc zeroext i8 @buts_are_horiz(ptr noundef nonnull %45, ptr noundef nonnull %141) #25, !range !67
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !177
  %194 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18, i32 1
  store float %193, ptr %194, align 4, !tbaa !177
  br label %199

195:                                              ; preds = %174, %170
  %196 = getelementptr inbounds %struct.uiBut, ptr %46, i64 0, i32 18, i32 2
  %197 = load float, ptr %196, align 8, !tbaa !262
  %198 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18, i32 3
  store float %197, ptr %198, align 4, !tbaa !263
  br label %199

199:                                              ; preds = %130, %132, %150, %195, %191, %188, %177, %160, %142
  %200 = phi i32 [ %136, %132 ], [ %140, %150 ], [ %140, %195 ], [ %140, %191 ], [ %140, %188 ], [ %140, %177 ], [ %140, %160 ], [ %140, %142 ], [ %44, %130 ]
  br i1 %52, label %201, label %43, !llvm.loop !264

201:                                              ; preds = %43, %199, %2, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_block_display_get(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 52
  %3 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %2) #27
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_block_to_display_space_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @ui_block_display_get(ptr noundef %0) #25
  tail call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %1, ptr noundef %3) #27
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_block_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @ui_block_display_get(ptr noundef %0) #25
  tail call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %1, ptr noundef %3) #27
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  tail call void @ui_check_but(ptr noundef %15) #25
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) unnamed_addr #6 !PGOFuncName !265 {
  %15 = and i32 %1, 224
  %16 = icmp ne i32 %15, 0
  %17 = icmp eq ptr %8, null
  %18 = and i1 %16, %17
  br i1 %18, label %174, label %19

19:                                               ; preds = %14
  %20 = and i32 %1, 32256
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %22 = tail call ptr %21(i64 noundef 1000, ptr noundef nonnull @.str.28) #27
  %23 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 4
  store i32 %20, ptr %23, align 8, !tbaa !111
  %24 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 5
  store i32 %15, ptr %24, align 4, !tbaa !102
  %25 = trunc i32 %1 to i16
  %26 = and i16 %25, 256
  %27 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 6
  store i16 %26, ptr %27, align 8, !tbaa !205
  %28 = and i16 %25, 31
  %29 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 7
  store i16 %28, ptr %29, align 2, !tbaa !206
  %30 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 44
  store i32 0, ptr %30, align 8, !tbaa !131
  %31 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 51
  store i16 0, ptr %31, align 4, !tbaa !120
  %32 = trunc i32 %2 to i16
  %33 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 8
  store i16 %32, ptr %33, align 4, !tbaa !93
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %35 = trunc i64 %34 to i32
  %36 = icmp sgt i32 %35, 127
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %39 = add i64 %34, 1
  %40 = and i64 %39, 4294967295
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.29) #27
  br label %44

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 16
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 15
  store ptr %45, ptr %46, align 8
  %47 = shl i64 %34, 32
  %48 = add i64 %47, 4294967296
  %49 = ashr exact i64 %48, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %3, i64 %49, i1 false)
  %50 = sitofp i32 %4 to float
  %51 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18
  store float %50, ptr %51, align 8, !tbaa !175
  %52 = sitofp i32 %5 to float
  %53 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 2
  store float %52, ptr %53, align 8, !tbaa !262
  %54 = sitofp i16 %6 to float
  %55 = fadd float %50, %54
  %56 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 1
  store float %55, ptr %56, align 4, !tbaa !177
  %57 = sitofp i16 %7 to float
  %58 = fadd float %52, %57
  %59 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 3
  store float %58, ptr %59, align 4, !tbaa !263
  %60 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 19
  store ptr %8, ptr %60, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 22
  store float %9, ptr %61, align 8, !tbaa !256
  %62 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 20
  store float %9, ptr %62, align 8, !tbaa !118
  %63 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 23
  store float %10, ptr %63, align 4, !tbaa !257
  %64 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 21
  store float %10, ptr %64, align 4, !tbaa !119
  %65 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 24
  store float %11, ptr %65, align 8, !tbaa !266
  %66 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 25
  store float %12, ptr %66, align 4, !tbaa !238
  %67 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 42
  store ptr %13, ptr %67, align 8, !tbaa !267
  %68 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  %69 = load i8, ptr %68, align 8, !tbaa !217
  %70 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 45
  store i8 %69, ptr %70, align 4, !tbaa !135
  %71 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  %72 = load ptr, ptr %71, align 8, !tbaa !218
  %73 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 43
  store ptr %72, ptr %73, align 8, !tbaa !268
  %74 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 30
  %75 = load i8, ptr %74, align 1, !tbaa !249
  %76 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 46
  store i8 %75, ptr %76, align 1, !tbaa !269
  %77 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 47
  store i8 -1, ptr %77, align 2, !tbaa !168
  %78 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 74
  store ptr %0, ptr %78, align 8, !tbaa !121
  %79 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %80 = load i32, ptr %79, align 8, !tbaa !34
  %81 = and i32 %80, 245760
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %44
  %84 = tail call zeroext i8 @ui_but_can_align(ptr noundef nonnull %22) #25, !range !67
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 28
  %88 = load i16, ptr %87, align 4, !tbaa !258
  %89 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 10
  store i16 %88, ptr %89, align 8, !tbaa !132
  br label %90

90:                                               ; preds = %86, %83, %44
  %91 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 14
  %92 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 27
  %93 = load <2 x ptr>, ptr %91, align 8, !tbaa !64
  store <2 x ptr> %93, ptr %92, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  %95 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 29
  %96 = load <2 x ptr>, ptr %94, align 8, !tbaa !64
  store <2 x ptr> %96, ptr %95, align 8, !tbaa !64
  %97 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 18
  %98 = load ptr, ptr %97, align 8, !tbaa !243
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %90
  %101 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !64
  %102 = tail call ptr %101(ptr noundef nonnull %98) #27
  %103 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 31
  store ptr %102, ptr %103, align 8, !tbaa !109
  br label %104

104:                                              ; preds = %100, %90
  %105 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 12
  store i16 -1, ptr %105, align 4, !tbaa !270
  %106 = load i32, ptr %23, align 8, !tbaa !111
  switch i32 %106, label %122 [
    i32 2560, label %107
    i32 7168, label %107
  ]

107:                                              ; preds = %104, %104
  %108 = add i32 %35, -1
  %109 = icmp ult i32 %108, 125
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load ptr, ptr %46, align 8, !tbaa !78
  %112 = add i64 %34, 4294967295
  %113 = and i64 %112, 4294967295
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !113
  %116 = icmp eq i8 %115, 32
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = and i64 %34, 4294967295
  %119 = getelementptr inbounds i8, ptr %111, i64 %118
  store i8 32, ptr %119, align 1, !tbaa !113
  %120 = load ptr, ptr %46, align 8, !tbaa !78
  %121 = getelementptr inbounds i8, ptr %120, i64 %49
  store i8 0, ptr %121, align 1, !tbaa !113
  br label %122

122:                                              ; preds = %104, %107, %117, %110
  %123 = load i32, ptr %79, align 8, !tbaa !34
  %124 = and i32 %123, 1048576
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !261
  %129 = or i32 %128, 6
  br label %146

130:                                              ; preds = %122
  %131 = and i32 %123, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, ptr %23, align 8, !tbaa !111
  switch i32 %134, label %135 [
    i32 5632, label %138
    i32 3072, label %138
    i32 5120, label %138
    i32 9728, label %138
    i32 10240, label %138
    i32 20992, label %138
    i32 26112, label %138
    i32 26624, label %138
    i32 2560, label %142
    i32 7168, label %142
  ]

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !261
  br label %146

138:                                              ; preds = %133, %133, %133, %133, %133, %133, %133, %133, %130
  %139 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !261
  %141 = or i32 %140, 6
  br label %146

142:                                              ; preds = %133, %133
  %143 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %144 = load i32, ptr %143, align 4, !tbaa !261
  %145 = or i32 %144, 2
  br label %146

146:                                              ; preds = %135, %138, %142, %126
  %147 = phi i32 [ %137, %135 ], [ %141, %138 ], [ %145, %142 ], [ %129, %126 ]
  %148 = and i32 %123, 245760
  %149 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %150 = or i32 %147, %148
  store i32 %150, ptr %149, align 4, !tbaa !261
  %151 = load i8, ptr %70, align 4, !tbaa !135
  %152 = icmp eq i8 %151, 1
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load ptr, ptr %73, align 8, !tbaa !268
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !112
  %159 = or i32 %158, 2048
  store i32 %159, ptr %157, align 8, !tbaa !112
  br label %160

160:                                              ; preds = %153, %156, %146
  %161 = load i32, ptr %23, align 8, !tbaa !111
  switch i32 %161, label %162 [
    i32 9728, label %168
    i32 512, label %168
    i32 5120, label %168
    i32 13824, label %168
    i32 14336, label %168
    i32 17920, label %168
    i32 10240, label %168
    i32 9216, label %168
    i32 10752, label %168
    i32 27648, label %168
    i32 28160, label %168
  ]

162:                                              ; preds = %160
  %163 = icmp ugt i32 %161, 20991
  br i1 %163, label %168, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !112
  %167 = or i32 %166, 524288
  store i32 %167, ptr %165, align 8, !tbaa !112
  br label %168

168:                                              ; preds = %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %164, %162
  %169 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %22) #27
  %170 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  %171 = load ptr, ptr %170, align 8, !tbaa !271
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  tail call void @ui_layout_add_but(ptr noundef nonnull %171, ptr noundef nonnull %22) #27
  br label %174

174:                                              ; preds = %168, %173, %14
  %175 = phi ptr [ null, %14 ], [ %22, %173 ], [ %22, %168 ]
  ret ptr %175
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @autocomplete_begin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.21) #27
  store i64 %1, ptr %4, align 8, !tbaa !272
  %5 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !274
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %7 = tail call ptr %6(i64 noundef %1, ptr noundef nonnull @.str.22) #27
  %8 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !275
  %9 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 3
  store ptr %0, ptr %9, align 8, !tbaa !276
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @autocomplete_do_name(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !275
  %5 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !276
  %7 = load i64, ptr %0, align 8, !tbaa !272
  %8 = add i64 %7, -1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %13

10:                                               ; preds = %18
  %11 = add nuw i64 %14, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %22, label %13, !llvm.loop !277

13:                                               ; preds = %2, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %15 = getelementptr inbounds i8, ptr %6, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !113
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %1, i64 %14
  %20 = load i8, ptr %19, align 1, !tbaa !113
  %21 = icmp eq i8 %16, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %10, %18, %13, %2
  %23 = phi i64 [ 0, %2 ], [ %14, %13 ], [ %14, %18 ], [ %8, %10 ]
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !113
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !274
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !274
  %31 = load i8, ptr %4, align 1, !tbaa !113
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = icmp eq i64 %7, 1
  br i1 %34, label %55, label %37

35:                                               ; preds = %27
  %36 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %7) #27
  br label %55

37:                                               ; preds = %33, %50
  %38 = phi i64 [ %51, %50 ], [ %7, %33 ]
  %39 = phi i64 [ %52, %50 ], [ 0, %33 ]
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !113
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds i8, ptr %4, i64 %39
  br i1 %42, label %44, label %45

44:                                               ; preds = %37
  store i8 0, ptr %43, align 1, !tbaa !113
  br label %55

45:                                               ; preds = %37
  %46 = load i8, ptr %43, align 1, !tbaa !113
  %47 = icmp eq i8 %46, %41
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  store i8 0, ptr %43, align 1, !tbaa !113
  %49 = load i64, ptr %0, align 8, !tbaa !272
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i64 [ %49, %48 ], [ %38, %45 ]
  %52 = add nuw i64 %39, 1
  %53 = add i64 %51, -1
  %54 = icmp ugt i64 %53, %52
  br i1 %54, label %37, label %55, !llvm.loop !278

55:                                               ; preds = %50, %33, %35, %44, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @autocomplete_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !275
  %5 = load i8, ptr %4, align 1, !tbaa !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !274
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 1, i32 2
  %12 = load i64, ptr %0, align 8, !tbaa !272
  %13 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef %12) #27
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !276
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %0, align 8, !tbaa !272
  %20 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %16, i64 noundef %19) #27
  br label %21

21:                                               ; preds = %14, %18, %7
  %22 = phi i32 [ %11, %7 ], [ 0, %18 ], [ 0, %14 ]
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %24 = load ptr, ptr %3, align 8, !tbaa !275
  tail call void %23(ptr noundef %24) #27
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %25(ptr noundef nonnull %0) #27
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 128
  %16 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 128
  %17 = tail call fastcc ptr @uiDefButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @uiDefButBit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) unnamed_addr #6 !PGOFuncName !279 {
  %16 = tail call fastcc i32 @findBitIndex(i32 noundef %2) #25
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = or i32 %16, %1
  %20 = or i32 %19, 256
  %21 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef %20, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 96
  %16 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 96
  %17 = tail call fastcc ptr @uiDefButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 64
  %16 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 64
  %17 = tail call fastcc ptr @uiDefButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 32
  %16 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 32
  %17 = tail call fastcc ptr @uiDefButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna_propname(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  tail call void @ui_check_but(ptr noundef %17) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_def_but_rna_propname(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) unnamed_addr #6 !PGOFuncName !280 {
  %17 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef %9) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef nonnull %17, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  br label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  tail call fastcc void @ui_def_but_rna__disable(ptr noundef %22) #25
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  tail call void @ui_check_but(ptr noundef %17) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) unnamed_addr #6 !PGOFuncName !281 {
  %17 = alloca ptr, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = tail call i32 @RNA_property_type(ptr noundef %9) #27
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %73

32:                                               ; preds = %16
  %33 = icmp eq i32 %1, 5632
  switch i32 %1, label %73 [
    i32 18432, label %34
    i32 5632, label %34
    i32 1024, label %34
  ]

34:                                               ; preds = %32, %32, %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #26
  %35 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 48
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  call void @RNA_property_enum_items(ptr noundef %36, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %18) #27
  br i1 %33, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @RNA_property_enum_get(ptr noundef %8, ptr noundef %9) #27
  br label %41

39:                                               ; preds = %34
  %40 = fptosi float %12 to i32
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load ptr, ptr %17, align 8, !tbaa !64
  %44 = call i32 @RNA_enum_from_value(ptr noundef %43, i32 noundef %42) #27
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = icmp eq ptr %3, null
  %48 = load ptr, ptr %17, align 8, !tbaa !64
  %49 = sext i32 %44 to i64
  br i1 %47, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.EnumPropertyItem, ptr %48, i64 %49, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !282
  br label %53

53:                                               ; preds = %46, %50
  %54 = phi ptr [ %52, %50 ], [ %3, %46 ]
  %55 = getelementptr inbounds %struct.EnumPropertyItem, ptr %48, i64 %49, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !284
  br label %63

57:                                               ; preds = %41
  %58 = icmp ne ptr %3, null
  %59 = or i1 %33, %58
  %60 = select i1 %58, ptr %3, ptr @.str.23
  br i1 %59, label %63, label %61

61:                                               ; preds = %57
  %62 = call ptr @RNA_property_ui_name(ptr noundef %9) #27
  br label %63

63:                                               ; preds = %57, %61, %53
  %64 = phi i32 [ %56, %53 ], [ 0, %57 ], [ 0, %61 ]
  %65 = phi ptr [ %54, %53 ], [ %60, %57 ], [ %62, %61 ]
  %66 = select i1 %33, ptr @ui_def_but_rna__menu, ptr null
  %67 = load i8, ptr %18, align 1, !tbaa !113
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %71 = load ptr, ptr %17, align 8, !tbaa !64
  call void %70(ptr noundef %71) #27
  br label %72

72:                                               ; preds = %63, %69
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #26
  br label %85

73:                                               ; preds = %32, %16
  %74 = icmp eq ptr %3, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = tail call ptr @RNA_property_ui_name(ptr noundef %9) #27
  br label %77

77:                                               ; preds = %73, %75
  %78 = phi ptr [ %3, %73 ], [ %76, %75 ]
  %79 = tail call i32 @RNA_property_ui_icon(ptr noundef %9) #27
  %80 = icmp eq ptr %15, null
  %81 = icmp ne i32 %30, 4
  %82 = and i1 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = tail call ptr @RNA_property_ui_description(ptr noundef %9) #27
  br label %85

85:                                               ; preds = %72, %83, %77
  %86 = phi ptr [ %78, %83 ], [ %78, %77 ], [ %65, %72 ]
  %87 = phi ptr [ null, %83 ], [ null, %77 ], [ %66, %72 ]
  %88 = phi i32 [ %79, %83 ], [ %79, %77 ], [ %64, %72 ]
  %89 = phi ptr [ %84, %83 ], [ %15, %77 ], [ %15, %72 ]
  %90 = fcmp oeq float %11, %12
  %91 = fcmp oeq float %13, -1.000000e+00
  %92 = or i1 %90, %91
  %93 = fcmp oeq float %14, -1.000000e+00
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %85
  switch i32 %30, label %127 [
    i32 1, label %96
    i32 2, label %110
    i32 3, label %122
  ]

96:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #26
  call void @RNA_property_int_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull %20) #27
  call void @RNA_property_int_ui_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #27
  switch i32 %1, label %97 [
    i32 18432, label %103
    i32 1024, label %103
  ]

97:                                               ; preds = %96
  br i1 %90, label %98, label %103

98:                                               ; preds = %97
  %99 = load i32, ptr %19, align 4, !tbaa !53
  %100 = sitofp i32 %99 to float
  %101 = load i32, ptr %20, align 4, !tbaa !53
  %102 = sitofp i32 %101 to float
  br label %103

103:                                              ; preds = %96, %96, %98, %97
  %104 = phi float [ %12, %96 ], [ %102, %98 ], [ %12, %97 ], [ %12, %96 ]
  %105 = phi float [ %11, %96 ], [ %100, %98 ], [ %11, %97 ], [ %11, %96 ]
  %106 = load i32, ptr %23, align 4
  %107 = sitofp i32 %106 to float
  %108 = select i1 %91, float %107, float %13
  %109 = select i1 %93, float 0.000000e+00, float %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #26
  br label %127

110:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #26
  call void @RNA_property_float_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %24, ptr noundef nonnull %25) #27
  call void @RNA_property_float_ui_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #27
  switch i32 %1, label %111 [
    i32 18432, label %115
    i32 1024, label %115
  ]

111:                                              ; preds = %110
  br i1 %90, label %112, label %115

112:                                              ; preds = %111
  %113 = load float, ptr %24, align 4, !tbaa !51
  %114 = load float, ptr %25, align 4, !tbaa !51
  br label %115

115:                                              ; preds = %110, %110, %112, %111
  %116 = phi float [ %12, %110 ], [ %114, %112 ], [ %12, %111 ], [ %12, %110 ]
  %117 = phi float [ %11, %110 ], [ %113, %112 ], [ %11, %111 ], [ %11, %110 ]
  %118 = load float, ptr %28, align 4
  %119 = select i1 %91, float %118, float %13
  %120 = load float, ptr %29, align 4
  %121 = select i1 %93, float %120, float %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #26
  br label %127

122:                                              ; preds = %95
  %123 = call i32 @RNA_property_string_maxlength(ptr noundef %9) #27
  %124 = sitofp i32 %123 to float
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %95, %103, %126, %122, %115, %85
  %128 = phi float [ %108, %103 ], [ %119, %115 ], [ %13, %126 ], [ %13, %122 ], [ %13, %85 ], [ %13, %95 ]
  %129 = phi float [ %109, %103 ], [ %121, %115 ], [ %14, %126 ], [ %14, %122 ], [ %14, %85 ], [ %14, %95 ]
  %130 = phi float [ %104, %103 ], [ %116, %115 ], [ 4.000000e+02, %126 ], [ %124, %122 ], [ %12, %85 ], [ %12, %95 ]
  %131 = phi float [ %105, %103 ], [ %117, %115 ], [ 0.000000e+00, %126 ], [ 0.000000e+00, %122 ], [ %11, %85 ], [ %11, %95 ]
  %132 = call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %86, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef %131, float noundef %130, float noundef %128, float noundef %129, ptr noundef %89) #25
  %133 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %133, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !240
  %134 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 55
  store ptr %9, ptr %134, align 8, !tbaa !95
  %135 = call zeroext i8 @RNA_property_array_check(ptr noundef %9) #27
  %136 = icmp eq i8 %135, 0
  %137 = select i1 %136, i32 0, i32 %10
  %138 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 56
  store i32 %137, ptr %138, align 8
  %139 = icmp eq i32 %88, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 44
  store i32 %88, ptr %141, align 8, !tbaa !131
  %142 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !112
  %144 = or i32 %143, 8
  store i32 %144, ptr %142, align 8, !tbaa !112
  %145 = load i8, ptr %86, align 1, !tbaa !113
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !261
  %150 = or i32 %149, 4
  store i32 %150, ptr %148, align 4, !tbaa !261
  br label %151

151:                                              ; preds = %140, %147, %127
  %152 = icmp eq i32 %1, 5632
  br i1 %152, label %153, label %161

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 46
  %155 = load i8, ptr %154, align 1, !tbaa !269
  %156 = icmp eq i8 %155, 2
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !112
  %160 = or i32 %159, 64
  store i32 %160, ptr %158, align 8, !tbaa !112
  br label %161

161:                                              ; preds = %157, %153, %151
  %162 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %133, ptr noundef %9) #27
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  call fastcc void @ui_def_but_rna__disable(ptr noundef nonnull %132) #25
  br label %165

165:                                              ; preds = %164, %161
  %166 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !112
  %168 = and i32 %167, 524288
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = call fastcc zeroext i8 @ui_is_but_rna_undo(ptr noundef nonnull %132) #25, !range !67
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, ptr %166, align 8, !tbaa !112
  %175 = and i32 %174, -524289
  store i32 %175, ptr %166, align 8, !tbaa !112
  br label %176

176:                                              ; preds = %173, %170, %165
  %177 = icmp eq i32 %30, 2
  br i1 %177, label %178, label %185

178:                                              ; preds = %176
  %179 = call zeroext i8 @ui_is_but_unit(ptr noundef nonnull %132) #25, !range !67
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 24
  %183 = load float, ptr %182, align 8, !tbaa !266
  %184 = call fastcc float @ui_get_but_step_unit(ptr noundef nonnull %132, float noundef %183) #25
  store float %184, ptr %182, align 8, !tbaa !266
  br label %185

185:                                              ; preds = %181, %178, %176
  %186 = icmp eq ptr %87, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 53
  store ptr %87, ptr %188, align 8, !tbaa !285
  %189 = getelementptr inbounds %struct.uiBut, ptr %132, i64 0, i32 19
  store ptr %132, ptr %189, align 8, !tbaa !101
  br label %190

190:                                              ; preds = %187, %185
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) #25
  tail call void @ui_check_but(ptr noundef %11) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) unnamed_addr #6 !PGOFuncName !286 {
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = icmp eq ptr %2, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !287
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %16) #27
  br label %20

20:                                               ; preds = %14, %18, %10
  %21 = phi ptr [ %4, %10 ], [ %19, %18 ], [ @.str.23, %14 ]
  %22 = icmp eq ptr %9, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %9, align 1, !tbaa !113
  %25 = icmp eq i8 %24, 0
  %26 = icmp ne ptr %2, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %36

28:                                               ; preds = %20
  %29 = icmp eq ptr %2, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !287
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @RNA_struct_ui_description(ptr noundef nonnull %32) #27
  br label %36

36:                                               ; preds = %12, %34, %30, %28, %23
  %37 = phi ptr [ %21, %34 ], [ %21, %30 ], [ %21, %23 ], [ %21, %28 ], [ @.str.23, %12 ]
  %38 = phi ptr [ %35, %34 ], [ %9, %30 ], [ %9, %23 ], [ null, %28 ], [ %9, %12 ]
  %39 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef %37, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %38) #25
  %40 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 59
  store ptr %2, ptr %40, align 8, !tbaa !103
  %41 = trunc i32 %3 to i16
  %42 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 61
  store i16 %41, ptr %42, align 8, !tbaa !134
  %43 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !112
  %45 = and i32 %44, -524289
  store i32 %45, ptr %43, align 8, !tbaa !112
  %46 = icmp eq ptr %2, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = or i32 %45, 2048
  store i32 %48, ptr %43, align 8, !tbaa !112
  %49 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 45
  store i8 1, ptr %49, align 4, !tbaa !135
  %50 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 43
  store ptr @.str.23, ptr %50, align 8, !tbaa !268
  br label %51

51:                                               ; preds = %47, %36
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #27
  %12 = icmp eq ptr %4, null
  %13 = icmp eq ptr %11, null
  %14 = and i1 %12, %13
  %15 = select i1 %14, ptr %2, ptr %4
  %16 = tail call ptr @uiDefButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef %3, ptr noundef %15, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %15, i32 noundef %3) #25
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_check_but_and_iconize(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !290 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 44
  store i32 %1, ptr %5, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 8, !tbaa !112
  br label %9

9:                                                ; preds = %4, %2
  tail call void @ui_check_but(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 128
  %16 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 128
  %17 = tail call fastcc ptr @uiDefIconButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @uiDefIconButBit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) unnamed_addr #6 !PGOFuncName !291 {
  %16 = tail call fastcc i32 @findBitIndex(i32 noundef %2) #25
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = or i32 %16, %1
  %20 = or i32 %19, 256
  %21 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef %20, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 96
  %16 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 96
  %17 = tail call fastcc ptr @uiDefIconButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 64
  %16 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 64
  %17 = tail call fastcc ptr @uiDefIconButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 32
  %16 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 32
  %17 = tail call fastcc ptr @uiDefIconButBit(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna_propname(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %17, i32 noundef %3) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %17, i32 noundef %3) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %11, i32 noundef %4) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #27
  %12 = tail call ptr @uiDefIconButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) #25
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %16, i32 noundef %3) #25
  %17 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !261
  %19 = or i32 %18, 4
  store i32 %19, ptr %17, align 4, !tbaa !261
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 128
  %17 = tail call ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = or i32 %1, 128
  %18 = tail call fastcc ptr @uiDefIconTextButBit(ptr noundef %0, i32 noundef %17, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @uiDefIconTextButBit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) unnamed_addr #6 !PGOFuncName !292 {
  %17 = tail call fastcc i32 @findBitIndex(i32 noundef %2) #25
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = or i32 %17, %1
  %21 = or i32 %20, 256
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %21, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  br label %23

23:                                               ; preds = %16, %19
  %24 = phi ptr [ %22, %19 ], [ null, %16 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 96
  %17 = tail call ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = or i32 %1, 96
  %18 = tail call fastcc ptr @uiDefIconTextButBit(ptr noundef %0, i32 noundef %17, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 64
  %17 = tail call ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = or i32 %1, 64
  %18 = tail call fastcc ptr @uiDefIconTextButBit(ptr noundef %0, i32 noundef %17, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 32
  %17 = tail call ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %16, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) #25
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = or i32 %1, 32
  %18 = tail call fastcc ptr @uiDefIconTextButBit(ptr noundef %0, i32 noundef %17, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) #25
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) local_unnamed_addr #6 {
  %18 = tail call fastcc ptr @ui_def_but_rna_propname(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %18, i32 noundef %3) #25
  %19 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !261
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 4, !tbaa !261
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) local_unnamed_addr #6 {
  %18 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %18, i32 noundef %3) #25
  %19 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !261
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 4, !tbaa !261
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) local_unnamed_addr #6 {
  %12 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) #25
  tail call fastcc void @ui_check_but_and_iconize(ptr noundef %12, i32 noundef %4) #25
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !261
  %15 = or i32 %14, 4
  store i32 %15, ptr %13, align 4, !tbaa !261
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) local_unnamed_addr #6 {
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #27
  %13 = tail call ptr @uiDefIconTextButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %12, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) #25
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiSetButLink(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %8 = tail call ptr %7(i64 noundef 48, ptr noundef nonnull @.str.24) #27
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 40
  store ptr %8, ptr %9, align 8, !tbaa !110
  store ptr %1, ptr %8, align 8, !tbaa !214
  %10 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !210
  %11 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 2
  store ptr %3, ptr %11, align 8, !tbaa !212
  %12 = trunc i32 %4 to i16
  %13 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 5
  store i16 %12, ptr %13, align 4, !tbaa !293
  %14 = trunc i32 %5 to i16
  %15 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 6
  store i16 %14, ptr %15, align 2, !tbaa !294
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiBlocksGetYMin(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 11, i32 2
  br label %6

6:                                                ; preds = %4, %20
  %7 = phi ptr [ %2, %4 ], [ %22, %20 ]
  %8 = phi i32 [ 0, %4 ], [ %21, %20 ]
  %9 = icmp eq ptr %7, %2
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load float, ptr %5, align 8, !tbaa !71
  br label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 11, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !71
  %15 = sitofp i32 %8 to float
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %12
  %18 = phi float [ %11, %10 ], [ %14, %12 ]
  %19 = fptosi float %18 to i32
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i32 [ %19, %17 ], [ %8, %12 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !295

24:                                               ; preds = %20, %1
  %25 = phi i32 [ 0, %1 ], [ %21, %20 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetDirection(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 29
  store i8 %1, ptr %3, align 2, !tbaa !296
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiBlockFlipOrder(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !297
  %3 = and i32 %2, 8388608
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %10, %22
  %15 = phi ptr [ %31, %22 ], [ %12, %10 ]
  %16 = phi float [ %30, %22 ], [ -1.000000e+04, %10 ]
  %17 = phi float [ %26, %22 ], [ 1.000000e+04, %10 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !261
  %20 = and i32 %19, 245760
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 18, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !262
  %25 = fcmp olt float %24, %17
  %26 = select i1 %25, float %24, float %17
  %27 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 18, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !263
  %29 = fcmp ogt float %28, %16
  %30 = select i1 %29, float %28, float %16
  %31 = load ptr, ptr %15, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14, !llvm.loop !298

33:                                               ; preds = %22
  %34 = fadd float %26, %30
  %35 = fmul float %34, 5.000000e-01
  br i1 %13, label %48, label %36

36:                                               ; preds = %33
  %37 = insertelement <2 x float> poison, float %35, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %46, %39 ], [ %12, %36 ]
  %41 = getelementptr inbounds %struct.uiBut, ptr %40, i64 0, i32 18, i32 2
  %42 = load <2 x float>, ptr %41, align 8, !tbaa !51
  %43 = fsub <2 x float> %42, %38
  %44 = fsub <2 x float> %38, %43
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %45, ptr %41, align 8, !tbaa !51
  %46 = load ptr, ptr %40, align 8, !tbaa !64
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !299

48:                                               ; preds = %14, %39, %10, %33, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockSetFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockClearFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButClearFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetDrawFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !261
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButClearDrawFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !261
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetMenuFromPulldown(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  store i32 5632, ptr %2, align 8, !tbaa !111
  tail call void @uiButClearDrawFlag(ptr noundef %0, i32 noundef 8) #25
  tail call void @uiButSetDrawFlag(ptr noundef %0, i32 noundef 2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uiButGetRetVal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !93
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragID(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 0, ptr %3, align 1, !tbaa !300
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragRNA(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 1, ptr %3, align 1, !tbaa !300
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragPath(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 2, ptr %3, align 1, !tbaa !300
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragName(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 3, ptr %3, align 1, !tbaa !300
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragValue(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 4, ptr %2, align 1, !tbaa !300
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragImage(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #10 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 2, ptr %6, align 1, !tbaa !300
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 44
  store i32 %2, ptr %7, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %8, align 8, !tbaa !301
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 65
  store ptr %3, ptr %9, align 8, !tbaa !302
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 66
  store float %4, ptr %10, align 8, !tbaa !303
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiButGetOperatorPtrRNA(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.25) #27
  store ptr %11, ptr %6, align 8, !tbaa !108
  %12 = load ptr, ptr %2, align 8, !tbaa !103
  tail call void @WM_operator_properties_create_ptr(ptr noundef %11, ptr noundef %12) #27
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 60
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  ret ptr %15
}

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetUnitType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = lshr i32 %1, 16
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  store i8 %4, ptr %5, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetHandleFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 21
  store ptr %1, ptr %4, align 8, !tbaa !304
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 22
  store ptr %2, ptr %5, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetButmFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 19
  store ptr %1, ptr %4, align 8, !tbaa !306
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 20
  store ptr %2, ptr %5, align 8, !tbaa !307
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 14
  store ptr %1, ptr %5, align 8, !tbaa !308
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 15
  store ptr %2, ptr %6, align 8, !tbaa !309
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  store ptr %3, ptr %7, align 8, !tbaa !310
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiBlockSetNFunc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %9(ptr noundef nonnull %6) #27
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 17
  store ptr %1, ptr %11, align 8, !tbaa !311
  store ptr %2, ptr %5, align 8, !tbaa !243
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  store ptr %3, ptr %12, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetRenameFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 37
  store ptr %1, ptr %4, align 8, !tbaa !312
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 38
  store ptr %2, ptr %5, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetDrawExtraFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 24
  store ptr %1, ptr %5, align 8, !tbaa !314
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 25
  store ptr %2, ptr %6, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 26
  store ptr %3, ptr %7, align 8, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 27
  store ptr %1, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 28
  store ptr %2, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr %3, ptr %7, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiButSetNFunc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %9(ptr noundef nonnull %6) #27
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 30
  store ptr %1, ptr %11, align 8, !tbaa !98
  store ptr %2, ptr %5, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr %3, ptr %12, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetCompleteFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 33
  store ptr %1, ptr %4, align 8, !tbaa !317
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 34
  store ptr %2, ptr %5, align 8, !tbaa !318
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !319
  tail call void @ui_check_but(ptr noundef %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiDefBlockButN(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !319
  %12 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %16(ptr noundef nonnull %13) #27
  br label %17

17:                                               ; preds = %15, %9
  store ptr %2, ptr %12, align 8, !tbaa !109
  tail call void @ui_check_but(ptr noundef nonnull %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefPulldownBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !319
  tail call void @ui_check_but(ptr noundef %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 53
  store ptr %1, ptr %11, align 8, !tbaa !285
  tail call void @ui_check_but(ptr noundef %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconTextMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9) #25
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %3, ptr %12, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %14 = load <2 x i32>, ptr %13, align 8, !tbaa !53
  %15 = or <2 x i32> %14, <i32 72, i32 4>
  store <2 x i32> %15, ptr %13, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 53
  store ptr %1, ptr %16, align 8, !tbaa !285
  tail call void @ui_check_but(ptr noundef %11) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 44
  store i32 %3, ptr %11, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = or i32 %13, 8
  store i32 %14, ptr %12, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !261
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 4, !tbaa !261
  %18 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 53
  store ptr %1, ptr %18, align 8, !tbaa !285
  tail call void @ui_check_but(ptr noundef %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiDefIconTextBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9) #25
  %12 = icmp eq i32 %3, 28
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %3, ptr %14, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !261
  %17 = or i32 %16, 4
  store i32 %17, ptr %15, align 4, !tbaa !261
  br label %18

18:                                               ; preds = %13, %10
  %19 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = or i32 %20, 72
  store i32 %21, ptr %19, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 52
  store ptr %1, ptr %22, align 8, !tbaa !319
  tail call void @ui_check_but(ptr noundef %11) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefIconBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9) #25
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %4, ptr %12, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %14 = load <2 x i32>, ptr %13, align 8, !tbaa !53
  %15 = or <2 x i32> %14, <i32 8, i32 4>
  store <2 x i32> %15, ptr %13, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 52
  store ptr %1, ptr %16, align 8, !tbaa !319
  tail call void @ui_check_but(ptr noundef %11) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefKeyevtButS(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 12352, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8) #25
  tail call void @ui_check_but(ptr noundef %10) #25
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefHotKeyevtButS(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 23616, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9) #25
  %12 = load i16, ptr %8, align 2, !tbaa !162
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 50
  store i16 %12, ptr %13, align 2, !tbaa !123
  tail call void @ui_check_but(ptr noundef %11) #25
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefSearchBut(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, float noundef %9, float noundef %10, ptr noundef %11) local_unnamed_addr #6 {
  %13 = sitofp i32 %4 to float
  %14 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 20992, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %1, float noundef 0.000000e+00, float noundef %13, float noundef %9, float noundef %10, ptr noundef %11) #25
  %15 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 44
  store i32 %3, ptr %15, align 8, !tbaa !131
  %16 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 2
  %17 = load <2 x i32>, ptr %16, align 8, !tbaa !53
  %18 = or <2 x i32> %17, <i32 8, i32 6>
  store <2 x i32> %18, ptr %16, align 8, !tbaa !53
  tail call void @ui_check_but(ptr noundef %14) #25
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiButSetSearchFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 35
  store ptr %1, ptr %6, align 8, !tbaa !320
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 36
  store ptr %2, ptr %7, align 8, !tbaa !321
  tail call void @uiButSetFunc(ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4) #25
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %16 = load i8, ptr %15, align 8, !tbaa !113
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @ui_but_search_test(ptr noundef nonnull %0) #27
  br label %19

19:                                               ; preds = %14, %18, %5
  ret void
}

; Function Attrs: optsize
declare void @ui_but_search_test(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiDefSearchButO_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i16 noundef signext %9, i16 noundef signext %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = tail call ptr @uiDefSearchBut(ptr noundef %0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i16 noundef signext %9, i16 noundef signext %10, float noundef %11, float noundef %12, ptr noundef %13) #25
  tail call void @uiButSetSearchFunc(ptr noundef %15, ptr noundef nonnull @operator_enum_search_cb, ptr noundef %15, ptr noundef nonnull @operator_enum_call_cb, ptr noundef null) #25
  %16 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 59
  store ptr %1, ptr %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 61
  store i16 6, ptr %17, align 8, !tbaa !134
  %18 = icmp eq ptr %2, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @uiButGetOperatorPtrRNA(ptr noundef nonnull %15) #25
  %21 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %2) #27
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %20, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !322
  br label %23

23:                                               ; preds = %19, %14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_enum_search_cb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) #6 !PGOFuncName !323 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !324
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !325
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @__func__.operator_enum_search_cb, ptr noundef %14) #25
  br label %55

16:                                               ; preds = %4
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %10) #27
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !325
  %22 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %10) #27
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @__func__.operator_enum_search_cb, ptr noundef %21, ptr noundef %22) #25
  br label %55

24:                                               ; preds = %16
  %25 = tail call ptr @uiButGetOperatorPtrRNA(ptr noundef nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %25, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #27
  %26 = load ptr, ptr %5, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.EnumPropertyItem, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !326
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %24, %43
  %31 = phi ptr [ %44, %43 ], [ %26, %24 ]
  %32 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !282
  %34 = call ptr @BLI_strcasestr(ptr noundef %33, ptr noundef %2) #27
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %32, align 8, !tbaa !282
  %38 = load i32, ptr %31, align 8, !tbaa !327
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to ptr
  %41 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef %37, ptr noundef %40, i32 noundef 0) #27
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %30, %36
  %44 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 1
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !326
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %30, !llvm.loop !328

48:                                               ; preds = %43, %36, %24
  %49 = load i8, ptr %6, align 1, !tbaa !113
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %53 = load ptr, ptr %5, align 8, !tbaa !64
  call void %52(ptr noundef %53) #27
  br label %54

54:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %55

55:                                               ; preds = %19, %54, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_enum_call_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2) #6 !PGOFuncName !329 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = tail call ptr @uiButGetOperatorPtrRNA(ptr noundef %1) #25
  %7 = icmp eq ptr %5, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !324
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = ptrtoint ptr %2 to i64
  %14 = trunc i64 %13 to i32
  tail call void @RNA_property_enum_set(ptr noundef %6, ptr noundef nonnull %10, i32 noundef %14) #27
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !325
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @__func__.operator_enum_call_cb, ptr noundef %17) #25
  br label %19

19:                                               ; preds = %12, %15, %3
  ret void
}

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiButSetFocusOnEnter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #26
  call void @wm_event_init_from_window(ptr noundef %0, ptr noundef nonnull %3) #27
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  store i16 20513, ptr %4, align 8, !tbaa !330
  %5 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  store i16 1, ptr %5, align 2, !tbaa !332
  %6 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 28
  store ptr %1, ptr %6, align 8, !tbaa !333
  %7 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 26
  store i16 0, ptr %7, align 2, !tbaa !334
  call void @wm_event_add(ptr noundef %0, ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiButGetStrInfo(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  store i8 0, ptr %6, align 1, !tbaa !113
  call void @llvm.va_start(ptr nonnull %3)
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 42
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %18 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  br label %20

20:                                               ; preds = %276, %2
  %21 = phi ptr [ null, %2 ], [ %278, %276 ]
  %22 = load i32, ptr %3, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load ptr, ptr %10, align 16
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr i8, ptr %25, i64 %26
  %28 = add nuw nsw i32 %22, 8
  store i32 %28, ptr %3, align 16
  br label %32

29:                                               ; preds = %20
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr i8, ptr %30, i64 8
  store ptr %31, ptr %9, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %27, %24 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %280, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !335
  switch i32 %37, label %79 [
    i32 4, label %38
    i32 8, label %43
    i32 1, label %51
    i32 2, label %57
  ]

38:                                               ; preds = %36
  %39 = load ptr, ptr %16, align 8, !tbaa !78
  %40 = icmp eq ptr %39, null
  br i1 %40, label %85, label %41

41:                                               ; preds = %38
  %42 = call ptr @BLI_strdup(ptr noundef nonnull %39) #27
  br label %276

43:                                               ; preds = %36
  %44 = load ptr, ptr %15, align 8, !tbaa !267
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr %44, align 1, !tbaa !113
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %46
  %50 = call ptr @BLI_strdup(ptr noundef nonnull %44) #27
  br label %276

51:                                               ; preds = %36
  %52 = load ptr, ptr %11, align 8, !tbaa !95
  %53 = icmp eq ptr %52, null
  br i1 %53, label %276, label %54

54:                                               ; preds = %51
  %55 = call ptr @RNA_property_identifier(ptr noundef nonnull %52) #27
  %56 = call ptr @BLI_strdup(ptr noundef %55) #27
  br label %276

57:                                               ; preds = %36
  %58 = load ptr, ptr %11, align 8, !tbaa !95
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 8, !tbaa !231
  %62 = call ptr @RNA_struct_identifier(ptr noundef %61) #27
  %63 = call ptr @BLI_strdup(ptr noundef %62) #27
  br label %276

64:                                               ; preds = %57
  %65 = load ptr, ptr %13, align 8, !tbaa !103
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.wmOperatorType, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !325
  %70 = call ptr @BLI_strdup(ptr noundef %69) #27
  br label %276

71:                                               ; preds = %64
  %72 = load i32, ptr %14, align 8, !tbaa !111
  switch i32 %72, label %276 [
    i32 5632, label %73
    i32 13824, label %73
  ]

73:                                               ; preds = %71, %71
  %74 = call ptr @uiButGetMenuType(ptr noundef nonnull %1) #27
  %75 = icmp eq ptr %74, null
  br i1 %75, label %276, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.MenuType, ptr %74, i64 0, i32 2
  %78 = call ptr @BLI_strdup(ptr noundef nonnull %77) #27
  br label %276

79:                                               ; preds = %36
  %80 = icmp eq i32 %37, 5
  switch i32 %37, label %276 [
    i32 9, label %81
    i32 5, label %81
    i32 7, label %146
    i32 10, label %173
    i32 6, label %173
    i32 3, label %173
    i32 11, label %258
    i32 12, label %269
  ]

81:                                               ; preds = %46, %43, %79, %79
  %82 = phi i1 [ %80, %79 ], [ %80, %79 ], [ false, %46 ], [ false, %43 ]
  %83 = load ptr, ptr %11, align 8, !tbaa !95
  %84 = icmp eq ptr %83, null
  br i1 %84, label %101, label %88

85:                                               ; preds = %38
  %86 = load ptr, ptr %11, align 8, !tbaa !95
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %89

88:                                               ; preds = %81
  br i1 %82, label %89, label %93

89:                                               ; preds = %85, %88
  %90 = phi ptr [ %83, %88 ], [ %86, %85 ]
  %91 = call ptr @RNA_property_ui_name(ptr noundef nonnull %90) #27
  %92 = call ptr @BLI_strdup(ptr noundef %91) #27
  br label %276

93:                                               ; preds = %88
  %94 = call ptr @RNA_property_ui_description(ptr noundef nonnull %83) #27
  %95 = icmp eq ptr %94, null
  br i1 %95, label %276, label %96

96:                                               ; preds = %93
  %97 = load i8, ptr %94, align 1, !tbaa !113
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %276, label %99

99:                                               ; preds = %96
  %100 = call ptr @BLI_strdup(ptr noundef nonnull %94) #27
  br label %276

101:                                              ; preds = %81
  %102 = load ptr, ptr %13, align 8, !tbaa !103
  %103 = icmp eq ptr %102, null
  br i1 %103, label %124, label %107

104:                                              ; preds = %85
  %105 = load ptr, ptr %13, align 8, !tbaa !103
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %108

107:                                              ; preds = %101
  br i1 %82, label %108, label %114

108:                                              ; preds = %104, %107
  %109 = phi ptr [ %102, %107 ], [ %105, %104 ]
  %110 = getelementptr inbounds %struct.wmOperatorType, ptr %109, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !287
  %112 = call ptr @RNA_struct_ui_name(ptr noundef %111) #27
  %113 = call ptr @BLI_strdup(ptr noundef %112) #27
  br label %276

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.wmOperatorType, ptr %102, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !287
  %117 = call ptr @RNA_struct_ui_description(ptr noundef %116) #27
  %118 = icmp eq ptr %117, null
  br i1 %118, label %276, label %119

119:                                              ; preds = %114
  %120 = load i8, ptr %117, align 1, !tbaa !113
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %276, label %122

122:                                              ; preds = %119
  %123 = call ptr @BLI_strdup(ptr noundef nonnull %117) #27
  br label %276

124:                                              ; preds = %104, %101
  %125 = phi i1 [ true, %104 ], [ %82, %101 ]
  %126 = load i32, ptr %14, align 8, !tbaa !111
  switch i32 %126, label %276 [
    i32 5632, label %127
    i32 13824, label %127
  ]

127:                                              ; preds = %124, %124
  %128 = call ptr @uiButGetMenuType(ptr noundef nonnull %1) #27
  %129 = icmp eq ptr %128, null
  br i1 %129, label %276, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.MenuType, ptr %128, i64 0, i32 8, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !337
  %133 = icmp eq ptr %132, null
  br i1 %133, label %276, label %134

134:                                              ; preds = %130
  br i1 %125, label %135, label %138

135:                                              ; preds = %134
  %136 = call ptr @RNA_struct_ui_name(ptr noundef nonnull %132) #27
  %137 = call ptr @BLI_strdup(ptr noundef %136) #27
  br label %276

138:                                              ; preds = %134
  %139 = call ptr @RNA_struct_ui_description(ptr noundef nonnull %132) #27
  %140 = icmp eq ptr %139, null
  br i1 %140, label %276, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr %139, align 1, !tbaa !113
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %276, label %144

144:                                              ; preds = %141
  %145 = call ptr @BLI_strdup(ptr noundef nonnull %139) #27
  br label %276

146:                                              ; preds = %79
  %147 = load ptr, ptr %11, align 8, !tbaa !95
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call ptr @RNA_property_translation_context(ptr noundef nonnull %147) #27
  br label %167

151:                                              ; preds = %146
  %152 = load ptr, ptr %13, align 8, !tbaa !103
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.wmOperatorType, ptr %152, i64 0, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !287
  %157 = call ptr @RNA_struct_translation_context(ptr noundef %156) #27
  br label %167

158:                                              ; preds = %151
  %159 = load i32, ptr %14, align 8, !tbaa !111
  switch i32 %159, label %167 [
    i32 5632, label %160
    i32 13824, label %160
  ]

160:                                              ; preds = %158, %158
  %161 = call ptr @uiButGetMenuType(ptr noundef nonnull %1) #27
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.MenuType, ptr %161, i64 0, i32 8, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !337
  %166 = call ptr @RNA_struct_translation_context(ptr noundef %165) #27
  br label %167

167:                                              ; preds = %160, %163, %158, %154, %149
  %168 = phi ptr [ %150, %149 ], [ %157, %154 ], [ null, %158 ], [ %166, %163 ], [ null, %160 ]
  %169 = call zeroext i8 @BLF_is_default_context(ptr noundef %168) #27
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %170, ptr %168, ptr @.str.26
  %172 = call ptr @BLI_strdup(ptr noundef %171) #27
  br label %276

173:                                              ; preds = %79, %79, %79
  %174 = load ptr, ptr %11, align 8, !tbaa !95
  %175 = icmp eq ptr %174, null
  br i1 %175, label %189, label %176

176:                                              ; preds = %173
  %177 = call i32 @RNA_property_type(ptr noundef nonnull %174) #27
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load ptr, ptr %11, align 8, !tbaa !95
  %181 = load i32, ptr %14, align 8, !tbaa !111
  %182 = icmp eq i32 %181, 1024
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load float, ptr %19, align 4, !tbaa !119
  %185 = fptosi float %184 to i32
  br label %208

186:                                              ; preds = %179
  %187 = call double @ui_get_but_val(ptr noundef nonnull %1) #25
  %188 = fptosi double %187 to i32
  br label %208

189:                                              ; preds = %176, %173
  %190 = load ptr, ptr %13, align 8, !tbaa !103
  %191 = icmp eq ptr %190, null
  br i1 %191, label %276, label %192

192:                                              ; preds = %189
  %193 = call ptr @uiButGetOperatorPtrRNA(ptr noundef nonnull %1) #25
  %194 = load ptr, ptr %13, align 8, !tbaa !103
  %195 = getelementptr inbounds %struct.wmOperatorType, ptr %194, i64 0, i32 13
  %196 = load ptr, ptr %195, align 8, !tbaa !324
  %197 = icmp eq ptr %196, null
  br i1 %197, label %276, label %198

198:                                              ; preds = %192
  %199 = call i32 @RNA_property_type(ptr noundef nonnull %196) #27
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %276

201:                                              ; preds = %198
  %202 = load ptr, ptr %195, align 8, !tbaa !324
  %203 = call zeroext i8 @RNA_struct_contains_property(ptr noundef %193, ptr noundef %202) #27
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %276, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr %195, align 8, !tbaa !324
  %207 = call i32 @RNA_property_enum_get(ptr noundef %193, ptr noundef %206) #27
  br label %208

208:                                              ; preds = %205, %183, %186
  %209 = phi ptr [ %18, %186 ], [ %18, %183 ], [ %193, %205 ]
  %210 = phi ptr [ %180, %186 ], [ %180, %183 ], [ %206, %205 ]
  %211 = phi i32 [ %188, %186 ], [ %185, %183 ], [ %207, %205 ]
  %212 = icmp ne ptr %209, null
  %213 = icmp ne ptr %210, null
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %276

215:                                              ; preds = %208
  %216 = icmp eq ptr %21, null
  br i1 %216, label %217, label %237

217:                                              ; preds = %215
  call void @RNA_property_enum_items_gettexted(ptr noundef %0, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %218 = load ptr, ptr %4, align 8, !tbaa !64
  %219 = load i32, ptr %5, align 4, !tbaa !53
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %217, %231
  %222 = phi i32 [ %232, %231 ], [ 0, %217 ]
  %223 = phi ptr [ %233, %231 ], [ %218, %217 ]
  %224 = getelementptr inbounds %struct.EnumPropertyItem, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !326
  %226 = load i8, ptr %225, align 1, !tbaa !113
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %221
  %229 = load i32, ptr %223, align 8, !tbaa !327
  %230 = icmp eq i32 %229, %211
  br i1 %230, label %237, label %231

231:                                              ; preds = %221, %228
  %232 = add nuw nsw i32 %222, 1
  %233 = getelementptr inbounds %struct.EnumPropertyItem, ptr %223, i64 1
  %234 = icmp eq i32 %232, %219
  br i1 %234, label %237, label %221, !llvm.loop !339

235:                                              ; preds = %217
  %236 = icmp eq ptr %218, null
  br i1 %236, label %276, label %237

237:                                              ; preds = %231, %228, %215, %235
  %238 = phi ptr [ %218, %235 ], [ %21, %215 ], [ %233, %231 ], [ %223, %228 ]
  %239 = getelementptr inbounds %struct.EnumPropertyItem, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !326
  %241 = icmp eq ptr %240, null
  br i1 %241, label %276, label %242

242:                                              ; preds = %237
  switch i32 %37, label %249 [
    i32 3, label %243
    i32 6, label %245
  ]

243:                                              ; preds = %242
  %244 = call ptr @BLI_strdup(ptr noundef nonnull %240) #27
  br label %276

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.EnumPropertyItem, ptr %238, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !282
  %248 = call ptr @BLI_strdup(ptr noundef %247) #27
  br label %276

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.EnumPropertyItem, ptr %238, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !340
  %252 = icmp eq ptr %251, null
  br i1 %252, label %276, label %253

253:                                              ; preds = %249
  %254 = load i8, ptr %251, align 1, !tbaa !113
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %276, label %256

256:                                              ; preds = %253
  %257 = call ptr @BLI_strdup(ptr noundef nonnull %251) #27
  br label %276

258:                                              ; preds = %79
  %259 = load ptr, ptr %17, align 8, !tbaa !121
  %260 = call zeroext i8 @ui_block_is_menu(ptr noundef %259) #25, !range !67
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #26
  %263 = call fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #25
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = call ptr @BLI_strdup(ptr noundef nonnull %7) #27
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi ptr [ %266, %265 ], [ null, %262 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #26
  br label %276

269:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #26
  %270 = call fastcc zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #25
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %269
  %273 = call ptr @BLI_strdup(ptr noundef nonnull %8) #27
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi ptr [ %273, %272 ], [ null, %269 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #26
  br label %276

276:                                              ; preds = %79, %49, %41, %192, %198, %201, %189, %208, %243, %249, %253, %256, %245, %237, %235, %127, %135, %130, %144, %141, %138, %124, %114, %119, %122, %93, %96, %99, %73, %76, %71, %67, %60, %167, %267, %258, %274, %89, %108, %51, %54
  %277 = phi ptr [ %56, %54 ], [ null, %51 ], [ %63, %60 ], [ %70, %67 ], [ %92, %89 ], [ %113, %108 ], [ %172, %167 ], [ null, %258 ], [ %268, %267 ], [ %275, %274 ], [ null, %71 ], [ %78, %76 ], [ null, %73 ], [ %100, %99 ], [ null, %96 ], [ null, %93 ], [ %123, %122 ], [ null, %119 ], [ null, %114 ], [ null, %124 ], [ %137, %135 ], [ null, %130 ], [ null, %127 ], [ %145, %144 ], [ null, %141 ], [ null, %138 ], [ %244, %243 ], [ %248, %245 ], [ %257, %256 ], [ null, %253 ], [ null, %249 ], [ null, %237 ], [ null, %235 ], [ null, %208 ], [ null, %189 ], [ null, %201 ], [ null, %198 ], [ null, %192 ], [ %50, %49 ], [ %42, %41 ], [ null, %79 ]
  %278 = phi ptr [ %21, %54 ], [ %21, %51 ], [ %21, %60 ], [ %21, %67 ], [ %21, %89 ], [ %21, %108 ], [ %21, %167 ], [ %21, %258 ], [ %21, %267 ], [ %21, %274 ], [ %21, %71 ], [ %21, %76 ], [ %21, %73 ], [ %21, %99 ], [ %21, %96 ], [ %21, %93 ], [ %21, %122 ], [ %21, %119 ], [ %21, %114 ], [ %21, %124 ], [ %21, %135 ], [ %21, %130 ], [ %21, %127 ], [ %21, %144 ], [ %21, %141 ], [ %21, %138 ], [ %238, %243 ], [ %238, %245 ], [ %238, %256 ], [ %238, %253 ], [ %238, %249 ], [ %238, %237 ], [ null, %235 ], [ %21, %208 ], [ %21, %189 ], [ %21, %201 ], [ %21, %198 ], [ %21, %192 ], [ %21, %49 ], [ %21, %41 ], [ %21, %79 ]
  %279 = getelementptr inbounds %struct.uiStringInfo, ptr %34, i64 0, i32 1
  store ptr %277, ptr %279, align 8, !tbaa !341
  br label %20, !llvm.loop !342

280:                                              ; preds = %32
  call void @llvm.va_end(ptr nonnull %3)
  %281 = load i8, ptr %6, align 1, !tbaa !113
  %282 = icmp ne i8 %281, 0
  %283 = load ptr, ptr %4, align 8
  %284 = icmp ne ptr %283, null
  %285 = select i1 %282, i1 %284, i1 false
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %287(ptr noundef nonnull %283) #27
  br label %288

288:                                              ; preds = %286, %280
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @uiButGetMenuType(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_property_ui_description(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_property_translation_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_translation_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @BLF_is_default_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_enum_items_gettexted(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !PGOFuncName !343 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !322
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !325
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %20 = load i16, ptr %19, align 8, !tbaa !134
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %18, i32 noundef %21, ptr noundef %16, i8 noundef zeroext 1, ptr noundef %2, i32 noundef 128) #27
  %23 = icmp ne ptr %22, null
  br label %35

24:                                               ; preds = %3
  %25 = tail call ptr @uiButGetMenuType(ptr noundef nonnull %1) #27
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %28 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @__func__.ui_but_event_operator_string) #27
  %29 = call ptr @IDP_NewString(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.33, i32 noundef 64) #27
  %30 = call zeroext i8 @IDP_AddToGroup(ptr noundef %28, ptr noundef %29) #27
  %31 = getelementptr inbounds %struct.MenuType, ptr %25, i64 0, i32 2
  call void @IDP_AssignString(ptr noundef %29, ptr noundef nonnull %31, i32 noundef 64) #27
  %32 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %28, i8 noundef zeroext 1, ptr noundef %2, i32 noundef 128) #27
  %33 = icmp ne ptr %32, null
  call void @IDP_FreeProperty(ptr noundef %28) #27
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %34(ptr noundef %28) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  br label %35

35:                                               ; preds = %24, %27, %15
  %36 = phi i1 [ %23, %15 ], [ %33, %27 ], [ false, %24 ]
  %37 = zext i1 %36 to i8
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 !PGOFuncName !344 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !162
  switch i16 %14, label %67 [
    i16 21075, label %15
    i16 17235, label %32
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !231
  %18 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %17, ptr noundef nonnull @RNA_Space) #27
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !tbaa !95
  %22 = tail call ptr @RNA_property_identifier(ptr noundef %21) #27
  %23 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.41, ptr noundef %22) #27
  br label %44

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 8, !tbaa !231
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %25, ptr noundef nonnull @RNA_DopeSheet) #27
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !tbaa !95
  %30 = tail call ptr @RNA_property_identifier(ptr noundef %29) #27
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.42, ptr noundef %30) #27
  br label %44

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !231
  %35 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %34, ptr noundef nonnull @RNA_ToolSettings) #27
  %36 = icmp eq i8 %35, 0
  %37 = load ptr, ptr %5, align 8, !tbaa !95
  %38 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %9, ptr noundef %37) #27
  br i1 %36, label %39, label %44

39:                                               ; preds = %32
  %40 = icmp eq ptr %38, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %39
  %42 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef nonnull %38) #27
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %43(ptr noundef nonnull %38) #27
  br label %44

44:                                               ; preds = %32, %28, %20, %41
  %45 = phi ptr [ %23, %20 ], [ %31, %28 ], [ %42, %41 ], [ %38, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %48 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @__func__.ui_but_event_property_operator_string) #27
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #28
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  %52 = call ptr @IDP_NewString(ptr noundef nonnull %45, ptr noundef nonnull @.str.44, i32 noundef %51) #27
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef %48, ptr noundef %52) #27
  br label %57

54:                                               ; preds = %57
  %55 = add nuw nsw i64 %58, 1
  %56 = icmp eq i64 %55, 6
  br i1 %56, label %63, label %57, !llvm.loop !345

57:                                               ; preds = %47, %54
  %58 = phi i64 [ 0, %47 ], [ %55, %54 ]
  %59 = getelementptr inbounds [7 x ptr], ptr @__const.ui_but_event_property_operator_string.ctx_toggle_opnames, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  %61 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %60, i32 noundef 1, ptr noundef %48, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 128) #27
  %62 = icmp eq ptr %61, null
  br i1 %62, label %54, label %63

63:                                               ; preds = %57, %54
  %64 = phi i8 [ 0, %54 ], [ 1, %57 ]
  call void @IDP_FreeProperty(ptr noundef %48) #27
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %65(ptr noundef %48) #27
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %66(ptr noundef nonnull %45) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  br label %67

67:                                               ; preds = %39, %12, %24, %8, %44, %63, %3
  %68 = phi i8 [ 0, %3 ], [ %64, %63 ], [ 0, %44 ], [ 0, %8 ], [ 0, %24 ], [ 0, %12 ], [ 0, %39 ]
  ret i8 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_init() local_unnamed_addr #6 {
  tail call void @ui_resources_init() #27
  ret void
}

; Function Attrs: optsize
declare void @ui_resources_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_init_userdef() local_unnamed_addr #6 {
  tail call void @init_userdef_do_versions() #27
  tail call void @uiStyleInit() #27
  ret void
}

; Function Attrs: optsize
declare void @init_userdef_do_versions() local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiStyleInit() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_reinit_font() local_unnamed_addr #6 {
  tail call void @uiStyleInit() #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_exit() local_unnamed_addr #6 {
  tail call void @ui_resources_free() #27
  tail call void @ui_button_clipboard_free() #27
  ret void
}

; Function Attrs: optsize
declare void @ui_resources_free() local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_button_clipboard_free() local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_but_update_linklines(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 !PGOFuncName !346 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = icmp eq i32 %5, 11264
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  store ptr %9, ptr %12, align 8, !tbaa !110
  store ptr %13, ptr %8, align 8, !tbaa !110
  %14 = load ptr, ptr %12, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.uiLink, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %11, %29
  %19 = phi ptr [ %30, %29 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.uiLinkLine, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr %1, ptr %20, align 8, !tbaa !197
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.uiLinkLine, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr %1, ptr %25, align 8, !tbaa !195
  br label %29

29:                                               ; preds = %24, %28
  %30 = load ptr, ptr %19, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !347

32:                                               ; preds = %29, %11, %7, %3
  %33 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %68, label %36

36:                                               ; preds = %32, %65
  %37 = phi ptr [ %66, %65 ], [ %34, %32 ]
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %65, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !111
  %42 = icmp eq i32 %41, 11264
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 40
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uiLink, ptr %45, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %47, %62
  %52 = phi ptr [ %63, %62 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.uiLinkLine, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !197
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store ptr %1, ptr %53, align 8, !tbaa !197
  br label %57

57:                                               ; preds = %56, %51
  %58 = getelementptr inbounds %struct.uiLinkLine, ptr %52, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !195
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store ptr %1, ptr %58, align 8, !tbaa !195
  br label %62

62:                                               ; preds = %57, %61
  %63 = load ptr, ptr %52, align 8, !tbaa !64
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %51, !llvm.loop !348

65:                                               ; preds = %62, %47, %36, %39, %43
  %66 = load ptr, ptr %37, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %36, !llvm.loop !349

68:                                               ; preds = %65, %32
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_but_pie_direction_string(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !350 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 47
  %4 = load i8, ptr %3, align 2, !tbaa !168
  %5 = sext i8 %4 to i64
  %6 = getelementptr inbounds [8 x i8], ptr @ui_radial_dir_to_numpad, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !113
  %8 = zext i8 %7 to i32
  %9 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 128, ptr noundef nonnull @.str.5, i32 noundef %8) #27
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !351 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !352
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !353
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_linkline(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !354 {
  %4 = alloca %struct.rcti, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 18
  %14 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %13) #25
  %15 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %13) #25
  %16 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18
  %17 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %16) #25
  %18 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %16) #25
  %19 = insertelement <4 x float> poison, float %14, i64 0
  %20 = insertelement <4 x float> %19, float %17, i64 1
  %21 = insertelement <4 x float> %20, float %15, i64 2
  %22 = insertelement <4 x float> %21, float %18, i64 3
  %23 = fptosi <4 x float> %22 to <4 x i32>
  store <4 x i32> %23, ptr %4, align 16, !tbaa !53
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  tail call void @UI_ThemeColor(i32 noundef 24) #27
  br label %46

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !355
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100) #27
  br label %46

32:                                               ; preds = %26
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !112
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !112
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  tail call void @UI_ThemeColor(i32 noundef 4) #27
  br label %46

45:                                               ; preds = %39, %32
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #27
  br label %46

46:                                               ; preds = %31, %45, %44, %25
  call void @ui_draw_link_bezier(ptr noundef nonnull %4) #27
  br label %47

47:                                               ; preds = %3, %8, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !356 {
  %2 = load float, ptr %0, align 4, !tbaa !87
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !86
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !357 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !353
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !352
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_draw_link_bezier(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !358 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #27
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !359 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !360 {
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @ui_get_but_scale_unit(ptr nocapture noundef readonly %0, double noundef %1) unnamed_addr #6 !PGOFuncName !361 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 49
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %8 = icmp eq i32 %7, 393216
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 48
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = tail call ptr @CTX_data_scene(ptr noundef %12) #27
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 65
  %15 = load float, ptr %14, align 4, !tbaa !362
  %16 = fpext float %15 to double
  %17 = fmul double %16, %1
  %18 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 55
  %19 = load i16, ptr %18, align 4, !tbaa !363
  %20 = sitofp i16 %19 to double
  %21 = fdiv double %17, %20
  br label %25

22:                                               ; preds = %2
  %23 = lshr i32 %7, 16
  %24 = tail call double @BKE_scene_unit_scale(ptr noundef %6, i32 noundef %23, double noundef %1) #27
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi double [ %21, %9 ], [ %24, %22 ]
  ret double %26
}

; Function Attrs: optsize
declare double @BKE_scene_unit_scale(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_is_but_unit_radians(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !364 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %7 = tail call fastcc zeroext i8 @ui_is_but_unit_radians_ex(ptr noundef %5, i32 noundef %6) #25, !range !67
  ret i8 %7
}

; Function Attrs: optsize
declare i32 @uiFloatPrecisionCalc(i32 noundef, double noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ui_button_active_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_free_link(ptr noundef %0) unnamed_addr #6 !PGOFuncName !365 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.uiLink, ptr %0, i64 0, i32 7
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #27
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %5(ptr noundef nonnull %0) #27
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_int_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_int_get_array_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_get_array_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @soft_range_round_up(double noundef %0, double noundef %1) unnamed_addr #22 !PGOFuncName !366 {
  %3 = fcmp une double %0, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call double @log(double noundef %0) #27
  %6 = fdiv double %5, 0x40026BB1BBB55516
  %7 = tail call double @llvm.ceil.f64(double %6)
  %8 = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #27
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi double [ %8, %4 ], [ 0.000000e+00, %2 ]
  %11 = fmul double %10, 2.000000e-01
  %12 = fcmp ult double %11, %1
  %13 = fcmp ult double %11, %0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = fmul double %10, 5.000000e-01
  %17 = fcmp ult double %16, %1
  %18 = fcmp ult double %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %15, %9, %20
  %22 = phi double [ %10, %20 ], [ %11, %9 ], [ %16, %15 ]
  ret double %22
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @soft_range_round_down(double noundef %0, double noundef %1) unnamed_addr #22 !PGOFuncName !367 {
  %3 = fcmp une double %0, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call double @log(double noundef %0) #27
  %6 = fdiv double %5, 0x40026BB1BBB55516
  %7 = tail call double @llvm.floor.f64(double %6)
  %8 = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #27
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi double [ %8, %4 ], [ 0.000000e+00, %2 ]
  %11 = fmul double %10, 5.000000e+00
  %12 = fcmp ugt double %11, %1
  %13 = fcmp ugt double %11, %0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = fmul double %10, 2.000000e+00
  %17 = fcmp ugt double %16, %1
  %18 = fcmp ugt double %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %15, %9, %20
  %22 = phi double [ %10, %20 ], [ %11, %9 ], [ %16, %15 ]
  ret double %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !368 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @buts_are_horiz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !369 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !262
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !262
  %8 = fcmp oeq float %4, %7
  %9 = load float, ptr %5, align 8, !tbaa !175
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %12 = load float, ptr %11, align 8, !tbaa !175
  %13 = fcmp une float %12, %9
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !177
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !263
  %19 = insertelement <2 x float> poison, float %16, i64 0
  %20 = insertelement <2 x float> %19, float %4, i64 1
  %21 = insertelement <2 x float> poison, float %9, i64 0
  %22 = insertelement <2 x float> %21, float %18, i64 1
  %23 = fsub <2 x float> %20, %22
  %24 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %23)
  %25 = extractelement <2 x float> %24, i64 0
  %26 = extractelement <2 x float> %24, i64 1
  %27 = fcmp ole float %25, %26
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %10, %14
  %30 = phi i8 [ %28, %14 ], [ 1, %10 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ui_layout_add_but(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @findBitIndex(i32 noundef %0) unnamed_addr #8 !PGOFuncName !370 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #25, !range !371
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %0, 65536
  %8 = lshr i32 %0, 16
  %9 = select i1 %7, i32 %0, i32 %8
  %10 = select i1 %7, i32 0, i32 16
  %11 = icmp ult i32 %9, 256
  %12 = or disjoint i32 %10, 8
  %13 = lshr i32 %9, 8
  %14 = select i1 %11, i32 %9, i32 %13
  %15 = select i1 %11, i32 %10, i32 %12
  %16 = and i32 %14, 240
  %17 = icmp eq i32 %16, 0
  %18 = or disjoint i32 %15, 4
  %19 = lshr i32 %14, 4
  %20 = select i1 %17, i32 %14, i32 %19
  %21 = select i1 %17, i32 %15, i32 %18
  %22 = and i32 %20, 12
  %23 = icmp eq i32 %22, 0
  %24 = or disjoint i32 %21, 2
  %25 = lshr i32 %20, 2
  %26 = select i1 %23, i32 %20, i32 %25
  %27 = select i1 %23, i32 %21, i32 %24
  %28 = lshr i32 %26, 1
  %29 = and i32 %28, 1
  %30 = add nuw nsw i32 %29, %27
  br label %31

31:                                               ; preds = %1, %3, %6
  %32 = phi i32 [ %30, %6 ], [ -1, %3 ], [ -1, %1 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #8 !PGOFuncName !372 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !373
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_def_but_rna__disable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !374 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !112
  %4 = or i32 %3, 2048
  store i32 %4, ptr %2, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 45
  store i8 1, ptr %5, align 4, !tbaa !135
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 43
  store ptr @.str.23, ptr %6, align 8, !tbaa !268
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_def_but_rna__menu(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #6 !PGOFuncName !375 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #27
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 128) #25
  %9 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 48
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %12 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  call void @RNA_property_enum_items_gettexted(ptr noundef %10, ptr noundef nonnull %11, ptr noundef %13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #27
  call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #27
  %14 = load ptr, ptr %4, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !326
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 27
  br label %20

20:                                               ; preds = %18, %37
  %21 = phi ptr [ %16, %18 ], [ %42, %37 ]
  %22 = phi i32 [ 0, %18 ], [ %38, %37 ]
  %23 = phi i32 [ 0, %18 ], [ %40, %37 ]
  %24 = phi ptr [ %14, %18 ], [ %39, %37 ]
  %25 = load i8, ptr %21, align 1, !tbaa !113
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !282
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %19, align 8, !tbaa !34
  %33 = or i32 %32, 2048
  store i32 %33, ptr %19, align 8, !tbaa !34
  %34 = add nsw i32 %22, 1
  br label %37

35:                                               ; preds = %20
  %36 = add nsw i32 %22, 1
  br label %37

37:                                               ; preds = %27, %31, %35
  %38 = phi i32 [ %36, %35 ], [ %34, %31 ], [ %22, %27 ]
  %39 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 1
  %40 = add nuw nsw i32 %23, 1
  %41 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 1, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !326
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %20, !llvm.loop !376

44:                                               ; preds = %37
  %45 = add nsw i32 %38, 20
  %46 = sdiv i32 %45, 20
  %47 = call i32 @llvm.smax.i32(i32 %46, i32 1)
  %48 = icmp sgt i32 %38, 159
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %38, 25
  %51 = udiv i32 %50, 25
  br label %52

52:                                               ; preds = %3, %49, %44
  %53 = phi i32 [ %40, %49 ], [ %40, %44 ], [ 0, %3 ]
  %54 = phi i32 [ %51, %49 ], [ %47, %44 ], [ 1, %3 ]
  %55 = udiv i32 %53, %54
  %56 = icmp ugt i32 %54, %53
  %57 = select i1 %56, i32 1, i32 %55
  br label %58

58:                                               ; preds = %58, %52
  %59 = phi i32 [ %57, %52 ], [ %62, %58 ]
  %60 = mul nsw i32 %59, %54
  %61 = icmp ult i32 %60, %53
  %62 = add nuw nsw i32 %59, 1
  br i1 %61, label %58, label %63, !llvm.loop !377

63:                                               ; preds = %58
  %64 = load ptr, ptr %12, align 8, !tbaa !95
  %65 = call ptr @RNA_property_ui_name(ptr noundef %64) #27
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !184
  %67 = mul i16 %66, 5
  %68 = call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef %65, i32 noundef 0, i32 noundef 0, i16 noundef signext %67, i16 noundef signext %66, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #25
  call void @uiItemS(ptr noundef %1) #27
  %69 = call ptr @uiLayoutSplit(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 0) #27
  %70 = icmp eq i32 %53, 0
  br i1 %70, label %168, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 27
  %73 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 17
  %74 = zext i32 %53 to i64
  br label %75

75:                                               ; preds = %71, %164
  %76 = phi i64 [ 0, %71 ], [ %165, %164 ]
  %77 = phi i64 [ 1, %71 ], [ %166, %164 ]
  %78 = phi i32 [ 0, %71 ], [ %118, %164 ]
  %79 = phi i32 [ 0, %71 ], [ %117, %164 ]
  %80 = phi ptr [ null, %71 ], [ %116, %164 ]
  %81 = zext i32 %78 to i64
  %82 = icmp eq i64 %76, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %75
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp ult i64 %84, %74
  br i1 %85, label %86, label %111

86:                                               ; preds = %83
  %87 = load ptr, ptr %4, align 8, !tbaa !64
  br label %88

88:                                               ; preds = %86, %103
  %89 = phi i64 [ %77, %86 ], [ %104, %103 ]
  %90 = sub nuw nsw i64 %89, %76
  %91 = trunc i64 %90 to i32
  %92 = srem i32 %91, %59
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.EnumPropertyItem, ptr %87, i64 %89, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !326
  %97 = load i8, ptr %96, align 1, !tbaa !113
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.EnumPropertyItem, ptr %87, i64 %89, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !282
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %94, %99
  %104 = add nuw nsw i64 %89, 1
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %53, %105
  br i1 %106, label %111, label %88, !llvm.loop !378

107:                                              ; preds = %88
  %108 = trunc i64 %89 to i32
  br label %111

109:                                              ; preds = %99
  %110 = trunc i64 %89 to i32
  br label %111

111:                                              ; preds = %103, %107, %109, %83
  %112 = phi i32 [ %53, %83 ], [ %108, %107 ], [ %110, %109 ], [ %53, %103 ]
  %113 = call ptr @uiLayoutColumn(ptr noundef %69, i32 noundef 0) #27
  %114 = trunc i64 %76 to i32
  br label %115

115:                                              ; preds = %111, %75
  %116 = phi ptr [ %113, %111 ], [ %80, %75 ]
  %117 = phi i32 [ %114, %111 ], [ %79, %75 ]
  %118 = phi i32 [ %112, %111 ], [ %78, %75 ]
  %119 = load i32, ptr %72, align 8, !tbaa !34
  %120 = and i32 %119, 2048
  %121 = icmp eq i32 %120, 0
  %122 = load ptr, ptr %4, align 8, !tbaa !64
  %123 = trunc i64 %76 to i32
  %124 = xor i32 %123, -1
  %125 = add i32 %117, %124
  %126 = add i32 %125, %118
  %127 = sext i32 %126 to i64
  %128 = select i1 %121, i64 %127, i64 %76
  %129 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !326
  %131 = load i8, ptr %130, align 1, !tbaa !113
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %115
  %134 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !282
  %136 = icmp eq ptr %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !284
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void @uiItemL(ptr noundef %116, ptr noundef nonnull %135, i32 noundef %139) #27
  br label %164

142:                                              ; preds = %137
  %143 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !184
  %144 = mul i16 %143, 5
  %145 = call ptr @uiDefBut(ptr noundef nonnull %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %135, i32 noundef 0, i32 noundef 0, i16 noundef signext %144, i16 noundef signext %143, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #25
  br label %164

146:                                              ; preds = %133
  call void @uiItemS(ptr noundef %116) #27
  br label %164

147:                                              ; preds = %115
  %148 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128
  %149 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !284
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !282
  %154 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !184
  %155 = mul i16 %154, 5
  %156 = load i32, ptr %148, align 8, !tbaa !327
  %157 = sitofp i32 %156 to float
  %158 = getelementptr inbounds %struct.EnumPropertyItem, ptr %122, i64 %128, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !340
  br i1 %151, label %162, label %160

160:                                              ; preds = %147
  %161 = call ptr @uiDefIconTextButI(ptr noundef nonnull %6, i32 noundef 10240, i32 noundef -1, i32 noundef %150, ptr noundef %153, i32 noundef 0, i32 noundef 0, i16 noundef signext %155, i16 noundef signext %154, ptr noundef nonnull %73, float noundef %157, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef %159) #25
  br label %164

162:                                              ; preds = %147
  %163 = call ptr @uiDefButI(ptr noundef nonnull %6, i32 noundef 10240, i32 noundef -1, ptr noundef %153, i32 noundef 0, i32 noundef 0, i16 noundef signext %155, i16 noundef signext %154, ptr noundef nonnull %73, float noundef %157, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef %159) #25
  br label %164

164:                                              ; preds = %141, %142, %146, %162, %160
  %165 = add nuw nsw i64 %76, 1
  %166 = add nuw nsw i64 %77, 1
  %167 = icmp eq i64 %165, %74
  br i1 %167, label %168, label %75, !llvm.loop !379

168:                                              ; preds = %164, %63
  call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #27
  %169 = load i8, ptr %5, align 1, !tbaa !113
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %173 = load ptr, ptr %4, align 8, !tbaa !64
  call void %172(ptr noundef %173) #27
  br label %174

174:                                              ; preds = %171, %168
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_ui_icon(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_int_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RNA_property_float_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @RNA_property_string_maxlength(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_is_but_rna_undo(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !232
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = icmp ne i16 %7, 21075
  %9 = icmp ne i16 %7, 19799
  %10 = and i1 %8, %9
  %11 = zext i1 %10 to i8
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !231
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @RNA_struct_undo_check(ptr noundef nonnull %14) #27
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %16
  br label %20

20:                                               ; preds = %16, %19, %5
  %21 = phi i8 [ %11, %5 ], [ 1, %19 ], [ 0, %16 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @ui_get_but_step_unit(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !381 {
  %3 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25, !range !226
  %4 = lshr i32 %3, 16
  %5 = fpext float %1 to double
  %6 = tail call fastcc double @ui_get_but_scale_unit(ptr noundef %0, double noundef %5) #25
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.UnitSettings, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !227
  %13 = zext i8 %12 to i32
  %14 = tail call double @bUnit_ClosestScalar(double noundef %6, i32 noundef %13, i32 noundef %4) #27
  %15 = fcmp une double %14, -1.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = tail call fastcc double @ui_get_but_scale_unit(ptr noundef nonnull %0, double noundef 1.000000e+00) #25
  %18 = fdiv double %14, %17
  %19 = fptrunc double %18 to float
  %20 = fmul float %19, 1.000000e+02
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi float [ %20, %16 ], [ %1, %2 ]
  ret float %22
}

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_undo_check(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare double @bUnit_ClosestScalar(double noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @IDP_NewString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @IDP_AssignString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #23

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { nounwind optsize willreturn memory(none) }
attributes #30 = { cold optsize }

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
!34 = !{!35, !42, i64 424}
!35 = !{!"uiBlock", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 64, !36, i64 80, !39, i64 88, !37, i64 104, !37, i64 232, !40, i64 296, !41, i64 312, !42, i64 316, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !42, i64 424, !43, i64 428, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !44, i64 440, !36, i64 448, !37, i64 456, !37, i64 457, !37, i64 458, !37, i64 459, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !40, i64 480, !39, i64 496, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !37, i64 544, !37, i64 556, !37, i64 557, !45, i64 624}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!"double", !37, i64 0}
!45 = !{!"PieMenuData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !42, i64 40, !42, i64 44, !41, i64 48}
!46 = !{!47, !42, i64 176}
!47 = !{!"ARegion", !36, i64 0, !36, i64 8, !48, i64 16, !49, i64 176, !49, i64 192, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !41, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!48 = !{!"View2D", !40, i64 0, !40, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !36, i64 128, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 152}
!49 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!50 = !{!47, !42, i64 184}
!51 = !{!41, !41, i64 0}
!52 = !{!35, !36, i64 32}
!53 = !{!42, !42, i64 0}
!54 = !{!"interface.c:BLI_rcti_size_x"}
!55 = !{!49, !42, i64 4}
!56 = !{!49, !42, i64 0}
!57 = !{!"interface.c:BLI_rcti_size_y"}
!58 = !{!49, !42, i64 12}
!59 = !{!49, !42, i64 8}
!60 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!61 = !{!62, !42, i64 224}
!62 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !43, i64 240, !43, i64 242, !43, i64 244, !43, i64 246, !43, i64 248, !43, i64 250, !42, i64 252, !36, i64 256, !36, i64 264}
!63 = !{!62, !42, i64 228}
!64 = !{!36, !36, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{i8 0, i8 2}
!68 = !{!35, !41, i64 296}
!69 = !{!62, !42, i64 232}
!70 = !{!35, !41, i64 300}
!71 = !{!35, !41, i64 304}
!72 = !{!62, !42, i64 236}
!73 = !{!35, !41, i64 308}
!74 = distinct !{!74, !66}
!75 = !{!35, !42, i64 472}
!76 = !{!35, !42, i64 476}
!77 = !{!35, !36, i64 16}
!78 = !{!79, !36, i64 56}
!79 = !{!"uiBut", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !43, i64 32, !43, i64 34, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !40, i64 592, !36, i64 608, !41, i64 616, !41, i64 620, !41, i64 624, !41, i64 628, !41, i64 632, !41, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !42, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !43, i64 794, !43, i64 796, !36, i64 800, !36, i64 808, !80, i64 816, !36, i64 840, !42, i64 848, !80, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !43, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !41, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!80 = !{!"PointerRNA", !81, i64 0, !36, i64 8, !36, i64 16}
!81 = !{!"", !36, i64 0}
!82 = !{!"interface.c:BLI_listbase_is_empty"}
!83 = !{!39, !36, i64 0}
!84 = !{!"interface.c:max_ff"}
!85 = !{!"interface.c:BLI_rctf_size_x"}
!86 = !{!40, !41, i64 4}
!87 = !{!40, !41, i64 0}
!88 = !{!35, !42, i64 460}
!89 = !{!35, !42, i64 464}
!90 = !{!35, !42, i64 468}
!91 = distinct !{!91, !66}
!92 = !{!"interface.c:ui_but_equals_old"}
!93 = !{!79, !43, i64 36}
!94 = !{!79, !36, i64 832}
!95 = !{!79, !36, i64 840}
!96 = !{!79, !42, i64 848}
!97 = !{!79, !36, i64 648}
!98 = !{!79, !36, i64 672}
!99 = !{!79, !36, i64 656}
!100 = !{!79, !36, i64 664}
!101 = !{!79, !36, i64 608}
!102 = !{!79, !42, i64 28}
!103 = !{!79, !36, i64 888}
!104 = distinct !{!104, !66}
!105 = !{!35, !36, i64 40}
!106 = !{!79, !36, i64 936}
!107 = !{!"interface.c:ui_free_but"}
!108 = !{!79, !36, i64 896}
!109 = !{!79, !36, i64 680}
!110 = !{!79, !36, i64 752}
!111 = !{!79, !42, i64 24}
!112 = !{!79, !42, i64 16}
!113 = !{!37, !37, i64 0}
!114 = !{!44, !44, i64 0}
!115 = !{!79, !36, i64 960}
!116 = !{!79, !36, i64 952}
!117 = !{!79, !36, i64 968}
!118 = !{!79, !41, i64 616}
!119 = !{!79, !41, i64 620}
!120 = !{!79, !43, i64 796}
!121 = !{!79, !36, i64 992}
!122 = !{!35, !36, i64 528}
!123 = !{!79, !43, i64 794}
!124 = distinct !{!124, !66}
!125 = !{!35, !37, i64 432}
!126 = !{!35, !44, i64 440}
!127 = !{!35, !37, i64 458}
!128 = !{!"interface.c:ui_but_update_from_old_block"}
!129 = !{!79, !36, i64 0}
!130 = !{!79, !36, i64 688}
!131 = !{!79, !42, i64 784}
!132 = !{!79, !43, i64 40}
!133 = !{!"interface.c:copy_v3_v3"}
!134 = !{!79, !43, i64 904}
!135 = !{!79, !37, i64 788}
!136 = !{!137, !42, i64 680}
!137 = !{!"Scene", !138, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !139, i64 280, !146, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !42, i64 4380, !39, i64 4384, !147, i64 4400, !148, i64 4416, !151, i64 4600, !36, i64 4608, !152, i64 4616, !36, i64 4640, !153, i64 4648, !153, i64 4656, !141, i64 4664, !142, i64 4824, !154, i64 4888, !36, i64 4952}
!138 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!139 = !{!"RenderData", !140, i64 0, !36, i64 248, !36, i64 256, !143, i64 264, !144, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !41, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !43, i64 432, !43, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !42, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !42, i64 484, !42, i64 488, !43, i64 492, !43, i64 494, !42, i64 496, !42, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !40, i64 544, !40, i64 560, !49, i64 576, !39, i64 592, !43, i64 608, !43, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !42, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !41, i64 660, !41, i64 664, !43, i64 668, !43, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !42, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !42, i64 2520, !43, i64 2524, !43, i64 2526, !41, i64 2528, !41, i64 2532, !43, i64 2536, !43, i64 2538, !41, i64 2540, !43, i64 2544, !43, i64 2546, !42, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !42, i64 2576, !41, i64 2580, !37, i64 2584, !145, i64 2616, !42, i64 3976, !42, i64 3980}
!140 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !141, i64 24, !142, i64 184}
!141 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!142 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!143 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !43, i64 48, !43, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!144 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !36, i64 64}
!145 = !{!"BakeData", !140, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!146 = !{!"AudioData", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !43, i64 20, !43, i64 22, !41, i64 24, !41, i64 28}
!147 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!148 = !{!"GameData", !147, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !149, i64 40, !43, i64 64, !43, i64 66, !41, i64 68, !150, i64 72, !41, i64 128, !41, i64 132, !42, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!149 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!150 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !41, i64 44, !41, i64 48, !43, i64 52, !43, i64 54}
!151 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!152 = !{!"PhysicsSettings", !37, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!153 = !{!"long", !37, i64 0}
!154 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!155 = distinct !{!155, !66}
!156 = !{!35, !36, i64 64}
!157 = !{!35, !37, i64 459}
!158 = distinct !{!158, !66}
!159 = distinct !{!159, !66}
!160 = !{!"interface.c:ui_menu_block_set_keyaccels"}
!161 = !{!79, !37, i64 906}
!162 = !{!43, !43, i64 0}
!163 = distinct !{!163, !66}
!164 = distinct !{!164, !66}
!165 = distinct !{!165, !66}
!166 = distinct !{!166, !66}
!167 = !{!"interface.c:ui_menu_block_set_keymaps"}
!168 = !{!79, !37, i64 790}
!169 = distinct !{!169, !66}
!170 = distinct !{!170, !66}
!171 = !{!"interface.c:ui_text_bounds_block"}
!172 = !{!173, !43, i64 176}
!173 = !{!"uiStyle", !36, i64 0, !36, i64 8, !37, i64 16, !174, i64 80, !174, i64 112, !174, i64 144, !174, i64 176, !41, i64 208, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230}
!174 = !{!"uiFontStyle", !43, i64 0, !43, i64 2, !43, i64 4, !37, i64 6, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !41, i64 24, !41, i64 28}
!175 = !{!79, !41, i64 592}
!176 = !{!79, !36, i64 8}
!177 = !{!79, !41, i64 596}
!178 = distinct !{!178, !66}
!179 = distinct !{!179, !66}
!180 = distinct !{!180, !66}
!181 = !{!"interface.c:ui_centered_bounds_block"}
!182 = !{!"interface.c:ui_centered_pie_bounds_block"}
!183 = !{!"interface.c:ui_popup_bounds_block"}
!184 = !{!185, !43, i64 8948}
!185 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !42, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !43, i64 8496, !43, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !37, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !42, i64 8912, !42, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !41, i64 8956, !41, i64 8960, !42, i64 8964, !43, i64 8968, !43, i64 8970, !41, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !186, i64 8984, !37, i64 9760, !37, i64 9772, !43, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !42, i64 10896, !42, i64 10900, !41, i64 10904, !41, i64 10908, !42, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !187, i64 10928}
!186 = !{!"ColorBand", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!187 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !37, i64 26}
!188 = !{!189, !36, i64 136}
!189 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !42, i64 128, !43, i64 132, !43, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !42, i64 160, !42, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!190 = !{i64 0, i64 8, !64, i64 8, i64 8, !64, i64 16, i64 64, !113, i64 80, i64 2, !162, i64 82, i64 2, !162, i64 84, i64 2, !162, i64 86, i64 6, !113, i64 92, i64 2, !162, i64 94, i64 2, !162, i64 96, i64 2, !162, i64 98, i64 2, !162, i64 100, i64 2, !162, i64 102, i64 2, !162, i64 104, i64 4, !51, i64 108, i64 4, !51, i64 112, i64 2, !162, i64 114, i64 2, !162, i64 116, i64 2, !162, i64 118, i64 6, !113, i64 124, i64 2, !162, i64 126, i64 2, !162, i64 128, i64 2, !162, i64 130, i64 2, !162, i64 132, i64 2, !162, i64 134, i64 2, !162, i64 136, i64 4, !51, i64 140, i64 4, !51, i64 144, i64 2, !162, i64 146, i64 2, !162, i64 148, i64 2, !162, i64 150, i64 6, !113, i64 156, i64 2, !162, i64 158, i64 2, !162, i64 160, i64 2, !162, i64 162, i64 2, !162, i64 164, i64 2, !162, i64 166, i64 2, !162, i64 168, i64 4, !51, i64 172, i64 4, !51, i64 176, i64 2, !162, i64 178, i64 2, !162, i64 180, i64 2, !162, i64 182, i64 6, !113, i64 188, i64 2, !162, i64 190, i64 2, !162, i64 192, i64 2, !162, i64 194, i64 2, !162, i64 196, i64 2, !162, i64 198, i64 2, !162, i64 200, i64 4, !51, i64 204, i64 4, !51, i64 208, i64 4, !51, i64 212, i64 2, !162, i64 214, i64 2, !162, i64 216, i64 2, !162, i64 218, i64 2, !162, i64 220, i64 2, !162, i64 222, i64 2, !162, i64 224, i64 2, !162, i64 226, i64 2, !162, i64 228, i64 2, !162, i64 230, i64 2, !162}
!191 = !{!35, !41, i64 312}
!192 = distinct !{!192, !66}
!193 = !{!"interface.c:ui_but_to_pixelrect"}
!194 = !{!"interface.c:ui_draw_links"}
!195 = !{!196, !36, i64 16}
!196 = !{!"uiLinkLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 34}
!197 = !{!196, !36, i64 24}
!198 = !{!196, !43, i64 34}
!199 = distinct !{!199, !66}
!200 = distinct !{!200, !66}
!201 = distinct !{!201, !66}
!202 = distinct !{!202, !66}
!203 = distinct !{!203, !66}
!204 = distinct !{!204, !66}
!205 = !{!79, !43, i64 32}
!206 = !{!79, !43, i64 34}
!207 = !{i32 -1, i32 2}
!208 = !{!"interface.c:ui_find_inlink"}
!209 = distinct !{!209, !66}
!210 = !{!211, !36, i64 8}
!211 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !39, i64 32}
!212 = !{!211, !36, i64 16}
!213 = distinct !{!213, !66}
!214 = !{!211, !36, i64 0}
!215 = distinct !{!215, !66}
!216 = !{!"interface.c:ui_add_link_line"}
!217 = !{!35, !37, i64 456}
!218 = !{!35, !36, i64 448}
!219 = distinct !{!219, !66}
!220 = distinct !{!220, !66}
!221 = !{!"interface.c:zero_v3"}
!222 = !{!"interface.c:min_ii"}
!223 = !{!"interface.c:normalize_v3"}
!224 = distinct !{!224, !66}
!225 = !{!35, !36, i64 536}
!226 = !{i32 0, i32 16711681}
!227 = !{!151, !37, i64 4}
!228 = !{!79, !37, i64 792}
!229 = !{!"interface.c:ui_is_but_unit_radians_ex"}
!230 = !{!151, !37, i64 5}
!231 = !{!79, !36, i64 824}
!232 = !{!79, !36, i64 816}
!233 = !{!"interface.c:ui_check_but_select"}
!234 = distinct !{!234, !66}
!235 = !{!"interface.c:ui_get_but_string_unit"}
!236 = !{!151, !43, i64 6}
!237 = !{!151, !41, i64 0}
!238 = !{!79, !41, i64 636}
!239 = !{!"interface.c:ui_but_float_precision"}
!240 = !{i64 0, i64 8, !64, i64 8, i64 8, !64, i64 16, i64 8, !64}
!241 = !{!79, !36, i64 880}
!242 = distinct !{!242, !66}
!243 = !{!35, !36, i64 352}
!244 = distinct !{!244, !66}
!245 = !{!35, !36, i64 0}
!246 = !{!35, !36, i64 512}
!247 = !{!35, !37, i64 457}
!248 = distinct !{!248, !66}
!249 = !{!35, !37, i64 431}
!250 = !{!35, !37, i64 556}
!251 = !{!47, !43, i64 212}
!252 = !{!189, !36, i64 24}
!253 = !{!254, !43, i64 226}
!254 = !{!"bScreen", !138, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !42, i64 200, !42, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !36, i64 232, !36, i64 240}
!255 = !{!"interface.c:ui_set_but_soft_range"}
!256 = !{!79, !41, i64 624}
!257 = !{!79, !41, i64 628}
!258 = !{!35, !43, i64 428}
!259 = !{!"interface.c:ui_block_do_align_but"}
!260 = distinct !{!260, !66}
!261 = !{!79, !42, i64 20}
!262 = !{!79, !41, i64 600}
!263 = !{!79, !41, i64 604}
!264 = distinct !{!264, !66}
!265 = !{!"interface.c:ui_def_but"}
!266 = !{!79, !41, i64 632}
!267 = !{!79, !36, i64 768}
!268 = !{!79, !36, i64 776}
!269 = !{!79, !37, i64 789}
!270 = !{!79, !43, i64 44}
!271 = !{!35, !36, i64 80}
!272 = !{!273, !153, i64 0}
!273 = !{!"AutoComplete", !153, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!274 = !{!273, !42, i64 8}
!275 = !{!273, !36, i64 16}
!276 = !{!273, !36, i64 24}
!277 = distinct !{!277, !66}
!278 = distinct !{!278, !66}
!279 = !{!"interface.c:uiDefButBit"}
!280 = !{!"interface.c:ui_def_but_rna_propname"}
!281 = !{!"interface.c:ui_def_but_rna"}
!282 = !{!283, !36, i64 24}
!283 = !{!"EnumPropertyItem", !42, i64 0, !36, i64 8, !42, i64 16, !36, i64 24, !36, i64 32}
!284 = !{!283, !42, i64 16}
!285 = !{!79, !36, i64 808}
!286 = !{!"interface.c:ui_def_but_operator_ptr"}
!287 = !{!288, !36, i64 88}
!288 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !289, i64 152, !43, i64 184}
!289 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!290 = !{!"interface.c:ui_check_but_and_iconize"}
!291 = !{!"interface.c:uiDefIconButBit"}
!292 = !{!"interface.c:uiDefIconTextButBit"}
!293 = !{!211, !43, i64 28}
!294 = !{!211, !43, i64 30}
!295 = distinct !{!295, !66}
!296 = !{!35, !37, i64 430}
!297 = !{!185, !42, i64 8484}
!298 = distinct !{!298, !66}
!299 = distinct !{!299, !66}
!300 = !{!79, !37, i64 907}
!301 = !{!79, !36, i64 912}
!302 = !{!79, !36, i64 920}
!303 = !{!79, !41, i64 928}
!304 = !{!35, !36, i64 376}
!305 = !{!35, !36, i64 384}
!306 = !{!35, !36, i64 360}
!307 = !{!35, !36, i64 368}
!308 = !{!35, !36, i64 320}
!309 = !{!35, !36, i64 328}
!310 = !{!35, !36, i64 336}
!311 = !{!35, !36, i64 344}
!312 = !{!79, !36, i64 728}
!313 = !{!79, !36, i64 736}
!314 = !{!35, !36, i64 400}
!315 = !{!35, !36, i64 408}
!316 = !{!35, !36, i64 416}
!317 = !{!79, !36, i64 696}
!318 = !{!79, !36, i64 704}
!319 = !{!79, !36, i64 800}
!320 = !{!79, !36, i64 712}
!321 = !{!79, !36, i64 720}
!322 = !{!80, !36, i64 16}
!323 = !{!"interface.c:operator_enum_search_cb"}
!324 = !{!288, !36, i64 104}
!325 = !{!288, !36, i64 8}
!326 = !{!283, !36, i64 8}
!327 = !{!283, !42, i64 0}
!328 = distinct !{!328, !66}
!329 = !{!"interface.c:operator_enum_call_cb"}
!330 = !{!331, !43, i64 16}
!331 = !{!"wmEvent", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 18, !42, i64 20, !42, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !43, i64 44, !43, i64 46, !42, i64 48, !42, i64 52, !44, i64 56, !42, i64 64, !42, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !36, i64 88, !36, i64 96, !43, i64 104, !43, i64 106, !42, i64 108, !36, i64 112}
!332 = !{!331, !43, i64 18}
!333 = !{!331, !36, i64 112}
!334 = !{!331, !43, i64 106}
!335 = !{!336, !42, i64 0}
!336 = !{!"uiStringInfo", !42, i64 0, !36, i64 8}
!337 = !{!338, !36, i64 240}
!338 = !{!"MenuType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !36, i64 208, !36, i64 216, !36, i64 224, !289, i64 232}
!339 = distinct !{!339, !66}
!340 = !{!283, !36, i64 32}
!341 = !{!336, !36, i64 8}
!342 = distinct !{!342, !66}
!343 = !{!"interface.c:ui_but_event_operator_string"}
!344 = !{!"interface.c:ui_but_event_property_operator_string"}
!345 = distinct !{!345, !66}
!346 = !{!"interface.c:ui_but_update_linklines"}
!347 = distinct !{!347, !66}
!348 = distinct !{!348, !66}
!349 = distinct !{!349, !66}
!350 = !{!"interface.c:ui_but_pie_direction_string"}
!351 = !{!"interface.c:BLI_rctf_size_y"}
!352 = !{!40, !41, i64 12}
!353 = !{!40, !41, i64 8}
!354 = !{!"interface.c:ui_draw_linkline"}
!355 = !{!196, !43, i64 32}
!356 = !{!"interface.c:BLI_rctf_cent_x"}
!357 = !{!"interface.c:BLI_rctf_cent_y"}
!358 = !{!"interface.c:normalize_v3_v3"}
!359 = !{!"interface.c:dot_v3v3"}
!360 = !{!"interface.c:mul_v3_v3fl"}
!361 = !{!"interface.c:ui_get_but_scale_unit"}
!362 = !{!137, !41, i64 900}
!363 = !{!137, !43, i64 820}
!364 = !{!"interface.c:ui_is_but_unit_radians"}
!365 = !{!"interface.c:ui_free_link"}
!366 = !{!"interface.c:soft_range_round_up"}
!367 = !{!"interface.c:soft_range_round_down"}
!368 = !{!"interface.c:min_ff"}
!369 = !{!"interface.c:buts_are_horiz"}
!370 = !{!"interface.c:findBitIndex"}
!371 = !{i32 0, i32 2}
!372 = !{!"interface.c:is_power_of_2_i"}
!373 = !{i32 0, i32 33}
!374 = !{!"interface.c:ui_def_but_rna__disable"}
!375 = !{!"interface.c:ui_def_but_rna__menu"}
!376 = distinct !{!376, !66}
!377 = distinct !{!377, !66}
!378 = distinct !{!378, !66}
!379 = distinct !{!379, !66}
!380 = !{!"interface.c:ui_is_but_rna_undo"}
!381 = !{!"interface.c:ui_get_but_step_unit"}
