; ModuleID = 'blender/source/blender/editors/interface/interface_widgets.c'
source_filename = "blender/source/blender/editors/interface/interface_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.uiWidgetType = type { ptr, ptr, %struct.uiWidgetColors, ptr, ptr, ptr, ptr }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.uiWidgetBase = type { i32, i32, [36 x [2 x float]], [36 x [2 x float]], [36 x [2 x float]], i8, i8, i8, i8, %struct.uiWidgetTrias, %struct.uiWidgetTrias }
%struct.uiWidgetTrias = type { i32, [16 x [2 x float]], ptr }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@jit = internal unnamed_addr constant [8 x [2 x float]] [[2 x float] [float 0x3FDE010840000000, float 0xBFDECFBFC0000000], [2 x float] [float 0xBFC3EFC7A0000000, float 0xBFD6949A60000000], [2 x float] [float 0x3FCC123820000000, float 0xBFCE873360000000], [2 x float] [float 0xBFD92B9900000000, float 0xBFBC672760000000], [2 x float] [float 0xBF994AB1E0000000, float 0x3F8C7BCC20000000], [2 x float] [float 0x3FD600E6A0000000, float 0x3FC2DF04E0000000], [2 x float] [float 0xBFD17674E0000000, float 0x3FD1465620000000], [2 x float] [float 0x3FB88D7E00000000, float 0x3FD8E09FE0000000]], align 16
@wcol_tool = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"ddd\FF", [4 x i8] c"\19\19\19\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 15, i16 -15, i16 0 }, align 2
@wcol_text = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"ZZZ\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 0, i16 25, i16 0 }, align 2
@wcol_radio = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"FFF\FF", [4 x i8] c"V\80\C2\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\00\00\00\FF", i16 1, i16 15, i16 -15, i16 0 }, align 2
@wcol_option = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"FFF\FF", [4 x i8] c"FFF\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 15, i16 -15, i16 0 }, align 2
@wcol_toggle = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"ddd\FF", [4 x i8] c"\19\19\19\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@wcol_num = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\B4\B4\B4\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"ZZZ\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 -20, i16 0, i16 0 }, align 2
@wcol_numslider = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\B4\B4\B4\FF", [4 x i8] c"\99\99\99\FF", [4 x i8] c"\80\80\80\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 -20, i16 0, i16 0 }, align 2
@wcol_menu = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"FFF\FF", [4 x i8] c"FFF\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\CC\CC\CC\FF", i16 1, i16 15, i16 -15, i16 0 }, align 2
@wcol_pulldown = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"???\FF", [4 x i8] c"V\80\C2\FF", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\00\FF", i16 0, i16 25, i16 -20, i16 0 }, align 2
@wcol_pie_menu = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\0A\0A\0A\C8", [4 x i8] c"\19\19\19\E6", [4 x i8] c"\8C\8C\8C\FF", [4 x i8] c"---\E6", [4 x i8] c"\A0\A0\A0\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 10, i16 -10, i16 0 }, align 2
@wcol_tooltip = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"\19\19\19\E6", [4 x i8] c"---\E6", [4 x i8] c"ddd\FF", [4 x i8] c"\A0\A0\A0\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 25, i16 -20, i16 0 }, align 2
@wcol_menu_item = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] zeroinitializer, [4 x i8] c"V\80\C2\FF", [4 x i8] c"\AC\AC\AC\80", [4 x i8] c"\FF\FF\FF\FF", [4 x i8] c"\00\00\00\FF", i16 1, i16 38, i16 0, i16 0 }, align 2
@wcol_box = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\19\19\19\FF", [4 x i8] c"\80\80\80\FF", [4 x i8] c"ddd\FF", [4 x i8] c"\19\19\19\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@wcol_scroll = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"222\B4", [4 x i8] c"PPP\B4", [4 x i8] c"ddd\B4", [4 x i8] c"\80\80\80\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 5, i16 -5, i16 0 }, align 2
@wcol_list_item = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] zeroinitializer, [4 x i8] c"V\80\C2\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\00\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@wcol_progress = internal unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"\BE\BE\BE\FF", [4 x i8] c"ddd\B4", [4 x i8] c"DDD\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@wcol_state_colors = internal unnamed_addr constant %struct.uiWidgetStateColors { [4 x i8] c"s\BEL\FF", [4 x i8] c"Z\A63\FF", [4 x i8] c"\F0\EBd\FF", [4 x i8] c"\D7\D3K\FF", [4 x i8] c"\B4\00\FF\FF", [4 x i8] c"\99\00\E6\FF", float 5.000000e-01, float 0.000000e+00 }, align 4
@U = external local_unnamed_addr global %struct.UserDef, align 8
@cornervec = internal unnamed_addr constant [9 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 0x3FC8F5C280000000, float 0x3F947AE140000000], [2 x float] [float 0x3FD8831260000000, float 0x3FB126E980000000], [2 x float] [float 0x3FE19999A0000000, float 0x3FC5A1CAC0000000], [2 x float] [float 0x3FE69FBE80000000, float 0x3FD2C08320000000], [2 x float] [float 0x3FEA978D40000000, float 0x3FDCCCCCC0000000], [2 x float] [float 0x3FED916880000000, float 0x3FE3BE76C0000000], [2 x float] [float 0x3FEF5C2900000000, float 0x3FE9C28F60000000], [2 x float] [float 1.000000e+00, float 1.000000e+00]], align 16
@stipple_checker_8px = external constant [128 x i8], align 16
@scroll_circle_vert = internal unnamed_addr constant [16 x [2 x float]] [[2 x float] [float 0x3FD87DE500000000, float 0x3FED906AC0000000], [2 x float] [float 0x3EB0C6F7A0000000, float 1.000000e+00], [2 x float] [float 0xBFD87DE0E0000000, float 0x3FED906CC0000000], [2 x float] [float 0xBFE6A09EE0000000, float 0x3FE6A09EE0000000], [2 x float] [float 0xBFED906AC0000000, float 0x3FD87DE500000000], [2 x float] [float -1.000000e+00, float 0.000000e+00], [2 x float] [float 0xBFED906CC0000000, float 0xBFD87DE500000000], [2 x float] [float 0xBFE6A09EE0000000, float 0xBFE6A09EE0000000], [2 x float] [float 0xBFD87DE0E0000000, float 0xBFED906CC0000000], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float 0x3FD87DE500000000, float 0xBFED906CC0000000], [2 x float] [float 0x3FE6A09EE0000000, float 0xBFE6A09EE0000000], [2 x float] [float 0x3FED906CC0000000, float 0xBFD87DE500000000], [2 x float] [float 1.000000e+00, float -0.000000e+00], [2 x float] [float 0x3FED906CC0000000, float 0x3FD87DE0E0000000], [2 x float] [float 0x3FE6A09EE0000000, float 0x3FE6A09EE0000000]], align 16
@scroll_circle_face = internal constant [14 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 2, i32 0, i32 3], [3 x i32] [i32 3, i32 0, i32 15], [3 x i32] [i32 3, i32 15, i32 4], [3 x i32] [i32 4, i32 15, i32 14], [3 x i32] [i32 4, i32 14, i32 5], [3 x i32] [i32 5, i32 14, i32 13], [3 x i32] [i32 5, i32 13, i32 6], [3 x i32] [i32 6, i32 13, i32 12], [3 x i32] [i32 6, i32 12, i32 7], [3 x i32] [i32 7, i32 12, i32 11], [3 x i32] [i32 7, i32 11, i32 8], [3 x i32] [i32 8, i32 11, i32 10], [3 x i32] [i32 8, i32 10, i32 9]], align 16
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@__const.widget_draw_icon.rgb = private unnamed_addr constant [3 x float] [float 1.250000e+00, float 1.250000e+00, float 1.250000e+00], align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@widget_type.wt = internal global %struct.uiWidgetType zeroinitializer, align 8
@check_tria_vert = internal unnamed_addr constant [6 x [2 x float]] [[2 x float] [float 0xBFE283B820000000, float 0x3FD03732A0000000], [2 x float] [float 0xBFD9233160000000, float 0x3FDA6B3780000000], [2 x float] [float 0xBF715F02C0000000, float 0xBFD506FAC0000000], [2 x float] [float 0xBF68958DA0000000, float 0x3FA1926420000000], [2 x float] [float 0x3FF0E28FE0000000, float 0x3FEBABFBA0000000], [2 x float] [float 0x3FEBB99D40000000, float 0x3FF06E2980000000]], align 16
@check_tria_face = internal constant [4 x [3 x i32]] [[3 x i32] [i32 3, i32 2, i32 4], [3 x i32] [i32 3, i32 4, i32 5], [3 x i32] [i32 1, i32 0, i32 3], [3 x i32] [i32 0, i32 2, i32 3]], align 16
@num_tria_vert = internal unnamed_addr constant [3 x [2 x float]] [[2 x float] [float 0xBFD6886E00000000, float 0x3FE10B1DE0000000], [2 x float] [float 0xBFD6886E00000000, float 0xBFE193F8E0000000], [2 x float] [float 0x3FD51EB860000000, float 0xBF811B60A0000000]], align 16
@num_tria_face = internal constant [1 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2]], align 4
@menu_tria_vert = internal unnamed_addr constant [6 x [2 x float]] [[2 x float] [float 0xBFD51EB860000000, float 0x3FC47AE140000000], [2 x float] [float 0x3FD51EB860000000, float 0x3FC47AE140000000], [2 x float] [float 0.000000e+00, float 0x3FEA3D70A0000000], [2 x float] [float 0.000000e+00, float 0xBFEA3D70A0000000], [2 x float] [float 0xBFD51EB860000000, float 0xBFC47AE140000000], [2 x float] [float 0x3FD51EB860000000, float 0xBFC47AE140000000]], align 16
@menu_tria_face = internal constant [2 x [3 x i32]] [[3 x i32] [i32 2, i32 0, i32 1], [3 x i32] [i32 3, i32 5, i32 4]], align 16
@wcol_tmp = internal global %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"\80\80\80\FF", [4 x i8] c"ddd\FF", [4 x i8] c"\19\19\19\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@ui_widget_color_disabled.wcol_theme_s = internal global %struct.uiWidgetColors zeroinitializer, align 2
@switch.table.ui_draw_but = private unnamed_addr constant [12 x i32] [i32 12, i32 6, i32 4, i32 9, i32 8, i32 0, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1], align 4

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_anti_tria(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x [2 x float]], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  store float %0, ptr %7, align 16, !tbaa !34
  %9 = getelementptr inbounds float, ptr %7, i64 1
  store float %1, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [2 x float], ptr %7, i64 1
  store float %2, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 1, i64 1
  store float %3, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [2 x float], ptr %7, i64 2
  store float %4, ptr %12, align 16, !tbaa !34
  %13 = getelementptr inbounds [2 x float], ptr %7, i64 2, i64 1
  store float %5, ptr %13, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  tail call void @glEnable(i32 noundef 3042) #15
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %8) #15
  %14 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, 1.250000e-01
  store float %16, ptr %14, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %8) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %7) #15
  br label %17

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 0, %6 ], [ %25, %17 ]
  %19 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %18
  %20 = load float, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %18, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  call void @glTranslatef(float noundef %20, float noundef %22, float noundef 0.000000e+00) #15
  call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef 3) #15
  %23 = fneg float %20
  %24 = fneg float %22
  call void @glTranslatef(float noundef %23, float noundef %24, float noundef 0.000000e+00) #15
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %17, !llvm.loop !38

27:                                               ; preds = %17
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_anti_roundbox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  tail call void @glEnable(i32 noundef 3042) #15
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %8) #15
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 5.000000e-01, ptr %11, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fmul float %14, 1.250000e-01
  store float %15, ptr %13, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %8) #15
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %24, %16 ]
  %18 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %17
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %17, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  call void @glTranslatef(float noundef %19, float noundef %21, float noundef 0.000000e+00) #15
  call void @uiDrawBox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) #15
  %22 = fneg float %19
  %23 = fneg float %21
  call void @glTranslatef(float noundef %22, float noundef %23, float noundef 0.000000e+00) #15
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %16, !llvm.loop !41

26:                                               ; preds = %16
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  ret void
}

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_widget_color_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(32) @wcol_toggle, i64 32, i1 false), !tbaa.struct !42
  %2 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tool, i64 32, i1 false), !tbaa.struct !42
  %3 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) @wcol_text, i64 32, i1 false), !tbaa.struct !42
  %4 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 2 dereferenceable(32) @wcol_radio, i64 32, i1 false), !tbaa.struct !42
  %5 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 2 dereferenceable(32) @wcol_option, i64 32, i1 false), !tbaa.struct !42
  %6 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 2 dereferenceable(32) @wcol_toggle, i64 32, i1 false), !tbaa.struct !42
  %7 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 2 dereferenceable(32) @wcol_num, i64 32, i1 false), !tbaa.struct !42
  %8 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 2 dereferenceable(32) @wcol_numslider, i64 32, i1 false), !tbaa.struct !42
  %9 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 2 dereferenceable(32) @wcol_menu, i64 32, i1 false), !tbaa.struct !42
  %10 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 2 dereferenceable(32) @wcol_pulldown, i64 32, i1 false), !tbaa.struct !42
  %11 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tooltip, i64 32, i1 false), !tbaa.struct !42
  %12 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %12, ptr noundef nonnull align 2 dereferenceable(32) @wcol_pie_menu, i64 32, i1 false), !tbaa.struct !42
  %13 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tooltip, i64 32, i1 false), !tbaa.struct !42
  %14 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull align 2 dereferenceable(32) @wcol_menu_item, i64 32, i1 false), !tbaa.struct !42
  %15 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 2 dereferenceable(32) @wcol_box, i64 32, i1 false), !tbaa.struct !42
  %16 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %16, ptr noundef nonnull align 2 dereferenceable(32) @wcol_scroll, i64 32, i1 false), !tbaa.struct !42
  %17 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 2 dereferenceable(32) @wcol_list_item, i64 32, i1 false), !tbaa.struct !42
  %18 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %18, ptr noundef nonnull align 2 dereferenceable(32) @wcol_progress, i64 32, i1 false), !tbaa.struct !42
  %19 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) @wcol_state_colors, i64 32, i1 false), !tbaa.struct !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ui_hsvcircle_vals_from_pos(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %2, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = add nsw i32 %8, %6
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = add nsw i32 %15, %13
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = sub nsw i32 %8, %6
  %20 = sub nsw i32 %15, %13
  %21 = tail call i32 @llvm.smin.i32(i32 %19, i32 %20)
  %22 = sitofp i32 %21 to float
  %23 = fmul float %22, 5.000000e-01
  %24 = fsub float %3, %11
  %25 = fsub float %4, %18
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %26)
  %28 = fmul float %23, %23
  %29 = fcmp olt float %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = tail call float @sqrtf(float noundef %27) #15
  %32 = fdiv float %31, %23
  br label %33

33:                                               ; preds = %5, %30
  %34 = phi float [ %32, %30 ], [ 1.000000e+00, %5 ]
  store float %34, ptr %1, align 4, !tbaa !34
  %35 = tail call float @atan2f(float noundef %24, float noundef %25) #15
  %36 = fdiv float %35, 0x401921FB60000000
  %37 = fadd float %36, 5.000000e-01
  store float %37, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @ui_hsvcircle_pos_from_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = load i32, ptr %1, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !53
  %16 = and i32 %15, 8388608
  %17 = icmp ne i32 %16, 0
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  br i1 %20, label %23, label %27

23:                                               ; preds = %5
  %24 = fsub float 1.000000e+00, %22
  %25 = tail call float @powf(float noundef %24, float noundef 3.000000e+00) #15
  %26 = fsub float 1.000000e+00, %25
  br label %27

27:                                               ; preds = %5, %23
  %28 = phi float [ %26, %23 ], [ %22, %5 ]
  %29 = sub nsw i32 %8, %6
  %30 = sub nsw i32 %12, %10
  %31 = tail call i32 @llvm.smin.i32(i32 %29, i32 %30)
  %32 = add nsw i32 %12, %10
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 5.000000e-01
  %35 = add nsw i32 %8, %6
  %36 = sitofp i32 %35 to float
  %37 = fmul float %36, 5.000000e-01
  %38 = fcmp olt float %28, 0.000000e+00
  %39 = fcmp ogt float %28, 1.000000e+00
  %40 = select i1 %39, float 1.000000e+00, float %28
  %41 = select i1 %38, float 0.000000e+00, float %40
  %42 = tail call float @llvm.fmuladd.f32(float %13, float 0x401921FB60000000, float 0x3FF921FB60000000)
  %43 = sitofp i32 %31 to float
  %44 = fmul float %43, 5.000000e-01
  %45 = fmul float %44, %41
  %46 = tail call float @cosf(float %42)
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %45, float %37)
  store float %47, ptr %3, align 4, !tbaa !34
  %48 = tail call float @sinf(float %42)
  %49 = fneg float %48
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %45, float %34)
  store float %50, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_gradient(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [4 x [3 x float]], align 16
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  tail call void @glShadeModel(i32 noundef 7425) #15
  switch i32 %2, label %93 [
    i32 0, label %12
    i32 1, label %24
    i32 2, label %36
    i32 3, label %48
    i32 4, label %63
    i32 5, label %78
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %17 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FD54FDF40000000, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #15
  %18 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %19 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FE54FDF40000000, float noundef 0.000000e+00, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %22 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #15
  br label %108

24:                                               ; preds = %4
  %25 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %26) #15
  %27 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %28 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %29 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0x3FD54FDF40000000, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #15
  %30 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %31 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0x3FE54FDF40000000, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #15
  %33 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %35 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 1.000000e+00, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  br label %108

36:                                               ; preds = %4
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %38 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %37, ptr noundef nonnull %38) #15
  %39 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0x3FD54FDF40000000, float noundef %11, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #15
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %43 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %44 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0x3FE54FDF40000000, float noundef %11, ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #15
  %45 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %47 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %11, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #15
  br label %108

48:                                               ; preds = %4
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %49, ptr noundef nonnull %50) #15
  %51 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %52 = load float, ptr %6, align 16, !tbaa !34
  store float %52, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %49, align 4, !tbaa !34
  %54 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %53, ptr %54, align 16, !tbaa !34
  %55 = load float, ptr %50, align 8, !tbaa !34
  %56 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  store float %52, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %53, ptr %58, align 4, !tbaa !34
  %59 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %55, ptr %59, align 16, !tbaa !34
  %60 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  store float %52, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  store float %53, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  store float %55, ptr %62, align 4, !tbaa !34
  br label %108

63:                                               ; preds = %4
  %64 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %66 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %66) #15
  %67 = load float, ptr %64, align 4, !tbaa !34
  store float %67, ptr %6, align 16, !tbaa !34
  %68 = load float, ptr %65, align 16, !tbaa !34
  %69 = getelementptr inbounds float, ptr %6, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = load float, ptr %66, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %6, i64 2
  store float %70, ptr %71, align 8, !tbaa !34
  %72 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  store float %67, ptr %72, align 8, !tbaa !34
  %73 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %68, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %70, ptr %74, align 16, !tbaa !34
  %75 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  store float %67, ptr %75, align 4, !tbaa !34
  %76 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  store float %68, ptr %76, align 8, !tbaa !34
  %77 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  store float %70, ptr %77, align 4, !tbaa !34
  br label %108

78:                                               ; preds = %4
  %79 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %80 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %81 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef nonnull %81) #15
  %82 = load float, ptr %79, align 8, !tbaa !34
  store float %82, ptr %6, align 16, !tbaa !34
  %83 = load float, ptr %80, align 4, !tbaa !34
  %84 = getelementptr inbounds float, ptr %6, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = load float, ptr %81, align 16, !tbaa !34
  %86 = getelementptr inbounds float, ptr %6, i64 2
  store float %85, ptr %86, align 8, !tbaa !34
  %87 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  store float %82, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %83, ptr %88, align 16, !tbaa !34
  %89 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %85, ptr %89, align 4, !tbaa !34
  %90 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  store float %82, ptr %90, align 4, !tbaa !34
  %91 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  store float %83, ptr %91, align 8, !tbaa !34
  %92 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  store float %85, ptr %92, align 4, !tbaa !34
  br label %108

93:                                               ; preds = %4
  %94 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %95 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %96 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %96) #15
  %97 = load float, ptr %94, align 8, !tbaa !34
  store float %97, ptr %6, align 16, !tbaa !34
  %98 = load float, ptr %95, align 4, !tbaa !34
  %99 = getelementptr inbounds float, ptr %6, i64 1
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = load float, ptr %96, align 16, !tbaa !34
  %101 = getelementptr inbounds float, ptr %6, i64 2
  store float %100, ptr %101, align 8, !tbaa !34
  %102 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  store float %97, ptr %102, align 4, !tbaa !34
  %103 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %98, ptr %103, align 16, !tbaa !34
  %104 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %100, ptr %104, align 4, !tbaa !34
  %105 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  store float %97, ptr %105, align 4, !tbaa !34
  %106 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  store float %98, ptr %106, align 8, !tbaa !34
  %107 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  store float %100, ptr %107, align 4, !tbaa !34
  br label %108

108:                                              ; preds = %93, %78, %63, %48, %36, %24, %12
  %109 = getelementptr inbounds float, ptr %6, i64 1
  %110 = getelementptr inbounds float, ptr %5, i64 1
  %111 = getelementptr inbounds float, ptr %6, i64 2
  %112 = getelementptr inbounds float, ptr %5, i64 2
  %113 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %114 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %115 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %116 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %117 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  %118 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  %119 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %120 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %121 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %122 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %123 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  %124 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  %125 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %126 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %127 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %128 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 1
  %129 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  %130 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 2
  %131 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %132 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %133 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  br label %134

134:                                              ; preds = %108, %208
  %135 = phi float [ 0.000000e+00, %108 ], [ %136, %208 ]
  %136 = fadd float %135, 0x3F95555560000000
  %137 = load float, ptr %6, align 16, !tbaa !34
  store float %137, ptr %5, align 16, !tbaa !34
  %138 = load float, ptr %109, align 4, !tbaa !34
  store float %138, ptr %110, align 4, !tbaa !34
  %139 = load float, ptr %111, align 8, !tbaa !34
  store float %139, ptr %112, align 8, !tbaa !34
  %140 = load float, ptr %114, align 4, !tbaa !34
  store float %140, ptr %113, align 4, !tbaa !34
  %141 = load float, ptr %115, align 16, !tbaa !34
  store float %141, ptr %116, align 16, !tbaa !34
  %142 = load float, ptr %117, align 4, !tbaa !34
  store float %142, ptr %118, align 4, !tbaa !34
  %143 = load float, ptr %120, align 8, !tbaa !34
  store float %143, ptr %119, align 8, !tbaa !34
  %144 = load float, ptr %121, align 4, !tbaa !34
  store float %144, ptr %122, align 4, !tbaa !34
  %145 = load float, ptr %123, align 16, !tbaa !34
  store float %145, ptr %124, align 16, !tbaa !34
  %146 = load float, ptr %126, align 4, !tbaa !34
  store float %146, ptr %125, align 4, !tbaa !34
  %147 = load float, ptr %127, align 8, !tbaa !34
  store float %147, ptr %128, align 8, !tbaa !34
  %148 = load float, ptr %129, align 4, !tbaa !34
  store float %148, ptr %130, align 4, !tbaa !34
  switch i32 %2, label %164 [
    i32 0, label %149
    i32 1, label %150
    i32 2, label %151
    i32 3, label %152
    i32 4, label %156
    i32 5, label %160
  ]

149:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %7, float noundef 0.000000e+00, float noundef %135, ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef nonnull %111) #15
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FD54FDF40000000, float noundef %135, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %117) #15
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FE54FDF40000000, float noundef %135, ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %123) #15
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef %135, ptr noundef nonnull %126, ptr noundef nonnull %127, ptr noundef nonnull %129) #15
  br label %164

150:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %136, float noundef %9, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef nonnull %111) #15
  call void @hsv_to_rgb(float noundef %136, float noundef %9, float noundef 0x3FD54FDF40000000, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %117) #15
  call void @hsv_to_rgb(float noundef %136, float noundef %9, float noundef 0x3FE54FDF40000000, ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %123) #15
  call void @hsv_to_rgb(float noundef %136, float noundef %9, float noundef 1.000000e+00, ptr noundef nonnull %126, ptr noundef nonnull %127, ptr noundef nonnull %129) #15
  br label %164

151:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %136, float noundef 0.000000e+00, float noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef nonnull %111) #15
  call void @hsv_to_rgb(float noundef %136, float noundef 0x3FD54FDF40000000, float noundef %11, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %117) #15
  call void @hsv_to_rgb(float noundef %136, float noundef 0x3FE54FDF40000000, float noundef %11, ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %123) #15
  call void @hsv_to_rgb(float noundef %136, float noundef 1.000000e+00, float noundef %11, ptr noundef nonnull %126, ptr noundef nonnull %127, ptr noundef nonnull %129) #15
  br label %164

152:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %136, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef nonnull %111) #15
  %153 = load float, ptr %6, align 16, !tbaa !34
  store float %153, ptr %114, align 4, !tbaa !34
  %154 = load float, ptr %109, align 4, !tbaa !34
  store float %154, ptr %115, align 16, !tbaa !34
  %155 = load float, ptr %111, align 8, !tbaa !34
  store float %155, ptr %117, align 4, !tbaa !34
  store float %153, ptr %120, align 8, !tbaa !34
  store float %154, ptr %121, align 4, !tbaa !34
  store float %155, ptr %123, align 16, !tbaa !34
  store float %153, ptr %126, align 4, !tbaa !34
  store float %154, ptr %127, align 8, !tbaa !34
  store float %155, ptr %129, align 4, !tbaa !34
  br label %164

156:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %7, float noundef %135, float noundef 1.000000e+00, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %117) #15
  %157 = load float, ptr %114, align 4, !tbaa !34
  store float %157, ptr %6, align 16, !tbaa !34
  %158 = load float, ptr %115, align 16, !tbaa !34
  store float %158, ptr %109, align 4, !tbaa !34
  %159 = load float, ptr %117, align 4, !tbaa !34
  store float %159, ptr %111, align 8, !tbaa !34
  store float %157, ptr %120, align 8, !tbaa !34
  store float %158, ptr %121, align 4, !tbaa !34
  store float %159, ptr %123, align 16, !tbaa !34
  store float %157, ptr %126, align 4, !tbaa !34
  store float %158, ptr %127, align 8, !tbaa !34
  store float %159, ptr %129, align 4, !tbaa !34
  br label %164

160:                                              ; preds = %134
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef %135, ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %123) #15
  %161 = load float, ptr %120, align 8, !tbaa !34
  store float %161, ptr %6, align 16, !tbaa !34
  %162 = load float, ptr %121, align 4, !tbaa !34
  store float %162, ptr %109, align 4, !tbaa !34
  %163 = load float, ptr %123, align 16, !tbaa !34
  store float %163, ptr %111, align 8, !tbaa !34
  store float %161, ptr %114, align 4, !tbaa !34
  store float %162, ptr %115, align 16, !tbaa !34
  store float %163, ptr %117, align 4, !tbaa !34
  store float %161, ptr %126, align 4, !tbaa !34
  store float %162, ptr %127, align 8, !tbaa !34
  store float %163, ptr %129, align 4, !tbaa !34
  br label %164

164:                                              ; preds = %134, %160, %156, %152, %151, %150, %149
  %165 = load i32, ptr %0, align 4, !tbaa !47
  %166 = sitofp i32 %165 to float
  %167 = load i32, ptr %131, align 4, !tbaa !50
  %168 = sub nsw i32 %167, %165
  %169 = sitofp i32 %168 to float
  %170 = call float @llvm.fmuladd.f32(float %135, float %169, float %166)
  %171 = call float @llvm.fmuladd.f32(float %136, float %169, float %166)
  %172 = load i32, ptr %132, align 4, !tbaa !51
  %173 = sitofp i32 %172 to float
  %174 = load i32, ptr %133, align 4, !tbaa !52
  %175 = sub nsw i32 %174, %172
  %176 = sitofp i32 %175 to float
  %177 = fdiv float %176, 3.000000e+00
  call void @glBegin(i32 noundef 7) #15
  br label %178

178:                                              ; preds = %164, %178
  %179 = phi i64 [ 0, %164 ], [ %193, %178 ]
  %180 = phi float [ %173, %164 ], [ %200, %178 ]
  %181 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %179
  %182 = load float, ptr %181, align 4, !tbaa !34
  %183 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %179, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %179, i64 2
  %186 = load float, ptr %185, align 4, !tbaa !34
  call void @glColor4f(float noundef %182, float noundef %184, float noundef %186, float noundef %3) #15
  call void @glVertex2f(float noundef %170, float noundef %180) #15
  %187 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %179
  %188 = load float, ptr %187, align 4, !tbaa !34
  %189 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %179, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !34
  %191 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %179, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !34
  call void @glColor4f(float noundef %188, float noundef %190, float noundef %192, float noundef %3) #15
  call void @glVertex2f(float noundef %171, float noundef %180) #15
  %193 = add nuw nsw i64 %179, 1
  %194 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !34
  %196 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %193, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !34
  %198 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %193, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !34
  call void @glColor4f(float noundef %195, float noundef %197, float noundef %199, float noundef %3) #15
  %200 = fadd float %177, %180
  call void @glVertex2f(float noundef %171, float noundef %200) #15
  %201 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %193
  %202 = load float, ptr %201, align 4, !tbaa !34
  %203 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %193, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !34
  %205 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %193, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !34
  call void @glColor4f(float noundef %202, float noundef %204, float noundef %206, float noundef %3) #15
  call void @glVertex2f(float noundef %170, float noundef %200) #15
  %207 = icmp eq i64 %193, 3
  br i1 %207, label %208, label %178, !llvm.loop !59

208:                                              ; preds = %178
  call void @glEnd() #15
  %209 = fcmp olt float %136, 0x3FEFF7CEE0000000
  br i1 %209, label %134, label %210, !llvm.loop !60

210:                                              ; preds = %208
  call void @glShadeModel(i32 noundef 7424) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  ret void
}

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ui_color_picker_use_display_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 51
  %5 = load i8, ptr %4, align 4, !tbaa !62
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %7) #15
  %11 = icmp eq i32 %10, 30
  %12 = select i1 %11, i8 0, i8 %5
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i8 [ %5, %1 ], [ %12, %9 ]
  ret i8 %14
}

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_hsvcube_pos_from_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %7 = load float, ptr %6, align 8, !tbaa !68
  %8 = fptosi float %7 to i32
  switch i32 %8, label %43 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %18
    i32 3, label %22
    i32 4, label %24
    i32 5, label %27
    i32 10, label %30
    i32 9, label %33
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds float, ptr %2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  br label %43

14:                                               ; preds = %5
  %15 = load float, ptr %2, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  br label %43

18:                                               ; preds = %5
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  br label %43

22:                                               ; preds = %5
  %23 = load float, ptr %2, align 4, !tbaa !34
  br label %43

24:                                               ; preds = %5
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  br label %43

27:                                               ; preds = %5
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  br label %43

30:                                               ; preds = %5
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  br label %43

33:                                               ; preds = %5
  %34 = getelementptr inbounds float, ptr %2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %37 = load float, ptr %36, align 8, !tbaa !69
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %40 = load float, ptr %39, align 4, !tbaa !70
  %41 = fsub float %40, %37
  %42 = fdiv float %38, %41
  br label %43

43:                                               ; preds = %5, %33, %30, %27, %24, %22, %18, %14, %9
  %44 = phi float [ 0.000000e+00, %5 ], [ 5.000000e-01, %33 ], [ 5.000000e-01, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %22 ], [ %19, %18 ], [ %15, %14 ], [ %11, %9 ]
  %45 = phi float [ 0.000000e+00, %5 ], [ %42, %33 ], [ %32, %30 ], [ 5.000000e-01, %27 ], [ 5.000000e-01, %24 ], [ 5.000000e-01, %22 ], [ %21, %18 ], [ %17, %14 ], [ %13, %9 ]
  %46 = load i32, ptr %1, align 4, !tbaa !47
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = sub nsw i32 %49, %46
  %51 = sitofp i32 %50 to float
  %52 = tail call float @llvm.fmuladd.f32(float %44, float %51, float %47)
  store float %52, ptr %3, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !52
  %58 = sub nsw i32 %57, %54
  %59 = sitofp i32 %58 to float
  %60 = tail call float @llvm.fmuladd.f32(float %45, float %59, float %55)
  store float %60, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_link_bezier_points(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !47
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = sitofp i32 %13 to float
  %15 = fsub float %5, %11
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = fmul float %16, 5.000000e-01
  %18 = fadd float %17, %5
  %19 = fsub float %11, %17
  tail call void @BKE_curve_forward_diff_bezier(float noundef %5, float noundef %18, float noundef %19, float noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef 8) #15
  %20 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %8, float noundef %8, float noundef %14, float noundef %14, ptr noundef nonnull %20, i32 noundef %2, i32 noundef 8) #15
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_link_bezier(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [25 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #15
  %3 = load i32, ptr %0, align 4, !tbaa !47
  %4 = sitofp i32 %3 to float
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = sitofp i32 %12 to float
  %14 = fsub float %4, %10
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fmul float %15, 5.000000e-01
  %17 = fadd float %16, %4
  %18 = fsub float %10, %16
  call void @BKE_curve_forward_diff_bezier(float noundef %4, float noundef %17, float noundef %18, float noundef %10, ptr noundef nonnull %2, i32 noundef 24, i32 noundef 8) #15
  %19 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  call void @BKE_curve_forward_diff_bezier(float noundef %7, float noundef %7, float noundef %13, float noundef %13, ptr noundef nonnull %19, i32 noundef 24, i32 noundef 8) #15
  call void @glEnable(i32 noundef 3042) #15
  call void @glEnable(i32 noundef 2848) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %2) #15
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 25) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @glDisable(i32 noundef 2848) #15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiWidgetScrollDraw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 7
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 8
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  store i32 16843009, ptr %9, align 8
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = load i32, ptr %1, align 4, !tbaa !47
  %16 = sub nsw i32 %14, %15
  %17 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = sub nsw i32 %18, %20
  %22 = icmp sgt i32 %16, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %16, i32 %21)
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, 5.000000e-01
  %26 = zext i1 %22 to i8
  store i8 %26, ptr %12, align 1, !tbaa !77
  br i1 %22, label %27, label %32

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %29 = load i16, ptr %28, align 2, !tbaa !78
  %30 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !80
  store i16 %31, ptr %28, align 2, !tbaa !78
  store i16 %29, ptr %30, align 2, !tbaa !80
  br label %32

32:                                               ; preds = %27, %4
  %33 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %34 = fsub float %25, %33
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull %1, float noundef %25, float noundef %34)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  %35 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = load i32, ptr %2, align 4, !tbaa !47
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %180, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !52
  %43 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !51
  %45 = sub nsw i32 %42, %44
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %180, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %49 = load i16, ptr %48, align 2, !tbaa !78
  %50 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 8
  %51 = load i16, ptr %50, align 2, !tbaa !80
  store i16 %51, ptr %48, align 2, !tbaa !78
  store i16 %49, ptr %50, align 2, !tbaa !80
  %52 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1
  %53 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !43
  store i8 %54, ptr %52, align 1, !tbaa !43
  %55 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !43
  %57 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 1
  store i8 %56, ptr %57, align 1, !tbaa !43
  %58 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !43
  %60 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !43
  %61 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !43
  %63 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 3
  store i8 %62, ptr %63, align 1, !tbaa !43
  %64 = icmp sgt i16 %51, %49
  %65 = call i16 @llvm.smax.i16(i16 %51, i16 %49)
  %66 = select i1 %64, ptr %48, ptr %50
  %67 = add i16 %65, 20
  store i16 %67, ptr %66, align 2, !tbaa !44
  %68 = and i32 %3, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %47
  %71 = icmp ugt i8 %54, -7
  %72 = add i8 %54, 5
  %73 = select i1 %71, i8 -1, i8 %72
  store i8 %73, ptr %52, align 2, !tbaa !43
  %74 = icmp ugt i8 %56, -7
  %75 = add i8 %56, 5
  %76 = select i1 %74, i8 -1, i8 %75
  store i8 %76, ptr %57, align 1, !tbaa !43
  %77 = icmp ugt i8 %59, -7
  %78 = add i8 %59, 5
  %79 = select i1 %77, i8 -1, i8 %78
  store i8 %79, ptr %60, align 2, !tbaa !43
  br label %80

80:                                               ; preds = %70, %47
  store i8 0, ptr %11, align 2, !tbaa !85
  %81 = and i32 %3, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i8, ptr %10, align 1, !tbaa !86
  store i8 0, ptr %10, align 1, !tbaa !86
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i8 [ %84, %83 ], [ 0, %80 ]
  %87 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %88 = fsub float %25, %87
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull %2, float noundef %25, float noundef %88)
  %89 = and i32 %3, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %178, label %91

91:                                               ; preds = %85
  %92 = icmp ugt i8 %54, 48
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = add i8 %54, -48
  store i8 %94, ptr %53, align 2, !tbaa !43
  br label %95

95:                                               ; preds = %93, %91
  %96 = icmp ugt i8 %56, 48
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = add i8 %56, -48
  store i8 %98, ptr %55, align 1, !tbaa !43
  br label %99

99:                                               ; preds = %97, %95
  %100 = icmp ugt i8 %59, 48
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = add i8 %59, -48
  store i8 %102, ptr %58, align 2, !tbaa !43
  br label %103

103:                                              ; preds = %101, %99
  store i8 -1, ptr %61, align 1, !tbaa !43
  %104 = load i32, ptr %35, align 4, !tbaa !50
  %105 = load i32, ptr %2, align 4, !tbaa !47
  %106 = sub nsw i32 %104, %105
  %107 = load i32, ptr %41, align 4, !tbaa !52
  %108 = load i32, ptr %43, align 4, !tbaa !51
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @llvm.smin.i32(i32 %106, i32 %109)
  %111 = sitofp i32 %110 to float
  %112 = sitofp i32 %105 to float
  %113 = call float @llvm.fmuladd.f32(float %111, float 0x3FD99999A0000000, float %112)
  %114 = sitofp i32 %108 to float
  %115 = call float @llvm.fmuladd.f32(float %111, float 5.000000e-01, float %114)
  %116 = fmul float %111, 0xBFD3333340000000
  br i1 %22, label %117, label %146

117:                                              ; preds = %103, %117
  %118 = phi i64 [ %127, %117 ], [ 0, %103 ]
  %119 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %118, i64 0
  %120 = load float, ptr %119, align 8, !tbaa !34
  %121 = call float @llvm.fmuladd.f32(float %116, float %120, float %113)
  %122 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %118
  store float %121, ptr %122, align 4, !tbaa !34
  %123 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %118, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !34
  %125 = call float @llvm.fmuladd.f32(float %116, float %124, float %115)
  %126 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %118, i64 1
  store float %125, ptr %126, align 8, !tbaa !34
  %127 = add nuw nsw i64 %118, 1
  %128 = icmp eq i64 %127, 16
  br i1 %128, label %129, label %117, !llvm.loop !87

129:                                              ; preds = %117
  store i32 14, ptr %7, align 8, !tbaa !88
  %130 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 2
  store ptr @scroll_circle_face, ptr %130, align 8, !tbaa !89
  %131 = sitofp i32 %104 to float
  %132 = call float @llvm.fmuladd.f32(float %111, float 0xBFD99999A0000000, float %131)
  %133 = fneg float %116
  br label %134

134:                                              ; preds = %129, %134
  %135 = phi i64 [ 0, %129 ], [ %144, %134 ]
  %136 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %135, i64 0
  %137 = load float, ptr %136, align 8, !tbaa !34
  %138 = call float @llvm.fmuladd.f32(float %133, float %137, float %132)
  %139 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10, i32 1, i64 %135
  store float %138, ptr %139, align 4, !tbaa !34
  %140 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %135, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = call float @llvm.fmuladd.f32(float %116, float %141, float %115)
  %143 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10, i32 1, i64 %135, i64 1
  store float %142, ptr %143, align 8, !tbaa !34
  %144 = add nuw nsw i64 %135, 1
  %145 = icmp eq i64 %144, 16
  br i1 %145, label %176, label %134, !llvm.loop !87

146:                                              ; preds = %103
  %147 = fneg float %116
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i64 [ 0, %146 ], [ %158, %148 ]
  %150 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %149, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !34
  %152 = call float @llvm.fmuladd.f32(float %147, float %151, float %113)
  %153 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %149
  store float %152, ptr %153, align 4, !tbaa !34
  %154 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %149, i64 0
  %155 = load float, ptr %154, align 8, !tbaa !34
  %156 = call float @llvm.fmuladd.f32(float %116, float %155, float %115)
  %157 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %149, i64 1
  store float %156, ptr %157, align 8, !tbaa !34
  %158 = add nuw nsw i64 %149, 1
  %159 = icmp eq i64 %158, 16
  br i1 %159, label %160, label %148, !llvm.loop !87

160:                                              ; preds = %148
  store i32 14, ptr %7, align 8, !tbaa !88
  %161 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 2
  store ptr @scroll_circle_face, ptr %161, align 8, !tbaa !89
  %162 = sitofp i32 %107 to float
  %163 = call float @llvm.fmuladd.f32(float %111, float -5.000000e-01, float %162)
  br label %164

164:                                              ; preds = %160, %164
  %165 = phi i64 [ 0, %160 ], [ %174, %164 ]
  %166 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %165, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = call float @llvm.fmuladd.f32(float %116, float %167, float %113)
  %169 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10, i32 1, i64 %165
  store float %168, ptr %169, align 4, !tbaa !34
  %170 = getelementptr inbounds [2 x float], ptr @scroll_circle_vert, i64 %165, i64 0
  %171 = load float, ptr %170, align 8, !tbaa !34
  %172 = call float @llvm.fmuladd.f32(float %147, float %171, float %163)
  %173 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10, i32 1, i64 %165, i64 1
  store float %172, ptr %173, align 8, !tbaa !34
  %174 = add nuw nsw i64 %165, 1
  %175 = icmp eq i64 %174, 16
  br i1 %175, label %176, label %164, !llvm.loop !87

176:                                              ; preds = %164, %134
  store i32 14, ptr %8, align 8, !tbaa !88
  %177 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10, i32 2
  store ptr @scroll_circle_face, ptr %177, align 8, !tbaa !89
  br label %178

178:                                              ; preds = %176, %85
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  br i1 %82, label %180, label %179

179:                                              ; preds = %178
  store i8 %86, ptr %10, align 1, !tbaa !86
  br label %180

180:                                              ; preds = %178, %179, %32, %40
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @widgetbase_draw(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [36 x [2 x float]], align 16
  %4 = alloca [144 x i8], align 16
  %5 = alloca [74 x [2 x float]], align 16
  %6 = alloca [72 x [2 x float]], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  tail call void @glEnable(i32 noundef 3042) #15
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !90
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %162, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !91
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 9
  %19 = load i16, ptr %18, align 2, !tbaa !92
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  br i1 %20, label %66, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %3) #15
  tail call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #15
  tail call void @glEnableClientState(i32 noundef 32884) #15
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %21) #15
  %23 = load i32, ptr %0, align 8, !tbaa !74
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %23) #15
  tail call void @glEnable(i32 noundef 2882) #15
  tail call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #15
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #15
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %21) #15
  %24 = load i32, ptr %0, align 8, !tbaa !74
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %24) #15
  tail call void @glDisable(i32 noundef 2882) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  %25 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %25) #15
  %26 = load i32, ptr %0, align 8, !tbaa !74
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %32 = phi float [ 0.000000e+00, %28 ], [ %35, %30 ]
  %33 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %31
  %34 = load float, ptr %33, align 8, !tbaa !34
  %35 = fadd float %32, %34
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %29
  br i1 %37, label %38, label %30, !llvm.loop !93

38:                                               ; preds = %30, %22
  %39 = phi float [ 0.000000e+00, %22 ], [ %35, %30 ]
  %40 = sitofp i32 %26 to float
  %41 = fdiv float %39, %40
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %21) #15
  %42 = load i32, ptr %0, align 8, !tbaa !74
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %42) #15
  %43 = load i8, ptr %25, align 2, !tbaa !43
  %44 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  %47 = load i8, ptr %46, align 2, !tbaa !43
  tail call void @glColor4ub(i8 noundef zeroext %43, i8 noundef zeroext %45, i8 noundef zeroext %47, i8 noundef zeroext -1) #15
  %48 = load i32, ptr %0, align 8, !tbaa !74
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = zext nneg i32 %48 to i64
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %62, %52 ]
  %54 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %53
  %55 = load float, ptr %54, align 8, !tbaa !34
  %56 = fcmp olt float %55, %41
  %57 = select i1 %56, float %55, float %41
  %58 = getelementptr inbounds [36 x [2 x float]], ptr %3, i64 0, i64 %53
  store float %57, ptr %58, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %53, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds [36 x [2 x float]], ptr %3, i64 0, i64 %53, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = add nuw nsw i64 %53, 1
  %63 = icmp eq i64 %62, %51
  br i1 %63, label %64, label %52, !llvm.loop !94

64:                                               ; preds = %52, %38
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %3) #15
  %65 = load i32, ptr %0, align 8, !tbaa !74
  call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %65) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %3) #15
  br label %162

66:                                               ; preds = %17
  %67 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %67) #15
  tail call void @glEnableClientState(i32 noundef 32884) #15
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %21) #15
  %68 = load i32, ptr %0, align 8, !tbaa !74
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %68) #15
  tail call void @glDisableClientState(i32 noundef 32884) #15
  br label %162

69:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #15
  %70 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  %71 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %72 = load i16, ptr %71, align 2, !tbaa !78
  %73 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 8
  %74 = load i16, ptr %73, align 2, !tbaa !80
  %75 = load i8, ptr %70, align 1, !tbaa !43
  %76 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !43
  %78 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !43
  %80 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !43
  tail call void @glShadeModel(i32 noundef 7425) #15
  %82 = load i32, ptr %0, align 8, !tbaa !74
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %159

84:                                               ; preds = %69
  %85 = zext i8 %79 to i32
  %86 = sext i16 %74 to i32
  %87 = add nsw i32 %85, %86
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 255)
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 0)
  %90 = zext i8 %77 to i32
  %91 = add nsw i32 %90, %86
  %92 = tail call i32 @llvm.smin.i32(i32 %91, i32 255)
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = zext i8 %75 to i32
  %95 = add nsw i32 %94, %86
  %96 = tail call i32 @llvm.smin.i32(i32 %95, i32 255)
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 0)
  %98 = sext i16 %72 to i32
  %99 = add nsw i32 %85, %98
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 255)
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 0)
  %102 = add nsw i32 %90, %98
  %103 = tail call i32 @llvm.smin.i32(i32 %102, i32 255)
  %104 = tail call i32 @llvm.smax.i32(i32 %103, i32 0)
  %105 = add nsw i32 %94, %98
  %106 = tail call i32 @llvm.smin.i32(i32 %105, i32 255)
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0)
  %108 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 8
  %109 = load i8, ptr %108, align 1, !tbaa !77
  %110 = zext i8 %109 to i64
  %111 = and i32 %107, 255
  %112 = and i32 %97, 255
  %113 = and i32 %104, 255
  %114 = and i32 %93, 255
  %115 = and i32 %101, 255
  %116 = and i32 %89, 255
  %117 = zext i8 %81 to i32
  %118 = zext nneg i32 %82 to i64
  br label %119

119:                                              ; preds = %84, %131
  %120 = phi i64 [ 0, %84 ], [ %156, %131 ]
  %121 = phi ptr [ %4, %84 ], [ %157, %131 ]
  %122 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %120, i64 %110
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = fcmp ugt float %123, 0.000000e+00
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = fcmp ogt float %123, 0x3FEFEFEFE0000000
  %127 = tail call float @llvm.fmuladd.f32(float %123, float 2.550000e+02, float 5.000000e-01)
  %128 = select i1 %126, float 2.550000e+02, float %127
  %129 = fptoui float %128 to i8
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %119, %125
  %132 = phi i32 [ %130, %125 ], [ 0, %119 ]
  %133 = xor i32 %132, 255
  %134 = mul nuw nsw i32 %132, %111
  %135 = mul nuw nsw i32 %133, %112
  %136 = add nuw nsw i32 %135, %134
  %137 = lshr i32 %136, 8
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %121, align 1, !tbaa !43
  %139 = mul nuw nsw i32 %132, %113
  %140 = mul nuw nsw i32 %133, %114
  %141 = add nuw nsw i32 %140, %139
  %142 = lshr i32 %141, 8
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds i8, ptr %121, i64 1
  store i8 %143, ptr %144, align 1, !tbaa !43
  %145 = mul nuw nsw i32 %132, %115
  %146 = mul nuw nsw i32 %133, %116
  %147 = add nuw nsw i32 %146, %145
  %148 = lshr i32 %147, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds i8, ptr %121, i64 2
  store i8 %149, ptr %150, align 1, !tbaa !43
  %151 = add nuw nsw i32 %133, %132
  %152 = mul nuw nsw i32 %151, %117
  %153 = lshr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds i8, ptr %121, i64 3
  store i8 %154, ptr %155, align 1, !tbaa !43
  %156 = add nuw nsw i64 %120, 1
  %157 = getelementptr inbounds i8, ptr %121, i64 4
  %158 = icmp eq i64 %156, %118
  br i1 %158, label %159, label %119, !llvm.loop !95

159:                                              ; preds = %131, %69
  tail call void @glEnableClientState(i32 noundef 32884) #15
  tail call void @glEnableClientState(i32 noundef 32886) #15
  %160 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %160) #15
  call void @glColorPointer(i32 noundef 4, i32 noundef 5121, i32 noundef 0, ptr noundef nonnull %4) #15
  %161 = load i32, ptr %0, align 8, !tbaa !74
  call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %161) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @glDisableClientState(i32 noundef 32886) #15
  call void @glShadeModel(i32 noundef 7424) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #15
  br label %162

162:                                              ; preds = %159, %66, %64, %2
  %163 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 6
  %164 = load i8, ptr %163, align 1, !tbaa !86
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %270, label %166

166:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %167 = load i8, ptr %1, align 2, !tbaa !43
  store i8 %167, ptr %7, align 1, !tbaa !43
  %168 = getelementptr inbounds i8, ptr %7, i64 1
  %169 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 1
  %170 = load i8, ptr %169, align 1, !tbaa !43
  store i8 %170, ptr %168, align 1, !tbaa !43
  %171 = getelementptr inbounds i8, ptr %7, i64 2
  %172 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 2
  %173 = load i8, ptr %172, align 2, !tbaa !43
  store i8 %173, ptr %171, align 1, !tbaa !43
  %174 = getelementptr inbounds i8, ptr %7, i64 3
  %175 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 3
  %176 = load i8, ptr %175, align 1, !tbaa !43
  %177 = lshr i8 %176, 3
  store i8 %177, ptr %174, align 1, !tbaa !43
  %178 = load i32, ptr %0, align 8, !tbaa !74
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %166
  %181 = zext nneg i32 %178 to i64
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ 0, %180 ], [ %198, %182 ]
  %184 = shl nuw nsw i64 %183, 1
  %185 = getelementptr inbounds [2 x float], ptr %5, i64 %184
  %186 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %183
  %187 = load float, ptr %186, align 4, !tbaa !34
  store float %187, ptr %185, align 16, !tbaa !34
  %188 = getelementptr inbounds float, ptr %186, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !34
  %190 = getelementptr inbounds float, ptr %185, i64 1
  store float %189, ptr %190, align 4, !tbaa !34
  %191 = or disjoint i64 %184, 1
  %192 = getelementptr inbounds [2 x float], ptr %5, i64 %191
  %193 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %183
  %194 = load float, ptr %193, align 4, !tbaa !34
  store float %194, ptr %192, align 8, !tbaa !34
  %195 = getelementptr inbounds float, ptr %193, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !34
  %197 = getelementptr inbounds float, ptr %192, i64 1
  store float %196, ptr %197, align 4, !tbaa !34
  %198 = add nuw nsw i64 %183, 1
  %199 = icmp eq i64 %198, %181
  br i1 %199, label %200, label %182, !llvm.loop !96

200:                                              ; preds = %182
  %201 = trunc i64 %198 to i32
  %202 = shl nuw nsw i32 %201, 1
  br label %203

203:                                              ; preds = %200, %166
  %204 = phi i32 [ 0, %166 ], [ %202, %200 ]
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [2 x float], ptr %5, i64 %205
  %207 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2
  %208 = load float, ptr %207, align 4, !tbaa !34
  store float %208, ptr %206, align 16, !tbaa !34
  %209 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 0, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !34
  %211 = getelementptr inbounds float, ptr %206, i64 1
  store float %210, ptr %211, align 4, !tbaa !34
  %212 = or disjoint i32 %204, 1
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds [2 x float], ptr %5, i64 %213
  %215 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  %216 = load float, ptr %215, align 4, !tbaa !34
  store float %216, ptr %214, align 8, !tbaa !34
  %217 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 0, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !34
  %219 = getelementptr inbounds float, ptr %214, i64 1
  store float %218, ptr %219, align 4, !tbaa !34
  %220 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 7
  %221 = load i8, ptr %220, align 2, !tbaa !85
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %244, label %223

223:                                              ; preds = %203
  %224 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !71
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %223
  %228 = zext nneg i32 %225 to i64
  br label %229

229:                                              ; preds = %227, %229
  %230 = phi i64 [ 0, %227 ], [ %242, %229 ]
  %231 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %230
  %232 = load float, ptr %231, align 8, !tbaa !34
  %233 = shl nuw nsw i64 %230, 1
  %234 = getelementptr inbounds [2 x float], ptr %6, i64 %233
  store float %232, ptr %234, align 16, !tbaa !34
  %235 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %230, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !34
  %237 = getelementptr inbounds [2 x float], ptr %6, i64 %233, i64 1
  store float %236, ptr %237, align 4, !tbaa !34
  %238 = or disjoint i64 %233, 1
  %239 = getelementptr inbounds [2 x float], ptr %6, i64 %238
  store float %232, ptr %239, align 8, !tbaa !34
  %240 = fadd float %236, -1.000000e+00
  %241 = getelementptr inbounds [2 x float], ptr %6, i64 %238, i64 1
  store float %240, ptr %241, align 4, !tbaa !34
  %242 = add nuw nsw i64 %230, 1
  %243 = icmp eq i64 %242, %228
  br i1 %243, label %244, label %229, !llvm.loop !97

244:                                              ; preds = %229, %223, %203
  call void @glEnableClientState(i32 noundef 32884) #15
  %245 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %246 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  br label %247

247:                                              ; preds = %244, %264
  %248 = phi i64 [ 0, %244 ], [ %267, %264 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %249 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %248
  %250 = load float, ptr %249, align 8, !tbaa !34
  %251 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %248, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !34
  call void @glTranslatef(float noundef %250, float noundef %252, float noundef 0.000000e+00) #15
  call void @glColor4ubv(ptr noundef nonnull %7) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %5) #15
  %253 = load i32, ptr %0, align 8, !tbaa !74
  %254 = shl nsw i32 %253, 1
  %255 = add nsw i32 %254, 2
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %255) #15
  call void @UI_GetThemeColor4ubv(i32 noundef 175, ptr noundef nonnull %8) #15
  %256 = load i8, ptr %220, align 2, !tbaa !85
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %247
  call void @UI_GetThemeColor4ubv(i32 noundef 175, ptr noundef nonnull %8) #15
  %259 = load i8, ptr %245, align 1, !tbaa !43
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  call void @glColor4ubv(ptr noundef nonnull %8) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %6) #15
  %262 = load i32, ptr %246, align 4, !tbaa !71
  %263 = shl nsw i32 %262, 1
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %263) #15
  br label %264

264:                                              ; preds = %258, %261, %247
  %265 = fneg float %250
  %266 = fneg float %252
  call void @glTranslatef(float noundef %265, float noundef %266, float noundef 0.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %267 = add nuw nsw i64 %248, 1
  %268 = icmp eq i64 %267, 8
  br i1 %268, label %269, label %247, !llvm.loop !98

269:                                              ; preds = %264
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %5) #15
  br label %270

270:                                              ; preds = %269, %162
  %271 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 9
  %272 = load i32, ptr %271, align 8, !tbaa !75
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10
  %276 = load i32, ptr %275, align 8, !tbaa !76
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %323, label %278

278:                                              ; preds = %274, %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %279 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  %280 = load i8, ptr %279, align 2, !tbaa !43
  store i8 %280, ptr %9, align 1, !tbaa !43
  %281 = getelementptr inbounds i8, ptr %9, i64 1
  %282 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 1
  %283 = load i8, ptr %282, align 1, !tbaa !43
  store i8 %283, ptr %281, align 1, !tbaa !43
  %284 = getelementptr inbounds i8, ptr %9, i64 2
  %285 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 2
  %286 = load i8, ptr %285, align 2, !tbaa !43
  store i8 %286, ptr %284, align 1, !tbaa !43
  %287 = getelementptr inbounds i8, ptr %9, i64 3
  %288 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 3
  %289 = load i8, ptr %288, align 1, !tbaa !43
  %290 = uitofp i8 %289 to float
  %291 = fmul float %290, 1.250000e-01
  %292 = fptoui float %291 to i8
  store i8 %292, ptr %287, align 1, !tbaa !43
  %293 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 9, i32 1
  %294 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 9, i32 2
  %295 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10
  %296 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10, i32 1
  %297 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10, i32 2
  br label %298

298:                                              ; preds = %278, %317
  %299 = phi i64 [ 0, %278 ], [ %320, %317 ]
  %300 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %299
  %301 = load float, ptr %300, align 8, !tbaa !34
  %302 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %299, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !34
  call void @glTranslatef(float noundef %301, float noundef %303, float noundef 0.000000e+00) #15
  %304 = load i32, ptr %271, align 8, !tbaa !75
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %298
  call void @glColor4ubv(ptr noundef nonnull %9) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %293) #15
  %307 = load i32, ptr %271, align 8, !tbaa !88
  %308 = mul i32 %307, 3
  %309 = load ptr, ptr %294, align 8, !tbaa !89
  call void @glDrawElements(i32 noundef 4, i32 noundef %308, i32 noundef 5125, ptr noundef %309) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  br label %310

310:                                              ; preds = %306, %298
  %311 = load i32, ptr %295, align 8, !tbaa !76
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  call void @glColor4ubv(ptr noundef nonnull %9) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %296) #15
  %314 = load i32, ptr %295, align 8, !tbaa !88
  %315 = mul i32 %314, 3
  %316 = load ptr, ptr %297, align 8, !tbaa !89
  call void @glDrawElements(i32 noundef 4, i32 noundef %315, i32 noundef 5125, ptr noundef %316) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  br label %317

317:                                              ; preds = %313, %310
  %318 = fneg float %301
  %319 = fneg float %303
  call void @glTranslatef(float noundef %318, float noundef %319, float noundef 0.000000e+00) #15
  %320 = add nuw nsw i64 %299, 1
  %321 = icmp eq i64 %320, 8
  br i1 %321, label %322, label %298, !llvm.loop !99

322:                                              ; preds = %317
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %323

323:                                              ; preds = %322, %274
  call void @glDisable(i32 noundef 3042) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.uiWidgetBase, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [74 x [2 x float]], align 16
  %16 = alloca %struct.uiWidgetBase, align 8
  %17 = alloca [4 x i8], align 1
  %18 = alloca [4 x i8], align 1
  %19 = tail call ptr @UI_GetTheme() #15
  %20 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  %22 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 46
  %23 = load i8, ptr %22, align 1, !tbaa !100
  switch i8 %23, label %65 [
    i8 2, label %24
    i8 1, label %56
    i8 4, label %60
  ]

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !101
  switch i32 %26, label %51 [
    i32 5120, label %27
    i32 27648, label %30
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  %29 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 10
  tail call void @widget_draw_text_icon(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef %3, ptr noundef %4)
  br label %653

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !52
  %35 = sub nsw i32 %34, %32
  %36 = sdiv i32 %35, 2
  %37 = add i32 %32, -1
  %38 = add i32 %37, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #15
  %39 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 11, i32 4
  %40 = load i8, ptr %39, align 2, !tbaa !43
  store i8 %40, ptr %18, align 1, !tbaa !43
  %41 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 11, i32 4, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !43
  %43 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 1
  store i8 %42, ptr %43, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 11, i32 4, i64 2
  %45 = load i8, ptr %44, align 2, !tbaa !43
  %46 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 2
  store i8 %45, ptr %46, align 1, !tbaa !43
  %47 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  store i8 30, ptr %47, align 1, !tbaa !43
  tail call void @glEnable(i32 noundef 3042) #15
  call void @glColor4ubv(ptr noundef nonnull %18) #15
  %48 = load i32, ptr %4, align 4, !tbaa !47
  %49 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !50
  call void @sdrawline(i32 noundef %48, i32 noundef %38, i32 noundef %50, i32 noundef %38) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #15
  br label %653

51:                                               ; preds = %24
  %52 = tail call ptr @UI_GetTheme() #15
  %53 = getelementptr inbounds %struct.bTheme, ptr %52, i64 0, i32 3
  store ptr %53, ptr @widget_type.wt, align 8, !tbaa !102
  %54 = getelementptr inbounds %struct.bTheme, ptr %52, i64 0, i32 3, i32 18
  store ptr %54, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %55 = getelementptr inbounds %struct.bTheme, ptr %52, i64 0, i32 3, i32 11
  store ptr %55, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

56:                                               ; preds = %5
  %57 = tail call ptr @UI_GetTheme() #15
  %58 = getelementptr inbounds %struct.bTheme, ptr %57, i64 0, i32 3
  store ptr %58, ptr @widget_type.wt, align 8, !tbaa !102
  %59 = getelementptr inbounds %struct.bTheme, ptr %57, i64 0, i32 3, i32 18
  store ptr %59, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_icon_has_anim, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

60:                                               ; preds = %5
  %61 = tail call ptr @UI_GetTheme() #15
  %62 = getelementptr inbounds %struct.bTheme, ptr %61, i64 0, i32 3
  store ptr %62, ptr @widget_type.wt, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.bTheme, ptr %61, i64 0, i32 3, i32 18
  store ptr %63, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %64 = getelementptr inbounds %struct.bTheme, ptr %61, i64 0, i32 3, i32 17
  store ptr %64, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_radial_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_state_pie_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !101
  %68 = add i32 %67, -512
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 23)
  switch i32 %69, label %649 [
    i32 9, label %70
    i32 20, label %653
    i32 53, label %653
    i32 0, label %85
    i32 4, label %90
    i32 13, label %95
    i32 1, label %100
    i32 35, label %105
    i32 5, label %110
    i32 51, label %115
    i32 40, label %115
    i32 36, label %128
    i32 2, label %128
    i32 8, label %128
    i32 37, label %133
    i32 38, label %133
    i32 10, label %156
    i32 18, label %156
    i32 26, label %203
    i32 19, label %208
    i32 14, label %213
    i32 27, label %217
    i32 34, label %217
    i32 21, label %222
    i32 22, label %222
    i32 41, label %226
    i32 25, label %299
    i32 42, label %478
    i32 29, label %622
    i32 30, label %623
    i32 46, label %627
    i32 47, label %628
    i32 48, label %629
    i32 49, label %630
    i32 31, label %631
    i32 50, label %632
    i32 17, label %638
    i32 54, label %643
    i32 39, label %647
    i32 52, label %648
  ]

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = getelementptr inbounds %struct.uiBlock, ptr %72, i64 0, i32 27
  %74 = load i32, ptr %73, align 8, !tbaa !109
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  %79 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 10
  tail call void @widget_draw_text_icon(ptr noundef nonnull %78, ptr noundef nonnull %79, ptr noundef %3, ptr noundef %4)
  br label %653

80:                                               ; preds = %70
  %81 = tail call ptr @UI_GetTheme() #15
  %82 = getelementptr inbounds %struct.bTheme, ptr %81, i64 0, i32 3
  store ptr %82, ptr @widget_type.wt, align 8, !tbaa !102
  %83 = getelementptr inbounds %struct.bTheme, ptr %81, i64 0, i32 3, i32 18
  store ptr %83, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_label, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  %84 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  br label %653

85:                                               ; preds = %65
  %86 = tail call ptr @UI_GetTheme() #15
  %87 = getelementptr inbounds %struct.bTheme, ptr %86, i64 0, i32 3
  store ptr %87, ptr @widget_type.wt, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.bTheme, ptr %86, i64 0, i32 3, i32 18
  store ptr %88, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %89 = getelementptr inbounds %struct.bTheme, ptr %86, i64 0, i32 3, i32 1
  store ptr %89, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_roundbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

90:                                               ; preds = %65
  %91 = tail call ptr @UI_GetTheme() #15
  %92 = getelementptr inbounds %struct.bTheme, ptr %91, i64 0, i32 3
  store ptr %92, ptr @widget_type.wt, align 8, !tbaa !102
  %93 = getelementptr inbounds %struct.bTheme, ptr %91, i64 0, i32 3, i32 18
  store ptr %93, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %94 = getelementptr inbounds %struct.bTheme, ptr %91, i64 0, i32 3, i32 6
  store ptr %94, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_numbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

95:                                               ; preds = %65
  %96 = tail call ptr @UI_GetTheme() #15
  %97 = getelementptr inbounds %struct.bTheme, ptr %96, i64 0, i32 3
  store ptr %97, ptr @widget_type.wt, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.bTheme, ptr %96, i64 0, i32 3, i32 18
  store ptr %98, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %99 = getelementptr inbounds %struct.bTheme, ptr %96, i64 0, i32 3, i32 7
  store ptr %99, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_numslider, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_state_numslider, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

100:                                              ; preds = %65
  %101 = tail call ptr @UI_GetTheme() #15
  %102 = getelementptr inbounds %struct.bTheme, ptr %101, i64 0, i32 3
  store ptr %102, ptr @widget_type.wt, align 8, !tbaa !102
  %103 = getelementptr inbounds %struct.bTheme, ptr %101, i64 0, i32 3, i32 18
  store ptr %103, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %104 = getelementptr inbounds %struct.bTheme, ptr %101, i64 0, i32 3, i32 3
  store ptr %104, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_radiobut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

105:                                              ; preds = %65
  %106 = tail call ptr @UI_GetTheme() #15
  %107 = getelementptr inbounds %struct.bTheme, ptr %106, i64 0, i32 3
  store ptr %107, ptr @widget_type.wt, align 8, !tbaa !102
  %108 = getelementptr inbounds %struct.bTheme, ptr %106, i64 0, i32 3, i32 18
  store ptr %108, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %109 = getelementptr inbounds %struct.bTheme, ptr %106, i64 0, i32 3, i32 16
  store ptr %109, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_list_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

110:                                              ; preds = %65
  %111 = tail call ptr @UI_GetTheme() #15
  %112 = getelementptr inbounds %struct.bTheme, ptr %111, i64 0, i32 3
  store ptr %112, ptr @widget_type.wt, align 8, !tbaa !102
  %113 = getelementptr inbounds %struct.bTheme, ptr %111, i64 0, i32 3, i32 18
  store ptr %113, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %114 = getelementptr inbounds %struct.bTheme, ptr %111, i64 0, i32 3, i32 2
  store ptr %114, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_textbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

115:                                              ; preds = %65, %65
  %116 = tail call ptr @UI_GetTheme() #15
  %117 = getelementptr inbounds %struct.bTheme, ptr %116, i64 0, i32 3
  store ptr %117, ptr @widget_type.wt, align 8, !tbaa !102
  %118 = getelementptr inbounds %struct.bTheme, ptr %116, i64 0, i32 3, i32 18
  store ptr %118, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %119 = getelementptr inbounds %struct.bTheme, ptr %116, i64 0, i32 3, i32 2
  store ptr %119, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_textbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  %120 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = getelementptr inbounds %struct.uiBlock, ptr %121, i64 0, i32 27
  %123 = load i32, ptr %122, align 8, !tbaa !109
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %653, label %126

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.bTheme, ptr %19, i64 0, i32 3, i32 10
  store ptr %127, ptr @widget_type.wt, align 8, !tbaa !102
  br label %653

128:                                              ; preds = %65, %65, %65
  %129 = tail call ptr @UI_GetTheme() #15
  %130 = getelementptr inbounds %struct.bTheme, ptr %129, i64 0, i32 3
  store ptr %130, ptr @widget_type.wt, align 8, !tbaa !102
  %131 = getelementptr inbounds %struct.bTheme, ptr %129, i64 0, i32 3, i32 18
  store ptr %131, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %132 = getelementptr inbounds %struct.bTheme, ptr %129, i64 0, i32 3, i32 5
  store ptr %132, ptr @widget_type.wt, align 8, !tbaa !102
  br label %653

133:                                              ; preds = %65, %65
  %134 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !53
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  %138 = tail call ptr @UI_GetTheme() #15
  %139 = getelementptr inbounds %struct.bTheme, ptr %138, i64 0, i32 3
  store ptr %139, ptr @widget_type.wt, align 8, !tbaa !102
  %140 = getelementptr inbounds %struct.bTheme, ptr %138, i64 0, i32 3, i32 18
  store ptr %140, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  br i1 %137, label %141, label %146

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.bTheme, ptr %138, i64 0, i32 3, i32 4
  store ptr %142, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_optionbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  %143 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 3
  %144 = load i32, ptr %143, align 4, !tbaa !110
  %145 = or i32 %144, 2
  store i32 %145, ptr %143, align 4, !tbaa !110
  br label %148

146:                                              ; preds = %133
  %147 = getelementptr inbounds %struct.bTheme, ptr %138, i64 0, i32 3, i32 5
  store ptr %147, ptr @widget_type.wt, align 8, !tbaa !102
  br label %148

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %150 = load ptr, ptr %149, align 8, !tbaa !61
  %151 = getelementptr inbounds %struct.uiBlock, ptr %150, i64 0, i32 27
  %152 = load i32, ptr %151, align 8, !tbaa !109
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %653, label %155

155:                                              ; preds = %148
  store ptr @widget_state_option_menu, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

156:                                              ; preds = %65, %65
  %157 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !53
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = tail call ptr @UI_GetTheme() #15
  %163 = getelementptr inbounds %struct.bTheme, ptr %162, i64 0, i32 3
  store ptr %163, ptr @widget_type.wt, align 8, !tbaa !102
  %164 = getelementptr inbounds %struct.bTheme, ptr %162, i64 0, i32 3, i32 18
  store ptr %164, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %165 = getelementptr inbounds %struct.bTheme, ptr %162, i64 0, i32 3, i32 8
  store ptr %165, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menunodebut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 15
  %168 = load ptr, ptr %167, align 8, !tbaa !111
  %169 = load i8, ptr %168, align 1, !tbaa !43
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 44
  %173 = load i32, ptr %172, align 8, !tbaa !112
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !50
  %178 = load i32, ptr %4, align 4, !tbaa !47
  %179 = sub nsw i32 %177, %178
  %180 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %181 = load i32, ptr %180, align 4, !tbaa !52
  %182 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %183 = load i32, ptr %182, align 4, !tbaa !51
  %184 = add i32 %181, 2
  %185 = sub i32 %184, %183
  %186 = icmp sge i32 %179, %185
  %187 = and i32 %158, 128
  %188 = icmp eq i32 %187, 0
  %189 = and i1 %188, %186
  br i1 %189, label %198, label %193

190:                                              ; preds = %171, %166
  %191 = and i32 %158, 128
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190, %175
  %194 = tail call ptr @UI_GetTheme() #15
  %195 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 3
  store ptr %195, ptr @widget_type.wt, align 8, !tbaa !102
  %196 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 3, i32 18
  store ptr %196, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %197 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 3, i32 8
  store ptr %197, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menuiconbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

198:                                              ; preds = %175, %190
  %199 = tail call ptr @UI_GetTheme() #15
  %200 = getelementptr inbounds %struct.bTheme, ptr %199, i64 0, i32 3
  store ptr %200, ptr @widget_type.wt, align 8, !tbaa !102
  %201 = getelementptr inbounds %struct.bTheme, ptr %199, i64 0, i32 3, i32 18
  store ptr %201, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %202 = getelementptr inbounds %struct.bTheme, ptr %199, i64 0, i32 3, i32 8
  store ptr %202, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menubut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br label %653

203:                                              ; preds = %65
  %204 = tail call ptr @UI_GetTheme() #15
  %205 = getelementptr inbounds %struct.bTheme, ptr %204, i64 0, i32 3
  store ptr %205, ptr @widget_type.wt, align 8, !tbaa !102
  %206 = getelementptr inbounds %struct.bTheme, ptr %204, i64 0, i32 3, i32 18
  store ptr %206, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %207 = getelementptr inbounds %struct.bTheme, ptr %204, i64 0, i32 3, i32 9
  store ptr %207, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_pulldownbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_pulldown, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

208:                                              ; preds = %65
  %209 = tail call ptr @UI_GetTheme() #15
  %210 = getelementptr inbounds %struct.bTheme, ptr %209, i64 0, i32 3
  store ptr %210, ptr @widget_type.wt, align 8, !tbaa !102
  %211 = getelementptr inbounds %struct.bTheme, ptr %209, i64 0, i32 3, i32 18
  store ptr %211, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %212 = getelementptr inbounds %struct.bTheme, ptr %209, i64 0, i32 3, i32 11
  store ptr %212, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  br label %653

213:                                              ; preds = %65
  %214 = tail call ptr @UI_GetTheme() #15
  %215 = getelementptr inbounds %struct.bTheme, ptr %214, i64 0, i32 3
  store ptr %215, ptr @widget_type.wt, align 8, !tbaa !102
  %216 = getelementptr inbounds %struct.bTheme, ptr %214, i64 0, i32 3, i32 18
  store ptr %216, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_swatch, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

217:                                              ; preds = %65, %65
  %218 = tail call ptr @UI_GetTheme() #15
  %219 = getelementptr inbounds %struct.bTheme, ptr %218, i64 0, i32 3
  store ptr %219, ptr @widget_type.wt, align 8, !tbaa !102
  %220 = getelementptr inbounds %struct.bTheme, ptr %218, i64 0, i32 3, i32 18
  store ptr %220, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_box, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  %221 = getelementptr inbounds %struct.bTheme, ptr %218, i64 0, i32 3, i32 13
  store ptr %221, ptr @widget_type.wt, align 8, !tbaa !102
  br label %653

222:                                              ; preds = %65, %65
  %223 = tail call ptr @UI_GetTheme() #15
  %224 = getelementptr inbounds %struct.bTheme, ptr %223, i64 0, i32 3
  store ptr %224, ptr @widget_type.wt, align 8, !tbaa !102
  %225 = getelementptr inbounds %struct.bTheme, ptr %223, i64 0, i32 3, i32 18
  store ptr %225, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_link, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

226:                                              ; preds = %65
  %227 = tail call ptr @UI_GetTheme() #15
  %228 = getelementptr inbounds %struct.bTheme, ptr %227, i64 0, i32 3
  store ptr %228, ptr @widget_type.wt, align 8, !tbaa !102
  %229 = getelementptr inbounds %struct.bTheme, ptr %227, i64 0, i32 3, i32 18
  store ptr %229, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_box, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  %230 = getelementptr inbounds %struct.bTheme, ptr %227, i64 0, i32 3, i32 13
  store ptr %230, ptr @widget_type.wt, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %16) #15
  %231 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %232 = sitofp i16 %231 to float
  %233 = fmul float %232, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull align 2 dereferenceable(32) %230, i64 32, i1 false), !tbaa.struct !42
  %234 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 1
  store i32 0, ptr %234, align 4, !tbaa !71
  store i32 0, ptr %16, align 8, !tbaa !74
  %235 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 9
  store i32 0, ptr %235, align 8, !tbaa !75
  %236 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 10
  store i32 0, ptr %236, align 8, !tbaa !76
  %237 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 5
  %238 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  store i32 16843009, ptr %237, align 8
  %239 = load ptr, ptr %238, align 8, !tbaa !61
  %240 = getelementptr inbounds %struct.uiBlock, ptr %239, i64 0, i32 24
  %241 = load ptr, ptr %240, align 8, !tbaa !114
  %242 = icmp eq ptr %241, null
  br i1 %242, label %295, label %243

243:                                              ; preds = %226
  %244 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 19
  %245 = load ptr, ptr %244, align 8, !tbaa !115
  %246 = getelementptr inbounds %struct.uiBlock, ptr %239, i64 0, i32 25
  %247 = load ptr, ptr %246, align 8, !tbaa !116
  %248 = getelementptr inbounds %struct.uiBlock, ptr %239, i64 0, i32 26
  %249 = load ptr, ptr %248, align 8, !tbaa !117
  tail call void %241(ptr noundef %0, ptr noundef %245, ptr noundef %247, ptr noundef %249, ptr noundef %4) #15
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %17) #15
  call void @glColor3ubv(ptr noundef nonnull %17) #15
  call fastcc void @round_box__edges(ptr noundef nonnull %16, i32 noundef 15, ptr noundef %4, float noundef 0.000000e+00, float noundef %233)
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %15) #15
  %250 = load i32, ptr %16, align 8, !tbaa !74
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %275

252:                                              ; preds = %243
  %253 = zext nneg i32 %250 to i64
  br label %254

254:                                              ; preds = %254, %252
  %255 = phi i64 [ 0, %252 ], [ %270, %254 ]
  %256 = shl nuw nsw i64 %255, 1
  %257 = getelementptr inbounds [2 x float], ptr %15, i64 %256
  %258 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 2, i64 %255
  %259 = load float, ptr %258, align 8, !tbaa !34
  store float %259, ptr %257, align 16, !tbaa !34
  %260 = getelementptr inbounds float, ptr %258, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = getelementptr inbounds float, ptr %257, i64 1
  store float %261, ptr %262, align 4, !tbaa !34
  %263 = or disjoint i64 %256, 1
  %264 = getelementptr inbounds [2 x float], ptr %15, i64 %263
  %265 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 3, i64 %255
  %266 = load float, ptr %265, align 8, !tbaa !34
  store float %266, ptr %264, align 8, !tbaa !34
  %267 = getelementptr inbounds float, ptr %265, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !34
  %269 = getelementptr inbounds float, ptr %264, i64 1
  store float %268, ptr %269, align 4, !tbaa !34
  %270 = add nuw nsw i64 %255, 1
  %271 = icmp eq i64 %270, %253
  br i1 %271, label %272, label %254, !llvm.loop !96

272:                                              ; preds = %254
  %273 = trunc i64 %270 to i32
  %274 = shl nuw nsw i32 %273, 1
  br label %275

275:                                              ; preds = %272, %243
  %276 = phi i32 [ 0, %243 ], [ %274, %272 ]
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [2 x float], ptr %15, i64 %277
  %279 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 2
  %280 = load float, ptr %279, align 8, !tbaa !34
  store float %280, ptr %278, align 16, !tbaa !34
  %281 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 2, i64 0, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = getelementptr inbounds float, ptr %278, i64 1
  store float %282, ptr %283, align 4, !tbaa !34
  %284 = or disjoint i32 %276, 1
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds [2 x float], ptr %15, i64 %285
  %287 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 3
  %288 = load float, ptr %287, align 8, !tbaa !34
  store float %288, ptr %286, align 8, !tbaa !34
  %289 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 3, i64 0, i64 1
  %290 = load float, ptr %289, align 4, !tbaa !34
  %291 = getelementptr inbounds float, ptr %286, i64 1
  store float %290, ptr %291, align 4, !tbaa !34
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %15) #15
  %292 = load i32, ptr %16, align 8, !tbaa !74
  %293 = shl nsw i32 %292, 1
  %294 = add nsw i32 %293, 2
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %294) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %15) #15
  br label %295

295:                                              ; preds = %226, %275
  %296 = getelementptr inbounds %struct.uiWidgetBase, ptr %16, i64 0, i32 6
  %297 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %298 = fsub float %233, %297
  call fastcc void @round_box__edges(ptr noundef nonnull %16, i32 noundef 15, ptr noundef %4, float noundef %233, float noundef %298)
  store i8 1, ptr %296, align 1, !tbaa !86
  store i8 0, ptr %237, align 8, !tbaa !90
  call fastcc void @widgetbase_draw(ptr noundef nonnull %16, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2))
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %16) #15
  br label %653

299:                                              ; preds = %65
  %300 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 24
  %301 = load float, ptr %300, align 8, !tbaa !68
  %302 = fcmp oeq float %301, 9.000000e+00
  %303 = fcmp oeq float %301, 1.000000e+01
  %304 = or i1 %302, %303
  br i1 %304, label %305, label %377

305:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %12) #15
  %306 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !50
  %308 = load i32, ptr %4, align 4, !tbaa !47
  %309 = sub nsw i32 %307, %308
  %310 = sitofp i32 %309 to float
  %311 = fmul float %310, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %312 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %313 = load ptr, ptr %312, align 8, !tbaa !61
  %314 = getelementptr inbounds %struct.uiBlock, ptr %313, i64 0, i32 51
  %315 = load i8, ptr %314, align 4, !tbaa !62
  %316 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 55
  %317 = load ptr, ptr %316, align 8, !tbaa !67
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %305
  %320 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %317) #15
  %321 = icmp eq i32 %320, 30
  %322 = select i1 %321, i8 0, i8 %315
  br label %323

323:                                              ; preds = %319, %305
  %324 = phi i8 [ %315, %305 ], [ %322, %319 ]
  call void @ui_get_but_vectorf(ptr noundef %3, ptr noundef nonnull %13) #15
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr %312, align 8, !tbaa !61
  call void @ui_block_to_display_space_v3(ptr noundef %327, ptr noundef nonnull %13) #15
  br label %328

328:                                              ; preds = %326, %323
  %329 = load float, ptr %300, align 8, !tbaa !68
  %330 = fcmp oeq float %329, 1.000000e+01
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  call void @rgb_to_hsl_v(ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  br label %333

332:                                              ; preds = %328
  call void @rgb_to_hsv_v(ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  br label %333

333:                                              ; preds = %332, %331
  %334 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !34
  %336 = load float, ptr %300, align 8, !tbaa !68
  %337 = fcmp oeq float %336, 9.000000e+00
  br i1 %337, label %338, label %346

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 23
  %340 = load float, ptr %339, align 4, !tbaa !70
  %341 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 22
  %342 = load float, ptr %341, align 8, !tbaa !69
  %343 = fsub float %340, %342
  %344 = fsub float %335, %342
  %345 = fdiv float %344, %343
  br label %346

346:                                              ; preds = %338, %333
  %347 = phi float [ %345, %338 ], [ %335, %333 ]
  %348 = getelementptr inbounds %struct.uiWidgetBase, ptr %12, i64 0, i32 1
  store i32 0, ptr %348, align 4, !tbaa !71
  store i32 0, ptr %12, align 8, !tbaa !74
  %349 = getelementptr inbounds %struct.uiWidgetBase, ptr %12, i64 0, i32 9
  store i32 0, ptr %349, align 8, !tbaa !75
  %350 = getelementptr inbounds %struct.uiWidgetBase, ptr %12, i64 0, i32 10
  store i32 0, ptr %350, align 8, !tbaa !76
  %351 = getelementptr inbounds %struct.uiWidgetBase, ptr %12, i64 0, i32 5
  store i32 16843009, ptr %351, align 8
  %352 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %353 = fsub float %311, %352
  call fastcc void @round_box__edges(ptr noundef nonnull %12, i32 noundef 15, ptr noundef nonnull %4, float noundef %311, float noundef %353)
  store i8 0, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 0, i64 2), align 2, !tbaa !43
  store i8 0, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 0, i64 1), align 1, !tbaa !43
  store i8 0, ptr @wcol_tmp, align 2, !tbaa !43
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1, i64 2), align 2, !tbaa !43
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1, i64 1), align 1, !tbaa !43
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1), align 2, !tbaa !43
  store i16 127, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 7), align 2, !tbaa !78
  store i16 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 8), align 2, !tbaa !80
  store i16 1, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 6), align 2, !tbaa !91
  call fastcc void @widgetbase_draw(ptr noundef nonnull %12, ptr noundef nonnull @wcol_tmp)
  %354 = load i32, ptr %4, align 4, !tbaa !47
  %355 = load i32, ptr %306, align 4, !tbaa !50
  %356 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %357 = load i32, ptr %356, align 4, !tbaa !51
  %358 = sitofp i32 %357 to float
  %359 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %360 = load i32, ptr %359, align 4, !tbaa !52
  %361 = sub nsw i32 %360, %357
  %362 = sitofp i32 %361 to float
  %363 = call float @llvm.fmuladd.f32(float %347, float %362, float %358)
  %364 = fadd float %358, 3.000000e+00
  %365 = fcmp olt float %363, %364
  br i1 %365, label %371, label %366

366:                                              ; preds = %346
  %367 = sitofp i32 %360 to float
  %368 = fadd float %367, -3.000000e+00
  %369 = fcmp ogt float %363, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  br label %371

371:                                              ; preds = %346, %366, %370
  %372 = phi float [ %368, %370 ], [ %363, %366 ], [ %364, %346 ]
  %373 = sub nsw i32 %355, %354
  %374 = sitofp i32 %373 to float
  %375 = sitofp i32 %354 to float
  %376 = call float @llvm.fmuladd.f32(float %374, float 5.000000e-01, float %375)
  call fastcc void @ui_hsv_cursor(float noundef %376, float noundef %372)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %12) #15
  br label %653

377:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %378 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %379 = load ptr, ptr %378, align 8, !tbaa !61
  %380 = tail call ptr @ui_block_hsv_get(ptr noundef %379) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  %381 = load ptr, ptr %378, align 8, !tbaa !61
  %382 = getelementptr inbounds %struct.uiBlock, ptr %381, i64 0, i32 51
  %383 = load i8, ptr %382, align 4, !tbaa !62
  %384 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 55
  %385 = load ptr, ptr %384, align 8, !tbaa !67
  %386 = icmp eq ptr %385, null
  br i1 %386, label %391, label %387

387:                                              ; preds = %377
  %388 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %385) #15
  %389 = icmp eq i32 %388, 30
  %390 = select i1 %389, i8 0, i8 %383
  br label %391

391:                                              ; preds = %387, %377
  %392 = phi i8 [ %383, %377 ], [ %390, %387 ]
  %393 = load float, ptr %380, align 4, !tbaa !34
  store float %393, ptr %11, align 4, !tbaa !34
  %394 = getelementptr inbounds float, ptr %380, i64 1
  %395 = load float, ptr %394, align 4, !tbaa !34
  %396 = getelementptr inbounds float, ptr %11, i64 1
  store float %395, ptr %396, align 4, !tbaa !34
  %397 = getelementptr inbounds float, ptr %380, i64 2
  %398 = load float, ptr %397, align 4, !tbaa !34
  %399 = getelementptr inbounds float, ptr %11, i64 2
  store float %398, ptr %399, align 4, !tbaa !34
  call void @ui_get_but_vectorf(ptr noundef %3, ptr noundef nonnull %10) #15
  %400 = icmp eq i8 %392, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %391
  %402 = load ptr, ptr %378, align 8, !tbaa !61
  call void @ui_block_to_display_space_v3(ptr noundef %402, ptr noundef nonnull %10) #15
  br label %403

403:                                              ; preds = %401, %391
  call void @rgb_to_hsv_compat_v(ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %404 = load float, ptr %300, align 8, !tbaa !68
  %405 = fptosi float %404 to i32
  call void @ui_draw_gradient(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %405, float noundef 1.000000e+00)
  %406 = load float, ptr %300, align 8, !tbaa !68
  %407 = fptosi float %406 to i32
  switch i32 %407, label %434 [
    i32 0, label %408
    i32 1, label %411
    i32 2, label %414
    i32 3, label %417
    i32 4, label %419
    i32 5, label %421
    i32 10, label %423
    i32 9, label %425
  ]

408:                                              ; preds = %403
  %409 = load float, ptr %399, align 4, !tbaa !34
  %410 = load float, ptr %396, align 4, !tbaa !34
  br label %434

411:                                              ; preds = %403
  %412 = load float, ptr %11, align 4, !tbaa !34
  %413 = load float, ptr %399, align 4, !tbaa !34
  br label %434

414:                                              ; preds = %403
  %415 = load float, ptr %11, align 4, !tbaa !34
  %416 = load float, ptr %396, align 4, !tbaa !34
  br label %434

417:                                              ; preds = %403
  %418 = load float, ptr %11, align 4, !tbaa !34
  br label %434

419:                                              ; preds = %403
  %420 = load float, ptr %396, align 4, !tbaa !34
  br label %434

421:                                              ; preds = %403
  %422 = load float, ptr %399, align 4, !tbaa !34
  br label %434

423:                                              ; preds = %403
  %424 = load float, ptr %399, align 4, !tbaa !34
  br label %434

425:                                              ; preds = %403
  %426 = load float, ptr %399, align 4, !tbaa !34
  %427 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 22
  %428 = load float, ptr %427, align 8, !tbaa !69
  %429 = fsub float %426, %428
  %430 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 23
  %431 = load float, ptr %430, align 4, !tbaa !70
  %432 = fsub float %431, %428
  %433 = fdiv float %429, %432
  br label %434

434:                                              ; preds = %425, %423, %421, %419, %417, %414, %411, %408, %403
  %435 = phi float [ 0.000000e+00, %403 ], [ 5.000000e-01, %425 ], [ 5.000000e-01, %423 ], [ %422, %421 ], [ %420, %419 ], [ %418, %417 ], [ %415, %414 ], [ %412, %411 ], [ %409, %408 ]
  %436 = phi float [ 0.000000e+00, %403 ], [ %433, %425 ], [ %424, %423 ], [ 5.000000e-01, %421 ], [ 5.000000e-01, %419 ], [ 5.000000e-01, %417 ], [ %416, %414 ], [ %413, %411 ], [ %410, %408 ]
  %437 = load i32, ptr %4, align 4, !tbaa !47
  %438 = sitofp i32 %437 to float
  %439 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %440 = load i32, ptr %439, align 4, !tbaa !50
  %441 = sub nsw i32 %440, %437
  %442 = sitofp i32 %441 to float
  %443 = call float @llvm.fmuladd.f32(float %435, float %442, float %438)
  %444 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %445 = load i32, ptr %444, align 4, !tbaa !51
  %446 = sitofp i32 %445 to float
  %447 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %448 = load i32, ptr %447, align 4, !tbaa !52
  %449 = sub nsw i32 %448, %445
  %450 = sitofp i32 %449 to float
  %451 = call float @llvm.fmuladd.f32(float %436, float %450, float %446)
  %452 = fadd float %438, 3.000000e+00
  %453 = fcmp olt float %443, %452
  br i1 %453, label %459, label %454

454:                                              ; preds = %434
  %455 = sitofp i32 %440 to float
  %456 = fadd float %455, -3.000000e+00
  %457 = fcmp ogt float %443, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  br label %459

459:                                              ; preds = %458, %454, %434
  %460 = phi float [ %456, %458 ], [ %443, %454 ], [ %452, %434 ]
  %461 = fadd float %446, 3.000000e+00
  %462 = fcmp olt float %451, %461
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = sitofp i32 %448 to float
  %465 = fadd float %464, -3.000000e+00
  %466 = fcmp ogt float %451, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %459, %463, %467
  %469 = phi float [ %465, %467 ], [ %451, %463 ], [ %461, %459 ]
  call fastcc void @ui_hsv_cursor(float noundef %460, float noundef %469)
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %470 = load i32, ptr %4, align 4, !tbaa !47
  %471 = sitofp i32 %470 to float
  %472 = load i32, ptr %444, align 4, !tbaa !51
  %473 = sitofp i32 %472 to float
  %474 = load i32, ptr %439, align 4, !tbaa !50
  %475 = sitofp i32 %474 to float
  %476 = load i32, ptr %447, align 4, !tbaa !52
  %477 = sitofp i32 %476 to float
  call void @fdrawbox(float noundef %471, float noundef %473, float noundef %475, float noundef %477) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %653

478:                                              ; preds = %65
  %479 = load i32, ptr %4, align 4, !tbaa !47
  %480 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %481 = load i32, ptr %480, align 4, !tbaa !50
  %482 = add nsw i32 %481, %479
  %483 = sitofp i32 %482 to float
  %484 = fmul float %483, 5.000000e-01
  %485 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %486 = load i32, ptr %485, align 4, !tbaa !51
  %487 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %488 = load i32, ptr %487, align 4, !tbaa !52
  %489 = add nsw i32 %488, %486
  %490 = sitofp i32 %489 to float
  %491 = fmul float %490, 5.000000e-01
  %492 = sub nsw i32 %481, %479
  %493 = sub nsw i32 %488, %486
  %494 = tail call i32 @llvm.smin.i32(i32 %492, i32 %493)
  %495 = sitofp i32 %494 to float
  %496 = fmul float %495, 5.000000e-01
  %497 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %498 = load ptr, ptr %497, align 8, !tbaa !61
  %499 = tail call ptr @ui_block_hsv_get(ptr noundef %498) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  %500 = load ptr, ptr %497, align 8, !tbaa !61
  %501 = getelementptr inbounds %struct.uiBlock, ptr %500, i64 0, i32 51
  %502 = load i8, ptr %501, align 4, !tbaa !62
  %503 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 55
  %504 = load ptr, ptr %503, align 8, !tbaa !67
  %505 = icmp eq ptr %504, null
  br i1 %505, label %510, label %506

506:                                              ; preds = %478
  %507 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %504) #15
  %508 = icmp eq i32 %507, 30
  %509 = select i1 %508, i8 0, i8 %502
  br label %510

510:                                              ; preds = %506, %478
  %511 = phi i8 [ %502, %478 ], [ %509, %506 ]
  call void @ui_get_but_vectorf(ptr noundef %3, ptr noundef nonnull %6) #15
  %512 = load float, ptr %499, align 4, !tbaa !34
  store float %512, ptr %7, align 4, !tbaa !34
  %513 = getelementptr inbounds float, ptr %499, i64 1
  %514 = load float, ptr %513, align 4, !tbaa !34
  %515 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %514, ptr %515, align 4, !tbaa !34
  %516 = getelementptr inbounds float, ptr %499, i64 2
  %517 = load float, ptr %516, align 4, !tbaa !34
  %518 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %517, ptr %518, align 4, !tbaa !34
  %519 = icmp eq i8 %511, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %510
  %521 = load ptr, ptr %497, align 8, !tbaa !61
  call void @ui_block_to_display_space_v3(ptr noundef %521, ptr noundef nonnull %6) #15
  br label %522

522:                                              ; preds = %520, %510
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %523 = load float, ptr %7, align 4, !tbaa !34
  %524 = load float, ptr %515, align 4, !tbaa !34
  %525 = load float, ptr %518, align 4, !tbaa !34
  %526 = fcmp olt float %525, 0.000000e+00
  br i1 %526, label %529, label %527

527:                                              ; preds = %522
  %528 = fcmp ogt float %525, 1.000000e+00
  br i1 %528, label %529, label %531

529:                                              ; preds = %527, %522
  %530 = phi float [ 0.000000e+00, %522 ], [ 1.000000e+00, %527 ]
  store float %530, ptr %518, align 4, !tbaa !34
  br label %531

531:                                              ; preds = %529, %527
  %532 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %533 = load i32, ptr %532, align 8, !tbaa !53
  %534 = and i32 %533, 4096
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %531
  %537 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !118
  %538 = icmp eq i16 %537, 0
  %539 = select i1 %538, float 1.000000e+00, float 5.000000e-01
  store float %539, ptr %518, align 4, !tbaa !34
  br label %540

540:                                              ; preds = %536, %531
  %541 = load float, ptr %518, align 4, !tbaa !34
  %542 = getelementptr inbounds float, ptr %9, i64 1
  %543 = getelementptr inbounds float, ptr %9, i64 2
  call void @ui_color_picker_to_rgb(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %541, ptr noundef nonnull %9, ptr noundef nonnull %542, ptr noundef nonnull %543) #15
  call void @glShadeModel(i32 noundef 7425) #15
  call void @glBegin(i32 noundef 6) #15
  call void @glColor3fv(ptr noundef nonnull %9) #15
  call void @glVertex2f(float noundef %484, float noundef %491) #15
  br label %544

544:                                              ; preds = %575, %540
  %545 = phi float [ 0.000000e+00, %540 ], [ %581, %575 ]
  %546 = phi i32 [ 0, %540 ], [ %580, %575 ]
  %547 = call float @sinf(float noundef %545) #15
  %548 = call float @cosf(float noundef %545) #15
  %549 = call float @llvm.fmuladd.f32(float %548, float %496, float %484)
  %550 = call float @llvm.fmuladd.f32(float %547, float %496, float %491)
  %551 = load i32, ptr %4, align 4, !tbaa !47
  %552 = load i32, ptr %480, align 4, !tbaa !50
  %553 = add nsw i32 %552, %551
  %554 = sitofp i32 %553 to float
  %555 = fmul float %554, 5.000000e-01
  %556 = load i32, ptr %485, align 4, !tbaa !51
  %557 = load i32, ptr %487, align 4, !tbaa !52
  %558 = add nsw i32 %557, %556
  %559 = sitofp i32 %558 to float
  %560 = fmul float %559, 5.000000e-01
  %561 = sub nsw i32 %552, %551
  %562 = sub nsw i32 %557, %556
  %563 = call i32 @llvm.smin.i32(i32 %561, i32 %562)
  %564 = sitofp i32 %563 to float
  %565 = fmul float %564, 5.000000e-01
  %566 = fsub float %549, %555
  %567 = fsub float %550, %560
  %568 = fmul float %567, %567
  %569 = call float @llvm.fmuladd.f32(float %566, float %566, float %568)
  %570 = fmul float %565, %565
  %571 = fcmp olt float %569, %570
  br i1 %571, label %572, label %575

572:                                              ; preds = %544
  %573 = call float @sqrtf(float noundef %569) #15
  %574 = fdiv float %573, %565
  br label %575

575:                                              ; preds = %572, %544
  %576 = phi float [ %574, %572 ], [ 1.000000e+00, %544 ]
  store float %576, ptr %515, align 4, !tbaa !34
  %577 = call float @atan2f(float noundef %566, float noundef %567) #15
  %578 = fdiv float %577, 0x401921FB60000000
  %579 = fadd float %578, 5.000000e-01
  store float %579, ptr %7, align 4, !tbaa !34
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call void @glColor3fv(ptr noundef nonnull %8) #15
  call void @glVertex2f(float noundef %549, float noundef %550) #15
  %580 = add nuw nsw i32 %546, 1
  %581 = fadd float %545, 0x3FB921FB60000000
  %582 = icmp eq i32 %580, 65
  br i1 %582, label %583, label %544, !llvm.loop !119

583:                                              ; preds = %575
  call void @glEnd() #15
  call void @glShadeModel(i32 noundef 7424) #15
  call void @glPushMatrix() #15
  call void @glTranslatef(float noundef %484, float noundef %491, float noundef 0.000000e+00) #15
  call void @glEnable(i32 noundef 3042) #15
  call void @glEnable(i32 noundef 2848) #15
  call void @glColor3ubv(ptr noundef nonnull %20) #15
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %496, i32 noundef 65) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @glDisable(i32 noundef 2848) #15
  call void @glPopMatrix() #15
  %584 = load i32, ptr %4, align 4, !tbaa !47
  %585 = load i32, ptr %480, align 4, !tbaa !50
  %586 = load i32, ptr %485, align 4, !tbaa !51
  %587 = load i32, ptr %487, align 4, !tbaa !52
  %588 = load i32, ptr %532, align 8, !tbaa !53
  %589 = and i32 %588, 8388608
  %590 = icmp ne i32 %589, 0
  %591 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2
  %592 = icmp eq i16 %591, 0
  %593 = select i1 %590, i1 %592, i1 false
  br i1 %593, label %594, label %598

594:                                              ; preds = %583
  %595 = fsub float 1.000000e+00, %524
  %596 = call float @powf(float noundef %595, float noundef 3.000000e+00) #15
  %597 = fsub float 1.000000e+00, %596
  br label %598

598:                                              ; preds = %583, %594
  %599 = phi float [ %597, %594 ], [ %524, %583 ]
  %600 = sub nsw i32 %585, %584
  %601 = sub nsw i32 %587, %586
  %602 = call i32 @llvm.smin.i32(i32 %600, i32 %601)
  %603 = add nsw i32 %587, %586
  %604 = sitofp i32 %603 to float
  %605 = fmul float %604, 5.000000e-01
  %606 = add nsw i32 %585, %584
  %607 = sitofp i32 %606 to float
  %608 = fmul float %607, 5.000000e-01
  %609 = fcmp olt float %599, 0.000000e+00
  %610 = fcmp ogt float %599, 1.000000e+00
  %611 = select i1 %610, float 1.000000e+00, float %599
  %612 = select i1 %609, float 0.000000e+00, float %611
  %613 = call float @llvm.fmuladd.f32(float %523, float 0x401921FB60000000, float 0x3FF921FB60000000)
  %614 = sitofp i32 %602 to float
  %615 = fmul float %614, 5.000000e-01
  %616 = fmul float %615, %612
  %617 = call float @cosf(float %613)
  %618 = call float @llvm.fmuladd.f32(float %617, float %616, float %608)
  %619 = call float @sinf(float %613)
  %620 = fneg float %619
  %621 = call float @llvm.fmuladd.f32(float %620, float %616, float %605)
  call fastcc void @ui_hsv_cursor(float noundef %618, float noundef %621)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %653

622:                                              ; preds = %65
  tail call void @ui_draw_but_COLORBAND(ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

623:                                              ; preds = %65
  %624 = tail call ptr @UI_GetTheme() #15
  %625 = getelementptr inbounds %struct.bTheme, ptr %624, i64 0, i32 3
  store ptr %625, ptr @widget_type.wt, align 8, !tbaa !102
  %626 = getelementptr inbounds %struct.bTheme, ptr %624, i64 0, i32 3, i32 18
  store ptr %626, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_normal, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

627:                                              ; preds = %65
  tail call void @ui_draw_but_IMAGE(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

628:                                              ; preds = %65
  tail call void @ui_draw_but_HISTOGRAM(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

629:                                              ; preds = %65
  tail call void @ui_draw_but_WAVEFORM(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

630:                                              ; preds = %65
  tail call void @ui_draw_but_VECTORSCOPE(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

631:                                              ; preds = %65
  tail call void @ui_draw_but_CURVE(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

632:                                              ; preds = %65
  %633 = tail call ptr @UI_GetTheme() #15
  %634 = getelementptr inbounds %struct.bTheme, ptr %633, i64 0, i32 3
  store ptr %634, ptr @widget_type.wt, align 8, !tbaa !102
  %635 = getelementptr inbounds %struct.bTheme, ptr %633, i64 0, i32 3, i32 18
  store ptr %635, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %636 = getelementptr inbounds %struct.bTheme, ptr %633, i64 0, i32 3, i32 15
  store ptr %636, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_progressbar, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  %637 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  br label %653

638:                                              ; preds = %65
  %639 = tail call ptr @UI_GetTheme() #15
  %640 = getelementptr inbounds %struct.bTheme, ptr %639, i64 0, i32 3
  store ptr %640, ptr @widget_type.wt, align 8, !tbaa !102
  %641 = getelementptr inbounds %struct.bTheme, ptr %639, i64 0, i32 3, i32 18
  store ptr %641, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %642 = getelementptr inbounds %struct.bTheme, ptr %639, i64 0, i32 3, i32 14
  store ptr %642, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_state_nothing, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_scroll, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

643:                                              ; preds = %65
  %644 = tail call ptr @UI_GetTheme() #15
  %645 = getelementptr inbounds %struct.bTheme, ptr %644, i64 0, i32 3
  store ptr %645, ptr @widget_type.wt, align 8, !tbaa !102
  %646 = getelementptr inbounds %struct.bTheme, ptr %644, i64 0, i32 3, i32 18
  store ptr %646, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_icon_has_anim, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  br label %653

647:                                              ; preds = %65
  tail call void @ui_draw_but_TRACKPREVIEW(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

648:                                              ; preds = %65
  tail call void @ui_draw_but_NODESOCKET(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef %4) #15
  br label %653

649:                                              ; preds = %65
  %650 = tail call ptr @UI_GetTheme() #15
  %651 = getelementptr inbounds %struct.bTheme, ptr %650, i64 0, i32 3
  store ptr %651, ptr @widget_type.wt, align 8, !tbaa !102
  %652 = getelementptr inbounds %struct.bTheme, ptr %650, i64 0, i32 3, i32 18
  store ptr %652, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  br label %653

653:                                              ; preds = %56, %85, %90, %95, %100, %105, %110, %128, %203, %208, %213, %217, %222, %295, %598, %622, %623, %627, %628, %629, %630, %631, %632, %638, %643, %647, %648, %649, %80, %77, %65, %65, %126, %115, %155, %148, %193, %198, %161, %468, %371, %60, %27, %30, %51
  %654 = phi i1 [ false, %51 ], [ true, %30 ], [ true, %27 ], [ false, %56 ], [ false, %60 ], [ false, %649 ], [ true, %648 ], [ true, %647 ], [ false, %643 ], [ false, %638 ], [ false, %632 ], [ true, %631 ], [ true, %630 ], [ true, %629 ], [ true, %628 ], [ true, %627 ], [ false, %623 ], [ true, %622 ], [ true, %598 ], [ true, %371 ], [ true, %468 ], [ true, %295 ], [ false, %222 ], [ false, %217 ], [ false, %213 ], [ false, %208 ], [ false, %203 ], [ false, %161 ], [ false, %193 ], [ false, %198 ], [ false, %155 ], [ false, %148 ], [ false, %128 ], [ false, %126 ], [ false, %115 ], [ false, %110 ], [ false, %105 ], [ false, %100 ], [ false, %95 ], [ false, %90 ], [ false, %85 ], [ true, %65 ], [ true, %65 ], [ true, %77 ], [ false, %80 ]
  %655 = phi ptr [ @widget_type.wt, %51 ], [ null, %30 ], [ null, %27 ], [ @widget_type.wt, %56 ], [ @widget_type.wt, %60 ], [ @widget_type.wt, %649 ], [ null, %648 ], [ null, %647 ], [ @widget_type.wt, %643 ], [ @widget_type.wt, %638 ], [ @widget_type.wt, %632 ], [ null, %631 ], [ null, %630 ], [ null, %629 ], [ null, %628 ], [ null, %627 ], [ @widget_type.wt, %623 ], [ null, %622 ], [ null, %598 ], [ null, %371 ], [ null, %468 ], [ null, %295 ], [ @widget_type.wt, %222 ], [ @widget_type.wt, %217 ], [ @widget_type.wt, %213 ], [ @widget_type.wt, %208 ], [ @widget_type.wt, %203 ], [ @widget_type.wt, %161 ], [ @widget_type.wt, %193 ], [ @widget_type.wt, %198 ], [ @widget_type.wt, %155 ], [ @widget_type.wt, %148 ], [ @widget_type.wt, %128 ], [ @widget_type.wt, %126 ], [ @widget_type.wt, %115 ], [ @widget_type.wt, %110 ], [ @widget_type.wt, %105 ], [ @widget_type.wt, %100 ], [ @widget_type.wt, %95 ], [ @widget_type.wt, %90 ], [ @widget_type.wt, %85 ], [ null, %65 ], [ null, %65 ], [ null, %77 ], [ @widget_type.wt, %80 ]
  %656 = phi ptr [ %21, %51 ], [ %21, %30 ], [ %21, %27 ], [ %21, %56 ], [ %21, %60 ], [ %21, %649 ], [ %21, %648 ], [ %21, %647 ], [ %21, %643 ], [ %21, %638 ], [ %637, %632 ], [ %21, %631 ], [ %21, %630 ], [ %21, %629 ], [ %21, %628 ], [ %21, %627 ], [ %21, %623 ], [ %21, %622 ], [ %21, %598 ], [ %21, %371 ], [ %21, %468 ], [ %21, %295 ], [ %21, %222 ], [ %21, %217 ], [ %21, %213 ], [ %21, %208 ], [ %21, %203 ], [ %21, %161 ], [ %21, %193 ], [ %21, %198 ], [ %21, %155 ], [ %21, %148 ], [ %21, %128 ], [ %21, %126 ], [ %21, %115 ], [ %21, %110 ], [ %21, %105 ], [ %21, %100 ], [ %21, %95 ], [ %21, %90 ], [ %21, %85 ], [ %21, %65 ], [ %21, %65 ], [ %21, %77 ], [ %84, %80 ]
  br i1 %654, label %781, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 3
  %659 = load i32, ptr %658, align 4, !tbaa !110
  %660 = and i32 %659, 245760
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %693, label %662

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %664 = load i32, ptr %663, align 8, !tbaa !101
  %665 = icmp eq i32 %664, 13824
  br i1 %665, label %693, label %666

666:                                              ; preds = %662
  %667 = and i32 %659, 16384
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %676, label %669

669:                                              ; preds = %666
  %670 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %671 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %672 = load i32, ptr %671, align 4, !tbaa !52
  %673 = sitofp i32 %672 to float
  %674 = fadd float %670, %673
  %675 = fptosi float %674 to i32
  store i32 %675, ptr %671, align 4, !tbaa !52
  br label %676

676:                                              ; preds = %669, %666
  %677 = and i32 %659, 32768
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %685, label %679

679:                                              ; preds = %676
  %680 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %681 = load i32, ptr %4, align 4, !tbaa !47
  %682 = sitofp i32 %681 to float
  %683 = fsub float %682, %680
  %684 = fptosi float %683 to i32
  store i32 %684, ptr %4, align 4, !tbaa !47
  br label %685

685:                                              ; preds = %679, %676
  %686 = add nsw i32 %660, -16384
  %687 = icmp ult i32 %686, 196608
  br i1 %687, label %688, label %693

688:                                              ; preds = %685
  %689 = lshr exact i32 %686, 14
  %690 = zext nneg i32 %689 to i64
  %691 = getelementptr inbounds [12 x i32], ptr @switch.table.ui_draw_but, i64 0, i64 %690
  %692 = load i32, ptr %691, align 4
  br label %693

693:                                              ; preds = %685, %688, %662, %657
  %694 = phi i32 [ 15, %662 ], [ 15, %657 ], [ %692, %688 ], [ 0, %685 ]
  %695 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 67
  %696 = load ptr, ptr %695, align 8, !tbaa !120
  %697 = icmp eq ptr %696, null
  br i1 %697, label %708, label %698

698:                                              ; preds = %693
  %699 = call i32 @ui_button_open_menu_direction(ptr noundef %3) #15
  switch i32 %699, label %708 [
    i32 1, label %700
    i32 2, label %702
    i32 4, label %704
    i32 8, label %706
  ]

700:                                              ; preds = %698
  %701 = and i32 %694, 12
  br label %708

702:                                              ; preds = %698
  %703 = and i32 %694, 3
  br label %708

704:                                              ; preds = %698
  %705 = and i32 %694, 6
  br label %708

706:                                              ; preds = %698
  %707 = and i32 %694, 9
  br label %708

708:                                              ; preds = %693, %698, %700, %702, %704, %706
  %709 = phi i32 [ %694, %693 ], [ %701, %700 ], [ %703, %702 ], [ %705, %704 ], [ %707, %706 ], [ %694, %698 ]
  %710 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %711 = load i32, ptr %710, align 8, !tbaa !53
  %712 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 69
  %713 = load ptr, ptr %712, align 8, !tbaa !121
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %721

715:                                              ; preds = %708
  %716 = and i32 %711, 33554432
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %723, label %718

718:                                              ; preds = %715
  %719 = call ptr @ui_get_but_drag_multi_edit(ptr noundef %3) #15
  %720 = icmp eq ptr %719, null
  br i1 %720, label %723, label %721

721:                                              ; preds = %718, %708
  %722 = or i32 %711, 16
  br label %723

723:                                              ; preds = %721, %718, %715
  %724 = phi i32 [ %722, %721 ], [ %711, %718 ], [ %711, %715 ]
  %725 = and i32 %724, 133120
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %730, label %727

727:                                              ; preds = %723
  %728 = load i8, ptr %22, align 1, !tbaa !100
  %729 = icmp eq i8 %728, 2
  br label %730

730:                                              ; preds = %727, %723
  %731 = phi i1 [ true, %723 ], [ %729, %727 ]
  br i1 %731, label %758, label %732

732:                                              ; preds = %730
  %733 = load ptr, ptr %655, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) @ui_widget_color_disabled.wcol_theme_s, ptr noundef nonnull align 2 dereferenceable(32) %733, i64 32, i1 false), !tbaa.struct !42
  %734 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 0, i64 3), align 1, !tbaa !43
  %735 = uitofp i8 %734 to double
  %736 = fmul double %735, 5.000000e-01
  %737 = fptoui double %736 to i8
  store i8 %737, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 0, i64 3), align 1, !tbaa !43
  %738 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 1, i64 3), align 1, !tbaa !43
  %739 = uitofp i8 %738 to double
  %740 = fmul double %739, 5.000000e-01
  %741 = fptoui double %740 to i8
  store i8 %741, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 1, i64 3), align 1, !tbaa !43
  %742 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 2, i64 3), align 1, !tbaa !43
  %743 = uitofp i8 %742 to double
  %744 = fmul double %743, 5.000000e-01
  %745 = fptoui double %744 to i8
  store i8 %745, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 2, i64 3), align 1, !tbaa !43
  %746 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 3, i64 3), align 1, !tbaa !43
  %747 = uitofp i8 %746 to double
  %748 = fmul double %747, 5.000000e-01
  %749 = fptoui double %748 to i8
  store i8 %749, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 3, i64 3), align 1, !tbaa !43
  %750 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 4, i64 3), align 1, !tbaa !43
  %751 = uitofp i8 %750 to double
  %752 = fmul double %751, 5.000000e-01
  %753 = fptoui double %752 to i8
  store i8 %753, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 4, i64 3), align 1, !tbaa !43
  %754 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 5, i64 3), align 1, !tbaa !43
  %755 = uitofp i8 %754 to double
  %756 = fmul double %755, 5.000000e-01
  %757 = fptoui double %756 to i8
  store i8 %757, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 5, i64 3), align 1, !tbaa !43
  store ptr @ui_widget_color_disabled.wcol_theme_s, ptr %655, align 8, !tbaa !102
  br label %758

758:                                              ; preds = %732, %730
  %759 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 3
  %760 = load ptr, ptr %759, align 8, !tbaa !105
  call void %760(ptr noundef %655, i32 noundef %724) #15
  %761 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 5
  %762 = load ptr, ptr %761, align 8, !tbaa !107
  %763 = icmp eq ptr %762, null
  br i1 %763, label %766, label %764

764:                                              ; preds = %758
  %765 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 2
  call void %762(ptr noundef %3, ptr noundef nonnull %765, ptr noundef %4, i32 noundef %724, i32 noundef %709) #15
  br label %772

766:                                              ; preds = %758
  %767 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 4
  %768 = load ptr, ptr %767, align 8, !tbaa !106
  %769 = icmp eq ptr %768, null
  br i1 %769, label %772, label %770

770:                                              ; preds = %766
  %771 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 2
  call void %768(ptr noundef nonnull %771, ptr noundef %4, i32 noundef %724, i32 noundef %709) #15
  br label %772

772:                                              ; preds = %766, %770, %764
  br i1 %731, label %777, label %773

773:                                              ; preds = %772
  call void @glEnable(i32 noundef 3042) #15
  %774 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 6
  %775 = load ptr, ptr %774, align 8, !tbaa !108
  %776 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 2
  call void %775(ptr noundef nonnull %656, ptr noundef nonnull %776, ptr noundef %3, ptr noundef %4) #15
  call void @glDisable(i32 noundef 3042) #15
  br label %781

777:                                              ; preds = %772
  %778 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 6
  %779 = load ptr, ptr %778, align 8, !tbaa !108
  %780 = getelementptr inbounds %struct.uiWidgetType, ptr %655, i64 0, i32 2
  call void %779(ptr noundef nonnull %656, ptr noundef nonnull %780, ptr noundef %3, ptr noundef %4) #15
  br label %781

781:                                              ; preds = %773, %777, %653
  ret void
}

declare ptr @UI_GetTheme() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @widget_draw_text_icon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca float, align 4
  %9 = alloca [400 x i8], align 16
  %10 = alloca %struct.rcti, align 4
  %11 = alloca %struct.rcti, align 4
  %12 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 46
  %18 = load i8, ptr %17, align 1, !tbaa !100
  %19 = icmp eq i8 %18, 2
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %4, %16
  %22 = phi i32 [ 0, %4 ], [ %20, %16 ]
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = uitofp i8 %25 to float
  %27 = fdiv float %26, 2.550000e+02
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %9) #15
  call void @ui_button_text_password_hide(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #15
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !101
  %30 = icmp eq i32 %29, 5632
  br i1 %30, label %31, label %45

31:                                               ; preds = %21
  %32 = load i32, ptr %12, align 8, !tbaa !53
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !122
  %36 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !52
  %40 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !51
  %42 = xor i32 %39, -1
  %43 = add i32 %37, %42
  %44 = add i32 %43, %41
  store i32 %44, ptr %10, align 4, !tbaa !47
  call fastcc void @widget_draw_icon(ptr noundef %2, i32 noundef 643, float noundef %27, ptr noundef nonnull %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %45

45:                                               ; preds = %35, %31, %21
  %46 = load i32, ptr %12, align 8, !tbaa !53
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne i32 %22, 0
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %45
  br i1 %48, label %52, label %59

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 44
  %54 = load i32, ptr %53, align 8, !tbaa !112
  %55 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 51
  %56 = load i16, ptr %55, align 4, !tbaa !124
  %57 = sext i16 %56 to i32
  %58 = add i32 %54, %57
  br label %59

59:                                               ; preds = %51, %52
  %60 = phi i32 [ %58, %52 ], [ 0, %51 ]
  %61 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !52
  %63 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !51
  %65 = sub nsw i32 %62, %64
  %66 = sitofp i32 %65 to float
  %67 = fmul float %66, 0x3FE99999A0000000
  %68 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = call zeroext i8 @ui_block_is_menu(ptr noundef %69) #15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %59
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %74 = sitofp i16 %73 to float
  %75 = load i32, ptr %3, align 4, !tbaa !47
  %76 = sitofp i32 %75 to float
  %77 = call float @llvm.fmuladd.f32(float %74, float 0x3FD3333340000000, float %76)
  %78 = fptosi float %77 to i32
  store i32 %78, ptr %3, align 4, !tbaa !47
  br label %79

79:                                               ; preds = %72, %59
  call fastcc void @widget_draw_icon(ptr noundef %2, i32 noundef %60, float noundef %27, ptr noundef %3, i8 noundef zeroext %23)
  %80 = load i32, ptr %3, align 4, !tbaa !47
  %81 = sitofp i32 %80 to float
  %82 = fadd float %67, %81
  %83 = fptosi float %82 to i32
  store i32 %83, ptr %3, align 4, !tbaa !47
  %84 = icmp eq i8 %23, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = fmul float %67, 5.000000e-01
  %87 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = sitofp i32 %88 to float
  %90 = fsub float %89, %86
  %91 = fptosi float %90 to i32
  store i32 %91, ptr %87, align 4, !tbaa !50
  br label %92

92:                                               ; preds = %79, %85, %45
  %93 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %94 = load ptr, ptr %93, align 8, !tbaa !121
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !110
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %96, %92
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %103 = sitofp i16 %102 to float
  %104 = fmul float %103, 0x3FD99999A0000000
  %105 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  %107 = getelementptr inbounds %struct.uiBlock, ptr %106, i64 0, i32 12
  %108 = load float, ptr %107, align 8, !tbaa !125
  %109 = fdiv float %104, %108
  %110 = load i32, ptr %3, align 4, !tbaa !47
  %111 = sitofp i32 %110 to float
  %112 = fadd float %109, %111
  br label %129

113:                                              ; preds = %96
  %114 = and i32 %98, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %113
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %118 = sitofp i16 %117 to float
  %119 = fmul float %118, 0x3FD99999A0000000
  %120 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = getelementptr inbounds %struct.uiBlock, ptr %121, i64 0, i32 12
  %123 = load float, ptr %122, align 8, !tbaa !125
  %124 = fdiv float %119, %123
  %125 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = sitofp i32 %126 to float
  %128 = fsub float %127, %124
  br label %129

129:                                              ; preds = %101, %116
  %130 = phi float [ %128, %116 ], [ %112, %101 ]
  %131 = phi ptr [ %125, %116 ], [ %3, %101 ]
  %132 = fptosi float %130 to i32
  store i32 %132, ptr %131, align 4, !tbaa !123
  br label %133

133:                                              ; preds = %129, %113
  %134 = load i32, ptr %28, align 8, !tbaa !101
  %135 = icmp eq i32 %134, 26624
  br i1 %135, label %136, label %161

136:                                              ; preds = %133
  %137 = call zeroext i8 @ui_is_but_search_unlink_visible(ptr noundef %2) #15
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !122
  %140 = getelementptr inbounds %struct.rcti, ptr %11, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = sitofp i32 %141 to float
  %143 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %144 = load i32, ptr %143, align 4, !tbaa !52
  %145 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !51
  %147 = sub nsw i32 %144, %146
  %148 = sitofp i32 %147 to float
  %149 = fneg float %148
  %150 = call float @llvm.fmuladd.f32(float %149, float 0x3FF147AE20000000, float %142)
  %151 = fptosi float %150 to i32
  store i32 %151, ptr %11, align 4, !tbaa !47
  call fastcc void @widget_draw_icon(ptr noundef %2, i32 noundef 19, float noundef %27, ptr noundef nonnull %11, i8 noundef zeroext 0)
  %152 = load i32, ptr %143, align 4, !tbaa !52
  %153 = load i32, ptr %145, align 4, !tbaa !51
  %154 = sub nsw i32 %152, %153
  %155 = sitofp i32 %154 to float
  %156 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !50
  %158 = sitofp i32 %157 to float
  %159 = call float @llvm.fmuladd.f32(float %155, float 0xBFE99999A0000000, float %158)
  %160 = fptosi float %159 to i32
  store i32 %160, ptr %156, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %161

161:                                              ; preds = %139, %136, %133
  %162 = load ptr, ptr %93, align 8, !tbaa !121
  %163 = icmp eq ptr %162, null
  br i1 %163, label %301, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 12
  %166 = load i16, ptr %165, align 4, !tbaa !126
  %167 = icmp sgt i16 %166, -1
  br i1 %167, label %168, label %301

168:                                              ; preds = %164
  %169 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %170 = sitofp i16 %169 to float
  %171 = fmul float %170, 2.500000e-01
  %172 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %173 = load ptr, ptr %172, align 8, !tbaa !61
  %174 = getelementptr inbounds %struct.uiBlock, ptr %173, i64 0, i32 12
  %175 = load float, ptr %174, align 8, !tbaa !125
  %176 = fdiv float %171, %175
  %177 = fadd float %176, 5.000000e-01
  %178 = fptosi float %177 to i32
  %179 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = load i32, ptr %3, align 4, !tbaa !47
  %182 = add i32 %181, %178
  %183 = sub i32 %180, %182
  %184 = call i32 @llvm.smax.i32(i32 %183, i32 0)
  call void @uiStyleFontSet(ptr noundef %0) #15
  %185 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %186 = load i16, ptr %185, align 4, !tbaa !127
  %187 = icmp eq i16 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %168
  %189 = load i16, ptr %0, align 4, !tbaa !129
  %190 = sext i16 %189 to i32
  call void @BLF_enable(i32 noundef %190, i32 noundef 8) #15
  br label %191

191:                                              ; preds = %188, %168
  %192 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %193 = load i16, ptr %192, align 2, !tbaa !130
  %194 = load i16, ptr %165, align 4, !tbaa !126
  %195 = icmp sgt i16 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  store i16 %194, ptr %192, align 2, !tbaa !130
  br label %197

197:                                              ; preds = %196, %191
  %198 = load i16, ptr %0, align 4, !tbaa !129
  %199 = sext i16 %198 to i32
  %200 = load ptr, ptr %93, align 8, !tbaa !121
  %201 = call float @BLF_width(i32 noundef %199, ptr noundef %200, i64 noundef 2147483647) #15
  %202 = sitofp i32 %184 to float
  %203 = fcmp ugt float %201, %202
  br i1 %203, label %205, label %204

204:                                              ; preds = %197
  store i16 0, ptr %192, align 2, !tbaa !130
  br label %205

205:                                              ; preds = %204, %197
  %206 = load i16, ptr %0, align 4, !tbaa !129
  %207 = sext i16 %206 to i32
  %208 = load ptr, ptr %93, align 8, !tbaa !121
  %209 = load i16, ptr %192, align 2, !tbaa !130
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds i8, ptr %208, i64 %210
  %212 = call float @BLF_width(i32 noundef %207, ptr noundef %211, i64 noundef 2147483647) #15
  %213 = fptosi float %212 to i16
  %214 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 %213, ptr %214, align 2, !tbaa !131
  %215 = sext i16 %213 to i32
  %216 = icmp slt i32 %184, %215
  br i1 %216, label %217, label %295

217:                                              ; preds = %205
  %218 = load ptr, ptr %93, align 8, !tbaa !121
  %219 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %218) #16
  %220 = trunc i64 %219 to i32
  %221 = add nsw i32 %184, -20
  %222 = sitofp i32 %221 to float
  br label %223

223:                                              ; preds = %281, %217
  %224 = phi i32 [ %220, %217 ], [ %282, %281 ]
  %225 = load i16, ptr %214, align 2, !tbaa !131
  %226 = sext i16 %225 to i32
  %227 = icmp slt i32 %184, %226
  br i1 %227, label %228, label %295

228:                                              ; preds = %223
  %229 = load i16, ptr %0, align 4, !tbaa !129
  %230 = sext i16 %229 to i32
  %231 = load ptr, ptr %93, align 8, !tbaa !121
  %232 = load i16, ptr %192, align 2, !tbaa !130
  %233 = sext i16 %232 to i64
  %234 = getelementptr inbounds i8, ptr %231, i64 %233
  %235 = load i16, ptr %165, align 4, !tbaa !126
  %236 = sext i16 %235 to i64
  %237 = sub nsw i64 %236, %233
  %238 = call float @BLF_width(i32 noundef %230, ptr noundef %234, i64 noundef %237) #15
  %239 = fcmp ogt float %238, %222
  br i1 %239, label %240, label %254

240:                                              ; preds = %228
  %241 = load ptr, ptr %93, align 8, !tbaa !121
  %242 = load i16, ptr %192, align 2, !tbaa !130
  %243 = sext i16 %242 to i64
  %244 = getelementptr inbounds i8, ptr %241, i64 %243
  %245 = call ptr @BLI_str_find_next_char_utf8(ptr noundef %244, ptr noundef null) #15
  %246 = load i16, ptr %192, align 2, !tbaa !130
  %247 = sext i16 %246 to i64
  %248 = getelementptr inbounds i8, ptr %241, i64 %247
  %249 = ptrtoint ptr %245 to i64
  %250 = ptrtoint ptr %248 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i16
  %253 = add i16 %246, %252
  store i16 %253, ptr %192, align 2, !tbaa !130
  br label %281

254:                                              ; preds = %228
  %255 = fcmp olt float %238, 2.000000e+01
  br i1 %255, label %256, label %272

256:                                              ; preds = %254
  %257 = load i16, ptr %192, align 2, !tbaa !130
  %258 = icmp sgt i16 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %256
  %260 = load ptr, ptr %93, align 8, !tbaa !121
  %261 = zext nneg i16 %257 to i64
  %262 = getelementptr inbounds i8, ptr %260, i64 %261
  %263 = call ptr @BLI_str_find_prev_char_utf8(ptr noundef %260, ptr noundef nonnull %262) #15
  %264 = load i16, ptr %192, align 2, !tbaa !130
  %265 = sext i16 %264 to i64
  %266 = getelementptr inbounds i8, ptr %260, i64 %265
  %267 = ptrtoint ptr %266 to i64
  %268 = ptrtoint ptr %263 to i64
  %269 = sub i64 %268, %267
  %270 = trunc i64 %269 to i16
  %271 = add i16 %264, %270
  store i16 %271, ptr %192, align 2, !tbaa !130
  br label %272

272:                                              ; preds = %259, %256, %254
  %273 = load ptr, ptr %93, align 8, !tbaa !121
  %274 = sext i32 %224 to i64
  %275 = getelementptr inbounds i8, ptr %273, i64 %274
  %276 = call ptr @BLI_str_find_prev_char_utf8(ptr noundef %273, ptr noundef %275) #15
  %277 = call i32 @BLI_str_utf8_size(ptr noundef %276) #15
  %278 = icmp eq i32 %277, -1
  %279 = select i1 %278, i32 1, i32 %277
  %280 = sub nsw i32 %224, %279
  br label %281

281:                                              ; preds = %272, %240
  %282 = phi i32 [ %224, %240 ], [ %280, %272 ]
  %283 = load i16, ptr %0, align 4, !tbaa !129
  %284 = sext i16 %283 to i32
  %285 = load ptr, ptr %93, align 8, !tbaa !121
  %286 = load i16, ptr %192, align 2, !tbaa !130
  %287 = sext i16 %286 to i32
  %288 = sext i16 %286 to i64
  %289 = getelementptr inbounds i8, ptr %285, i64 %288
  %290 = sub nsw i32 %282, %287
  %291 = sext i32 %290 to i64
  %292 = call float @BLF_width(i32 noundef %284, ptr noundef %289, i64 noundef %291) #15
  %293 = fptosi float %292 to i16
  store i16 %293, ptr %214, align 2, !tbaa !131
  %294 = icmp slt i16 %293, 10
  br i1 %294, label %295, label %223

295:                                              ; preds = %281, %223, %205
  %296 = load i16, ptr %185, align 4, !tbaa !127
  %297 = icmp eq i16 %296, 1
  br i1 %297, label %298, label %514

298:                                              ; preds = %295
  %299 = load i16, ptr %0, align 4, !tbaa !129
  %300 = sext i16 %299 to i32
  call void @BLF_disable(i32 noundef %300, i32 noundef 8) #15
  br label %514

301:                                              ; preds = %164, %161
  %302 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 17
  %303 = load i8, ptr %302, align 8, !tbaa !43
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  store i16 0, ptr %306, align 2, !tbaa !130
  %307 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 0, ptr %307, align 2, !tbaa !131
  br label %514

308:                                              ; preds = %301
  %309 = load i32, ptr %28, align 8, !tbaa !101
  switch i32 %309, label %439 [
    i32 2560, label %310
    i32 7168, label %310
  ]

310:                                              ; preds = %308, %308
  %311 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %312 = sitofp i16 %311 to float
  %313 = fmul float %312, 2.500000e-01
  %314 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %315 = load ptr, ptr %314, align 8, !tbaa !61
  %316 = getelementptr inbounds %struct.uiBlock, ptr %315, i64 0, i32 12
  %317 = load float, ptr %316, align 8, !tbaa !125
  %318 = fdiv float %313, %317
  %319 = fadd float %318, 1.000000e+00
  %320 = fptosi float %319 to i32
  %321 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %322 = load i32, ptr %321, align 4, !tbaa !50
  %323 = load i32, ptr %3, align 4, !tbaa !47
  %324 = add i32 %323, %320
  %325 = sub i32 %322, %324
  %326 = call i32 @llvm.smax.i32(i32 %325, i32 0)
  %327 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %302) #16
  %328 = trunc i64 %327 to i32
  %329 = shl i64 %327, 32
  %330 = ashr exact i64 %329, 32
  %331 = getelementptr inbounds i8, ptr %302, i64 %330
  call void @uiStyleFontSet(ptr noundef %0) #15
  %332 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %333 = load i16, ptr %332, align 4, !tbaa !127
  %334 = icmp eq i16 %333, 1
  br i1 %334, label %335, label %338

335:                                              ; preds = %310
  %336 = load i16, ptr %0, align 4, !tbaa !129
  %337 = sext i16 %336 to i32
  call void @BLF_enable(i32 noundef %337, i32 noundef 8) #15
  br label %338

338:                                              ; preds = %335, %310
  %339 = load i16, ptr %0, align 4, !tbaa !129
  %340 = sext i16 %339 to i32
  %341 = call float @BLF_width(i32 noundef %340, ptr noundef nonnull %302, i64 noundef 400) #15
  %342 = fptosi float %341 to i16
  %343 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 %342, ptr %343, align 2, !tbaa !131
  %344 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  store i16 0, ptr %344, align 2, !tbaa !130
  %345 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %302, i32 noundef 58) #16
  %346 = icmp ne ptr %345, null
  %347 = getelementptr inbounds i8, ptr %331, i64 -2
  %348 = icmp ult ptr %345, %347
  %349 = select i1 %346, i1 %348, i1 false
  br i1 %349, label %350, label %409

350:                                              ; preds = %338, %358
  %351 = phi ptr [ %367, %358 ], [ %345, %338 ]
  %352 = phi i32 [ %370, %358 ], [ %328, %338 ]
  %353 = load i16, ptr %343, align 2, !tbaa !131
  %354 = sext i16 %353 to i32
  %355 = icmp slt i32 %326, %354
  %356 = icmp ugt ptr %351, %302
  %357 = select i1 %355, i1 %356, i1 false
  br i1 %357, label %358, label %380

358:                                              ; preds = %350
  %359 = call ptr @BLI_str_find_prev_char_utf8(ptr noundef nonnull %302, ptr noundef nonnull %351) #15
  %360 = ptrtoint ptr %351 to i64
  %361 = ptrtoint ptr %359 to i64
  %362 = sub i64 %360, %361
  %363 = trunc i64 %362 to i32
  %364 = shl i64 %362, 32
  %365 = ashr exact i64 %364, 32
  %366 = sub nsw i64 0, %365
  %367 = getelementptr inbounds i8, ptr %351, i64 %366
  %368 = add nsw i32 %352, 1
  %369 = sext i32 %368 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %367, ptr nonnull align 1 %351, i64 %369, i1 false)
  %370 = sub nsw i32 %352, %363
  %371 = load i16, ptr %0, align 4, !tbaa !129
  %372 = sext i16 %371 to i32
  %373 = load i16, ptr %344, align 2, !tbaa !130
  %374 = sext i16 %373 to i64
  %375 = getelementptr inbounds i8, ptr %302, i64 %374
  %376 = sub nsw i64 400, %374
  %377 = call float @BLF_width(i32 noundef %372, ptr noundef nonnull %375, i64 noundef %376) #15
  %378 = fptosi float %377 to i16
  store i16 %378, ptr %343, align 2, !tbaa !131
  %379 = icmp slt i16 %378, 10
  br i1 %379, label %380, label %350

380:                                              ; preds = %358, %350
  %381 = phi i32 [ %370, %358 ], [ %352, %350 ]
  br label %382

382:                                              ; preds = %389, %380
  %383 = load i16, ptr %343, align 2, !tbaa !131
  %384 = sext i16 %383 to i32
  %385 = icmp slt i32 %326, %384
  br i1 %385, label %386, label %409

386:                                              ; preds = %382
  %387 = load i16, ptr %344, align 2, !tbaa !130
  %388 = icmp slt i16 %387, 2
  br i1 %388, label %389, label %409

389:                                              ; preds = %386
  %390 = sext i16 %387 to i64
  %391 = getelementptr inbounds i8, ptr %302, i64 %390
  %392 = call ptr @BLI_str_find_next_char_utf8(ptr noundef nonnull %391, ptr noundef null) #15
  %393 = load i16, ptr %344, align 2, !tbaa !130
  %394 = sext i16 %393 to i64
  %395 = getelementptr inbounds i8, ptr %302, i64 %394
  %396 = ptrtoint ptr %392 to i64
  %397 = ptrtoint ptr %395 to i64
  %398 = sub i64 %396, %397
  %399 = trunc i64 %398 to i16
  %400 = add i16 %393, %399
  store i16 %400, ptr %344, align 2, !tbaa !130
  %401 = load i16, ptr %0, align 4, !tbaa !129
  %402 = sext i16 %401 to i32
  %403 = sext i16 %400 to i64
  %404 = getelementptr inbounds i8, ptr %302, i64 %403
  %405 = sub nsw i64 400, %403
  %406 = call float @BLF_width(i32 noundef %402, ptr noundef nonnull %404, i64 noundef %405) #15
  %407 = fptosi float %406 to i16
  store i16 %407, ptr %343, align 2, !tbaa !131
  %408 = icmp slt i16 %407, 10
  br i1 %408, label %409, label %382, !llvm.loop !132

409:                                              ; preds = %389, %386, %382, %338
  %410 = phi i32 [ %328, %338 ], [ %381, %382 ], [ %381, %386 ], [ %381, %389 ]
  %411 = load i16, ptr %343, align 2, !tbaa !131
  %412 = sext i16 %411 to i32
  %413 = icmp slt i32 %326, %412
  br i1 %413, label %414, label %433

414:                                              ; preds = %409
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %415 = load i16, ptr %0, align 4, !tbaa !129
  %416 = sext i16 %415 to i32
  %417 = load i16, ptr %344, align 2, !tbaa !130
  %418 = sext i16 %417 to i32
  %419 = sext i16 %417 to i64
  %420 = getelementptr inbounds i8, ptr %302, i64 %419
  %421 = sub nsw i32 %410, %418
  %422 = sext i32 %421 to i64
  %423 = sitofp i32 %326 to float
  %424 = call i64 @BLF_width_to_strlen(i32 noundef %416, ptr noundef nonnull %420, i64 noundef %422, float noundef %423, ptr noundef nonnull %8) #15
  %425 = load i16, ptr %344, align 2, !tbaa !130
  %426 = sext i16 %425 to i64
  %427 = add i64 %424, %426
  %428 = load float, ptr %8, align 4, !tbaa !34
  %429 = fptosi float %428 to i16
  store i16 %429, ptr %343, align 2, !tbaa !131
  %430 = shl i64 %427, 32
  %431 = ashr exact i64 %430, 32
  %432 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 17, i64 %431
  store i8 0, ptr %432, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %433

433:                                              ; preds = %414, %409
  %434 = load i16, ptr %332, align 4, !tbaa !127
  %435 = icmp eq i16 %434, 1
  br i1 %435, label %436, label %514

436:                                              ; preds = %433
  %437 = load i16, ptr %0, align 4, !tbaa !129
  %438 = sext i16 %437 to i32
  call void @BLF_disable(i32 noundef %438, i32 noundef 8) #15
  br label %514

439:                                              ; preds = %308
  %440 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %441 = load ptr, ptr %440, align 8, !tbaa !61
  %442 = getelementptr inbounds %struct.uiBlock, ptr %441, i64 0, i32 27
  %443 = load i32, ptr %442, align 8, !tbaa !109
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = icmp eq i32 %309, 512
  %447 = and i1 %446, %445
  br i1 %447, label %448, label %481

448:                                              ; preds = %439
  switch i32 %309, label %449 [
    i32 5120, label %458
    i32 5632, label %458
  ]

449:                                              ; preds = %448
  %450 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %451 = sitofp i16 %450 to float
  %452 = fmul float %451, 2.500000e-01
  %453 = getelementptr inbounds %struct.uiBlock, ptr %441, i64 0, i32 12
  %454 = load float, ptr %453, align 8, !tbaa !125
  %455 = fdiv float %452, %454
  %456 = fadd float %455, 5.000000e-01
  %457 = fptosi float %456 to i32
  br label %458

458:                                              ; preds = %448, %448, %449
  %459 = phi i32 [ %457, %449 ], [ 0, %448 ], [ 0, %448 ]
  %460 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %461 = load i32, ptr %460, align 4, !tbaa !50
  %462 = load i32, ptr %3, align 4, !tbaa !47
  %463 = add i32 %459, %462
  %464 = sub i32 %461, %463
  %465 = call i32 @llvm.smax.i32(i32 %464, i32 0)
  %466 = sitofp i32 %465 to float
  %467 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %468 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %469 = sitofp i32 %468 to float
  %470 = fmul float %467, %469
  %471 = fdiv float %470, 7.200000e+01
  %472 = fmul float %471, 1.600000e+01
  %473 = getelementptr inbounds %struct.uiBlock, ptr %441, i64 0, i32 12
  %474 = load float, ptr %473, align 8, !tbaa !125
  %475 = fdiv float %472, %474
  %476 = fmul float %475, 2.000000e+00
  %477 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  store i16 0, ptr %477, align 2, !tbaa !130
  %478 = call fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef nonnull %302, float noundef %466, float noundef %476, ptr noundef nonnull @.str)
  %479 = fptosi float %478 to i16
  %480 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 %479, ptr %480, align 2, !tbaa !131
  br label %514

481:                                              ; preds = %439
  switch i32 %309, label %482 [
    i32 5120, label %491
    i32 5632, label %491
  ]

482:                                              ; preds = %481
  %483 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %484 = sitofp i16 %483 to float
  %485 = fmul float %484, 2.500000e-01
  %486 = getelementptr inbounds %struct.uiBlock, ptr %441, i64 0, i32 12
  %487 = load float, ptr %486, align 8, !tbaa !125
  %488 = fdiv float %485, %487
  %489 = fadd float %488, 5.000000e-01
  %490 = fptosi float %489 to i32
  br label %491

491:                                              ; preds = %481, %481, %482
  %492 = phi i32 [ %490, %482 ], [ 0, %481 ], [ 0, %481 ]
  %493 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %494 = load i32, ptr %493, align 4, !tbaa !50
  %495 = load i32, ptr %3, align 4, !tbaa !47
  %496 = add i32 %492, %495
  %497 = sub i32 %494, %496
  %498 = call i32 @llvm.smax.i32(i32 %497, i32 0)
  %499 = sitofp i32 %498 to float
  %500 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %501 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %502 = sitofp i32 %501 to float
  %503 = fmul float %500, %502
  %504 = fdiv float %503, 7.200000e+01
  %505 = fmul float %504, 1.600000e+01
  %506 = getelementptr inbounds %struct.uiBlock, ptr %441, i64 0, i32 12
  %507 = load float, ptr %506, align 8, !tbaa !125
  %508 = fdiv float %505, %507
  %509 = fmul float %508, 2.000000e+00
  %510 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  store i16 0, ptr %510, align 2, !tbaa !130
  %511 = call fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef nonnull %302, float noundef %499, float noundef %509, ptr noundef null)
  %512 = fptosi float %511 to i16
  %513 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 %512, ptr %513, align 2, !tbaa !131
  br label %514

514:                                              ; preds = %436, %433, %298, %295, %305, %458, %491
  %515 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 17
  call void @uiStyleFontSet(ptr noundef %0) #15
  %516 = load ptr, ptr %93, align 8, !tbaa !121
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %523

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %520 = load i32, ptr %519, align 4, !tbaa !110
  %521 = and i32 %520, 2
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %518, %514
  %524 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %524, align 2, !tbaa !134
  br label %531

525:                                              ; preds = %518
  %526 = and i32 %520, 8
  %527 = icmp eq i32 %526, 0
  %528 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  br i1 %527, label %530, label %529

529:                                              ; preds = %525
  store i16 2, ptr %528, align 2, !tbaa !134
  br label %531

530:                                              ; preds = %525
  store i16 1, ptr %528, align 2, !tbaa !134
  br label %531

531:                                              ; preds = %530, %529, %523
  %532 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %533 = load i16, ptr %532, align 4, !tbaa !127
  %534 = icmp eq i16 %533, 1
  br i1 %534, label %535, label %538

535:                                              ; preds = %531
  %536 = load i16, ptr %0, align 4, !tbaa !129
  %537 = sext i16 %536 to i32
  call void @BLF_enable(i32 noundef %537, i32 noundef 8) #15
  br label %538

538:                                              ; preds = %535, %531
  %539 = load i32, ptr %12, align 8, !tbaa !53
  %540 = and i32 %539, 33554432
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %549, label %542

542:                                              ; preds = %538
  %543 = call ptr @ui_get_but_drag_multi_edit(ptr noundef %2) #15
  %544 = icmp eq ptr %543, null
  br i1 %544, label %554, label %545

545:                                              ; preds = %542
  %546 = getelementptr inbounds %struct.uiBut, ptr %543, i64 0, i32 69
  %547 = load ptr, ptr %546, align 8, !tbaa !121
  %548 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %548, align 2, !tbaa !134
  br label %554

549:                                              ; preds = %538
  %550 = load ptr, ptr %93, align 8, !tbaa !121
  %551 = icmp eq ptr %550, null
  %552 = select i1 %551, ptr %515, ptr %550
  %553 = select i1 %551, i32 400, i32 2147483647
  br label %554

554:                                              ; preds = %549, %545, %542
  %555 = phi ptr [ %547, %545 ], [ %515, %542 ], [ %552, %549 ]
  %556 = phi i32 [ 400, %545 ], [ 400, %542 ], [ %553, %549 ]
  %557 = load ptr, ptr %93, align 8, !tbaa !121
  %558 = icmp eq ptr %557, null
  br i1 %558, label %639, label %559

559:                                              ; preds = %554
  %560 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 12
  %561 = load i16, ptr %560, align 4, !tbaa !126
  %562 = icmp eq i16 %561, -1
  br i1 %562, label %639, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 14
  %565 = load i16, ptr %564, align 8, !tbaa !135
  %566 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 13
  %567 = load i16, ptr %566, align 2, !tbaa !136
  %568 = sext i16 %567 to i64
  %569 = icmp sgt i16 %565, %567
  br i1 %569, label %570, label %611

570:                                              ; preds = %563
  %571 = load i8, ptr %555, align 1, !tbaa !43
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %611, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %575 = load i16, ptr %574, align 2, !tbaa !130
  %576 = icmp slt i16 %567, %575
  br i1 %576, label %585, label %577

577:                                              ; preds = %573
  %578 = sext i16 %575 to i64
  %579 = load i16, ptr %0, align 4, !tbaa !129
  %580 = sext i16 %579 to i32
  %581 = getelementptr inbounds i8, ptr %555, i64 %578
  %582 = sub nsw i64 %568, %578
  %583 = call float @BLF_width(i32 noundef %580, ptr noundef nonnull %581, i64 noundef %582) #15
  %584 = fptosi float %583 to i32
  br label %585

585:                                              ; preds = %577, %573
  %586 = phi i32 [ %584, %577 ], [ 0, %573 ]
  %587 = load i16, ptr %0, align 4, !tbaa !129
  %588 = sext i16 %587 to i32
  %589 = load i16, ptr %574, align 2, !tbaa !130
  %590 = sext i16 %589 to i64
  %591 = getelementptr inbounds i8, ptr %555, i64 %590
  %592 = load i16, ptr %564, align 8, !tbaa !135
  %593 = sext i16 %592 to i64
  %594 = sub nsw i64 %593, %590
  %595 = call float @BLF_width(i32 noundef %588, ptr noundef nonnull %591, i64 noundef %594) #15
  %596 = fptosi float %595 to i32
  %597 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  call void @glColor4ubv(ptr noundef nonnull %597) #15
  %598 = load i32, ptr %3, align 4, !tbaa !47
  %599 = add nsw i32 %598, %586
  %600 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %601 = load i32, ptr %600, align 4, !tbaa !51
  %602 = add nsw i32 %601, 2
  %603 = add nsw i32 %598, %596
  %604 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %605 = load i32, ptr %604, align 4, !tbaa !50
  %606 = add nsw i32 %605, -2
  %607 = call i32 @llvm.smin.i32(i32 %603, i32 %606)
  %608 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %609 = load i32, ptr %608, align 4, !tbaa !52
  %610 = add nsw i32 %609, -2
  call void @glRecti(i32 noundef %599, i32 noundef %602, i32 noundef %607, i32 noundef %610) #15
  br label %611

611:                                              ; preds = %585, %570, %563
  %612 = load i16, ptr %560, align 4, !tbaa !126
  %613 = sext i16 %612 to i64
  %614 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %615 = load i16, ptr %614, align 2, !tbaa !130
  %616 = sext i16 %615 to i64
  %617 = icmp slt i16 %612, %615
  br i1 %617, label %639, label %618

618:                                              ; preds = %611
  %619 = load i8, ptr %555, align 1, !tbaa !43
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %628, label %621

621:                                              ; preds = %618
  %622 = load i16, ptr %0, align 4, !tbaa !129
  %623 = sext i16 %622 to i32
  %624 = getelementptr inbounds i8, ptr %555, i64 %616
  %625 = sub nsw i64 %613, %616
  %626 = call float @BLF_width(i32 noundef %623, ptr noundef nonnull %624, i64 noundef %625) #15
  %627 = fptosi float %626 to i32
  br label %628

628:                                              ; preds = %621, %618
  %629 = phi i32 [ %627, %621 ], [ 0, %618 ]
  call void @glColor3f(float noundef 0x3FC99999A0000000, float noundef 0x3FE3333340000000, float noundef 0x3FECCCCCC0000000) #15
  %630 = load i32, ptr %3, align 4, !tbaa !47
  %631 = add nsw i32 %630, %629
  %632 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %633 = load i32, ptr %632, align 4, !tbaa !51
  %634 = add nsw i32 %633, 2
  %635 = add nsw i32 %631, 2
  %636 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %637 = load i32, ptr %636, align 4, !tbaa !52
  %638 = add nsw i32 %637, -2
  call void @glRecti(i32 noundef %631, i32 noundef %634, i32 noundef %635, i32 noundef %638) #15
  br label %639

639:                                              ; preds = %628, %611, %559, %554
  %640 = load i16, ptr %532, align 4, !tbaa !127
  %641 = icmp eq i16 %640, 1
  br i1 %641, label %642, label %645

642:                                              ; preds = %639
  %643 = load i16, ptr %0, align 4, !tbaa !129
  %644 = sext i16 %643 to i32
  call void @BLF_disable(i32 noundef %644, i32 noundef 8) #15
  br label %645

645:                                              ; preds = %642, %639
  %646 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %647 = load ptr, ptr %646, align 8, !tbaa !61
  %648 = getelementptr inbounds %struct.uiBlock, ptr %647, i64 0, i32 27
  %649 = load i32, ptr %648, align 8, !tbaa !109
  %650 = and i32 %649, 1
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %668, label %652

652:                                              ; preds = %645
  %653 = load ptr, ptr %93, align 8, !tbaa !121
  %654 = icmp eq ptr %653, null
  br i1 %654, label %655, label %668

655:                                              ; preds = %652
  %656 = load i32, ptr %12, align 8, !tbaa !53
  %657 = and i32 %656, 134217728
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %668, label %659

659:                                              ; preds = %655
  %660 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %555, i32 noundef 124) #16
  %661 = icmp eq ptr %660, null
  br i1 %661, label %668, label %662

662:                                              ; preds = %659
  %663 = ptrtoint ptr %660 to i64
  %664 = ptrtoint ptr %555 to i64
  %665 = sub i64 %663, %664
  %666 = trunc i64 %665 to i32
  %667 = getelementptr inbounds i8, ptr %660, i64 1
  br label %668

668:                                              ; preds = %662, %659, %655, %652, %645
  %669 = phi ptr [ %667, %662 ], [ null, %659 ], [ null, %655 ], [ null, %652 ], [ null, %645 ]
  %670 = phi i32 [ %666, %662 ], [ %556, %659 ], [ %556, %655 ], [ %556, %652 ], [ %556, %645 ]
  %671 = icmp eq ptr %669, null
  br i1 %671, label %672, label %698

672:                                              ; preds = %668
  %673 = load i32, ptr %28, align 8, !tbaa !101
  switch i32 %673, label %698 [
    i32 2560, label %674
    i32 7168, label %674
  ]

674:                                              ; preds = %672, %672
  %675 = load ptr, ptr %93, align 8, !tbaa !121
  %676 = icmp eq ptr %675, null
  %677 = icmp eq ptr %555, %515
  %678 = select i1 %676, i1 %677, i1 false
  br i1 %678, label %679, label %698

679:                                              ; preds = %674
  %680 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %681 = load i16, ptr %680, align 2, !tbaa !130
  %682 = sext i16 %681 to i64
  %683 = getelementptr inbounds i8, ptr %555, i64 %682
  %684 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %683, i32 noundef 58) #16
  %685 = icmp eq ptr %684, null
  br i1 %685, label %698, label %686

686:                                              ; preds = %679
  %687 = getelementptr inbounds i8, ptr %684, i64 1
  %688 = ptrtoint ptr %687 to i64
  %689 = ptrtoint ptr %555 to i64
  %690 = sub i64 %688, %689
  br label %691

691:                                              ; preds = %691, %686
  %692 = phi ptr [ %687, %686 ], [ %695, %691 ]
  %693 = load i8, ptr %692, align 1, !tbaa !43
  %694 = icmp eq i8 %693, 32
  %695 = getelementptr inbounds i8, ptr %692, i64 1
  br i1 %694, label %691, label %696, !llvm.loop !137

696:                                              ; preds = %691
  %697 = trunc i64 %690 to i32
  br label %698

698:                                              ; preds = %696, %679, %674, %672, %668
  %699 = phi i1 [ true, %668 ], [ true, %674 ], [ true, %672 ], [ false, %679 ], [ true, %696 ]
  %700 = phi ptr [ %669, %668 ], [ null, %674 ], [ null, %672 ], [ %683, %679 ], [ %692, %696 ]
  %701 = phi i32 [ %670, %668 ], [ %670, %674 ], [ %670, %672 ], [ %670, %679 ], [ %697, %696 ]
  %702 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4
  call void @glColor4ubv(ptr noundef nonnull %702) #15
  br i1 %699, label %703, label %768

703:                                              ; preds = %698
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %704 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %705 = load i16, ptr %704, align 2, !tbaa !130
  %706 = sext i16 %705 to i32
  %707 = sext i16 %705 to i64
  %708 = getelementptr inbounds i8, ptr %555, i64 %707
  %709 = sub nsw i32 %701, %706
  %710 = sext i32 %709 to i64
  call void @uiStyleFontDrawExt(ptr noundef %0, ptr noundef %3, ptr noundef %708, i64 noundef %710, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %711 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 62
  %712 = load i8, ptr %711, align 2, !tbaa !138
  %713 = icmp eq i8 %712, 0
  br i1 %713, label %767, label %714

714:                                              ; preds = %703
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #15
  %715 = load i16, ptr %704, align 2, !tbaa !130
  %716 = sext i16 %715 to i64
  %717 = getelementptr inbounds i8, ptr %555, i64 %716
  %718 = call i32 @llvm.smin.i32(i32 %701, i32 128)
  %719 = sext i32 %718 to i64
  %720 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %717, i64 noundef %719) #15
  %721 = load i8, ptr %711, align 2, !tbaa !138
  %722 = zext i8 %721 to i32
  %723 = add nsw i32 %722, -32
  %724 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef %723) #16
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %728

726:                                              ; preds = %714
  %727 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef %722) #16
  br label %728

728:                                              ; preds = %726, %714
  %729 = phi ptr [ %727, %726 ], [ %724, %714 ]
  %730 = icmp eq ptr %729, null
  br i1 %730, label %766, label %731

731:                                              ; preds = %728
  %732 = ptrtoint ptr %729 to i64
  %733 = ptrtoint ptr %7 to i64
  %734 = sub i64 %732, %733
  %735 = load i16, ptr %532, align 4, !tbaa !127
  %736 = icmp eq i16 %735, 1
  br i1 %736, label %737, label %740

737:                                              ; preds = %731
  %738 = load i16, ptr %0, align 4, !tbaa !129
  %739 = sext i16 %738 to i32
  call void @BLF_enable(i32 noundef %739, i32 noundef 8) #15
  br label %740

740:                                              ; preds = %737, %731
  %741 = shl i64 %734, 32
  %742 = ashr exact i64 %741, 32
  %743 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %742
  store i8 0, ptr %743, align 1, !tbaa !43
  %744 = load i16, ptr %0, align 4, !tbaa !129
  %745 = sext i16 %744 to i32
  %746 = call float @BLF_width(i32 noundef %745, ptr noundef nonnull %7, i64 noundef %742) #15
  %747 = load i16, ptr %0, align 4, !tbaa !129
  %748 = sext i16 %747 to i32
  %749 = load i32, ptr %3, align 4, !tbaa !47
  %750 = sitofp i32 %749 to float
  %751 = load float, ptr %5, align 4, !tbaa !34
  %752 = fadd float %751, %750
  %753 = fadd float %746, %752
  %754 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %755 = load i32, ptr %754, align 4, !tbaa !51
  %756 = sitofp i32 %755 to float
  %757 = load float, ptr %6, align 4, !tbaa !34
  %758 = fadd float %757, %756
  call void @BLF_position(i32 noundef %748, float noundef %753, float noundef %758, float noundef 0.000000e+00) #15
  %759 = load i16, ptr %0, align 4, !tbaa !129
  %760 = sext i16 %759 to i32
  call void @BLF_draw(i32 noundef %760, ptr noundef nonnull @.str.1, i64 noundef 2) #15
  %761 = load i16, ptr %532, align 4, !tbaa !127
  %762 = icmp eq i16 %761, 1
  br i1 %762, label %763, label %766

763:                                              ; preds = %740
  %764 = load i16, ptr %0, align 4, !tbaa !129
  %765 = sext i16 %764 to i32
  call void @BLF_disable(i32 noundef %765, i32 noundef 8) #15
  br label %766

766:                                              ; preds = %763, %740, %728
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #15
  br label %767

767:                                              ; preds = %766, %703
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %768

768:                                              ; preds = %767, %698
  %769 = icmp eq ptr %700, null
  br i1 %769, label %784, label %770

770:                                              ; preds = %768
  %771 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 2, ptr %771, align 2, !tbaa !134
  %772 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %773 = sitofp i16 %772 to float
  %774 = fmul float %773, 2.500000e-01
  %775 = load ptr, ptr %646, align 8, !tbaa !61
  %776 = getelementptr inbounds %struct.uiBlock, ptr %775, i64 0, i32 12
  %777 = load float, ptr %776, align 8, !tbaa !125
  %778 = fdiv float %774, %777
  %779 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %780 = load i32, ptr %779, align 4, !tbaa !50
  %781 = sitofp i32 %780 to float
  %782 = fsub float %781, %778
  %783 = fptosi float %782 to i32
  store i32 %783, ptr %779, align 4, !tbaa !50
  call void @uiStyleFontDraw(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %700) #15
  br label %784

784:                                              ; preds = %768, %770
  call void @ui_button_text_password_hide(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %9) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_state_option_menu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @UI_GetTheme() #15
  tail call void @widget_state(ptr noundef %0, i32 noundef %1)
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %7 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  br i1 %5, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 5
  %10 = load i8, ptr %9, align 1, !tbaa !43
  store i8 %10, ptr %6, align 1, !tbaa !43
  %11 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 5, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !43
  store i8 %12, ptr %7, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 5, i64 2
  br label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !43
  store i8 %16, ptr %6, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 4, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !43
  store i8 %18, ptr %7, align 1, !tbaa !43
  %19 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 4, i64 2
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi ptr [ %19, %14 ], [ %13, %8 ]
  %22 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %23 = load i8, ptr %21, align 1, !tbaa !43
  store i8 %23, ptr %22, align 1, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_link(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  tail call void @UI_ThemeColor(i32 noundef 4) #15
  %12 = load i32, ptr %2, align 4, !tbaa !47
  %13 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = add nsw i32 %14, %12
  %16 = sdiv i32 %15, 2
  store i32 %16, ptr %6, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !51
  %19 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = add nsw i32 %20, %18
  %22 = sdiv i32 %21, 2
  %23 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 41
  %25 = load i16, ptr %24, align 8, !tbaa !44
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 41, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !44
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !52
  call void @ui_draw_link_bezier(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %32

32:                                               ; preds = %11, %5
  ret void
}

declare void @ui_draw_but_COLORBAND(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_IMAGE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_HISTOGRAM(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_WAVEFORM(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_VECTORSCOPE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_CURVE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_TRACKPREVIEW(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_NODESOCKET(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ui_get_but_drag_multi_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_menu_back(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.uiWidgetBase, align 8
  %5 = tail call ptr @UI_GetTheme() #15
  %6 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3
  store ptr %6, ptr @widget_type.wt, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3, i32 18
  store ptr %7, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3, i32 10
  store ptr %8, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_back, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull align 2 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !42
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 29
  %14 = load i8, ptr %13, align 2, !tbaa !139
  %15 = zext i8 %14 to i32
  tail call void @widget_menu_back(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef %12, i32 noundef %15) #15
  br label %30

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %4) #15
  %17 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 1
  store i32 0, ptr %17, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 9
  store i32 0, ptr %18, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 10
  store i32 0, ptr %19, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 5
  store i32 16843009, ptr %20, align 8
  %21 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 7
  tail call void @glEnable(i32 noundef 3042) #15
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %2, i32 noundef 15, float noundef %24)
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %26 = sitofp i16 %25 to float
  %27 = fmul float %26, 2.500000e-01
  %28 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %29 = fsub float %27, %28
  call fastcc void @round_box__edges(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %2, float noundef %27, float noundef %29)
  store i8 0, ptr %21, align 2, !tbaa !85
  call fastcc void @widgetbase_draw(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2))
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %4) #15
  br label %30

30:                                               ; preds = %16, %10
  br i1 %9, label %62, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #15
  %37 = load i32, ptr %2, align 4, !tbaa !47
  %38 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = add nsw i32 %39, %37
  %41 = sdiv i32 %40, 2
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !52
  %45 = add nsw i32 %44, -8
  %46 = sitofp i32 %45 to float
  call void @UI_DrawTriIcon(float noundef %42, float noundef %46, i8 noundef zeroext 116) #15
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, ptr %32, align 8, !tbaa !109
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #15
  %52 = load i32, ptr %2, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = add nsw i32 %54, %52
  %56 = sdiv i32 %55, 2
  %57 = sitofp i32 %56 to float
  %58 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !51
  %60 = add nsw i32 %59, 10
  %61 = sitofp i32 %60 to float
  call void @UI_DrawTriIcon(float noundef %57, float noundef %61, i8 noundef zeroext 118) #15
  br label %62

62:                                               ; preds = %47, %51, %30
  ret void
}

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @UI_DrawTriIcon(float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_pie_center(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = tail call ptr @UI_GetTheme() #15
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !140
  %14 = sitofp i16 %13 to float
  %15 = fmul float %12, %14
  %16 = fadd float %14, 7.000000e+00
  %17 = fmul float %12, %16
  %18 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %7, align 4, !tbaa !34
  %21 = tail call float @atan2f(float noundef %19, float noundef %20) #15
  %22 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !141
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 0x3FE921FB60000000, float 0x3FF921FB60000000
  tail call void @glPushMatrix() #15
  tail call void @glTranslatef(float noundef %9, float noundef %11, float noundef 0.000000e+00) #15
  tail call void @glEnable(i32 noundef 3042) #15
  %27 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17
  %28 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !142
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %79, label %31

31:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %32 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1
  %33 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !149
  %35 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !150
  %37 = load i8, ptr %32, align 1, !tbaa !43
  %38 = zext i8 %37 to i32
  %39 = sext i16 %34 to i32
  %40 = add nsw i32 %38, %39
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 255)
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %2, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, %39
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 255)
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, %39
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 255)
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %58, ptr %59, align 1, !tbaa !43
  %60 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !43
  %62 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %61, ptr %62, align 1, !tbaa !43
  %63 = sext i16 %36 to i32
  %64 = add nsw i32 %38, %63
  %65 = tail call i32 @llvm.smin.i32(i32 %64, i32 255)
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0)
  %67 = trunc i32 %66 to i8
  store i8 %67, ptr %3, align 1, !tbaa !43
  %68 = add nsw i32 %46, %63
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 255)
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0)
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %71, ptr %72, align 1, !tbaa !43
  %73 = add nsw i32 %54, %63
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 255)
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0)
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %61, ptr %78, align 1, !tbaa !43
  call fastcc void @draw_disk_shaded(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, float noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %81

79:                                               ; preds = %1
  %80 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %80) #15
  tail call fastcc void @draw_disk_shaded(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, float noundef %17, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  br label %81

81:                                               ; preds = %79, %31
  %82 = load i32, ptr %22, align 8, !tbaa !141
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %142

85:                                               ; preds = %81
  %86 = load i16, ptr %28, align 8, !tbaa !142
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %138, label %88

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %89 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2
  %90 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 7
  %91 = load i16, ptr %90, align 2, !tbaa !149
  %92 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 8
  %93 = load i16, ptr %92, align 4, !tbaa !150
  %94 = load i8, ptr %89, align 1, !tbaa !43
  %95 = zext i8 %94 to i32
  %96 = sext i16 %91 to i32
  %97 = add nsw i32 %95, %96
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 255)
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0)
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %4, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %103, %96
  %105 = tail call i32 @llvm.smin.i32(i32 %104, i32 255)
  %106 = tail call i32 @llvm.smax.i32(i32 %105, i32 0)
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %107, ptr %108, align 1, !tbaa !43
  %109 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !43
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %111, %96
  %113 = tail call i32 @llvm.smin.i32(i32 %112, i32 255)
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 0)
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %115, ptr %116, align 1, !tbaa !43
  %117 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2, i64 3
  %118 = load i8, ptr %117, align 1, !tbaa !43
  %119 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %118, ptr %119, align 1, !tbaa !43
  %120 = sext i16 %93 to i32
  %121 = add nsw i32 %95, %120
  %122 = tail call i32 @llvm.smin.i32(i32 %121, i32 255)
  %123 = tail call i32 @llvm.smax.i32(i32 %122, i32 0)
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %5, align 1, !tbaa !43
  %125 = add nsw i32 %103, %120
  %126 = tail call i32 @llvm.smin.i32(i32 %125, i32 255)
  %127 = tail call i32 @llvm.smax.i32(i32 %126, i32 0)
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %128, ptr %129, align 1, !tbaa !43
  %130 = add nsw i32 %111, %120
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 255)
  %132 = tail call i32 @llvm.smax.i32(i32 %131, i32 0)
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %133, ptr %134, align 1, !tbaa !43
  %135 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %118, ptr %135, align 1, !tbaa !43
  %136 = fmul float %26, 5.000000e-01
  %137 = fsub float %21, %136
  call fastcc void @draw_disk_shaded(float noundef %137, float noundef %26, float noundef %15, float noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %142

138:                                              ; preds = %85
  %139 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2
  tail call void @glColor4ubv(ptr noundef nonnull %139) #15
  %140 = fmul float %26, 5.000000e-01
  %141 = fsub float %21, %140
  tail call fastcc void @draw_disk_shaded(float noundef %141, float noundef %26, float noundef %15, float noundef %17, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  br label %142

142:                                              ; preds = %88, %138, %81
  tail call void @glColor4ubv(ptr noundef nonnull %27) #15
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, i32 noundef 40) #15
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %17, i32 noundef 40) #15
  %143 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 111), align 2, !tbaa !151
  %144 = icmp sgt i16 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %142
  %146 = load i32, ptr %22, align 8, !tbaa !141
  %147 = and i32 %146, 24
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %145
  %150 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %151 = sitofp i16 %143 to float
  %152 = fadd float %15, %151
  %153 = fmul float %152, %150
  %154 = fadd float %152, 7.000000e+00
  %155 = fmul float %154, %150
  %156 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5
  %157 = load i8, ptr %156, align 4, !tbaa !43
  %158 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !43
  %160 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5, i64 2
  %161 = load i8, ptr %160, align 2, !tbaa !43
  tail call void @glColor4ub(i8 noundef zeroext %157, i8 noundef zeroext %159, i8 noundef zeroext %161, i8 noundef zeroext 64) #15
  %162 = fmul float %26, 5.000000e-01
  %163 = fsub float %21, %162
  tail call fastcc void @draw_disk_shaded(float noundef %163, float noundef %26, float noundef %153, float noundef %155, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  br label %164

164:                                              ; preds = %149, %145, %142
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glPopMatrix() #15
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_disk_shaded(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [4 x i8], align 1
  %9 = fdiv float 5.000000e-01, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  tail call void @glBegin(i32 noundef 5) #15
  %10 = tail call float @sinf(float noundef %0) #15
  %11 = tail call float @cosf(float noundef %0) #15
  %12 = fmul float %10, %2
  %13 = fmul float %10, %3
  %14 = icmp eq i8 %6, 0
  br i1 %14, label %122, label %15

15:                                               ; preds = %7
  %16 = fadd float %12, %3
  %17 = fmul float %9, %16
  %18 = fcmp ugt float %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = fcmp ogt float %17, 0x3FEFEFEFE0000000
  %21 = tail call float @llvm.fmuladd.f32(float %17, float 2.550000e+02, float 5.000000e-01)
  %22 = select i1 %20, float 2.550000e+02, float %21
  %23 = fptoui float %22 to i8
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %15, %19
  %26 = phi i32 [ %24, %19 ], [ 0, %15 ]
  %27 = xor i32 %26, 255
  %28 = load i8, ptr %4, align 1, !tbaa !43
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %26, %29
  %31 = load i8, ptr %5, align 1, !tbaa !43
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %27, %32
  %34 = add nuw nsw i32 %33, %30
  %35 = lshr i32 %34, 8
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %8, align 1, !tbaa !43
  %37 = getelementptr inbounds i8, ptr %4, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %26, %39
  %41 = getelementptr inbounds i8, ptr %5, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !43
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %27, %43
  %45 = add nuw nsw i32 %44, %40
  %46 = lshr i32 %45, 8
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %47, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds i8, ptr %4, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = zext i8 %50 to i32
  %52 = mul nuw nsw i32 %26, %51
  %53 = getelementptr inbounds i8, ptr %5, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !43
  %55 = zext i8 %54 to i32
  %56 = mul nuw nsw i32 %27, %55
  %57 = add nuw nsw i32 %56, %52
  %58 = lshr i32 %57, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !43
  %61 = getelementptr inbounds i8, ptr %4, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !43
  %63 = zext i8 %62 to i32
  %64 = mul nuw nsw i32 %26, %63
  %65 = getelementptr inbounds i8, ptr %5, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = mul nuw nsw i32 %27, %67
  %69 = add nuw nsw i32 %68, %64
  %70 = lshr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %71, ptr %72, align 1, !tbaa !43
  call void @glColor4ubv(ptr noundef nonnull %8) #15
  %73 = fmul float %11, %2
  call void @glVertex2f(float noundef %73, float noundef %12) #15
  %74 = fadd float %13, %3
  %75 = fmul float %9, %74
  %76 = fcmp ugt float %75, 0.000000e+00
  br i1 %76, label %77, label %83

77:                                               ; preds = %25
  %78 = fcmp ogt float %75, 0x3FEFEFEFE0000000
  %79 = call float @llvm.fmuladd.f32(float %75, float 2.550000e+02, float 5.000000e-01)
  %80 = select i1 %78, float 2.550000e+02, float %79
  %81 = fptoui float %80 to i8
  %82 = zext i8 %81 to i32
  br label %83

83:                                               ; preds = %25, %77
  %84 = phi i32 [ %82, %77 ], [ 0, %25 ]
  %85 = xor i32 %84, 255
  %86 = load i8, ptr %4, align 1, !tbaa !43
  %87 = zext i8 %86 to i32
  %88 = mul nuw nsw i32 %84, %87
  %89 = load i8, ptr %5, align 1, !tbaa !43
  %90 = zext i8 %89 to i32
  %91 = mul nuw nsw i32 %85, %90
  %92 = add nuw nsw i32 %91, %88
  %93 = lshr i32 %92, 8
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %8, align 1, !tbaa !43
  %95 = load i8, ptr %37, align 1, !tbaa !43
  %96 = zext i8 %95 to i32
  %97 = mul nuw nsw i32 %84, %96
  %98 = load i8, ptr %41, align 1, !tbaa !43
  %99 = zext i8 %98 to i32
  %100 = mul nuw nsw i32 %85, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = lshr i32 %101, 8
  %103 = trunc i32 %102 to i8
  store i8 %103, ptr %48, align 1, !tbaa !43
  %104 = load i8, ptr %49, align 1, !tbaa !43
  %105 = zext i8 %104 to i32
  %106 = mul nuw nsw i32 %84, %105
  %107 = load i8, ptr %53, align 1, !tbaa !43
  %108 = zext i8 %107 to i32
  %109 = mul nuw nsw i32 %85, %108
  %110 = add nuw nsw i32 %109, %106
  %111 = lshr i32 %110, 8
  %112 = trunc i32 %111 to i8
  store i8 %112, ptr %60, align 1, !tbaa !43
  %113 = load i8, ptr %61, align 1, !tbaa !43
  %114 = zext i8 %113 to i32
  %115 = mul nuw nsw i32 %84, %114
  %116 = load i8, ptr %65, align 1, !tbaa !43
  %117 = zext i8 %116 to i32
  %118 = mul nuw nsw i32 %85, %117
  %119 = add nuw nsw i32 %118, %115
  %120 = lshr i32 %119, 8
  %121 = trunc i32 %120 to i8
  store i8 %121, ptr %72, align 1, !tbaa !43
  call void @glColor4ubv(ptr noundef nonnull %8) #15
  br label %124

122:                                              ; preds = %7
  %123 = fmul float %11, %2
  tail call void @glVertex2f(float noundef %123, float noundef %12) #15
  br label %124

124:                                              ; preds = %122, %83
  %125 = fmul float %11, %3
  call void @glVertex2f(float noundef %125, float noundef %13) #15
  %126 = getelementptr inbounds i8, ptr %4, i64 1
  %127 = getelementptr inbounds i8, ptr %5, i64 1
  %128 = getelementptr inbounds i8, ptr %8, i64 1
  %129 = getelementptr inbounds i8, ptr %4, i64 2
  %130 = getelementptr inbounds i8, ptr %5, i64 2
  %131 = getelementptr inbounds i8, ptr %8, i64 2
  %132 = getelementptr inbounds i8, ptr %4, i64 3
  %133 = getelementptr inbounds i8, ptr %5, i64 3
  %134 = getelementptr inbounds i8, ptr %8, i64 3
  br label %135

135:                                              ; preds = %124, %244
  %136 = phi i32 [ 1, %124 ], [ %246, %244 ]
  %137 = sitofp i32 %136 to float
  %138 = fdiv float %137, 3.900000e+01
  %139 = call float @llvm.fmuladd.f32(float %138, float %1, float %0)
  %140 = call float @sinf(float noundef %139) #15
  %141 = call float @cosf(float noundef %139) #15
  %142 = fmul float %140, %2
  %143 = fmul float %140, %3
  br i1 %14, label %242, label %144

144:                                              ; preds = %135
  %145 = fadd float %142, %3
  %146 = fmul float %9, %145
  %147 = fcmp ugt float %146, 0.000000e+00
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = fcmp ogt float %146, 0x3FEFEFEFE0000000
  %150 = call float @llvm.fmuladd.f32(float %146, float 2.550000e+02, float 5.000000e-01)
  %151 = select i1 %149, float 2.550000e+02, float %150
  %152 = fptoui float %151 to i8
  %153 = zext i8 %152 to i32
  br label %154

154:                                              ; preds = %144, %148
  %155 = phi i32 [ %153, %148 ], [ 0, %144 ]
  %156 = xor i32 %155, 255
  %157 = load i8, ptr %4, align 1, !tbaa !43
  %158 = zext i8 %157 to i32
  %159 = mul nuw nsw i32 %155, %158
  %160 = load i8, ptr %5, align 1, !tbaa !43
  %161 = zext i8 %160 to i32
  %162 = mul nuw nsw i32 %156, %161
  %163 = add nuw nsw i32 %162, %159
  %164 = lshr i32 %163, 8
  %165 = trunc i32 %164 to i8
  store i8 %165, ptr %8, align 1, !tbaa !43
  %166 = load i8, ptr %126, align 1, !tbaa !43
  %167 = zext i8 %166 to i32
  %168 = mul nuw nsw i32 %155, %167
  %169 = load i8, ptr %127, align 1, !tbaa !43
  %170 = zext i8 %169 to i32
  %171 = mul nuw nsw i32 %156, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = lshr i32 %172, 8
  %174 = trunc i32 %173 to i8
  store i8 %174, ptr %128, align 1, !tbaa !43
  %175 = load i8, ptr %129, align 1, !tbaa !43
  %176 = zext i8 %175 to i32
  %177 = mul nuw nsw i32 %155, %176
  %178 = load i8, ptr %130, align 1, !tbaa !43
  %179 = zext i8 %178 to i32
  %180 = mul nuw nsw i32 %156, %179
  %181 = add nuw nsw i32 %180, %177
  %182 = lshr i32 %181, 8
  %183 = trunc i32 %182 to i8
  store i8 %183, ptr %131, align 1, !tbaa !43
  %184 = load i8, ptr %132, align 1, !tbaa !43
  %185 = zext i8 %184 to i32
  %186 = mul nuw nsw i32 %155, %185
  %187 = load i8, ptr %133, align 1, !tbaa !43
  %188 = zext i8 %187 to i32
  %189 = mul nuw nsw i32 %156, %188
  %190 = add nuw nsw i32 %189, %186
  %191 = lshr i32 %190, 8
  %192 = trunc i32 %191 to i8
  store i8 %192, ptr %134, align 1, !tbaa !43
  call void @glColor4ubv(ptr noundef nonnull %8) #15
  %193 = fmul float %141, %2
  call void @glVertex2f(float noundef %193, float noundef %142) #15
  %194 = fadd float %143, %3
  %195 = fmul float %9, %194
  %196 = fcmp ugt float %195, 0.000000e+00
  br i1 %196, label %197, label %203

197:                                              ; preds = %154
  %198 = fcmp ogt float %195, 0x3FEFEFEFE0000000
  %199 = call float @llvm.fmuladd.f32(float %195, float 2.550000e+02, float 5.000000e-01)
  %200 = select i1 %198, float 2.550000e+02, float %199
  %201 = fptoui float %200 to i8
  %202 = zext i8 %201 to i32
  br label %203

203:                                              ; preds = %154, %197
  %204 = phi i32 [ %202, %197 ], [ 0, %154 ]
  %205 = xor i32 %204, 255
  %206 = load i8, ptr %4, align 1, !tbaa !43
  %207 = zext i8 %206 to i32
  %208 = mul nuw nsw i32 %204, %207
  %209 = load i8, ptr %5, align 1, !tbaa !43
  %210 = zext i8 %209 to i32
  %211 = mul nuw nsw i32 %205, %210
  %212 = add nuw nsw i32 %211, %208
  %213 = lshr i32 %212, 8
  %214 = trunc i32 %213 to i8
  store i8 %214, ptr %8, align 1, !tbaa !43
  %215 = load i8, ptr %126, align 1, !tbaa !43
  %216 = zext i8 %215 to i32
  %217 = mul nuw nsw i32 %204, %216
  %218 = load i8, ptr %127, align 1, !tbaa !43
  %219 = zext i8 %218 to i32
  %220 = mul nuw nsw i32 %205, %219
  %221 = add nuw nsw i32 %220, %217
  %222 = lshr i32 %221, 8
  %223 = trunc i32 %222 to i8
  store i8 %223, ptr %128, align 1, !tbaa !43
  %224 = load i8, ptr %129, align 1, !tbaa !43
  %225 = zext i8 %224 to i32
  %226 = mul nuw nsw i32 %204, %225
  %227 = load i8, ptr %130, align 1, !tbaa !43
  %228 = zext i8 %227 to i32
  %229 = mul nuw nsw i32 %205, %228
  %230 = add nuw nsw i32 %229, %226
  %231 = lshr i32 %230, 8
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %131, align 1, !tbaa !43
  %233 = load i8, ptr %132, align 1, !tbaa !43
  %234 = zext i8 %233 to i32
  %235 = mul nuw nsw i32 %204, %234
  %236 = load i8, ptr %133, align 1, !tbaa !43
  %237 = zext i8 %236 to i32
  %238 = mul nuw nsw i32 %205, %237
  %239 = add nuw nsw i32 %238, %235
  %240 = lshr i32 %239, 8
  %241 = trunc i32 %240 to i8
  store i8 %241, ptr %134, align 1, !tbaa !43
  call void @glColor4ubv(ptr noundef nonnull %8) #15
  br label %244

242:                                              ; preds = %135
  %243 = fmul float %141, %2
  call void @glVertex2f(float noundef %243, float noundef %142) #15
  br label %244

244:                                              ; preds = %242, %203
  %245 = fmul float %141, %3
  call void @glVertex2f(float noundef %245, float noundef %143) #15
  %246 = add nuw nsw i32 %136, 1
  %247 = icmp eq i32 %246, 40
  br i1 %247, label %248, label %135, !llvm.loop !152

248:                                              ; preds = %244
  call void @glEnd() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  ret void
}

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ui_tooltip_get_theme() local_unnamed_addr #0 {
  %1 = tail call ptr @UI_GetTheme() #15
  %2 = getelementptr inbounds %struct.bTheme, ptr %1, i64 0, i32 3
  store ptr %2, ptr @widget_type.wt, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct.bTheme, ptr %1, i64 0, i32 3, i32 18
  store ptr %3, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.bTheme, ptr %1, i64 0, i32 3, i32 12
  store ptr %4, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_back, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_tooltip_background(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.uiWidgetBase, align 8
  %5 = tail call ptr @UI_GetTheme() #15
  %6 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3
  store ptr %6, ptr @widget_type.wt, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3, i32 18
  store ptr %7, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3, i32 12
  store ptr %8, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_back, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull align 2 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %4) #15
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 5
  store i32 16843009, ptr %12, align 8
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 7
  tail call void @glEnable(i32 noundef 3042) #15
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %2, i32 noundef 15, float noundef %16)
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 2.500000e-01
  %20 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %21 = fsub float %19, %20
  call fastcc void @round_box__edges(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %2, float noundef %19, float noundef %21)
  store i8 0, ptr %13, align 2, !tbaa !85
  call fastcc void @widgetbase_draw(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2))
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_search_back(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @UI_GetTheme() #15
  %5 = getelementptr inbounds %struct.bTheme, ptr %4, i64 0, i32 3
  store ptr %5, ptr @widget_type.wt, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.bTheme, ptr %4, i64 0, i32 3, i32 18
  store ptr %6, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  store ptr @widget_box, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.bTheme, ptr %4, i64 0, i32 3, i32 13
  store ptr %7, ptr @widget_type.wt, align 8, !tbaa !102
  tail call void @glEnable(i32 noundef 3042) #15
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %2, i32 noundef 15, float noundef %10)
  tail call void @glDisable(i32 noundef 3042) #15
  %11 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  tail call void %11(ptr noundef nonnull @widget_type.wt, i32 noundef 0) #15
  %12 = icmp eq ptr %1, null
  %13 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  br i1 %12, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !109
  br label %17

17:                                               ; preds = %3, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %3 ]
  tail call void %13(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef %18, i32 noundef 15) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @widget_softshadow(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.uiWidgetBase, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [74 x [2 x float]], align 16
  %7 = tail call ptr @UI_GetTheme() #15
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %6) #15
  %8 = tail call i32 @UI_ThemeMenuShadowWidth() #15
  %9 = sitofp i32 %8 to float
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = sub nsw i32 %13, %15
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 0x3FC99999A0000000
  %19 = fcmp olt float %18, %9
  %20 = sitofp i32 %13 to float
  %21 = fsub float %20, %9
  %22 = tail call float @llvm.fmuladd.f32(float %17, float 0xBFC99999A0000000, float %20)
  %23 = select i1 %19, float %22, float %21
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %12, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 3
  %26 = and i32 %1, 12
  %27 = call fastcc i32 @round_box_shadow_edges(ptr noundef nonnull %25, ptr noundef nonnull %5, float noundef %2, i32 noundef %26, float noundef 0.000000e+00)
  %28 = getelementptr inbounds %struct.bTheme, ptr %7, i64 0, i32 3, i32 21
  %29 = load float, ptr %28, align 4, !tbaa !153
  %30 = fmul float %29, 3.000000e+00
  %31 = fdiv float %30, %9
  tail call void @glEnableClientState(i32 noundef 32884) #15
  %32 = fptosi float %9 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %85, label %34

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 2
  %36 = icmp sgt i32 %27, 0
  %37 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 2, i64 0, i64 1
  %38 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 3, i64 0, i64 1
  %39 = shl nsw i32 %27, 1
  %40 = zext nneg i32 %27 to i64
  br label %41

41:                                               ; preds = %34, %69
  %42 = phi i32 [ 1, %34 ], [ %83, %69 ]
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %43, %9
  %45 = call float @sqrtf(float noundef %44) #15
  %46 = call fastcc i32 @round_box_shadow_edges(ptr noundef nonnull %35, ptr noundef nonnull %5, float noundef %2, i32 noundef 15, float noundef %43)
  %47 = fsub float 1.000000e+00, %45
  %48 = fmul float %31, %47
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %48) #15
  br i1 %36, label %49, label %69

49:                                               ; preds = %41, %49
  %50 = phi i64 [ %65, %49 ], [ 0, %41 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = getelementptr inbounds [2 x float], ptr %6, i64 %51
  %53 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 2, i64 %50
  %54 = load float, ptr %53, align 8, !tbaa !34
  store float %54, ptr %52, align 16, !tbaa !34
  %55 = getelementptr inbounds float, ptr %53, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %52, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = or disjoint i64 %51, 1
  %59 = getelementptr inbounds [2 x float], ptr %6, i64 %58
  %60 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 3, i64 %50
  %61 = load float, ptr %60, align 8, !tbaa !34
  store float %61, ptr %59, align 8, !tbaa !34
  %62 = getelementptr inbounds float, ptr %60, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %59, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = add nuw nsw i64 %50, 1
  %66 = icmp eq i64 %65, %40
  br i1 %66, label %67, label %49, !llvm.loop !96

67:                                               ; preds = %49
  %68 = trunc i64 %65 to i32
  br label %69

69:                                               ; preds = %67, %41
  %70 = phi i32 [ 0, %41 ], [ %68, %67 ]
  %71 = shl nuw nsw i32 %70, 1
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [2 x float], ptr %6, i64 %72
  %74 = load float, ptr %35, align 8, !tbaa !34
  store float %74, ptr %73, align 16, !tbaa !34
  %75 = load float, ptr %37, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %73, i64 1
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = or disjoint i32 %71, 1
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [2 x float], ptr %6, i64 %78
  %80 = load float, ptr %25, align 8, !tbaa !34
  store float %80, ptr %79, align 8, !tbaa !34
  %81 = load float, ptr %38, align 4, !tbaa !34
  %82 = getelementptr inbounds float, ptr %79, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %6) #15
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %39) #15
  %83 = add nuw i32 %42, 1
  %84 = icmp eq i32 %42, %32
  br i1 %84, label %85, label %41, !llvm.loop !154

85:                                               ; preds = %69, %11
  call void @glDisableClientState(i32 noundef 32884) #15
  br label %86

86:                                               ; preds = %3, %85
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_menu_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [400 x i8], align 16
  %8 = tail call ptr @UI_GetTheme() #15
  %9 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3
  store ptr %9, ptr @widget_type.wt, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 18
  store ptr %10, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %11 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 11
  store ptr %11, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  %12 = load i32, ptr %1, align 4, !tbaa.struct !122
  %13 = getelementptr inbounds i8, ptr %1, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa.struct !155
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  %16 = load i64, ptr %15, align 4
  tail call void @widget_state_menu_item(ptr noundef nonnull @widget_type.wt, i32 noundef %4) #15
  %17 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  tail call void %17(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #15
  tail call void @uiStyleFontSet(ptr noundef %0) #15
  %18 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %18, align 2, !tbaa !134
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %20 = sitofp i16 %19 to float
  %21 = load i32, ptr %1, align 4, !tbaa !47
  %22 = sitofp i32 %21 to float
  %23 = tail call float @llvm.fmuladd.f32(float %20, float 2.500000e-01, float %22)
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %1, align 4, !tbaa !47
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %6
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = fdiv float %30, 7.200000e+01
  %32 = sitofp i32 %24 to float
  %33 = tail call float @llvm.fmuladd.f32(float %31, float 1.600000e+01, float %32)
  %34 = fptosi float %33 to i32
  store i32 %34, ptr %1, align 4, !tbaa !47
  br label %35

35:                                               ; preds = %26, %6
  %36 = icmp ne i8 %5, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %35
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 124) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %37
  store i8 0, ptr %38, align 1, !tbaa !43
  tail call void @uiStyleFontSet(ptr noundef %0) #15
  %41 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %42 = load i16, ptr %41, align 4, !tbaa !127
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i16, ptr %0, align 4, !tbaa !129
  %46 = sext i16 %45 to i32
  tail call void @BLF_enable(i32 noundef %46, i32 noundef 8) #15
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i16, ptr %0, align 4, !tbaa !129
  %49 = sext i16 %48 to i32
  %50 = getelementptr inbounds i8, ptr %38, i64 1
  %51 = tail call float @BLF_width(i32 noundef %49, ptr noundef nonnull %50, i64 noundef 2147483647) #15
  %52 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fdiv float %55, 7.200000e+01
  %57 = tail call float @llvm.fmuladd.f32(float %56, float 1.600000e+01, float %51)
  %58 = load i32, ptr %13, align 4, !tbaa !50
  %59 = sitofp i32 %58 to float
  %60 = fsub float %59, %57
  %61 = fptosi float %60 to i32
  store i32 %61, ptr %13, align 4, !tbaa !50
  %62 = load i16, ptr %41, align 4, !tbaa !127
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i16, ptr %0, align 4, !tbaa !129
  %66 = sext i16 %65 to i32
  tail call void @BLF_disable(i32 noundef %66, i32 noundef 8) #15
  br label %67

67:                                               ; preds = %37, %64, %47, %35
  %68 = phi ptr [ %38, %64 ], [ %38, %47 ], [ null, %37 ], [ null, %35 ]
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %7) #15
  %69 = load i32, ptr %13, align 4, !tbaa !50
  %70 = load i32, ptr %1, align 4, !tbaa !47
  %71 = sub nsw i32 %69, %70
  %72 = sitofp i32 %71 to float
  %73 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %74 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %75 = sitofp i32 %74 to float
  %76 = fmul float %73, %75
  %77 = fdiv float %76, 7.200000e+01
  %78 = fmul float %77, 1.600000e+01
  %79 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 400) #15
  %80 = call fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef nonnull %7, float noundef %72, float noundef %78, ptr noundef null)
  call void @glColor4ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #15
  call void @uiStyleFontDraw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %7) #15
  %81 = icmp ne ptr %68, null
  %82 = and i1 %36, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  store i16 2, ptr %18, align 2, !tbaa !134
  %84 = add nsw i32 %14, -5
  store i32 %84, ptr %13, align 4, !tbaa !50
  %85 = getelementptr inbounds i8, ptr %68, i64 1
  call void @uiStyleFontDraw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %85) #15
  store i8 124, ptr %68, align 1, !tbaa !43
  br label %86

86:                                               ; preds = %83, %67
  store i32 %12, ptr %1, align 4, !tbaa.struct !122
  store i32 %14, ptr %13, align 4, !tbaa.struct !155
  store i64 %16, ptr %15, align 4
  br i1 %25, label %105, label %87

87:                                               ; preds = %86
  %88 = sitofp i32 %12 to float
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %90 = sitofp i16 %89 to float
  %91 = call float @llvm.fmuladd.f32(float %90, float 0x3FC99999A0000000, float %88)
  %92 = fptosi float %91 to i32
  %93 = load i32, ptr %15, align 4, !tbaa !51
  %94 = sitofp i32 %93 to float
  %95 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !52
  %97 = sub nsw i32 %96, %93
  %98 = sitofp i32 %97 to float
  %99 = call float @llvm.fmuladd.f32(float %98, float 0x3FB99999A0000000, float %94)
  %100 = fptosi float %99 to i32
  %101 = fmul float %98, 0x3FE99999A0000000
  %102 = fdiv float 1.600000e+01, %101
  call void @glEnable(i32 noundef 3042) #15
  %103 = sitofp i32 %92 to float
  %104 = sitofp i32 %100 to float
  call void @UI_icon_draw_aspect(float noundef %103, float noundef %104, i32 noundef %3, float noundef %102, float noundef 1.000000e+00) #15
  call void @glDisable(i32 noundef 3042) #15
  br label %105

105:                                              ; preds = %87, %86
  ret void
}

declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [400 x i8], align 16
  %10 = alloca float, align 4
  tail call void @uiStyleFontSet(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 4, !tbaa !127
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i16, ptr %0, align 4, !tbaa !129
  %16 = sext i16 %15 to i32
  tail call void @BLF_enable(i32 noundef %16, i32 noundef 8) #15
  br label %17

17:                                               ; preds = %14, %5
  %18 = load i16, ptr %0, align 4, !tbaa !129
  %19 = sext i16 %18 to i32
  %20 = tail call float @BLF_width(i32 noundef %19, ptr noundef %1, i64 noundef 400) #15
  %21 = fcmp ogt float %2, 0.000000e+00
  %22 = fcmp ogt float %20, %2
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %129

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 10911970, ptr %8, align 4
  %25 = load i16, ptr %0, align 4, !tbaa !129
  %26 = sext i16 %25 to i32
  %27 = call float @BLF_width(i32 noundef %26, ptr noundef nonnull %8, i64 noundef 4) #15
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %28 = icmp eq ptr %4, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %4) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #16
  %34 = load i16, ptr %0, align 4, !tbaa !129
  %35 = sext i16 %34 to i32
  %36 = call float @BLF_width(i32 noundef %35, ptr noundef nonnull %30, i64 noundef %33) #15
  store float %36, ptr %10, align 4, !tbaa !34
  %37 = fsub float %2, %36
  %38 = fsub float %20, %36
  %39 = fcmp olt float %37, 0.000000e+00
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = add i64 %33, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %30, i64 %41, i1 false)
  %42 = fadd float %36, %37
  br label %43

43:                                               ; preds = %29, %40, %32, %24
  %44 = phi ptr [ null, %40 ], [ %30, %32 ], [ null, %29 ], [ null, %24 ]
  %45 = phi i64 [ %33, %40 ], [ %33, %32 ], [ 0, %29 ], [ 0, %24 ]
  %46 = phi float [ %36, %40 ], [ %38, %32 ], [ %20, %29 ], [ %20, %24 ]
  %47 = phi float [ %42, %40 ], [ %37, %32 ], [ %2, %29 ], [ %2, %24 ]
  %48 = fsub float %47, %27
  %49 = fmul float %48, 5.000000e-01
  %50 = icmp eq ptr %44, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %44) #15
  store i8 0, ptr %44, align 1, !tbaa !43
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi ptr [ %9, %51 ], [ null, %43 ]
  %55 = load i16, ptr %0, align 4, !tbaa !129
  %56 = sext i16 %55 to i32
  %57 = call i64 @BLF_width_to_strlen(i32 noundef %56, ptr noundef %1, i64 noundef 400, float noundef %49, ptr noundef nonnull %10) #15
  %58 = icmp ult i64 %57, 10
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = fsub float %46, %47
  %61 = fcmp olt float %49, %60
  %62 = select i1 %61, float %49, float %60
  %63 = fcmp olt float %62, %3
  br i1 %63, label %64, label %84

64:                                               ; preds = %59, %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %65 = fdiv float %27, %47
  %66 = fcmp ogt float %65, 0x3FC99999A0000000
  %67 = load i16, ptr %0, align 4, !tbaa !129
  %68 = sext i16 %67 to i32
  br i1 %66, label %69, label %74

69:                                               ; preds = %64
  %70 = call i64 @BLF_width_to_strlen(i32 noundef %68, ptr noundef %1, i64 noundef 400, float noundef %47, ptr noundef nonnull %7) #15
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i8, ptr %1, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !43
  br label %82

74:                                               ; preds = %64
  %75 = call i64 @BLF_width_to_strlen(i32 noundef %68, ptr noundef %1, i64 noundef 400, float noundef %48, ptr noundef nonnull %7) #15
  %76 = shl i64 %75, 32
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds i8, ptr %1, i64 %77
  %79 = load i32, ptr %8, align 4
  store i32 %79, ptr %78, align 1
  %80 = add i64 %76, 12884901888
  %81 = ashr exact i64 %80, 32
  br label %82

82:                                               ; preds = %69, %74
  %83 = phi i64 [ %72, %69 ], [ %81, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %119

84:                                               ; preds = %59
  %85 = load i16, ptr %0, align 4, !tbaa !129
  %86 = sext i16 %85 to i32
  %87 = call i64 @BLF_width_to_rstrlen(i32 noundef %86, ptr noundef %1, i64 noundef 400, float noundef %49, ptr noundef nonnull %10) #15
  %88 = getelementptr inbounds i8, ptr %1, i64 %87
  %89 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %88) #16
  %90 = add i64 %89, 1
  %91 = add i64 %57, 3
  %92 = add i64 %91, %45
  %93 = add i64 %92, %90
  %94 = icmp ugt i64 %93, 400
  br i1 %94, label %95, label %115

95:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %96 = fdiv float %27, %47
  %97 = fcmp ogt float %96, 0x3FC99999A0000000
  %98 = load i16, ptr %0, align 4, !tbaa !129
  %99 = sext i16 %98 to i32
  br i1 %97, label %100, label %105

100:                                              ; preds = %95
  %101 = call i64 @BLF_width_to_strlen(i32 noundef %99, ptr noundef %1, i64 noundef 400, float noundef %47, ptr noundef nonnull %6) #15
  %102 = shl i64 %101, 32
  %103 = ashr exact i64 %102, 32
  %104 = getelementptr inbounds i8, ptr %1, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !43
  br label %113

105:                                              ; preds = %95
  %106 = call i64 @BLF_width_to_strlen(i32 noundef %99, ptr noundef %1, i64 noundef 400, float noundef %48, ptr noundef nonnull %6) #15
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = getelementptr inbounds i8, ptr %1, i64 %108
  %110 = load i32, ptr %8, align 4
  store i32 %110, ptr %109, align 1
  %111 = add i64 %107, 12884901888
  %112 = ashr exact i64 %111, 32
  br label %113

113:                                              ; preds = %100, %105
  %114 = phi i64 [ %103, %100 ], [ %112, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %119

115:                                              ; preds = %84
  %116 = getelementptr inbounds i8, ptr %1, i64 %57
  %117 = getelementptr inbounds i8, ptr %116, i64 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %117, ptr align 1 %88, i64 %90, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %116, ptr noundef nonnull align 4 dereferenceable(3) %8, i64 3, i1 false)
  %118 = add i64 %89, %91
  br label %119

119:                                              ; preds = %113, %115, %82
  %120 = phi i64 [ %83, %82 ], [ %114, %113 ], [ %118, %115 ]
  %121 = icmp eq ptr %54, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, ptr %1, i64 %120
  %124 = add i64 %45, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr nonnull align 16 %54, i64 %124, i1 false)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i16, ptr %0, align 4, !tbaa !129
  %127 = sext i16 %126 to i32
  %128 = call float @BLF_width(i32 noundef %127, ptr noundef %1, i64 noundef 400) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %129

129:                                              ; preds = %125, %17
  %130 = phi float [ %128, %125 ], [ %20, %17 ]
  %131 = load i16, ptr %11, align 4, !tbaa !127
  %132 = icmp eq i16 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i16, ptr %0, align 4, !tbaa !129
  %135 = sext i16 %134 to i32
  call void @BLF_disable(i32 noundef %135, i32 noundef 8) #15
  br label %136

136:                                              ; preds = %133, %129
  ret float %130
}

declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_preview_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [400 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8
  %9 = tail call ptr @UI_GetTheme() #15
  %10 = getelementptr inbounds %struct.bTheme, ptr %9, i64 0, i32 3
  store ptr %10, ptr @widget_type.wt, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.bTheme, ptr %9, i64 0, i32 3, i32 18
  store ptr %11, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !104
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !107
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.bTheme, ptr %9, i64 0, i32 3, i32 11
  store ptr %12, ptr @widget_type.wt, align 8, !tbaa !102
  store ptr @widget_menu_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  store ptr @widget_state_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !105
  tail call void @widget_state_menu_item(ptr noundef nonnull @widget_type.wt, i32 noundef %4) #15
  %13 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !106
  tail call void %13(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %1, i32 noundef 0, i32 noundef 0) #15
  tail call void @glEnable(i32 noundef 3042) #15
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = load i32, ptr %1, align 4, !tbaa !47
  %19 = sub nsw i32 %17, %18
  %20 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !51
  %24 = sub nsw i32 %21, %23
  %25 = tail call i32 @llvm.smin.i32(i32 %19, i32 %24)
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = add nsw i32 %25, -8
  %29 = sdiv i32 %19, 2
  %30 = add nsw i32 %29, %18
  %31 = lshr i32 %28, 1
  %32 = sub i32 %30, %31
  %33 = sdiv i32 %24, 2
  %34 = add nsw i32 %33, %23
  %35 = sub i32 %34, %31
  %36 = sitofp i32 %32 to float
  %37 = sitofp i32 %35 to float
  tail call void @UI_icon_draw_preview_aspect_size(float noundef %36, float noundef %37, i32 noundef %3, float noundef 1.000000e+00, i32 noundef %28) #15
  br label %38

38:                                               ; preds = %5, %15, %27
  %39 = load i16, ptr %0, align 4, !tbaa !129
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @BLF_width_and_height(i32 noundef %40, ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef nonnull %41) #15
  %42 = load i32, ptr %6, align 4, !tbaa !47
  %43 = sitofp i32 %42 to float
  %44 = load float, ptr %7, align 8, !tbaa !34
  %45 = fadd float %44, %43
  %46 = fadd float %45, 1.000000e+01
  %47 = fptosi float %46 to i32
  %48 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !51
  %51 = add nsw i32 %50, 10
  store i32 %51, ptr %49, align 4, !tbaa !51
  %52 = sitofp i32 %51 to float
  %53 = load float, ptr %41, align 4, !tbaa !34
  %54 = fadd float %53, %52
  %55 = fptosi float %54 to i32
  %56 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %55, ptr %56, align 4, !tbaa !52
  %57 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = add nsw i32 %58, -4
  %60 = icmp slt i32 %59, %47
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  store i32 %59, ptr %48, align 4, !tbaa !50
  br label %62

62:                                               ; preds = %38, %61
  %63 = add nsw i32 %55, 2
  %64 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !51
  %66 = add nsw i32 %65, 4
  %67 = load i32, ptr %1, align 4, !tbaa !47
  %68 = add nsw i32 %67, 4
  %69 = load ptr, ptr @widget_type.wt, align 8, !tbaa !102
  %70 = getelementptr inbounds %struct.uiWidgetColors, ptr %69, i64 0, i32 2
  call void @glColor4ubv(ptr noundef nonnull %70) #15
  call void @glRecti(i32 noundef %68, i32 noundef %66, i32 noundef %59, i32 noundef %63) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %8) #15
  %71 = load i32, ptr %48, align 4, !tbaa !50
  %72 = load i32, ptr %6, align 4, !tbaa !47
  %73 = sub nsw i32 %71, %72
  %74 = sitofp i32 %73 to float
  %75 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %76 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %77 = sitofp i32 %76 to float
  %78 = fmul float %75, %77
  %79 = fdiv float %78, 7.200000e+01
  %80 = fmul float %79, 1.600000e+01
  %81 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 400) #15
  %82 = call fastcc float @ui_text_clip_middle_ex(ptr noundef nonnull %0, ptr noundef nonnull %8, float noundef %74, float noundef %80, ptr noundef null)
  call void @glColor4ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #15
  call void @uiStyleFontDraw(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret void
}

declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @round_box__edges(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #10 {
  %6 = alloca [9 x [2 x float]], align 16
  %7 = alloca [9 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #15
  %8 = load i32, ptr %2, align 4, !tbaa !47
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = sitofp i32 %17 to float
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %20 = fadd float %19, %9
  %21 = fsub float %15, %19
  %22 = fadd float %19, %12
  %23 = fsub float %18, %19
  %24 = fcmp une float %21, %20
  %25 = fsub float %21, %20
  %26 = fdiv float 1.000000e+00, %25
  %27 = select i1 %24, float %26, float 0.000000e+00
  %28 = fsub float %23, %22
  %29 = fdiv float 1.000000e+00, %28
  %30 = and i32 %1, 3
  %31 = icmp ne i32 %30, 3
  %32 = and i32 %1, 12
  %33 = icmp ne i32 %32, 12
  %34 = and i1 %31, %33
  %35 = and i32 %1, 9
  %36 = icmp ne i32 %35, 9
  %37 = and i32 %1, 6
  %38 = icmp ne i32 %37, 6
  %39 = and i1 %36, %38
  %40 = sub nsw i32 %14, %8
  %41 = zext i1 %34 to i32
  %42 = shl i32 %40, %41
  %43 = sub nsw i32 %17, %11
  %44 = zext i1 %39 to i32
  %45 = shl i32 %43, %44
  %46 = tail call i32 @llvm.smin.i32(i32 %42, i32 %45)
  %47 = fmul float %3, 2.000000e+00
  %48 = sitofp i32 %46 to float
  %49 = fcmp ogt float %47, %48
  %50 = fmul float %48, 5.000000e-01
  %51 = select i1 %49, float %50, float %3
  %52 = fadd float %4, 1.000000e+00
  %53 = fmul float %52, 2.000000e+00
  %54 = fcmp ogt float %53, %48
  %55 = fneg float %19
  %56 = tail call float @llvm.fmuladd.f32(float %48, float 5.000000e-01, float %55)
  %57 = select i1 %54, float %56, float %4
  br label %58

58:                                               ; preds = %5, %58
  %59 = phi i64 [ 0, %5 ], [ %72, %58 ]
  %60 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %59
  %61 = load float, ptr %60, align 8, !tbaa !34
  %62 = fmul float %57, %61
  %63 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %59
  store float %62, ptr %63, align 8, !tbaa !34
  %64 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %59, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fmul float %57, %65
  %67 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %59, i64 1
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = fmul float %51, %61
  %69 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %59
  store float %68, ptr %69, align 8, !tbaa !34
  %70 = fmul float %51, %65
  %71 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %59, i64 1
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = add nuw nsw i64 %59, 1
  %73 = icmp eq i64 %72, 9
  br i1 %73, label %74, label %58, !llvm.loop !156

74:                                               ; preds = %58
  %75 = fcmp une float %23, %22
  %76 = select i1 %75, float %29, float 0.000000e+00
  %77 = and i32 %1, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %74
  %80 = fadd float %22, %57
  %81 = fadd float %51, %12
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ 0, %79 ], [ %106, %82 ]
  %84 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %83
  %85 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fadd float %20, %86
  %88 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %83
  store float %87, ptr %88, align 8, !tbaa !34
  %89 = load float, ptr %84, align 8, !tbaa !34
  %90 = fsub float %80, %89
  %91 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %83, i64 1
  store float %90, ptr %91, align 4, !tbaa !34
  %92 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %83
  %93 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %83, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = fadd float %94, %9
  %96 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %83
  store float %95, ptr %96, align 8, !tbaa !34
  %97 = load float, ptr %92, align 8, !tbaa !34
  %98 = fsub float %81, %97
  %99 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %83, i64 1
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = fsub float %87, %20
  %101 = fmul float %27, %100
  %102 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %83
  store float %101, ptr %102, align 8, !tbaa !34
  %103 = fsub float %90, %22
  %104 = fmul float %76, %103
  %105 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %83, i64 1
  store float %104, ptr %105, align 4, !tbaa !34
  %106 = add nuw nsw i64 %83, 1
  %107 = icmp eq i64 %106, 9
  br i1 %107, label %115, label %82, !llvm.loop !157

108:                                              ; preds = %74
  %109 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  store float %20, ptr %109, align 8, !tbaa !34
  %110 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 0, i64 1
  store float %22, ptr %110, align 4, !tbaa !34
  %111 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2
  store float %9, ptr %111, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 0, i64 1
  store float %12, ptr %112, align 4, !tbaa !34
  %113 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %113, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 0, i64 1
  store float 0.000000e+00, ptr %114, align 4, !tbaa !34
  br label %115

115:                                              ; preds = %82, %108
  %116 = phi i32 [ 1, %108 ], [ 9, %82 ]
  %117 = and i32 %1, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %115
  %120 = fsub float %21, %57
  %121 = fsub float %15, %51
  %122 = zext nneg i32 %116 to i64
  br label %123

123:                                              ; preds = %119, %123
  %124 = phi i64 [ %122, %119 ], [ %149, %123 ]
  %125 = phi i64 [ 0, %119 ], [ %148, %123 ]
  %126 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %125
  %127 = load float, ptr %126, align 8, !tbaa !34
  %128 = fadd float %120, %127
  %129 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %124
  store float %128, ptr %129, align 8, !tbaa !34
  %130 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %125, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !34
  %132 = fadd float %22, %131
  %133 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %124, i64 1
  store float %132, ptr %133, align 4, !tbaa !34
  %134 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %125
  %135 = load float, ptr %134, align 8, !tbaa !34
  %136 = fadd float %121, %135
  %137 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %124
  store float %136, ptr %137, align 8, !tbaa !34
  %138 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %125, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !34
  %140 = fadd float %139, %12
  %141 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %124, i64 1
  store float %140, ptr %141, align 4, !tbaa !34
  %142 = fsub float %128, %20
  %143 = fmul float %27, %142
  %144 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %124
  store float %143, ptr %144, align 8, !tbaa !34
  %145 = fsub float %132, %22
  %146 = fmul float %76, %145
  %147 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %124, i64 1
  store float %146, ptr %147, align 4, !tbaa !34
  %148 = add nuw nsw i64 %125, 1
  %149 = add nuw nsw i64 %124, 1
  %150 = icmp eq i64 %148, 9
  br i1 %150, label %160, label %123, !llvm.loop !158

151:                                              ; preds = %115
  %152 = zext nneg i32 %116 to i64
  %153 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %152
  store float %21, ptr %153, align 8, !tbaa !34
  %154 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %152, i64 1
  store float %22, ptr %154, align 4, !tbaa !34
  %155 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %152
  store float %15, ptr %155, align 8, !tbaa !34
  %156 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %152, i64 1
  store float %12, ptr %156, align 4, !tbaa !34
  %157 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %152
  store float 1.000000e+00, ptr %157, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %152, i64 1
  store float 0.000000e+00, ptr %158, align 4, !tbaa !34
  %159 = add nuw nsw i32 %116, 1
  br label %162

160:                                              ; preds = %123
  %161 = trunc i64 %149 to i32
  br label %162

162:                                              ; preds = %160, %151
  %163 = phi i32 [ %159, %151 ], [ %161, %160 ]
  %164 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  store i32 %163, ptr %164, align 4, !tbaa !71
  %165 = and i32 %1, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %199, label %167

167:                                              ; preds = %162
  %168 = fsub float %23, %57
  %169 = fsub float %18, %51
  %170 = zext nneg i32 %163 to i64
  br label %171

171:                                              ; preds = %167, %171
  %172 = phi i64 [ %170, %167 ], [ %197, %171 ]
  %173 = phi i64 [ 0, %167 ], [ %196, %171 ]
  %174 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %173
  %175 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %173, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !34
  %177 = fsub float %21, %176
  %178 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %172
  store float %177, ptr %178, align 8, !tbaa !34
  %179 = load float, ptr %174, align 8, !tbaa !34
  %180 = fadd float %168, %179
  %181 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %172, i64 1
  store float %180, ptr %181, align 4, !tbaa !34
  %182 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %173
  %183 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %173, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = fsub float %15, %184
  %186 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %172
  store float %185, ptr %186, align 8, !tbaa !34
  %187 = load float, ptr %182, align 8, !tbaa !34
  %188 = fadd float %169, %187
  %189 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %172, i64 1
  store float %188, ptr %189, align 4, !tbaa !34
  %190 = fsub float %177, %20
  %191 = fmul float %27, %190
  %192 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %172
  store float %191, ptr %192, align 8, !tbaa !34
  %193 = fsub float %180, %22
  %194 = fmul float %76, %193
  %195 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %172, i64 1
  store float %194, ptr %195, align 4, !tbaa !34
  %196 = add nuw nsw i64 %173, 1
  %197 = add nuw nsw i64 %172, 1
  %198 = icmp eq i64 %196, 9
  br i1 %198, label %208, label %171, !llvm.loop !159

199:                                              ; preds = %162
  %200 = sext i32 %163 to i64
  %201 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %200
  store float %21, ptr %201, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %200, i64 1
  store float %23, ptr %202, align 4, !tbaa !34
  %203 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %200
  store float %15, ptr %203, align 8, !tbaa !34
  %204 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %200, i64 1
  store float %18, ptr %204, align 4, !tbaa !34
  %205 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %200
  store float 1.000000e+00, ptr %205, align 8, !tbaa !34
  %206 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %200, i64 1
  store float 1.000000e+00, ptr %206, align 4, !tbaa !34
  %207 = add nsw i32 %163, 1
  br label %210

208:                                              ; preds = %171
  %209 = trunc i64 %197 to i32
  br label %210

210:                                              ; preds = %208, %199
  %211 = phi i32 [ %207, %199 ], [ %209, %208 ]
  %212 = and i32 %1, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %246, label %214

214:                                              ; preds = %210
  %215 = fadd float %20, %57
  %216 = fadd float %51, %9
  %217 = zext nneg i32 %211 to i64
  br label %218

218:                                              ; preds = %214, %218
  %219 = phi i64 [ %217, %214 ], [ %244, %218 ]
  %220 = phi i64 [ 0, %214 ], [ %243, %218 ]
  %221 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %220
  %222 = load float, ptr %221, align 8, !tbaa !34
  %223 = fsub float %215, %222
  %224 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %219
  store float %223, ptr %224, align 8, !tbaa !34
  %225 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %220, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !34
  %227 = fsub float %23, %226
  %228 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %219, i64 1
  store float %227, ptr %228, align 4, !tbaa !34
  %229 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %220
  %230 = load float, ptr %229, align 8, !tbaa !34
  %231 = fsub float %216, %230
  %232 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %219
  store float %231, ptr %232, align 8, !tbaa !34
  %233 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %220, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !34
  %235 = fsub float %18, %234
  %236 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %219, i64 1
  store float %235, ptr %236, align 4, !tbaa !34
  %237 = fsub float %223, %20
  %238 = fmul float %27, %237
  %239 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %219
  store float %238, ptr %239, align 8, !tbaa !34
  %240 = fsub float %227, %22
  %241 = fmul float %76, %240
  %242 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %219, i64 1
  store float %241, ptr %242, align 4, !tbaa !34
  %243 = add nuw nsw i64 %220, 1
  %244 = add nuw nsw i64 %219, 1
  %245 = icmp eq i64 %243, 9
  br i1 %245, label %255, label %218, !llvm.loop !160

246:                                              ; preds = %210
  %247 = sext i32 %211 to i64
  %248 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %247
  store float %20, ptr %248, align 8, !tbaa !34
  %249 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %247, i64 1
  store float %23, ptr %249, align 4, !tbaa !34
  %250 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %247
  store float %9, ptr %250, align 8, !tbaa !34
  %251 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %247, i64 1
  store float %18, ptr %251, align 4, !tbaa !34
  %252 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %247
  store float 0.000000e+00, ptr %252, align 8, !tbaa !34
  %253 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %247, i64 1
  store float 1.000000e+00, ptr %253, align 4, !tbaa !34
  %254 = add nsw i32 %211, 1
  br label %257

255:                                              ; preds = %218
  %256 = trunc i64 %244 to i32
  br label %257

257:                                              ; preds = %255, %246
  %258 = phi i32 [ %254, %246 ], [ %256, %255 ]
  store i32 %258, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #15
  ret void
}

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_button_text_password_hide(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @widget_draw_icon(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  tail call void @glEnable(i32 noundef 3042) #15
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %159, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = load i32, ptr %3, align 4, !tbaa !47
  %17 = sub nsw i32 %15, %16
  %18 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = sub nsw i32 %19, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %17, i32 %22)
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %159

25:                                               ; preds = %13
  %26 = add nsw i32 %23, -8
  %27 = sdiv i32 %17, 2
  %28 = add nsw i32 %27, %16
  %29 = lshr i32 %26, 1
  %30 = sub i32 %28, %29
  %31 = sdiv i32 %22, 2
  %32 = add nsw i32 %31, %21
  %33 = sub i32 %32, %29
  %34 = sitofp i32 %30 to float
  %35 = sitofp i32 %33 to float
  tail call void @UI_icon_draw_preview_aspect_size(float noundef %34, float noundef %35, i32 noundef %1, float noundef 1.000000e+00, i32 noundef %26) #15
  br label %159

36:                                               ; preds = %5
  %37 = icmp eq i32 %1, 77
  %38 = and i32 %8, 64
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %37, %39
  br i1 %40, label %160, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.uiBlock, ptr %43, i64 0, i32 12
  %45 = load float, ptr %44, align 8, !tbaa !125
  %46 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %47 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %48 = sitofp i32 %47 to float
  %49 = fmul float %46, %48
  %50 = fdiv float %49, 7.200000e+01
  %51 = fdiv float %45, %50
  %52 = fdiv float 1.600000e+01, %51
  %53 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !101
  switch i32 %54, label %59 [
    i32 1536, label %55
    i32 1024, label %55
    i32 4608, label %55
    i32 18432, label %55
  ]

55:                                               ; preds = %41, %41, %41, %41
  %56 = and i32 %8, 5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %41, %55, %58
  %60 = phi float [ %2, %55 ], [ 5.000000e-01, %58 ], [ %2, %41 ]
  %61 = icmp eq i32 %54, 5120
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %64 = load float, ptr %63, align 8, !tbaa !68
  %65 = fcmp oeq float %64, 1.000000e+00
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %68 = load float, ptr %67, align 4, !tbaa !161
  %69 = fmul float %60, %68
  br label %70

70:                                               ; preds = %66, %62, %59
  %71 = phi float [ %69, %66 ], [ %60, %62 ], [ %60, %59 ]
  tail call void @glEnable(i32 noundef 3042) #15
  switch i32 %1, label %72 [
    i32 77, label %138
    i32 0, label %138
  ]

72:                                               ; preds = %70
  %73 = fdiv float 1.000000e+00, %51
  %74 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !110
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %42, align 8, !tbaa !61
  %80 = getelementptr inbounds %struct.uiBlock, ptr %79, i64 0, i32 27
  %81 = load i32, ptr %80, align 8, !tbaa !109
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %53, align 8, !tbaa !101
  switch i32 %85, label %90 [
    i32 20992, label %86
    i32 26624, label %86
  ]

86:                                               ; preds = %84, %84
  %87 = load i32, ptr %3, align 4, !tbaa !47
  %88 = sitofp i32 %87 to float
  %89 = tail call float @llvm.fmuladd.f32(float %73, float 4.000000e+00, float %88)
  br label %106

90:                                               ; preds = %84
  %91 = load i32, ptr %3, align 4, !tbaa !47
  %92 = sitofp i32 %91 to float
  %93 = fadd float %73, %92
  br label %106

94:                                               ; preds = %78
  %95 = load i32, ptr %3, align 4, !tbaa !47
  %96 = sitofp i32 %95 to float
  %97 = tail call float @llvm.fmuladd.f32(float %73, float 4.000000e+00, float %96)
  br label %106

98:                                               ; preds = %72
  %99 = load i32, ptr %3, align 4, !tbaa !47
  %100 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !50
  %102 = add nsw i32 %101, %99
  %103 = sitofp i32 %102 to float
  %104 = fsub float %103, %52
  %105 = fmul float %104, 5.000000e-01
  br label %106

106:                                              ; preds = %94, %90, %86, %98
  %107 = phi float [ %105, %98 ], [ %89, %86 ], [ %93, %90 ], [ %97, %94 ]
  %108 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !51
  %110 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !52
  %112 = add nsw i32 %111, %109
  %113 = sitofp i32 %112 to float
  %114 = fsub float %113, %52
  %115 = fmul float %114, 5.000000e-01
  %116 = fcmp ogt float %51, 0x3FEE666660000000
  %117 = fcmp olt float %51, 0x3FF0CCCCC0000000
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = fadd float %107, 0x3FB99999A0000000
  %121 = fptosi float %120 to i32
  %122 = sitofp i32 %121 to float
  %123 = fadd float %115, 0x3FB99999A0000000
  %124 = fptosi float %123 to i32
  %125 = sitofp i32 %124 to float
  br label %126

126:                                              ; preds = %119, %106
  %127 = phi float [ %125, %119 ], [ %115, %106 ]
  %128 = phi float [ %122, %119 ], [ %107, %106 ]
  %129 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  %130 = load ptr, ptr %129, align 8, !tbaa !162
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %7, align 8, !tbaa !53
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.widget_draw_icon.rgb, i64 12, i1 false)
  call void @UI_icon_draw_aspect_color(float noundef %128, float noundef %127, i32 noundef %1, float noundef %51, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %138

137:                                              ; preds = %132, %126
  tail call void @UI_icon_draw_aspect(float noundef %128, float noundef %127, i32 noundef %1, float noundef %51, float noundef %71) #15
  br label %138

138:                                              ; preds = %136, %137, %70, %70
  %139 = icmp eq i8 %4, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !50
  %143 = sitofp i32 %142 to float
  %144 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %145 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %146 = sitofp i32 %145 to float
  %147 = fmul float %144, %146
  %148 = fdiv float %147, 7.200000e+01
  %149 = call float @llvm.fmuladd.f32(float %148, float -1.600000e+01, float %143)
  %150 = fsub float %149, %51
  %151 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !51
  %153 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !52
  %155 = add nsw i32 %154, %152
  %156 = sitofp i32 %155 to float
  %157 = fsub float %156, %52
  %158 = fmul float %157, 5.000000e-01
  call void @UI_icon_draw_aspect(float noundef %150, float noundef %158, i32 noundef 28, float noundef %51, float noundef %71) #15
  br label %159

159:                                              ; preds = %138, %140, %25, %13, %11
  call void @glDisable(i32 noundef 3042) #15
  br label %160

160:                                              ; preds = %159, %36
  ret void
}

declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ui_is_but_search_unlink_visible(ptr noundef) local_unnamed_addr #2

declare void @UI_icon_draw_aspect_color(float noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_str_find_prev_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_str_find_next_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i64 @BLF_width_to_strlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @uiStyleFontDrawExt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @widget_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = and i32 %1, 16777232
  %6 = icmp eq i32 %5, 16777216
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call ptr @UI_GetTheme() #15
  %9 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 16
  store ptr %9, ptr %0, align 8, !tbaa !102
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 2 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !42
  %13 = and i32 %1, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %151, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %18 = load i8, ptr %17, align 1, !tbaa !43
  store i8 %18, ptr %16, align 1, !tbaa !43
  %19 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !43
  %22 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !43
  %24 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %23, ptr %24, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 %26, ptr %27, align 1, !tbaa !43
  %28 = and i32 %1, 16384
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !163
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %137

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3
  %36 = fsub float 1.000000e+00, %32
  %37 = uitofp i8 %18 to float
  %38 = load i8, ptr %35, align 1, !tbaa !43
  %39 = uitofp i8 %38 to float
  %40 = fmul float %32, %39
  %41 = tail call float @llvm.fmuladd.f32(float %36, float %37, float %40)
  %42 = fptosi float %41 to i32
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %16, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = uitofp i8 %45 to float
  %47 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !43
  %49 = uitofp i8 %48 to float
  %50 = fmul float %32, %49
  %51 = tail call float @llvm.fmuladd.f32(float %36, float %46, float %50)
  %52 = fptosi float %51 to i32
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %44, align 1, !tbaa !43
  %54 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !43
  %56 = uitofp i8 %55 to float
  %57 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !43
  %59 = uitofp i8 %58 to float
  %60 = fmul float %32, %59
  %61 = tail call float @llvm.fmuladd.f32(float %36, float %56, float %60)
  br label %132

62:                                               ; preds = %15
  %63 = and i32 %1, 8192
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %67 = load float, ptr %66, align 4, !tbaa !163
  %68 = fcmp une float %67, 0.000000e+00
  br i1 %68, label %69, label %137

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1
  %71 = fsub float 1.000000e+00, %67
  %72 = uitofp i8 %18 to float
  %73 = load i8, ptr %70, align 1, !tbaa !43
  %74 = uitofp i8 %73 to float
  %75 = fmul float %67, %74
  %76 = tail call float @llvm.fmuladd.f32(float %71, float %72, float %75)
  %77 = fptosi float %76 to i32
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %16, align 1, !tbaa !43
  %79 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !43
  %81 = uitofp i8 %80 to float
  %82 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !43
  %84 = uitofp i8 %83 to float
  %85 = fmul float %67, %84
  %86 = tail call float @llvm.fmuladd.f32(float %71, float %81, float %85)
  %87 = fptosi float %86 to i32
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %79, align 1, !tbaa !43
  %89 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !43
  %91 = uitofp i8 %90 to float
  %92 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !43
  %94 = uitofp i8 %93 to float
  %95 = fmul float %67, %94
  %96 = tail call float @llvm.fmuladd.f32(float %71, float %91, float %95)
  br label %132

97:                                               ; preds = %62
  %98 = and i32 %1, 32768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %102 = load float, ptr %101, align 4, !tbaa !163
  %103 = fcmp une float %102, 0.000000e+00
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5
  %106 = fsub float 1.000000e+00, %102
  %107 = uitofp i8 %18 to float
  %108 = load i8, ptr %105, align 1, !tbaa !43
  %109 = uitofp i8 %108 to float
  %110 = fmul float %102, %109
  %111 = tail call float @llvm.fmuladd.f32(float %106, float %107, float %110)
  %112 = fptosi float %111 to i32
  %113 = trunc i32 %112 to i8
  store i8 %113, ptr %16, align 1, !tbaa !43
  %114 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !43
  %116 = uitofp i8 %115 to float
  %117 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5, i64 1
  %118 = load i8, ptr %117, align 1, !tbaa !43
  %119 = uitofp i8 %118 to float
  %120 = fmul float %102, %119
  %121 = tail call float @llvm.fmuladd.f32(float %106, float %116, float %120)
  %122 = fptosi float %121 to i32
  %123 = trunc i32 %122 to i8
  store i8 %123, ptr %114, align 1, !tbaa !43
  %124 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %125 = load i8, ptr %124, align 1, !tbaa !43
  %126 = uitofp i8 %125 to float
  %127 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5, i64 2
  %128 = load i8, ptr %127, align 1, !tbaa !43
  %129 = uitofp i8 %128 to float
  %130 = fmul float %102, %129
  %131 = tail call float @llvm.fmuladd.f32(float %106, float %126, float %130)
  br label %132

132:                                              ; preds = %34, %69, %104
  %133 = phi float [ %131, %104 ], [ %96, %69 ], [ %61, %34 ]
  %134 = phi ptr [ %124, %104 ], [ %89, %69 ], [ %54, %34 ]
  %135 = fptosi float %133 to i32
  %136 = trunc i32 %135 to i8
  store i8 %136, ptr %134, align 1, !tbaa !43
  br label %137

137:                                              ; preds = %132, %100, %65, %30, %97
  %138 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %139 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %140 = load i8, ptr %139, align 1, !tbaa !43
  store i8 %140, ptr %138, align 1, !tbaa !43
  %141 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !43
  %143 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  store i8 %142, ptr %143, align 1, !tbaa !43
  %144 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %145 = load i8, ptr %144, align 1, !tbaa !43
  %146 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  store i8 %145, ptr %146, align 1, !tbaa !43
  %147 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %148 = load i16, ptr %147, align 2, !tbaa !164
  %149 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 8
  %150 = load i16, ptr %149, align 4, !tbaa !165
  store i16 %150, ptr %147, align 2, !tbaa !164
  store i16 %148, ptr %149, align 4, !tbaa !165
  br label %285

151:                                              ; preds = %10
  %152 = and i32 %1, 16384
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %188, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %156 = load float, ptr %155, align 4, !tbaa !163
  %157 = fcmp une float %156, 0.000000e+00
  br i1 %157, label %158, label %266

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2
  %160 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %161 = fsub float 1.000000e+00, %156
  %162 = load i8, ptr %160, align 1, !tbaa !43
  %163 = uitofp i8 %162 to float
  %164 = load i8, ptr %159, align 1, !tbaa !43
  %165 = uitofp i8 %164 to float
  %166 = fmul float %156, %165
  %167 = tail call float @llvm.fmuladd.f32(float %161, float %163, float %166)
  %168 = fptosi float %167 to i32
  %169 = trunc i32 %168 to i8
  store i8 %169, ptr %160, align 1, !tbaa !43
  %170 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !43
  %172 = uitofp i8 %171 to float
  %173 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2, i64 1
  %174 = load i8, ptr %173, align 1, !tbaa !43
  %175 = uitofp i8 %174 to float
  %176 = fmul float %156, %175
  %177 = tail call float @llvm.fmuladd.f32(float %161, float %172, float %176)
  %178 = fptosi float %177 to i32
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %170, align 1, !tbaa !43
  %180 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %181 = load i8, ptr %180, align 1, !tbaa !43
  %182 = uitofp i8 %181 to float
  %183 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2, i64 2
  %184 = load i8, ptr %183, align 1, !tbaa !43
  %185 = uitofp i8 %184 to float
  %186 = fmul float %156, %185
  %187 = tail call float @llvm.fmuladd.f32(float %161, float %182, float %186)
  br label %261

188:                                              ; preds = %151
  %189 = and i32 %1, 8192
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %224, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %193 = load float, ptr %192, align 4, !tbaa !163
  %194 = fcmp une float %193, 0.000000e+00
  br i1 %194, label %195, label %266

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %197 = fsub float 1.000000e+00, %193
  %198 = load i8, ptr %196, align 1, !tbaa !43
  %199 = uitofp i8 %198 to float
  %200 = load i8, ptr %4, align 1, !tbaa !43
  %201 = uitofp i8 %200 to float
  %202 = fmul float %193, %201
  %203 = tail call float @llvm.fmuladd.f32(float %197, float %199, float %202)
  %204 = fptosi float %203 to i32
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %196, align 1, !tbaa !43
  %206 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !43
  %208 = uitofp i8 %207 to float
  %209 = getelementptr inbounds i8, ptr %4, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !43
  %211 = uitofp i8 %210 to float
  %212 = fmul float %193, %211
  %213 = tail call float @llvm.fmuladd.f32(float %197, float %208, float %212)
  %214 = fptosi float %213 to i32
  %215 = trunc i32 %214 to i8
  store i8 %215, ptr %206, align 1, !tbaa !43
  %216 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %217 = load i8, ptr %216, align 1, !tbaa !43
  %218 = uitofp i8 %217 to float
  %219 = getelementptr inbounds i8, ptr %4, i64 2
  %220 = load i8, ptr %219, align 1, !tbaa !43
  %221 = uitofp i8 %220 to float
  %222 = fmul float %193, %221
  %223 = tail call float @llvm.fmuladd.f32(float %197, float %218, float %222)
  br label %261

224:                                              ; preds = %188
  %225 = and i32 %1, 32768
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %266, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %229 = load float, ptr %228, align 4, !tbaa !163
  %230 = fcmp une float %229, 0.000000e+00
  br i1 %230, label %231, label %266

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4
  %233 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %234 = fsub float 1.000000e+00, %229
  %235 = load i8, ptr %233, align 1, !tbaa !43
  %236 = uitofp i8 %235 to float
  %237 = load i8, ptr %232, align 1, !tbaa !43
  %238 = uitofp i8 %237 to float
  %239 = fmul float %229, %238
  %240 = tail call float @llvm.fmuladd.f32(float %234, float %236, float %239)
  %241 = fptosi float %240 to i32
  %242 = trunc i32 %241 to i8
  store i8 %242, ptr %233, align 1, !tbaa !43
  %243 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !43
  %245 = uitofp i8 %244 to float
  %246 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !43
  %248 = uitofp i8 %247 to float
  %249 = fmul float %229, %248
  %250 = tail call float @llvm.fmuladd.f32(float %234, float %245, float %249)
  %251 = fptosi float %250 to i32
  %252 = trunc i32 %251 to i8
  store i8 %252, ptr %243, align 1, !tbaa !43
  %253 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !43
  %255 = uitofp i8 %254 to float
  %256 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4, i64 2
  %257 = load i8, ptr %256, align 1, !tbaa !43
  %258 = uitofp i8 %257 to float
  %259 = fmul float %229, %258
  %260 = tail call float @llvm.fmuladd.f32(float %234, float %255, float %259)
  br label %261

261:                                              ; preds = %158, %195, %231
  %262 = phi float [ %260, %231 ], [ %223, %195 ], [ %187, %158 ]
  %263 = phi ptr [ %253, %231 ], [ %216, %195 ], [ %180, %158 ]
  %264 = fptosi float %262 to i32
  %265 = trunc i32 %264 to i8
  store i8 %265, ptr %263, align 1, !tbaa !43
  br label %266

266:                                              ; preds = %261, %227, %191, %154, %224
  %267 = and i32 %1, 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %285, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %271 = load i8, ptr %270, align 4, !tbaa !43
  %272 = icmp ugt i8 %271, -17
  %273 = add i8 %271, 15
  %274 = select i1 %272, i8 -1, i8 %273
  store i8 %274, ptr %270, align 4, !tbaa !43
  %275 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !43
  %277 = icmp ugt i8 %276, -17
  %278 = add i8 %276, 15
  %279 = select i1 %277, i8 -1, i8 %278
  store i8 %279, ptr %275, align 1, !tbaa !43
  %280 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %281 = load i8, ptr %280, align 2, !tbaa !43
  %282 = icmp ugt i8 %281, -17
  %283 = add i8 %281, 15
  %284 = select i1 %282, i8 -1, i8 %283
  store i8 %284, ptr %280, align 2, !tbaa !43
  br label %285

285:                                              ; preds = %266, %269, %137
  %286 = and i32 %1, 65536
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %307, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %290 = load i8, ptr %289, align 1, !tbaa !43
  %291 = uitofp i8 %290 to float
  %292 = tail call float @llvm.fmuladd.f32(float %291, float 0x3FE3333340000000, float 1.020000e+02)
  %293 = fptosi float %292 to i32
  %294 = trunc i32 %293 to i8
  store i8 %294, ptr %289, align 1, !tbaa !43
  %295 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !43
  %297 = uitofp i8 %296 to float
  %298 = tail call float @llvm.fmuladd.f32(float %297, float 0x3FE3333340000000, float 0.000000e+00)
  %299 = fptosi float %298 to i32
  %300 = trunc i32 %299 to i8
  store i8 %300, ptr %295, align 1, !tbaa !43
  %301 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %302 = load i8, ptr %301, align 1, !tbaa !43
  %303 = uitofp i8 %302 to float
  %304 = tail call float @llvm.fmuladd.f32(float %303, float 0x3FE3333340000000, float 0.000000e+00)
  %305 = fptosi float %304 to i32
  %306 = trunc i32 %305 to i8
  store i8 %306, ptr %301, align 1, !tbaa !43
  br label %307

307:                                              ; preds = %288, %285
  %308 = and i32 %1, 33554432
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %357, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %312 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %313 = load i8, ptr %312, align 1, !tbaa !43
  store i8 %313, ptr %311, align 1, !tbaa !43
  %314 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %315 = load i8, ptr %314, align 1, !tbaa !43
  %316 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %315, ptr %316, align 1, !tbaa !43
  %317 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %318 = load i8, ptr %317, align 1, !tbaa !43
  %319 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %318, ptr %319, align 1, !tbaa !43
  %320 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 3
  %321 = load i8, ptr %320, align 1, !tbaa !43
  %322 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 %321, ptr %322, align 1, !tbaa !43
  %323 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %324 = load i16, ptr %323, align 2, !tbaa !164
  %325 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 8
  %326 = load i16, ptr %325, align 4, !tbaa !165
  store i16 %326, ptr %323, align 2, !tbaa !164
  store i16 %324, ptr %325, align 4, !tbaa !165
  %327 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %328 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %329 = load i8, ptr %327, align 1, !tbaa !43
  %330 = uitofp i8 %329 to float
  %331 = load i8, ptr %328, align 1, !tbaa !43
  %332 = uitofp i8 %331 to float
  %333 = fmul float %332, 0x3FEB333340000000
  %334 = tail call float @llvm.fmuladd.f32(float %330, float 0x3FC3333300000000, float %333)
  %335 = fptosi float %334 to i32
  %336 = trunc i32 %335 to i8
  store i8 %336, ptr %327, align 1, !tbaa !43
  %337 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  %338 = load i8, ptr %337, align 1, !tbaa !43
  %339 = uitofp i8 %338 to float
  %340 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %341 = load i8, ptr %340, align 1, !tbaa !43
  %342 = uitofp i8 %341 to float
  %343 = fmul float %342, 0x3FEB333340000000
  %344 = tail call float @llvm.fmuladd.f32(float %339, float 0x3FC3333300000000, float %343)
  %345 = fptosi float %344 to i32
  %346 = trunc i32 %345 to i8
  store i8 %346, ptr %337, align 1, !tbaa !43
  %347 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %348 = load i8, ptr %347, align 1, !tbaa !43
  %349 = uitofp i8 %348 to float
  %350 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %351 = load i8, ptr %350, align 1, !tbaa !43
  %352 = uitofp i8 %351 to float
  %353 = fmul float %352, 0x3FEB333340000000
  %354 = tail call float @llvm.fmuladd.f32(float %349, float 0x3FC3333300000000, float %353)
  %355 = fptosi float %354 to i32
  %356 = trunc i32 %355 to i8
  store i8 %356, ptr %347, align 1, !tbaa !43
  br label %357

357:                                              ; preds = %310, %307
  %358 = and i32 %1, 512
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %379, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %362 = load i8, ptr %361, align 1, !tbaa !43
  %363 = uitofp i8 %362 to float
  %364 = tail call float @llvm.fmuladd.f32(float %363, float 0x3FE6666660000000, float 0x4039CCCCE0000000)
  %365 = fptosi float %364 to i32
  %366 = trunc i32 %365 to i8
  store i8 %366, ptr %361, align 1, !tbaa !43
  %367 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %368 = load i8, ptr %367, align 1, !tbaa !43
  %369 = uitofp i8 %368 to float
  %370 = tail call float @llvm.fmuladd.f32(float %369, float 0x3FE6666660000000, float 0x4043333340000000)
  %371 = fptosi float %370 to i32
  %372 = trunc i32 %371 to i8
  store i8 %372, ptr %367, align 1, !tbaa !43
  %373 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %374 = load i8, ptr %373, align 1, !tbaa !43
  %375 = uitofp i8 %374 to float
  %376 = tail call float @llvm.fmuladd.f32(float %375, float 0x3FE6666660000000, float 0x404D1999A0000000)
  %377 = fptosi float %376 to i32
  %378 = trunc i32 %377 to i8
  store i8 %378, ptr %373, align 1, !tbaa !43
  br label %379

379:                                              ; preds = %360, %357
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_but(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %9, align 8
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3FC99999A0000000
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = fsub float %12, %13
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %12, float noundef %14)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_state_label(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @UI_GetTheme() #15
  %7 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 16
  store ptr %7, ptr %0, align 8, !tbaa !102
  tail call void @widget_state(ptr noundef nonnull %0, i32 noundef %1)
  br label %14

8:                                                ; preds = %2
  tail call void @widget_state(ptr noundef %0, i32 noundef %1)
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @UI_GetThemeColor3ubv(i32 noundef 4, ptr noundef nonnull %11) #15
  br label %14

13:                                               ; preds = %8
  tail call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %12, %13, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_optionbut(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !122
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %10, align 8
  %11 = load i32, ptr %6, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = sub nsw i32 %13, %15
  %17 = add nsw i32 %16, %11
  %18 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !50
  %19 = sdiv i32 %16, 8
  %20 = add nsw i32 %19, 1
  %21 = add nsw i32 %20, %11
  store i32 %21, ptr %6, align 4, !tbaa !47
  %22 = add nsw i32 %20, %15
  store i32 %22, ptr %14, align 4, !tbaa !51
  %23 = sub nsw i32 %17, %20
  store i32 %23, ptr %18, align 4, !tbaa !50
  %24 = sub nsw i32 %13, %20
  store i32 %24, ptr %12, align 4, !tbaa !52
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %26 = sitofp i16 %25 to float
  %27 = fmul float %26, 0x3FC99999A0000000
  %28 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %29 = fsub float %27, %28
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull %6, float noundef %27, float noundef %29)
  %30 = and i32 %2, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %4
  %33 = sitofp i32 %21 to float
  %34 = sub nsw i32 %24, %22
  %35 = sitofp i32 %34 to float
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 5.000000e-01, float %33)
  %37 = sitofp i32 %22 to float
  %38 = tail call float @llvm.fmuladd.f32(float %35, float 5.000000e-01, float %37)
  %39 = fmul float %35, 5.000000e-01
  br label %40

40:                                               ; preds = %32, %40
  %41 = phi i64 [ 0, %32 ], [ %50, %40 ]
  %42 = getelementptr inbounds [6 x [2 x float]], ptr @check_tria_vert, i64 0, i64 %41
  %43 = load float, ptr %42, align 8, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %39, float %43, float %36)
  %45 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %41
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds [6 x [2 x float]], ptr @check_tria_vert, i64 0, i64 %41, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %39, float %47, float %38)
  %49 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %41, i64 1
  store float %48, ptr %49, align 8, !tbaa !34
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %52, label %40, !llvm.loop !166

52:                                               ; preds = %40
  store i32 4, ptr %8, align 8, !tbaa !88
  %53 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 2
  store ptr @check_tria_face, ptr %53, align 8, !tbaa !89
  br label %54

54:                                               ; preds = %52, %4
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  %55 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !51
  %59 = sub nsw i32 %56, %58
  %60 = sitofp i32 %59 to double
  %61 = sitofp i32 %20 to double
  %62 = call double @llvm.fmuladd.f64(double %60, double 0x3FE6666666666666, double %61)
  %63 = load i32, ptr %1, align 4, !tbaa !47
  %64 = sitofp i32 %63 to double
  %65 = fadd double %62, %64
  %66 = fptosi double %65 to i32
  store i32 %66, ptr %1, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_radiobut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %9, align 8
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3FC99999A0000000
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = fsub float %12, %13
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %12, float noundef %14)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_numbut(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call fastcc void @widget_numbut_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_numslider(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = alloca %struct.uiWidgetBase, align 8
  %8 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 6
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 1
  store i32 16843009, ptr %12, align 8
  store i32 0, ptr %14, align 4, !tbaa !71
  store i32 0, ptr %7, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 10
  store i32 0, ptr %16, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 5
  %18 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 6
  %19 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 16843009, ptr %17, align 8
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = sub nsw i32 %20, %22
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, 5.000000e-01
  %26 = fmul float %25, 7.500000e-01
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %28 = fsub float %25, %27
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %25, float noundef %28)
  store i8 0, ptr %13, align 1, !tbaa !86
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  %29 = and i32 %3, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %116

31:                                               ; preds = %5
  %32 = load i8, ptr %1, align 1, !tbaa !43
  %33 = getelementptr inbounds i8, ptr %1, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %1, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !43
  store i8 %38, ptr %1, align 1, !tbaa !43
  %39 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !43
  store i8 %40, ptr %33, align 1, !tbaa !43
  %41 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !43
  store i8 %42, ptr %35, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  store i8 %38, ptr %43, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  store i8 %40, ptr %44, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  store i8 %42, ptr %45, align 1, !tbaa !43
  %46 = and i32 %3, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %50 = load i16, ptr %49, align 2, !tbaa !78
  %51 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !80
  store i16 %52, ptr %49, align 2, !tbaa !78
  store i16 %50, ptr %51, align 2, !tbaa !80
  br label %53

53:                                               ; preds = %48, %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !122
  %54 = call double @ui_get_but_val(ptr noundef %0) #15
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %57 = load float, ptr %56, align 8, !tbaa !69
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !50
  %61 = load i32, ptr %8, align 4, !tbaa !47
  %62 = sub nsw i32 %60, %61
  %63 = sitofp i32 %62 to float
  %64 = fsub float %63, %25
  %65 = fmul float %58, %64
  %66 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %67 = load float, ptr %66, align 4, !tbaa !70
  %68 = fsub float %67, %57
  %69 = fdiv float %65, %68
  %70 = sitofp i32 %61 to double
  %71 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %72 = fadd float %25, %71
  %73 = call float @llvm.ceil.f32(float %72)
  %74 = fpext float %73 to double
  %75 = fadd double %70, %74
  %76 = fptosi double %75 to i32
  store i32 %76, ptr %59, align 4, !tbaa !50
  %77 = and i32 %4, -7
  %78 = fsub float %25, %71
  call fastcc void @round_box__edges(ptr noundef nonnull %7, i32 noundef %77, ptr noundef nonnull %8, float noundef %25, float noundef %78)
  store i8 0, ptr %18, align 1, !tbaa !86
  call fastcc void @widgetbase_draw(ptr noundef nonnull %7, ptr noundef nonnull %1)
  %79 = sitofp i32 %61 to float
  %80 = fadd float %69, %79
  %81 = fadd float %25, %80
  %82 = fptosi float %81 to i32
  store i32 %82, ptr %59, align 4, !tbaa !50
  %83 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %84 = fsub float %25, %83
  %85 = call float @llvm.floor.f32(float %84)
  %86 = fpext float %85 to double
  %87 = fadd double %70, %86
  %88 = fptosi double %87 to i32
  store i32 %88, ptr %8, align 4, !tbaa !47
  %89 = sitofp i32 %82 to float
  %90 = fadd float %25, %89
  %91 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = sitofp i32 %92 to float
  %94 = fcmp ogt float %90, %93
  %95 = and i32 %4, -10
  %96 = fsub float %90, %93
  %97 = fdiv float %96, %25
  %98 = fmul float %25, %97
  %99 = select i1 %94, i32 %95, i32 0
  %100 = select i1 %94, float %98, float 0.000000e+00
  %101 = fsub float %100, %83
  call fastcc void @round_box__edges(ptr noundef nonnull %7, i32 noundef %99, ptr noundef nonnull %8, float noundef %100, float noundef %101)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %7, ptr noundef nonnull %1)
  store i8 %32, ptr %1, align 1, !tbaa !43
  store i8 %34, ptr %33, align 1, !tbaa !43
  store i8 %36, ptr %35, align 1, !tbaa !43
  br i1 %47, label %102, label %107

102:                                              ; preds = %53
  %103 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %104 = load i16, ptr %103, align 2, !tbaa !78
  %105 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 8
  %106 = load i16, ptr %105, align 2, !tbaa !80
  store i16 %106, ptr %103, align 2, !tbaa !78
  store i16 %104, ptr %105, align 2, !tbaa !80
  br label %107

107:                                              ; preds = %53, %102
  store i8 1, ptr %13, align 1, !tbaa !86
  store i8 0, ptr %12, align 8, !tbaa !90
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef nonnull %1)
  %108 = load i32, ptr %91, align 4, !tbaa !50
  %109 = sitofp i32 %108 to float
  %110 = fsub float %109, %26
  %111 = fptosi float %110 to i32
  store i32 %111, ptr %91, align 4, !tbaa !50
  %112 = load i32, ptr %2, align 4, !tbaa !47
  %113 = sitofp i32 %112 to float
  %114 = fadd float %26, %113
  %115 = fptosi float %114 to i32
  store i32 %115, ptr %2, align 4, !tbaa !47
  br label %117

116:                                              ; preds = %5
  store i8 1, ptr %13, align 1, !tbaa !86
  store i8 0, ptr %12, align 8, !tbaa !90
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  br label %117

117:                                              ; preds = %116, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_state_numslider(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %6 = load float, ptr %5, align 4, !tbaa !163
  %7 = fadd float %6, 0xBFC99999A0000000
  tail call void @widget_state(ptr noundef %0, i32 noundef %1)
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %1, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %125, label %12

12:                                               ; preds = %2
  br i1 %11, label %45, label %13

13:                                               ; preds = %12
  %14 = fcmp une float %7, 0.000000e+00
  br i1 %14, label %15, label %120

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3
  %17 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %18 = fsub float 1.000000e+00, %7
  %19 = load i8, ptr %17, align 1, !tbaa !43
  %20 = uitofp i8 %19 to float
  %21 = load i8, ptr %16, align 1, !tbaa !43
  %22 = uitofp i8 %21 to float
  %23 = fmul float %7, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %23)
  %25 = fptosi float %24 to i32
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %17, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = uitofp i8 %28 to float
  %30 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = uitofp i8 %31 to float
  %33 = fmul float %7, %32
  %34 = tail call float @llvm.fmuladd.f32(float %18, float %29, float %33)
  %35 = fptosi float %34 to i32
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %27, align 1, !tbaa !43
  %37 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = uitofp i8 %38 to float
  %40 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !43
  %42 = uitofp i8 %41 to float
  %43 = fmul float %7, %42
  %44 = tail call float @llvm.fmuladd.f32(float %18, float %39, float %43)
  br label %115

45:                                               ; preds = %12
  %46 = and i32 %1, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %45
  %49 = fcmp une float %7, 0.000000e+00
  br i1 %49, label %50, label %120

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1
  %52 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %53 = fsub float 1.000000e+00, %7
  %54 = load i8, ptr %52, align 1, !tbaa !43
  %55 = uitofp i8 %54 to float
  %56 = load i8, ptr %51, align 1, !tbaa !43
  %57 = uitofp i8 %56 to float
  %58 = fmul float %7, %57
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %55, float %58)
  %60 = fptosi float %59 to i32
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %52, align 1, !tbaa !43
  %62 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !43
  %64 = uitofp i8 %63 to float
  %65 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = uitofp i8 %66 to float
  %68 = fmul float %7, %67
  %69 = tail call float @llvm.fmuladd.f32(float %53, float %64, float %68)
  %70 = fptosi float %69 to i32
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %62, align 1, !tbaa !43
  %72 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !43
  %74 = uitofp i8 %73 to float
  %75 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !43
  %77 = uitofp i8 %76 to float
  %78 = fmul float %7, %77
  %79 = tail call float @llvm.fmuladd.f32(float %53, float %74, float %78)
  br label %115

80:                                               ; preds = %45
  %81 = and i32 %1, 32768
  %82 = icmp ne i32 %81, 0
  %83 = fcmp une float %7, 0.000000e+00
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5
  %87 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %88 = fsub float 1.000000e+00, %7
  %89 = load i8, ptr %87, align 1, !tbaa !43
  %90 = uitofp i8 %89 to float
  %91 = load i8, ptr %86, align 1, !tbaa !43
  %92 = uitofp i8 %91 to float
  %93 = fmul float %7, %92
  %94 = tail call float @llvm.fmuladd.f32(float %88, float %90, float %93)
  %95 = fptosi float %94 to i32
  %96 = trunc i32 %95 to i8
  store i8 %96, ptr %87, align 1, !tbaa !43
  %97 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = uitofp i8 %98 to float
  %100 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !43
  %102 = uitofp i8 %101 to float
  %103 = fmul float %7, %102
  %104 = tail call float @llvm.fmuladd.f32(float %88, float %99, float %103)
  %105 = fptosi float %104 to i32
  %106 = trunc i32 %105 to i8
  store i8 %106, ptr %97, align 1, !tbaa !43
  %107 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !43
  %109 = uitofp i8 %108 to float
  %110 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !43
  %112 = uitofp i8 %111 to float
  %113 = fmul float %7, %112
  %114 = tail call float @llvm.fmuladd.f32(float %88, float %109, float %113)
  br label %115

115:                                              ; preds = %15, %50, %85
  %116 = phi float [ %114, %85 ], [ %79, %50 ], [ %44, %15 ]
  %117 = phi ptr [ %107, %85 ], [ %72, %50 ], [ %37, %15 ]
  %118 = fptosi float %116 to i32
  %119 = trunc i32 %118 to i8
  store i8 %119, ptr %117, align 1, !tbaa !43
  br label %120

120:                                              ; preds = %115, %48, %13, %80
  %121 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %122 = load i16, ptr %121, align 2, !tbaa !164
  %123 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 8
  %124 = load i16, ptr %123, align 4, !tbaa !165
  store i16 %124, ptr %121, align 2, !tbaa !164
  store i16 %122, ptr %123, align 4, !tbaa !165
  br label %233

125:                                              ; preds = %2
  br i1 %11, label %160, label %126

126:                                              ; preds = %125
  %127 = fcmp une float %7, 0.000000e+00
  br i1 %127, label %128, label %233

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2
  %130 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %131 = fsub float 1.000000e+00, %7
  %132 = load i8, ptr %130, align 1, !tbaa !43
  %133 = uitofp i8 %132 to float
  %134 = load i8, ptr %129, align 1, !tbaa !43
  %135 = uitofp i8 %134 to float
  %136 = fmul float %7, %135
  %137 = tail call float @llvm.fmuladd.f32(float %131, float %133, float %136)
  %138 = fptosi float %137 to i32
  %139 = trunc i32 %138 to i8
  store i8 %139, ptr %130, align 1, !tbaa !43
  %140 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !43
  %142 = uitofp i8 %141 to float
  %143 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !43
  %145 = uitofp i8 %144 to float
  %146 = fmul float %7, %145
  %147 = tail call float @llvm.fmuladd.f32(float %131, float %142, float %146)
  %148 = fptosi float %147 to i32
  %149 = trunc i32 %148 to i8
  store i8 %149, ptr %140, align 1, !tbaa !43
  %150 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %151 = load i8, ptr %150, align 1, !tbaa !43
  %152 = uitofp i8 %151 to float
  %153 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2, i64 2
  %154 = load i8, ptr %153, align 1, !tbaa !43
  %155 = uitofp i8 %154 to float
  %156 = fmul float %7, %155
  %157 = tail call float @llvm.fmuladd.f32(float %131, float %152, float %156)
  %158 = fptosi float %157 to i32
  %159 = trunc i32 %158 to i8
  store i8 %159, ptr %150, align 1, !tbaa !43
  br label %233

160:                                              ; preds = %125
  %161 = and i32 %1, 8192
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %160
  %164 = fcmp une float %7, 0.000000e+00
  br i1 %164, label %165, label %233

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %167 = fsub float 1.000000e+00, %7
  %168 = load i8, ptr %166, align 1, !tbaa !43
  %169 = uitofp i8 %168 to float
  %170 = load i8, ptr %4, align 1, !tbaa !43
  %171 = uitofp i8 %170 to float
  %172 = fmul float %7, %171
  %173 = tail call float @llvm.fmuladd.f32(float %167, float %169, float %172)
  %174 = fptosi float %173 to i32
  %175 = trunc i32 %174 to i8
  store i8 %175, ptr %166, align 1, !tbaa !43
  %176 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !43
  %178 = uitofp i8 %177 to float
  %179 = getelementptr inbounds i8, ptr %4, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !43
  %181 = uitofp i8 %180 to float
  %182 = fmul float %7, %181
  %183 = tail call float @llvm.fmuladd.f32(float %167, float %178, float %182)
  %184 = fptosi float %183 to i32
  %185 = trunc i32 %184 to i8
  store i8 %185, ptr %176, align 1, !tbaa !43
  %186 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %187 = load i8, ptr %186, align 1, !tbaa !43
  %188 = uitofp i8 %187 to float
  %189 = getelementptr inbounds i8, ptr %4, i64 2
  %190 = load i8, ptr %189, align 1, !tbaa !43
  %191 = uitofp i8 %190 to float
  %192 = fmul float %7, %191
  %193 = tail call float @llvm.fmuladd.f32(float %167, float %188, float %192)
  %194 = fptosi float %193 to i32
  %195 = trunc i32 %194 to i8
  store i8 %195, ptr %186, align 1, !tbaa !43
  br label %233

196:                                              ; preds = %160
  %197 = and i32 %1, 32768
  %198 = icmp ne i32 %197, 0
  %199 = fcmp une float %7, 0.000000e+00
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %233

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4
  %203 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %204 = fsub float 1.000000e+00, %7
  %205 = load i8, ptr %203, align 1, !tbaa !43
  %206 = uitofp i8 %205 to float
  %207 = load i8, ptr %202, align 1, !tbaa !43
  %208 = uitofp i8 %207 to float
  %209 = fmul float %7, %208
  %210 = tail call float @llvm.fmuladd.f32(float %204, float %206, float %209)
  %211 = fptosi float %210 to i32
  %212 = trunc i32 %211 to i8
  store i8 %212, ptr %203, align 1, !tbaa !43
  %213 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %214 = load i8, ptr %213, align 1, !tbaa !43
  %215 = uitofp i8 %214 to float
  %216 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4, i64 1
  %217 = load i8, ptr %216, align 1, !tbaa !43
  %218 = uitofp i8 %217 to float
  %219 = fmul float %7, %218
  %220 = tail call float @llvm.fmuladd.f32(float %204, float %215, float %219)
  %221 = fptosi float %220 to i32
  %222 = trunc i32 %221 to i8
  store i8 %222, ptr %213, align 1, !tbaa !43
  %223 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %224 = load i8, ptr %223, align 1, !tbaa !43
  %225 = uitofp i8 %224 to float
  %226 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4, i64 2
  %227 = load i8, ptr %226, align 1, !tbaa !43
  %228 = uitofp i8 %227 to float
  %229 = fmul float %7, %228
  %230 = tail call float @llvm.fmuladd.f32(float %204, float %225, float %229)
  %231 = fptosi float %230 to i32
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %223, align 1, !tbaa !43
  br label %233

233:                                              ; preds = %201, %165, %163, %128, %126, %196, %120
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_roundbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 2.500000e-01
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %12, align 8
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = fsub float %8, %13
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8, float noundef %14)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menu_back(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  %10 = and i32 %2, 512
  %11 = icmp eq i32 %10, 0
  store i32 16843009, ptr %9, align 8
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  switch i32 %3, label %32 [
    i32 2, label %13
    i32 1, label %20
  ]

13:                                               ; preds = %12
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %15 = sitofp i16 %14 to float
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = sitofp i32 %17 to float
  %19 = tail call float @llvm.fmuladd.f32(float %15, float 0xBFB99999A0000000, float %18)
  br label %27

20:                                               ; preds = %12
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %22 = sitofp i16 %21 to float
  %23 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !52
  %25 = sitofp i32 %24 to float
  %26 = tail call float @llvm.fmuladd.f32(float %22, float 0x3FB99999A0000000, float %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = phi float [ %19, %13 ], [ %26, %20 ]
  %29 = phi ptr [ %16, %13 ], [ %23, %20 ]
  %30 = phi i32 [ 12, %13 ], [ 3, %20 ]
  %31 = fptosi float %28 to i32
  store i32 %31, ptr %29, align 4, !tbaa !123
  br label %32

32:                                               ; preds = %27, %12, %4
  %33 = phi i32 [ 15, %4 ], [ 15, %12 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 7
  tail call void @glEnable(i32 noundef 3042) #15
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %36 = sitofp i16 %35 to float
  %37 = fmul float %36, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %1, i32 noundef %33, float noundef %37)
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %39 = sitofp i16 %38 to float
  %40 = fmul float %39, 2.500000e-01
  %41 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %42 = fsub float %40, %41
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %33, ptr noundef %1, float noundef %40, float noundef %42)
  store i8 0, ptr %34, align 2, !tbaa !85
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_textbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !78
  %11 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !80
  store i16 %12, ptr %9, align 2, !tbaa !78
  store i16 %10, ptr %11, align 2, !tbaa !80
  br label %13

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %16, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %17, align 8
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FC99999A0000000
  %21 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %22 = fsub float %20, %21
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %20, float noundef %22)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menubut(ptr noundef %0, ptr nocapture noundef %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %9, align 8
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3FC99999A0000000
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = fsub float %12, %13
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %12, float noundef %14)
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0xBFD47AE140000000, float %17)
  %25 = sitofp i32 %21 to float
  %26 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e-01, float %25)
  %27 = fmul float %23, 0x3FD99999A0000000
  br label %28

28:                                               ; preds = %4, %28
  %29 = phi i64 [ 0, %4 ], [ %38, %28 ]
  %30 = getelementptr inbounds [6 x [2 x float]], ptr @menu_tria_vert, i64 0, i64 %29
  %31 = load float, ptr %30, align 8, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %27, float %31, float %24)
  %33 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %29
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds [6 x [2 x float]], ptr @menu_tria_vert, i64 0, i64 %29, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = tail call float @llvm.fmuladd.f32(float %27, float %35, float %26)
  %37 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 1, i64 %29, i64 1
  store float %36, ptr %37, align 8, !tbaa !34
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, 6
  br i1 %39, label %40, label %28, !llvm.loop !167

40:                                               ; preds = %28
  store i32 2, ptr %7, align 8, !tbaa !88
  %41 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9, i32 2
  store ptr @menu_tria_face, ptr %41, align 8, !tbaa !89
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  %42 = load i32, ptr %18, align 4, !tbaa !52
  %43 = load i32, ptr %20, align 4, !tbaa !51
  %44 = sub nsw i32 %42, %43
  %45 = mul nsw i32 %44, 6
  %46 = sdiv i32 %45, -10
  %47 = load i32, ptr %15, align 4, !tbaa !50
  %48 = add i32 %46, %47
  store i32 %48, ptr %15, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menuiconbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %9, align 8
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3FC99999A0000000
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = fsub float %12, %13
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %12, float noundef %14)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menunodebut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = alloca %struct.uiWidgetColors, align 2
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %6, ptr noundef nonnull align 2 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !42
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %10, align 8
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 0x3FC99999A0000000
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %15 = fsub float %13, %14
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %13, float noundef %15)
  %16 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 2, !tbaa !43
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 240)
  %20 = trunc i32 %19 to i8
  %21 = add nuw i8 %20, 15
  store i8 %21, ptr %16, align 2, !tbaa !43
  %22 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !43
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 240)
  %26 = trunc i32 %25 to i8
  %27 = add nuw i8 %26, 15
  store i8 %27, ptr %22, align 1, !tbaa !43
  %28 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 2
  %29 = load i8, ptr %28, align 2, !tbaa !43
  %30 = zext i8 %29 to i32
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 240)
  %32 = trunc i32 %31 to i8
  %33 = add nuw i8 %32, 15
  store i8 %33, ptr %28, align 2, !tbaa !43
  %34 = load i8, ptr %0, align 2, !tbaa !43
  %35 = zext i8 %34 to i32
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 240)
  %37 = trunc i32 %36 to i8
  %38 = add nuw i8 %37, 15
  store i8 %38, ptr %0, align 2, !tbaa !43
  %39 = getelementptr inbounds [4 x i8], ptr %0, i64 0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !43
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 240)
  %43 = trunc i32 %42 to i8
  %44 = add nuw i8 %43, 15
  store i8 %44, ptr %39, align 1, !tbaa !43
  %45 = getelementptr inbounds [4 x i8], ptr %0, i64 0, i64 2
  %46 = load i8, ptr %45, align 2, !tbaa !43
  %47 = zext i8 %46 to i32
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 240)
  %49 = trunc i32 %48 to i8
  %50 = add nuw i8 %49, 15
  store i8 %50, ptr %45, align 2, !tbaa !43
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_pulldownbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = and i32 %2, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 0x3FC99999A0000000
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  store i32 16843009, ptr %15, align 8
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %17 = fsub float %11, %16
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %11, float noundef %17)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  br label %18

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_pulldown(ptr nocapture noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !42
  %5 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %7 = load i8, ptr %6, align 1, !tbaa !43
  store i8 %7, ptr %5, align 1, !tbaa !43
  %8 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !43
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %9, ptr %10, align 1, !tbaa !43
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %12, ptr %13, align 1, !tbaa !43
  %14 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 %15, ptr %16, align 1, !tbaa !43
  store i8 %7, ptr %3, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 0, i64 1
  store i8 %9, ptr %17, align 1, !tbaa !43
  %18 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 0, i64 2
  store i8 %12, ptr %18, align 1, !tbaa !43
  %19 = and i32 %1, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %23 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %24 = load i8, ptr %23, align 1, !tbaa !43
  store i8 %24, ptr %22, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  store i8 %26, ptr %27, align 1, !tbaa !43
  %28 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  store i8 %29, ptr %30, align 1, !tbaa !43
  br label %31

31:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menu_itembut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  store i32 16843009, ptr %9, align 8
  store i8 0, ptr %10, align 1, !tbaa !86
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %12 = fsub float 0.000000e+00, %11
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %1, float noundef 0.000000e+00, float noundef %12)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_menu_item(ptr nocapture noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !42
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 2052
  %8 = icmp eq i32 %7, 2052
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %12 = load i8, ptr %10, align 1, !tbaa !43
  %13 = uitofp i8 %12 to float
  %14 = load i8, ptr %11, align 1, !tbaa !43
  %15 = uitofp i8 %14 to float
  %16 = fmul float %15, 5.000000e-01
  %17 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %16)
  %18 = fptosi float %17 to i32
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %10, align 1, !tbaa !43
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = uitofp i8 %21 to float
  %23 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !43
  %25 = uitofp i8 %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e-01, float %26)
  %28 = fptosi float %27 to i32
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %20, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = uitofp i8 %31 to float
  %33 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = uitofp i8 %34 to float
  %36 = fmul float %35, 5.000000e-01
  %37 = tail call float @llvm.fmuladd.f32(float %32, float 5.000000e-01, float %36)
  %38 = fptosi float %37 to i32
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %30, align 1, !tbaa !43
  %40 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %42 = load i8, ptr %41, align 1, !tbaa !43
  store i8 %42, ptr %40, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 64, ptr %49, align 1, !tbaa !43
  br label %107

50:                                               ; preds = %2
  %51 = and i32 %1, 133120
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %55 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %56 = load i8, ptr %54, align 1, !tbaa !43
  %57 = uitofp i8 %56 to float
  %58 = load i8, ptr %55, align 1, !tbaa !43
  %59 = uitofp i8 %58 to float
  %60 = fmul float %59, 5.000000e-01
  %61 = tail call float @llvm.fmuladd.f32(float %57, float 5.000000e-01, float %60)
  %62 = fptosi float %61 to i32
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %54, align 1, !tbaa !43
  %64 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !43
  %66 = uitofp i8 %65 to float
  %67 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = uitofp i8 %68 to float
  %70 = fmul float %69, 5.000000e-01
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 5.000000e-01, float %70)
  %72 = fptosi float %71 to i32
  %73 = trunc i32 %72 to i8
  store i8 %73, ptr %64, align 1, !tbaa !43
  %74 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !43
  %76 = uitofp i8 %75 to float
  %77 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !43
  %79 = uitofp i8 %78 to float
  %80 = fmul float %79, 5.000000e-01
  %81 = tail call float @llvm.fmuladd.f32(float %76, float 5.000000e-01, float %80)
  %82 = fptosi float %81 to i32
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %74, align 1, !tbaa !43
  br label %107

84:                                               ; preds = %50
  br i1 %6, label %107, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %87 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %88 = load i8, ptr %87, align 1, !tbaa !43
  store i8 %88, ptr %86, align 1, !tbaa !43
  %89 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !43
  %91 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %90, ptr %91, align 1, !tbaa !43
  %92 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !43
  %94 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %93, ptr %94, align 1, !tbaa !43
  %95 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !43
  %97 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 %96, ptr %97, align 1, !tbaa !43
  %98 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %99 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %100 = load i8, ptr %99, align 1, !tbaa !43
  store i8 %100, ptr %98, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !43
  %104 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !43
  %106 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  store i8 %105, ptr %106, align 1, !tbaa !43
  br label %107

107:                                              ; preds = %53, %85, %84, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_icon_has_anim(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = and i32 %3, 122880
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %10, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %11, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %12, align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 6
  store i32 16843009, ptr %13, align 8
  store i8 0, ptr %14, align 1, !tbaa !86
  %15 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !51
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to float
  %21 = fmul float %20, 5.000000e-01
  %22 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %23 = fsub float %21, %22
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef 15, ptr noundef %2, float noundef %21, float noundef %23)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  br label %29

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !101
  %27 = icmp eq i32 %26, 2560
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call fastcc void @widget_numbut_draw(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 1)
  br label %29

29:                                               ; preds = %24, %28, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_swatch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 51
  %11 = load i8, ptr %10, align 4, !tbaa !62
  %12 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %5
  %17 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %14) #15
  %18 = icmp eq i32 %17, 30
  %19 = select i1 %18, i8 0, i8 %11
  %20 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %13, align 8, !tbaa !67
  %22 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %20, ptr noundef %21) #15
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load ptr, ptr %13, align 8, !tbaa !67
  %26 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %20, ptr noundef %25, i32 noundef 3) #15
  store float %26, ptr %12, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %16, %24, %5
  %28 = phi i8 [ %19, %24 ], [ %19, %16 ], [ %11, %5 ]
  %29 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %29, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %30, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  store i32 16843009, ptr %32, align 8
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 2.500000e-01
  %36 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %37 = fsub float %35, %36
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %35, float noundef %37)
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %7) #15
  %38 = and i32 %3, 122880
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %27
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  %41 = load i32, ptr %2, align 4, !tbaa !47
  %42 = add nsw i32 %41, 3
  store i32 %42, ptr %2, align 4, !tbaa !47
  %43 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = add nsw i32 %44, -3
  store i32 %45, ptr %43, align 4, !tbaa !50
  %46 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !51
  %48 = add nsw i32 %47, 3
  store i32 %48, ptr %46, align 4, !tbaa !51
  %49 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = add nsw i32 %50, -3
  store i32 %51, ptr %49, align 4, !tbaa !52
  %52 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %53 = fsub float %35, %52
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull %2, float noundef %35, float noundef %53)
  br label %54

54:                                               ; preds = %40, %27
  %55 = icmp eq i8 %28, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %8, align 8, !tbaa !61
  call void @ui_block_to_display_space_v3(ptr noundef %57, ptr noundef nonnull %7) #15
  br label %58

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call void @rgba_float_to_uchar(ptr noundef nonnull %59, ptr noundef nonnull %7) #15
  %60 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 6
  store i16 0, ptr %60, align 2, !tbaa !91
  %61 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !43
  %63 = icmp ne i8 %62, -1
  %64 = zext i1 %63 to i16
  %65 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 9
  store i16 %64, ptr %65, align 2, !tbaa !92
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  %66 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %67 = load float, ptr %66, align 8, !tbaa !68
  %68 = fcmp oeq float %67, 2.000000e+01
  br i1 %68, label %69, label %119

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %71 = load ptr, ptr %70, align 8, !tbaa !168
  %72 = getelementptr inbounds %struct.Palette, ptr %71, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !169
  %74 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %75 = load float, ptr %74, align 4, !tbaa !161
  %76 = fptosi float %75 to i32
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = load i32, ptr %2, align 4, !tbaa !47
  %82 = sub nsw i32 %80, %81
  %83 = sitofp i32 %82 to float
  %84 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !52
  %86 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !51
  %88 = sub nsw i32 %85, %87
  %89 = sitofp i32 %88 to float
  %90 = load float, ptr %7, align 16, !tbaa !34
  %91 = getelementptr inbounds float, ptr %7, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fmul float %92, 0x3FDCCCCCC0000000
  %94 = call float @llvm.fmuladd.f32(float %90, float 0x3FD6666660000000, float %93)
  %95 = getelementptr inbounds float, ptr %7, i64 2
  %96 = load float, ptr %95, align 8, !tbaa !34
  %97 = call float @llvm.fmuladd.f32(float %96, float 0x3FC99999A0000000, float %94)
  %98 = fcmp ogt float %97, 5.000000e-01
  %99 = select i1 %98, float -5.000000e-01, float 5.000000e-01
  %100 = fadd float %97, %99
  call void @glColor4f(float noundef %100, float noundef %100, float noundef %100, float noundef 1.000000e+00) #15
  call void @glBegin(i32 noundef 4) #15
  %101 = load i32, ptr %2, align 4, !tbaa !47
  %102 = sitofp i32 %101 to float
  %103 = call float @llvm.fmuladd.f32(float %83, float 0x3FB99999A0000000, float %102)
  %104 = load i32, ptr %86, align 4, !tbaa !51
  %105 = sitofp i32 %104 to float
  %106 = call float @llvm.fmuladd.f32(float %89, float 0x3FECCCCCC0000000, float %105)
  call void @glVertex2f(float noundef %103, float noundef %106) #15
  %107 = load i32, ptr %2, align 4, !tbaa !47
  %108 = sitofp i32 %107 to float
  %109 = call float @llvm.fmuladd.f32(float %83, float 0x3FB99999A0000000, float %108)
  %110 = load i32, ptr %86, align 4, !tbaa !51
  %111 = sitofp i32 %110 to float
  %112 = call float @llvm.fmuladd.f32(float %89, float 5.000000e-01, float %111)
  call void @glVertex2f(float noundef %109, float noundef %112) #15
  %113 = load i32, ptr %2, align 4, !tbaa !47
  %114 = sitofp i32 %113 to float
  %115 = call float @llvm.fmuladd.f32(float %83, float 5.000000e-01, float %114)
  %116 = load i32, ptr %86, align 4, !tbaa !51
  %117 = sitofp i32 %116 to float
  %118 = call float @llvm.fmuladd.f32(float %89, float 0x3FECCCCCC0000000, float %117)
  call void @glVertex2f(float noundef %115, float noundef %118) #15
  call void @glEnd() #15
  br label %119

119:                                              ; preds = %78, %69, %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_box(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4) #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  %11 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  store i32 16843009, ptr %10, align 8
  %12 = load i8, ptr %11, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !43
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26
  %22 = load i8, ptr %21, align 8, !tbaa !43
  store i8 %22, ptr %11, align 2, !tbaa !43
  %23 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !43
  store i8 %24, ptr %13, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 2
  %26 = load i8, ptr %25, align 2, !tbaa !43
  store i8 %26, ptr %15, align 2, !tbaa !43
  br label %27

27:                                               ; preds = %20, %5
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %29 = sitofp i16 %28 to float
  %30 = fmul float %29, 0x3FC99999A0000000
  %31 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %32 = fsub float %30, %31
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %30, float noundef %32)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  store i8 %12, ptr %11, align 1, !tbaa !43
  store i8 %14, ptr %13, align 1, !tbaa !43
  store i8 %16, ptr %15, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  tail call void @ui_draw_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_nothing(ptr nocapture noundef %0, i32 %1) #11 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_scroll(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 %4) #0 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = tail call double @ui_get_but_val(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %11 = load float, ptr %10, align 8, !tbaa !68
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %14 = load float, ptr %13, align 8, !tbaa !69
  %15 = fsub float %12, %14
  %16 = fcmp ogt float %15, 2.000000e+00
  %17 = select i1 %16, float %15, float 2.000000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !122
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = load i32, ptr %2, align 4, !tbaa !47
  %21 = sub nsw i32 %19, %20
  %22 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = sub nsw i32 %23, %25
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %5
  %29 = sitofp i32 %21 to float
  %30 = fdiv float %29, %17
  %31 = load i32, ptr %6, align 4, !tbaa !47
  %32 = sitofp i32 %31 to float
  %33 = fptrunc double %7 to float
  %34 = fsub float %33, %14
  %35 = fmul float %34, %30
  %36 = tail call float @llvm.ceil.f32(float %35)
  %37 = fadd float %36, %32
  %38 = fptosi float %37 to i32
  store i32 %38, ptr %6, align 4, !tbaa !47
  %39 = sitofp i32 %38 to float
  %40 = fsub float %11, %14
  %41 = fmul float %40, %30
  %42 = tail call float @llvm.ceil.f32(float %41)
  %43 = fadd float %42, %39
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !50
  %46 = sitofp i32 %26 to float
  %47 = sub nsw i32 %44, %38
  %48 = sitofp i32 %47 to float
  %49 = fcmp olt float %48, %46
  br i1 %49, label %50, label %92

50:                                               ; preds = %28
  %51 = fadd float %46, %39
  %52 = fptosi float %51 to i32
  store i32 %52, ptr %45, align 4, !tbaa !50
  %53 = icmp slt i32 %19, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  store i32 %19, ptr %45, align 4, !tbaa !50
  %55 = sitofp i32 %19 to float
  %56 = fsub float %55, %46
  %57 = fptosi float %56 to i32
  %58 = tail call i32 @llvm.smax.i32(i32 %20, i32 %57)
  store i32 %58, ptr %6, align 4, !tbaa !47
  br label %92

59:                                               ; preds = %5
  %60 = sitofp i32 %26 to float
  %61 = fdiv float %60, %17
  %62 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !52
  %64 = sitofp i32 %63 to float
  %65 = fptrunc double %7 to float
  %66 = fsub float %65, %14
  %67 = fmul float %66, %61
  %68 = tail call float @llvm.ceil.f32(float %67)
  %69 = fsub float %64, %68
  %70 = fptosi float %69 to i32
  store i32 %70, ptr %62, align 4, !tbaa !52
  %71 = sitofp i32 %70 to float
  %72 = fsub float %11, %14
  %73 = fmul float %72, %61
  %74 = tail call float @llvm.ceil.f32(float %73)
  %75 = fsub float %71, %74
  %76 = fptosi float %75 to i32
  %77 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %76, ptr %77, align 4, !tbaa !51
  %78 = sitofp i32 %21 to float
  %79 = sub nsw i32 %70, %76
  %80 = sitofp i32 %79 to float
  %81 = fcmp olt float %80, %78
  br i1 %81, label %82, label %92

82:                                               ; preds = %59
  %83 = sitofp i32 %76 to float
  %84 = fadd float %78, %83
  %85 = fptosi float %84 to i32
  store i32 %85, ptr %62, align 4, !tbaa !52
  %86 = icmp slt i32 %23, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  store i32 %23, ptr %62, align 4, !tbaa !52
  %88 = sitofp i32 %23 to float
  %89 = fsub float %88, %78
  %90 = fptosi float %89 to i32
  %91 = tail call i32 @llvm.smax.i32(i32 %25, i32 %90)
  store i32 %91, ptr %77, align 4, !tbaa !51
  br label %92

92:                                               ; preds = %59, %87, %82, %28, %54, %50
  %93 = and i32 %3, 1
  call void @uiWidgetScrollDraw(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %93)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_list_itembut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  store i32 16843009, ptr %9, align 8
  store i8 0, ptr %10, align 1, !tbaa !86
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !113
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 0x3FC99999A0000000
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %15 = fsub float %13, %14
  call fastcc void @round_box__edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef %1, float noundef %13, float noundef %15)
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_progressbar(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !122
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %9 = load float, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = sitofp i32 %11 to float
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  %17 = fdiv float %16, 7.200000e+01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %12)
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !52
  %21 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = sitofp i32 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %23)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !52
  %27 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = load i32, ptr %6, align 4, !tbaa !47
  %30 = sub nsw i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = fmul float %9, %31
  %33 = sub nsw i32 %19, %11
  %34 = sitofp i32 %33 to float
  %35 = fcmp ogt float %32, %34
  %36 = select i1 %35, float %32, float %34
  %37 = load i32, ptr %7, align 4, !tbaa !47
  %38 = sitofp i32 %37 to float
  %39 = fadd float %36, %38
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !50
  call void @uiWidgetScrollDraw(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4)
  %42 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %43 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !133
  %44 = sitofp i32 %43 to float
  %45 = fmul float %42, %44
  %46 = fdiv float %45, 7.200000e+01
  %47 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !51
  %49 = sitofp i32 %48 to float
  %50 = tail call float @llvm.fmuladd.f32(float %46, float 6.000000e+00, float %49)
  %51 = fptosi float %50 to i32
  store i32 %51, ptr %47, align 4, !tbaa !51
  %52 = load i32, ptr %2, align 4, !tbaa !47
  %53 = sitofp i32 %52 to float
  %54 = tail call float @llvm.fmuladd.f32(float %46, float -6.000000e+00, float %53)
  %55 = fptosi float %54 to i32
  store i32 %55, ptr %2, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widget_menu_radial_itembut(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 53, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !172
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %12, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %13, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  %15 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 7
  store i32 16843009, ptr %14, align 8
  store i8 0, ptr %15, align 2, !tbaa !85
  %16 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = sub nsw i32 %17, %19
  %21 = sitofp i32 %20 to float
  %22 = fmul float %21, 5.000000e-01
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %24 = fsub float %22, %23
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef 15, ptr noundef %2, float noundef %22, float noundef %24)
  %25 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = uitofp i8 %26 to float
  %28 = fmul float %10, %27
  %29 = fptoui float %28 to i8
  store i8 %29, ptr %25, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 2, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = uitofp i8 %31 to float
  %33 = fmul float %10, %32
  %34 = fptoui float %33 to i8
  store i8 %34, ptr %30, align 1, !tbaa !43
  %35 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = uitofp i8 %36 to float
  %38 = fmul float %10, %37
  %39 = fptoui float %38 to i8
  store i8 %39, ptr %35, align 1, !tbaa !43
  %40 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !43
  %42 = uitofp i8 %41 to float
  %43 = fmul float %10, %42
  %44 = fptoui float %43 to i8
  store i8 %44, ptr %40, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 5, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !43
  %47 = uitofp i8 %46 to float
  %48 = fmul float %10, %47
  %49 = fptoui float %48 to i8
  store i8 %49, ptr %45, align 1, !tbaa !43
  %50 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = uitofp i8 %51 to float
  %53 = fmul float %10, %52
  %54 = fptoui float %53 to i8
  store i8 %54, ptr %50, align 1, !tbaa !43
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_pie_menu_item(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !42
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 2052
  %8 = icmp eq i32 %7, 2052
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %12 = load i8, ptr %10, align 1, !tbaa !43
  %13 = uitofp i8 %12 to float
  %14 = load i8, ptr %11, align 1, !tbaa !43
  %15 = uitofp i8 %14 to float
  %16 = fmul float %15, 5.000000e-01
  %17 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %16)
  %18 = fptosi float %17 to i32
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %10, align 1, !tbaa !43
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = uitofp i8 %21 to float
  %23 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !43
  %25 = uitofp i8 %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e-01, float %26)
  %28 = fptosi float %27 to i32
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %20, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = uitofp i8 %31 to float
  %33 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = uitofp i8 %34 to float
  %36 = fmul float %35, 5.000000e-01
  %37 = tail call float @llvm.fmuladd.f32(float %32, float 5.000000e-01, float %36)
  %38 = fptosi float %37 to i32
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %30, align 1, !tbaa !43
  %40 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !43
  store i8 %42, ptr %40, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 64, ptr %49, align 1, !tbaa !43
  br label %131

50:                                               ; preds = %2
  %51 = and i32 %1, 133120
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %55 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %56 = load i8, ptr %54, align 1, !tbaa !43
  %57 = uitofp i8 %56 to float
  %58 = load i8, ptr %55, align 1, !tbaa !43
  %59 = uitofp i8 %58 to float
  %60 = fmul float %59, 5.000000e-01
  %61 = tail call float @llvm.fmuladd.f32(float %57, float 5.000000e-01, float %60)
  %62 = fptosi float %61 to i32
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %54, align 1, !tbaa !43
  %64 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !43
  %66 = uitofp i8 %65 to float
  %67 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = uitofp i8 %68 to float
  %70 = fmul float %69, 5.000000e-01
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 5.000000e-01, float %70)
  %72 = fptosi float %71 to i32
  %73 = trunc i32 %72 to i8
  store i8 %73, ptr %64, align 1, !tbaa !43
  %74 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !43
  %76 = uitofp i8 %75 to float
  %77 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !43
  %79 = uitofp i8 %78 to float
  %80 = fmul float %79, 5.000000e-01
  %81 = tail call float @llvm.fmuladd.f32(float %76, float 5.000000e-01, float %80)
  %82 = fptosi float %81 to i32
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %74, align 1, !tbaa !43
  br label %131

84:                                               ; preds = %50
  %85 = and i32 %1, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  %89 = load i8, ptr %88, align 1, !tbaa !43
  store i8 %89, ptr %3, align 1, !tbaa !43
  %90 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !43
  %92 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 0, i64 1
  store i8 %91, ptr %92, align 1, !tbaa !43
  %93 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !43
  %95 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 0, i64 2
  store i8 %94, ptr %95, align 1, !tbaa !43
  %96 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !43
  %98 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 0, i64 3
  store i8 %97, ptr %98, align 1, !tbaa !43
  %99 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %100 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %101 = load i8, ptr %100, align 1, !tbaa !43
  store i8 %101, ptr %99, align 1, !tbaa !43
  %102 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !43
  %104 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  store i8 %103, ptr %104, align 1, !tbaa !43
  %105 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !43
  %107 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  store i8 %106, ptr %107, align 1, !tbaa !43
  br label %131

108:                                              ; preds = %84
  br i1 %6, label %131, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %111 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !43
  store i8 %112, ptr %110, align 1, !tbaa !43
  %113 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !43
  %115 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 %114, ptr %115, align 1, !tbaa !43
  %116 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !43
  %118 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  store i8 %117, ptr %118, align 1, !tbaa !43
  %119 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3, i64 3
  %120 = load i8, ptr %119, align 1, !tbaa !43
  %121 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 %120, ptr %121, align 1, !tbaa !43
  %122 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %123 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  %124 = load i8, ptr %123, align 1, !tbaa !43
  store i8 %124, ptr %122, align 1, !tbaa !43
  %125 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !43
  %127 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 1
  store i8 %126, ptr %127, align 1, !tbaa !43
  %128 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !43
  %130 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4, i64 2
  store i8 %129, ptr %130, align 1, !tbaa !43
  br label %131

131:                                              ; preds = %53, %108, %109, %87, %9
  ret void
}

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @widget_numbut_draw(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = sub nsw i32 %8, %10
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = fmul float %13, 0x3FEB333340000000
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %19 = load i16, ptr %18, align 2, !tbaa !78
  %20 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !80
  store i16 %21, ptr %18, align 2, !tbaa !78
  store i16 %19, ptr %20, align 2, !tbaa !80
  br label %22

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 1
  store i32 0, ptr %23, align 4, !tbaa !71
  store i32 0, ptr %6, align 8, !tbaa !74
  %24 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  store i32 0, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  store i32 0, ptr %25, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  %27 = icmp eq i8 %4, 0
  store i32 16843009, ptr %26, align 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %30 = fsub float %13, %29
  call fastcc void @round_box__edges(ptr noundef nonnull %6, i32 noundef %3, ptr noundef %1, float noundef %13, float noundef %30)
  br label %31

31:                                               ; preds = %28, %22
  %32 = and i32 %2, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = load i32, ptr %1, align 4, !tbaa !47
  %38 = sub nsw i32 %36, %37
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %11)
  %40 = sitofp i32 %39 to float
  %41 = sitofp i32 %37 to float
  %42 = tail call float @llvm.fmuladd.f32(float %40, float 0x3FD99999A0000000, float %41)
  %43 = sitofp i32 %10 to float
  %44 = tail call float @llvm.fmuladd.f32(float %40, float 5.000000e-01, float %43)
  %45 = fmul float %40, 0xBFD3333340000000
  br label %46

46:                                               ; preds = %46, %34
  %47 = phi i64 [ 0, %34 ], [ %56, %46 ]
  %48 = getelementptr inbounds [2 x float], ptr @num_tria_vert, i64 %47, i64 0
  %49 = load float, ptr %48, align 8, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %45, float %49, float %42)
  %51 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9, i32 1, i64 %47
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = getelementptr inbounds [2 x float], ptr @num_tria_vert, i64 %47, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %45, float %53, float %44)
  %55 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9, i32 1, i64 %47, i64 1
  store float %54, ptr %55, align 8, !tbaa !34
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %58, label %46, !llvm.loop !87

58:                                               ; preds = %46
  store i32 1, ptr %24, align 8, !tbaa !88
  %59 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9, i32 2
  store ptr @num_tria_face, ptr %59, align 8, !tbaa !89
  %60 = sitofp i32 %36 to float
  %61 = tail call float @llvm.fmuladd.f32(float %40, float 0xBFD99999A0000000, float %60)
  %62 = fneg float %45
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi i64 [ 0, %58 ], [ %73, %63 ]
  %65 = getelementptr inbounds [2 x float], ptr @num_tria_vert, i64 %64, i64 0
  %66 = load float, ptr %65, align 8, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %66, float %61)
  %68 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10, i32 1, i64 %64
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = getelementptr inbounds [2 x float], ptr @num_tria_vert, i64 %64, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %45, float %70, float %44)
  %72 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10, i32 1, i64 %64, i64 1
  store float %71, ptr %72, align 8, !tbaa !34
  %73 = add nuw nsw i64 %64, 1
  %74 = icmp eq i64 %73, 3
  br i1 %74, label %75, label %63, !llvm.loop !87

75:                                               ; preds = %63
  store i32 1, ptr %25, align 8, !tbaa !88
  %76 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10, i32 2
  store ptr @num_tria_face, ptr %76, align 8, !tbaa !89
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %0)
  %77 = load i32, ptr %1, align 4, !tbaa !47
  %78 = sitofp i32 %77 to float
  %79 = fadd float %14, %78
  %80 = fptosi float %79 to i32
  store i32 %80, ptr %1, align 4, !tbaa !47
  %81 = load i32, ptr %35, align 4, !tbaa !50
  %82 = sitofp i32 %81 to float
  %83 = fsub float %82, %14
  %84 = fptosi float %83 to i32
  store i32 %84, ptr %35, align 4, !tbaa !50
  br label %86

85:                                               ; preds = %31
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %0)
  br label %86

86:                                               ; preds = %85, %75
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #15
  ret void
}

declare double @ui_get_but_val(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_draw_but_NORMAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_hsv_cursor(float noundef %0, float noundef %1) unnamed_addr #0 {
  tail call void @glPushMatrix() #15
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #15
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %3 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %4 = fmul float %3, 3.000000e+00
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %4, i32 noundef 8) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glEnable(i32 noundef 2848) #15
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %6 = fmul float %5, 3.000000e+00
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %6, i32 noundef 12) #15
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glDisable(i32 noundef 2848) #15
  tail call void @glPopMatrix() #15
  ret void
}

declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ui_block_hsv_get(ptr noundef) local_unnamed_addr #2

declare void @rgb_to_hsv_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ui_rgb_to_color_picker_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_color_picker_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare void @ui_color_picker_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ui_button_open_menu_direction(ptr noundef) local_unnamed_addr #2

declare i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @round_box_shadow_edges(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #12 {
  %6 = alloca [9 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #15
  %7 = fadd float %2, %4
  %8 = fmul float %7, 2.000000e+00
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = fcmp ogt float %8, %14
  %16 = fmul float %14, 5.000000e-01
  %17 = select i1 %15, float %16, float %7
  %18 = load i32, ptr %1, align 4, !tbaa !47
  %19 = sitofp i32 %18 to float
  %20 = sitofp i32 %12 to float
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = sitofp i32 %22 to float
  %24 = sitofp i32 %10 to float
  br label %25

25:                                               ; preds = %5, %25
  %26 = phi i64 [ 0, %5 ], [ %35, %25 ]
  %27 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %26
  %28 = load float, ptr %27, align 8, !tbaa !34
  %29 = fmul float %17, %28
  %30 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %26
  store float %29, ptr %30, align 8, !tbaa !34
  %31 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %26, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fmul float %17, %32
  %34 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %26, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 9
  br i1 %36, label %37, label %25, !llvm.loop !173

37:                                               ; preds = %25
  %38 = fsub float %19, %4
  %39 = fsub float %20, %4
  %40 = fadd float %23, %4
  %41 = fadd float %24, %4
  %42 = and i32 %3, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %37
  %45 = fadd float %38, %17
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %56, %46 ]
  %48 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %47
  %49 = load float, ptr %48, align 8, !tbaa !34
  %50 = fsub float %45, %49
  %51 = getelementptr inbounds [2 x float], ptr %0, i64 %47
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %47, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %41, %53
  %55 = getelementptr inbounds [2 x float], ptr %0, i64 %47, i64 1
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, 9
  br i1 %57, label %64, label %46, !llvm.loop !174

58:                                               ; preds = %37, %58
  %59 = phi i64 [ %62, %58 ], [ 0, %37 ]
  %60 = getelementptr inbounds [2 x float], ptr %0, i64 %59
  store float %38, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds [2 x float], ptr %0, i64 %59, i64 1
  store float %41, ptr %61, align 4, !tbaa !34
  %62 = add nuw nsw i64 %59, 1
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %64, label %58, !llvm.loop !175

64:                                               ; preds = %46, %58
  %65 = and i32 %3, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %64
  %68 = fadd float %39, %17
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %80, %69 ]
  %71 = phi i64 [ 9, %67 ], [ %81, %69 ]
  %72 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %70
  %73 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %70, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = fadd float %38, %74
  %76 = getelementptr inbounds [2 x float], ptr %0, i64 %71
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = load float, ptr %72, align 8, !tbaa !34
  %78 = fsub float %68, %77
  %79 = getelementptr inbounds [2 x float], ptr %0, i64 %71, i64 1
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = add nuw nsw i64 %70, 1
  %81 = add nuw nsw i64 %71, 1
  %82 = icmp eq i64 %80, 9
  br i1 %82, label %89, label %69, !llvm.loop !176

83:                                               ; preds = %64, %83
  %84 = phi i64 [ %87, %83 ], [ 9, %64 ]
  %85 = getelementptr inbounds [2 x float], ptr %0, i64 %84
  store float %38, ptr %85, align 4, !tbaa !34
  %86 = getelementptr inbounds [2 x float], ptr %0, i64 %84, i64 1
  store float %39, ptr %86, align 4, !tbaa !34
  %87 = add nuw nsw i64 %84, 1
  %88 = icmp eq i64 %87, 18
  br i1 %88, label %91, label %83, !llvm.loop !177

89:                                               ; preds = %69
  %90 = and i64 %81, 4294967295
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi i64 [ %90, %89 ], [ 18, %83 ]
  %93 = and i32 %3, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = fsub float %40, %17
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ 0, %95 ], [ %108, %97 ]
  %99 = phi i64 [ %92, %95 ], [ %109, %97 ]
  %100 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %98
  %101 = load float, ptr %100, align 8, !tbaa !34
  %102 = fadd float %96, %101
  %103 = getelementptr inbounds [2 x float], ptr %0, i64 %99
  store float %102, ptr %103, align 4, !tbaa !34
  %104 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %98, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = fadd float %39, %105
  %107 = getelementptr inbounds [2 x float], ptr %0, i64 %99, i64 1
  store float %106, ptr %107, align 4, !tbaa !34
  %108 = add nuw nsw i64 %98, 1
  %109 = add nuw nsw i64 %99, 1
  %110 = icmp eq i64 %108, 9
  br i1 %110, label %119, label %97, !llvm.loop !178

111:                                              ; preds = %91, %111
  %112 = phi i64 [ %117, %111 ], [ %92, %91 ]
  %113 = phi i32 [ %116, %111 ], [ 0, %91 ]
  %114 = getelementptr inbounds [2 x float], ptr %0, i64 %112
  store float %40, ptr %114, align 4, !tbaa !34
  %115 = getelementptr inbounds [2 x float], ptr %0, i64 %112, i64 1
  store float %39, ptr %115, align 4, !tbaa !34
  %116 = add nuw nsw i32 %113, 1
  %117 = add nuw nsw i64 %112, 1
  %118 = icmp eq i32 %116, 9
  br i1 %118, label %119, label %111, !llvm.loop !179

119:                                              ; preds = %97, %111
  %120 = phi i64 [ %117, %111 ], [ %109, %97 ]
  %121 = and i32 %3, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = and i64 %120, 4294967295
  br label %142

125:                                              ; preds = %119
  %126 = fsub float %41, %17
  %127 = and i64 %120, 4294967295
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ 0, %125 ], [ %139, %128 ]
  %130 = phi i64 [ %127, %125 ], [ %140, %128 ]
  %131 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %129
  %132 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %129, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !34
  %134 = fsub float %40, %133
  %135 = getelementptr inbounds [2 x float], ptr %0, i64 %130
  store float %134, ptr %135, align 4, !tbaa !34
  %136 = load float, ptr %131, align 8, !tbaa !34
  %137 = fadd float %126, %136
  %138 = getelementptr inbounds [2 x float], ptr %0, i64 %130, i64 1
  store float %137, ptr %138, align 4, !tbaa !34
  %139 = add nuw nsw i64 %129, 1
  %140 = add nuw nsw i64 %130, 1
  %141 = icmp eq i64 %139, 9
  br i1 %141, label %150, label %128, !llvm.loop !180

142:                                              ; preds = %123, %142
  %143 = phi i64 [ %124, %123 ], [ %148, %142 ]
  %144 = phi i32 [ 0, %123 ], [ %147, %142 ]
  %145 = getelementptr inbounds [2 x float], ptr %0, i64 %143
  store float %40, ptr %145, align 4, !tbaa !34
  %146 = getelementptr inbounds [2 x float], ptr %0, i64 %143, i64 1
  store float %41, ptr %146, align 4, !tbaa !34
  %147 = add nuw nsw i32 %144, 1
  %148 = add nuw nsw i64 %143, 1
  %149 = icmp eq i32 %147, 9
  br i1 %149, label %150, label %142, !llvm.loop !181

150:                                              ; preds = %128, %142
  %151 = phi i64 [ %148, %142 ], [ %140, %128 ]
  %152 = trunc i64 %151 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #15
  ret i32 %152
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

declare i64 @BLF_width_to_rstrlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_icon_draw_preview_aspect_size(float noundef, float noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 2, !44, i64 26, i64 2, !44, i64 28, i64 2, !44, i64 30, i64 2, !44}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !34, i64 28, i64 4, !34}
!47 = !{!48, !49, i64 0}
!48 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!49 = !{!"int", !36, i64 0}
!50 = !{!48, !49, i64 4}
!51 = !{!48, !49, i64 8}
!52 = !{!48, !49, i64 12}
!53 = !{!54, !49, i64 16}
!54 = !{!"uiBut", !55, i64 0, !55, i64 8, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !45, i64 32, !45, i64 34, !45, i64 36, !45, i64 38, !45, i64 40, !45, i64 42, !45, i64 44, !45, i64 46, !45, i64 48, !55, i64 56, !36, i64 64, !36, i64 192, !56, i64 592, !55, i64 608, !35, i64 616, !35, i64 620, !35, i64 624, !35, i64 628, !35, i64 632, !35, i64 636, !36, i64 640, !55, i64 648, !55, i64 656, !55, i64 664, !55, i64 672, !55, i64 680, !55, i64 688, !55, i64 696, !55, i64 704, !55, i64 712, !55, i64 720, !55, i64 728, !55, i64 736, !55, i64 744, !55, i64 752, !36, i64 760, !55, i64 768, !55, i64 776, !49, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !45, i64 794, !45, i64 796, !55, i64 800, !55, i64 808, !57, i64 816, !55, i64 840, !49, i64 848, !57, i64 856, !55, i64 880, !55, i64 888, !55, i64 896, !45, i64 904, !36, i64 906, !36, i64 907, !55, i64 912, !55, i64 920, !35, i64 928, !55, i64 936, !55, i64 944, !55, i64 952, !55, i64 960, !55, i64 968, !55, i64 976, !55, i64 984, !55, i64 992}
!55 = !{!"any pointer", !36, i64 0}
!56 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!57 = !{!"PointerRNA", !58, i64 0, !55, i64 8, !55, i64 16}
!58 = !{!"", !55, i64 0}
!59 = distinct !{!59, !39, !40}
!60 = distinct !{!60, !39, !40}
!61 = !{!54, !55, i64 992}
!62 = !{!63, !36, i64 556}
!63 = !{!"uiBlock", !55, i64 0, !55, i64 8, !64, i64 16, !55, i64 32, !55, i64 40, !64, i64 48, !64, i64 64, !55, i64 80, !64, i64 88, !36, i64 104, !36, i64 232, !56, i64 296, !35, i64 312, !49, i64 316, !55, i64 320, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !55, i64 360, !55, i64 368, !55, i64 376, !55, i64 384, !55, i64 392, !55, i64 400, !55, i64 408, !55, i64 416, !49, i64 424, !45, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !65, i64 440, !55, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !56, i64 480, !64, i64 496, !55, i64 512, !55, i64 520, !55, i64 528, !55, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !66, i64 624}
!64 = !{!"ListBase", !55, i64 0, !55, i64 8}
!65 = !{!"double", !36, i64 0}
!66 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !65, i64 32, !49, i64 40, !49, i64 44, !35, i64 48}
!67 = !{!54, !55, i64 840}
!68 = !{!54, !35, i64 632}
!69 = !{!54, !35, i64 624}
!70 = !{!54, !35, i64 628}
!71 = !{!72, !49, i64 4}
!72 = !{!"uiWidgetBase", !49, i64 0, !49, i64 4, !36, i64 8, !36, i64 296, !36, i64 584, !36, i64 872, !36, i64 873, !36, i64 874, !36, i64 875, !73, i64 880, !73, i64 1024}
!73 = !{!"uiWidgetTrias", !49, i64 0, !36, i64 4, !55, i64 136}
!74 = !{!72, !49, i64 0}
!75 = !{!72, !49, i64 880}
!76 = !{!72, !49, i64 1024}
!77 = !{!72, !36, i64 875}
!78 = !{!79, !45, i64 26}
!79 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30}
!80 = !{!79, !45, i64 28}
!81 = !{!82, !35, i64 10908}
!82 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !49, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !45, i64 8496, !45, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !64, i64 8536, !64, i64 8552, !64, i64 8568, !64, i64 8584, !64, i64 8600, !64, i64 8616, !64, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !49, i64 8912, !49, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !35, i64 8956, !35, i64 8960, !49, i64 8964, !45, i64 8968, !45, i64 8970, !35, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !83, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !49, i64 10896, !49, i64 10900, !35, i64 10904, !35, i64 10908, !49, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !84, i64 10928}
!83 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!84 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !45, i64 24, !36, i64 26}
!85 = !{!72, !36, i64 874}
!86 = !{!72, !36, i64 873}
!87 = distinct !{!87, !39, !40}
!88 = !{!73, !49, i64 0}
!89 = !{!73, !55, i64 136}
!90 = !{!72, !36, i64 872}
!91 = !{!79, !45, i64 24}
!92 = !{!79, !45, i64 30}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39, !40}
!95 = distinct !{!95, !39, !40}
!96 = distinct !{!96, !39, !40}
!97 = distinct !{!97, !39, !40}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
!100 = !{!54, !36, i64 789}
!101 = !{!54, !49, i64 24}
!102 = !{!103, !55, i64 0}
!103 = !{!"uiWidgetType", !55, i64 0, !55, i64 8, !79, i64 16, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72}
!104 = !{!103, !55, i64 8}
!105 = !{!103, !55, i64 48}
!106 = !{!103, !55, i64 56}
!107 = !{!103, !55, i64 64}
!108 = !{!103, !55, i64 72}
!109 = !{!63, !49, i64 424}
!110 = !{!54, !49, i64 20}
!111 = !{!54, !55, i64 56}
!112 = !{!54, !49, i64 784}
!113 = !{!82, !45, i64 8948}
!114 = !{!63, !55, i64 400}
!115 = !{!54, !55, i64 608}
!116 = !{!63, !55, i64 408}
!117 = !{!63, !55, i64 416}
!118 = !{!82, !45, i64 8938}
!119 = distinct !{!119, !39, !40}
!120 = !{!54, !55, i64 936}
!121 = !{!54, !55, i64 952}
!122 = !{i64 0, i64 4, !123, i64 4, i64 4, !123, i64 8, i64 4, !123, i64 12, i64 4, !123}
!123 = !{!49, !49, i64 0}
!124 = !{!54, !45, i64 796}
!125 = !{!63, !35, i64 312}
!126 = !{!54, !45, i64 44}
!127 = !{!128, !45, i64 4}
!128 = !{!"uiFontStyle", !45, i64 0, !45, i64 2, !45, i64 4, !36, i64 6, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !35, i64 24, !35, i64 28}
!129 = !{!128, !45, i64 0}
!130 = !{!54, !45, i64 42}
!131 = !{!54, !45, i64 38}
!132 = distinct !{!132, !39, !40}
!133 = !{!82, !49, i64 8524}
!134 = !{!128, !45, i64 22}
!135 = !{!54, !45, i64 48}
!136 = !{!54, !45, i64 46}
!137 = distinct !{!137, !39, !40}
!138 = !{!54, !36, i64 906}
!139 = !{!63, !36, i64 430}
!140 = !{!82, !45, i64 10926}
!141 = !{!63, !49, i64 664}
!142 = !{!143, !45, i64 616}
!143 = !{!"bTheme", !55, i64 0, !55, i64 8, !36, i64 16, !144, i64 48, !147, i64 960, !147, i64 1680, !147, i64 2400, !147, i64 3120, !147, i64 3840, !147, i64 4560, !147, i64 5280, !147, i64 6000, !147, i64 6720, !147, i64 7440, !147, i64 8160, !147, i64 8880, !147, i64 9600, !147, i64 10320, !147, i64 11040, !147, i64 11760, !147, i64 12480, !36, i64 13200, !49, i64 13520, !49, i64 13524}
!144 = !{!"ThemeUI", !79, i64 0, !79, i64 32, !79, i64 64, !79, i64 96, !79, i64 128, !79, i64 160, !79, i64 192, !79, i64 224, !79, i64 256, !79, i64 288, !79, i64 320, !79, i64 352, !79, i64 384, !79, i64 416, !79, i64 448, !79, i64 480, !79, i64 512, !79, i64 544, !145, i64 576, !146, i64 608, !36, i64 624, !35, i64 628, !45, i64 632, !36, i64 634, !36, i64 640, !35, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!145 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !35, i64 24, !35, i64 28}
!146 = !{!"uiPanelColors", !36, i64 0, !36, i64 4, !45, i64 8, !45, i64 10, !49, i64 12}
!147 = !{!"ThemeSpace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !146, i64 80, !148, i64 96, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 421, !36, i64 422, !36, i64 423, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 541, !36, i64 545, !36, i64 549, !36, i64 553, !36, i64 557, !36, i64 561, !36, i64 565, !36, i64 569, !36, i64 573, !36, i64 577, !36, i64 581, !36, i64 584, !36, i64 588, !36, i64 592, !36, i64 596, !36, i64 600, !36, i64 604, !36, i64 608, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !36, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !36, i64 696, !36, i64 700, !36, i64 704, !36, i64 708, !36, i64 712, !36, i64 716}
!148 = !{!"uiGradientColors", !36, i64 0, !36, i64 4, !49, i64 8, !49, i64 12}
!149 = !{!143, !45, i64 618}
!150 = !{!143, !45, i64 620}
!151 = !{!82, !45, i64 10922}
!152 = distinct !{!152, !39, !40}
!153 = !{!143, !35, i64 676}
!154 = distinct !{!154, !39, !40}
!155 = !{i64 0, i64 4, !123, i64 4, i64 4, !123, i64 8, i64 4, !123}
!156 = distinct !{!156, !39, !40}
!157 = distinct !{!157, !39, !40}
!158 = distinct !{!158, !39, !40}
!159 = distinct !{!159, !39, !40}
!160 = distinct !{!160, !39, !40}
!161 = !{!54, !35, i64 636}
!162 = !{!54, !55, i64 912}
!163 = !{!145, !35, i64 24}
!164 = !{!103, !45, i64 42}
!165 = !{!103, !45, i64 44}
!166 = distinct !{!166, !39, !40}
!167 = distinct !{!167, !39, !40}
!168 = !{!54, !55, i64 816}
!169 = !{!170, !49, i64 152}
!170 = !{!"Palette", !171, i64 0, !64, i64 120, !64, i64 136, !49, i64 152, !49, i64 156}
!171 = !{!"ID", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !36, i64 32, !45, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !55, i64 112}
!172 = !{!63, !35, i64 672}
!173 = distinct !{!173, !39, !40}
!174 = distinct !{!174, !39, !40}
!175 = distinct !{!175, !39, !40}
!176 = distinct !{!176, !39, !40}
!177 = distinct !{!177, !39, !40}
!178 = distinct !{!178, !39, !40}
!179 = distinct !{!179, !39, !40}
!180 = distinct !{!180, !39, !40}
!181 = distinct !{!181, !39, !40}
