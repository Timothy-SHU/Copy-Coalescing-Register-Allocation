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
%struct.uiLink = type { ptr, ptr, ptr, i16, i16, i16, i16, %struct.ListBase }
%struct.UnitSettings = type { float, i8, i8, i16 }
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
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.uiLinkLine = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ui_block_is_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, 257
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ui_block_is_pie_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = lshr i32 %3, 20
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window_fl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = load i32, ptr %5, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = load float, ptr %2, align 4, !tbaa !51
  %14 = load float, ptr %3, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Panel, ptr %16, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = sitofp i32 %20 to float
  %22 = fadd float %13, %21
  %23 = getelementptr inbounds %struct.Panel, ptr %16, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !55
  %25 = sitofp i32 %24 to float
  %26 = fadd float %14, %25
  br label %27

27:                                               ; preds = %18, %4
  %28 = phi float [ %26, %18 ], [ %14, %4 ]
  %29 = phi float [ %22, %18 ], [ %13, %4 ]
  %30 = add i32 %10, 1
  %31 = sub i32 %30, %12
  %32 = add i32 %7, 1
  %33 = sub i32 %32, %8
  %34 = sitofp i32 %8 to float
  %35 = sitofp i32 %33 to float
  %36 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %37 = load float, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %39 = load float, ptr %38, align 8, !tbaa !51
  %40 = fmul float %28, %39
  %41 = tail call float @llvm.fmuladd.f32(float %29, float %37, float %40)
  %42 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %43 = load float, ptr %42, align 8, !tbaa !51
  %44 = fadd float %43, %41
  %45 = tail call float @llvm.fmuladd.f32(float %44, float 5.000000e-01, float 5.000000e-01)
  %46 = tail call float @llvm.fmuladd.f32(float %35, float %45, float %34)
  store float %46, ptr %2, align 4, !tbaa !51
  %47 = sitofp i32 %12 to float
  %48 = sitofp i32 %31 to float
  %49 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !51
  %53 = fmul float %28, %52
  %54 = tail call float @llvm.fmuladd.f32(float %29, float %50, float %53)
  %55 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = fadd float %56, %54
  %58 = tail call float @llvm.fmuladd.f32(float %57, float 5.000000e-01, float 5.000000e-01)
  %59 = tail call float @llvm.fmuladd.f32(float %48, float %58, float %47)
  store float %59, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = load i32, ptr %2, align 4, !tbaa !56
  %6 = sitofp i32 %5 to float
  %7 = load i32, ptr %3, align 4, !tbaa !56
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = load i32, ptr %9, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Panel, ptr %18, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = sitofp i32 %22 to float
  %24 = fadd float %6, %23
  %25 = getelementptr inbounds %struct.Panel, ptr %18, i64 0, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = sitofp i32 %26 to float
  %28 = fadd float %8, %27
  br label %29

29:                                               ; preds = %4, %20
  %30 = phi float [ %28, %20 ], [ %8, %4 ]
  %31 = phi float [ %24, %20 ], [ %6, %4 ]
  %32 = add i32 %14, 1
  %33 = sub i32 %32, %16
  %34 = add i32 %11, 1
  %35 = sub i32 %34, %12
  %36 = sitofp i32 %12 to float
  %37 = sitofp i32 %35 to float
  %38 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %39 = load float, ptr %38, align 8, !tbaa !51
  %40 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %41 = load float, ptr %40, align 8, !tbaa !51
  %42 = fmul float %30, %41
  %43 = tail call float @llvm.fmuladd.f32(float %31, float %39, float %42)
  %44 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %45 = load float, ptr %44, align 8, !tbaa !51
  %46 = fadd float %45, %43
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 5.000000e-01, float 5.000000e-01)
  %48 = tail call float @llvm.fmuladd.f32(float %37, float %47, float %36)
  %49 = sitofp i32 %16 to float
  %50 = sitofp i32 %33 to float
  %51 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !51
  %53 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !51
  %55 = fmul float %30, %54
  %56 = tail call float @llvm.fmuladd.f32(float %31, float %52, float %55)
  %57 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !51
  %59 = fadd float %58, %56
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 5.000000e-01, float 5.000000e-01)
  %61 = tail call float @llvm.fmuladd.f32(float %50, float %60, float %49)
  %62 = fadd float %48, 5.000000e-01
  %63 = fptosi float %62 to i32
  store i32 %63, ptr %2, align 4, !tbaa !56
  %64 = fadd float %61, 5.000000e-01
  %65 = fptosi float %64 to i32
  store i32 %65, ptr %3, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_to_window_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %5 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = load i32, ptr %6, align 4, !tbaa !48
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = load float, ptr %2, align 4, !tbaa !51
  %15 = load float, ptr %5, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.Panel, ptr %17, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = sitofp i32 %21 to float
  %23 = fadd float %14, %22
  %24 = getelementptr inbounds %struct.Panel, ptr %17, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !55
  %26 = sitofp i32 %25 to float
  %27 = fadd float %15, %26
  br label %28

28:                                               ; preds = %4, %19
  %29 = phi float [ %27, %19 ], [ %15, %4 ]
  %30 = phi float [ %23, %19 ], [ %14, %4 ]
  %31 = add i32 %11, 1
  %32 = sub i32 %31, %13
  %33 = add i32 %8, 1
  %34 = sub i32 %33, %9
  %35 = sitofp i32 %9 to float
  %36 = sitofp i32 %34 to float
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %38 = load float, ptr %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %40 = load float, ptr %39, align 8, !tbaa !51
  %41 = fmul float %29, %40
  %42 = tail call float @llvm.fmuladd.f32(float %30, float %38, float %41)
  %43 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %44 = load float, ptr %43, align 8, !tbaa !51
  %45 = fadd float %44, %42
  %46 = tail call float @llvm.fmuladd.f32(float %45, float 5.000000e-01, float 5.000000e-01)
  %47 = tail call float @llvm.fmuladd.f32(float %36, float %46, float %35)
  store float %47, ptr %2, align 4, !tbaa !51
  %48 = sitofp i32 %13 to float
  %49 = sitofp i32 %32 to float
  %50 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = fmul float %29, %53
  %55 = tail call float @llvm.fmuladd.f32(float %30, float %51, float %54)
  %56 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !51
  %58 = fadd float %57, %55
  %59 = tail call float @llvm.fmuladd.f32(float %58, float 5.000000e-01, float 5.000000e-01)
  %60 = tail call float @llvm.fmuladd.f32(float %49, float %59, float %48)
  store float %60, ptr %5, align 4, !tbaa !51
  %61 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %62 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %63 = load float, ptr %61, align 4, !tbaa !51
  %64 = load float, ptr %62, align 4, !tbaa !51
  br i1 %18, label %74, label %65

65:                                               ; preds = %28
  %66 = getelementptr inbounds %struct.Panel, ptr %17, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !53
  %68 = sitofp i32 %67 to float
  %69 = fadd float %63, %68
  %70 = getelementptr inbounds %struct.Panel, ptr %17, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !55
  %72 = sitofp i32 %71 to float
  %73 = fadd float %64, %72
  br label %74

74:                                               ; preds = %28, %65
  %75 = phi float [ %73, %65 ], [ %64, %28 ]
  %76 = phi float [ %69, %65 ], [ %63, %28 ]
  %77 = load float, ptr %37, align 8, !tbaa !51
  %78 = load float, ptr %39, align 8, !tbaa !51
  %79 = fmul float %75, %78
  %80 = tail call float @llvm.fmuladd.f32(float %76, float %77, float %79)
  %81 = load float, ptr %43, align 8, !tbaa !51
  %82 = fadd float %81, %80
  %83 = tail call float @llvm.fmuladd.f32(float %82, float 5.000000e-01, float 5.000000e-01)
  %84 = tail call float @llvm.fmuladd.f32(float %36, float %83, float %35)
  store float %84, ptr %61, align 4, !tbaa !51
  %85 = load float, ptr %50, align 4, !tbaa !51
  %86 = load float, ptr %52, align 4, !tbaa !51
  %87 = fmul float %75, %86
  %88 = tail call float @llvm.fmuladd.f32(float %76, float %85, float %87)
  %89 = load float, ptr %56, align 4, !tbaa !51
  %90 = fadd float %89, %88
  %91 = tail call float @llvm.fmuladd.f32(float %90, float 5.000000e-01, float 5.000000e-01)
  %92 = tail call float @llvm.fmuladd.f32(float %49, float %91, float %48)
  store float %92, ptr %62, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_window_to_block_fl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = load i32, ptr %5, align 4, !tbaa !48
  %9 = add i32 %7, 1
  %10 = sub i32 %9, %8
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = add i32 %12, 1
  %16 = sub i32 %15, %14
  %17 = sitofp i32 %10 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %20 = load float, ptr %19, align 8, !tbaa !51
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %23 = load float, ptr %22, align 8, !tbaa !51
  %24 = fmul float %18, %23
  %25 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %26 = load float, ptr %25, align 8, !tbaa !51
  %27 = fadd float %26, 1.000000e+00
  %28 = fmul float %18, %27
  %29 = sitofp i32 %16 to float
  %30 = fmul float %29, 5.000000e-01
  %31 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = fmul float %30, %32
  %34 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = fmul float %30, %35
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = fadd float %38, 1.000000e+00
  %40 = fmul float %30, %39
  %41 = load float, ptr %2, align 4, !tbaa !51
  %42 = sitofp i32 %8 to float
  %43 = fsub float %41, %42
  %44 = load float, ptr %3, align 4, !tbaa !51
  %45 = sitofp i32 %14 to float
  %46 = fsub float %44, %45
  %47 = fsub float %46, %40
  %48 = fsub float %28, %43
  %49 = fmul float %33, %48
  %50 = tail call float @llvm.fmuladd.f32(float %21, float %47, float %49)
  %51 = fneg float %33
  %52 = fmul float %24, %51
  %53 = tail call float @llvm.fmuladd.f32(float %21, float %36, float %52)
  %54 = fdiv float %50, %53
  store float %54, ptr %3, align 4, !tbaa !51
  %55 = fneg float %24
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %54, float %43)
  %57 = fsub float %56, %28
  %58 = fdiv float %57, %21
  store float %58, ptr %2, align 4, !tbaa !51
  %59 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.Panel, ptr %60, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !53
  %65 = sitofp i32 %64 to float
  %66 = fsub float %58, %65
  store float %66, ptr %2, align 4, !tbaa !51
  %67 = getelementptr inbounds %struct.Panel, ptr %60, i64 0, i32 8
  %68 = load i32, ptr %67, align 4, !tbaa !55
  %69 = sitofp i32 %68 to float
  %70 = load float, ptr %3, align 4, !tbaa !51
  %71 = fsub float %70, %69
  store float %71, ptr %3, align 4, !tbaa !51
  br label %72

72:                                               ; preds = %62, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_window_to_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = load i32, ptr %2, align 4, !tbaa !56
  %6 = sitofp i32 %5 to float
  %7 = load i32, ptr %3, align 4, !tbaa !56
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = load i32, ptr %9, align 4, !tbaa !48
  %13 = add i32 %11, 1
  %14 = sub i32 %13, %12
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = add i32 %16, 1
  %20 = sub i32 %19, %18
  %21 = sitofp i32 %14 to float
  %22 = fmul float %21, 5.000000e-01
  %23 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %24 = load float, ptr %23, align 8, !tbaa !51
  %25 = fmul float %22, %24
  %26 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %27 = load float, ptr %26, align 8, !tbaa !51
  %28 = fmul float %22, %27
  %29 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %30 = load float, ptr %29, align 8, !tbaa !51
  %31 = fadd float %30, 1.000000e+00
  %32 = fmul float %22, %31
  %33 = sitofp i32 %20 to float
  %34 = fmul float %33, 5.000000e-01
  %35 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = fmul float %34, %36
  %38 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = fmul float %34, %39
  %41 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = fadd float %42, 1.000000e+00
  %44 = fmul float %34, %43
  %45 = sitofp i32 %12 to float
  %46 = fsub float %6, %45
  %47 = sitofp i32 %18 to float
  %48 = fsub float %8, %47
  %49 = fsub float %48, %44
  %50 = fsub float %32, %46
  %51 = fmul float %37, %50
  %52 = tail call float @llvm.fmuladd.f32(float %25, float %49, float %51)
  %53 = fneg float %37
  %54 = fmul float %28, %53
  %55 = tail call float @llvm.fmuladd.f32(float %25, float %40, float %54)
  %56 = fdiv float %52, %55
  %57 = fneg float %28
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %56, float %46)
  %59 = fsub float %58, %32
  %60 = fdiv float %59, %25
  %61 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.Panel, ptr %62, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !53
  %67 = sitofp i32 %66 to float
  %68 = fsub float %60, %67
  %69 = getelementptr inbounds %struct.Panel, ptr %62, i64 0, i32 8
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = sitofp i32 %70 to float
  %72 = fsub float %56, %71
  br label %73

73:                                               ; preds = %4, %64
  %74 = phi float [ %60, %4 ], [ %68, %64 ]
  %75 = phi float [ %56, %4 ], [ %72, %64 ]
  %76 = fadd float %74, 5.000000e-01
  %77 = fptosi float %76 to i32
  store i32 %77, ptr %2, align 4, !tbaa !56
  %78 = fadd float %75, 5.000000e-01
  %79 = fptosi float %78 to i32
  store i32 %79, ptr %3, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_window_to_region(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = load i32, ptr %1, align 4, !tbaa !56
  %7 = sub nsw i32 %6, %5
  store i32 %7, ptr %1, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = load i32, ptr %2, align 4, !tbaa !56
  %11 = sub nsw i32 %10, %9
  store i32 %11, ptr %2, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_block_translate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sitofp i32 %1 to float
  %9 = sitofp i32 %2 to float
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %13, %10 ]
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 18
  tail call void @BLI_rctf_translate(ptr noundef nonnull %12, float noundef %8, float noundef %9) #20
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !63

15:                                               ; preds = %10, %3
  %16 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  %17 = sitofp i32 %1 to float
  %18 = sitofp i32 %2 to float
  tail call void @BLI_rctf_translate(ptr noundef nonnull %16, float noundef %17, float noundef %18) #20
  ret void
}

declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_bounds_block(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  store float 0.000000e+00, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  store float %13, ptr %14, align 4, !tbaa !69
  %15 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  store float 0.000000e+00, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 10
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  store float %18, ptr %19, align 4, !tbaa !72
  br label %44

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %21) #20
  %22 = load ptr, ptr %2, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.uiBut, ptr %25, i64 0, i32 18
  tail call void @BLI_rctf_union(ptr noundef nonnull %21, ptr noundef nonnull %26) #20
  %27 = load ptr, ptr %25, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !73

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  %31 = load i32, ptr %30, align 8, !tbaa !74
  %32 = sitofp i32 %31 to float
  %33 = load float, ptr %21, align 8, !tbaa !67
  %34 = fsub float %33, %32
  store float %34, ptr %21, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !70
  %37 = fsub float %36, %32
  store float %37, ptr %35, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !69
  %40 = fadd float %39, %32
  store float %40, ptr %38, align 4, !tbaa !69
  %41 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !72
  %43 = fadd float %42, %32
  store float %43, ptr %41, align 4, !tbaa !72
  br label %44

44:                                               ; preds = %5, %9, %29
  %45 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  %46 = load float, ptr %45, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !76
  %49 = fsub float %48, %46
  %50 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 43
  %51 = load i32, ptr %50, align 4, !tbaa !77
  %52 = sitofp i32 %51 to float
  %53 = fcmp ogt float %49, %52
  %54 = select i1 %53, float %49, float %52
  %55 = fadd float %46, %54
  store float %55, ptr %47, align 4, !tbaa !69
  %56 = load ptr, ptr %2, align 8, !tbaa !78
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.uiBut, ptr %56, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  %61 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(6) @.str, i64 noundef 5) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %44
  br label %64

64:                                               ; preds = %58, %63
  %65 = phi float [ 4.000000e+01, %63 ], [ 1.000000e+01, %58 ]
  %66 = fsub float %46, %65
  %67 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 44
  store float %66, ptr %67, align 8, !tbaa !83
  %68 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !70
  %70 = fsub float %69, %65
  %71 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 44, i32 2
  store float %70, ptr %71, align 8, !tbaa !84
  %72 = fadd float %55, %65
  %73 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 44, i32 1
  store float %72, ptr %73, align 4, !tbaa !85
  %74 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  %75 = load float, ptr %74, align 4, !tbaa !72
  %76 = fadd float %65, %75
  %77 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 44, i32 3
  store float %76, ptr %77, align 4, !tbaa !86
  ret void
}

declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #7

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBoundsBlock(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 1, ptr %6, align 4, !tbaa !87
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiTextBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 2, ptr %4, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiPopupBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 3, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 40
  store i32 %2, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 41
  store i32 %3, ptr %8, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiMenuPopupBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 4, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 40
  store i32 %2, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 41
  store i32 %3, ptr %8, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiCenteredBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  store i32 %1, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 5, ptr %4, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiExplicitBoundsBlock(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 {
  %6 = sitofp i32 %1 to float
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  store float %6, ptr %7, align 8, !tbaa !67
  %8 = sitofp i32 %2 to float
  %9 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  store float %8, ptr %9, align 8, !tbaa !70
  %10 = sitofp i32 %3 to float
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  store float %10, ptr %11, align 4, !tbaa !69
  %12 = sitofp i32 %4 to float
  %13 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  store float %12, ptr %13, align 4, !tbaa !72
  %14 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 39
  store i32 0, ptr %14, align 4, !tbaa !87
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_but_find_old(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 56
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 27
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 30
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 28
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 29
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  br label %15

15:                                               ; preds = %83, %2
  %16 = phi ptr [ %3, %2 ], [ %17, %83 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %4, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !90
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 54, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 55
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %29
  %35 = load i32, ptr %7, align 8, !tbaa !93
  %36 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 56
  %37 = load i32, ptr %36, align 8, !tbaa !93
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  %40 = load ptr, ptr %8, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 27
  %42 = load ptr, ptr %41, align 8, !tbaa !94
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 30
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 28
  %51 = load ptr, ptr %50, align 8, !tbaa !96
  %52 = icmp eq ptr %51, %17
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %10, align 8, !tbaa !96
  %55 = icmp eq ptr %54, %51
  br i1 %55, label %56, label %83

56:                                               ; preds = %53, %49
  %57 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 29
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = icmp eq ptr %58, %17
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 8, !tbaa !97
  %62 = icmp eq ptr %61, %58
  br i1 %62, label %63, label %83

63:                                               ; preds = %60, %56
  %64 = icmp eq ptr %45, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %63
  %66 = load ptr, ptr %12, align 8, !tbaa !98
  %67 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !98
  %69 = icmp eq ptr %66, %68
  %70 = icmp eq ptr %68, %17
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load i32, ptr %13, align 4, !tbaa !99
  %74 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !99
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %63
  %78 = load ptr, ptr %14, align 8, !tbaa !100
  %79 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 59
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = icmp eq ptr %78, %80
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %19, %24, %29, %34, %39, %44, %53, %60, %65, %72, %77
  %84 = phi i8 [ 0, %19 ], [ 0, %24 ], [ 0, %34 ], [ 0, %29 ], [ 0, %39 ], [ 0, %44 ], [ 0, %53 ], [ 0, %60 ], [ 0, %65 ], [ 0, %72 ], [ %82, %77 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %15, label %86, !llvm.loop !101

86:                                               ; preds = %83, %15
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_but_find_new(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 56
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 27
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 30
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 28
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 29
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  br label %15

15:                                               ; preds = %83, %2
  %16 = phi ptr [ %3, %2 ], [ %17, %83 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 4, !tbaa !90
  %22 = load i16, ptr %4, align 4, !tbaa !90
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 54, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = load ptr, ptr %5, align 8, !tbaa !91
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 55
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = load ptr, ptr %6, align 8, !tbaa !92
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 56
  %36 = load i32, ptr %35, align 8, !tbaa !93
  %37 = load i32, ptr %7, align 8, !tbaa !93
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 27
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = load ptr, ptr %8, align 8, !tbaa !94
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = load ptr, ptr %9, align 8, !tbaa !95
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 8, !tbaa !96
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 28
  %54 = load ptr, ptr %53, align 8, !tbaa !96
  %55 = icmp eq ptr %54, %50
  br i1 %55, label %56, label %83

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr %11, align 8, !tbaa !97
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 29
  %61 = load ptr, ptr %60, align 8, !tbaa !97
  %62 = icmp eq ptr %61, %57
  br i1 %62, label %63, label %83

63:                                               ; preds = %59, %56
  %64 = icmp eq ptr %46, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = load ptr, ptr %12, align 8, !tbaa !98
  %69 = icmp eq ptr %67, %68
  %70 = icmp eq ptr %68, %1
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !99
  %75 = load i32, ptr %13, align 4, !tbaa !99
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %63
  %78 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 59
  %79 = load ptr, ptr %78, align 8, !tbaa !100
  %80 = load ptr, ptr %14, align 8, !tbaa !100
  %81 = icmp eq ptr %79, %80
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %19, %24, %29, %34, %39, %44, %52, %59, %65, %72, %77
  %84 = phi i8 [ 0, %19 ], [ 0, %24 ], [ 0, %34 ], [ 0, %29 ], [ 0, %39 ], [ 0, %44 ], [ 0, %52 ], [ 0, %59 ], [ 0, %65 ], [ 0, %72 ], [ %82, %77 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %15, label %86, !llvm.loop !102

86:                                               ; preds = %83, %15
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  %10 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 8
  %11 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 54, i32 2
  %12 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 55
  %13 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 56
  %14 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 27
  %15 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 30
  %16 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 28
  %17 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 29
  %18 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 19
  %19 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 5
  %20 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 59
  br label %21

21:                                               ; preds = %89, %8
  %22 = phi ptr [ %9, %8 ], [ %23, %89 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %96, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %10, align 4, !tbaa !90
  %27 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 8
  %28 = load i16, ptr %27, align 4, !tbaa !90
  %29 = icmp eq i16 %26, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %25
  %31 = load ptr, ptr %11, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 54, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 55
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %35
  %41 = load i32, ptr %13, align 8, !tbaa !93
  %42 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 56
  %43 = load i32, ptr %42, align 8, !tbaa !93
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %40
  %46 = load ptr, ptr %14, align 8, !tbaa !94
  %47 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %45
  %51 = load ptr, ptr %15, align 8, !tbaa !95
  %52 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 30
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 28
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = icmp eq ptr %57, %23
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %16, align 8, !tbaa !96
  %61 = icmp eq ptr %60, %57
  br i1 %61, label %62, label %89

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 29
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  %65 = icmp eq ptr %64, %23
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %17, align 8, !tbaa !97
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %69, label %89

69:                                               ; preds = %66, %62
  %70 = icmp eq ptr %51, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %69
  %72 = load ptr, ptr %18, align 8, !tbaa !98
  %73 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !98
  %75 = icmp eq ptr %72, %74
  %76 = icmp eq ptr %74, %23
  %77 = or i1 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load i32, ptr %19, align 4, !tbaa !99
  %80 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !99
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78, %69
  %84 = load ptr, ptr %20, align 8, !tbaa !100
  %85 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 59
  %86 = load ptr, ptr %85, align 8, !tbaa !100
  %87 = icmp eq ptr %84, %86
  %88 = zext i1 %87 to i8
  br label %89

89:                                               ; preds = %25, %30, %35, %40, %45, %50, %59, %66, %71, %78, %83
  %90 = phi i8 [ 0, %25 ], [ 0, %30 ], [ 0, %40 ], [ 0, %35 ], [ 0, %45 ], [ 0, %50 ], [ 0, %59 ], [ 0, %66 ], [ 0, %71 ], [ 0, %78 ], [ %88, %83 ]
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %21, label %92, !llvm.loop !101

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 67
  %94 = load ptr, ptr %93, align 8, !tbaa !104
  %95 = icmp eq ptr %94, null
  br label %96

96:                                               ; preds = %21, %92, %4
  %97 = phi i1 [ true, %4 ], [ false, %92 ], [ true, %21 ]
  %98 = phi i1 [ true, %4 ], [ %95, %92 ], [ true, %21 ]
  %99 = or i1 %7, %97
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call void @ui_button_activate_do(ptr noundef %0, ptr noundef %1, ptr noundef %3) #20
  br label %104

101:                                              ; preds = %96
  br i1 %98, label %102, label %104

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %103, ptr noundef %3) #20
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef %3)
  br label %104

104:                                              ; preds = %100, %101, %102
  %105 = phi i8 [ 0, %102 ], [ 1, %101 ], [ 1, %100 ]
  ret i8 %105
}

declare void @ui_button_activate_do(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_free_but(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @WM_operator_properties_free(ptr noundef nonnull %4) #20
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %8 = load ptr, ptr %3, align 8, !tbaa !105
  tail call void %7(ptr noundef %8) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %14(ptr noundef nonnull %11) #20
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @ui_button_active_free(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %23(ptr noundef nonnull %17) #20
  br label %24

24:                                               ; preds = %21, %22, %15
  %25 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 16
  %29 = icmp eq ptr %26, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %32(ptr noundef nonnull %26) #20
  br label %33

33:                                               ; preds = %31, %24
  %34 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %35 = load ptr, ptr %34, align 8, !tbaa !107
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiLink, ptr %35, i64 0, i32 7
  tail call void @BLI_freelistN(ptr noundef nonnull %38) #20
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %39(ptr noundef nonnull %35) #20
  br label %40

40:                                               ; preds = %33, %37
  %41 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !108
  %43 = icmp eq i32 %42, 24064
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @IMB_freeImBuf(ptr noundef nonnull %46) #20
  br label %49

49:                                               ; preds = %48, %44, %40
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %50(ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiButExecute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @ui_button_execute_begin(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = load ptr, ptr %3, align 8, !tbaa !62
  call void @ui_button_execute_end(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #7

declare void @ui_button_execute_begin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ui_button_execute_end(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_but_add_shortcut(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 124) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %13, align 1, !tbaa !110
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, ptr %6, align 8, !tbaa !109
  %18 = and i32 %17, -134217729
  store i32 %18, ptr %6, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %16, %5, %3
  %20 = icmp eq ptr %1, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 16
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @BLI_strdup(ptr noundef %23) #20
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi ptr [ %27, %26 ], [ %23, %21 ]
  %30 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %24, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef nonnull %1) #20
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %31(ptr noundef %29) #20
  store ptr %24, ptr %22, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = or i32 %33, 134217728
  store i32 %34, ptr %32, align 8, !tbaa !109
  tail call void @ui_check_but(ptr noundef %0)
  br label %35

35:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #7

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_check_but(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca double, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [400 x i8], align 16
  %14 = alloca [400 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store double 0x7FEFFFFFFFFFFFFF, ptr %11, align 8, !tbaa !111
  %15 = call i32 @ui_is_but_push_ex(ptr noundef %0, ptr noundef nonnull %11), !range !112
  switch i32 %15, label %24 [
    i32 1, label %16
    i32 0, label %20
  ]

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !109
  br label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %1, %16, %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %259

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %259

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %259

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = icmp eq ptr %42, null
  br i1 %43, label %259, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !99
  %47 = and i32 %46, 224
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %259, label %49

49:                                               ; preds = %44
  br i1 %39, label %229, label %50

50:                                               ; preds = %36, %49
  %51 = tail call i32 @RNA_property_type(ptr noundef nonnull %38) #20
  switch i32 %51, label %259 [
    i32 1, label %52
    i32 2, label %80
  ]

52:                                               ; preds = %50
  %53 = load ptr, ptr %37, align 8, !tbaa !92
  %54 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %53) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %55 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %56 = load ptr, ptr %37, align 8, !tbaa !92
  call void @RNA_property_int_ui_range(ptr noundef nonnull %55, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, -2147483648
  %59 = sitofp i32 %57 to double
  %60 = select i1 %58, double -1.000000e+04, double %59
  %61 = icmp eq i32 %57, 2147483647
  %62 = load i32, ptr %3, align 4
  %63 = sitofp i32 %62 to double
  %64 = select i1 %61, double 1.000000e+04, double %63
  %65 = icmp eq i8 %54, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %67 = load ptr, ptr %37, align 8, !tbaa !92
  call void @RNA_property_int_get_array_range(ptr noundef nonnull %55, ptr noundef %67, ptr noundef nonnull %5) #20
  %68 = load i32, ptr %5, align 4, !tbaa !56
  %69 = sitofp i32 %68 to double
  %70 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %71 = load i32, ptr %70, align 4, !tbaa !56
  %72 = sitofp i32 %71 to double
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %77

73:                                               ; preds = %52
  %74 = load ptr, ptr %37, align 8, !tbaa !92
  %75 = call i32 @RNA_property_int_get(ptr noundef nonnull %55, ptr noundef %74) #20
  %76 = sitofp i32 %75 to double
  br label %77

77:                                               ; preds = %73, %66
  %78 = phi double [ %69, %66 ], [ %76, %73 ]
  %79 = phi double [ %72, %66 ], [ %76, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %108

80:                                               ; preds = %50
  %81 = load ptr, ptr %37, align 8, !tbaa !92
  %82 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %81) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %83 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %84 = load ptr, ptr %37, align 8, !tbaa !92
  call void @RNA_property_float_ui_range(ptr noundef nonnull %83, ptr noundef %84, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %85 = load float, ptr %6, align 4
  %86 = fcmp oeq float %85, 0xC7EFFFFFE0000000
  %87 = select i1 %86, float -1.000000e+04, float %85
  %88 = fpext float %87 to double
  %89 = load float, ptr %7, align 4
  %90 = fcmp oeq float %89, 0x47EFFFFFE0000000
  %91 = select i1 %90, float 1.000000e+04, float %89
  %92 = fpext float %91 to double
  %93 = icmp eq i8 %82, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  %95 = load ptr, ptr %37, align 8, !tbaa !92
  call void @RNA_property_float_get_array_range(ptr noundef nonnull %83, ptr noundef %95, ptr noundef nonnull %10) #20
  %96 = load float, ptr %10, align 4, !tbaa !51
  %97 = fpext float %96 to double
  %98 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !51
  %100 = fpext float %99 to double
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  br label %105

101:                                              ; preds = %80
  %102 = load ptr, ptr %37, align 8, !tbaa !92
  %103 = call float @RNA_property_float_get(ptr noundef nonnull %83, ptr noundef %102) #20
  %104 = fpext float %103 to double
  br label %105

105:                                              ; preds = %101, %94
  %106 = phi double [ %97, %94 ], [ %104, %101 ]
  %107 = phi double [ %100, %94 ], [ %104, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %108

108:                                              ; preds = %105, %77
  %109 = phi double [ %78, %77 ], [ %106, %105 ]
  %110 = phi double [ %79, %77 ], [ %107, %105 ]
  %111 = phi double [ %64, %77 ], [ %92, %105 ]
  %112 = phi double [ %60, %77 ], [ %88, %105 ]
  %113 = fadd double %109, 1.000000e-10
  %114 = fcmp olt double %113, %112
  br i1 %114, label %115, label %167

115:                                              ; preds = %108
  %116 = fcmp olt double %109, 0.000000e+00
  br i1 %116, label %117, label %141

117:                                              ; preds = %115
  %118 = fneg double %109
  %119 = fneg double %112
  %120 = fcmp une double %109, 0.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = call double @log(double noundef %118) #20
  %123 = fdiv double %122, 0x40026BB1BBB55516
  %124 = call double @llvm.ceil.f64(double %123)
  %125 = call double @pow(double noundef 1.000000e+01, double noundef %124) #20
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi double [ %125, %121 ], [ 0.000000e+00, %117 ]
  %128 = fmul double %127, 2.000000e-01
  %129 = fcmp ult double %128, %119
  %130 = fcmp ult double %128, %118
  %131 = or i1 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = fmul double %127, 5.000000e-01
  %134 = fcmp ult double %133, %119
  %135 = fcmp ult double %133, %118
  %136 = or i1 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %132, %126
  %139 = phi double [ %127, %137 ], [ %128, %126 ], [ %133, %132 ]
  %140 = fneg double %139
  br label %160

141:                                              ; preds = %115
  %142 = fcmp une double %109, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = call double @log(double noundef %109) #20
  %145 = fdiv double %144, 0x40026BB1BBB55516
  %146 = call double @llvm.floor.f64(double %145)
  %147 = call double @pow(double noundef 1.000000e+01, double noundef %146) #20
  br label %148

148:                                              ; preds = %143, %141
  %149 = phi double [ %147, %143 ], [ 0.000000e+00, %141 ]
  %150 = fmul double %149, 5.000000e+00
  %151 = fcmp ugt double %150, %112
  %152 = fcmp ugt double %150, %109
  %153 = or i1 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = fmul double %149, 2.000000e+00
  %156 = fcmp ugt double %155, %112
  %157 = fcmp ugt double %155, %109
  %158 = or i1 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %154, %148, %138
  %161 = phi double [ %140, %138 ], [ %149, %159 ], [ %150, %148 ], [ %155, %154 ]
  %162 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %163 = load float, ptr %162, align 8, !tbaa !116
  %164 = fpext float %163 to double
  %165 = fcmp olt double %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %160, %108
  %168 = phi double [ %164, %166 ], [ %161, %160 ], [ %112, %108 ]
  %169 = fadd double %110, -1.000000e-10
  %170 = fcmp ogt double %169, %111
  br i1 %170, label %171, label %223

171:                                              ; preds = %167
  %172 = fcmp olt double %110, 0.000000e+00
  br i1 %172, label %173, label %197

173:                                              ; preds = %171
  %174 = fneg double %110
  %175 = fneg double %111
  %176 = fcmp une double %110, 0.000000e+00
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = call double @log(double noundef %174) #20
  %179 = fdiv double %178, 0x40026BB1BBB55516
  %180 = call double @llvm.floor.f64(double %179)
  %181 = call double @pow(double noundef 1.000000e+01, double noundef %180) #20
  br label %182

182:                                              ; preds = %177, %173
  %183 = phi double [ %181, %177 ], [ 0.000000e+00, %173 ]
  %184 = fmul double %183, 5.000000e+00
  %185 = fcmp ugt double %184, %175
  %186 = fcmp ugt double %184, %174
  %187 = or i1 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = fmul double %183, 2.000000e+00
  %190 = fcmp ugt double %189, %175
  %191 = fcmp ugt double %189, %174
  %192 = or i1 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %188, %182
  %195 = phi double [ %183, %193 ], [ %184, %182 ], [ %189, %188 ]
  %196 = fneg double %195
  br label %216

197:                                              ; preds = %171
  %198 = fcmp une double %110, 0.000000e+00
  br i1 %198, label %199, label %204

199:                                              ; preds = %197
  %200 = call double @log(double noundef %110) #20
  %201 = fdiv double %200, 0x40026BB1BBB55516
  %202 = call double @llvm.ceil.f64(double %201)
  %203 = call double @pow(double noundef 1.000000e+01, double noundef %202) #20
  br label %204

204:                                              ; preds = %199, %197
  %205 = phi double [ %203, %199 ], [ 0.000000e+00, %197 ]
  %206 = fmul double %205, 2.000000e-01
  %207 = fcmp ult double %206, %111
  %208 = fcmp ult double %206, %110
  %209 = or i1 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = fmul double %205, 5.000000e-01
  %212 = fcmp ult double %211, %111
  %213 = fcmp ult double %211, %110
  %214 = or i1 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %210, %204, %194
  %217 = phi double [ %196, %194 ], [ %205, %215 ], [ %206, %204 ], [ %211, %210 ]
  %218 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %219 = load float, ptr %218, align 4, !tbaa !117
  %220 = fpext float %219 to double
  %221 = fcmp ogt double %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %216, %167
  %224 = phi double [ %220, %222 ], [ %217, %216 ], [ %111, %167 ]
  %225 = fptrunc double %168 to float
  %226 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  store float %225, ptr %226, align 8, !tbaa !118
  %227 = fptrunc double %224 to float
  %228 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  store float %227, ptr %228, align 4, !tbaa !119
  br label %259

229:                                              ; preds = %49
  %230 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %231 = load ptr, ptr %230, align 8, !tbaa !98
  %232 = icmp eq ptr %231, null
  br i1 %232, label %259, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %235 = load i32, ptr %234, align 4, !tbaa !99
  %236 = and i32 %235, 224
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %259, label %238

238:                                              ; preds = %233
  %239 = tail call double @ui_get_but_val(ptr noundef %0)
  %240 = fptrunc double %239 to float
  %241 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %242 = load float, ptr %241, align 8, !tbaa !116
  %243 = fcmp ogt float %242, %240
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %246 = load float, ptr %245, align 4, !tbaa !117
  %247 = fcmp olt float %246, %240
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %248, %244, %238
  %250 = phi float [ %246, %248 ], [ %240, %244 ], [ %242, %238 ]
  %251 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %252 = load float, ptr %251, align 8, !tbaa !118
  %253 = fcmp olt float %252, %250
  %254 = select i1 %253, float %252, float %250
  store float %254, ptr %251, align 8, !tbaa !118
  %255 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %256 = load float, ptr %255, align 4, !tbaa !119
  %257 = fcmp ogt float %256, %250
  %258 = select i1 %257, float %256, float %250
  store float %258, ptr %255, align 4, !tbaa !119
  br label %259

259:                                              ; preds = %249, %233, %229, %223, %50, %40, %44, %32, %28, %24
  %260 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %261 = load i32, ptr %260, align 8, !tbaa !108
  switch i32 %261, label %296 [
    i32 2560, label %262
    i32 9216, label %262
    i32 7168, label %262
    i32 6656, label %280
    i32 17408, label %280
  ]

262:                                              ; preds = %259, %259, %259
  %263 = load double, ptr %11, align 8, !tbaa !111
  %264 = fcmp oeq double %263, 0x7FEFFFFFFFFFFFFF
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = call double @ui_get_but_val(ptr noundef %0)
  store double %266, ptr %11, align 8, !tbaa !111
  br label %267

267:                                              ; preds = %265, %262
  %268 = load double, ptr %11, align 8, !tbaa !111
  %269 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %270 = load float, ptr %269, align 8, !tbaa !116
  %271 = fpext float %270 to double
  %272 = fcmp olt double %268, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  call void @ui_set_but_val(ptr noundef %0, double noundef %271)
  br label %296

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %276 = load float, ptr %275, align 4, !tbaa !117
  %277 = fpext float %276 to double
  %278 = fcmp ogt double %268, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %274
  call void @ui_set_but_val(ptr noundef %0, double noundef %277)
  br label %296

280:                                              ; preds = %259, %259
  %281 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %282 = load ptr, ptr %281, align 8, !tbaa !92
  %283 = icmp eq ptr %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = call i32 @RNA_property_flag(ptr noundef nonnull %282) #20
  %286 = and i32 %285, 4096
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %284, %280
  %289 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %290 = load i32, ptr %289, align 8, !tbaa !109
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  %293 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 51
  br i1 %292, label %295, label %294

294:                                              ; preds = %288
  store i16 1, ptr %293, align 4, !tbaa !120
  br label %296

295:                                              ; preds = %288
  store i16 0, ptr %293, align 4, !tbaa !120
  br label %296

296:                                              ; preds = %259, %284, %295, %294, %273, %279, %274
  %297 = load i32, ptr %260, align 8, !tbaa !108
  switch i32 %297, label %701 [
    i32 5632, label %298
    i32 2560, label %340
    i32 7168, label %340
    i32 5120, label %556
    i32 3072, label %626
    i32 20992, label %626
    i32 26624, label %626
    i32 12288, label %635
    i32 23552, label %655
    i32 13312, label %706
    i32 22016, label %706
  ]

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %300 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18, i32 1
  %301 = load float, ptr %300, align 4, !tbaa !76
  %302 = load float, ptr %299, align 4, !tbaa !75
  %303 = fsub float %301, %302
  %304 = fcmp ogt float %303, 2.400000e+01
  br i1 %304, label %305, label %706

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %307 = load ptr, ptr %306, align 8, !tbaa !121
  %308 = getelementptr inbounds %struct.uiBlock, ptr %307, i64 0, i32 27
  %309 = load i32, ptr %308, align 8, !tbaa !34
  %310 = and i32 %309, 1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %335, label %312

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %314 = load ptr, ptr %313, align 8, !tbaa !92
  %315 = icmp eq ptr %314, null
  br i1 %315, label %335, label %316

316:                                              ; preds = %312
  %317 = call i32 @RNA_property_type(ptr noundef nonnull %314) #20
  %318 = icmp eq i32 %317, 4
  br i1 %318, label %319, label %335

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %321 = load ptr, ptr %313, align 8, !tbaa !92
  %322 = call i32 @RNA_property_enum_get(ptr noundef nonnull %320, ptr noundef %321) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  %323 = load ptr, ptr %306, align 8, !tbaa !121
  %324 = getelementptr inbounds %struct.uiBlock, ptr %323, i64 0, i32 48
  %325 = load ptr, ptr %324, align 8, !tbaa !122
  %326 = load ptr, ptr %313, align 8, !tbaa !92
  %327 = call zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef %325, ptr noundef nonnull %320, ptr noundef %326, i32 noundef %322, ptr noundef nonnull %12) #20
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %319
  %330 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %331 = load ptr, ptr %330, align 8, !tbaa !79
  %332 = load ptr, ptr %12, align 8, !tbaa !62
  %333 = call ptr @BLI_strncpy(ptr noundef %331, ptr noundef %332, i64 noundef 128) #20
  br label %334

334:                                              ; preds = %329, %319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  br label %335

335:                                              ; preds = %312, %316, %334, %305
  %336 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %337 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %338 = load ptr, ptr %337, align 8, !tbaa !79
  %339 = call ptr @BLI_strncpy(ptr noundef nonnull %336, ptr noundef %338, i64 noundef 400) #20
  br label %706

340:                                              ; preds = %296, %296
  %341 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %342 = load ptr, ptr %341, align 8, !tbaa !114
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %706

344:                                              ; preds = %340
  %345 = load double, ptr %11, align 8, !tbaa !111
  %346 = fcmp oeq double %345, 0x7FEFFFFFFFFFFFFF
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = call double @ui_get_but_val(ptr noundef %0)
  store double %348, ptr %11, align 8, !tbaa !111
  br label %349

349:                                              ; preds = %347, %344
  %350 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %351 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %352 = load ptr, ptr %351, align 8, !tbaa !79
  %353 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %350, ptr noundef %352, i64 noundef 400) #20
  %354 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %355 = load i32, ptr %354, align 4, !tbaa !99
  %356 = icmp eq i32 %355, 128
  br i1 %356, label %357, label %361

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %359 = load ptr, ptr %358, align 8, !tbaa !98
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %374

361:                                              ; preds = %357, %349
  %362 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %363 = load ptr, ptr %362, align 8, !tbaa !92
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = call i32 @RNA_property_type(ptr noundef nonnull %363) #20
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %374, label %368

368:                                              ; preds = %365, %361
  %369 = getelementptr inbounds i8, ptr %350, i64 %353
  %370 = sub i64 400, %353
  %371 = load double, ptr %11, align 8, !tbaa !111
  %372 = fptosi double %371 to i32
  %373 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %369, i64 noundef %370, ptr noundef nonnull @.str.5, i32 noundef %372) #20
  br label %537

374:                                              ; preds = %365, %357
  %375 = load double, ptr %11, align 8, !tbaa !111
  %376 = fcmp oeq double %375, 0x47EFFFFFE0000000
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = getelementptr inbounds i8, ptr %350, i64 %353
  %379 = sub i64 400, %353
  %380 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %378, ptr noundef nonnull @.str.10, i64 noundef %379) #20
  br label %537

381:                                              ; preds = %374
  %382 = fcmp oeq double %375, 0xC7EFFFFFE0000000
  br i1 %382, label %383, label %387

383:                                              ; preds = %381
  %384 = getelementptr inbounds i8, ptr %350, i64 %353
  %385 = sub i64 400, %353
  %386 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %384, ptr noundef nonnull @.str.11, i64 noundef %385) #20
  br label %537

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %389 = load ptr, ptr %388, align 8, !tbaa !121
  %390 = getelementptr inbounds %struct.uiBlock, ptr %389, i64 0, i32 49
  %391 = load ptr, ptr %390, align 8, !tbaa !123
  %392 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %393 = load i8, ptr %392, align 8, !tbaa !124
  %394 = zext i8 %393 to i32
  %395 = icmp eq i8 %393, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %387
  %397 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %398 = load ptr, ptr %397, align 8, !tbaa !92
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %402

400:                                              ; preds = %396, %387
  %401 = shl nuw nsw i32 %394, 16
  br label %405

402:                                              ; preds = %396
  %403 = call i32 @RNA_property_subtype(ptr noundef nonnull %398) #20
  %404 = and i32 %403, 16711680
  br label %405

405:                                              ; preds = %402, %400
  %406 = phi i32 [ %401, %400 ], [ %404, %402 ]
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %496, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.UnitSettings, ptr %391, i64 0, i32 2
  %410 = load i8, ptr %409, align 1, !tbaa !125
  %411 = icmp eq i8 %410, 2
  %412 = icmp eq i32 %406, 327680
  %413 = and i1 %412, %411
  %414 = icmp eq i32 %406, 393216
  %415 = or i1 %414, %413
  br i1 %415, label %496, label %416

416:                                              ; preds = %408
  %417 = getelementptr inbounds %struct.UnitSettings, ptr %391, i64 0, i32 1
  %418 = load i8, ptr %417, align 4, !tbaa !127
  %419 = icmp ne i8 %418, 0
  %420 = or i1 %412, %419
  br i1 %420, label %421, label %496

421:                                              ; preds = %416
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %13) #20
  %422 = load ptr, ptr %388, align 8, !tbaa !121
  %423 = getelementptr inbounds %struct.uiBlock, ptr %422, i64 0, i32 49
  %424 = load ptr, ptr %423, align 8, !tbaa !123
  %425 = getelementptr inbounds %struct.UnitSettings, ptr %424, i64 0, i32 3
  %426 = load i16, ptr %425, align 2, !tbaa !128
  %427 = load i8, ptr %392, align 8, !tbaa !124
  %428 = zext i8 %427 to i32
  %429 = icmp eq i8 %427, 0
  br i1 %429, label %430, label %438

430:                                              ; preds = %421
  %431 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %432 = load ptr, ptr %431, align 8, !tbaa !92
  %433 = icmp eq ptr %432, null
  br i1 %433, label %438, label %434

434:                                              ; preds = %430
  %435 = call i32 @RNA_property_subtype(ptr noundef nonnull %432) #20
  %436 = lshr i32 %435, 16
  %437 = and i32 %436, 255
  br label %438

438:                                              ; preds = %434, %430, %421
  %439 = phi i32 [ %437, %434 ], [ %428, %430 ], [ %428, %421 ]
  %440 = load float, ptr %424, align 4, !tbaa !129
  %441 = fcmp olt float %440, 0x3F1A36E2E0000000
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  store float 1.000000e+00, ptr %424, align 4, !tbaa !129
  br label %443

443:                                              ; preds = %442, %438
  %444 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %445 = load float, ptr %444, align 4, !tbaa !130
  %446 = fptosi float %445 to i32
  %447 = icmp sgt i32 %446, 7
  %448 = icmp eq i32 %446, -1
  %449 = select i1 %448, i32 2, i32 %446
  %450 = select i1 %447, i32 7, i32 %449
  %451 = trunc i16 %426 to i8
  %452 = and i8 %451, 1
  %453 = load ptr, ptr %388, align 8, !tbaa !121
  %454 = getelementptr inbounds %struct.uiBlock, ptr %453, i64 0, i32 49
  %455 = load ptr, ptr %454, align 8, !tbaa !123
  %456 = load i8, ptr %392, align 8, !tbaa !124
  %457 = zext i8 %456 to i32
  %458 = icmp eq i8 %456, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %443
  %460 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %461 = load ptr, ptr %460, align 8, !tbaa !92
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %465

463:                                              ; preds = %459, %443
  %464 = shl nuw nsw i32 %457, 16
  br label %468

465:                                              ; preds = %459
  %466 = call i32 @RNA_property_subtype(ptr noundef nonnull %461) #20
  %467 = and i32 %466, 16711680
  br label %468

468:                                              ; preds = %465, %463
  %469 = phi i32 [ %464, %463 ], [ %467, %465 ]
  %470 = icmp eq i32 %469, 393216
  br i1 %470, label %471, label %484

471:                                              ; preds = %468
  %472 = load ptr, ptr %388, align 8, !tbaa !121
  %473 = getelementptr inbounds %struct.uiBlock, ptr %472, i64 0, i32 48
  %474 = load ptr, ptr %473, align 8, !tbaa !122
  %475 = call ptr @CTX_data_scene(ptr noundef %474) #20
  %476 = getelementptr inbounds %struct.Scene, ptr %475, i64 0, i32 22, i32 65
  %477 = load float, ptr %476, align 4, !tbaa !131
  %478 = fpext float %477 to double
  %479 = fmul double %375, %478
  %480 = getelementptr inbounds %struct.Scene, ptr %475, i64 0, i32 22, i32 55
  %481 = load i16, ptr %480, align 4, !tbaa !149
  %482 = sitofp i16 %481 to double
  %483 = fdiv double %479, %482
  br label %487

484:                                              ; preds = %468
  %485 = lshr exact i32 %469, 16
  %486 = call double @BKE_scene_unit_scale(ptr noundef %455, i32 noundef %485, double noundef %375) #20
  br label %487

487:                                              ; preds = %471, %484
  %488 = phi double [ %483, %471 ], [ %486, %484 ]
  %489 = getelementptr inbounds %struct.UnitSettings, ptr %424, i64 0, i32 1
  %490 = load i8, ptr %489, align 4, !tbaa !127
  %491 = zext i8 %490 to i32
  %492 = call i64 @bUnit_AsString(ptr noundef nonnull %13, i32 noundef 400, double noundef %488, i32 noundef %450, i32 noundef %491, i32 noundef %439, i8 noundef zeroext %452, i8 noundef zeroext 1) #20
  %493 = getelementptr inbounds i8, ptr %350, i64 %353
  %494 = sub i64 400, %353
  %495 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %493, ptr noundef nonnull %13, i64 noundef %494) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %13) #20
  br label %537

496:                                              ; preds = %405, %408, %416
  %497 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %498 = load float, ptr %497, align 4, !tbaa !130
  %499 = fptosi float %498 to i32
  %500 = load ptr, ptr %388, align 8, !tbaa !121
  %501 = getelementptr inbounds %struct.uiBlock, ptr %500, i64 0, i32 49
  %502 = load ptr, ptr %501, align 8, !tbaa !123
  %503 = load i8, ptr %392, align 8, !tbaa !124
  %504 = zext i8 %503 to i32
  %505 = icmp eq i8 %503, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %496
  %507 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %508 = load ptr, ptr %507, align 8, !tbaa !92
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %512

510:                                              ; preds = %506, %496
  %511 = shl nuw nsw i32 %504, 16
  br label %515

512:                                              ; preds = %506
  %513 = call i32 @RNA_property_subtype(ptr noundef nonnull %508) #20
  %514 = and i32 %513, 16711680
  br label %515

515:                                              ; preds = %512, %510
  %516 = phi i32 [ %511, %510 ], [ %514, %512 ]
  %517 = getelementptr inbounds %struct.UnitSettings, ptr %502, i64 0, i32 2
  %518 = load i8, ptr %517, align 1, !tbaa !125
  %519 = icmp eq i8 %518, 2
  %520 = icmp eq i32 %516, 327680
  %521 = and i1 %520, %519
  %522 = icmp slt i32 %499, 5
  %523 = select i1 %521, i1 %522, i1 false
  br i1 %523, label %531, label %524

524:                                              ; preds = %515
  %525 = icmp eq i32 %499, -1
  br i1 %525, label %526, label %531

526:                                              ; preds = %524
  %527 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %528 = load float, ptr %527, align 4, !tbaa !117
  %529 = fcmp olt float %528, 0x4024008320000000
  %530 = select i1 %529, i32 3, i32 2
  br label %531

531:                                              ; preds = %515, %524, %526
  %532 = phi i32 [ %530, %526 ], [ %499, %524 ], [ 5, %515 ]
  %533 = call i32 @uiFloatPrecisionCalc(i32 noundef %532, double noundef %375) #20
  %534 = getelementptr inbounds i8, ptr %350, i64 %353
  %535 = sub i64 400, %353
  %536 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %534, i64 noundef %535, ptr noundef nonnull @.str.4, i32 noundef %533, double noundef %375) #20
  br label %537

537:                                              ; preds = %377, %487, %531, %383, %368
  %538 = phi i64 [ %380, %377 ], [ %386, %383 ], [ %495, %487 ], [ %536, %531 ], [ %373, %368 ]
  %539 = add i64 %538, %353
  %540 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %541 = load ptr, ptr %540, align 8, !tbaa !92
  %542 = icmp eq ptr %541, null
  br i1 %542, label %549, label %543

543:                                              ; preds = %537
  %544 = call i32 @RNA_property_subtype(ptr noundef nonnull %541) #20
  %545 = icmp eq i32 %544, 12
  %546 = select i1 %545, ptr @.str.13, ptr null
  %547 = icmp eq i32 %544, 14
  %548 = select i1 %547, ptr @.str.12, ptr %546
  br label %549

549:                                              ; preds = %543, %537
  %550 = phi ptr [ null, %537 ], [ %548, %543 ]
  %551 = icmp eq ptr %550, null
  br i1 %551, label %706, label %552

552:                                              ; preds = %549
  %553 = getelementptr inbounds i8, ptr %350, i64 %539
  %554 = sub i64 400, %539
  %555 = call ptr @BLI_strncpy(ptr noundef nonnull %553, ptr noundef nonnull %550, i64 noundef %554) #20
  br label %706

556:                                              ; preds = %296
  %557 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %558 = load i32, ptr %557, align 4, !tbaa !99
  %559 = icmp eq i32 %558, 128
  br i1 %559, label %560, label %564

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %562 = load ptr, ptr %561, align 8, !tbaa !98
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %576

564:                                              ; preds = %560, %556
  %565 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %566 = load ptr, ptr %565, align 8, !tbaa !92
  %567 = icmp eq ptr %566, null
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = call i32 @RNA_property_type(ptr noundef nonnull %566) #20
  %570 = icmp eq i32 %569, 2
  br i1 %570, label %576, label %571

571:                                              ; preds = %568, %564
  %572 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %573 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %574 = load ptr, ptr %573, align 8, !tbaa !79
  %575 = call ptr @BLI_strncpy(ptr noundef nonnull %572, ptr noundef %574, i64 noundef 400) #20
  br label %706

576:                                              ; preds = %568, %560
  %577 = load double, ptr %11, align 8, !tbaa !111
  %578 = fcmp oeq double %577, 0x7FEFFFFFFFFFFFFF
  br i1 %578, label %579, label %581

579:                                              ; preds = %576
  %580 = call double @ui_get_but_val(ptr noundef %0)
  store double %580, ptr %11, align 8, !tbaa !111
  br label %581

581:                                              ; preds = %579, %576
  %582 = load double, ptr %11, align 8, !tbaa !111
  %583 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %584 = load float, ptr %583, align 4, !tbaa !130
  %585 = fptosi float %584 to i32
  %586 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %587 = load ptr, ptr %586, align 8, !tbaa !121
  %588 = getelementptr inbounds %struct.uiBlock, ptr %587, i64 0, i32 49
  %589 = load ptr, ptr %588, align 8, !tbaa !123
  %590 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %591 = load i8, ptr %590, align 8, !tbaa !124
  %592 = zext i8 %591 to i32
  %593 = icmp eq i8 %591, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %581
  %595 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %596 = load ptr, ptr %595, align 8, !tbaa !92
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %600

598:                                              ; preds = %594, %581
  %599 = shl nuw nsw i32 %592, 16
  br label %603

600:                                              ; preds = %594
  %601 = call i32 @RNA_property_subtype(ptr noundef nonnull %596) #20
  %602 = and i32 %601, 16711680
  br label %603

603:                                              ; preds = %600, %598
  %604 = phi i32 [ %599, %598 ], [ %602, %600 ]
  %605 = getelementptr inbounds %struct.UnitSettings, ptr %589, i64 0, i32 2
  %606 = load i8, ptr %605, align 1, !tbaa !125
  %607 = icmp eq i8 %606, 2
  %608 = icmp eq i32 %604, 327680
  %609 = and i1 %608, %607
  %610 = icmp slt i32 %585, 5
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %619, label %612

612:                                              ; preds = %603
  %613 = icmp eq i32 %585, -1
  br i1 %613, label %614, label %619

614:                                              ; preds = %612
  %615 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %616 = load float, ptr %615, align 4, !tbaa !117
  %617 = fcmp olt float %616, 0x4024008320000000
  %618 = select i1 %617, i32 3, i32 2
  br label %619

619:                                              ; preds = %603, %612, %614
  %620 = phi i32 [ %618, %614 ], [ %585, %612 ], [ 5, %603 ]
  %621 = call i32 @uiFloatPrecisionCalc(i32 noundef %620, double noundef %582) #20
  %622 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %623 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %624 = load ptr, ptr %623, align 8, !tbaa !79
  %625 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %622, i64 noundef 400, ptr noundef nonnull @.str.14, ptr noundef %624, i32 noundef %621, double noundef %582) #20
  br label %706

626:                                              ; preds = %296, %296, %296
  %627 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %628 = load ptr, ptr %627, align 8, !tbaa !114
  %629 = icmp eq ptr %628, null
  br i1 %629, label %630, label %706

630:                                              ; preds = %626
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %14) #20
  call void @ui_get_but_string_ex(ptr noundef %0, ptr noundef nonnull %14, i64 noundef 400, i32 noundef -1)
  %631 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %632 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %633 = load ptr, ptr %632, align 8, !tbaa !79
  %634 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %631, i64 noundef 400, ptr noundef nonnull @.str.15, ptr noundef %633, ptr noundef nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %14) #20
  br label %706

635:                                              ; preds = %296
  %636 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %637 = load i32, ptr %636, align 8, !tbaa !109
  %638 = and i32 %637, 1
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %649

640:                                              ; preds = %635
  %641 = load double, ptr %11, align 8, !tbaa !111
  %642 = fcmp oeq double %641, 0x7FEFFFFFFFFFFFFF
  br i1 %642, label %643, label %645

643:                                              ; preds = %640
  %644 = call double @ui_get_but_val(ptr noundef %0)
  store double %644, ptr %11, align 8, !tbaa !111
  br label %645

645:                                              ; preds = %643, %640
  %646 = load double, ptr %11, align 8, !tbaa !111
  %647 = fptosi double %646 to i16
  %648 = call ptr @WM_key_event_string(i16 noundef signext %647) #20
  br label %649

649:                                              ; preds = %635, %645
  %650 = phi ptr [ %648, %645 ], [ @.str.16, %635 ]
  %651 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %652 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %653 = load ptr, ptr %652, align 8, !tbaa !79
  %654 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %651, i64 noundef 400, ptr noundef nonnull @.str.15, ptr noundef %653, ptr noundef %650) #20
  br label %706

655:                                              ; preds = %296
  %656 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %657 = load i32, ptr %656, align 8, !tbaa !109
  %658 = and i32 %657, 1
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %696, label %660

660:                                              ; preds = %655
  %661 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 50
  %662 = load i16, ptr %661, align 2, !tbaa !150
  %663 = icmp eq i16 %662, 0
  %664 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  br i1 %663, label %694, label %665

665:                                              ; preds = %660
  store i8 0, ptr %664, align 8, !tbaa !110
  %666 = and i16 %662, 1
  %667 = icmp eq i16 %666, 0
  br i1 %667, label %671, label %668

668:                                              ; preds = %665
  %669 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %664, ptr noundef nonnull @.str.17) #20
  %670 = getelementptr inbounds i8, ptr %664, i64 %669
  br label %671

671:                                              ; preds = %668, %665
  %672 = phi ptr [ %670, %668 ], [ %664, %665 ]
  %673 = load i16, ptr %661, align 2, !tbaa !150
  %674 = and i16 %673, 2
  %675 = icmp eq i16 %674, 0
  br i1 %675, label %679, label %676

676:                                              ; preds = %671
  %677 = call i64 @BLI_strcpy_rlen(ptr noundef %672, ptr noundef nonnull @.str.18) #20
  %678 = getelementptr inbounds i8, ptr %672, i64 %677
  br label %679

679:                                              ; preds = %676, %671
  %680 = phi ptr [ %678, %676 ], [ %672, %671 ]
  %681 = load i16, ptr %661, align 2, !tbaa !150
  %682 = and i16 %681, 4
  %683 = icmp eq i16 %682, 0
  br i1 %683, label %687, label %684

684:                                              ; preds = %679
  %685 = call i64 @BLI_strcpy_rlen(ptr noundef %680, ptr noundef nonnull @.str.19) #20
  %686 = getelementptr inbounds i8, ptr %680, i64 %685
  br label %687

687:                                              ; preds = %684, %679
  %688 = phi ptr [ %686, %684 ], [ %680, %679 ]
  %689 = load i16, ptr %661, align 2, !tbaa !150
  %690 = and i16 %689, 8
  %691 = icmp eq i16 %690, 0
  br i1 %691, label %706, label %692

692:                                              ; preds = %687
  %693 = call i64 @BLI_strcpy_rlen(ptr noundef %688, ptr noundef nonnull @.str.20) #20
  br label %706

694:                                              ; preds = %660
  %695 = call ptr @BLI_strncpy(ptr noundef nonnull %664, ptr noundef nonnull @.str.16, i64 noundef 400) #20
  br label %706

696:                                              ; preds = %655
  %697 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %698 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %699 = load ptr, ptr %698, align 8, !tbaa !79
  %700 = call ptr @BLI_strncpy(ptr noundef nonnull %697, ptr noundef %699, i64 noundef 400) #20
  br label %706

701:                                              ; preds = %296
  %702 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %703 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %704 = load ptr, ptr %703, align 8, !tbaa !79
  %705 = call ptr @BLI_strncpy(ptr noundef nonnull %702, ptr noundef %704, i64 noundef 400) #20
  br label %706

706:                                              ; preds = %687, %692, %549, %552, %296, %296, %696, %694, %626, %630, %619, %571, %340, %298, %335, %701, %649
  %707 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %708 = load ptr, ptr %707, align 8, !tbaa !114
  %709 = icmp eq ptr %708, null
  br i1 %709, label %712, label %710

710:                                              ; preds = %706
  %711 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  store i8 0, ptr %711, align 8, !tbaa !110
  br label %712

712:                                              ; preds = %710, %706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  br i1 %5, label %353, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @UI_butstore_update(ptr noundef %1) #20
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %332, label %17

17:                                               ; preds = %13, %329
  %18 = phi ptr [ %330, %329 ], [ %15, %13 ]
  %19 = phi ptr [ %325, %329 ], [ %8, %13 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !103
  %21 = icmp eq ptr %19, null
  br i1 %21, label %100, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 8
  %24 = load i16, ptr %23, align 4, !tbaa !90
  %25 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !90
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 54, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 55
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 55
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 56
  %42 = load i32, ptr %41, align 8, !tbaa !93
  %43 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 56
  %44 = load i32, ptr %43, align 8, !tbaa !93
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 27
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 30
  %54 = load ptr, ptr %53, align 8, !tbaa !95
  %55 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 30
  %56 = load ptr, ptr %55, align 8, !tbaa !95
  %57 = icmp eq ptr %54, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 28
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = icmp eq ptr %60, %19
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 28
  %64 = load ptr, ptr %63, align 8, !tbaa !96
  %65 = icmp eq ptr %64, %60
  br i1 %65, label %66, label %97

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 29
  %68 = load ptr, ptr %67, align 8, !tbaa !97
  %69 = icmp eq ptr %68, %19
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 29
  %72 = load ptr, ptr %71, align 8, !tbaa !97
  %73 = icmp eq ptr %72, %68
  br i1 %73, label %74, label %97

74:                                               ; preds = %70, %66
  %75 = icmp eq ptr %54, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = icmp eq ptr %78, %80
  %82 = icmp eq ptr %80, %19
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 5
  %86 = load i32, ptr %85, align 4, !tbaa !99
  %87 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !99
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84, %74
  %91 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 59
  %92 = load ptr, ptr %91, align 8, !tbaa !100
  %93 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 59
  %94 = load ptr, ptr %93, align 8, !tbaa !100
  %95 = icmp eq ptr %92, %94
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %22, %28, %34, %40, %46, %52, %62, %70, %76, %84, %90
  %98 = phi i8 [ 0, %22 ], [ 0, %28 ], [ 0, %40 ], [ 0, %34 ], [ 0, %46 ], [ 0, %52 ], [ 0, %62 ], [ 0, %70 ], [ 0, %76 ], [ 0, %84 ], [ %96, %90 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %184

100:                                              ; preds = %97, %17
  %101 = getelementptr inbounds %struct.uiBlock, ptr %20, i64 0, i32 2
  %102 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 8
  %103 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 54, i32 2
  %104 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 55
  %105 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 56
  %106 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 27
  %107 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 30
  %108 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 28
  %109 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 29
  %110 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 19
  %111 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 5
  %112 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 59
  br label %113

113:                                              ; preds = %181, %100
  %114 = phi ptr [ %101, %100 ], [ %115, %181 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  %116 = icmp eq ptr %115, null
  br i1 %116, label %184, label %117

117:                                              ; preds = %113
  %118 = load i16, ptr %102, align 4, !tbaa !90
  %119 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 8
  %120 = load i16, ptr %119, align 4, !tbaa !90
  %121 = icmp eq i16 %118, %120
  br i1 %121, label %122, label %181

122:                                              ; preds = %117
  %123 = load ptr, ptr %103, align 8, !tbaa !91
  %124 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 54, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !91
  %126 = icmp eq ptr %123, %125
  br i1 %126, label %127, label %181

127:                                              ; preds = %122
  %128 = load ptr, ptr %104, align 8, !tbaa !92
  %129 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 55
  %130 = load ptr, ptr %129, align 8, !tbaa !92
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %132, label %181

132:                                              ; preds = %127
  %133 = load i32, ptr %105, align 8, !tbaa !93
  %134 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 56
  %135 = load i32, ptr %134, align 8, !tbaa !93
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %132
  %138 = load ptr, ptr %106, align 8, !tbaa !94
  %139 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 27
  %140 = load ptr, ptr %139, align 8, !tbaa !94
  %141 = icmp eq ptr %138, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %137
  %143 = load ptr, ptr %107, align 8, !tbaa !95
  %144 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 30
  %145 = load ptr, ptr %144, align 8, !tbaa !95
  %146 = icmp eq ptr %143, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 28
  %149 = load ptr, ptr %148, align 8, !tbaa !96
  %150 = icmp eq ptr %149, %115
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %108, align 8, !tbaa !96
  %153 = icmp eq ptr %152, %149
  br i1 %153, label %154, label %181

154:                                              ; preds = %151, %147
  %155 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 29
  %156 = load ptr, ptr %155, align 8, !tbaa !97
  %157 = icmp eq ptr %156, %115
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %109, align 8, !tbaa !97
  %160 = icmp eq ptr %159, %156
  br i1 %160, label %161, label %181

161:                                              ; preds = %158, %154
  %162 = icmp eq ptr %143, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %161
  %164 = load ptr, ptr %110, align 8, !tbaa !98
  %165 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 19
  %166 = load ptr, ptr %165, align 8, !tbaa !98
  %167 = icmp eq ptr %164, %166
  %168 = icmp eq ptr %166, %115
  %169 = or i1 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i32, ptr %111, align 4, !tbaa !99
  %172 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 5
  %173 = load i32, ptr %172, align 4, !tbaa !99
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %170, %161
  %176 = load ptr, ptr %112, align 8, !tbaa !100
  %177 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 59
  %178 = load ptr, ptr %177, align 8, !tbaa !100
  %179 = icmp eq ptr %176, %178
  %180 = zext i1 %179 to i8
  br label %181

181:                                              ; preds = %117, %122, %127, %132, %137, %142, %151, %158, %163, %170, %175
  %182 = phi i8 [ 0, %117 ], [ 0, %122 ], [ 0, %132 ], [ 0, %127 ], [ 0, %137 ], [ 0, %142 ], [ 0, %151 ], [ 0, %158 ], [ 0, %163 ], [ 0, %170 ], [ %180, %175 ]
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %113, label %184, !llvm.loop !101

184:                                              ; preds = %181, %113, %97
  %185 = phi ptr [ %19, %97 ], [ %115, %113 ], [ %115, %181 ]
  %186 = icmp eq ptr %185, null
  br i1 %186, label %324, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr %185, align 8, !tbaa !151
  %189 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 67
  %190 = load ptr, ptr %189, align 8, !tbaa !104
  %191 = icmp eq ptr %190, null
  br i1 %191, label %315, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.uiBlock, ptr %20, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %193, ptr noundef %185) #20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %14, ptr noundef nonnull %18, ptr noundef %185) #20
  %194 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 74
  store ptr %1, ptr %194, align 8, !tbaa !121
  %195 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 18
  %196 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %195, ptr noundef nonnull align 8 dereferenceable(16) %196, i64 16, i1 false), !tbaa.struct !57
  %197 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 32
  %198 = load ptr, ptr %197, align 8, !tbaa !152
  %199 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 32
  store ptr %198, ptr %199, align 8, !tbaa !152
  %200 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 44
  %201 = load i32, ptr %200, align 8, !tbaa !153
  %202 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 44
  store i32 %201, ptr %202, align 8, !tbaa !153
  %203 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 51
  %204 = load i16, ptr %203, align 4, !tbaa !120
  %205 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 51
  store i16 %204, ptr %205, align 4, !tbaa !120
  %206 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 10
  %207 = load i16, ptr %206, align 8, !tbaa !154
  %208 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 10
  store i16 %207, ptr %208, align 8, !tbaa !154
  %209 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 19
  %210 = load ptr, ptr %209, align 8, !tbaa !98
  %211 = icmp eq ptr %210, %185
  br i1 %211, label %219, label %212

212:                                              ; preds = %192
  %213 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 19
  %214 = load ptr, ptr %213, align 8, !tbaa !98
  store ptr %214, ptr %209, align 8, !tbaa !98
  store ptr %210, ptr %213, align 8, !tbaa !98
  %215 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 31
  %216 = load ptr, ptr %215, align 8, !tbaa !106
  %217 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 31
  %218 = load ptr, ptr %217, align 8, !tbaa !106
  store ptr %218, ptr %215, align 8, !tbaa !106
  store ptr %216, ptr %217, align 8, !tbaa !106
  br label %219

219:                                              ; preds = %212, %192
  %220 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !109
  %222 = and i32 %221, -65537
  %223 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !109
  %225 = and i32 %224, 65536
  %226 = or disjoint i32 %225, %222
  store i32 %226, ptr %220, align 8, !tbaa !109
  %227 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 4
  %228 = load i32, ptr %227, align 8, !tbaa !108
  switch i32 %228, label %233 [
    i32 1024, label %229
    i32 18432, label %229
  ]

229:                                              ; preds = %219, %219
  %230 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 21
  %231 = load float, ptr %230, align 4, !tbaa !117
  %232 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 21
  store float %231, ptr %232, align 4, !tbaa !117
  br label %233

233:                                              ; preds = %229, %219
  %234 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !108
  %236 = icmp eq i32 %235, 11264
  br i1 %236, label %237, label %262

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 40
  %239 = load ptr, ptr %238, align 8, !tbaa !107
  %240 = icmp eq ptr %239, null
  br i1 %240, label %262, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 40
  %243 = load ptr, ptr %242, align 8, !tbaa !107
  store ptr %239, ptr %242, align 8, !tbaa !107
  store ptr %243, ptr %238, align 8, !tbaa !107
  %244 = load ptr, ptr %242, align 8, !tbaa !107
  %245 = getelementptr inbounds %struct.uiLink, ptr %244, i64 0, i32 7
  %246 = load ptr, ptr %245, align 8, !tbaa !62
  %247 = icmp eq ptr %246, null
  br i1 %247, label %262, label %248

248:                                              ; preds = %241, %259
  %249 = phi ptr [ %260, %259 ], [ %246, %241 ]
  %250 = getelementptr inbounds %struct.uiLinkLine, ptr %249, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !155
  %252 = icmp eq ptr %251, %18
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store ptr %185, ptr %250, align 8, !tbaa !155
  br label %254

254:                                              ; preds = %253, %248
  %255 = getelementptr inbounds %struct.uiLinkLine, ptr %249, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !157
  %257 = icmp eq ptr %256, %18
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store ptr %185, ptr %255, align 8, !tbaa !157
  br label %259

259:                                              ; preds = %258, %254
  %260 = load ptr, ptr %249, align 8, !tbaa !62
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %248, !llvm.loop !158

262:                                              ; preds = %259, %241, %237, %233
  %263 = load ptr, ptr %14, align 8, !tbaa !62
  %264 = icmp eq ptr %263, null
  br i1 %264, label %297, label %265

265:                                              ; preds = %262, %294
  %266 = phi ptr [ %295, %294 ], [ %263, %262 ]
  %267 = icmp eq ptr %266, %18
  br i1 %267, label %294, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.uiBut, ptr %266, i64 0, i32 4
  %270 = load i32, ptr %269, align 8, !tbaa !108
  %271 = icmp eq i32 %270, 11264
  br i1 %271, label %272, label %294

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.uiBut, ptr %266, i64 0, i32 40
  %274 = load ptr, ptr %273, align 8, !tbaa !107
  %275 = icmp eq ptr %274, null
  br i1 %275, label %294, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.uiLink, ptr %274, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !62
  %279 = icmp eq ptr %278, null
  br i1 %279, label %294, label %280

280:                                              ; preds = %276, %291
  %281 = phi ptr [ %292, %291 ], [ %278, %276 ]
  %282 = getelementptr inbounds %struct.uiLinkLine, ptr %281, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !155
  %284 = icmp eq ptr %283, %18
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store ptr %185, ptr %282, align 8, !tbaa !155
  br label %286

286:                                              ; preds = %285, %280
  %287 = getelementptr inbounds %struct.uiLinkLine, ptr %281, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !157
  %289 = icmp eq ptr %288, %18
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store ptr %185, ptr %287, align 8, !tbaa !157
  br label %291

291:                                              ; preds = %290, %286
  %292 = load ptr, ptr %281, align 8, !tbaa !62
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %280, !llvm.loop !159

294:                                              ; preds = %291, %276, %272, %268, %265
  %295 = load ptr, ptr %266, align 8, !tbaa !62
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %265, !llvm.loop !160

297:                                              ; preds = %294, %262
  %298 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 15
  %299 = load ptr, ptr %298, align 8, !tbaa !79
  %300 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 16
  %301 = icmp eq ptr %299, %300
  %302 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 15
  %303 = load ptr, ptr %302, align 8, !tbaa !79
  %304 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 16
  %305 = icmp eq ptr %303, %304
  br i1 %301, label %309, label %306

306:                                              ; preds = %297
  br i1 %305, label %308, label %307

307:                                              ; preds = %306
  store ptr %303, ptr %298, align 8, !tbaa !79
  store ptr %299, ptr %302, align 8, !tbaa !79
  br label %314

308:                                              ; preds = %306
  store ptr %299, ptr %302, align 8, !tbaa !79
  store ptr %300, ptr %298, align 8, !tbaa !79
  br label %314

309:                                              ; preds = %297
  br i1 %305, label %312, label %310

310:                                              ; preds = %309
  %311 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %311(ptr noundef %303) #20
  store ptr %304, ptr %302, align 8, !tbaa !79
  br label %312

312:                                              ; preds = %310, %309
  %313 = tail call ptr @BLI_strncpy(ptr noundef nonnull %304, ptr noundef nonnull %300, i64 noundef 128) #20
  br label %314

314:                                              ; preds = %312, %308, %307
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %18) #20
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef nonnull %18)
  br label %324

315:                                              ; preds = %187
  %316 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 2
  %317 = load i32, ptr %316, align 8, !tbaa !109
  %318 = and i32 %317, -33554433
  %319 = getelementptr inbounds %struct.uiBut, ptr %185, i64 0, i32 2
  %320 = load i32, ptr %319, align 8, !tbaa !109
  %321 = and i32 %320, 33554432
  %322 = or disjoint i32 %321, %318
  store i32 %322, ptr %316, align 8, !tbaa !109
  %323 = getelementptr inbounds %struct.uiBlock, ptr %20, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %323, ptr noundef %185) #20
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef %185)
  br label %324

324:                                              ; preds = %184, %314, %315
  %325 = phi ptr [ %188, %315 ], [ %188, %314 ], [ null, %184 ]
  %326 = phi ptr [ %18, %315 ], [ %185, %314 ], [ %18, %184 ]
  %327 = phi i1 [ true, %315 ], [ false, %314 ], [ true, %184 ]
  br i1 %327, label %329, label %328

328:                                              ; preds = %324
  tail call void @ui_check_but(ptr noundef %326)
  br label %329

329:                                              ; preds = %324, %328
  %330 = load ptr, ptr %326, align 8, !tbaa !62
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %17, !llvm.loop !161

332:                                              ; preds = %329, %13
  %333 = load ptr, ptr %3, align 8, !tbaa !103
  %334 = getelementptr inbounds %struct.uiBlock, ptr %333, i64 0, i32 31
  %335 = load i8, ptr %334, align 8, !tbaa !162
  %336 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 31
  store i8 %335, ptr %336, align 8, !tbaa !162
  %337 = getelementptr inbounds %struct.uiBlock, ptr %333, i64 0, i32 33
  %338 = load double, ptr %337, align 8, !tbaa !163
  %339 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 33
  store double %338, ptr %339, align 8, !tbaa !163
  %340 = getelementptr inbounds %struct.uiBlock, ptr %333, i64 0, i32 37
  %341 = load i8, ptr %340, align 2, !tbaa !164
  %342 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 37
  store i8 %341, ptr %342, align 2, !tbaa !164
  %343 = tail call ptr @ui_block_hsv_get(ptr noundef %1) #20
  %344 = load ptr, ptr %3, align 8, !tbaa !103
  %345 = tail call ptr @ui_block_hsv_get(ptr noundef %344) #20
  %346 = load float, ptr %345, align 4, !tbaa !51
  store float %346, ptr %343, align 4, !tbaa !51
  %347 = getelementptr inbounds float, ptr %345, i64 1
  %348 = load float, ptr %347, align 4, !tbaa !51
  %349 = getelementptr inbounds float, ptr %343, i64 1
  store float %348, ptr %349, align 4, !tbaa !51
  %350 = getelementptr inbounds float, ptr %345, i64 2
  %351 = load float, ptr %350, align 4, !tbaa !51
  %352 = getelementptr inbounds float, ptr %343, i64 2
  store float %351, ptr %352, align 4, !tbaa !51
  store ptr null, ptr %3, align 8, !tbaa !103
  br label %353

353:                                              ; preds = %2, %332
  ret void
}

declare void @UI_butstore_update(ptr noundef) local_unnamed_addr #7

declare ptr @ui_block_hsv_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @uiEndBlock_ex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = alloca [128 x i8], align 16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  tail call void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %1)
  %7 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  br label %13

13:                                               ; preds = %10, %41
  %14 = phi ptr [ %8, %10 ], [ %43, %41 ]
  %15 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 59
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 32
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef nonnull %20) #20
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 61
  %25 = load i16, ptr %24, align 8, !tbaa !165
  %26 = tail call i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef nonnull %16, i16 noundef signext %25) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = or i32 %30, 2048
  store i32 %31, ptr %29, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 45
  store i8 1, ptr %32, align 4, !tbaa !166
  br label %33

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %19, align 8, !tbaa !152
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef null) #20
  br label %37

37:                                               ; preds = %33, %36, %13
  br i1 %11, label %41, label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %12, align 8, !tbaa !167
  %40 = sitofp i32 %39 to float
  br label %41

41:                                               ; preds = %37, %38
  %42 = phi float [ %40, %38 ], [ 0.000000e+00, %37 ]
  tail call void @ui_but_anim_flag(ptr noundef nonnull %14, float noundef %42) #20
  %43 = load ptr, ptr %14, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !llvm.loop !168

45:                                               ; preds = %41, %3
  %46 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !169
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @uiBlockLayoutResolve(ptr noundef %1, ptr noundef null, ptr noundef null) #20
  br label %50

50:                                               ; preds = %49, %45
  tail call void @ui_block_do_align(ptr noundef %1)
  %51 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %52 = load i32, ptr %51, align 8, !tbaa !34
  %53 = and i32 %52, 9
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %163

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %57 = load float, ptr %56, align 8, !tbaa !67
  %58 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %59 = load float, ptr %58, align 4, !tbaa !69
  %60 = fcmp une float %57, %59
  br i1 %60, label %163, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %7, align 8, !tbaa !62
  %63 = icmp eq ptr %62, null
  br label %64

64:                                               ; preds = %155, %61
  %65 = phi i32 [ 0, %61 ], [ %158, %155 ]
  %66 = phi i32 [ 0, %61 ], [ %157, %155 ]
  %67 = phi i32 [ 0, %61 ], [ %160, %155 ]
  %68 = phi i8 [ undef, %61 ], [ %156, %155 ]
  br i1 %63, label %155, label %69

69:                                               ; preds = %64
  %70 = icmp eq i32 %67, 0
  br label %71

71:                                               ; preds = %69, %149
  %72 = phi ptr [ %62, %69 ], [ %153, %149 ]
  %73 = phi i32 [ %65, %69 ], [ %152, %149 ]
  %74 = phi i32 [ %66, %69 ], [ %151, %149 ]
  %75 = phi i8 [ %68, %69 ], [ %150, %149 ]
  %76 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !108
  switch i32 %77, label %149 [
    i32 512, label %78
    i32 10240, label %78
    i32 5632, label %78
    i32 9728, label %78
    i32 13824, label %78
  ]

78:                                               ; preds = %71, %71, %71, %71, %71
  %79 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !109
  %81 = and i32 %80, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %149

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 62
  %85 = load i8, ptr %84, align 2, !tbaa !170
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %149

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 15
  %89 = load ptr, ptr %88, align 8, !tbaa !79
  %90 = icmp eq ptr %89, null
  br i1 %90, label %149, label %91

91:                                               ; preds = %87
  %92 = load i8, ptr %89, align 1, !tbaa !110
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %139, label %94

94:                                               ; preds = %91
  %95 = tail call ptr @__ctype_tolower_loc() #22
  %96 = load ptr, ptr %95, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %94, %133
  %98 = phi i1 [ %93, %94 ], [ %136, %133 ]
  %99 = phi i8 [ %92, %94 ], [ %135, %133 ]
  %100 = phi ptr [ %89, %94 ], [ %134, %133 ]
  %101 = zext i8 %99 to i64
  %102 = getelementptr inbounds i32, ptr %96, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !56
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -97
  %106 = icmp ult i32 %105, 26
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = shl nuw nsw i32 1, %105
  %109 = and i32 %108, %73
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = trunc i32 %103 to i8
  %113 = or i32 %108, %73
  br label %139

114:                                              ; preds = %107, %97
  br i1 %70, label %115, label %131

115:                                              ; preds = %114
  %116 = tail call ptr @__ctype_b_loc() #22
  %117 = load ptr, ptr %116, align 8, !tbaa !62
  br label %118

118:                                              ; preds = %118, %115
  %119 = phi ptr [ %126, %118 ], [ %100, %115 ]
  %120 = load i8, ptr %119, align 1, !tbaa !110
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i16, ptr %117, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !171
  %124 = and i16 %123, 1024
  %125 = icmp eq i16 %124, 0
  %126 = getelementptr inbounds i8, ptr %119, i64 1
  br i1 %125, label %127, label %118, !llvm.loop !172

127:                                              ; preds = %118
  %128 = icmp ne i8 %120, 0
  %129 = zext i1 %128 to i64
  %130 = getelementptr inbounds i8, ptr %119, i64 %129
  br label %133

131:                                              ; preds = %114
  %132 = getelementptr inbounds i8, ptr %100, i64 1
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi ptr [ %132, %131 ], [ %130, %127 ]
  %135 = load i8, ptr %134, align 1, !tbaa !110
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %97, !llvm.loop !173

137:                                              ; preds = %133
  %138 = trunc i32 %103 to i8
  br label %139

139:                                              ; preds = %91, %137, %111
  %140 = phi i1 [ %98, %111 ], [ %136, %137 ], [ %93, %91 ]
  %141 = phi i8 [ %112, %111 ], [ %138, %137 ], [ %75, %91 ]
  %142 = phi i32 [ %113, %111 ], [ %73, %137 ], [ %73, %91 ]
  br i1 %140, label %144, label %143

143:                                              ; preds = %139
  store i8 %141, ptr %84, align 2, !tbaa !170
  br label %146

144:                                              ; preds = %139
  %145 = add nsw i32 %74, 1
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ %74, %143 ], [ %145, %144 ]
  %148 = icmp eq i32 %142, 67108863
  br i1 %148, label %163, label %149

149:                                              ; preds = %146, %87, %83, %78, %71
  %150 = phi i8 [ %75, %78 ], [ %141, %146 ], [ %75, %87 ], [ %75, %83 ], [ %75, %71 ]
  %151 = phi i32 [ %74, %78 ], [ %147, %146 ], [ %74, %87 ], [ %74, %83 ], [ %74, %71 ]
  %152 = phi i32 [ %73, %78 ], [ %142, %146 ], [ %73, %87 ], [ %73, %83 ], [ %73, %71 ]
  %153 = load ptr, ptr %72, align 8, !tbaa !62
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %71, !llvm.loop !174

155:                                              ; preds = %149, %64
  %156 = phi i8 [ %68, %64 ], [ %150, %149 ]
  %157 = phi i32 [ %66, %64 ], [ %151, %149 ]
  %158 = phi i32 [ %65, %64 ], [ %152, %149 ]
  %159 = icmp ne i32 %157, 0
  %160 = add nuw nsw i32 %67, 1
  %161 = icmp eq i32 %67, 0
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %64, label %163, !llvm.loop !175

163:                                              ; preds = %155, %146, %55, %50
  %164 = and i32 %52, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %243, label %166

166:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  %167 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %168 = load float, ptr %167, align 8, !tbaa !67
  %169 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %170 = load float, ptr %169, align 4, !tbaa !69
  %171 = fcmp une float %168, %170
  br i1 %171, label %242, label %172

172:                                              ; preds = %166
  %173 = and i32 %52, 1048576
  %174 = icmp eq i32 %173, 0
  %175 = load ptr, ptr %7, align 8, !tbaa !62
  %176 = icmp eq ptr %175, null
  br i1 %174, label %178, label %177

177:                                              ; preds = %172
  br i1 %176, label %242, label %179

178:                                              ; preds = %172
  br i1 %176, label %242, label %206

179:                                              ; preds = %177, %203
  %180 = phi ptr [ %204, %203 ], [ %175, %177 ]
  %181 = getelementptr inbounds %struct.uiBut, ptr %180, i64 0, i32 47
  %182 = load i8, ptr %181, align 2, !tbaa !176
  %183 = icmp eq i8 %182, -1
  br i1 %183, label %203, label %184

184:                                              ; preds = %179
  %185 = sext i8 %182 to i64
  %186 = getelementptr inbounds [8 x i8], ptr @ui_radial_dir_to_numpad, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !110
  %188 = zext i8 %187 to i32
  %189 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.5, i32 noundef %188) #20
  %190 = getelementptr inbounds %struct.uiBut, ptr %180, i64 0, i32 15
  %191 = load ptr, ptr %190, align 8, !tbaa !79
  %192 = getelementptr inbounds %struct.uiBut, ptr %180, i64 0, i32 16
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %184
  %195 = call ptr @BLI_strdup(ptr noundef %191) #20
  br label %196

196:                                              ; preds = %184, %194
  %197 = phi ptr [ %195, %194 ], [ %191, %184 ]
  %198 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %192, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %197, ptr noundef nonnull %4) #20
  %199 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %199(ptr noundef %197) #20
  store ptr %192, ptr %190, align 8, !tbaa !79
  %200 = getelementptr inbounds %struct.uiBut, ptr %180, i64 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !109
  %202 = or i32 %201, 134217728
  store i32 %202, ptr %200, align 8, !tbaa !109
  call void @ui_check_but(ptr noundef nonnull %180)
  br label %203

203:                                              ; preds = %196, %179
  %204 = load ptr, ptr %180, align 8, !tbaa !62
  %205 = icmp eq ptr %204, null
  br i1 %205, label %242, label %179, !llvm.loop !177

206:                                              ; preds = %178, %239
  %207 = phi ptr [ %240, %239 ], [ %175, %178 ]
  %208 = call fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef nonnull %207, ptr noundef nonnull %4)
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.uiBut, ptr %207, i64 0, i32 15
  %212 = load ptr, ptr %211, align 8, !tbaa !79
  %213 = getelementptr inbounds %struct.uiBut, ptr %207, i64 0, i32 16
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call ptr @BLI_strdup(ptr noundef %212) #20
  br label %217

217:                                              ; preds = %210, %215
  %218 = phi ptr [ %216, %215 ], [ %212, %210 ]
  %219 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %213, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %218, ptr noundef nonnull %4) #20
  %220 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %220(ptr noundef %218) #20
  store ptr %213, ptr %211, align 8, !tbaa !79
  br label %235

221:                                              ; preds = %206
  %222 = call fastcc zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef nonnull %207, ptr noundef nonnull %4)
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %239, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.uiBut, ptr %207, i64 0, i32 15
  %226 = load ptr, ptr %225, align 8, !tbaa !79
  %227 = getelementptr inbounds %struct.uiBut, ptr %207, i64 0, i32 16
  %228 = icmp eq ptr %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = call ptr @BLI_strdup(ptr noundef %226) #20
  br label %231

231:                                              ; preds = %224, %229
  %232 = phi ptr [ %230, %229 ], [ %226, %224 ]
  %233 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %227, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %232, ptr noundef nonnull %4) #20
  %234 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %234(ptr noundef %232) #20
  store ptr %227, ptr %225, align 8, !tbaa !79
  br label %235

235:                                              ; preds = %217, %231
  %236 = getelementptr inbounds %struct.uiBut, ptr %207, i64 0, i32 2
  %237 = load i32, ptr %236, align 8, !tbaa !109
  %238 = or i32 %237, 134217728
  store i32 %238, ptr %236, align 8, !tbaa !109
  call void @ui_check_but(ptr noundef nonnull %207)
  br label %239

239:                                              ; preds = %235, %221
  %240 = load ptr, ptr %207, align 8, !tbaa !62
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %206, !llvm.loop !178

242:                                              ; preds = %203, %239, %177, %178, %166
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  br label %243

243:                                              ; preds = %242, %163
  %244 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 39
  %245 = load i32, ptr %244, align 4, !tbaa !87
  switch i32 %245, label %407 [
    i32 4, label %313
    i32 1, label %246
    i32 2, label %247
    i32 5, label %248
    i32 6, label %292
    i32 3, label %313
  ]

246:                                              ; preds = %243
  call void @ui_bounds_block(ptr noundef %1)
  br label %407

247:                                              ; preds = %243
  call fastcc void @ui_text_bounds_block(ptr noundef %1, float noundef 0.000000e+00)
  br label %407

248:                                              ; preds = %243
  %249 = call i32 @WM_window_pixels_x(ptr noundef %5) #20
  %250 = call i32 @WM_window_pixels_y(ptr noundef %5) #20
  call void @ui_bounds_block(ptr noundef %1)
  %251 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %252 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %253 = load float, ptr %252, align 4, !tbaa !76
  %254 = load float, ptr %251, align 4, !tbaa !75
  %255 = fsub float %253, %254
  %256 = fptosi float %255 to i32
  %257 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %258 = load float, ptr %257, align 4, !tbaa !179
  %259 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %260 = load float, ptr %259, align 4, !tbaa !180
  %261 = fsub float %258, %260
  %262 = fptosi float %261 to i32
  %263 = sitofp i32 %249 to float
  %264 = sitofp i32 %256 to float
  %265 = fmul float %264, -5.000000e-01
  %266 = call float @llvm.fmuladd.f32(float %263, float 5.000000e-01, float %265)
  %267 = fptosi float %266 to i32
  %268 = sitofp i32 %250 to float
  %269 = sitofp i32 %262 to float
  %270 = fmul float %269, -5.000000e-01
  %271 = call float @llvm.fmuladd.f32(float %268, float 5.000000e-01, float %270)
  %272 = fptosi float %271 to i32
  %273 = sitofp i32 %267 to float
  %274 = fsub float %273, %254
  %275 = fptosi float %274 to i32
  %276 = sitofp i32 %272 to float
  %277 = fsub float %276, %260
  %278 = fptosi float %277 to i32
  %279 = load ptr, ptr %7, align 8, !tbaa !62
  %280 = icmp eq ptr %279, null
  br i1 %280, label %289, label %281

281:                                              ; preds = %248
  %282 = sitofp i32 %275 to float
  %283 = sitofp i32 %278 to float
  br label %284

284:                                              ; preds = %284, %281
  %285 = phi ptr [ %279, %281 ], [ %287, %284 ]
  %286 = getelementptr inbounds %struct.uiBut, ptr %285, i64 0, i32 18
  call void @BLI_rctf_translate(ptr noundef nonnull %286, float noundef %282, float noundef %283) #20
  %287 = load ptr, ptr %285, align 8, !tbaa !62
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %284, !llvm.loop !63

289:                                              ; preds = %284, %248
  %290 = sitofp i32 %275 to float
  %291 = sitofp i32 %278 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %251, float noundef %290, float noundef %291) #20
  call void @ui_bounds_block(ptr noundef %1)
  br label %407

292:                                              ; preds = %243
  %293 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 53, i32 2
  %294 = load float, ptr %293, align 8, !tbaa !51
  %295 = fptosi float %294 to i32
  %296 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 53, i32 2, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !51
  %298 = fptosi float %297 to i32
  %299 = load ptr, ptr %7, align 8, !tbaa !62
  %300 = icmp eq ptr %299, null
  br i1 %300, label %309, label %301

301:                                              ; preds = %292
  %302 = sitofp i32 %295 to float
  %303 = sitofp i32 %298 to float
  br label %304

304:                                              ; preds = %304, %301
  %305 = phi ptr [ %299, %301 ], [ %307, %304 ]
  %306 = getelementptr inbounds %struct.uiBut, ptr %305, i64 0, i32 18
  call void @BLI_rctf_translate(ptr noundef nonnull %306, float noundef %302, float noundef %303) #20
  %307 = load ptr, ptr %305, align 8, !tbaa !62
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %304, !llvm.loop !63

309:                                              ; preds = %304, %292
  %310 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %311 = sitofp i32 %295 to float
  %312 = sitofp i32 %298 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %310, float noundef %311, float noundef %312) #20
  call void @ui_bounds_block(ptr noundef %1)
  br label %407

313:                                              ; preds = %243, %243
  %314 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 42
  %315 = load i32, ptr %314, align 8, !tbaa !74
  call void @ui_bounds_block(ptr noundef %1)
  %316 = call i32 @WM_window_pixels_x(ptr noundef %5) #20
  %317 = call i32 @WM_window_pixels_y(ptr noundef %5) #20
  %318 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %319 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %320 = load float, ptr %319, align 4, !tbaa !76
  %321 = load float, ptr %318, align 4, !tbaa !75
  %322 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %323 = load float, ptr %322, align 4, !tbaa !179
  %324 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %325 = load float, ptr %324, align 4, !tbaa !180
  %326 = icmp eq i32 %245, 4
  br i1 %326, label %327, label %336

327:                                              ; preds = %313
  %328 = load i32, ptr %51, align 8, !tbaa !34
  %329 = and i32 %328, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %327
  %332 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !181
  %333 = sitofp i16 %332 to float
  %334 = fmul float %333, 2.500000e+00
  %335 = fptosi float %334 to i32
  store i32 %335, ptr %314, align 8, !tbaa !74
  call fastcc void @ui_text_bounds_block(ptr noundef %1, float noundef %321)
  br label %336

336:                                              ; preds = %313, %327, %331
  %337 = fsub float %323, %325
  %338 = fptosi float %337 to i32
  %339 = fsub float %320, %321
  %340 = fptosi float %339 to i32
  store i32 %315, ptr %314, align 8, !tbaa !74
  call void @ui_bounds_block(ptr noundef %1)
  %341 = load float, ptr %319, align 4, !tbaa !76
  %342 = load float, ptr %318, align 4, !tbaa !75
  %343 = fsub float %341, %342
  %344 = fptosi float %343 to i32
  %345 = load float, ptr %322, align 4, !tbaa !179
  %346 = load float, ptr %324, align 4, !tbaa !180
  %347 = fsub float %345, %346
  %348 = fptosi float %347 to i32
  %349 = icmp sgt i32 %340, 0
  %350 = call i32 @llvm.smax.i32(i32 %344, i32 1)
  %351 = select i1 %349, i32 %340, i32 %350
  %352 = icmp sgt i32 %338, 0
  %353 = call i32 @llvm.smax.i32(i32 %348, i32 1)
  %354 = select i1 %352, i32 %338, i32 %353
  %355 = load i32, ptr %2, align 4, !tbaa !56
  %356 = sitofp i32 %355 to float
  %357 = fadd float %342, %356
  %358 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 40
  %359 = load i32, ptr %358, align 8, !tbaa !88
  %360 = mul nsw i32 %359, %344
  %361 = sdiv i32 %360, %351
  %362 = sitofp i32 %361 to float
  %363 = fadd float %357, %362
  %364 = fptosi float %363 to i32
  %365 = getelementptr inbounds i32, ptr %2, i64 1
  %366 = load i32, ptr %365, align 4, !tbaa !56
  %367 = sitofp i32 %366 to float
  %368 = fadd float %346, %367
  %369 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 41
  %370 = load i32, ptr %369, align 4, !tbaa !89
  %371 = mul nsw i32 %370, %348
  %372 = sdiv i32 %371, %354
  %373 = sitofp i32 %372 to float
  %374 = fadd float %368, %373
  %375 = fptosi float %374 to i32
  %376 = call i32 @llvm.smax.i32(i32 %364, i32 10)
  %377 = call i32 @llvm.smax.i32(i32 %375, i32 10)
  %378 = add nsw i32 %376, %344
  %379 = add nsw i32 %377, %348
  %380 = icmp sgt i32 %378, %316
  %381 = add nsw i32 %316, -10
  %382 = sub i32 %381, %344
  %383 = select i1 %380, i32 %382, i32 %376
  %384 = add nsw i32 %317, -10
  %385 = icmp sgt i32 %379, %384
  %386 = sub nsw i32 %384, %348
  %387 = select i1 %385, i32 %386, i32 %377
  %388 = sitofp i32 %383 to float
  %389 = fsub float %388, %342
  %390 = fptosi float %389 to i32
  %391 = sitofp i32 %387 to float
  %392 = fsub float %391, %346
  %393 = fptosi float %392 to i32
  %394 = load ptr, ptr %7, align 8, !tbaa !62
  %395 = icmp eq ptr %394, null
  br i1 %395, label %404, label %396

396:                                              ; preds = %336
  %397 = sitofp i32 %390 to float
  %398 = sitofp i32 %393 to float
  br label %399

399:                                              ; preds = %399, %396
  %400 = phi ptr [ %394, %396 ], [ %402, %399 ]
  %401 = getelementptr inbounds %struct.uiBut, ptr %400, i64 0, i32 18
  call void @BLI_rctf_translate(ptr noundef nonnull %401, float noundef %397, float noundef %398) #20
  %402 = load ptr, ptr %400, align 8, !tbaa !62
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %399, !llvm.loop !63

404:                                              ; preds = %399, %336
  %405 = sitofp i32 %390 to float
  %406 = sitofp i32 %393 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %318, float noundef %405, float noundef %406) #20
  call void @ui_bounds_block(ptr noundef %1)
  br label %407

407:                                              ; preds = %243, %404, %309, %289, %247, %246
  %408 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %409 = load float, ptr %408, align 8, !tbaa !67
  %410 = fcmp oeq float %409, 0.000000e+00
  br i1 %410, label %411, label %419

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %413 = load float, ptr %412, align 4, !tbaa !69
  %414 = fcmp une float %413, 0.000000e+00
  %415 = icmp eq ptr %1, null
  %416 = or i1 %415, %414
  br i1 %416, label %419, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 42
  store i32 0, ptr %418, align 8, !tbaa !74
  store i32 1, ptr %244, align 4, !tbaa !87
  br label %419

419:                                              ; preds = %417, %411, %407
  %420 = load i32, ptr %51, align 8, !tbaa !34
  %421 = and i32 %420, 245760
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %419
  %424 = and i32 %420, -245761
  store i32 %424, ptr %51, align 8, !tbaa !34
  br label %425

425:                                              ; preds = %423, %419
  %426 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 38
  store i8 1, ptr %426, align 1, !tbaa !185
  ret void
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

declare void @CTX_store_set(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @WM_operator_poll_context(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

declare void @ui_but_anim_flag(ptr noundef, float noundef) local_unnamed_addr #7

declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_block_do_align(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %457, label %5

5:                                                ; preds = %1, %454
  %6 = phi ptr [ %455, %454 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 8, !tbaa !154
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %452, label %10

10:                                               ; preds = %5, %55
  %11 = phi i32 [ %57, %55 ], [ 0, %5 ]
  %12 = phi i32 [ %56, %55 ], [ 0, %5 ]
  %13 = phi ptr [ %18, %55 ], [ %6, %5 ]
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 10
  %15 = load i16, ptr %14, align 8, !tbaa !154
  %16 = icmp eq i16 %15, %8
  br i1 %16, label %17, label %59

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 8, !tbaa !151
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 10
  %22 = load i16, ptr %21, align 8, !tbaa !154
  %23 = icmp eq i16 %22, %8
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 18, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !186
  %27 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18
  %28 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !186
  %30 = fcmp oeq float %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 18
  %33 = load float, ptr %32, align 8, !tbaa !187
  %34 = load float, ptr %27, align 8, !tbaa !187
  %35 = fcmp une float %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %31, %24
  %37 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 18, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !188
  %39 = load float, ptr %27, align 8, !tbaa !187
  %40 = fsub float %38, %39
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !189
  %44 = fsub float %26, %43
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ole float %41, %45
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %36, %31
  %49 = phi i8 [ %47, %36 ], [ 1, %31 ]
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = add nsw i32 %12, 1
  br label %55

53:                                               ; preds = %48
  %54 = add nsw i32 %11, 1
  br label %55

55:                                               ; preds = %53, %51, %20, %17
  %56 = phi i32 [ %52, %51 ], [ %12, %53 ], [ %12, %20 ], [ %12, %17 ]
  %57 = phi i32 [ %11, %51 ], [ %54, %53 ], [ %11, %20 ], [ %11, %17 ]
  %58 = icmp eq ptr %18, null
  br i1 %58, label %59, label %10, !llvm.loop !190

59:                                               ; preds = %10, %55
  %60 = phi i32 [ %12, %10 ], [ %56, %55 ]
  %61 = phi i32 [ %11, %10 ], [ %57, %55 ]
  %62 = icmp sgt i32 %61, 0
  %63 = icmp eq i32 %60, 0
  %64 = icmp eq i32 %61, 0
  %65 = select i1 %64, i32 32768, i32 49152
  %66 = icmp eq i32 %61, 0
  %67 = select i1 %66, i32 65536, i32 196608
  %68 = icmp eq i32 %61, 0
  %69 = icmp eq i32 %60, 0
  br label %70

70:                                               ; preds = %59, %441
  %71 = phi i32 [ 0, %59 ], [ %322, %441 ]
  %72 = phi ptr [ %6, %59 ], [ %78, %441 ]
  %73 = phi ptr [ null, %59 ], [ %72, %441 ]
  %74 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 10
  %75 = load i16, ptr %74, align 8, !tbaa !154
  %76 = icmp eq i16 %75, %8
  br i1 %76, label %77, label %443

77:                                               ; preds = %70
  %78 = load ptr, ptr %72, align 8, !tbaa !151
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 10
  %82 = load i16, ptr %81, align 8, !tbaa !154
  %83 = icmp eq i16 %82, %8
  %84 = select i1 %83, ptr %78, ptr null
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi ptr [ %84, %80 ], [ null, %77 ]
  %87 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !191
  %89 = and i32 %88, -245761
  store i32 %89, ptr %87, align 4, !tbaa !191
  %90 = icmp eq i32 %71, 0
  %91 = icmp eq ptr %86, null
  br i1 %90, label %92, label %121

92:                                               ; preds = %85
  br i1 %91, label %321, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 2
  %95 = load float, ptr %94, align 8, !tbaa !186
  %96 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18
  %97 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 2
  %98 = load float, ptr %97, align 8, !tbaa !186
  %99 = fcmp oeq float %95, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %102 = load float, ptr %101, align 8, !tbaa !187
  %103 = load float, ptr %96, align 8, !tbaa !187
  %104 = fcmp une float %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %100, %93
  %106 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  %107 = load float, ptr %106, align 4, !tbaa !188
  %108 = load float, ptr %96, align 8, !tbaa !187
  %109 = fsub float %107, %108
  %110 = tail call float @llvm.fabs.f32(float %109)
  %111 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 3
  %112 = load float, ptr %111, align 4, !tbaa !189
  %113 = fsub float %95, %112
  %114 = tail call float @llvm.fabs.f32(float %113)
  %115 = fcmp ole float %110, %114
  %116 = zext i1 %115 to i8
  br label %117

117:                                              ; preds = %105, %100
  %118 = phi i8 [ %116, %105 ], [ 1, %100 ]
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i32 131072, i32 %67
  br label %321

121:                                              ; preds = %85
  br i1 %91, label %122, label %152

122:                                              ; preds = %121
  %123 = icmp eq ptr %73, null
  br i1 %123, label %321, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 2
  %126 = load float, ptr %125, align 8, !tbaa !186
  %127 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %128 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 2
  %129 = load float, ptr %128, align 8, !tbaa !186
  %130 = fcmp oeq float %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18
  %133 = load float, ptr %132, align 8, !tbaa !187
  %134 = load float, ptr %127, align 8, !tbaa !187
  %135 = fcmp une float %133, %134
  br i1 %135, label %148, label %136

136:                                              ; preds = %131, %124
  %137 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %138 = load float, ptr %137, align 4, !tbaa !188
  %139 = load float, ptr %127, align 8, !tbaa !187
  %140 = fsub float %138, %139
  %141 = tail call float @llvm.fabs.f32(float %140)
  %142 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %143 = load float, ptr %142, align 4, !tbaa !189
  %144 = fsub float %126, %143
  %145 = tail call float @llvm.fabs.f32(float %144)
  %146 = fcmp ole float %141, %145
  %147 = zext i1 %146 to i8
  br label %148

148:                                              ; preds = %136, %131
  %149 = phi i8 [ %147, %136 ], [ 1, %131 ]
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i32 16384, i32 %65
  br label %321

152:                                              ; preds = %121
  %153 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 2
  %154 = load float, ptr %153, align 8, !tbaa !186
  %155 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18
  %156 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 2
  %157 = load float, ptr %156, align 8, !tbaa !186
  %158 = fcmp oeq float %154, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %161 = load float, ptr %160, align 8, !tbaa !187
  %162 = load float, ptr %155, align 8, !tbaa !187
  %163 = fcmp une float %161, %162
  br i1 %163, label %176, label %164

164:                                              ; preds = %159, %152
  %165 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  %166 = load float, ptr %165, align 4, !tbaa !188
  %167 = load float, ptr %155, align 8, !tbaa !187
  %168 = fsub float %166, %167
  %169 = tail call float @llvm.fabs.f32(float %168)
  %170 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 3
  %171 = load float, ptr %170, align 4, !tbaa !189
  %172 = fsub float %154, %171
  %173 = tail call float @llvm.fabs.f32(float %172)
  %174 = fcmp ole float %169, %173
  %175 = zext i1 %174 to i8
  br label %176

176:                                              ; preds = %164, %159
  %177 = phi i8 [ %175, %164 ], [ 1, %159 ]
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %257, label %179

179:                                              ; preds = %176
  %180 = icmp eq ptr %73, null
  br i1 %180, label %255, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 2
  %183 = load float, ptr %182, align 8, !tbaa !186
  %184 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %185 = fcmp oeq float %183, %154
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18
  %188 = load float, ptr %187, align 8, !tbaa !187
  %189 = load float, ptr %184, align 8, !tbaa !187
  %190 = fcmp une float %188, %189
  br i1 %190, label %203, label %191

191:                                              ; preds = %186, %181
  %192 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !188
  %194 = load float, ptr %184, align 8, !tbaa !187
  %195 = fsub float %193, %194
  %196 = tail call float @llvm.fabs.f32(float %195)
  %197 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %198 = load float, ptr %197, align 4, !tbaa !189
  %199 = fsub float %183, %198
  %200 = tail call float @llvm.fabs.f32(float %199)
  %201 = fcmp ole float %196, %200
  %202 = zext i1 %201 to i8
  br label %203

203:                                              ; preds = %191, %186
  %204 = phi i8 [ %202, %191 ], [ 1, %186 ]
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %255

206:                                              ; preds = %203
  %207 = and i32 %71, -49153
  %208 = or disjoint i32 %207, 16384
  br i1 %62, label %209, label %321

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 10
  %211 = load i16, ptr %210, align 8, !tbaa !154
  %212 = icmp eq i16 %211, %8
  br i1 %212, label %213, label %254

213:                                              ; preds = %209, %249
  %214 = phi i1 [ %252, %249 ], [ %212, %209 ]
  %215 = phi ptr [ %216, %249 ], [ %72, %209 ]
  %216 = load ptr, ptr %215, align 8, !tbaa !151
  %217 = icmp eq ptr %216, null
  br i1 %217, label %254, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.uiBut, ptr %216, i64 0, i32 10
  %220 = load i16, ptr %219, align 8, !tbaa !154
  %221 = icmp eq i16 %220, %8
  br i1 %221, label %222, label %249

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.uiBut, ptr %215, i64 0, i32 18, i32 2
  %224 = load float, ptr %223, align 8, !tbaa !186
  %225 = getelementptr inbounds %struct.uiBut, ptr %216, i64 0, i32 18
  %226 = getelementptr inbounds %struct.uiBut, ptr %216, i64 0, i32 18, i32 2
  %227 = load float, ptr %226, align 8, !tbaa !186
  %228 = fcmp oeq float %224, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.uiBut, ptr %215, i64 0, i32 18
  %231 = load float, ptr %230, align 8, !tbaa !187
  %232 = load float, ptr %225, align 8, !tbaa !187
  %233 = fcmp une float %231, %232
  br i1 %233, label %246, label %234

234:                                              ; preds = %229, %222
  %235 = getelementptr inbounds %struct.uiBut, ptr %215, i64 0, i32 18, i32 1
  %236 = load float, ptr %235, align 4, !tbaa !188
  %237 = load float, ptr %225, align 8, !tbaa !187
  %238 = fsub float %236, %237
  %239 = tail call float @llvm.fabs.f32(float %238)
  %240 = getelementptr inbounds %struct.uiBut, ptr %216, i64 0, i32 18, i32 3
  %241 = load float, ptr %240, align 4, !tbaa !189
  %242 = fsub float %224, %241
  %243 = tail call float @llvm.fabs.f32(float %242)
  %244 = fcmp ole float %239, %243
  %245 = zext i1 %244 to i8
  br label %246

246:                                              ; preds = %234, %229
  %247 = phi i8 [ %245, %234 ], [ 1, %229 ]
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246, %218
  %250 = getelementptr inbounds %struct.uiBut, ptr %216, i64 0, i32 10
  %251 = load i16, ptr %250, align 8, !tbaa !154
  %252 = icmp eq i16 %251, %8
  br i1 %252, label %213, label %254

253:                                              ; preds = %246
  br i1 %214, label %321, label %254

254:                                              ; preds = %249, %213, %209, %253
  br label %321

255:                                              ; preds = %203, %179
  %256 = or i32 %71, 32768
  br label %321

257:                                              ; preds = %176
  br i1 %63, label %258, label %260

258:                                              ; preds = %257
  %259 = or i32 %71, 16384
  br label %321

260:                                              ; preds = %257
  %261 = icmp eq ptr %73, null
  br i1 %261, label %289, label %262

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 2
  %264 = load float, ptr %263, align 8, !tbaa !186
  %265 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %266 = fcmp oeq float %264, %154
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18
  %269 = load float, ptr %268, align 8, !tbaa !187
  %270 = load float, ptr %265, align 8, !tbaa !187
  %271 = fcmp une float %269, %270
  br i1 %271, label %284, label %272

272:                                              ; preds = %267, %262
  %273 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %274 = load float, ptr %273, align 4, !tbaa !188
  %275 = load float, ptr %265, align 8, !tbaa !187
  %276 = fsub float %274, %275
  %277 = tail call float @llvm.fabs.f32(float %276)
  %278 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %279 = load float, ptr %278, align 4, !tbaa !189
  %280 = fsub float %264, %279
  %281 = tail call float @llvm.fabs.f32(float %280)
  %282 = fcmp ole float %277, %281
  %283 = zext i1 %282 to i8
  br label %284

284:                                              ; preds = %272, %267
  %285 = phi i8 [ %283, %272 ], [ 1, %267 ]
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = or i32 %71, 32768
  br label %292

289:                                              ; preds = %284, %260
  %290 = and i32 %71, -49153
  %291 = or disjoint i32 %290, 16384
  br label %292

292:                                              ; preds = %289, %287
  %293 = phi i32 [ %288, %287 ], [ %291, %289 ]
  %294 = and i32 %293, 16384
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %321

296:                                              ; preds = %292
  br i1 %261, label %319, label %297

297:                                              ; preds = %296
  br i1 %158, label %298, label %303

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %300 = load float, ptr %299, align 8, !tbaa !187
  %301 = load float, ptr %155, align 8, !tbaa !187
  %302 = fcmp une float %300, %301
  br i1 %302, label %315, label %303

303:                                              ; preds = %298, %297
  %304 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  %305 = load float, ptr %304, align 4, !tbaa !188
  %306 = load float, ptr %155, align 8, !tbaa !187
  %307 = fsub float %305, %306
  %308 = tail call float @llvm.fabs.f32(float %307)
  %309 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 3
  %310 = load float, ptr %309, align 4, !tbaa !189
  %311 = fsub float %154, %310
  %312 = tail call float @llvm.fabs.f32(float %311)
  %313 = fcmp ole float %308, %312
  %314 = zext i1 %313 to i8
  br label %315

315:                                              ; preds = %303, %298
  %316 = phi i8 [ %314, %303 ], [ 1, %298 ]
  %317 = icmp eq i8 %316, 0
  %318 = select i1 %317, i32 163840, i32 229376
  br label %321

319:                                              ; preds = %296
  %320 = or i32 %293, 131072
  br label %321

321:                                              ; preds = %148, %117, %319, %315, %292, %258, %255, %254, %253, %206, %122, %92
  %322 = phi i32 [ 0, %92 ], [ %71, %122 ], [ %208, %206 ], [ %256, %255 ], [ %259, %258 ], [ %320, %319 ], [ 81920, %254 ], [ %208, %253 ], [ %318, %315 ], [ %293, %292 ], [ %120, %117 ], [ %151, %148 ]
  %323 = or i32 %322, %89
  store i32 %323, ptr %87, align 4, !tbaa !191
  %324 = icmp eq ptr %73, null
  br i1 %324, label %441, label %325

325:                                              ; preds = %321
  br i1 %68, label %326, label %333

326:                                              ; preds = %325
  %327 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %328 = load float, ptr %327, align 4, !tbaa !188
  %329 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %330 = load float, ptr %329, align 8, !tbaa !187
  %331 = fadd float %328, %330
  %332 = fmul float %331, 5.000000e-01
  store float %332, ptr %329, align 8, !tbaa !187
  store float %332, ptr %327, align 4, !tbaa !188
  br label %441

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 2
  %335 = load float, ptr %334, align 8, !tbaa !186
  br i1 %69, label %336, label %341

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %338 = load float, ptr %337, align 4, !tbaa !189
  %339 = fadd float %335, %338
  %340 = fmul float %339, 5.000000e-01
  store float %340, ptr %337, align 4, !tbaa !189
  store float %340, ptr %334, align 8, !tbaa !186
  br label %441

341:                                              ; preds = %333
  %342 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  %343 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 2
  %344 = load float, ptr %343, align 8, !tbaa !186
  %345 = fcmp oeq float %335, %344
  br i1 %345, label %346, label %351

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18
  %348 = load float, ptr %347, align 8, !tbaa !187
  %349 = load float, ptr %342, align 8, !tbaa !187
  %350 = fcmp une float %348, %349
  br i1 %350, label %363, label %351

351:                                              ; preds = %346, %341
  %352 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %353 = load float, ptr %352, align 4, !tbaa !188
  %354 = load float, ptr %342, align 8, !tbaa !187
  %355 = fsub float %353, %354
  %356 = tail call float @llvm.fabs.f32(float %355)
  %357 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %358 = load float, ptr %357, align 4, !tbaa !189
  %359 = fsub float %335, %358
  %360 = tail call float @llvm.fabs.f32(float %359)
  %361 = fcmp ole float %356, %360
  %362 = zext i1 %361 to i8
  br label %363

363:                                              ; preds = %351, %346
  %364 = phi i8 [ %362, %351 ], [ 1, %346 ]
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %368 = load float, ptr %367, align 4, !tbaa !188
  %369 = load float, ptr %342, align 8, !tbaa !187
  %370 = fadd float %368, %369
  %371 = fmul float %370, 5.000000e-01
  store float %371, ptr %342, align 8, !tbaa !187
  store float %371, ptr %367, align 4, !tbaa !188
  %372 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 3
  %373 = load float, ptr %372, align 4, !tbaa !189
  %374 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  store float %373, ptr %374, align 4, !tbaa !189
  br label %441

375:                                              ; preds = %363
  %376 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !192
  %378 = icmp eq ptr %377, null
  br i1 %378, label %439, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.uiBut, ptr %377, i64 0, i32 18, i32 2
  %381 = load float, ptr %380, align 8, !tbaa !186
  %382 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18
  %383 = fcmp oeq float %381, %335
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.uiBut, ptr %377, i64 0, i32 18
  %386 = load float, ptr %385, align 8, !tbaa !187
  %387 = load float, ptr %382, align 8, !tbaa !187
  %388 = fcmp une float %386, %387
  br i1 %388, label %401, label %389

389:                                              ; preds = %384, %379
  %390 = getelementptr inbounds %struct.uiBut, ptr %377, i64 0, i32 18, i32 1
  %391 = load float, ptr %390, align 4, !tbaa !188
  %392 = load float, ptr %382, align 8, !tbaa !187
  %393 = fsub float %391, %392
  %394 = tail call float @llvm.fabs.f32(float %393)
  %395 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 3
  %396 = load float, ptr %395, align 4, !tbaa !189
  %397 = fsub float %381, %396
  %398 = tail call float @llvm.fabs.f32(float %397)
  %399 = fcmp ole float %394, %398
  %400 = zext i1 %399 to i8
  br label %401

401:                                              ; preds = %389, %384
  %402 = phi i8 [ %400, %389 ], [ 1, %384 ]
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %439

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  %406 = load float, ptr %405, align 4, !tbaa !189
  %407 = fadd float %335, %406
  %408 = fmul float %407, 5.000000e-01
  store float %408, ptr %405, align 4, !tbaa !189
  store float %408, ptr %334, align 8, !tbaa !186
  %409 = load float, ptr %382, align 8, !tbaa !187
  store float %409, ptr %342, align 8, !tbaa !187
  %410 = icmp eq ptr %86, null
  br i1 %410, label %441, label %411

411:                                              ; preds = %404
  %412 = load float, ptr %343, align 8, !tbaa !186
  %413 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18
  %414 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 2
  %415 = load float, ptr %414, align 8, !tbaa !186
  %416 = fcmp oeq float %412, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %411
  %418 = load float, ptr %413, align 8, !tbaa !187
  %419 = fcmp une float %409, %418
  br i1 %419, label %432, label %420

420:                                              ; preds = %417, %411
  %421 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  %422 = load float, ptr %421, align 4, !tbaa !188
  %423 = load float, ptr %413, align 8, !tbaa !187
  %424 = fsub float %422, %423
  %425 = tail call float @llvm.fabs.f32(float %424)
  %426 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 18, i32 3
  %427 = load float, ptr %426, align 4, !tbaa !189
  %428 = fsub float %412, %427
  %429 = tail call float @llvm.fabs.f32(float %428)
  %430 = fcmp ole float %425, %429
  %431 = zext i1 %430 to i8
  br label %432

432:                                              ; preds = %420, %417
  %433 = phi i8 [ %431, %420 ], [ 1, %417 ]
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.uiBut, ptr %73, i64 0, i32 18, i32 1
  %437 = load float, ptr %436, align 4, !tbaa !188
  %438 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  store float %437, ptr %438, align 4, !tbaa !188
  br label %441

439:                                              ; preds = %401, %375
  %440 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  store float %335, ptr %440, align 4, !tbaa !189
  br label %441

441:                                              ; preds = %439, %435, %432, %404, %366, %336, %326, %321
  %442 = icmp eq ptr %78, null
  br i1 %442, label %443, label %70, !llvm.loop !193

443:                                              ; preds = %441, %70
  br label %444

444:                                              ; preds = %443, %449
  %445 = phi ptr [ %450, %449 ], [ %6, %443 ]
  %446 = getelementptr inbounds %struct.uiBut, ptr %445, i64 0, i32 10
  %447 = load i16, ptr %446, align 8, !tbaa !154
  %448 = icmp eq i16 %447, %8
  br i1 %448, label %449, label %454

449:                                              ; preds = %444
  %450 = load ptr, ptr %445, align 8, !tbaa !151
  %451 = icmp eq ptr %450, null
  br i1 %451, label %457, label %444, !llvm.loop !194

452:                                              ; preds = %5
  %453 = load ptr, ptr %6, align 8, !tbaa !151
  br label %454

454:                                              ; preds = %444, %452
  %455 = phi ptr [ %453, %452 ], [ %445, %444 ]
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %5, !llvm.loop !195

457:                                              ; preds = %454, %449, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_text_bounds_block(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 {
  %3 = tail call ptr @UI_GetStyle() #20
  %4 = fptosi float %1 to i32
  %5 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %5) #20
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  br label %22

12:                                               ; preds = %69, %2
  %13 = phi ptr [ %7, %2 ], [ %70, %69 ]
  %14 = phi i32 [ 0, %2 ], [ %71, %69 ]
  %15 = phi i32 [ %4, %2 ], [ %72, %69 ]
  %16 = icmp eq ptr %13, null
  br i1 %16, label %89, label %17

17:                                               ; preds = %12
  %18 = sitofp i32 %15 to float
  %19 = add nsw i32 %15, %14
  %20 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 42
  %21 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 43
  br label %75

22:                                               ; preds = %9, %69
  %23 = phi i32 [ %4, %9 ], [ %72, %69 ]
  %24 = phi ptr [ %7, %9 ], [ %73, %69 ]
  %25 = phi i32 [ 0, %9 ], [ %71, %69 ]
  %26 = phi ptr [ %7, %9 ], [ %70, %69 ]
  %27 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !108
  switch i32 %28, label %29 [
    i32 10752, label %36
    i32 27648, label %36
  ]

29:                                               ; preds = %22
  %30 = load i16, ptr %5, align 8, !tbaa !196
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 17
  %33 = tail call float @BLF_width(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 400) #20
  %34 = fptosi float %33 to i32
  %35 = tail call i32 @llvm.smax.i32(i32 %25, i32 %34)
  br label %36

36:                                               ; preds = %29, %22, %22
  %37 = phi i32 [ %25, %22 ], [ %25, %22 ], [ %35, %29 ]
  %38 = load ptr, ptr %24, align 8, !tbaa !151
  %39 = icmp eq ptr %38, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 18
  %42 = load float, ptr %41, align 8, !tbaa !187
  %43 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 18
  %44 = load float, ptr %43, align 8, !tbaa !187
  %45 = fcmp olt float %42, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !192
  %49 = icmp eq ptr %48, %24
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = sitofp i32 %23 to float
  %52 = add nsw i32 %37, %23
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %26, %50 ], [ %60, %53 ]
  %55 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 18
  store float %51, ptr %55, align 8, !tbaa !187
  %56 = load i32, ptr %10, align 8, !tbaa !74
  %57 = add nsw i32 %52, %56
  %58 = sitofp i32 %57 to float
  %59 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 18, i32 1
  store float %58, ptr %59, align 4, !tbaa !188
  tail call void @ui_check_but(ptr noundef %54)
  %60 = load ptr, ptr %54, align 8, !tbaa !151
  %61 = getelementptr inbounds %struct.uiBut, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !192
  %63 = icmp eq ptr %62, %24
  br i1 %63, label %64, label %53, !llvm.loop !199

64:                                               ; preds = %53, %46
  %65 = phi ptr [ %26, %46 ], [ %60, %53 ]
  %66 = load i32, ptr %11, align 8, !tbaa !74
  %67 = add i32 %37, %23
  %68 = add i32 %67, %66
  br label %69

69:                                               ; preds = %36, %40, %64
  %70 = phi ptr [ %65, %64 ], [ %26, %40 ], [ %26, %36 ]
  %71 = phi i32 [ 0, %64 ], [ %37, %40 ], [ %37, %36 ]
  %72 = phi i32 [ %68, %64 ], [ %23, %40 ], [ %23, %36 ]
  %73 = load ptr, ptr %24, align 8, !tbaa !151
  %74 = icmp eq ptr %73, null
  br i1 %74, label %12, label %22, !llvm.loop !200

75:                                               ; preds = %17, %75
  %76 = phi ptr [ %13, %17 ], [ %87, %75 ]
  %77 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 18
  store float %18, ptr %77, align 8, !tbaa !187
  %78 = load i32, ptr %20, align 8, !tbaa !74
  %79 = add nsw i32 %19, %78
  %80 = sitofp i32 %79 to float
  %81 = load i32, ptr %21, align 4, !tbaa !77
  %82 = sitofp i32 %81 to float
  %83 = fadd float %82, %1
  %84 = fcmp olt float %83, %80
  %85 = select i1 %84, float %80, float %83
  %86 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 18, i32 1
  store float %85, ptr %86, align 4, !tbaa !188
  tail call void @ui_check_but(ptr noundef nonnull %76)
  %87 = load ptr, ptr %76, align 8, !tbaa !151
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %75, !llvm.loop !201

89:                                               ; preds = %75, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockEndAlign(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, -245761
  store i32 %4, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiEndBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !202
  %6 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 4
  tail call void @uiEndBlock_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_fontscale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = fcmp olt float %1, 0x3FECCCCCC0000000
  %4 = fcmp ogt float %1, 0x3FF19999A0000000
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !171
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
  store i16 %17, ptr %0, align 2, !tbaa !171
  br label %18

18:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.uiStyle, align 8
  %5 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #20
  %6 = tail call ptr @UI_GetStyleDraw() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %4, ptr noundef nonnull align 8 dereferenceable(232) %6, i64 232, i1 false), !tbaa.struct !204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %7 = tail call ptr @CTX_wm_menu(ptr noundef %0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %7, %2 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 38
  %14 = load i8, ptr %13, align 1, !tbaa !185
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.wmWindow, ptr %17, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !202
  %20 = getelementptr inbounds %struct.wmEvent, ptr %19, i64 0, i32 4
  tail call void @uiEndBlock_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %20)
  br label %21

21:                                               ; preds = %16, %11
  %22 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @glDisable(i32 noundef 32925) #20
  br label %25

25:                                               ; preds = %24, %21
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  %26 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 3, i32 1
  %27 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %28 = load float, ptr %27, align 8, !tbaa !205
  %29 = fcmp olt float %28, 0x3FECCCCCC0000000
  %30 = fcmp ogt float %28, 0x3FF19999A0000000
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load i16, ptr %26, align 2, !tbaa !171
  %34 = sitofp i16 %33 to float
  %35 = fdiv float %34, %28
  %36 = fcmp ogt float %28, 1.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call float @llvm.ceil.f32(float %35)
  br label %41

39:                                               ; preds = %32
  %40 = tail call float @llvm.floor.f32(float %35)
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi float [ %40, %39 ], [ %38, %37 ]
  %43 = fptosi float %42 to i16
  store i16 %43, ptr %26, align 2, !tbaa !171
  br label %44

44:                                               ; preds = %25, %41
  %45 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 4, i32 1
  br i1 %31, label %46, label %58

46:                                               ; preds = %44
  %47 = load i16, ptr %45, align 2, !tbaa !171
  %48 = sitofp i16 %47 to float
  %49 = fdiv float %48, %28
  %50 = fcmp ogt float %28, 1.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = tail call float @llvm.ceil.f32(float %49)
  br label %55

53:                                               ; preds = %46
  %54 = tail call float @llvm.floor.f32(float %49)
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi float [ %54, %53 ], [ %52, %51 ]
  %57 = fptosi float %56 to i16
  store i16 %57, ptr %45, align 2, !tbaa !171
  br label %58

58:                                               ; preds = %44, %55
  %59 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 5, i32 1
  br i1 %31, label %60, label %72

60:                                               ; preds = %58
  %61 = load i16, ptr %59, align 2, !tbaa !171
  %62 = sitofp i16 %61 to float
  %63 = fdiv float %62, %28
  %64 = fcmp ogt float %28, 1.000000e+00
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call float @llvm.ceil.f32(float %63)
  br label %69

67:                                               ; preds = %60
  %68 = tail call float @llvm.floor.f32(float %63)
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi float [ %68, %67 ], [ %66, %65 ]
  %71 = fptosi float %70 to i16
  store i16 %71, ptr %59, align 2, !tbaa !171
  br label %72

72:                                               ; preds = %58, %69
  %73 = getelementptr inbounds %struct.uiStyle, ptr %4, i64 0, i32 6, i32 1
  br i1 %31, label %74, label %86

74:                                               ; preds = %72
  %75 = load i16, ptr %73, align 2, !tbaa !171
  %76 = sitofp i16 %75 to float
  %77 = fdiv float %76, %28
  %78 = fcmp ogt float %28, 1.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = tail call float @llvm.ceil.f32(float %77)
  br label %83

81:                                               ; preds = %74
  %82 = tail call float @llvm.floor.f32(float %77)
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi float [ %82, %81 ], [ %80, %79 ]
  %85 = fptosi float %84 to i16
  store i16 %85, ptr %73, align 2, !tbaa !171
  br label %86

86:                                               ; preds = %72, %83
  %87 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %88 = load float, ptr %87, align 4, !tbaa.struct !57
  %89 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %90 = load float, ptr %89, align 4, !tbaa.struct !206
  %91 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %92 = load float, ptr %91, align 4, !tbaa.struct !207
  %93 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %94 = load float, ptr %93, align 4, !tbaa.struct !208
  %95 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %96 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !46
  %98 = load i32, ptr %95, align 4, !tbaa !48
  %99 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !49
  %101 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !52
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %86
  %107 = getelementptr inbounds %struct.Panel, ptr %104, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !53
  %109 = sitofp i32 %108 to float
  %110 = fadd float %88, %109
  %111 = getelementptr inbounds %struct.Panel, ptr %104, i64 0, i32 8
  %112 = load i32, ptr %111, align 4, !tbaa !55
  %113 = sitofp i32 %112 to float
  %114 = fadd float %92, %113
  br label %115

115:                                              ; preds = %86, %106
  %116 = phi float [ %114, %106 ], [ %92, %86 ]
  %117 = phi float [ %110, %106 ], [ %88, %86 ]
  %118 = add i32 %100, 1
  %119 = sub i32 %118, %102
  %120 = add i32 %97, 1
  %121 = sub i32 %120, %98
  %122 = sitofp i32 %98 to float
  %123 = sitofp i32 %121 to float
  %124 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10
  %125 = load float, ptr %124, align 8, !tbaa !51
  %126 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1
  %127 = load float, ptr %126, align 8, !tbaa !51
  %128 = fmul float %116, %127
  %129 = tail call float @llvm.fmuladd.f32(float %117, float %125, float %128)
  %130 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3
  %131 = load float, ptr %130, align 8, !tbaa !51
  %132 = fadd float %131, %129
  %133 = tail call float @llvm.fmuladd.f32(float %132, float 5.000000e-01, float 5.000000e-01)
  %134 = tail call float @llvm.fmuladd.f32(float %123, float %133, float %122)
  %135 = sitofp i32 %102 to float
  %136 = sitofp i32 %119 to float
  %137 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 0, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !51
  %139 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 1, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !51
  %141 = fmul float %116, %140
  %142 = tail call float @llvm.fmuladd.f32(float %117, float %138, float %141)
  %143 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 10, i64 3, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !51
  %145 = fadd float %144, %142
  %146 = tail call float @llvm.fmuladd.f32(float %145, float 5.000000e-01, float 5.000000e-01)
  %147 = tail call float @llvm.fmuladd.f32(float %136, float %146, float %135)
  br i1 %105, label %157, label %148

148:                                              ; preds = %115
  %149 = getelementptr inbounds %struct.Panel, ptr %104, i64 0, i32 7
  %150 = load i32, ptr %149, align 8, !tbaa !53
  %151 = sitofp i32 %150 to float
  %152 = fadd float %90, %151
  %153 = getelementptr inbounds %struct.Panel, ptr %104, i64 0, i32 8
  %154 = load i32, ptr %153, align 4, !tbaa !55
  %155 = sitofp i32 %154 to float
  %156 = fadd float %94, %155
  br label %157

157:                                              ; preds = %115, %148
  %158 = phi float [ %156, %148 ], [ %94, %115 ]
  %159 = phi float [ %152, %148 ], [ %90, %115 ]
  %160 = fmul float %127, %158
  %161 = tail call float @llvm.fmuladd.f32(float %159, float %125, float %160)
  %162 = fadd float %131, %161
  %163 = tail call float @llvm.fmuladd.f32(float %162, float 5.000000e-01, float 5.000000e-01)
  %164 = tail call float @llvm.fmuladd.f32(float %123, float %163, float %122)
  %165 = fmul float %140, %158
  %166 = tail call float @llvm.fmuladd.f32(float %159, float %138, float %165)
  %167 = fadd float %144, %166
  %168 = tail call float @llvm.fmuladd.f32(float %167, float 5.000000e-01, float 5.000000e-01)
  %169 = tail call float @llvm.fmuladd.f32(float %136, float %168, float %135)
  %170 = fsub float %134, %122
  %171 = fsub float %147, %135
  %172 = fsub float %164, %122
  %173 = fsub float %169, %135
  %174 = tail call float @llvm.floor.f32(float %170)
  %175 = fptosi float %174 to i32
  store i32 %175, ptr %5, align 4, !tbaa !48
  %176 = tail call float @llvm.floor.f32(float %171)
  %177 = fptosi float %176 to i32
  %178 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %177, ptr %178, align 4, !tbaa !50
  %179 = tail call float @llvm.floor.f32(float %172)
  %180 = fptosi float %179 to i32
  %181 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %180, ptr %181, align 4, !tbaa !46
  %182 = tail call float @llvm.floor.f32(float %173)
  %183 = fptosi float %182 to i32
  %184 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %183, ptr %184, align 4, !tbaa !49
  tail call void @glMatrixMode(i32 noundef 5889) #20
  tail call void @glPushMatrix() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  tail call void @glPushMatrix() #20
  tail call void @glLoadIdentity() #20
  tail call void @wmOrtho2_region_ui(ptr noundef %12) #20
  %185 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %186 = load i32, ptr %185, align 8, !tbaa !34
  %187 = and i32 %186, 1048576
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %157
  tail call void @ui_draw_pie_center(ptr noundef %1) #20
  br label %199

190:                                              ; preds = %157
  %191 = and i32 %186, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void @ui_draw_menu_back(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5) #20
  br label %199

194:                                              ; preds = %190
  %195 = load ptr, ptr %103, align 8, !tbaa !52
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %12) #20
  call void @ui_draw_aligned_panel(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext %198) #20
  br label %199

199:                                              ; preds = %193, %197, %194, %189
  %200 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !62
  %202 = icmp eq ptr %201, null
  br i1 %202, label %301, label %203

203:                                              ; preds = %199, %298
  %204 = phi ptr [ %299, %298 ], [ %201, %199 ]
  %205 = getelementptr inbounds %struct.uiBut, ptr %204, i64 0, i32 2
  %206 = load i32, ptr %205, align 8, !tbaa !109
  %207 = and i32 %206, 34
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %298

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.uiBut, ptr %204, i64 0, i32 18
  %211 = load float, ptr %210, align 4, !tbaa.struct !57
  %212 = getelementptr inbounds %struct.uiBut, ptr %204, i64 0, i32 18, i32 1
  %213 = load float, ptr %212, align 4, !tbaa.struct !206
  %214 = getelementptr inbounds %struct.uiBut, ptr %204, i64 0, i32 18, i32 2
  %215 = load float, ptr %214, align 4, !tbaa.struct !207
  %216 = getelementptr inbounds %struct.uiBut, ptr %204, i64 0, i32 18, i32 3
  %217 = load float, ptr %216, align 4, !tbaa.struct !208
  %218 = load i32, ptr %96, align 4, !tbaa !46
  %219 = load i32, ptr %95, align 4, !tbaa !48
  %220 = load i32, ptr %99, align 4, !tbaa !49
  %221 = load i32, ptr %101, align 4, !tbaa !50
  %222 = load ptr, ptr %103, align 8, !tbaa !52
  %223 = icmp eq ptr %222, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %209
  %225 = getelementptr inbounds %struct.Panel, ptr %222, i64 0, i32 7
  %226 = load i32, ptr %225, align 8, !tbaa !53
  %227 = sitofp i32 %226 to float
  %228 = fadd float %211, %227
  %229 = getelementptr inbounds %struct.Panel, ptr %222, i64 0, i32 8
  %230 = load i32, ptr %229, align 4, !tbaa !55
  %231 = sitofp i32 %230 to float
  %232 = fadd float %215, %231
  br label %233

233:                                              ; preds = %209, %224
  %234 = phi float [ %232, %224 ], [ %215, %209 ]
  %235 = phi float [ %228, %224 ], [ %211, %209 ]
  %236 = add i32 %220, 1
  %237 = sub i32 %236, %221
  %238 = add i32 %218, 1
  %239 = sub i32 %238, %219
  %240 = sitofp i32 %219 to float
  %241 = sitofp i32 %239 to float
  %242 = load float, ptr %124, align 8, !tbaa !51
  %243 = load float, ptr %126, align 8, !tbaa !51
  %244 = fmul float %234, %243
  %245 = call float @llvm.fmuladd.f32(float %235, float %242, float %244)
  %246 = load float, ptr %130, align 8, !tbaa !51
  %247 = fadd float %246, %245
  %248 = call float @llvm.fmuladd.f32(float %247, float 5.000000e-01, float 5.000000e-01)
  %249 = call float @llvm.fmuladd.f32(float %241, float %248, float %240)
  %250 = sitofp i32 %221 to float
  %251 = sitofp i32 %237 to float
  %252 = load float, ptr %137, align 4, !tbaa !51
  %253 = load float, ptr %139, align 4, !tbaa !51
  %254 = fmul float %234, %253
  %255 = call float @llvm.fmuladd.f32(float %235, float %252, float %254)
  %256 = load float, ptr %143, align 4, !tbaa !51
  %257 = fadd float %256, %255
  %258 = call float @llvm.fmuladd.f32(float %257, float 5.000000e-01, float 5.000000e-01)
  %259 = call float @llvm.fmuladd.f32(float %251, float %258, float %250)
  br i1 %223, label %269, label %260

260:                                              ; preds = %233
  %261 = getelementptr inbounds %struct.Panel, ptr %222, i64 0, i32 7
  %262 = load i32, ptr %261, align 8, !tbaa !53
  %263 = sitofp i32 %262 to float
  %264 = fadd float %213, %263
  %265 = getelementptr inbounds %struct.Panel, ptr %222, i64 0, i32 8
  %266 = load i32, ptr %265, align 4, !tbaa !55
  %267 = sitofp i32 %266 to float
  %268 = fadd float %217, %267
  br label %269

269:                                              ; preds = %233, %260
  %270 = phi float [ %268, %260 ], [ %217, %233 ]
  %271 = phi float [ %264, %260 ], [ %213, %233 ]
  %272 = fmul float %243, %270
  %273 = call float @llvm.fmuladd.f32(float %271, float %242, float %272)
  %274 = fadd float %246, %273
  %275 = call float @llvm.fmuladd.f32(float %274, float 5.000000e-01, float 5.000000e-01)
  %276 = call float @llvm.fmuladd.f32(float %241, float %275, float %240)
  %277 = fmul float %253, %270
  %278 = call float @llvm.fmuladd.f32(float %271, float %252, float %277)
  %279 = fadd float %256, %278
  %280 = call float @llvm.fmuladd.f32(float %279, float 5.000000e-01, float 5.000000e-01)
  %281 = call float @llvm.fmuladd.f32(float %251, float %280, float %250)
  %282 = fsub float %249, %240
  %283 = fsub float %259, %250
  %284 = fsub float %276, %240
  %285 = fsub float %281, %250
  %286 = call float @llvm.floor.f32(float %282)
  %287 = fptosi float %286 to i32
  store i32 %287, ptr %5, align 4, !tbaa !48
  %288 = call float @llvm.floor.f32(float %283)
  %289 = fptosi float %288 to i32
  store i32 %289, ptr %178, align 4, !tbaa !50
  %290 = call float @llvm.floor.f32(float %284)
  %291 = fptosi float %290 to i32
  store i32 %291, ptr %181, align 4, !tbaa !46
  %292 = call float @llvm.floor.f32(float %285)
  %293 = fptosi float %292 to i32
  store i32 %293, ptr %184, align 4, !tbaa !49
  %294 = icmp slt i32 %287, %291
  %295 = icmp slt i32 %289, %293
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %297, label %298

297:                                              ; preds = %269
  call void @ui_draw_but(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %204, ptr noundef nonnull %5) #20
  br label %298

298:                                              ; preds = %203, %297, %269
  %299 = load ptr, ptr %204, align 8, !tbaa !62
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %203, !llvm.loop !209

301:                                              ; preds = %298, %199
  call void @glMatrixMode(i32 noundef 5889) #20
  call void @glPopMatrix() #20
  call void @glMatrixMode(i32 noundef 5888) #20
  call void @glPopMatrix() #20
  br i1 %23, label %303, label %302

302:                                              ; preds = %301
  call void @glEnable(i32 noundef 32925) #20
  br label %303

303:                                              ; preds = %302, %301
  %304 = load ptr, ptr %200, align 8, !tbaa !62
  %305 = icmp eq ptr %304, null
  br i1 %305, label %314, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %308 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %309 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  br label %319

310:                                              ; preds = %408
  %311 = icmp eq i8 %410, 0
  %312 = icmp eq i8 %409, 0
  %313 = zext i1 %312 to i32
  br label %314

314:                                              ; preds = %310, %303
  %315 = phi i32 [ 1, %303 ], [ %313, %310 ]
  %316 = phi i1 [ true, %303 ], [ %311, %310 ]
  %317 = load ptr, ptr %200, align 8, !tbaa !62
  %318 = icmp eq ptr %317, null
  br i1 %318, label %452, label %413

319:                                              ; preds = %306, %408
  %320 = phi ptr [ %304, %306 ], [ %411, %408 ]
  %321 = phi i8 [ 0, %306 ], [ %410, %408 ]
  %322 = phi i8 [ 0, %306 ], [ %409, %408 ]
  %323 = getelementptr inbounds %struct.uiBut, ptr %320, i64 0, i32 4
  %324 = load i32, ptr %323, align 8, !tbaa !108
  %325 = icmp eq i32 %324, 11264
  br i1 %325, label %326, label %408

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.uiBut, ptr %320, i64 0, i32 40
  %328 = load ptr, ptr %327, align 8, !tbaa !107
  %329 = icmp eq ptr %328, null
  br i1 %329, label %408, label %330

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.uiLink, ptr %328, i64 0, i32 7
  %332 = load ptr, ptr %331, align 8, !tbaa !62
  %333 = icmp eq ptr %332, null
  br i1 %333, label %408, label %334

334:                                              ; preds = %330, %404
  %335 = phi ptr [ %406, %404 ], [ %332, %330 ]
  %336 = phi i8 [ %390, %404 ], [ %321, %330 ]
  %337 = phi i8 [ %405, %404 ], [ %322, %330 ]
  %338 = getelementptr inbounds %struct.uiLinkLine, ptr %335, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !157
  %340 = getelementptr inbounds %struct.uiBut, ptr %339, i64 0, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !109
  %342 = and i32 %341, 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %389

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.uiLinkLine, ptr %335, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !155
  %347 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 2
  %348 = load i32, ptr %347, align 8, !tbaa !109
  %349 = and i32 %348, 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.uiLinkLine, ptr %335, i64 0, i32 5
  %353 = load i16, ptr %352, align 2, !tbaa !210
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %389, label %355

355:                                              ; preds = %351
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %356 = icmp eq ptr %339, null
  %357 = icmp eq ptr %346, null
  %358 = or i1 %356, %357
  br i1 %358, label %388, label %359

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.uiBut, ptr %339, i64 0, i32 18
  %361 = load float, ptr %360, align 4, !tbaa !75
  %362 = getelementptr inbounds %struct.uiBut, ptr %339, i64 0, i32 18, i32 1
  %363 = load float, ptr %362, align 4, !tbaa !76
  %364 = fadd float %361, %363
  %365 = fmul float %364, 5.000000e-01
  %366 = fptosi float %365 to i32
  store i32 %366, ptr %3, align 4, !tbaa !48
  %367 = getelementptr inbounds %struct.uiBut, ptr %339, i64 0, i32 18, i32 2
  %368 = load float, ptr %367, align 4, !tbaa !180
  %369 = getelementptr inbounds %struct.uiBut, ptr %339, i64 0, i32 18, i32 3
  %370 = load float, ptr %369, align 4, !tbaa !179
  %371 = fadd float %368, %370
  %372 = fmul float %371, 5.000000e-01
  %373 = fptosi float %372 to i32
  store i32 %373, ptr %307, align 4, !tbaa !50
  %374 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18
  %375 = load float, ptr %374, align 4, !tbaa !75
  %376 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 1
  %377 = load float, ptr %376, align 4, !tbaa !76
  %378 = fadd float %375, %377
  %379 = fmul float %378, 5.000000e-01
  %380 = fptosi float %379 to i32
  store i32 %380, ptr %308, align 4, !tbaa !46
  %381 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 2
  %382 = load float, ptr %381, align 4, !tbaa !180
  %383 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 3
  %384 = load float, ptr %383, align 4, !tbaa !179
  %385 = fadd float %382, %384
  %386 = fmul float %385, 5.000000e-01
  %387 = fptosi float %386 to i32
  store i32 %387, ptr %309, align 4, !tbaa !49
  call void @UI_ThemeColor(i32 noundef 24) #20
  call void @ui_draw_link_bezier(ptr noundef nonnull %3) #20
  br label %388

388:                                              ; preds = %355, %359
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %389

389:                                              ; preds = %388, %351, %344, %334
  %390 = phi i8 [ %336, %388 ], [ %336, %351 ], [ 1, %344 ], [ 1, %334 ]
  %391 = load ptr, ptr %338, align 8, !tbaa !157
  %392 = getelementptr inbounds %struct.uiBut, ptr %391, i64 0, i32 2
  %393 = load i32, ptr %392, align 8, !tbaa !109
  %394 = and i32 %393, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.uiLinkLine, ptr %335, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !155
  %399 = getelementptr inbounds %struct.uiBut, ptr %398, i64 0, i32 2
  %400 = load i32, ptr %399, align 8, !tbaa !109
  %401 = and i32 %400, 1
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %396, %389
  br label %404

404:                                              ; preds = %403, %396
  %405 = phi i8 [ 1, %403 ], [ %337, %396 ]
  %406 = load ptr, ptr %335, align 8, !tbaa !62
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %334, !llvm.loop !211

408:                                              ; preds = %404, %330, %326, %319
  %409 = phi i8 [ %322, %326 ], [ %322, %319 ], [ %322, %330 ], [ %405, %404 ]
  %410 = phi i8 [ %321, %326 ], [ %321, %319 ], [ %321, %330 ], [ %390, %404 ]
  %411 = load ptr, ptr %320, align 8, !tbaa !62
  %412 = icmp eq ptr %411, null
  br i1 %412, label %310, label %319, !llvm.loop !212

413:                                              ; preds = %314, %449
  %414 = phi ptr [ %450, %449 ], [ %317, %314 ]
  %415 = getelementptr inbounds %struct.uiBut, ptr %414, i64 0, i32 4
  %416 = load i32, ptr %415, align 8, !tbaa !108
  %417 = icmp eq i32 %416, 11264
  br i1 %417, label %418, label %449

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.uiBut, ptr %414, i64 0, i32 40
  %420 = load ptr, ptr %419, align 8, !tbaa !107
  %421 = icmp eq ptr %420, null
  br i1 %421, label %449, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.uiLink, ptr %420, i64 0, i32 7
  %424 = load ptr, ptr %423, align 8, !tbaa !62
  %425 = icmp eq ptr %424, null
  br i1 %425, label %449, label %426

426:                                              ; preds = %422, %446
  %427 = phi ptr [ %447, %446 ], [ %424, %422 ]
  %428 = getelementptr inbounds %struct.uiLinkLine, ptr %427, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !157
  %430 = getelementptr inbounds %struct.uiBut, ptr %429, i64 0, i32 2
  %431 = load i32, ptr %430, align 8, !tbaa !109
  %432 = and i32 %431, 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %446

434:                                              ; preds = %426
  %435 = getelementptr inbounds %struct.uiLinkLine, ptr %427, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !155
  %437 = getelementptr inbounds %struct.uiBut, ptr %436, i64 0, i32 2
  %438 = load i32, ptr %437, align 8, !tbaa !109
  %439 = and i32 %438, 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.uiLinkLine, ptr %427, i64 0, i32 5
  %443 = load i16, ptr %442, align 2, !tbaa !210
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  call fastcc void @ui_draw_linkline(ptr noundef nonnull %427, i32 noundef 0, i32 noundef 0)
  br label %446

446:                                              ; preds = %445, %441, %434, %426
  %447 = load ptr, ptr %427, align 8, !tbaa !62
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %426, !llvm.loop !213

449:                                              ; preds = %446, %422, %418, %413
  %450 = load ptr, ptr %414, align 8, !tbaa !62
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %413, !llvm.loop !214

452:                                              ; preds = %449, %314
  br i1 %316, label %491, label %453

453:                                              ; preds = %452
  %454 = load ptr, ptr %200, align 8, !tbaa !62
  %455 = icmp eq ptr %454, null
  br i1 %455, label %491, label %456

456:                                              ; preds = %453, %488
  %457 = phi ptr [ %489, %488 ], [ %454, %453 ]
  %458 = getelementptr inbounds %struct.uiBut, ptr %457, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !108
  %460 = icmp eq i32 %459, 11264
  br i1 %460, label %461, label %488

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.uiBut, ptr %457, i64 0, i32 40
  %463 = load ptr, ptr %462, align 8, !tbaa !107
  %464 = icmp eq ptr %463, null
  br i1 %464, label %488, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.uiLink, ptr %463, i64 0, i32 7
  %467 = load ptr, ptr %466, align 8, !tbaa !62
  %468 = icmp eq ptr %467, null
  br i1 %468, label %488, label %469

469:                                              ; preds = %465, %485
  %470 = phi ptr [ %486, %485 ], [ %467, %465 ]
  %471 = getelementptr inbounds %struct.uiLinkLine, ptr %470, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !157
  %473 = getelementptr inbounds %struct.uiBut, ptr %472, i64 0, i32 2
  %474 = load i32, ptr %473, align 8, !tbaa !109
  %475 = and i32 %474, 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.uiLinkLine, ptr %470, i64 0, i32 3
  %479 = load ptr, ptr %478, align 8, !tbaa !155
  %480 = getelementptr inbounds %struct.uiBut, ptr %479, i64 0, i32 2
  %481 = load i32, ptr %480, align 8, !tbaa !109
  %482 = and i32 %481, 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %477, %469
  call fastcc void @ui_draw_linkline(ptr noundef nonnull %470, i32 noundef %315, i32 noundef 0)
  br label %485

485:                                              ; preds = %484, %477
  %486 = load ptr, ptr %470, align 8, !tbaa !62
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %469, !llvm.loop !215

488:                                              ; preds = %485, %465, %461, %456
  %489 = load ptr, ptr %457, align 8, !tbaa !62
  %490 = icmp eq ptr %489, null
  br i1 %490, label %491, label %456, !llvm.loop !216

491:                                              ; preds = %488, %453, %452
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #20
  ret void
}

declare ptr @UI_GetStyleDraw() local_unnamed_addr #7

declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #7

declare void @glDisable(i32 noundef) local_unnamed_addr #7

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #7

declare void @glPushMatrix() local_unnamed_addr #7

declare void @glLoadIdentity() local_unnamed_addr #7

declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #7

declare void @ui_draw_pie_center(ptr noundef) local_unnamed_addr #7

declare void @ui_draw_menu_back(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ui_draw_aligned_panel(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare zeroext i8 @UI_panel_category_is_visible(ptr noundef) local_unnamed_addr #7

declare void @ui_draw_but(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @glPopMatrix() local_unnamed_addr #7

declare void @glEnable(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_is_but_push_ex(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 6
  %4 = load i16, ptr %3, align 8, !tbaa !217
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !108
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
  %14 = load double, ptr %1, align 8, !tbaa !111
  %15 = fcmp oeq double %14, 0x7FEFFFFFFFFFFFFF
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call double @ui_get_but_val(ptr noundef %0)
  store double %17, ptr %1, align 8, !tbaa !111
  br label %18

18:                                               ; preds = %16, %12
  %19 = load double, ptr %1, align 8, !tbaa !111
  %20 = fptosi double %19 to i32
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 2, !tbaa !218
  %23 = zext nneg i16 %22 to i32
  %24 = xor i32 %20, -1
  %25 = lshr i32 %24, %23
  %26 = and i32 %25, 1
  %27 = xor i32 %26, %13
  br label %79

28:                                               ; preds = %2
  switch i32 %7, label %79 [
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
  %30 = load double, ptr %1, align 8, !tbaa !111
  %31 = fcmp oeq double %30, 0x7FEFFFFFFFFFFFFF
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call double @ui_get_but_val(ptr noundef %0)
  store double %33, ptr %1, align 8, !tbaa !111
  br label %34

34:                                               ; preds = %32, %29
  %35 = load double, ptr %1, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 20
  %37 = load float, ptr %36, align 8, !tbaa !116
  %38 = fpext float %37 to double
  %39 = fcmp une double %35, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %34
  br label %79

41:                                               ; preds = %28, %28, %28
  %42 = load double, ptr %1, align 8, !tbaa !111
  %43 = fcmp oeq double %42, 0x7FEFFFFFFFFFFFFF
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call double @ui_get_but_val(ptr noundef %0)
  store double %45, ptr %1, align 8, !tbaa !111
  br label %46

46:                                               ; preds = %44, %41
  %47 = load double, ptr %1, align 8, !tbaa !111
  %48 = fcmp oeq double %47, 0.000000e+00
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  br label %79

50:                                               ; preds = %28, %28
  %51 = load double, ptr %1, align 8, !tbaa !111
  %52 = fcmp oeq double %51, 0x7FEFFFFFFFFFFFFF
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call double @ui_get_but_val(ptr noundef %0)
  store double %54, ptr %1, align 8, !tbaa !111
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %57 = load ptr, ptr %56, align 8, !tbaa !92
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @RNA_property_flag(ptr noundef nonnull %57) #20
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load double, ptr %1, align 8, !tbaa !111
  %65 = fptosi double %64 to i32
  %66 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %67 = load float, ptr %66, align 4, !tbaa !117
  %68 = fptosi float %67 to i32
  %69 = and i32 %68, %65
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  br label %79

72:                                               ; preds = %59, %55
  %73 = load double, ptr %1, align 8, !tbaa !111
  %74 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %75 = load float, ptr %74, align 4, !tbaa !117
  %76 = fpext float %75 to double
  %77 = fcmp oeq double %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %63, %28, %40, %34, %49, %46, %72, %78, %18
  %80 = phi i32 [ %27, %18 ], [ 1, %78 ], [ 0, %72 ], [ 1, %49 ], [ 0, %46 ], [ 1, %40 ], [ 0, %34 ], [ %71, %63 ], [ -1, %28 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local double @ui_get_but_val(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load double, ptr %3, align 8, !tbaa !111
  br label %78

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @RNA_property_type(ptr noundef nonnull %17) #20
  switch i32 %20, label %78 [
    i32 0, label %21
    i32 1, label %33
    i32 2, label %45
    i32 4, label %57
  ]

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #20
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %23, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = tail call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %24, ptr noundef nonnull %17, i32 noundef %27) #20
  %29 = sitofp i32 %28 to double
  br label %78

30:                                               ; preds = %21
  %31 = tail call i32 @RNA_property_boolean_get(ptr noundef nonnull %24, ptr noundef nonnull %17) #20
  %32 = sitofp i32 %31 to double
  br label %78

33:                                               ; preds = %19
  %34 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #20
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %35, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %39 = load i32, ptr %38, align 8, !tbaa !93
  %40 = tail call i32 @RNA_property_int_get_index(ptr noundef nonnull %36, ptr noundef nonnull %17, i32 noundef %39) #20
  %41 = sitofp i32 %40 to double
  br label %78

42:                                               ; preds = %33
  %43 = tail call i32 @RNA_property_int_get(ptr noundef nonnull %36, ptr noundef nonnull %17) #20
  %44 = sitofp i32 %43 to double
  br label %78

45:                                               ; preds = %19
  %46 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %17) #20
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  br i1 %47, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %51 = load i32, ptr %50, align 8, !tbaa !93
  %52 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %48, ptr noundef nonnull %17, i32 noundef %51) #20
  %53 = fpext float %52 to double
  br label %78

54:                                               ; preds = %45
  %55 = tail call float @RNA_property_float_get(ptr noundef nonnull %48, ptr noundef nonnull %17) #20
  %56 = fpext float %55 to double
  br label %78

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %59 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %58, ptr noundef nonnull %17) #20
  %60 = sitofp i32 %59 to double
  br label %78

61:                                               ; preds = %15
  %62 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !99
  %64 = add i32 %63, -32
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 27)
  switch i32 %65, label %78 [
    i32 0, label %66
    i32 1, label %69
    i32 2, label %72
    i32 3, label %75
  ]

66:                                               ; preds = %61
  %67 = load i8, ptr %9, align 1, !tbaa !110
  %68 = uitofp i8 %67 to double
  br label %78

69:                                               ; preds = %61
  %70 = load i16, ptr %9, align 2, !tbaa !171
  %71 = sitofp i16 %70 to double
  br label %78

72:                                               ; preds = %61
  %73 = load i32, ptr %9, align 4, !tbaa !56
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

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_is_but_push(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !111
  %3 = call i32 @ui_is_but_push_ex(ptr noundef %0, ptr noundef nonnull %2), !range !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiFindInlink(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !108
  %10 = icmp eq i32 %9, 11776
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !219

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ null, %2 ], [ %7, %11 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local void @uiComposeLinks(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %125, label %5

5:                                                ; preds = %1, %122
  %6 = phi ptr [ %123, %122 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = icmp eq i32 %8, 11264
  br i1 %9, label %10, label %122

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp eq ptr %12, null
  br i1 %13, label %122, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !220
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = load i16, ptr %20, align 2, !tbaa !171
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %122

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %25 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  %26 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  br label %27

27:                                               ; preds = %23, %70
  %28 = phi i64 [ 0, %23 ], [ %71, %70 ]
  %29 = load ptr, ptr %16, align 8, !tbaa !62
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = load ptr, ptr %2, align 8, !tbaa !62
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %27, %43
  %35 = phi ptr [ %44, %43 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !108
  %38 = icmp eq i32 %37, 11776
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = icmp eq ptr %41, %31
  br i1 %42, label %46, label %43

43:                                               ; preds = %39, %34
  %44 = load ptr, ptr %35, align 8, !tbaa !62
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %34, !llvm.loop !219

46:                                               ; preds = %39, %43, %27
  %47 = phi ptr [ null, %27 ], [ %35, %39 ], [ null, %43 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %24, align 8, !tbaa !109
  %51 = and i32 %50, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.uiBut, ptr %47, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = and i32 %55, 67108864
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %49
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %60 = tail call ptr %59(i64 noundef 40, ptr noundef nonnull @.str.27) #20
  tail call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %60) #20
  br label %64

61:                                               ; preds = %53
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %63 = tail call ptr %62(i64 noundef 40, ptr noundef nonnull @.str.27) #20
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %63) #20
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi ptr [ %63, %61 ], [ %60, %58 ]
  %66 = phi i16 [ 0, %61 ], [ 1, %58 ]
  %67 = getelementptr inbounds %struct.uiLinkLine, ptr %65, i64 0, i32 2
  store ptr %6, ptr %67, align 8, !tbaa !157
  %68 = getelementptr inbounds %struct.uiLinkLine, ptr %65, i64 0, i32 3
  store ptr %47, ptr %68, align 8, !tbaa !155
  %69 = getelementptr inbounds %struct.uiLinkLine, ptr %65, i64 0, i32 5
  store i16 %66, ptr %69, align 2, !tbaa !210
  br label %70

70:                                               ; preds = %64, %46
  %71 = add nuw nsw i64 %28, 1
  %72 = load ptr, ptr %19, align 8, !tbaa !222
  %73 = load i16, ptr %72, align 2, !tbaa !171
  %74 = sext i16 %73 to i64
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %27, label %122, !llvm.loop !223

76:                                               ; preds = %14
  %77 = load ptr, ptr %12, align 8, !tbaa !224
  %78 = icmp eq ptr %77, null
  br i1 %78, label %122, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %77, align 8, !tbaa !62
  %81 = load ptr, ptr %2, align 8, !tbaa !62
  %82 = icmp eq ptr %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %79, %92
  %84 = phi ptr [ %93, %92 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.uiBut, ptr %84, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !108
  %87 = icmp eq i32 %86, 11776
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.uiBut, ptr %84, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = icmp eq ptr %90, %80
  br i1 %91, label %95, label %92

92:                                               ; preds = %88, %83
  %93 = load ptr, ptr %84, align 8, !tbaa !62
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %83, !llvm.loop !219

95:                                               ; preds = %88, %92, %79
  %96 = phi ptr [ null, %79 ], [ %84, %88 ], [ null, %92 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %122, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !109
  %101 = and i32 %100, 67108864
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.uiBut, ptr %96, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !109
  %106 = and i32 %105, 67108864
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103, %98
  %109 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %111 = tail call ptr %110(i64 noundef 40, ptr noundef nonnull @.str.27) #20
  tail call void @BLI_addtail(ptr noundef nonnull %109, ptr noundef %111) #20
  br label %116

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %115 = tail call ptr %114(i64 noundef 40, ptr noundef nonnull @.str.27) #20
  tail call void @BLI_addtail(ptr noundef nonnull %113, ptr noundef %115) #20
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi ptr [ %111, %108 ], [ %115, %112 ]
  %118 = phi i16 [ 1, %108 ], [ 0, %112 ]
  %119 = getelementptr inbounds %struct.uiLinkLine, ptr %117, i64 0, i32 2
  store ptr %6, ptr %119, align 8, !tbaa !157
  %120 = getelementptr inbounds %struct.uiLinkLine, ptr %117, i64 0, i32 3
  store ptr %96, ptr %120, align 8, !tbaa !155
  %121 = getelementptr inbounds %struct.uiLinkLine, ptr %117, i64 0, i32 5
  store i16 %118, ptr %121, align 2, !tbaa !210
  br label %122

122:                                              ; preds = %70, %116, %18, %10, %76, %95, %5
  %123 = load ptr, ptr %6, align 8, !tbaa !62
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %5, !llvm.loop !225

125:                                              ; preds = %122, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetButLock(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  store i8 %1, ptr %6, align 8, !tbaa !226
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  store ptr %2, ptr %7, align 8, !tbaa !227
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockClearButLock(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  store i8 0, ptr %2, align 8, !tbaa !226
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  store ptr null, ptr %3, align 8, !tbaa !227
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_delete_linkline(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.uiLink, ptr %4, i64 0, i32 7
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.uiLink, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !220
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uiLink, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  %16 = load i16, ptr %15, align 2, !tbaa !171
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !222
  %20 = load i16, ptr %19, align 2, !tbaa !171
  %21 = icmp sgt i16 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 3
  br label %28

24:                                               ; preds = %13
  store i16 0, ptr %15, align 2, !tbaa !171
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %26 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void %25(ptr noundef %26) #20
  %27 = load ptr, ptr %10, align 8, !tbaa !220
  store ptr null, ptr %27, align 8, !tbaa !62
  br label %56

28:                                               ; preds = %22, %43
  %29 = phi i64 [ 0, %22 ], [ %45, %43 ]
  %30 = phi i32 [ 0, %22 ], [ %44, %43 ]
  %31 = load ptr, ptr %10, align 8, !tbaa !220
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds ptr, ptr %32, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  %35 = load ptr, ptr %23, align 8, !tbaa !155
  %36 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = sext i32 %30 to i64
  %41 = getelementptr inbounds ptr, ptr %32, i64 %40
  store ptr %34, ptr %41, align 8, !tbaa !62
  %42 = add nsw i32 %30, 1
  br label %43

43:                                               ; preds = %28, %39
  %44 = phi i32 [ %42, %39 ], [ %30, %28 ]
  %45 = add nuw nsw i64 %29, 1
  %46 = load ptr, ptr %14, align 8, !tbaa !222
  %47 = load i16, ptr %46, align 2, !tbaa !171
  %48 = sext i16 %47 to i64
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %28, label %50, !llvm.loop !228

50:                                               ; preds = %43, %18
  %51 = phi ptr [ %19, %18 ], [ %46, %43 ]
  %52 = phi i16 [ %20, %18 ], [ %47, %43 ]
  %53 = add i16 %52, -1
  store i16 %53, ptr %51, align 2, !tbaa !171
  br label %56

54:                                               ; preds = %2
  %55 = load ptr, ptr %9, align 8, !tbaa !224
  store ptr null, ptr %55, align 8, !tbaa !62
  br label %56

56:                                               ; preds = %24, %50, %54
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %57(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_get_but_vectorf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %4, align 4, !tbaa !51
  store float %7, ptr %1, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %4, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 1
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %4, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  store float %12, ptr %13, align 4, !tbaa !51
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %19, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %20, align 4, !tbaa !51
  %21 = tail call i32 @RNA_property_type(ptr noundef nonnull %16) #20
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %25 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %24, ptr noundef nonnull %16) #20
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %24, ptr noundef nonnull %16, ptr noundef nonnull %1) #20
  br label %75

28:                                               ; preds = %23
  %29 = icmp sgt i32 %25, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %28
  %31 = tail call i32 @llvm.smin.i32(i32 %25, i32 3)
  %32 = zext nneg i32 %31 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %38, %33 ]
  %35 = trunc i64 %34 to i32
  %36 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %24, ptr noundef nonnull %16, i32 noundef %35) #20
  %37 = getelementptr inbounds float, ptr %1, i64 %34
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %32
  br i1 %39, label %75, label %33, !llvm.loop !229

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !99
  switch i32 %42, label %69 [
    i32 32, label %43
    i32 128, label %59
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = load i8, ptr %45, align 1, !tbaa !110
  %47 = uitofp i8 %46 to float
  %48 = fdiv float %47, 2.550000e+02
  store float %48, ptr %1, align 4, !tbaa !51
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !110
  %51 = uitofp i8 %50 to float
  %52 = fdiv float %51, 2.550000e+02
  %53 = getelementptr inbounds float, ptr %1, i64 1
  store float %52, ptr %53, align 4, !tbaa !51
  %54 = getelementptr inbounds i8, ptr %45, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !110
  %56 = uitofp i8 %55 to float
  %57 = fdiv float %56, 2.550000e+02
  %58 = getelementptr inbounds float, ptr %1, i64 2
  store float %57, ptr %58, align 4, !tbaa !51
  br label %75

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !98
  %62 = load float, ptr %61, align 4, !tbaa !51
  store float %62, ptr %1, align 4, !tbaa !51
  %63 = getelementptr inbounds float, ptr %61, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !51
  %65 = getelementptr inbounds float, ptr %1, i64 1
  store float %64, ptr %65, align 4, !tbaa !51
  %66 = getelementptr inbounds float, ptr %61, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !51
  %68 = getelementptr inbounds float, ptr %1, i64 2
  store float %67, ptr %68, align 4, !tbaa !51
  br label %75

69:                                               ; preds = %40
  br i1 %5, label %70, label %75

70:                                               ; preds = %69
  %71 = load ptr, ptr @stderr, align 8, !tbaa !62
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ui_get_but_vectorf) #23
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  %73 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %73, align 4, !tbaa !51
  %74 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %74, align 4, !tbaa !51
  br label %75

75:                                               ; preds = %33, %28, %27, %43, %69, %70, %59, %18
  %76 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !108
  %78 = icmp eq i32 %77, 15872
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load float, ptr %1, align 4, !tbaa !51
  %81 = getelementptr inbounds float, ptr %1, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !51
  %83 = fmul float %82, %82
  %84 = tail call float @llvm.fmuladd.f32(float %80, float %80, float %83)
  %85 = getelementptr inbounds float, ptr %1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !51
  %87 = tail call float @llvm.fmuladd.f32(float %86, float %86, float %84)
  %88 = fcmp ogt float %87, 0x38AA95A5C0000000
  br i1 %88, label %89, label %98

89:                                               ; preds = %79
  %90 = tail call float @sqrtf(float noundef %87) #20
  %91 = fdiv float 1.000000e+00, %90
  %92 = load float, ptr %1, align 4, !tbaa !51
  %93 = fmul float %92, %91
  store float %93, ptr %1, align 4, !tbaa !51
  %94 = load float, ptr %81, align 4, !tbaa !51
  %95 = fmul float %91, %94
  store float %95, ptr %81, align 4, !tbaa !51
  %96 = load float, ptr %85, align 4, !tbaa !51
  %97 = fmul float %91, %96
  br label %99

98:                                               ; preds = %79
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  store float 0.000000e+00, ptr %81, align 4, !tbaa !51
  br label %99

99:                                               ; preds = %89, %98
  %100 = phi float [ 0.000000e+00, %98 ], [ %97, %89 ]
  store float %100, ptr %85, align 4, !tbaa !51
  br label %101

101:                                              ; preds = %99, %75
  ret void
}

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #7

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @ui_set_but_vectorf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %1, align 4, !tbaa !51
  store float %7, ptr %4, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %4, i64 1
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %4, i64 2
  store float %12, ptr %13, align 4, !tbaa !51
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @RNA_property_type(ptr noundef nonnull %16) #20
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %23 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %22, ptr noundef nonnull %16) #20
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @RNA_property_float_set_array(ptr noundef nonnull %22, ptr noundef nonnull %16, ptr noundef %1) #20
  br label %67

26:                                               ; preds = %21
  %27 = icmp sgt i32 %23, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.smin.i32(i32 %23, i32 3)
  %30 = zext nneg i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %36, %31 ]
  %33 = getelementptr inbounds float, ptr %1, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = trunc i64 %32 to i32
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %22, ptr noundef nonnull %16, i32 noundef %35, float noundef %34) #20
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %67, label %31, !llvm.loop !230

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !99
  switch i32 %40, label %67 [
    i32 32, label %41
    i32 128, label %57
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = load float, ptr %1, align 4, !tbaa !51
  %45 = tail call float @llvm.fmuladd.f32(float %44, float 2.550000e+02, float 5.000000e-01)
  %46 = fptoui float %45 to i8
  store i8 %46, ptr %43, align 1, !tbaa !110
  %47 = getelementptr inbounds float, ptr %1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !51
  %49 = tail call float @llvm.fmuladd.f32(float %48, float 2.550000e+02, float 5.000000e-01)
  %50 = fptoui float %49 to i8
  %51 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %50, ptr %51, align 1, !tbaa !110
  %52 = getelementptr inbounds float, ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = tail call float @llvm.fmuladd.f32(float %53, float 2.550000e+02, float 5.000000e-01)
  %55 = fptoui float %54 to i8
  %56 = getelementptr inbounds i8, ptr %43, i64 2
  store i8 %55, ptr %56, align 1, !tbaa !110
  br label %67

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  %60 = load float, ptr %1, align 4, !tbaa !51
  store float %60, ptr %59, align 4, !tbaa !51
  %61 = getelementptr inbounds float, ptr %1, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !51
  %63 = getelementptr inbounds float, ptr %59, i64 1
  store float %62, ptr %63, align 4, !tbaa !51
  %64 = getelementptr inbounds float, ptr %1, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !51
  %66 = getelementptr inbounds float, ptr %59, i64 2
  store float %65, ptr %66, align 4, !tbaa !51
  br label %67

67:                                               ; preds = %31, %26, %38, %25, %41, %57, %18
  ret void
}

declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_float_set_index(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_is_but_float(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = icmp eq i32 %3, 128
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #20
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %13, %5, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %5 ], [ 1, %13 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_is_but_bool(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !108
  switch i32 %3, label %4 [
    i32 1536, label %12
    i32 4608, label %12
    i32 6656, label %12
    i32 17408, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %4
  br label %12

12:                                               ; preds = %8, %1, %1, %1, %1, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %8 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ui_is_but_unit(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %7 = load i8, ptr %6, align 8, !tbaa !124
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = shl nuw nsw i32 %8, 16
  br label %19

16:                                               ; preds = %10
  %17 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %12) #20
  %18 = and i32 %17, 16711680
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.UnitSettings, ptr %5, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !125
  %25 = icmp eq i8 %24, 2
  %26 = icmp eq i32 %20, 327680
  %27 = and i1 %26, %25
  %28 = icmp eq i32 %20, 393216
  %29 = or i1 %28, %27
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.UnitSettings, ptr %5, i64 0, i32 1
  %32 = load i8, ptr %31, align 4, !tbaa !127
  %33 = icmp ne i8 %32, 0
  %34 = or i1 %26, %33
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %30, %22, %19
  %37 = phi i8 [ 0, %19 ], [ 0, %22 ], [ %35, %30 ]
  ret i8 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uiButGetUnitType(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %3 = load i8, ptr %2, align 8, !tbaa !124
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = shl nuw nsw i32 %4, 16
  br label %15

12:                                               ; preds = %6
  %13 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %8) #20
  %14 = and i32 %13, 16711680
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_is_but_compatible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !99
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !92
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
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load ptr, ptr %19, align 8, !tbaa !232
  %34 = load ptr, ptr %22, align 8, !tbaa !232
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = tail call i32 @RNA_property_type(ptr noundef nonnull %16) #20
  %38 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = tail call i32 @RNA_property_type(ptr noundef %39) #20
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load ptr, ptr %15, align 8, !tbaa !92
  %44 = tail call i32 @RNA_property_subtype(ptr noundef %43) #20
  %45 = load ptr, ptr %38, align 8, !tbaa !92
  %46 = tail call i32 @RNA_property_subtype(ptr noundef %45) #20
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %14
  br label %49

49:                                               ; preds = %42, %36, %32, %26, %18, %8, %2, %48
  %50 = phi i8 [ 1, %48 ], [ 0, %2 ], [ 0, %8 ], [ 0, %18 ], [ 0, %26 ], [ 0, %32 ], [ 0, %36 ], [ 0, %42 ]
  ret i8 %50
}

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_is_but_rna_valid(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %7 = tail call zeroext i8 @RNA_struct_contains_property(ptr noundef nonnull %6, ptr noundef nonnull %3) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %2, align 8, !tbaa !92
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %10, ptr noundef %11)
  br label %13

13:                                               ; preds = %1, %5, %9
  %14 = phi i8 [ 0, %9 ], [ 1, %5 ], [ 1, %1 ]
  ret i8 %14
}

declare zeroext i8 @RNA_struct_contains_property(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #7

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #7

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_set_but_val(ptr noundef %0, double noundef %1) local_unnamed_addr #6 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %9 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %8, ptr noundef nonnull %5) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #20
  switch i32 %12, label %49 [
    i32 0, label %13
    i32 1, label %22
    i32 2, label %31
    i32 4, label %40
  ]

13:                                               ; preds = %11
  %14 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %18 = load i32, ptr %17, align 8, !tbaa !93
  %19 = fptosi double %1 to i32
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %18, i32 noundef %19) #20
  br label %49

20:                                               ; preds = %13
  %21 = fptosi double %1 to i32
  tail call void @RNA_property_boolean_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %21) #20
  br label %49

22:                                               ; preds = %11
  %23 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = fptosi double %1 to i32
  tail call void @RNA_property_int_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %27, i32 noundef %28) #20
  br label %49

29:                                               ; preds = %22
  %30 = fptosi double %1 to i32
  tail call void @RNA_property_int_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %30) #20
  br label %49

31:                                               ; preds = %11
  %32 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %5) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %36 = load i32, ptr %35, align 8, !tbaa !93
  %37 = fptrunc double %1 to float
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %36, float noundef %37) #20
  br label %49

38:                                               ; preds = %31
  %39 = fptrunc double %1 to float
  tail call void @RNA_property_float_set(ptr noundef nonnull %8, ptr noundef nonnull %5, float noundef %39) #20
  br label %49

40:                                               ; preds = %11
  %41 = tail call i32 @RNA_property_flag(ptr noundef nonnull %5) #20
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  %44 = fptosi double %1 to i32
  br i1 %43, label %48, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %8, ptr noundef nonnull %5) #20
  %47 = xor i32 %46, %44
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %47) #20
  br label %49

48:                                               ; preds = %40
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef %44) #20
  br label %49

49:                                               ; preds = %20, %16, %29, %25, %38, %34, %48, %45, %11, %7
  store double 0x7FEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !111
  br label %109

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !99
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 27)
  switch i32 %53, label %76 [
    i32 0, label %109
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
  store double %58, ptr %3, align 8, !tbaa !111
  br label %76

59:                                               ; preds = %50
  %60 = fadd double %1, 5.000000e-01
  %61 = tail call double @llvm.floor.f64(double %60)
  %62 = fptosi double %61 to i16
  %63 = sitofp i16 %62 to double
  store double %63, ptr %3, align 8, !tbaa !111
  br label %76

64:                                               ; preds = %50
  %65 = fadd double %1, 5.000000e-01
  %66 = tail call double @llvm.floor.f64(double %65)
  %67 = fptosi double %66 to i32
  %68 = sitofp i32 %67 to double
  store double %68, ptr %3, align 8, !tbaa !111
  br label %76

69:                                               ; preds = %50
  %70 = fptrunc double %1 to float
  %71 = fcmp oge float %70, 0xBEE4F8B580000000
  %72 = fcmp ole float %70, 0x3EE4F8B580000000
  %73 = and i1 %71, %72
  %74 = fpext float %70 to double
  %75 = select i1 %73, double 0.000000e+00, double %74
  store double %75, ptr %3, align 8, !tbaa !111
  br label %76

76:                                               ; preds = %50, %59, %69, %64, %54
  %77 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %78 = load ptr, ptr %77, align 8, !tbaa !113
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load double, ptr %3, align 8, !tbaa !111
  store double %81, ptr %78, align 8, !tbaa !111
  br label %109

82:                                               ; preds = %76
  %83 = add i32 %52, -32
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 27)
  switch i32 %84, label %109 [
    i32 0, label %85
    i32 1, label %91
    i32 2, label %97
    i32 3, label %103
  ]

85:                                               ; preds = %82
  %86 = load double, ptr %3, align 8, !tbaa !111
  %87 = fptoui double %86 to i8
  %88 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !98
  store i8 %87, ptr %89, align 1, !tbaa !110
  %90 = uitofp i8 %87 to double
  store double %90, ptr %3, align 8, !tbaa !111
  br label %109

91:                                               ; preds = %82
  %92 = load double, ptr %3, align 8, !tbaa !111
  %93 = fptosi double %92 to i16
  %94 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !98
  store i16 %93, ptr %95, align 2, !tbaa !171
  %96 = sitofp i16 %93 to double
  store double %96, ptr %3, align 8, !tbaa !111
  br label %109

97:                                               ; preds = %82
  %98 = load double, ptr %3, align 8, !tbaa !111
  %99 = fptosi double %98 to i32
  %100 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %101 = load ptr, ptr %100, align 8, !tbaa !98
  store i32 %99, ptr %101, align 4, !tbaa !56
  %102 = sitofp i32 %99 to double
  store double %102, ptr %3, align 8, !tbaa !111
  br label %109

103:                                              ; preds = %82
  %104 = load double, ptr %3, align 8, !tbaa !111
  %105 = fptrunc double %104 to float
  %106 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %107 = load ptr, ptr %106, align 8, !tbaa !98
  store float %105, ptr %107, align 4, !tbaa !51
  %108 = fpext float %105 to double
  store double %108, ptr %3, align 8, !tbaa !111
  br label %109

109:                                              ; preds = %82, %50, %85, %97, %103, %91, %80, %49
  %110 = call i32 @ui_is_but_push_ex(ptr noundef %0, ptr noundef nonnull %3), !range !112
  switch i32 %110, label %119 [
    i32 1, label %111
    i32 0, label %115
  ]

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !109
  %114 = or i32 %113, 1
  store i32 %114, ptr %112, align 8, !tbaa !109
  br label %119

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !109
  %118 = and i32 %117, -2
  store i32 %118, ptr %116, align 8, !tbaa !109
  br label %119

119:                                              ; preds = %109, %111, %115
  ret void
}

declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @RNA_property_int_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ui_get_but_string_max_length(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !108
  switch i32 %3, label %8 [
    i32 3072, label %4
    i32 20992, label %4
    i32 26624, label %4
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %6 = load float, ptr %5, align 4, !tbaa !117
  %7 = fptosi float %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 400, %1 ]
  ret i32 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_get_but_drag_multi_edit(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 69
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13, !llvm.loop !233

13:                                               ; preds = %9, %5
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_convert_to_unit_alt_name(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 49
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %9 = load i8, ptr %8, align 8, !tbaa !124
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = shl nuw nsw i32 %10, 16
  br label %21

18:                                               ; preds = %12
  %19 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %14) #20
  %20 = and i32 %19, 16711680
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.UnitSettings, ptr %7, i64 0, i32 2
  %26 = load i8, ptr %25, align 1, !tbaa !125
  %27 = icmp eq i8 %26, 2
  %28 = icmp eq i32 %22, 327680
  %29 = and i1 %28, %27
  %30 = icmp eq i32 %22, 393216
  %31 = or i1 %30, %29
  br i1 %31, label %60, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.UnitSettings, ptr %7, i64 0, i32 1
  %34 = load i8, ptr %33, align 4, !tbaa !127
  %35 = icmp ne i8 %34, 0
  %36 = or i1 %28, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !121
  %39 = getelementptr inbounds %struct.uiBlock, ptr %38, i64 0, i32 49
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = load i8, ptr %8, align 8, !tbaa !124
  %42 = zext i8 %41 to i32
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %46) #20
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %37, %44, %48
  %53 = phi i32 [ %51, %48 ], [ %42, %44 ], [ %42, %37 ]
  %54 = tail call ptr @BLI_strdup(ptr noundef %1) #20
  %55 = trunc i64 %2 to i32
  %56 = getelementptr inbounds %struct.UnitSettings, ptr %40, i64 0, i32 1
  %57 = load i8, ptr %56, align 4, !tbaa !127
  %58 = zext i8 %57 to i32
  tail call void @bUnit_ToUnitAltName(ptr noundef %1, i32 noundef %55, ptr noundef %54, i32 noundef %58, i32 noundef %53) #20
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %59(ptr noundef %54) #20
  br label %60

60:                                               ; preds = %21, %24, %52, %32
  ret void
}

declare void @bUnit_ToUnitAltName(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_get_but_string_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !108
  switch i32 %13, label %53 [
    i32 3072, label %14
    i32 20992, label %14
    i32 26624, label %14
  ]

14:                                               ; preds = %11, %11, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %15 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #20
  switch i32 %15, label %40 [
    i32 3, label %16
    i32 4, label %21
    i32 5, label %35
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %18 = load ptr, ptr %8, align 8, !tbaa !92
  %19 = trunc i64 %2 to i32
  %20 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %17, ptr noundef %18, ptr noundef %1, i32 noundef %19, ptr noundef nonnull %6) #20
  store ptr %20, ptr %5, align 8, !tbaa !62
  br label %40

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %8, align 8, !tbaa !92
  %24 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %22, ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %26 = load ptr, ptr %25, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.uiBlock, ptr %26, i64 0, i32 48
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = load ptr, ptr %8, align 8, !tbaa !92
  %30 = call zeroext i8 @RNA_property_enum_name(ptr noundef %28, ptr noundef nonnull %22, ptr noundef %29, i32 noundef %24, ptr noundef nonnull %5) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %5, align 8, !tbaa !62
  %34 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %33, i64 noundef %2) #20
  store ptr %1, ptr %5, align 8, !tbaa !62
  br label %40

35:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %37 = load ptr, ptr %8, align 8, !tbaa !92
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %36, ptr noundef %37) #20
  %38 = trunc i64 %2 to i32
  %39 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %38, ptr noundef nonnull %6) #20
  store ptr %39, ptr %5, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  br label %40

40:                                               ; preds = %14, %21, %32, %35, %16
  %41 = load ptr, ptr %5, align 8, !tbaa !62
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8 0, ptr %1, align 1, !tbaa !110
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
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %51(ptr noundef nonnull %41) #20
  br label %52

52:                                               ; preds = %44, %46, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %235

53:                                               ; preds = %11, %4
  %54 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !108
  switch i32 %55, label %64 [
    i32 3072, label %56
    i32 20992, label %60
    i32 26624, label %60
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  %59 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %58, i64 noundef %2) #20
  br label %235

60:                                               ; preds = %53, %53
  %61 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %62, i64 noundef %2) #20
  br label %235

64:                                               ; preds = %53
  %65 = tail call zeroext i8 @ui_but_anim_expression_get(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %235

67:                                               ; preds = %64
  %68 = tail call double @ui_get_but_val(ptr noundef %0)
  %69 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !99
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !98
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %72, %67
  %77 = load ptr, ptr %8, align 8, !tbaa !92
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @RNA_property_type(ptr noundef nonnull %77) #20
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %76
  %83 = fptosi double %68 to i32
  %84 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.5, i32 noundef %83) #20
  br label %235

85:                                               ; preds = %79, %72
  %86 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %87 = load ptr, ptr %86, align 8, !tbaa !121
  %88 = getelementptr inbounds %struct.uiBlock, ptr %87, i64 0, i32 49
  %89 = load ptr, ptr %88, align 8, !tbaa !123
  %90 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  %91 = load i8, ptr %90, align 8, !tbaa !124
  %92 = zext i8 %91 to i32
  %93 = icmp eq i8 %91, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load ptr, ptr %8, align 8, !tbaa !92
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94, %85
  %98 = shl nuw nsw i32 %92, 16
  br label %102

99:                                               ; preds = %94
  %100 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %95) #20
  %101 = and i32 %100, 16711680
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %193, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.UnitSettings, ptr %89, i64 0, i32 2
  %107 = load i8, ptr %106, align 1, !tbaa !125
  %108 = icmp eq i8 %107, 2
  %109 = icmp eq i32 %103, 327680
  %110 = and i1 %109, %108
  %111 = icmp eq i32 %103, 393216
  %112 = or i1 %111, %110
  br i1 %112, label %193, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.UnitSettings, ptr %89, i64 0, i32 1
  %115 = load i8, ptr %114, align 4, !tbaa !127
  %116 = icmp ne i8 %115, 0
  %117 = or i1 %109, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %113
  %119 = trunc i64 %2 to i32
  %120 = load ptr, ptr %86, align 8, !tbaa !121
  %121 = getelementptr inbounds %struct.uiBlock, ptr %120, i64 0, i32 49
  %122 = load ptr, ptr %121, align 8, !tbaa !123
  %123 = getelementptr inbounds %struct.UnitSettings, ptr %122, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !128
  %125 = load i8, ptr %90, align 8, !tbaa !124
  %126 = zext i8 %125 to i32
  %127 = icmp eq i8 %125, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %118
  %129 = load ptr, ptr %8, align 8, !tbaa !92
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %129) #20
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %131, %128, %118
  %136 = phi i32 [ %134, %131 ], [ %126, %128 ], [ %126, %118 ]
  %137 = load float, ptr %122, align 4, !tbaa !129
  %138 = fcmp olt float %137, 0x3F1A36E2E0000000
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store float 1.000000e+00, ptr %122, align 4, !tbaa !129
  br label %140

140:                                              ; preds = %139, %135
  %141 = icmp eq i32 %3, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %144 = load float, ptr %143, align 4, !tbaa !130
  %145 = fptosi float %144 to i32
  %146 = icmp sgt i32 %145, 7
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = icmp eq i32 %145, -1
  %149 = select i1 %148, i32 2, i32 %145
  br label %150

150:                                              ; preds = %140, %142, %147
  %151 = phi i32 [ %149, %147 ], [ 7, %142 ], [ %3, %140 ]
  %152 = trunc i16 %124 to i8
  %153 = and i8 %152, 1
  %154 = load ptr, ptr %86, align 8, !tbaa !121
  %155 = getelementptr inbounds %struct.uiBlock, ptr %154, i64 0, i32 49
  %156 = load ptr, ptr %155, align 8, !tbaa !123
  %157 = load i8, ptr %90, align 8, !tbaa !124
  %158 = zext i8 %157 to i32
  %159 = icmp eq i8 %157, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %150
  %161 = load ptr, ptr %8, align 8, !tbaa !92
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160, %150
  %164 = shl nuw nsw i32 %158, 16
  br label %168

165:                                              ; preds = %160
  %166 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %161) #20
  %167 = and i32 %166, 16711680
  br label %168

168:                                              ; preds = %165, %163
  %169 = phi i32 [ %164, %163 ], [ %167, %165 ]
  %170 = icmp eq i32 %169, 393216
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load ptr, ptr %86, align 8, !tbaa !121
  %173 = getelementptr inbounds %struct.uiBlock, ptr %172, i64 0, i32 48
  %174 = load ptr, ptr %173, align 8, !tbaa !122
  %175 = tail call ptr @CTX_data_scene(ptr noundef %174) #20
  %176 = getelementptr inbounds %struct.Scene, ptr %175, i64 0, i32 22, i32 65
  %177 = load float, ptr %176, align 4, !tbaa !131
  %178 = fpext float %177 to double
  %179 = fmul double %68, %178
  %180 = getelementptr inbounds %struct.Scene, ptr %175, i64 0, i32 22, i32 55
  %181 = load i16, ptr %180, align 4, !tbaa !149
  %182 = sitofp i16 %181 to double
  %183 = fdiv double %179, %182
  br label %187

184:                                              ; preds = %168
  %185 = lshr exact i32 %169, 16
  %186 = tail call double @BKE_scene_unit_scale(ptr noundef %156, i32 noundef %185, double noundef %68) #20
  br label %187

187:                                              ; preds = %171, %184
  %188 = phi double [ %183, %171 ], [ %186, %184 ]
  %189 = getelementptr inbounds %struct.UnitSettings, ptr %122, i64 0, i32 1
  %190 = load i8, ptr %189, align 4, !tbaa !127
  %191 = zext i8 %190 to i32
  %192 = tail call i64 @bUnit_AsString(ptr noundef %1, i32 noundef %119, double noundef %188, i32 noundef %151, i32 noundef %191, i32 noundef %136, i8 noundef zeroext %153, i8 noundef zeroext 0) #20
  br label %235

193:                                              ; preds = %102, %105, %113
  %194 = icmp eq i32 %3, -1
  br i1 %194, label %195, label %232

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %197 = load float, ptr %196, align 4, !tbaa !130
  %198 = fptosi float %197 to i32
  %199 = load ptr, ptr %86, align 8, !tbaa !121
  %200 = getelementptr inbounds %struct.uiBlock, ptr %199, i64 0, i32 49
  %201 = load ptr, ptr %200, align 8, !tbaa !123
  %202 = load i8, ptr %90, align 8, !tbaa !124
  %203 = zext i8 %202 to i32
  %204 = icmp eq i8 %202, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %195
  %206 = load ptr, ptr %8, align 8, !tbaa !92
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205, %195
  %209 = shl nuw nsw i32 %203, 16
  br label %213

210:                                              ; preds = %205
  %211 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %206) #20
  %212 = and i32 %211, 16711680
  br label %213

213:                                              ; preds = %210, %208
  %214 = phi i32 [ %209, %208 ], [ %212, %210 ]
  %215 = getelementptr inbounds %struct.UnitSettings, ptr %201, i64 0, i32 2
  %216 = load i8, ptr %215, align 1, !tbaa !125
  %217 = icmp eq i8 %216, 2
  %218 = icmp eq i32 %214, 327680
  %219 = and i1 %218, %217
  %220 = icmp slt i32 %198, 5
  %221 = select i1 %219, i1 %220, i1 false
  br i1 %221, label %229, label %222

222:                                              ; preds = %213
  %223 = icmp eq i32 %198, -1
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %226 = load float, ptr %225, align 4, !tbaa !117
  %227 = fcmp olt float %226, 0x4024008320000000
  %228 = select i1 %227, i32 3, i32 2
  br label %229

229:                                              ; preds = %213, %222, %224
  %230 = phi i32 [ %228, %224 ], [ %198, %222 ], [ 5, %213 ]
  %231 = tail call i32 @uiFloatPrecisionCalc(i32 noundef %230, double noundef %68) #20
  br label %232

232:                                              ; preds = %193, %229
  %233 = phi i32 [ %231, %229 ], [ %3, %193 ]
  %234 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.4, i32 noundef %233, double noundef %68) #20
  br label %235

235:                                              ; preds = %82, %232, %187, %64, %56, %60, %52
  ret void
}

declare ptr @RNA_property_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ui_but_anim_expression_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_get_but_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  tail call void @ui_get_but_string_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef -1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noundef zeroext i8 @ui_set_but_string_eval_num(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 {
  %5 = tail call double @strtod(ptr nocapture noundef nonnull %2, ptr noundef null) #20
  store double %5, ptr %3, align 8, !tbaa !111
  ret i8 1
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ui_set_but_string(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !108
  switch i32 %12, label %53 [
    i32 3072, label %13
    i32 20992, label %13
    i32 26624, label %13
  ]

13:                                               ; preds = %10, %10, %10
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %15 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %14, ptr noundef nonnull %8) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %116, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8, !tbaa !92
  %19 = tail call i32 @RNA_property_type(ptr noundef %18) #20
  switch i32 %19, label %50 [
    i32 3, label %20
    i32 5, label %22
    i32 4, label %37
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 8, !tbaa !92
  tail call void @RNA_property_string_set(ptr noundef nonnull %14, ptr noundef %21, ptr noundef %2) #20
  br label %50

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %23 = load i8, ptr %2, align 1, !tbaa !110
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !234
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 58
  %28 = load ptr, ptr %27, align 8, !tbaa !235
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef nonnull %28, ptr noundef nonnull %2, ptr noundef nonnull %5) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %22
  %34 = phi ptr [ @PointerRNA_NULL, %22 ], [ %5, %30 ]
  %35 = load ptr, ptr %7, align 8, !tbaa !92
  call void @RNA_property_pointer_set(ptr noundef nonnull %14, ptr noundef %35, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %34) #20
  br label %36

36:                                               ; preds = %33, %25, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %50

37:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %38 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %39 = load ptr, ptr %38, align 8, !tbaa !121
  %40 = getelementptr inbounds %struct.uiBlock, ptr %39, i64 0, i32 48
  %41 = load ptr, ptr %40, align 8, !tbaa !122
  %42 = load ptr, ptr %7, align 8, !tbaa !92
  %43 = call zeroext i8 @RNA_property_enum_value(ptr noundef %41, ptr noundef nonnull %14, ptr noundef %42, ptr noundef %2, ptr noundef nonnull %6) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 8, !tbaa !92
  %47 = load i32, ptr %6, align 4, !tbaa !56
  call void @RNA_property_enum_set(ptr noundef nonnull %14, ptr noundef %46, i32 noundef %47) #20
  br label %48

48:                                               ; preds = %37, %45
  %49 = phi i8 [ 1, %45 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %50

50:                                               ; preds = %17, %48, %36, %20
  %51 = phi i1 [ false, %20 ], [ false, %36 ], [ false, %48 ], [ true, %17 ]
  %52 = phi i8 [ 1, %20 ], [ 1, %36 ], [ %49, %48 ], [ undef, %17 ]
  br i1 %51, label %116, label %117

53:                                               ; preds = %10, %3
  %54 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !108
  switch i32 %55, label %75 [
    i32 3072, label %56
    i32 20992, label %68
    i32 26624, label %68
  ]

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @ui_is_but_utf8(ptr noundef %1) #20
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  %61 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %62 = load float, ptr %61, align 4, !tbaa !117
  %63 = fptoui float %62 to i64
  br i1 %58, label %66, label %64

64:                                               ; preds = %56
  %65 = tail call ptr @BLI_strncpy_utf8(ptr noundef %60, ptr noundef %2, i64 noundef %63) #20
  br label %117

66:                                               ; preds = %56
  %67 = tail call ptr @BLI_strncpy(ptr noundef %60, ptr noundef %2, i64 noundef %63) #20
  br label %117

68:                                               ; preds = %53, %53
  %69 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %72 = load float, ptr %71, align 4, !tbaa !117
  %73 = fptoui float %72 to i64
  %74 = tail call ptr @BLI_strncpy(ptr noundef %70, ptr noundef %2, i64 noundef %73) #20
  br label %117

75:                                               ; preds = %53
  %76 = tail call zeroext i8 @ui_but_anim_expression_set(ptr noundef %1, ptr noundef %2) #20
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  %79 = load i8, ptr %2, align 1, !tbaa !110
  %80 = icmp eq i8 %79, 35
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %2, i64 1
  %83 = tail call zeroext i8 @ui_but_anim_expression_create(ptr noundef %1, ptr noundef nonnull %82) #20
  br label %117

84:                                               ; preds = %78
  %85 = tail call double @strtod(ptr nocapture noundef nonnull %2, ptr noundef null) #20
  %86 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !99
  %88 = icmp eq i32 %87, 128
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !98
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %89, %84
  %94 = load ptr, ptr %7, align 8, !tbaa !92
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @RNA_property_type(ptr noundef nonnull %94) #20
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %93
  %100 = fadd double %85, 5.000000e-01
  %101 = tail call double @llvm.floor.f64(double %100)
  %102 = fptosi double %101 to i32
  %103 = sitofp i32 %102 to double
  br label %104

104:                                              ; preds = %96, %89, %99
  %105 = phi double [ %103, %99 ], [ %85, %89 ], [ %85, %96 ]
  %106 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 20
  %107 = load float, ptr %106, align 8, !tbaa !116
  %108 = fpext float %107 to double
  %109 = fcmp olt double %105, %108
  %110 = select i1 %109, double %108, double %105
  %111 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %112 = load float, ptr %111, align 4, !tbaa !117
  %113 = fpext float %112 to double
  %114 = fcmp ogt double %110, %113
  %115 = select i1 %114, double %113, double %110
  tail call void @ui_set_but_val(ptr noundef %1, double noundef %115)
  br label %117

116:                                              ; preds = %50, %13
  br label %117

117:                                              ; preds = %75, %64, %66, %50, %116, %104, %81, %68
  %118 = phi i8 [ %52, %50 ], [ 0, %116 ], [ 1, %68 ], [ %83, %81 ], [ 1, %104 ], [ 1, %66 ], [ 1, %64 ], [ 1, %75 ]
  ret i8 %118
}

declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #7

declare i32 @RNA_property_collection_lookup_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @RNA_property_enum_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ui_is_but_utf8(ptr noundef) local_unnamed_addr #7

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare zeroext i8 @ui_but_anim_expression_set(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ui_but_anim_expression_create(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_set_but_default(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = icmp eq i8 %2, 0
  %6 = zext i8 %1 to i32
  br i1 %5, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.6, i8 noundef zeroext 0) #20
  %9 = tail call ptr @ui_handle_afterfunc_add_operator(ptr noundef %8, i32 noundef 6, i8 noundef zeroext 1) #20
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %6) #20
  br label %12

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @WM_operator_properties_create(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #20
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef %6) #20
  %11 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 6, ptr noundef nonnull %4) #20
  call void @WM_operator_properties_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @ui_handle_afterfunc_add_operator(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #7

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @uiFreeBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  tail call void @UI_butstore_clear(ptr noundef %1) #20
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call fastcc void @ui_free_but(ptr noundef %0, ptr noundef nonnull %7)
  %8 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !236

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 49
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %15(ptr noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !237
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %21(ptr noundef nonnull %18) #20
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 8
  tail call void @CTX_store_free_list(ptr noundef nonnull %23) #20
  %24 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 45
  tail call void @BLI_freelistN(ptr noundef nonnull %24) #20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %25(ptr noundef %1) #20
  ret void
}

declare void @UI_butstore_clear(ptr noundef) local_unnamed_addr #7

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #7

declare void @CTX_store_free_list(ptr noundef) local_unnamed_addr #7

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @uiFreeBlocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BLI_pophead(ptr noundef %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @uiFreeBlock(ptr noundef %0, ptr noundef nonnull %6)
  %7 = tail call ptr @BLI_pophead(ptr noundef %1) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !238

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %17
  %6 = phi ptr [ %7, %17 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 36
  %13 = load i8, ptr %12, align 1, !tbaa !241
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %6) #20
  tail call void @uiFreeBlock(ptr noundef %0, ptr noundef nonnull %6)
  br label %17

16:                                               ; preds = %11
  store i8 0, ptr %12, align 1, !tbaa !241
  br label %17

17:                                               ; preds = %5, %16, %15
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %5, !llvm.loop !242

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiBlockSetRegion(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 9
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 104) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 36
  store i8 0, ptr %8, align 1, !tbaa !241
  %9 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 46
  store ptr null, ptr %10, align 8, !tbaa !240
  br label %11

11:                                               ; preds = %7, %2
  tail call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 4
  store ptr %5, ptr %12, align 8, !tbaa !103
  ret void
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %10 = tail call ptr %9(i64 noundef 680, ptr noundef nonnull @.str.8) #20
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 36
  store i8 1, ptr %11, align 1, !tbaa !241
  %12 = trunc i16 %3 to i8
  %13 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 30
  store i8 %12, ptr %13, align 1, !tbaa !243
  %14 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 48
  store ptr %0, ptr %14, align 8, !tbaa !122
  %15 = icmp eq ptr %8, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 51
  store i8 1, ptr %17, align 4, !tbaa !244
  %18 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 52
  %19 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 45
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #20
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %22 = tail call ptr %21(i64 noundef 8, ptr noundef nonnull @.str.9) #20
  %23 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 49
  store ptr %22, ptr %23, align 8, !tbaa !123
  %24 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %22, align 4
  br label %26

26:                                               ; preds = %16, %4
  %27 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 9
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %2, i64 noundef 128) #20
  %29 = icmp eq ptr %1, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %32 = tail call ptr @BLI_findstring(ptr noundef nonnull %31, ptr noundef nonnull %27, i32 noundef 104) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uiBlock, ptr %32, i64 0, i32 36
  store i8 0, ptr %35, align 1, !tbaa !241
  %36 = getelementptr inbounds %struct.uiBlock, ptr %32, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.uiBlock, ptr %32, i64 0, i32 46
  store ptr null, ptr %37, align 8, !tbaa !240
  br label %38

38:                                               ; preds = %30, %34
  tail call void @BLI_addhead(ptr noundef nonnull %31, ptr noundef %10) #20
  %39 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 4
  store ptr %32, ptr %39, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !245
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = sext i16 %41 to i32
  %45 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 10
  tail call void @wm_subwindow_matrix_get(ptr noundef %7, i32 noundef %44, ptr noundef nonnull %45) #20
  %46 = load i16, ptr %40, align 4, !tbaa !245
  %47 = sext i16 %46 to i32
  call void @wm_subwindow_size_get(ptr noundef %7, i32 noundef %47, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %48 = load i32, ptr %5, align 4, !tbaa !56
  %49 = sitofp i32 %48 to float
  %50 = load float, ptr %45, align 8, !tbaa !51
  %51 = fmul float %50, %49
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fdiv float 2.000000e+00, %52
  %54 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 12
  store float %53, ptr %54, align 8, !tbaa !205
  br label %77

55:                                               ; preds = %26, %38
  %56 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !246
  %58 = getelementptr inbounds %struct.bScreen, ptr %57, i64 0, i32 18
  %59 = load i16, ptr %58, align 2, !tbaa !247
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 10
  tail call void @wm_subwindow_matrix_get(ptr noundef %7, i32 noundef %60, ptr noundef nonnull %61) #20
  %62 = load ptr, ptr %56, align 8, !tbaa !246
  %63 = getelementptr inbounds %struct.bScreen, ptr %62, i64 0, i32 18
  %64 = load i16, ptr %63, align 2, !tbaa !247
  %65 = sext i16 %64 to i32
  call void @wm_subwindow_size_get(ptr noundef %7, i32 noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %66 = load i32, ptr %5, align 4, !tbaa !56
  %67 = sitofp i32 %66 to float
  %68 = load float, ptr %61, align 8, !tbaa !51
  %69 = fmul float %68, %67
  %70 = call float @llvm.fabs.f32(float %69)
  %71 = fdiv float 2.000000e+00, %70
  %72 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 12
  store float %71, ptr %72, align 8, !tbaa !205
  %73 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 31
  store i8 1, ptr %73, align 8, !tbaa !162
  %74 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  %75 = load i32, ptr %74, align 8, !tbaa !34
  %76 = or i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !34
  br label %77

77:                                               ; preds = %55, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %10
}

declare void @wm_subwindow_matrix_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @wm_subwindow_size_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @uiGetBlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 104) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetEmboss(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 30
  store i8 %1, ptr %3, align 1, !tbaa !243
  ret void
}

declare zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @WM_key_event_string(i16 noundef signext) local_unnamed_addr #7

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockBeginAlign(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = and i32 %3, 245760
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -245761
  store i32 %7, ptr %2, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, ptr %2, align 8, !tbaa !34
  %10 = or i32 %9, 131072
  store i32 %10, ptr %2, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 28
  %12 = load i16, ptr %11, align 4, !tbaa !249
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4, !tbaa !249
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ui_but_can_align(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !108
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

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_block_display_get(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 52
  %3 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %2) #20
  ret ptr %3
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_block_to_display_space_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 52
  %4 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %3) #20
  tail call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %1, ptr noundef %4) #20
  ret void
}

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ui_block_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 52
  %4 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %3) #20
  tail call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %1, ptr noundef %4) #20
  ret void
}

declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  tail call void @ui_check_but(ptr noundef %15)
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) unnamed_addr #6 {
  %15 = and i32 %1, 224
  %16 = icmp ne i32 %15, 0
  %17 = icmp eq ptr %8, null
  %18 = and i1 %16, %17
  br i1 %18, label %168, label %19

19:                                               ; preds = %14
  %20 = and i32 %1, 32256
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %22 = tail call ptr %21(i64 noundef 1000, ptr noundef nonnull @.str.28) #20
  %23 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 4
  store i32 %20, ptr %23, align 8, !tbaa !108
  %24 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 5
  store i32 %15, ptr %24, align 4, !tbaa !99
  %25 = trunc i32 %1 to i16
  %26 = and i16 %25, 256
  %27 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 6
  store i16 %26, ptr %27, align 8, !tbaa !217
  %28 = and i16 %25, 31
  %29 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 7
  store i16 %28, ptr %29, align 2, !tbaa !218
  %30 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 44
  store i32 0, ptr %30, align 8, !tbaa !153
  %31 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 51
  store i16 0, ptr %31, align 4, !tbaa !120
  %32 = trunc i32 %2 to i16
  %33 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 8
  store i16 %32, ptr %33, align 4, !tbaa !90
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %35 = trunc i64 %34 to i32
  %36 = icmp sgt i32 %35, 127
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %39 = add i64 %34, 1
  %40 = and i64 %39, 4294967295
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.29) #20
  br label %44

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 16
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %41, %37 ]
  %46 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 15
  store ptr %45, ptr %46, align 8, !tbaa !79
  %47 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 15
  %48 = shl i64 %34, 32
  %49 = add i64 %48, 4294967296
  %50 = ashr exact i64 %49, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %3, i64 %50, i1 false)
  %51 = sitofp i32 %4 to float
  %52 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18
  store float %51, ptr %52, align 8, !tbaa !187
  %53 = sitofp i32 %5 to float
  %54 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 2
  store float %53, ptr %54, align 8, !tbaa !186
  %55 = sitofp i16 %6 to float
  %56 = fadd float %51, %55
  %57 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 1
  store float %56, ptr %57, align 4, !tbaa !188
  %58 = sitofp i16 %7 to float
  %59 = fadd float %53, %58
  %60 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 18, i32 3
  store float %59, ptr %60, align 4, !tbaa !189
  %61 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 19
  store ptr %8, ptr %61, align 8, !tbaa !98
  %62 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 22
  store float %9, ptr %62, align 8, !tbaa !118
  %63 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 20
  store float %9, ptr %63, align 8, !tbaa !116
  %64 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 23
  store float %10, ptr %64, align 4, !tbaa !119
  %65 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 21
  store float %10, ptr %65, align 4, !tbaa !117
  %66 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 24
  store float %11, ptr %66, align 8, !tbaa !250
  %67 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 25
  store float %12, ptr %67, align 4, !tbaa !130
  %68 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 42
  store ptr %13, ptr %68, align 8, !tbaa !251
  %69 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 35
  %70 = load i8, ptr %69, align 8, !tbaa !226
  %71 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 45
  store i8 %70, ptr %71, align 4, !tbaa !166
  %72 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 34
  %73 = load ptr, ptr %72, align 8, !tbaa !227
  %74 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 43
  store ptr %73, ptr %74, align 8, !tbaa !252
  %75 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 30
  %76 = load i8, ptr %75, align 1, !tbaa !243
  %77 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 46
  store i8 %76, ptr %77, align 1, !tbaa !253
  %78 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 47
  store i8 -1, ptr %78, align 2, !tbaa !176
  %79 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 74
  store ptr %0, ptr %79, align 8, !tbaa !121
  %80 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %81 = load i32, ptr %80, align 8, !tbaa !34
  %82 = and i32 %81, 245760
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %44
  %85 = load i32, ptr %23, align 8, !tbaa !108
  switch i32 %85, label %86 [
    i32 5120, label %90
    i32 19456, label %90
    i32 19968, label %90
    i32 10752, label %90
    i32 27648, label %90
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 28
  %88 = load i16, ptr %87, align 4, !tbaa !249
  %89 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 10
  store i16 %88, ptr %89, align 8, !tbaa !154
  br label %90

90:                                               ; preds = %84, %84, %84, %84, %84, %86, %44
  %91 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 14
  %92 = load ptr, ptr %91, align 8, !tbaa !254
  %93 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 27
  store ptr %92, ptr %93, align 8, !tbaa !94
  %94 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 15
  %95 = load ptr, ptr %94, align 8, !tbaa !255
  %96 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 28
  store ptr %95, ptr %96, align 8, !tbaa !96
  %97 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  %98 = load ptr, ptr %97, align 8, !tbaa !256
  %99 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 29
  store ptr %98, ptr %99, align 8, !tbaa !97
  %100 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !257
  %102 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 30
  store ptr %101, ptr %102, align 8, !tbaa !95
  %103 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !237
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %90
  %107 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !62
  %108 = tail call ptr %107(ptr noundef nonnull %104) #20
  %109 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 31
  store ptr %108, ptr %109, align 8, !tbaa !106
  br label %110

110:                                              ; preds = %106, %90
  %111 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 12
  store i16 -1, ptr %111, align 4, !tbaa !258
  %112 = load i32, ptr %23, align 8, !tbaa !108
  switch i32 %112, label %128 [
    i32 2560, label %113
    i32 7168, label %113
  ]

113:                                              ; preds = %110, %110
  %114 = add i32 %35, -1
  %115 = icmp ult i32 %114, 125
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load ptr, ptr %47, align 8, !tbaa !79
  %118 = add i64 %34, 4294967295
  %119 = and i64 %118, 4294967295
  %120 = getelementptr inbounds i8, ptr %117, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !110
  %122 = icmp eq i8 %121, 32
  br i1 %122, label %128, label %123

123:                                              ; preds = %116
  %124 = and i64 %34, 4294967295
  %125 = getelementptr inbounds i8, ptr %117, i64 %124
  store i8 32, ptr %125, align 1, !tbaa !110
  %126 = load ptr, ptr %47, align 8, !tbaa !79
  %127 = getelementptr inbounds i8, ptr %126, i64 %50
  store i8 0, ptr %127, align 1, !tbaa !110
  br label %128

128:                                              ; preds = %110, %113, %123, %116
  %129 = load i32, ptr %80, align 8, !tbaa !34
  %130 = and i32 %129, 1048577
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, ptr %23, align 8, !tbaa !108
  switch i32 %133, label %140 [
    i32 5632, label %135
    i32 3072, label %135
    i32 5120, label %135
    i32 9728, label %135
    i32 10240, label %135
    i32 20992, label %135
    i32 26112, label %135
    i32 26624, label %135
    i32 2560, label %134
    i32 7168, label %134
  ]

134:                                              ; preds = %132, %132
  br label %135

135:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132, %128, %134
  %136 = phi i32 [ 2, %134 ], [ 6, %128 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ], [ 6, %132 ]
  %137 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !191
  %139 = or i32 %138, %136
  store i32 %139, ptr %137, align 4, !tbaa !191
  br label %140

140:                                              ; preds = %135, %132
  %141 = and i32 %129, 245760
  %142 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 3
  %143 = load i32, ptr %142, align 4, !tbaa !191
  %144 = or i32 %143, %141
  store i32 %144, ptr %142, align 4, !tbaa !191
  %145 = load i8, ptr %71, align 4, !tbaa !166
  %146 = icmp eq i8 %145, 1
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load ptr, ptr %74, align 8, !tbaa !252
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !109
  %153 = or i32 %152, 2048
  store i32 %153, ptr %151, align 8, !tbaa !109
  br label %154

154:                                              ; preds = %147, %150, %140
  %155 = load i32, ptr %23, align 8, !tbaa !108
  switch i32 %155, label %156 [
    i32 9728, label %162
    i32 512, label %162
    i32 5120, label %162
    i32 13824, label %162
    i32 14336, label %162
    i32 17920, label %162
    i32 10240, label %162
    i32 9216, label %162
    i32 10752, label %162
    i32 27648, label %162
    i32 28160, label %162
  ]

156:                                              ; preds = %154
  %157 = icmp ugt i32 %155, 20991
  br i1 %157, label %162, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !109
  %161 = or i32 %160, 524288
  store i32 %161, ptr %159, align 8, !tbaa !109
  br label %162

162:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %158, %156
  %163 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %163, ptr noundef %22) #20
  %164 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !259
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  tail call void @ui_layout_add_but(ptr noundef nonnull %165, ptr noundef %22) #20
  br label %168

168:                                              ; preds = %162, %167, %14
  %169 = phi ptr [ null, %14 ], [ %22, %167 ], [ %22, %162 ]
  ret ptr %169
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @autocomplete_begin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.21) #20
  store i64 %1, ptr %4, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !262
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %7 = tail call ptr %6(i64 noundef %1, ptr noundef nonnull @.str.22) #20
  %8 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !263
  %9 = getelementptr inbounds %struct.AutoComplete, ptr %4, i64 0, i32 3
  store ptr %0, ptr %9, align 8, !tbaa !264
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @autocomplete_do_name(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !264
  %7 = load i64, ptr %0, align 8, !tbaa !260
  %8 = add i64 %7, -1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %13

10:                                               ; preds = %18
  %11 = add nuw i64 %14, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %22, label %13, !llvm.loop !265

13:                                               ; preds = %2, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %15 = getelementptr inbounds i8, ptr %6, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !110
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %1, i64 %14
  %20 = load i8, ptr %19, align 1, !tbaa !110
  %21 = icmp eq i8 %16, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %10, %18, %13, %2
  %23 = phi i64 [ 0, %2 ], [ %8, %10 ], [ %14, %18 ], [ %14, %13 ]
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !110
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !262
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !262
  %31 = load i8, ptr %4, align 1, !tbaa !110
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i64, ptr %0, align 8, !tbaa !260
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %54, label %38

36:                                               ; preds = %27
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %7) #20
  br label %54

38:                                               ; preds = %33, %49
  %39 = phi i64 [ %50, %49 ], [ 0, %33 ]
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !110
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds i8, ptr %4, i64 %39
  br i1 %42, label %44, label %45

44:                                               ; preds = %38
  store i8 0, ptr %43, align 1, !tbaa !110
  br label %54

45:                                               ; preds = %38
  %46 = load i8, ptr %43, align 1, !tbaa !110
  %47 = icmp eq i8 %46, %41
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8 0, ptr %43, align 1, !tbaa !110
  br label %49

49:                                               ; preds = %48, %45
  %50 = add nuw i64 %39, 1
  %51 = load i64, ptr %0, align 8, !tbaa !260
  %52 = add i64 %51, -1
  %53 = icmp ugt i64 %52, %50
  br i1 %53, label %38, label %54, !llvm.loop !266

54:                                               ; preds = %49, %33, %36, %44, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @autocomplete_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = load i8, ptr %4, align 1, !tbaa !110
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !262
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 1, i32 2
  %12 = load i64, ptr %0, align 8, !tbaa !260
  %13 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef %12) #20
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.AutoComplete, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !264
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %0, align 8, !tbaa !260
  %20 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %16, i64 noundef %19) #20
  br label %21

21:                                               ; preds = %14, %18, %7
  %22 = phi i32 [ %11, %7 ], [ 0, %18 ], [ 0, %14 ]
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %24 = load ptr, ptr %3, align 8, !tbaa !263
  tail call void %23(ptr noundef %24) #20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %25(ptr noundef %0) #20
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 128
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 384
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  tail call void @ui_check_but(ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %46
  %51 = phi ptr [ %49, %46 ], [ null, %43 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 96
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 352
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  tail call void @ui_check_but(ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %46
  %51 = phi ptr [ %49, %46 ], [ null, %43 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 64
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 320
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  tail call void @ui_check_but(ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %46
  %51 = phi ptr [ %49, %46 ], [ null, %43 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 32
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 288
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  tail call void @ui_check_but(ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %46
  %51 = phi ptr [ %49, %46 ], [ null, %43 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef %9) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef nonnull %17, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  br label %28

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %23 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = or i32 %24, 2048
  store i32 %25, ptr %23, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 45
  store i8 1, ptr %26, align 4, !tbaa !166
  %27 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 43
  store ptr @.str.23, ptr %27, align 8, !tbaa !252
  br label %28

28:                                               ; preds = %19, %21
  %29 = phi ptr [ %20, %19 ], [ %22, %21 ]
  tail call void @ui_check_but(ptr noundef %29)
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  tail call void @ui_check_but(ptr noundef %17)
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) unnamed_addr #6 {
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
  %30 = tail call i32 @RNA_property_type(ptr noundef %9) #20
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %75

32:                                               ; preds = %16
  %33 = icmp eq i32 %1, 5632
  switch i32 %1, label %75 [
    i32 18432, label %34
    i32 5632, label %34
    i32 1024, label %34
  ]

34:                                               ; preds = %32, %32, %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #20
  %35 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 48
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  call void @RNA_property_enum_items(ptr noundef %36, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %18) #20
  br i1 %33, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @RNA_property_enum_get(ptr noundef %8, ptr noundef %9) #20
  br label %41

39:                                               ; preds = %34
  %40 = fptosi float %12 to i32
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load ptr, ptr %17, align 8, !tbaa !62
  %44 = call i32 @RNA_enum_from_value(ptr noundef %43, i32 noundef %42) #20
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = icmp eq ptr %3, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load ptr, ptr %17, align 8, !tbaa !62
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds %struct.EnumPropertyItem, ptr %49, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !268
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi ptr [ %3, %46 ], [ %52, %48 ]
  %55 = load ptr, ptr %17, align 8, !tbaa !62
  %56 = sext i32 %44 to i64
  %57 = getelementptr inbounds %struct.EnumPropertyItem, ptr %55, i64 %56, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !270
  br label %65

59:                                               ; preds = %41
  %60 = icmp ne ptr %3, null
  %61 = or i1 %33, %60
  %62 = select i1 %60, ptr %3, ptr @.str.23
  br i1 %61, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @RNA_property_ui_name(ptr noundef %9) #20
  br label %65

65:                                               ; preds = %59, %63, %53
  %66 = phi i32 [ %58, %53 ], [ 0, %59 ], [ 0, %63 ]
  %67 = phi ptr [ %54, %53 ], [ %62, %59 ], [ %64, %63 ]
  %68 = select i1 %33, ptr @ui_def_but_rna__menu, ptr null
  %69 = load i8, ptr %18, align 1, !tbaa !110
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %73 = load ptr, ptr %17, align 8, !tbaa !62
  call void %72(ptr noundef %73) #20
  br label %74

74:                                               ; preds = %71, %65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #20
  br label %82

75:                                               ; preds = %32, %16
  %76 = icmp eq ptr %3, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = tail call ptr @RNA_property_ui_name(ptr noundef %9) #20
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %3, %75 ], [ %78, %77 ]
  %81 = tail call i32 @RNA_property_ui_icon(ptr noundef %9) #20
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i32 [ %66, %74 ], [ %81, %79 ]
  %84 = phi ptr [ %68, %74 ], [ null, %79 ]
  %85 = phi ptr [ %67, %74 ], [ %80, %79 ]
  %86 = icmp eq ptr %15, null
  %87 = icmp ne i32 %30, 4
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call ptr @RNA_property_ui_description(ptr noundef %9) #20
  br label %91

91:                                               ; preds = %89, %82
  %92 = phi ptr [ %90, %89 ], [ %15, %82 ]
  %93 = fcmp oeq float %11, %12
  %94 = fcmp oeq float %13, -1.000000e+00
  %95 = or i1 %93, %94
  %96 = fcmp oeq float %14, -1.000000e+00
  %97 = or i1 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %91
  switch i32 %30, label %130 [
    i32 1, label %99
    i32 2, label %113
    i32 3, label %125
  ]

99:                                               ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #20
  call void @RNA_property_int_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull %20) #20
  call void @RNA_property_int_ui_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #20
  switch i32 %1, label %100 [
    i32 18432, label %106
    i32 1024, label %106
  ]

100:                                              ; preds = %99
  br i1 %93, label %101, label %106

101:                                              ; preds = %100
  %102 = load i32, ptr %19, align 4, !tbaa !56
  %103 = sitofp i32 %102 to float
  %104 = load i32, ptr %20, align 4, !tbaa !56
  %105 = sitofp i32 %104 to float
  br label %106

106:                                              ; preds = %99, %99, %101, %100
  %107 = phi float [ %12, %99 ], [ %105, %101 ], [ %12, %100 ], [ %12, %99 ]
  %108 = phi float [ %11, %99 ], [ %103, %101 ], [ %11, %100 ], [ %11, %99 ]
  %109 = load i32, ptr %23, align 4
  %110 = sitofp i32 %109 to float
  %111 = select i1 %94, float %110, float %13
  %112 = select i1 %96, float 0.000000e+00, float %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #20
  br label %130

113:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #20
  call void @RNA_property_float_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %24, ptr noundef nonnull %25) #20
  call void @RNA_property_float_ui_range(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #20
  switch i32 %1, label %114 [
    i32 18432, label %118
    i32 1024, label %118
  ]

114:                                              ; preds = %113
  br i1 %93, label %115, label %118

115:                                              ; preds = %114
  %116 = load float, ptr %24, align 4, !tbaa !51
  %117 = load float, ptr %25, align 4, !tbaa !51
  br label %118

118:                                              ; preds = %113, %113, %115, %114
  %119 = phi float [ %12, %113 ], [ %117, %115 ], [ %12, %114 ], [ %12, %113 ]
  %120 = phi float [ %11, %113 ], [ %116, %115 ], [ %11, %114 ], [ %11, %113 ]
  %121 = load float, ptr %28, align 4
  %122 = select i1 %94, float %121, float %13
  %123 = load float, ptr %29, align 4
  %124 = select i1 %96, float %123, float %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #20
  br label %130

125:                                              ; preds = %98
  %126 = call i32 @RNA_property_string_maxlength(ptr noundef %9) #20
  %127 = sitofp i32 %126 to float
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %98, %106, %129, %125, %118, %91
  %131 = phi float [ %111, %106 ], [ %122, %118 ], [ %13, %129 ], [ %13, %125 ], [ %13, %91 ], [ %13, %98 ]
  %132 = phi float [ %112, %106 ], [ %124, %118 ], [ %14, %129 ], [ %14, %125 ], [ %14, %91 ], [ %14, %98 ]
  %133 = phi float [ %107, %106 ], [ %119, %118 ], [ 4.000000e+02, %129 ], [ %127, %125 ], [ %12, %91 ], [ %12, %98 ]
  %134 = phi float [ %108, %106 ], [ %120, %118 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %125 ], [ %11, %91 ], [ %11, %98 ]
  %135 = call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %85, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef %134, float noundef %133, float noundef %131, float noundef %132, ptr noundef %92)
  %136 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %136, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !234
  %137 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 55
  store ptr %9, ptr %137, align 8, !tbaa !92
  %138 = call zeroext i8 @RNA_property_array_check(ptr noundef %9) #20
  %139 = icmp eq i8 %138, 0
  %140 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 56
  %141 = select i1 %139, i32 0, i32 %10
  store i32 %141, ptr %140, align 8, !tbaa !93
  %142 = icmp eq i32 %83, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %130
  %144 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 44
  store i32 %83, ptr %144, align 8, !tbaa !153
  %145 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !109
  %147 = or i32 %146, 8
  store i32 %147, ptr %145, align 8, !tbaa !109
  %148 = load i8, ptr %85, align 1, !tbaa !110
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !191
  %153 = or i32 %152, 4
  store i32 %153, ptr %151, align 4, !tbaa !191
  br label %154

154:                                              ; preds = %143, %150, %130
  %155 = icmp eq i32 %1, 5632
  br i1 %155, label %156, label %164

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 46
  %158 = load i8, ptr %157, align 1, !tbaa !253
  %159 = icmp eq i8 %158, 2
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !109
  %163 = or i32 %162, 64
  store i32 %163, ptr %161, align 8, !tbaa !109
  br label %164

164:                                              ; preds = %160, %156, %154
  %165 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %136, ptr noundef %9) #20
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !109
  %170 = or i32 %169, 2048
  store i32 %170, ptr %168, align 8, !tbaa !109
  %171 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 45
  store i8 1, ptr %171, align 4, !tbaa !166
  %172 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 43
  store ptr @.str.23, ptr %172, align 8, !tbaa !252
  br label %173

173:                                              ; preds = %167, %164
  %174 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !109
  %176 = and i32 %175, 524288
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %194, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %136, align 8, !tbaa !232
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.ID, ptr %179, i64 0, i32 4
  %183 = load i16, ptr %182, align 8, !tbaa !171
  switch i16 %183, label %194 [
    i16 21075, label %191
    i16 19799, label %191
  ]

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 54, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !231
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = call zeroext i8 @RNA_struct_undo_check(ptr noundef nonnull %186) #20
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188, %181, %181
  %192 = load i32, ptr %174, align 8, !tbaa !109
  %193 = and i32 %192, -524289
  store i32 %193, ptr %174, align 8, !tbaa !109
  br label %194

194:                                              ; preds = %184, %188, %181, %191, %173
  %195 = icmp eq i32 %30, 2
  br i1 %195, label %196, label %328

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 74
  %198 = load ptr, ptr %197, align 8, !tbaa !121
  %199 = getelementptr inbounds %struct.uiBlock, ptr %198, i64 0, i32 49
  %200 = load ptr, ptr %199, align 8, !tbaa !123
  %201 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 49
  %202 = load i8, ptr %201, align 8, !tbaa !124
  %203 = zext i8 %202 to i32
  %204 = icmp eq i8 %202, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load ptr, ptr %137, align 8, !tbaa !92
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205, %196
  %209 = shl nuw nsw i32 %203, 16
  br label %213

210:                                              ; preds = %205
  %211 = call i32 @RNA_property_subtype(ptr noundef nonnull %206) #20
  %212 = and i32 %211, 16711680
  br label %213

213:                                              ; preds = %210, %208
  %214 = phi i32 [ %209, %208 ], [ %212, %210 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %328, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.UnitSettings, ptr %200, i64 0, i32 2
  %218 = load i8, ptr %217, align 1, !tbaa !125
  %219 = icmp eq i8 %218, 2
  %220 = icmp eq i32 %214, 327680
  %221 = and i1 %220, %219
  %222 = icmp eq i32 %214, 393216
  %223 = or i1 %222, %221
  br i1 %223, label %328, label %224

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.UnitSettings, ptr %200, i64 0, i32 1
  %226 = load i8, ptr %225, align 4, !tbaa !127
  %227 = icmp ne i8 %226, 0
  %228 = or i1 %220, %227
  br i1 %228, label %229, label %328

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 24
  %231 = load float, ptr %230, align 8, !tbaa !250
  %232 = load i8, ptr %201, align 8, !tbaa !124
  %233 = zext i8 %232 to i32
  %234 = icmp eq i8 %232, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %229
  %236 = load ptr, ptr %137, align 8, !tbaa !92
  %237 = icmp eq ptr %236, null
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = call i32 @RNA_property_subtype(ptr noundef nonnull %236) #20
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  br label %242

242:                                              ; preds = %229, %235, %238
  %243 = phi i32 [ %241, %238 ], [ %233, %235 ], [ %233, %229 ]
  %244 = fpext float %231 to double
  %245 = load ptr, ptr %197, align 8, !tbaa !121
  %246 = getelementptr inbounds %struct.uiBlock, ptr %245, i64 0, i32 49
  %247 = load ptr, ptr %246, align 8, !tbaa !123
  %248 = load i8, ptr %201, align 8, !tbaa !124
  %249 = zext i8 %248 to i32
  %250 = icmp eq i8 %248, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load ptr, ptr %137, align 8, !tbaa !92
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %256

254:                                              ; preds = %251, %242
  %255 = shl nuw nsw i32 %249, 16
  br label %259

256:                                              ; preds = %251
  %257 = call i32 @RNA_property_subtype(ptr noundef nonnull %252) #20
  %258 = and i32 %257, 16711680
  br label %259

259:                                              ; preds = %256, %254
  %260 = phi i32 [ %255, %254 ], [ %258, %256 ]
  %261 = icmp eq i32 %260, 393216
  br i1 %261, label %262, label %275

262:                                              ; preds = %259
  %263 = load ptr, ptr %197, align 8, !tbaa !121
  %264 = getelementptr inbounds %struct.uiBlock, ptr %263, i64 0, i32 48
  %265 = load ptr, ptr %264, align 8, !tbaa !122
  %266 = call ptr @CTX_data_scene(ptr noundef %265) #20
  %267 = getelementptr inbounds %struct.Scene, ptr %266, i64 0, i32 22, i32 65
  %268 = load float, ptr %267, align 4, !tbaa !131
  %269 = fpext float %268 to double
  %270 = fmul double %244, %269
  %271 = getelementptr inbounds %struct.Scene, ptr %266, i64 0, i32 22, i32 55
  %272 = load i16, ptr %271, align 4, !tbaa !149
  %273 = sitofp i16 %272 to double
  %274 = fdiv double %270, %273
  br label %278

275:                                              ; preds = %259
  %276 = lshr exact i32 %260, 16
  %277 = call double @BKE_scene_unit_scale(ptr noundef %247, i32 noundef %276, double noundef %244) #20
  br label %278

278:                                              ; preds = %262, %275
  %279 = phi double [ %274, %262 ], [ %277, %275 ]
  %280 = load ptr, ptr %197, align 8, !tbaa !121
  %281 = getelementptr inbounds %struct.uiBlock, ptr %280, i64 0, i32 49
  %282 = load ptr, ptr %281, align 8, !tbaa !123
  %283 = getelementptr inbounds %struct.UnitSettings, ptr %282, i64 0, i32 1
  %284 = load i8, ptr %283, align 4, !tbaa !127
  %285 = zext i8 %284 to i32
  %286 = call double @bUnit_ClosestScalar(double noundef %279, i32 noundef %285, i32 noundef %243) #20
  %287 = fcmp une double %286, -1.000000e+00
  br i1 %287, label %288, label %326

288:                                              ; preds = %278
  %289 = load ptr, ptr %197, align 8, !tbaa !121
  %290 = getelementptr inbounds %struct.uiBlock, ptr %289, i64 0, i32 49
  %291 = load ptr, ptr %290, align 8, !tbaa !123
  %292 = load i8, ptr %201, align 8, !tbaa !124
  %293 = zext i8 %292 to i32
  %294 = icmp eq i8 %292, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = load ptr, ptr %137, align 8, !tbaa !92
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %295, %288
  %299 = shl nuw nsw i32 %293, 16
  br label %303

300:                                              ; preds = %295
  %301 = call i32 @RNA_property_subtype(ptr noundef nonnull %296) #20
  %302 = and i32 %301, 16711680
  br label %303

303:                                              ; preds = %300, %298
  %304 = phi i32 [ %299, %298 ], [ %302, %300 ]
  %305 = icmp eq i32 %304, 393216
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = load ptr, ptr %197, align 8, !tbaa !121
  %308 = getelementptr inbounds %struct.uiBlock, ptr %307, i64 0, i32 48
  %309 = load ptr, ptr %308, align 8, !tbaa !122
  %310 = call ptr @CTX_data_scene(ptr noundef %309) #20
  %311 = getelementptr inbounds %struct.Scene, ptr %310, i64 0, i32 22, i32 65
  %312 = load float, ptr %311, align 4, !tbaa !131
  %313 = fpext float %312 to double
  %314 = getelementptr inbounds %struct.Scene, ptr %310, i64 0, i32 22, i32 55
  %315 = load i16, ptr %314, align 4, !tbaa !149
  %316 = sitofp i16 %315 to double
  %317 = fdiv double %313, %316
  br label %321

318:                                              ; preds = %303
  %319 = lshr exact i32 %304, 16
  %320 = call double @BKE_scene_unit_scale(ptr noundef %291, i32 noundef %319, double noundef 1.000000e+00) #20
  br label %321

321:                                              ; preds = %306, %318
  %322 = phi double [ %317, %306 ], [ %320, %318 ]
  %323 = fdiv double %286, %322
  %324 = fptrunc double %323 to float
  %325 = fmul float %324, 1.000000e+02
  br label %326

326:                                              ; preds = %278, %321
  %327 = phi float [ %325, %321 ], [ %231, %278 ]
  store float %327, ptr %230, align 8, !tbaa !250
  br label %328

328:                                              ; preds = %213, %216, %326, %224, %194
  %329 = icmp eq ptr %84, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 53
  store ptr %84, ptr %331, align 8, !tbaa !271
  %332 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 19
  store ptr %135, ptr %332, align 8, !tbaa !98
  br label %333

333:                                              ; preds = %330, %328
  ret ptr %135
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9)
  tail call void @ui_check_but(ptr noundef %11)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) unnamed_addr #6 {
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = icmp eq ptr %2, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %12, %14, %18, %10
  %21 = phi ptr [ %4, %10 ], [ %19, %18 ], [ @.str.23, %14 ], [ @.str.23, %12 ]
  %22 = icmp eq ptr %9, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %9, align 1, !tbaa !110
  %25 = icmp eq i8 %24, 0
  %26 = icmp ne ptr %2, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %36

28:                                               ; preds = %20
  %29 = icmp eq ptr %2, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !272
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @RNA_struct_ui_description(ptr noundef nonnull %32) #20
  br label %36

36:                                               ; preds = %34, %30, %28, %23
  %37 = phi ptr [ %35, %34 ], [ %9, %30 ], [ %9, %23 ], [ null, %28 ]
  %38 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef %21, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %37)
  %39 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 59
  store ptr %2, ptr %39, align 8, !tbaa !100
  %40 = trunc i32 %3 to i16
  %41 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 61
  store i16 %40, ptr %41, align 8, !tbaa !165
  %42 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !109
  %44 = and i32 %43, -524289
  store i32 %44, ptr %42, align 8, !tbaa !109
  %45 = icmp eq ptr %2, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = or i32 %44, 2048
  store i32 %47, ptr %42, align 8, !tbaa !109
  %48 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 45
  store i8 1, ptr %48, align 4, !tbaa !166
  %49 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 43
  store ptr @.str.23, ptr %49, align 8, !tbaa !252
  br label %50

50:                                               ; preds = %46, %36
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %12 = icmp eq ptr %4, null
  %13 = icmp eq ptr %11, null
  %14 = and i1 %12, %13
  %15 = select i1 %14, ptr %2, ptr %4
  %16 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef %3, ptr noundef %15, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9)
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 44
  store i32 %3, ptr %18, align 8, !tbaa !153
  %19 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !109
  %21 = or i32 %20, 8
  store i32 %21, ptr %19, align 8, !tbaa !109
  br label %22

22:                                               ; preds = %14, %17
  tail call void @ui_check_but(ptr noundef %15)
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 128
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %3, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %14, %18
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 384
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 44
  store i32 %4, ptr %52, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !109
  %55 = or i32 %54, 8
  store i32 %55, ptr %53, align 8, !tbaa !109
  br label %56

56:                                               ; preds = %51, %46
  tail call void @ui_check_but(ptr noundef %49)
  br label %57

57:                                               ; preds = %43, %56
  %58 = phi ptr [ %49, %56 ], [ null, %43 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 96
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %3, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %14, %18
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 352
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 44
  store i32 %4, ptr %52, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !109
  %55 = or i32 %54, 8
  store i32 %55, ptr %53, align 8, !tbaa !109
  br label %56

56:                                               ; preds = %51, %46
  tail call void @ui_check_but(ptr noundef %49)
  br label %57

57:                                               ; preds = %43, %56
  %58 = phi ptr [ %49, %56 ], [ null, %43 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 64
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %3, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %14, %18
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 320
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 44
  store i32 %4, ptr %52, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !109
  %55 = or i32 %54, 8
  store i32 %55, ptr %53, align 8, !tbaa !109
  br label %56

56:                                               ; preds = %51, %46
  tail call void @ui_check_but(ptr noundef %49)
  br label %57

57:                                               ; preds = %43, %56
  %58 = phi ptr [ %49, %56 ], [ null, %43 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = or i32 %1, 32
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %15, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, ptr noundef %13)
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %3, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %14, %18
  tail call void @ui_check_but(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 65536
  %20 = lshr i32 %2, 16
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = select i1 %19, i32 0, i32 16
  %23 = icmp ult i32 %21, 256
  %24 = or disjoint i32 %22, 8
  %25 = lshr i32 %21, 8
  %26 = select i1 %23, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %24
  %28 = and i32 %26, 240
  %29 = icmp eq i32 %28, 0
  %30 = or disjoint i32 %27, 4
  %31 = lshr i32 %26, 4
  %32 = select i1 %29, i32 %26, i32 %31
  %33 = select i1 %29, i32 %27, i32 %30
  %34 = and i32 %32, 12
  %35 = icmp eq i32 %34, 0
  %36 = or disjoint i32 %33, 2
  %37 = lshr i32 %32, 2
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = select i1 %35, i32 %33, i32 %36
  %40 = lshr i32 %38, 1
  %41 = and i32 %40, 1
  %42 = add nuw nsw i32 %41, %39
  br label %43

43:                                               ; preds = %18, %15
  %44 = phi i32 [ %42, %18 ], [ -1, %15 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, %1
  %48 = or i32 %47, 288
  %49 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %48, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 44
  store i32 %4, ptr %52, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.uiBut, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !109
  %55 = or i32 %54, 8
  store i32 %55, ptr %53, align 8, !tbaa !109
  br label %56

56:                                               ; preds = %51, %46
  tail call void @ui_check_but(ptr noundef %49)
  br label %57

57:                                               ; preds = %43, %56
  %58 = phi ptr [ %49, %56 ], [ null, %43 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef %9) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef nonnull %17, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  br label %28

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %23 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = or i32 %24, 2048
  store i32 %25, ptr %23, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 45
  store i8 1, ptr %26, align 4, !tbaa !166
  %27 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 43
  store ptr @.str.23, ptr %27, align 8, !tbaa !252
  br label %28

28:                                               ; preds = %19, %21
  %29 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 44
  store i32 %3, ptr %32, align 8, !tbaa !153
  %33 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !109
  %35 = or i32 %34, 8
  store i32 %35, ptr %33, align 8, !tbaa !109
  br label %36

36:                                               ; preds = %28, %31
  tail call void @ui_check_but(ptr noundef %29)
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %3, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = or i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %16, %19
  tail call void @ui_check_but(ptr noundef %17)
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %9, align 1, !tbaa !110
  %14 = icmp eq i8 %13, 0
  %15 = icmp ne ptr %2, null
  %16 = and i1 %15, %14
  br i1 %16, label %19, label %25

17:                                               ; preds = %10
  %18 = icmp eq ptr %2, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !272
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @RNA_struct_ui_description(ptr noundef nonnull %21) #20
  br label %25

25:                                               ; preds = %23, %19, %17, %12
  %26 = phi ptr [ %24, %23 ], [ %9, %19 ], [ %9, %12 ], [ null, %17 ]
  %27 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %26)
  %28 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 59
  store ptr %2, ptr %28, align 8, !tbaa !100
  %29 = trunc i32 %3 to i16
  %30 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 61
  store i16 %29, ptr %30, align 8, !tbaa !165
  %31 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !109
  %33 = and i32 %32, -524289
  store i32 %33, ptr %31, align 8, !tbaa !109
  %34 = icmp eq ptr %2, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = or i32 %33, 2048
  store i32 %36, ptr %31, align 8, !tbaa !109
  %37 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 45
  store i8 1, ptr %37, align 4, !tbaa !166
  %38 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 43
  store ptr @.str.23, ptr %38, align 8, !tbaa !252
  br label %39

39:                                               ; preds = %25, %35
  %40 = icmp eq i32 %4, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 44
  store i32 %4, ptr %42, align 8, !tbaa !153
  %43 = load i32, ptr %31, align 8, !tbaa !109
  %44 = or i32 %43, 8
  store i32 %44, ptr %31, align 8, !tbaa !109
  br label %45

45:                                               ; preds = %39, %41
  tail call void @ui_check_but(ptr noundef %27)
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %12 = icmp eq ptr %9, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %9, align 1, !tbaa !110
  %15 = icmp eq i8 %14, 0
  %16 = icmp ne ptr %11, null
  %17 = and i1 %16, %15
  br i1 %17, label %20, label %26

18:                                               ; preds = %10
  %19 = icmp eq ptr %11, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !272
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @RNA_struct_ui_description(ptr noundef nonnull %22) #20
  br label %26

26:                                               ; preds = %24, %20, %18, %13
  %27 = phi ptr [ %25, %24 ], [ %9, %20 ], [ %9, %13 ], [ null, %18 ]
  %28 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %27)
  %29 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 59
  store ptr %11, ptr %29, align 8, !tbaa !100
  %30 = trunc i32 %3 to i16
  %31 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 61
  store i16 %30, ptr %31, align 8, !tbaa !165
  %32 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = and i32 %33, -524289
  store i32 %34, ptr %32, align 8, !tbaa !109
  %35 = icmp eq ptr %11, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = or i32 %34, 2048
  store i32 %37, ptr %32, align 8, !tbaa !109
  %38 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 45
  store i8 1, ptr %38, align 4, !tbaa !166
  %39 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 43
  store ptr @.str.23, ptr %39, align 8, !tbaa !252
  br label %40

40:                                               ; preds = %26, %36
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 44
  store i32 %4, ptr %43, align 8, !tbaa !153
  %44 = load i32, ptr %32, align 8, !tbaa !109
  %45 = or i32 %44, 8
  store i32 %45, ptr %32, align 8, !tbaa !109
  br label %46

46:                                               ; preds = %40, %42
  tail call void @ui_check_but(ptr noundef %28)
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextBut(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %3, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %15, %18
  tail call void @ui_check_but(ptr noundef %16)
  %24 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !191
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 4, !tbaa !191
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 128
  %17 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %16, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %3, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = or i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %15, %19
  tail call void @ui_check_but(ptr noundef %17)
  %25 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !191
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4, !tbaa !191
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButBitF(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = icmp ult i32 %2, 65536
  %21 = lshr i32 %2, 16
  %22 = select i1 %20, i32 %2, i32 %21
  %23 = select i1 %20, i32 0, i32 16
  %24 = icmp ult i32 %22, 256
  %25 = or disjoint i32 %23, 8
  %26 = lshr i32 %22, 8
  %27 = select i1 %24, i32 %22, i32 %26
  %28 = select i1 %24, i32 %23, i32 %25
  %29 = and i32 %27, 240
  %30 = icmp eq i32 %29, 0
  %31 = or disjoint i32 %28, 4
  %32 = lshr i32 %27, 4
  %33 = select i1 %30, i32 %27, i32 %32
  %34 = select i1 %30, i32 %28, i32 %31
  %35 = and i32 %33, 12
  %36 = icmp eq i32 %35, 0
  %37 = or disjoint i32 %34, 2
  %38 = lshr i32 %33, 2
  %39 = select i1 %36, i32 %33, i32 %38
  %40 = select i1 %36, i32 %34, i32 %37
  %41 = lshr i32 %39, 1
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, %40
  br label %44

44:                                               ; preds = %16, %19
  %45 = phi i32 [ %43, %19 ], [ -1, %16 ]
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = or i32 %45, %1
  %49 = or i32 %48, 384
  %50 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %49, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 44
  store i32 %4, ptr %53, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %47, %52
  tail call void @ui_check_but(ptr noundef %50)
  %58 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !191
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4, !tbaa !191
  br label %61

61:                                               ; preds = %44, %57
  %62 = phi ptr [ %50, %57 ], [ null, %44 ]
  ret ptr %62
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 96
  %17 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %16, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %3, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = or i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %15, %19
  tail call void @ui_check_but(ptr noundef %17)
  %25 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !191
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4, !tbaa !191
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButBitI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = icmp ult i32 %2, 65536
  %21 = lshr i32 %2, 16
  %22 = select i1 %20, i32 %2, i32 %21
  %23 = select i1 %20, i32 0, i32 16
  %24 = icmp ult i32 %22, 256
  %25 = or disjoint i32 %23, 8
  %26 = lshr i32 %22, 8
  %27 = select i1 %24, i32 %22, i32 %26
  %28 = select i1 %24, i32 %23, i32 %25
  %29 = and i32 %27, 240
  %30 = icmp eq i32 %29, 0
  %31 = or disjoint i32 %28, 4
  %32 = lshr i32 %27, 4
  %33 = select i1 %30, i32 %27, i32 %32
  %34 = select i1 %30, i32 %28, i32 %31
  %35 = and i32 %33, 12
  %36 = icmp eq i32 %35, 0
  %37 = or disjoint i32 %34, 2
  %38 = lshr i32 %33, 2
  %39 = select i1 %36, i32 %33, i32 %38
  %40 = select i1 %36, i32 %34, i32 %37
  %41 = lshr i32 %39, 1
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, %40
  br label %44

44:                                               ; preds = %16, %19
  %45 = phi i32 [ %43, %19 ], [ -1, %16 ]
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = or i32 %45, %1
  %49 = or i32 %48, 352
  %50 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %49, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 44
  store i32 %4, ptr %53, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %47, %52
  tail call void @ui_check_but(ptr noundef %50)
  %58 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !191
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4, !tbaa !191
  br label %61

61:                                               ; preds = %44, %57
  %62 = phi ptr [ %50, %57 ], [ null, %44 ]
  ret ptr %62
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 64
  %17 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %16, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %3, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = or i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %15, %19
  tail call void @ui_check_but(ptr noundef %17)
  %25 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !191
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4, !tbaa !191
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButBitS(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = icmp ult i32 %2, 65536
  %21 = lshr i32 %2, 16
  %22 = select i1 %20, i32 %2, i32 %21
  %23 = select i1 %20, i32 0, i32 16
  %24 = icmp ult i32 %22, 256
  %25 = or disjoint i32 %23, 8
  %26 = lshr i32 %22, 8
  %27 = select i1 %24, i32 %22, i32 %26
  %28 = select i1 %24, i32 %23, i32 %25
  %29 = and i32 %27, 240
  %30 = icmp eq i32 %29, 0
  %31 = or disjoint i32 %28, 4
  %32 = lshr i32 %27, 4
  %33 = select i1 %30, i32 %27, i32 %32
  %34 = select i1 %30, i32 %28, i32 %31
  %35 = and i32 %33, 12
  %36 = icmp eq i32 %35, 0
  %37 = or disjoint i32 %34, 2
  %38 = lshr i32 %33, 2
  %39 = select i1 %36, i32 %33, i32 %38
  %40 = select i1 %36, i32 %34, i32 %37
  %41 = lshr i32 %39, 1
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, %40
  br label %44

44:                                               ; preds = %16, %19
  %45 = phi i32 [ %43, %19 ], [ -1, %16 ]
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = or i32 %45, %1
  %49 = or i32 %48, 320
  %50 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %49, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 44
  store i32 %4, ptr %53, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %47, %52
  tail call void @ui_check_but(ptr noundef %50)
  %58 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !191
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4, !tbaa !191
  br label %61

61:                                               ; preds = %44, %57
  %62 = phi ptr [ %50, %57 ], [ null, %44 ]
  ret ptr %62
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14) local_unnamed_addr #6 {
  %16 = or i32 %1, 32
  %17 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %16, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, ptr noundef %14)
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 44
  store i32 %3, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = or i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %15, %19
  tail call void @ui_check_but(ptr noundef %17)
  %25 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !191
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4, !tbaa !191
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButBitC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15) local_unnamed_addr #6 {
  %17 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !267
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = icmp ult i32 %2, 65536
  %21 = lshr i32 %2, 16
  %22 = select i1 %20, i32 %2, i32 %21
  %23 = select i1 %20, i32 0, i32 16
  %24 = icmp ult i32 %22, 256
  %25 = or disjoint i32 %23, 8
  %26 = lshr i32 %22, 8
  %27 = select i1 %24, i32 %22, i32 %26
  %28 = select i1 %24, i32 %23, i32 %25
  %29 = and i32 %27, 240
  %30 = icmp eq i32 %29, 0
  %31 = or disjoint i32 %28, 4
  %32 = lshr i32 %27, 4
  %33 = select i1 %30, i32 %27, i32 %32
  %34 = select i1 %30, i32 %28, i32 %31
  %35 = and i32 %33, 12
  %36 = icmp eq i32 %35, 0
  %37 = or disjoint i32 %34, 2
  %38 = lshr i32 %33, 2
  %39 = select i1 %36, i32 %33, i32 %38
  %40 = select i1 %36, i32 %34, i32 %37
  %41 = lshr i32 %39, 1
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, %40
  br label %44

44:                                               ; preds = %16, %19
  %45 = phi i32 [ %43, %19 ], [ -1, %16 ]
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = or i32 %45, %1
  %49 = or i32 %48, 288
  %50 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %49, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, ptr noundef %15)
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 44
  store i32 %4, ptr %53, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %47, %52
  tail call void @ui_check_but(ptr noundef %50)
  %58 = getelementptr inbounds %struct.uiBut, ptr %50, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !191
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4, !tbaa !191
  br label %61

61:                                               ; preds = %44, %57
  %62 = phi ptr [ %50, %57 ], [ null, %44 ]
  ret ptr %62
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) local_unnamed_addr #6 {
  %18 = tail call ptr @RNA_struct_find_property(ptr noundef %9, ptr noundef %10) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef nonnull %18, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16)
  br label %29

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %10, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef null, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16)
  %24 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !109
  %26 = or i32 %25, 2048
  store i32 %26, ptr %24, align 8, !tbaa !109
  %27 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 45
  store i8 1, ptr %27, align 4, !tbaa !166
  %28 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 43
  store ptr @.str.23, ptr %28, align 8, !tbaa !252
  br label %29

29:                                               ; preds = %20, %22
  %30 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %31 = icmp eq i32 %3, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.uiBut, ptr %30, i64 0, i32 44
  store i32 %3, ptr %33, align 8, !tbaa !153
  %34 = getelementptr inbounds %struct.uiBut, ptr %30, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !109
  %36 = or i32 %35, 8
  store i32 %36, ptr %34, align 8, !tbaa !109
  br label %37

37:                                               ; preds = %29, %32
  tail call void @ui_check_but(ptr noundef %30)
  %38 = getelementptr inbounds %struct.uiBut, ptr %30, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !191
  %40 = or i32 %39, 4
  store i32 %40, ptr %38, align 4, !tbaa !191
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16) local_unnamed_addr #6 {
  %18 = tail call fastcc ptr @ui_def_but_rna(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr noundef %16)
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 44
  store i32 %3, ptr %21, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !109
  %24 = or i32 %23, 8
  store i32 %24, ptr %22, align 8, !tbaa !109
  br label %25

25:                                               ; preds = %17, %20
  tail call void @ui_check_but(ptr noundef %18)
  %26 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !191
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 4, !tbaa !191
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButO_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) local_unnamed_addr #6 {
  %12 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10)
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 44
  store i32 %4, ptr %15, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = or i32 %17, 8
  store i32 %18, ptr %16, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %11, %14
  tail call void @ui_check_but(ptr noundef %12)
  %20 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !191
  %22 = or i32 %21, 4
  store i32 %22, ptr %20, align 4, !tbaa !191
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextButO(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10) local_unnamed_addr #6 {
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %13 = tail call fastcc ptr @ui_def_but_operator_ptr(ptr noundef %0, i32 noundef %1, ptr noundef %12, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10)
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 44
  store i32 %4, ptr %16, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = or i32 %18, 8
  store i32 %19, ptr %17, align 8, !tbaa !109
  br label %20

20:                                               ; preds = %11, %15
  tail call void @ui_check_but(ptr noundef %13)
  %21 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !191
  %23 = or i32 %22, 4
  store i32 %23, ptr %21, align 4, !tbaa !191
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @uiSetButLink(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %8 = tail call ptr %7(i64 noundef 48, ptr noundef nonnull @.str.24) #20
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 40
  store ptr %8, ptr %9, align 8, !tbaa !107
  store ptr %1, ptr %8, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !220
  %11 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 2
  store ptr %3, ptr %11, align 8, !tbaa !222
  %12 = trunc i32 %4 to i16
  %13 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 5
  store i16 %12, ptr %13, align 4, !tbaa !275
  %14 = trunc i32 %5 to i16
  %15 = getelementptr inbounds %struct.uiLink, ptr %8, i64 0, i32 6
  store i16 %14, ptr %15, align 2, !tbaa !276
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiBlocksGetYMin(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !66
  br label %6

6:                                                ; preds = %4, %19
  %7 = phi ptr [ %2, %4 ], [ %21, %19 ]
  %8 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %9 = icmp eq ptr %7, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 11, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !70
  %13 = sitofp i32 %8 to float
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 11, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !70
  %18 = fptosi float %17 to i32
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %18, %15 ], [ %8, %10 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !62
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !277

23:                                               ; preds = %19, %1
  %24 = phi i32 [ 0, %1 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetDirection(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 29
  store i8 %1, ptr %3, align 2, !tbaa !278
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiBlockFlipOrder(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !279
  %3 = and i32 %2, 8388608
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %10, %22
  %15 = phi ptr [ %31, %22 ], [ %12, %10 ]
  %16 = phi float [ %30, %22 ], [ -1.000000e+04, %10 ]
  %17 = phi float [ %26, %22 ], [ 1.000000e+04, %10 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !191
  %20 = and i32 %19, 245760
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 18, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !186
  %25 = fcmp olt float %24, %17
  %26 = select i1 %25, float %24, float %17
  %27 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 18, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !189
  %29 = fcmp ogt float %28, %16
  %30 = select i1 %29, float %28, float %16
  %31 = load ptr, ptr %15, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14, !llvm.loop !280

33:                                               ; preds = %22
  %34 = fadd float %26, %30
  %35 = fmul float %34, 5.000000e-01
  br label %36

36:                                               ; preds = %33, %10
  %37 = phi float [ 0.000000e+00, %10 ], [ %35, %33 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !62
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %50, %40 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.uiBut, ptr %41, i64 0, i32 18, i32 2
  %43 = load float, ptr %42, align 8, !tbaa !186
  %44 = fsub float %43, %37
  %45 = fsub float %37, %44
  store float %45, ptr %42, align 8, !tbaa !186
  %46 = getelementptr inbounds %struct.uiBut, ptr %41, i64 0, i32 18, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !189
  %48 = fsub float %47, %37
  %49 = fsub float %37, %48
  store float %49, ptr %46, align 4, !tbaa !189
  store float %49, ptr %42, align 8, !tbaa !186
  store float %45, ptr %46, align 4, !tbaa !189
  %50 = load ptr, ptr %41, align 8, !tbaa !62
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !281

52:                                               ; preds = %14, %40, %36, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockSetFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiBlockClearFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButClearFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !109
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetDrawFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !191
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButClearDrawFlag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !191
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiButSetMenuFromPulldown(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  store i32 5632, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !191
  %5 = and i32 %4, -11
  %6 = or disjoint i32 %5, 2
  store i32 %6, ptr %3, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uiButGetRetVal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !90
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragID(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 0, ptr %3, align 1, !tbaa !282
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragRNA(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 1, ptr %3, align 1, !tbaa !282
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragPath(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 2, ptr %3, align 1, !tbaa !282
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragName(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 3, ptr %3, align 1, !tbaa !282
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %4, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragValue(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 4, ptr %2, align 1, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetDragImage(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #9 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 63
  store i8 2, ptr %6, align 1, !tbaa !282
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 44
  store i32 %2, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  store ptr %1, ptr %8, align 8, !tbaa !283
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 65
  store ptr %3, ptr %9, align 8, !tbaa !284
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 66
  store float %4, ptr %10, align 8, !tbaa !285
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiButGetOperatorPtrRNA(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.25) #20
  store ptr %11, ptr %6, align 8, !tbaa !105
  %12 = load ptr, ptr %2, align 8, !tbaa !100
  tail call void @WM_operator_properties_create_ptr(ptr noundef %11, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 60
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  ret ptr %15
}

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetUnitType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i32 %1, 16
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 49
  store i8 %4, ptr %5, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetHandleFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 21
  store ptr %1, ptr %4, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 22
  store ptr %2, ptr %5, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetButmFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 19
  store ptr %1, ptr %4, align 8, !tbaa !288
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 20
  store ptr %2, ptr %5, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 14
  store ptr %1, ptr %5, align 8, !tbaa !254
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 15
  store ptr %2, ptr %6, align 8, !tbaa !255
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  store ptr %3, ptr %7, align 8, !tbaa !256
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiBlockSetNFunc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %9(ptr noundef nonnull %6) #20
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 17
  store ptr %1, ptr %11, align 8, !tbaa !257
  store ptr %2, ptr %5, align 8, !tbaa !237
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 16
  store ptr %3, ptr %12, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetRenameFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 37
  store ptr %1, ptr %4, align 8, !tbaa !290
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 38
  store ptr %2, ptr %5, align 8, !tbaa !291
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetDrawExtraFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 24
  store ptr %1, ptr %5, align 8, !tbaa !292
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 25
  store ptr %2, ptr %6, align 8, !tbaa !293
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 26
  store ptr %3, ptr %7, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 27
  store ptr %1, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 28
  store ptr %2, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr %3, ptr %7, align 8, !tbaa !97
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiButSetNFunc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %9(ptr noundef nonnull %6) #20
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 30
  store ptr %1, ptr %11, align 8, !tbaa !95
  store ptr %2, ptr %5, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr %3, ptr %12, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiButSetCompleteFunc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 33
  store ptr %1, ptr %4, align 8, !tbaa !295
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 34
  store ptr %2, ptr %5, align 8, !tbaa !296
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !297
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefBlockButN(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !297
  %12 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %16(ptr noundef nonnull %13) #20
  br label %17

17:                                               ; preds = %15, %9
  store ptr %2, ptr %12, align 8, !tbaa !106
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefPulldownBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 52
  store ptr %1, ptr %11, align 8, !tbaa !297
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 53
  store ptr %1, ptr %11, align 8, !tbaa !271
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefIconTextMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9)
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %3, ptr %12, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = or i32 %14, 8
  store i32 %15, ptr %13, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !191
  %18 = or i32 %17, 4
  store i32 %18, ptr %16, align 4, !tbaa !191
  %19 = or i32 %14, 72
  store i32 %19, ptr %13, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 53
  store ptr %1, ptr %20, align 8, !tbaa !271
  tail call void @ui_check_but(ptr noundef %11)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefIconMenuBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 13824, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 44
  store i32 %3, ptr %11, align 8, !tbaa !153
  %12 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !109
  %14 = or i32 %13, 8
  store i32 %14, ptr %12, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !191
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 4, !tbaa !191
  %18 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 53
  store ptr %1, ptr %18, align 8, !tbaa !271
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefIconTextBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef 0, ptr noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9)
  %12 = icmp eq i32 %3, 28
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %3, ptr %14, align 8, !tbaa !153
  %15 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !191
  %17 = or i32 %16, 4
  store i32 %17, ptr %15, align 4, !tbaa !191
  br label %18

18:                                               ; preds = %13, %10
  %19 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !109
  %21 = or i32 %20, 72
  store i32 %21, ptr %19, align 8, !tbaa !109
  %22 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 52
  store ptr %1, ptr %22, align 8, !tbaa !297
  tail call void @ui_check_but(ptr noundef %11)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefIconBlockBut(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 9728, i32 noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9)
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 44
  store i32 %4, ptr %12, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = or i32 %14, 8
  store i32 %15, ptr %13, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !191
  %18 = or i32 %17, 4
  store i32 %18, ptr %16, align 4, !tbaa !191
  %19 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 52
  store ptr %1, ptr %19, align 8, !tbaa !297
  tail call void @ui_check_but(ptr noundef %11)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefKeyevtButS(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 12352, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %8)
  tail call void @ui_check_but(ptr noundef %10)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefHotKeyevtButS(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, ptr nocapture noundef readonly %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 23616, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %9)
  %12 = load i16, ptr %8, align 2, !tbaa !171
  %13 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 50
  store i16 %12, ptr %13, align 2, !tbaa !150
  tail call void @ui_check_but(ptr noundef %11)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefSearchBut(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, float noundef %9, float noundef %10, ptr noundef %11) local_unnamed_addr #6 {
  %13 = sitofp i32 %4 to float
  %14 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 20992, i32 noundef %2, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %6, i16 noundef signext %7, i16 noundef signext %8, ptr noundef %1, float noundef 0.000000e+00, float noundef %13, float noundef %9, float noundef %10, ptr noundef %11)
  %15 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 44
  store i32 %3, ptr %15, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = or i32 %17, 8
  store i32 %18, ptr %16, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !191
  %21 = or i32 %20, 6
  store i32 %21, ptr %19, align 4, !tbaa !191
  tail call void @ui_check_but(ptr noundef %14)
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @uiButSetSearchFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 35
  store ptr %1, ptr %6, align 8, !tbaa !298
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 36
  store ptr %2, ptr %7, align 8, !tbaa !299
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 27
  store ptr %3, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 28
  store ptr %2, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr %4, ptr %10, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %19 = load i8, ptr %18, align 8, !tbaa !110
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @ui_but_search_test(ptr noundef %0) #20
  br label %22

22:                                               ; preds = %17, %21, %5
  ret void
}

declare void @ui_but_search_test(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiDefSearchButO_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i16 noundef signext %9, i16 noundef signext %10, float noundef %11, float noundef %12, ptr noundef %13) local_unnamed_addr #6 {
  %15 = sitofp i32 %6 to float
  %16 = tail call fastcc ptr @ui_def_but(ptr noundef %0, i32 noundef 20992, i32 noundef %4, ptr noundef nonnull @.str.23, i32 noundef %7, i32 noundef %8, i16 noundef signext %9, i16 noundef signext %10, ptr noundef %3, float noundef 0.000000e+00, float noundef %15, float noundef %11, float noundef %12, ptr noundef %13)
  %17 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 44
  store i32 %5, ptr %17, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !109
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 8, !tbaa !109
  %21 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !191
  %23 = or i32 %22, 6
  store i32 %23, ptr %21, align 4, !tbaa !191
  tail call void @ui_check_but(ptr noundef %16)
  %24 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 35
  store ptr @operator_enum_search_cb, ptr %24, align 8, !tbaa !298
  %25 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 36
  store ptr %16, ptr %25, align 8, !tbaa !299
  %26 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 27
  store ptr @operator_enum_call_cb, ptr %26, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 28
  store ptr %16, ptr %27, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 29
  store ptr null, ptr %28, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 74
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.uiBlock, ptr %30, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !34
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 17
  %37 = load i8, ptr %36, align 8, !tbaa !110
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @ui_but_search_test(ptr noundef %16) #20
  br label %40

40:                                               ; preds = %14, %35, %39
  %41 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 59
  store ptr %1, ptr %41, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 61
  store i16 6, ptr %42, align 8, !tbaa !165
  %43 = icmp eq ptr %2, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %1, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 60
  %48 = load ptr, ptr %47, align 8, !tbaa !105
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %52 = tail call ptr %51(i64 noundef 24, ptr noundef nonnull @.str.25) #20
  store ptr %52, ptr %47, align 8, !tbaa !105
  %53 = load ptr, ptr %41, align 8, !tbaa !100
  tail call void @WM_operator_properties_create_ptr(ptr noundef %52, ptr noundef %53) #20
  br label %54

54:                                               ; preds = %44, %46, %50
  %55 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 60
  %56 = load ptr, ptr %55, align 8, !tbaa !105
  %57 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %2) #20
  %58 = getelementptr inbounds %struct.PointerRNA, ptr %56, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !300
  br label %59

59:                                               ; preds = %54, %40
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal void @operator_enum_search_cb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !302
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @__func__.operator_enum_search_cb, ptr noundef %14)
  br label %67

16:                                               ; preds = %4
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %10) #20
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !302
  %22 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %10) #20
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @__func__.operator_enum_search_cb, ptr noundef %21, ptr noundef %22)
  br label %67

24:                                               ; preds = %16
  %25 = load ptr, ptr %7, align 8, !tbaa !100
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %33 = tail call ptr %32(i64 noundef 24, ptr noundef nonnull @.str.25) #20
  store ptr %33, ptr %28, align 8, !tbaa !105
  %34 = load ptr, ptr %7, align 8, !tbaa !100
  tail call void @WM_operator_properties_create_ptr(ptr noundef %33, ptr noundef %34) #20
  br label %35

35:                                               ; preds = %24, %27, %31
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #20
  %38 = load ptr, ptr %5, align 8, !tbaa !62
  %39 = getelementptr inbounds %struct.EnumPropertyItem, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !303
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %35, %55
  %43 = phi ptr [ %56, %55 ], [ %38, %35 ]
  %44 = getelementptr inbounds %struct.EnumPropertyItem, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !268
  %46 = call ptr @BLI_strcasestr(ptr noundef %45, ptr noundef %2) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %44, align 8, !tbaa !268
  %50 = load i32, ptr %43, align 8, !tbaa !304
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to ptr
  %53 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef %49, ptr noundef %52, i32 noundef 0) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %42, %48
  %56 = getelementptr inbounds %struct.EnumPropertyItem, ptr %43, i64 1
  %57 = getelementptr inbounds %struct.EnumPropertyItem, ptr %43, i64 1, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !303
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %42, !llvm.loop !305

60:                                               ; preds = %55, %48, %35
  %61 = load i8, ptr %6, align 1, !tbaa !110
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %65 = load ptr, ptr %5, align 8, !tbaa !62
  call void %64(ptr noundef %65) #20
  br label %66

66:                                               ; preds = %63, %60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %67

67:                                               ; preds = %19, %66, %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @operator_enum_call_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2) #6 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %13 = tail call ptr %12(i64 noundef 24, ptr noundef nonnull @.str.25) #20
  store ptr %13, ptr %8, align 8, !tbaa !105
  %14 = load ptr, ptr %4, align 8, !tbaa !100
  tail call void @WM_operator_properties_create_ptr(ptr noundef %13, ptr noundef %14) #20
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  br i1 %6, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !301
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = ptrtoint ptr %2 to i64
  %24 = trunc i64 %23 to i32
  tail call void @RNA_property_enum_set(ptr noundef %17, ptr noundef nonnull %20, i32 noundef %24) #20
  br label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !302
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @__func__.operator_enum_call_cb, ptr noundef %27)
  br label %29

29:                                               ; preds = %22, %25, %15
  ret void
}

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @uiButSetFocusOnEnter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #20
  call void @wm_event_init_from_window(ptr noundef %0, ptr noundef nonnull %3) #20
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  store i16 20513, ptr %4, align 8, !tbaa !306
  %5 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  store i16 1, ptr %5, align 2, !tbaa !308
  %6 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 28
  store ptr %1, ptr %6, align 8, !tbaa !309
  %7 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 26
  store i16 0, ptr %7, align 2, !tbaa !310
  call void @wm_event_add(ptr noundef %0, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #20
  ret void
}

declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @uiButGetStrInfo(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  store i8 0, ptr %6, align 1, !tbaa !110
  call void @llvm.va_start(ptr nonnull %3)
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 42
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %18 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %20 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %21 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %22 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 21
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %24 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %25 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %30 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  br label %31

31:                                               ; preds = %286, %2
  %32 = phi ptr [ null, %2 ], [ %288, %286 ]
  %33 = load i32, ptr %3, align 16
  %34 = icmp ult i32 %33, 41
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 16
  %37 = zext nneg i32 %33 to i64
  %38 = getelementptr i8, ptr %36, i64 %37
  %39 = add nuw nsw i32 %33, 8
  store i32 %39, ptr %3, align 16
  br label %43

40:                                               ; preds = %31
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr i8, ptr %41, i64 8
  store ptr %42, ptr %9, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi ptr [ %38, %35 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %290, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !311
  switch i32 %48, label %61 [
    i32 4, label %49
    i32 8, label %52
  ]

49:                                               ; preds = %47
  %50 = load ptr, ptr %12, align 8, !tbaa !79
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %58

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 8, !tbaa !251
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8, ptr %53, align 1, !tbaa !110
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %50, %49 ], [ %53, %55 ]
  %60 = call ptr @BLI_strdup(ptr noundef nonnull %59) #20
  br label %61

61:                                               ; preds = %58, %52, %55, %47, %49
  %62 = phi ptr [ null, %49 ], [ null, %47 ], [ null, %55 ], [ null, %52 ], [ %60, %58 ]
  %63 = phi i32 [ 5, %49 ], [ %48, %47 ], [ 9, %55 ], [ 9, %52 ], [ %48, %58 ]
  switch i32 %63, label %92 [
    i32 1, label %64
    i32 2, label %70
  ]

64:                                               ; preds = %61
  %65 = load ptr, ptr %17, align 8, !tbaa !92
  %66 = icmp eq ptr %65, null
  br i1 %66, label %286, label %67

67:                                               ; preds = %64
  %68 = call ptr @RNA_property_identifier(ptr noundef nonnull %65) #20
  %69 = call ptr @BLI_strdup(ptr noundef %68) #20
  br label %286

70:                                               ; preds = %61
  %71 = load ptr, ptr %13, align 8, !tbaa !92
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %14, align 8, !tbaa !231
  %75 = call ptr @RNA_struct_identifier(ptr noundef %74) #20
  %76 = call ptr @BLI_strdup(ptr noundef %75) #20
  br label %286

77:                                               ; preds = %70
  %78 = load ptr, ptr %15, align 8, !tbaa !100
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.wmOperatorType, ptr %78, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !302
  %83 = call ptr @BLI_strdup(ptr noundef %82) #20
  br label %286

84:                                               ; preds = %77
  %85 = load i32, ptr %16, align 8, !tbaa !108
  switch i32 %85, label %286 [
    i32 5632, label %86
    i32 13824, label %86
  ]

86:                                               ; preds = %84, %84
  %87 = call ptr @uiButGetMenuType(ptr noundef %1) #20
  %88 = icmp eq ptr %87, null
  br i1 %88, label %286, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.MenuType, ptr %87, i64 0, i32 2
  %91 = call ptr @BLI_strdup(ptr noundef nonnull %90) #20
  br label %286

92:                                               ; preds = %61
  %93 = icmp eq i32 %63, 5
  switch i32 %63, label %286 [
    i32 9, label %94
    i32 5, label %94
    i32 7, label %147
    i32 10, label %174
    i32 6, label %174
    i32 3, label %174
    i32 11, label %266
    i32 12, label %279
  ]

94:                                               ; preds = %92, %92
  %95 = load ptr, ptr %28, align 8, !tbaa !92
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  br i1 %93, label %98, label %101

98:                                               ; preds = %97
  %99 = call ptr @RNA_property_ui_name(ptr noundef nonnull %95) #20
  %100 = call ptr @BLI_strdup(ptr noundef %99) #20
  br label %286

101:                                              ; preds = %97
  %102 = call ptr @RNA_property_ui_description(ptr noundef nonnull %95) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %286, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %102, align 1, !tbaa !110
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %286, label %107

107:                                              ; preds = %104
  %108 = call ptr @BLI_strdup(ptr noundef nonnull %102) #20
  br label %286

109:                                              ; preds = %94
  %110 = load ptr, ptr %29, align 8, !tbaa !100
  %111 = icmp eq ptr %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.wmOperatorType, ptr %110, i64 0, i32 11
  %114 = load ptr, ptr %113, align 8, !tbaa !272
  br i1 %93, label %115, label %118

115:                                              ; preds = %112
  %116 = call ptr @RNA_struct_ui_name(ptr noundef %114) #20
  %117 = call ptr @BLI_strdup(ptr noundef %116) #20
  br label %286

118:                                              ; preds = %112
  %119 = call ptr @RNA_struct_ui_description(ptr noundef %114) #20
  %120 = icmp eq ptr %119, null
  br i1 %120, label %286, label %121

121:                                              ; preds = %118
  %122 = load i8, ptr %119, align 1, !tbaa !110
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %286, label %124

124:                                              ; preds = %121
  %125 = call ptr @BLI_strdup(ptr noundef nonnull %119) #20
  br label %286

126:                                              ; preds = %109
  %127 = load i32, ptr %30, align 8, !tbaa !108
  switch i32 %127, label %286 [
    i32 5632, label %128
    i32 13824, label %128
  ]

128:                                              ; preds = %126, %126
  %129 = call ptr @uiButGetMenuType(ptr noundef %1) #20
  %130 = icmp eq ptr %129, null
  br i1 %130, label %286, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.MenuType, ptr %129, i64 0, i32 8, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !313
  %134 = icmp eq ptr %133, null
  br i1 %134, label %286, label %135

135:                                              ; preds = %131
  br i1 %93, label %136, label %139

136:                                              ; preds = %135
  %137 = call ptr @RNA_struct_ui_name(ptr noundef nonnull %133) #20
  %138 = call ptr @BLI_strdup(ptr noundef %137) #20
  br label %286

139:                                              ; preds = %135
  %140 = call ptr @RNA_struct_ui_description(ptr noundef nonnull %133) #20
  %141 = icmp eq ptr %140, null
  br i1 %141, label %286, label %142

142:                                              ; preds = %139
  %143 = load i8, ptr %140, align 1, !tbaa !110
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %286, label %145

145:                                              ; preds = %142
  %146 = call ptr @BLI_strdup(ptr noundef nonnull %140) #20
  br label %286

147:                                              ; preds = %92
  %148 = load ptr, ptr %25, align 8, !tbaa !92
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call ptr @RNA_property_translation_context(ptr noundef nonnull %148) #20
  br label %168

152:                                              ; preds = %147
  %153 = load ptr, ptr %26, align 8, !tbaa !100
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.wmOperatorType, ptr %153, i64 0, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !272
  %158 = call ptr @RNA_struct_translation_context(ptr noundef %157) #20
  br label %168

159:                                              ; preds = %152
  %160 = load i32, ptr %27, align 8, !tbaa !108
  switch i32 %160, label %168 [
    i32 5632, label %161
    i32 13824, label %161
  ]

161:                                              ; preds = %159, %159
  %162 = call ptr @uiButGetMenuType(ptr noundef %1) #20
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.MenuType, ptr %162, i64 0, i32 8, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !313
  %167 = call ptr @RNA_struct_translation_context(ptr noundef %166) #20
  br label %168

168:                                              ; preds = %161, %164, %159, %155, %150
  %169 = phi ptr [ %151, %150 ], [ %158, %155 ], [ null, %159 ], [ %167, %164 ], [ null, %161 ]
  %170 = call zeroext i8 @BLF_is_default_context(ptr noundef %169) #20
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %171, ptr %169, ptr @.str.26
  %173 = call ptr @BLI_strdup(ptr noundef %172) #20
  br label %286

174:                                              ; preds = %92, %92, %92
  %175 = load ptr, ptr %19, align 8, !tbaa !92
  %176 = icmp eq ptr %175, null
  br i1 %176, label %190, label %177

177:                                              ; preds = %174
  %178 = call i32 @RNA_property_type(ptr noundef nonnull %175) #20
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load ptr, ptr %19, align 8, !tbaa !92
  %182 = load i32, ptr %21, align 8, !tbaa !108
  %183 = icmp eq i32 %182, 1024
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load float, ptr %22, align 4, !tbaa !117
  %186 = fptosi float %185 to i32
  br label %216

187:                                              ; preds = %180
  %188 = call double @ui_get_but_val(ptr noundef %1)
  %189 = fptosi double %188 to i32
  br label %216

190:                                              ; preds = %177, %174
  %191 = load ptr, ptr %23, align 8, !tbaa !100
  %192 = icmp eq ptr %191, null
  br i1 %192, label %216, label %193

193:                                              ; preds = %190
  %194 = load ptr, ptr %24, align 8, !tbaa !105
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %198 = call ptr %197(i64 noundef 24, ptr noundef nonnull @.str.25) #20
  store ptr %198, ptr %24, align 8, !tbaa !105
  %199 = load ptr, ptr %23, align 8, !tbaa !100
  call void @WM_operator_properties_create_ptr(ptr noundef %198, ptr noundef %199) #20
  br label %200

200:                                              ; preds = %193, %196
  %201 = load ptr, ptr %24, align 8, !tbaa !105
  %202 = load ptr, ptr %23, align 8, !tbaa !100
  %203 = getelementptr inbounds %struct.wmOperatorType, ptr %202, i64 0, i32 13
  %204 = load ptr, ptr %203, align 8, !tbaa !301
  %205 = icmp eq ptr %204, null
  br i1 %205, label %216, label %206

206:                                              ; preds = %200
  %207 = call i32 @RNA_property_type(ptr noundef nonnull %204) #20
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load ptr, ptr %203, align 8, !tbaa !301
  %211 = call zeroext i8 @RNA_struct_contains_property(ptr noundef %201, ptr noundef %210) #20
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %203, align 8, !tbaa !301
  %215 = call i32 @RNA_property_enum_get(ptr noundef %201, ptr noundef %214) #20
  br label %216

216:                                              ; preds = %200, %206, %213, %209, %184, %187, %190
  %217 = phi ptr [ null, %190 ], [ %20, %187 ], [ %20, %184 ], [ %201, %213 ], [ null, %209 ], [ null, %206 ], [ null, %200 ]
  %218 = phi ptr [ null, %190 ], [ %181, %187 ], [ %181, %184 ], [ %214, %213 ], [ null, %209 ], [ null, %206 ], [ null, %200 ]
  %219 = phi i32 [ 0, %190 ], [ %189, %187 ], [ %186, %184 ], [ %215, %213 ], [ 0, %209 ], [ 0, %206 ], [ 0, %200 ]
  %220 = icmp ne ptr %217, null
  %221 = icmp ne ptr %218, null
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %223, label %286

223:                                              ; preds = %216
  %224 = icmp eq ptr %32, null
  br i1 %224, label %225, label %243

225:                                              ; preds = %223
  call void @RNA_property_enum_items_gettexted(ptr noundef %0, ptr noundef nonnull %217, ptr noundef nonnull %218, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %226 = load ptr, ptr %4, align 8, !tbaa !62
  %227 = load i32, ptr %5, align 4, !tbaa !56
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %225, %239
  %230 = phi i32 [ %240, %239 ], [ 0, %225 ]
  %231 = phi ptr [ %241, %239 ], [ %226, %225 ]
  %232 = getelementptr inbounds %struct.EnumPropertyItem, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !303
  %234 = load i8, ptr %233, align 1, !tbaa !110
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %229
  %237 = load i32, ptr %231, align 8, !tbaa !304
  %238 = icmp eq i32 %237, %219
  br i1 %238, label %243, label %239

239:                                              ; preds = %229, %236
  %240 = add nuw nsw i32 %230, 1
  %241 = getelementptr inbounds %struct.EnumPropertyItem, ptr %231, i64 1
  %242 = icmp eq i32 %240, %227
  br i1 %242, label %243, label %229, !llvm.loop !315

243:                                              ; preds = %236, %239, %225, %223
  %244 = phi ptr [ %32, %223 ], [ %226, %225 ], [ %241, %239 ], [ %231, %236 ]
  %245 = icmp eq ptr %244, null
  br i1 %245, label %286, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.EnumPropertyItem, ptr %244, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !303
  %249 = icmp eq ptr %248, null
  br i1 %249, label %286, label %250

250:                                              ; preds = %246
  switch i32 %63, label %257 [
    i32 3, label %251
    i32 6, label %253
  ]

251:                                              ; preds = %250
  %252 = call ptr @BLI_strdup(ptr noundef nonnull %248) #20
  br label %286

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.EnumPropertyItem, ptr %244, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !268
  %256 = call ptr @BLI_strdup(ptr noundef %255) #20
  br label %286

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.EnumPropertyItem, ptr %244, i64 0, i32 4
  %259 = load ptr, ptr %258, align 8, !tbaa !316
  %260 = icmp eq ptr %259, null
  br i1 %260, label %286, label %261

261:                                              ; preds = %257
  %262 = load i8, ptr %259, align 1, !tbaa !110
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %286, label %264

264:                                              ; preds = %261
  %265 = call ptr @BLI_strdup(ptr noundef nonnull %259) #20
  br label %286

266:                                              ; preds = %92
  %267 = load ptr, ptr %18, align 8, !tbaa !121
  %268 = getelementptr inbounds %struct.uiBlock, ptr %267, i64 0, i32 27
  %269 = load i32, ptr %268, align 8, !tbaa !34
  %270 = and i32 %269, 257
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %286, label %272

272:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #20
  %273 = call fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7)
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = call ptr @BLI_strdup(ptr noundef nonnull %7) #20
  br label %277

277:                                              ; preds = %275, %272
  %278 = phi ptr [ %276, %275 ], [ %62, %272 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #20
  br label %286

279:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #20
  %280 = call fastcc zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = call ptr @BLI_strdup(ptr noundef nonnull %8) #20
  br label %284

284:                                              ; preds = %282, %279
  %285 = phi ptr [ %283, %282 ], [ %62, %279 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #20
  br label %286

286:                                              ; preds = %92, %216, %251, %257, %261, %264, %253, %246, %243, %128, %136, %131, %145, %142, %139, %126, %118, %121, %124, %101, %104, %107, %86, %89, %84, %80, %73, %168, %277, %266, %284, %98, %115, %64, %67
  %287 = phi ptr [ %69, %67 ], [ %62, %64 ], [ %76, %73 ], [ %83, %80 ], [ %100, %98 ], [ %117, %115 ], [ %173, %168 ], [ %62, %266 ], [ %278, %277 ], [ %285, %284 ], [ %62, %84 ], [ %91, %89 ], [ %62, %86 ], [ %108, %107 ], [ %62, %104 ], [ %62, %101 ], [ %125, %124 ], [ %62, %121 ], [ %62, %118 ], [ %62, %126 ], [ %138, %136 ], [ %62, %131 ], [ %62, %128 ], [ %146, %145 ], [ %62, %142 ], [ %62, %139 ], [ %252, %251 ], [ %256, %253 ], [ %265, %264 ], [ %62, %261 ], [ %62, %257 ], [ %62, %246 ], [ %62, %243 ], [ %62, %216 ], [ %62, %92 ]
  %288 = phi ptr [ %32, %67 ], [ %32, %64 ], [ %32, %73 ], [ %32, %80 ], [ %32, %98 ], [ %32, %115 ], [ %32, %168 ], [ %32, %266 ], [ %32, %277 ], [ %32, %284 ], [ %32, %84 ], [ %32, %89 ], [ %32, %86 ], [ %32, %107 ], [ %32, %104 ], [ %32, %101 ], [ %32, %124 ], [ %32, %121 ], [ %32, %118 ], [ %32, %126 ], [ %32, %136 ], [ %32, %131 ], [ %32, %128 ], [ %32, %145 ], [ %32, %142 ], [ %32, %139 ], [ %244, %251 ], [ %244, %253 ], [ %244, %264 ], [ %244, %261 ], [ %244, %257 ], [ %244, %246 ], [ null, %243 ], [ %32, %216 ], [ %32, %92 ]
  %289 = getelementptr inbounds %struct.uiStringInfo, ptr %45, i64 0, i32 1
  store ptr %287, ptr %289, align 8, !tbaa !317
  br label %31, !llvm.loop !318

290:                                              ; preds = %43
  call void @llvm.va_end(ptr %3)
  %291 = load i8, ptr %6, align 1, !tbaa !110
  %292 = icmp ne i8 %291, 0
  %293 = load ptr, ptr %4, align 8
  %294 = icmp ne ptr %293, null
  %295 = select i1 %292, i1 %294, i1 false
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %297(ptr noundef nonnull %293) #20
  br label %298

298:                                              ; preds = %296, %290
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #7

declare ptr @uiButGetMenuType(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_property_ui_description(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_property_translation_context(ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_translation_context(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BLF_is_default_context(ptr noundef) local_unnamed_addr #7

declare void @RNA_property_enum_items_gettexted(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ui_but_event_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !302
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %20 = load i16, ptr %19, align 8, !tbaa !165
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %18, i32 noundef %21, ptr noundef %16, i8 noundef zeroext 1, ptr noundef %2, i32 noundef 128) #20
  %23 = icmp ne ptr %22, null
  br label %35

24:                                               ; preds = %3
  %25 = tail call ptr @uiButGetMenuType(ptr noundef %1) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %28 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @__func__.ui_but_event_operator_string) #20
  %29 = call ptr @IDP_NewString(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.33, i32 noundef 64) #20
  %30 = call zeroext i8 @IDP_AddToGroup(ptr noundef %28, ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.MenuType, ptr %25, i64 0, i32 2
  call void @IDP_AssignString(ptr noundef %29, ptr noundef nonnull %31, i32 noundef 64) #20
  %32 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef %28, i8 noundef zeroext 1, ptr noundef %2, i32 noundef 128) #20
  %33 = icmp ne ptr %32, null
  call void @IDP_FreeProperty(ptr noundef %28) #20
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %34(ptr noundef %28) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %35

35:                                               ; preds = %24, %27, %15
  %36 = phi i1 [ %23, %15 ], [ %33, %27 ], [ false, %24 ]
  %37 = zext i1 %36 to i8
  ret i8 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ui_but_event_property_operator_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !171
  switch i16 %14, label %44 [
    i16 21075, label %15
    i16 17235, label %32
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !231
  %18 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %17, ptr noundef nonnull @RNA_Space) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !tbaa !92
  %22 = tail call ptr @RNA_property_identifier(ptr noundef %21) #20
  %23 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.41, ptr noundef %22) #20
  br label %44

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 8, !tbaa !231
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %25, ptr noundef nonnull @RNA_DopeSheet) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !tbaa !92
  %30 = tail call ptr @RNA_property_identifier(ptr noundef %29) #20
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.42, ptr noundef %30) #20
  br label %44

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !231
  %35 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %34, ptr noundef nonnull @RNA_ToolSettings) #20
  %36 = icmp eq i8 %35, 0
  %37 = load ptr, ptr %5, align 8, !tbaa !92
  %38 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %9, ptr noundef %37) #20
  br i1 %36, label %39, label %44

39:                                               ; preds = %32
  %40 = icmp eq ptr %38, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef nonnull %38) #20
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %43(ptr noundef nonnull %38) #20
  br label %44

44:                                               ; preds = %32, %24, %28, %20, %12, %41, %39, %8
  %45 = phi ptr [ null, %8 ], [ %23, %20 ], [ %31, %28 ], [ null, %24 ], [ null, %12 ], [ %42, %41 ], [ null, %39 ], [ %38, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %48 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @__func__.ui_but_event_property_operator_string) #20
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #21
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  %52 = call ptr @IDP_NewString(ptr noundef nonnull %45, ptr noundef nonnull @.str.44, i32 noundef %51) #20
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef %48, ptr noundef %52) #20
  br label %57

54:                                               ; preds = %57
  %55 = add nuw nsw i64 %58, 1
  %56 = icmp eq i64 %55, 6
  br i1 %56, label %63, label %57, !llvm.loop !319

57:                                               ; preds = %47, %54
  %58 = phi i64 [ 0, %47 ], [ %55, %54 ]
  %59 = getelementptr inbounds [7 x ptr], ptr @__const.ui_but_event_property_operator_string.ctx_toggle_opnames, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %60, i32 noundef 1, ptr noundef %48, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 128) #20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %54, label %63

63:                                               ; preds = %57, %54
  %64 = phi i8 [ 0, %54 ], [ 1, %57 ]
  call void @IDP_FreeProperty(ptr noundef %48) #20
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %65(ptr noundef %48) #20
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %66(ptr noundef nonnull %45) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %67

67:                                               ; preds = %44, %63, %3
  %68 = phi i8 [ 0, %3 ], [ %64, %63 ], [ 0, %44 ]
  ret i8 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: nounwind uwtable
define dso_local void @UI_init() local_unnamed_addr #6 {
  tail call void @ui_resources_init() #20
  ret void
}

declare void @ui_resources_init() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @UI_init_userdef() local_unnamed_addr #6 {
  tail call void @init_userdef_do_versions() #20
  tail call void @uiStyleInit() #20
  ret void
}

declare void @init_userdef_do_versions() local_unnamed_addr #7

declare void @uiStyleInit() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @UI_reinit_font() local_unnamed_addr #6 {
  tail call void @uiStyleInit() #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_exit() local_unnamed_addr #6 {
  tail call void @ui_resources_free() #20
  tail call void @ui_button_clipboard_free() #20
  ret void
}

declare void @ui_resources_free() local_unnamed_addr #7

declare void @ui_button_clipboard_free() local_unnamed_addr #7

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

declare ptr @UI_GetStyle() local_unnamed_addr #7

declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #7

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #7

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_draw_linkline(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 18
  %14 = load float, ptr %13, align 4, !tbaa !75
  %15 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 18, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !76
  %17 = fadd float %14, %16
  %18 = fmul float %17, 5.000000e-01
  %19 = fptosi float %18 to i32
  store i32 %19, ptr %4, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 18, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !180
  %22 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 18, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !179
  %24 = fadd float %21, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18
  %29 = load float, ptr %28, align 4, !tbaa !75
  %30 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !76
  %32 = fadd float %29, %31
  %33 = fmul float %32, 5.000000e-01
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !46
  %36 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !180
  %38 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 18, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !179
  %40 = fadd float %37, %39
  %41 = fmul float %40, 5.000000e-01
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %42, ptr %43, align 4, !tbaa !49
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %12
  tail call void @UI_ThemeColor(i32 noundef 24) #20
  br label %66

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.uiLinkLine, ptr %0, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !320
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100) #20
  br label %66

52:                                               ; preds = %46
  %53 = icmp eq i32 %1, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !109
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !109
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %54
  tail call void @UI_ThemeColor(i32 noundef 4) #20
  br label %66

65:                                               ; preds = %59, %52
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  br label %66

66:                                               ; preds = %51, %65, %64, %45
  call void @ui_draw_link_bezier(ptr noundef nonnull %4) #20
  br label %67

67:                                               ; preds = %3, %8, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #7

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare void @ui_draw_link_bezier(ptr noundef) local_unnamed_addr #7

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare double @BKE_scene_unit_scale(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #7

declare i32 @uiFloatPrecisionCalc(i32 noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

declare void @ui_button_active_free(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #7

declare void @RNA_property_int_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_int_get_array_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_float_get_array_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare void @ui_layout_add_but(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @ui_def_but_rna__menu(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #20
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  %9 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = or i32 %10, 128
  store i32 %11, ptr %9, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %15 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  call void @RNA_property_enum_items_gettexted(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %16, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #20
  call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #20
  %17 = load ptr, ptr %4, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !303
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %3, %38
  %22 = phi ptr [ %43, %38 ], [ %19, %3 ]
  %23 = phi i32 [ %39, %38 ], [ 0, %3 ]
  %24 = phi i32 [ %41, %38 ], [ 0, %3 ]
  %25 = phi ptr [ %40, %38 ], [ %17, %3 ]
  %26 = load i8, ptr %22, align 1, !tbaa !110
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %25, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !268
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %9, align 8, !tbaa !34
  %34 = or i32 %33, 2048
  store i32 %34, ptr %9, align 8, !tbaa !34
  %35 = add nsw i32 %23, 1
  br label %38

36:                                               ; preds = %21
  %37 = add nsw i32 %23, 1
  br label %38

38:                                               ; preds = %28, %32, %36
  %39 = phi i32 [ %37, %36 ], [ %35, %32 ], [ %23, %28 ]
  %40 = getelementptr inbounds %struct.EnumPropertyItem, ptr %25, i64 1
  %41 = add nuw nsw i32 %24, 1
  %42 = getelementptr inbounds %struct.EnumPropertyItem, ptr %25, i64 1, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !303
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !321

45:                                               ; preds = %38, %3
  %46 = phi i32 [ 0, %3 ], [ %41, %38 ]
  %47 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %48 = add nsw i32 %47, 20
  %49 = sdiv i32 %48, 20
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 1)
  %51 = icmp sgt i32 %47, 159
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = add nuw nsw i32 %47, 25
  %54 = udiv i32 %53, 25
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi i32 [ %54, %52 ], [ %50, %45 ]
  %57 = udiv i32 %46, %56
  %58 = icmp ugt i32 %56, %46
  %59 = select i1 %58, i32 1, i32 %57
  br label %60

60:                                               ; preds = %60, %55
  %61 = phi i32 [ %59, %55 ], [ %64, %60 ]
  %62 = mul nsw i32 %61, %56
  %63 = icmp ult i32 %62, %46
  %64 = add nuw nsw i32 %61, 1
  br i1 %63, label %60, label %65, !llvm.loop !322

65:                                               ; preds = %60
  %66 = load ptr, ptr %15, align 8, !tbaa !92
  %67 = call ptr @RNA_property_ui_name(ptr noundef %66) #20
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !181
  %69 = mul i16 %68, 5
  %70 = call fastcc ptr @ui_def_but(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef %67, i32 noundef 0, i32 noundef 0, i16 noundef signext %69, i16 noundef signext %68, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23)
  call void @ui_check_but(ptr noundef %70)
  call void @uiItemS(ptr noundef %1) #20
  %71 = call ptr @uiLayoutSplit(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 0) #20
  %72 = icmp eq i32 %46, 0
  br i1 %72, label %178, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 17
  %75 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 17
  %76 = zext i32 %46 to i64
  %77 = zext i32 %46 to i64
  br label %78

78:                                               ; preds = %73, %174
  %79 = phi i64 [ 0, %73 ], [ %175, %174 ]
  %80 = phi i64 [ 1, %73 ], [ %176, %174 ]
  %81 = phi i32 [ 0, %73 ], [ %121, %174 ]
  %82 = phi i32 [ 0, %73 ], [ %120, %174 ]
  %83 = phi ptr [ null, %73 ], [ %119, %174 ]
  %84 = zext i32 %81 to i64
  %85 = icmp eq i64 %79, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %78
  %87 = add nuw nsw i64 %79, 1
  %88 = icmp ult i64 %87, %76
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = load ptr, ptr %4, align 8, !tbaa !62
  br label %91

91:                                               ; preds = %89, %106
  %92 = phi i64 [ %80, %89 ], [ %107, %106 ]
  %93 = sub nuw nsw i64 %92, %79
  %94 = trunc i64 %93 to i32
  %95 = srem i32 %94, %61
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %92, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !303
  %100 = load i8, ptr %99, align 1, !tbaa !110
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %92, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !268
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %97, %102
  %107 = add nuw nsw i64 %92, 1
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %46, %108
  br i1 %109, label %114, label %91, !llvm.loop !323

110:                                              ; preds = %91
  %111 = trunc i64 %92 to i32
  br label %114

112:                                              ; preds = %102
  %113 = trunc i64 %92 to i32
  br label %114

114:                                              ; preds = %110, %112, %106, %86
  %115 = phi i32 [ %46, %86 ], [ %111, %110 ], [ %113, %112 ], [ %46, %106 ]
  %116 = call ptr @uiLayoutColumn(ptr noundef %71, i32 noundef 0) #20
  %117 = trunc i64 %79 to i32
  br label %118

118:                                              ; preds = %114, %78
  %119 = phi ptr [ %116, %114 ], [ %83, %78 ]
  %120 = phi i32 [ %117, %114 ], [ %82, %78 ]
  %121 = phi i32 [ %115, %114 ], [ %81, %78 ]
  %122 = load i32, ptr %9, align 8, !tbaa !34
  %123 = and i32 %122, 2048
  %124 = icmp eq i32 %123, 0
  %125 = load ptr, ptr %4, align 8, !tbaa !62
  %126 = trunc i64 %79 to i32
  %127 = xor i32 %126, -1
  %128 = add i32 %120, %127
  %129 = add i32 %128, %121
  %130 = sext i32 %129 to i64
  %131 = select i1 %124, i64 %130, i64 %79
  %132 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !303
  %134 = load i8, ptr %133, align 1, !tbaa !110
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %118
  %137 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !268
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !270
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @uiItemL(ptr noundef %119, ptr noundef nonnull %138, i32 noundef %142) #20
  br label %174

145:                                              ; preds = %140
  %146 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !181
  %147 = mul i16 %146, 5
  %148 = call fastcc ptr @ui_def_but(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %138, i32 noundef 0, i32 noundef 0, i16 noundef signext %147, i16 noundef signext %146, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23)
  call void @ui_check_but(ptr noundef %148)
  br label %174

149:                                              ; preds = %136
  call void @uiItemS(ptr noundef %119) #20
  br label %174

150:                                              ; preds = %118
  %151 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131
  %152 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !270
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !268
  %157 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !181
  %158 = mul i16 %157, 5
  %159 = load i32, ptr %151, align 8, !tbaa !304
  %160 = sitofp i32 %159 to float
  %161 = getelementptr inbounds %struct.EnumPropertyItem, ptr %125, i64 %131, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !316
  br i1 %154, label %172, label %163

163:                                              ; preds = %150
  %164 = call fastcc ptr @ui_def_but(ptr noundef %6, i32 noundef 10336, i32 noundef -1, ptr noundef %156, i32 noundef 0, i32 noundef 0, i16 noundef signext %158, i16 noundef signext %157, ptr noundef nonnull %74, float noundef %160, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef %162)
  %165 = getelementptr inbounds %struct.uiBut, ptr %164, i64 0, i32 44
  store i32 %153, ptr %165, align 8, !tbaa !153
  %166 = getelementptr inbounds %struct.uiBut, ptr %164, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !109
  %168 = or i32 %167, 8
  store i32 %168, ptr %166, align 8, !tbaa !109
  call void @ui_check_but(ptr noundef %164)
  %169 = getelementptr inbounds %struct.uiBut, ptr %164, i64 0, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !191
  %171 = or i32 %170, 4
  store i32 %171, ptr %169, align 4, !tbaa !191
  br label %174

172:                                              ; preds = %150
  %173 = call fastcc ptr @ui_def_but(ptr noundef %6, i32 noundef 10336, i32 noundef -1, ptr noundef %156, i32 noundef 0, i32 noundef 0, i16 noundef signext %158, i16 noundef signext %157, ptr noundef nonnull %75, float noundef %160, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef %162)
  call void @ui_check_but(ptr noundef %173)
  br label %174

174:                                              ; preds = %144, %145, %149, %172, %163
  %175 = add nuw nsw i64 %79, 1
  %176 = add nuw nsw i64 %80, 1
  %177 = icmp eq i64 %175, %77
  br i1 %177, label %178, label %78, !llvm.loop !324

178:                                              ; preds = %174, %65
  call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #20
  %179 = load i8, ptr %5, align 1, !tbaa !110
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %183 = load ptr, ptr %4, align 8, !tbaa !62
  call void %182(ptr noundef %183) #20
  br label %184

184:                                              ; preds = %181, %178
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

declare i32 @RNA_property_ui_icon(ptr noundef) local_unnamed_addr #7

declare void @RNA_property_int_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @RNA_property_float_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @RNA_property_string_maxlength(ptr noundef) local_unnamed_addr #7

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #7

declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @uiItemS(ptr noundef) local_unnamed_addr #7

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #7

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i8 @RNA_struct_undo_check(ptr noundef) local_unnamed_addr #7

declare double @bUnit_ClosestScalar(double noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @IDP_NewString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @IDP_AssignString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #7

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { cold }

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
!46 = !{!47, !42, i64 4}
!47 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!48 = !{!47, !42, i64 0}
!49 = !{!47, !42, i64 12}
!50 = !{!47, !42, i64 8}
!51 = !{!41, !41, i64 0}
!52 = !{!35, !36, i64 32}
!53 = !{!54, !42, i64 224}
!54 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !43, i64 240, !43, i64 242, !43, i64 244, !43, i64 246, !43, i64 248, !43, i64 250, !42, i64 252, !36, i64 256, !36, i64 264}
!55 = !{!54, !42, i64 228}
!56 = !{!42, !42, i64 0}
!57 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!58 = !{!59, !42, i64 176}
!59 = !{!"ARegion", !36, i64 0, !36, i64 8, !60, i64 16, !47, i64 176, !47, i64 192, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !41, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!60 = !{!"View2D", !40, i64 0, !40, i64 16, !47, i64 32, !47, i64 48, !47, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !36, i64 128, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 152}
!61 = !{!59, !42, i64 184}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!39, !36, i64 0}
!67 = !{!35, !41, i64 296}
!68 = !{!54, !42, i64 232}
!69 = !{!35, !41, i64 300}
!70 = !{!35, !41, i64 304}
!71 = !{!54, !42, i64 236}
!72 = !{!35, !41, i64 308}
!73 = distinct !{!73, !64, !65}
!74 = !{!35, !42, i64 472}
!75 = !{!40, !41, i64 0}
!76 = !{!40, !41, i64 4}
!77 = !{!35, !42, i64 476}
!78 = !{!35, !36, i64 16}
!79 = !{!80, !36, i64 56}
!80 = !{!"uiBut", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !43, i64 32, !43, i64 34, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !40, i64 592, !36, i64 608, !41, i64 616, !41, i64 620, !41, i64 624, !41, i64 628, !41, i64 632, !41, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !42, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !43, i64 794, !43, i64 796, !36, i64 800, !36, i64 808, !81, i64 816, !36, i64 840, !42, i64 848, !81, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !43, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !41, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!81 = !{!"PointerRNA", !82, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!"", !36, i64 0}
!83 = !{!35, !41, i64 480}
!84 = !{!35, !41, i64 488}
!85 = !{!35, !41, i64 484}
!86 = !{!35, !41, i64 492}
!87 = !{!35, !42, i64 460}
!88 = !{!35, !42, i64 464}
!89 = !{!35, !42, i64 468}
!90 = !{!80, !43, i64 36}
!91 = !{!80, !36, i64 832}
!92 = !{!80, !36, i64 840}
!93 = !{!80, !42, i64 848}
!94 = !{!80, !36, i64 648}
!95 = !{!80, !36, i64 672}
!96 = !{!80, !36, i64 656}
!97 = !{!80, !36, i64 664}
!98 = !{!80, !36, i64 608}
!99 = !{!80, !42, i64 28}
!100 = !{!80, !36, i64 888}
!101 = distinct !{!101, !64, !65}
!102 = distinct !{!102, !64, !65}
!103 = !{!35, !36, i64 40}
!104 = !{!80, !36, i64 936}
!105 = !{!80, !36, i64 896}
!106 = !{!80, !36, i64 680}
!107 = !{!80, !36, i64 752}
!108 = !{!80, !42, i64 24}
!109 = !{!80, !42, i64 16}
!110 = !{!37, !37, i64 0}
!111 = !{!44, !44, i64 0}
!112 = !{i32 -1, i32 2}
!113 = !{!80, !36, i64 960}
!114 = !{!80, !36, i64 952}
!115 = !{!80, !36, i64 968}
!116 = !{!80, !41, i64 616}
!117 = !{!80, !41, i64 620}
!118 = !{!80, !41, i64 624}
!119 = !{!80, !41, i64 628}
!120 = !{!80, !43, i64 796}
!121 = !{!80, !36, i64 992}
!122 = !{!35, !36, i64 528}
!123 = !{!35, !36, i64 536}
!124 = !{!80, !37, i64 792}
!125 = !{!126, !37, i64 5}
!126 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!127 = !{!126, !37, i64 4}
!128 = !{!126, !43, i64 6}
!129 = !{!126, !41, i64 0}
!130 = !{!80, !41, i64 636}
!131 = !{!132, !41, i64 900}
!132 = !{!"Scene", !133, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !134, i64 280, !141, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !42, i64 4380, !39, i64 4384, !142, i64 4400, !143, i64 4416, !126, i64 4600, !36, i64 4608, !146, i64 4616, !36, i64 4640, !147, i64 4648, !147, i64 4656, !136, i64 4664, !137, i64 4824, !148, i64 4888, !36, i64 4952}
!133 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!134 = !{!"RenderData", !135, i64 0, !36, i64 248, !36, i64 256, !138, i64 264, !139, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !41, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !43, i64 432, !43, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !42, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !42, i64 484, !42, i64 488, !43, i64 492, !43, i64 494, !42, i64 496, !42, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !40, i64 544, !40, i64 560, !47, i64 576, !39, i64 592, !43, i64 608, !43, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !42, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !41, i64 660, !41, i64 664, !43, i64 668, !43, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !42, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !42, i64 2520, !43, i64 2524, !43, i64 2526, !41, i64 2528, !41, i64 2532, !43, i64 2536, !43, i64 2538, !41, i64 2540, !43, i64 2544, !43, i64 2546, !42, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !42, i64 2576, !41, i64 2580, !37, i64 2584, !140, i64 2616, !42, i64 3976, !42, i64 3980}
!135 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !136, i64 24, !137, i64 184}
!136 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!137 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!138 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !43, i64 48, !43, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!139 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !36, i64 64}
!140 = !{!"BakeData", !135, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!141 = !{!"AudioData", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !43, i64 20, !43, i64 22, !41, i64 24, !41, i64 28}
!142 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!143 = !{!"GameData", !142, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !144, i64 40, !43, i64 64, !43, i64 66, !41, i64 68, !145, i64 72, !41, i64 128, !41, i64 132, !42, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!144 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!145 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !41, i64 44, !41, i64 48, !43, i64 52, !43, i64 54}
!146 = !{!"PhysicsSettings", !37, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!147 = !{!"long", !37, i64 0}
!148 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!149 = !{!132, !43, i64 820}
!150 = !{!80, !43, i64 794}
!151 = !{!80, !36, i64 0}
!152 = !{!80, !36, i64 688}
!153 = !{!80, !42, i64 784}
!154 = !{!80, !43, i64 40}
!155 = !{!156, !36, i64 24}
!156 = !{!"uiLinkLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 34}
!157 = !{!156, !36, i64 16}
!158 = distinct !{!158, !64, !65}
!159 = distinct !{!159, !64, !65}
!160 = distinct !{!160, !64, !65}
!161 = distinct !{!161, !64, !65}
!162 = !{!35, !37, i64 432}
!163 = !{!35, !44, i64 440}
!164 = !{!35, !37, i64 458}
!165 = !{!80, !43, i64 904}
!166 = !{!80, !37, i64 788}
!167 = !{!132, !42, i64 680}
!168 = distinct !{!168, !64, !65}
!169 = !{!35, !36, i64 64}
!170 = !{!80, !37, i64 906}
!171 = !{!43, !43, i64 0}
!172 = distinct !{!172, !64, !65}
!173 = distinct !{!173, !64, !65}
!174 = distinct !{!174, !64, !65}
!175 = distinct !{!175, !64, !65}
!176 = !{!80, !37, i64 790}
!177 = distinct !{!177, !64, !65}
!178 = distinct !{!178, !64, !65}
!179 = !{!40, !41, i64 12}
!180 = !{!40, !41, i64 8}
!181 = !{!182, !43, i64 8948}
!182 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !42, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !43, i64 8496, !43, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !37, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !42, i64 8912, !42, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !41, i64 8956, !41, i64 8960, !42, i64 8964, !43, i64 8968, !43, i64 8970, !41, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !183, i64 8984, !37, i64 9760, !37, i64 9772, !43, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !42, i64 10896, !42, i64 10900, !41, i64 10904, !41, i64 10908, !42, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !184, i64 10928}
!183 = !{!"ColorBand", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!184 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !37, i64 26}
!185 = !{!35, !37, i64 459}
!186 = !{!80, !41, i64 600}
!187 = !{!80, !41, i64 592}
!188 = !{!80, !41, i64 596}
!189 = !{!80, !41, i64 604}
!190 = distinct !{!190, !64, !65}
!191 = !{!80, !42, i64 20}
!192 = !{!80, !36, i64 8}
!193 = distinct !{!193, !64, !65}
!194 = distinct !{!194, !64, !65}
!195 = distinct !{!195, !64, !65}
!196 = !{!197, !43, i64 176}
!197 = !{!"uiStyle", !36, i64 0, !36, i64 8, !37, i64 16, !198, i64 80, !198, i64 112, !198, i64 144, !198, i64 176, !41, i64 208, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230}
!198 = !{!"uiFontStyle", !43, i64 0, !43, i64 2, !43, i64 4, !37, i64 6, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !41, i64 24, !41, i64 28}
!199 = distinct !{!199, !64, !65}
!200 = distinct !{!200, !64, !65}
!201 = distinct !{!201, !64, !65}
!202 = !{!203, !36, i64 136}
!203 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !42, i64 128, !43, i64 132, !43, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !42, i64 160, !42, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!204 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 64, !110, i64 80, i64 2, !171, i64 82, i64 2, !171, i64 84, i64 2, !171, i64 86, i64 6, !110, i64 92, i64 2, !171, i64 94, i64 2, !171, i64 96, i64 2, !171, i64 98, i64 2, !171, i64 100, i64 2, !171, i64 102, i64 2, !171, i64 104, i64 4, !51, i64 108, i64 4, !51, i64 112, i64 2, !171, i64 114, i64 2, !171, i64 116, i64 2, !171, i64 118, i64 6, !110, i64 124, i64 2, !171, i64 126, i64 2, !171, i64 128, i64 2, !171, i64 130, i64 2, !171, i64 132, i64 2, !171, i64 134, i64 2, !171, i64 136, i64 4, !51, i64 140, i64 4, !51, i64 144, i64 2, !171, i64 146, i64 2, !171, i64 148, i64 2, !171, i64 150, i64 6, !110, i64 156, i64 2, !171, i64 158, i64 2, !171, i64 160, i64 2, !171, i64 162, i64 2, !171, i64 164, i64 2, !171, i64 166, i64 2, !171, i64 168, i64 4, !51, i64 172, i64 4, !51, i64 176, i64 2, !171, i64 178, i64 2, !171, i64 180, i64 2, !171, i64 182, i64 6, !110, i64 188, i64 2, !171, i64 190, i64 2, !171, i64 192, i64 2, !171, i64 194, i64 2, !171, i64 196, i64 2, !171, i64 198, i64 2, !171, i64 200, i64 4, !51, i64 204, i64 4, !51, i64 208, i64 4, !51, i64 212, i64 2, !171, i64 214, i64 2, !171, i64 216, i64 2, !171, i64 218, i64 2, !171, i64 220, i64 2, !171, i64 222, i64 2, !171, i64 224, i64 2, !171, i64 226, i64 2, !171, i64 228, i64 2, !171, i64 230, i64 2, !171}
!205 = !{!35, !41, i64 312}
!206 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51}
!207 = !{i64 0, i64 4, !51, i64 4, i64 4, !51}
!208 = !{i64 0, i64 4, !51}
!209 = distinct !{!209, !64, !65}
!210 = !{!156, !43, i64 34}
!211 = distinct !{!211, !64, !65}
!212 = distinct !{!212, !64, !65}
!213 = distinct !{!213, !64, !65}
!214 = distinct !{!214, !64, !65}
!215 = distinct !{!215, !64, !65}
!216 = distinct !{!216, !64, !65}
!217 = !{!80, !43, i64 32}
!218 = !{!80, !43, i64 34}
!219 = distinct !{!219, !64, !65}
!220 = !{!221, !36, i64 8}
!221 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !39, i64 32}
!222 = !{!221, !36, i64 16}
!223 = distinct !{!223, !64, !65}
!224 = !{!221, !36, i64 0}
!225 = distinct !{!225, !64, !65}
!226 = !{!35, !37, i64 456}
!227 = !{!35, !36, i64 448}
!228 = distinct !{!228, !64, !65}
!229 = distinct !{!229, !64, !65}
!230 = distinct !{!230, !64, !65}
!231 = !{!80, !36, i64 824}
!232 = !{!80, !36, i64 816}
!233 = distinct !{!233, !64, !65}
!234 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!235 = !{!80, !36, i64 880}
!236 = distinct !{!236, !64, !65}
!237 = !{!35, !36, i64 352}
!238 = distinct !{!238, !64, !65}
!239 = !{!35, !36, i64 0}
!240 = !{!35, !36, i64 512}
!241 = !{!35, !37, i64 457}
!242 = distinct !{!242, !64, !65}
!243 = !{!35, !37, i64 431}
!244 = !{!35, !37, i64 556}
!245 = !{!59, !43, i64 212}
!246 = !{!203, !36, i64 24}
!247 = !{!248, !43, i64 226}
!248 = !{!"bScreen", !133, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !42, i64 200, !42, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !36, i64 232, !36, i64 240}
!249 = !{!35, !43, i64 428}
!250 = !{!80, !41, i64 632}
!251 = !{!80, !36, i64 768}
!252 = !{!80, !36, i64 776}
!253 = !{!80, !37, i64 789}
!254 = !{!35, !36, i64 320}
!255 = !{!35, !36, i64 328}
!256 = !{!35, !36, i64 336}
!257 = !{!35, !36, i64 344}
!258 = !{!80, !43, i64 44}
!259 = !{!35, !36, i64 80}
!260 = !{!261, !147, i64 0}
!261 = !{!"AutoComplete", !147, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!262 = !{!261, !42, i64 8}
!263 = !{!261, !36, i64 16}
!264 = !{!261, !36, i64 24}
!265 = distinct !{!265, !64, !65}
!266 = distinct !{!266, !64, !65}
!267 = !{i32 0, i32 33}
!268 = !{!269, !36, i64 24}
!269 = !{!"EnumPropertyItem", !42, i64 0, !36, i64 8, !42, i64 16, !36, i64 24, !36, i64 32}
!270 = !{!269, !42, i64 16}
!271 = !{!80, !36, i64 808}
!272 = !{!273, !36, i64 88}
!273 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !274, i64 152, !43, i64 184}
!274 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!275 = !{!221, !43, i64 28}
!276 = !{!221, !43, i64 30}
!277 = distinct !{!277, !64, !65}
!278 = !{!35, !37, i64 430}
!279 = !{!182, !42, i64 8484}
!280 = distinct !{!280, !64, !65}
!281 = distinct !{!281, !64, !65}
!282 = !{!80, !37, i64 907}
!283 = !{!80, !36, i64 912}
!284 = !{!80, !36, i64 920}
!285 = !{!80, !41, i64 928}
!286 = !{!35, !36, i64 376}
!287 = !{!35, !36, i64 384}
!288 = !{!35, !36, i64 360}
!289 = !{!35, !36, i64 368}
!290 = !{!80, !36, i64 728}
!291 = !{!80, !36, i64 736}
!292 = !{!35, !36, i64 400}
!293 = !{!35, !36, i64 408}
!294 = !{!35, !36, i64 416}
!295 = !{!80, !36, i64 696}
!296 = !{!80, !36, i64 704}
!297 = !{!80, !36, i64 800}
!298 = !{!80, !36, i64 712}
!299 = !{!80, !36, i64 720}
!300 = !{!81, !36, i64 16}
!301 = !{!273, !36, i64 104}
!302 = !{!273, !36, i64 8}
!303 = !{!269, !36, i64 8}
!304 = !{!269, !42, i64 0}
!305 = distinct !{!305, !64, !65}
!306 = !{!307, !43, i64 16}
!307 = !{!"wmEvent", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 18, !42, i64 20, !42, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !43, i64 44, !43, i64 46, !42, i64 48, !42, i64 52, !44, i64 56, !42, i64 64, !42, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !36, i64 88, !36, i64 96, !43, i64 104, !43, i64 106, !42, i64 108, !36, i64 112}
!308 = !{!307, !43, i64 18}
!309 = !{!307, !36, i64 112}
!310 = !{!307, !43, i64 106}
!311 = !{!312, !42, i64 0}
!312 = !{!"uiStringInfo", !42, i64 0, !36, i64 8}
!313 = !{!314, !36, i64 240}
!314 = !{!"MenuType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !36, i64 208, !36, i64 216, !36, i64 224, !274, i64 232}
!315 = distinct !{!315, !64, !65}
!316 = !{!269, !36, i64 32}
!317 = !{!312, !36, i64 8}
!318 = distinct !{!318, !64, !65}
!319 = distinct !{!319, !64, !65}
!320 = !{!156, !43, i64 32}
!321 = distinct !{!321, !64, !65}
!322 = distinct !{!322, !64, !65}
!323 = distinct !{!323, !64, !65}
!324 = distinct !{!324, !64, !65}
