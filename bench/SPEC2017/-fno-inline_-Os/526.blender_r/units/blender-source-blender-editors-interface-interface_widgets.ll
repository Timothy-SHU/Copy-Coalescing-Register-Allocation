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
@scroll_circle_vert = internal constant [16 x [2 x float]] [[2 x float] [float 0x3FD87DE500000000, float 0x3FED906AC0000000], [2 x float] [float 0x3EB0C6F7A0000000, float 1.000000e+00], [2 x float] [float 0xBFD87DE0E0000000, float 0x3FED906CC0000000], [2 x float] [float 0xBFE6A09EE0000000, float 0x3FE6A09EE0000000], [2 x float] [float 0xBFED906AC0000000, float 0x3FD87DE500000000], [2 x float] [float -1.000000e+00, float 0.000000e+00], [2 x float] [float 0xBFED906CC0000000, float 0xBFD87DE500000000], [2 x float] [float 0xBFE6A09EE0000000, float 0xBFE6A09EE0000000], [2 x float] [float 0xBFD87DE0E0000000, float 0xBFED906CC0000000], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float 0x3FD87DE500000000, float 0xBFED906CC0000000], [2 x float] [float 0x3FE6A09EE0000000, float 0xBFE6A09EE0000000], [2 x float] [float 0x3FED906CC0000000, float 0xBFD87DE500000000], [2 x float] [float 1.000000e+00, float -0.000000e+00], [2 x float] [float 0x3FED906CC0000000, float 0x3FD87DE0E0000000], [2 x float] [float 0x3FE6A09EE0000000, float 0x3FE6A09EE0000000]], align 16
@scroll_circle_face = internal constant [14 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 2, i32 0, i32 3], [3 x i32] [i32 3, i32 0, i32 15], [3 x i32] [i32 3, i32 15, i32 4], [3 x i32] [i32 4, i32 15, i32 14], [3 x i32] [i32 4, i32 14, i32 5], [3 x i32] [i32 5, i32 14, i32 13], [3 x i32] [i32 5, i32 13, i32 6], [3 x i32] [i32 6, i32 13, i32 12], [3 x i32] [i32 6, i32 12, i32 7], [3 x i32] [i32 7, i32 12, i32 11], [3 x i32] [i32 7, i32 11, i32 8], [3 x i32] [i32 8, i32 11, i32 10], [3 x i32] [i32 8, i32 10, i32 9]], align 16
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@__const.widget_draw_icon.rgb = private unnamed_addr constant [3 x float] [float 1.250000e+00, float 1.250000e+00, float 1.250000e+00], align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@widget_type.wt = internal global %struct.uiWidgetType zeroinitializer, align 8
@check_tria_vert = internal unnamed_addr constant [6 x [2 x float]] [[2 x float] [float 0xBFE283B820000000, float 0x3FD03732A0000000], [2 x float] [float 0xBFD9233160000000, float 0x3FDA6B3780000000], [2 x float] [float 0xBF715F02C0000000, float 0xBFD506FAC0000000], [2 x float] [float 0xBF68958DA0000000, float 0x3FA1926420000000], [2 x float] [float 0x3FF0E28FE0000000, float 0x3FEBABFBA0000000], [2 x float] [float 0x3FEBB99D40000000, float 0x3FF06E2980000000]], align 16
@check_tria_face = internal constant [4 x [3 x i32]] [[3 x i32] [i32 3, i32 2, i32 4], [3 x i32] [i32 3, i32 4, i32 5], [3 x i32] [i32 1, i32 0, i32 3], [3 x i32] [i32 0, i32 2, i32 3]], align 16
@num_tria_vert = internal constant [3 x [2 x float]] [[2 x float] [float 0xBFD6886E00000000, float 0x3FE10B1DE0000000], [2 x float] [float 0xBFD6886E00000000, float 0xBFE193F8E0000000], [2 x float] [float 0x3FD51EB860000000, float 0xBF811B60A0000000]], align 16
@num_tria_face = internal constant [1 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2]], align 4
@menu_tria_vert = internal unnamed_addr constant [6 x [2 x float]] [[2 x float] [float 0xBFD51EB860000000, float 0x3FC47AE140000000], [2 x float] [float 0x3FD51EB860000000, float 0x3FC47AE140000000], [2 x float] [float 0.000000e+00, float 0x3FEA3D70A0000000], [2 x float] [float 0.000000e+00, float 0xBFEA3D70A0000000], [2 x float] [float 0xBFD51EB860000000, float 0xBFC47AE140000000], [2 x float] [float 0x3FD51EB860000000, float 0xBFC47AE140000000]], align 16
@menu_tria_face = internal constant [2 x [3 x i32]] [[3 x i32] [i32 2, i32 0, i32 1], [3 x i32] [i32 3, i32 5, i32 4]], align 16
@wcol_tmp = internal global %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"\80\80\80\FF", [4 x i8] c"ddd\FF", [4 x i8] c"\19\19\19\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 0, i16 0, i16 0 }, align 2
@ui_widget_color_disabled.wcol_theme_s = internal global %struct.uiWidgetColors zeroinitializer, align 2
@switch.table.widget_roundbox_set = private unnamed_addr constant [12 x i32] [i32 12, i32 6, i32 4, i32 9, i32 8, i32 0, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_anti_tria(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x [2 x float]], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  tail call void @glEnable(i32 noundef 3042) #19
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %8) #19
  %14 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, 1.250000e-01
  store float %16, ptr %14, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %8) #19
  call void @glEnableClientState(i32 noundef 32884) #19
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %7) #19
  br label %17

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 0, %6 ], [ %25, %17 ]
  %19 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %18
  %20 = load float, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %18, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  call void @glTranslatef(float noundef %20, float noundef %22, float noundef 0.000000e+00) #19
  call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef 3) #19
  %23 = fneg float %20
  %24 = fneg float %22
  call void @glTranslatef(float noundef %23, float noundef %24, float noundef 0.000000e+00) #19
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %17, !llvm.loop !38

27:                                               ; preds = %17
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @glDisable(i32 noundef 3042) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_anti_roundbox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  tail call void @glEnable(i32 noundef 3042) #19
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %8) #19
  %9 = icmp eq i8 %6, 0
  %10 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %11 = load float, ptr %10, align 4
  %12 = fmul float %11, 1.250000e-01
  %13 = select i1 %9, float %12, float 6.250000e-02
  %14 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %13, ptr %14, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %8) #19
  br label %15

15:                                               ; preds = %7, %15
  %16 = phi i64 [ 0, %7 ], [ %23, %15 ]
  %17 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %16
  %18 = load float, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %16, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  call void @glTranslatef(float noundef %18, float noundef %20, float noundef 0.000000e+00) #19
  call void @uiDrawBox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) #19
  %21 = fneg float %18
  %22 = fneg float %20
  call void @glTranslatef(float noundef %21, float noundef %22, float noundef 0.000000e+00) #19
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, 8
  br i1 %24, label %25, label %15, !llvm.loop !40

25:                                               ; preds = %15
  call void @glDisable(i32 noundef 3042) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  ret void
}

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_widget_color_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(32) @wcol_toggle, i64 32, i1 false), !tbaa.struct !41
  %2 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tool, i64 32, i1 false), !tbaa.struct !41
  %3 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) @wcol_text, i64 32, i1 false), !tbaa.struct !41
  %4 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 2 dereferenceable(32) @wcol_radio, i64 32, i1 false), !tbaa.struct !41
  %5 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 2 dereferenceable(32) @wcol_option, i64 32, i1 false), !tbaa.struct !41
  %6 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 2 dereferenceable(32) @wcol_toggle, i64 32, i1 false), !tbaa.struct !41
  %7 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 2 dereferenceable(32) @wcol_num, i64 32, i1 false), !tbaa.struct !41
  %8 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 2 dereferenceable(32) @wcol_numslider, i64 32, i1 false), !tbaa.struct !41
  %9 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 2 dereferenceable(32) @wcol_menu, i64 32, i1 false), !tbaa.struct !41
  %10 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 2 dereferenceable(32) @wcol_pulldown, i64 32, i1 false), !tbaa.struct !41
  %11 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %11, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tooltip, i64 32, i1 false), !tbaa.struct !41
  %12 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %12, ptr noundef nonnull align 2 dereferenceable(32) @wcol_pie_menu, i64 32, i1 false), !tbaa.struct !41
  %13 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %13, ptr noundef nonnull align 2 dereferenceable(32) @wcol_tooltip, i64 32, i1 false), !tbaa.struct !41
  %14 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull align 2 dereferenceable(32) @wcol_menu_item, i64 32, i1 false), !tbaa.struct !41
  %15 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 2 dereferenceable(32) @wcol_box, i64 32, i1 false), !tbaa.struct !41
  %16 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %16, ptr noundef nonnull align 2 dereferenceable(32) @wcol_scroll, i64 32, i1 false), !tbaa.struct !41
  %17 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 2 dereferenceable(32) @wcol_list_item, i64 32, i1 false), !tbaa.struct !41
  %18 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %18, ptr noundef nonnull align 2 dereferenceable(32) @wcol_progress, i64 32, i1 false), !tbaa.struct !41
  %19 = getelementptr inbounds %struct.ThemeUI, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) @wcol_state_colors, i64 32, i1 false), !tbaa.struct !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ui_hsvcircle_vals_from_pos(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
  %6 = alloca [2 x float], align 4
  %7 = tail call fastcc float @BLI_rcti_cent_x_fl(ptr noundef %2) #20
  %8 = tail call fastcc float @BLI_rcti_cent_y_fl(ptr noundef %2) #20
  %9 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %11 = tail call fastcc i32 @min_ii(i32 noundef %9, i32 noundef %10) #20
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %14 = fsub float %3, %7
  store float %14, ptr %6, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %6, i64 1
  %16 = fsub float %4, %8
  store float %16, ptr %15, align 4, !tbaa !34
  %17 = call fastcc float @len_squared_v2(ptr noundef nonnull %6) #20
  %18 = fmul float %13, %13
  %19 = fcmp olt float %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = tail call float @sqrtf(float noundef %17) #19
  %22 = fdiv float %21, %13
  br label %23

23:                                               ; preds = %5, %20
  %24 = phi float [ %22, %20 ], [ 1.000000e+00, %5 ]
  store float %24, ptr %1, align 4, !tbaa !34
  %25 = tail call float @atan2f(float noundef %14, float noundef %16) #19
  %26 = fdiv float %25, 0x401921FB60000000
  %27 = fadd float %26, 5.000000e-01
  store float %27, ptr %0, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rcti_cent_x_fl(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !46 {
  %2 = load i32, ptr %0, align 4, !tbaa !47
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = add nsw i32 %4, %2
  %6 = sitofp i32 %5 to float
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rcti_cent_y_fl(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = add nsw i32 %5, %3
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, 5.000000e-01
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !54 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !55 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = load i32, ptr %0, align 4, !tbaa !47
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !57 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @ui_hsvcircle_pos_from_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #9 {
  %6 = tail call fastcc float @BLI_rcti_cent_x_fl(ptr noundef %1) #20
  %7 = tail call fastcc float @BLI_rcti_cent_y_fl(ptr noundef %1) #20
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #20
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = and i32 %12, 8388608
  %14 = icmp ne i32 %13, 0
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  br i1 %17, label %20, label %24

20:                                               ; preds = %5
  %21 = fsub float 1.000000e+00, %19
  %22 = tail call float @powf(float noundef %21, float noundef 3.000000e+00) #19
  %23 = fsub float 1.000000e+00, %22
  br label %24

24:                                               ; preds = %5, %20
  %25 = phi float [ %23, %20 ], [ %19, %5 ]
  %26 = tail call fastcc i32 @min_ii(i32 noundef %8, i32 noundef %9) #20
  %27 = fcmp olt float %25, 0.000000e+00
  %28 = fcmp ogt float %25, 1.000000e+00
  %29 = select i1 %28, float 1.000000e+00, float %25
  %30 = select i1 %27, float 0.000000e+00, float %29
  %31 = tail call float @llvm.fmuladd.f32(float %10, float 0x401921FB60000000, float 0x3FF921FB60000000)
  %32 = sitofp i32 %26 to float
  %33 = fmul float %32, 5.000000e-01
  %34 = fmul float %30, %33
  %35 = tail call float @cosf(float %31)
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %34, float %6)
  store float %36, ptr %3, align 4, !tbaa !34
  %37 = tail call float @sinf(float %31)
  %38 = fneg float %37
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %34, float %7)
  store float %39, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_gradient(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [4 x [3 x float]], align 16
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #18
  tail call void @glShadeModel(i32 noundef 7425) #19
  switch i32 %2, label %66 [
    i32 0, label %12
    i32 1, label %24
    i32 2, label %36
    i32 3, label %48
    i32 4, label %54
    i32 5, label %60
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %15 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %17 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FD54FDF40000000, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %19 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FE54FDF40000000, float noundef 0.000000e+00, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #19
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %22 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  br label %72

24:                                               ; preds = %4
  %25 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %26) #19
  %27 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %28 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %29 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0x3FD54FDF40000000, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #19
  %30 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %31 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 0x3FE54FDF40000000, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #19
  %33 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %35 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef %9, float noundef 1.000000e+00, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #19
  br label %72

36:                                               ; preds = %4
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %38 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %37, ptr noundef nonnull %38) #19
  %39 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0x3FD54FDF40000000, float noundef %11, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #19
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %43 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %44 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 0x3FE54FDF40000000, float noundef %11, ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #19
  %45 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %47 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %11, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #19
  br label %72

48:                                               ; preds = %4
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  call void @hsv_to_rgb(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %49, ptr noundef nonnull %50) #19
  %51 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %51, ptr noundef nonnull %6) #20
  %52 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %6) #20
  %53 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %6) #20
  br label %72

54:                                               ; preds = %4
  %55 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %56 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %57) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %55) #20
  %58 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %55) #20
  %59 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %55) #20
  br label %72

60:                                               ; preds = %4
  %61 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %62 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %63 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %63) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %61) #20
  %64 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %64, ptr noundef nonnull %61) #20
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %61) #20
  br label %72

66:                                               ; preds = %4
  %67 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %68 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %69 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  call void @hsv_to_rgb(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %67) #20
  %70 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %70, ptr noundef nonnull %67) #20
  %71 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %67) #20
  br label %72

72:                                               ; preds = %66, %60, %54, %48, %36, %24, %12
  %73 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %74 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1
  %75 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %76 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2
  %77 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %78 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3
  %79 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %80 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  %81 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %82 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  %83 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %84 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %85 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %86 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  %87 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %88 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 0, i64 1
  %89 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 0, i64 2
  br label %90

90:                                               ; preds = %72, %141
  %91 = phi float [ 0.000000e+00, %72 ], [ %92, %141 ]
  %92 = fadd float %91, 0x3F95555560000000
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %73, ptr noundef nonnull %74) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %75, ptr noundef nonnull %76) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %77, ptr noundef nonnull %78) #20
  switch i32 %2, label %99 [
    i32 0, label %93
    i32 1, label %94
    i32 2, label %95
    i32 3, label %96
    i32 4, label %97
    i32 5, label %98
  ]

93:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %7, float noundef 0.000000e+00, float noundef %91, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %84) #19
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FD54FDF40000000, float noundef %91, ptr noundef nonnull %74, ptr noundef nonnull %81, ptr noundef nonnull %82) #19
  call void @hsv_to_rgb(float noundef %7, float noundef 0x3FE54FDF40000000, float noundef %91, ptr noundef nonnull %76, ptr noundef nonnull %79, ptr noundef nonnull %80) #19
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef %91, ptr noundef nonnull %78, ptr noundef nonnull %85, ptr noundef nonnull %86) #19
  br label %99

94:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %92, float noundef %9, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %84) #19
  call void @hsv_to_rgb(float noundef %92, float noundef %9, float noundef 0x3FD54FDF40000000, ptr noundef nonnull %74, ptr noundef nonnull %81, ptr noundef nonnull %82) #19
  call void @hsv_to_rgb(float noundef %92, float noundef %9, float noundef 0x3FE54FDF40000000, ptr noundef nonnull %76, ptr noundef nonnull %79, ptr noundef nonnull %80) #19
  call void @hsv_to_rgb(float noundef %92, float noundef %9, float noundef 1.000000e+00, ptr noundef nonnull %78, ptr noundef nonnull %85, ptr noundef nonnull %86) #19
  br label %99

95:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %92, float noundef 0.000000e+00, float noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %84) #19
  call void @hsv_to_rgb(float noundef %92, float noundef 0x3FD54FDF40000000, float noundef %11, ptr noundef nonnull %74, ptr noundef nonnull %81, ptr noundef nonnull %82) #19
  call void @hsv_to_rgb(float noundef %92, float noundef 0x3FE54FDF40000000, float noundef %11, ptr noundef nonnull %76, ptr noundef nonnull %79, ptr noundef nonnull %80) #19
  call void @hsv_to_rgb(float noundef %92, float noundef 1.000000e+00, float noundef %11, ptr noundef nonnull %78, ptr noundef nonnull %85, ptr noundef nonnull %86) #19
  br label %99

96:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %92, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %84) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %6) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef nonnull %6) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %6) #20
  br label %99

97:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %7, float noundef %91, float noundef 1.000000e+00, ptr noundef nonnull %74, ptr noundef nonnull %81, ptr noundef nonnull %82) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %74) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef nonnull %74) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %74) #20
  br label %99

98:                                               ; preds = %90
  call void @hsv_to_rgb(float noundef %7, float noundef 1.000000e+00, float noundef %91, ptr noundef nonnull %76, ptr noundef nonnull %79, ptr noundef nonnull %80) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %76) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %76) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %76) #20
  br label %99

99:                                               ; preds = %90, %98, %97, %96, %95, %94, %93
  %100 = load i32, ptr %0, align 4, !tbaa !47
  %101 = sitofp i32 %100 to float
  %102 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %0) #20
  %103 = sitofp i32 %102 to float
  %104 = call float @llvm.fmuladd.f32(float %91, float %103, float %101)
  %105 = call float @llvm.fmuladd.f32(float %92, float %103, float %101)
  %106 = load i32, ptr %87, align 4, !tbaa !52
  %107 = sitofp i32 %106 to float
  %108 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %0) #20
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %109, 3.000000e+00
  call void @glBegin(i32 noundef 7) #19
  %111 = load float, ptr %5, align 16, !tbaa !34
  %112 = load float, ptr %88, align 4, !tbaa !34
  %113 = load float, ptr %89, align 8, !tbaa !34
  br label %114

114:                                              ; preds = %99, %114
  %115 = phi float [ %113, %99 ], [ %139, %114 ]
  %116 = phi float [ %112, %99 ], [ %137, %114 ]
  %117 = phi float [ %111, %99 ], [ %135, %114 ]
  %118 = phi i64 [ 0, %99 ], [ %126, %114 ]
  %119 = phi float [ %107, %99 ], [ %133, %114 ]
  call void @glColor4f(float noundef %117, float noundef %116, float noundef %115, float noundef %3) #19
  call void @glVertex2f(float noundef %104, float noundef %119) #19
  %120 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %118
  %121 = load float, ptr %120, align 4, !tbaa !34
  %122 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %118, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %118, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !34
  call void @glColor4f(float noundef %121, float noundef %123, float noundef %125, float noundef %3) #19
  call void @glVertex2f(float noundef %105, float noundef %119) #19
  %126 = add nuw nsw i64 %118, 1
  %127 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %126, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !34
  %131 = getelementptr inbounds [4 x [3 x float]], ptr %6, i64 0, i64 %126, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !34
  call void @glColor4f(float noundef %128, float noundef %130, float noundef %132, float noundef %3) #19
  %133 = fadd float %110, %119
  call void @glVertex2f(float noundef %105, float noundef %133) #19
  %134 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %126
  %135 = load float, ptr %134, align 4, !tbaa !34
  %136 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %126, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !34
  %138 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %126, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !34
  call void @glColor4f(float noundef %135, float noundef %137, float noundef %139, float noundef %3) #19
  call void @glVertex2f(float noundef %104, float noundef %133) #19
  %140 = icmp eq i64 %126, 3
  br i1 %140, label %141, label %114, !llvm.loop !64

141:                                              ; preds = %114
  call void @glEnd() #19
  %142 = fcmp olt float %92, 0x3FEFF7CEE0000000
  br i1 %142, label %90, label %143, !llvm.loop !65

143:                                              ; preds = %141
  call void @glShadeModel(i32 noundef 7424) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ui_color_picker_use_display_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 51
  %5 = load i8, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %7) #19
  %11 = icmp eq i32 %10, 30
  %12 = select i1 %11, i8 0, i8 %5
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i8 [ %5, %1 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ui_hsvcube_pos_from_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %7 = load float, ptr %6, align 8, !tbaa !74
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
  %37 = load float, ptr %36, align 8, !tbaa !75
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %40 = load float, ptr %39, align 4, !tbaa !76
  %41 = fsub float %40, %37
  %42 = fdiv float %38, %41
  br label %43

43:                                               ; preds = %5, %33, %30, %27, %24, %22, %18, %14, %9
  %44 = phi float [ 0.000000e+00, %5 ], [ 5.000000e-01, %33 ], [ 5.000000e-01, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %22 ], [ %19, %18 ], [ %15, %14 ], [ %11, %9 ]
  %45 = phi float [ 0.000000e+00, %5 ], [ %42, %33 ], [ %32, %30 ], [ 5.000000e-01, %27 ], [ 5.000000e-01, %24 ], [ 5.000000e-01, %22 ], [ %21, %18 ], [ %17, %14 ], [ %13, %9 ]
  %46 = load i32, ptr %1, align 4, !tbaa !47
  %47 = sitofp i32 %46 to float
  %48 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #20
  %49 = sitofp i32 %48 to float
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %49, float %47)
  store float %50, ptr %3, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !52
  %53 = sitofp i32 %52 to float
  %54 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #20
  %55 = sitofp i32 %54 to float
  %56 = tail call float @llvm.fmuladd.f32(float %45, float %55, float %53)
  store float %56, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_link_bezier_points(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = sitofp i32 %5 to float
  %7 = load <2 x i32>, ptr %0, align 4, !tbaa !77
  %8 = sitofp <2 x i32> %7 to <2 x float>
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = sitofp i32 %10 to float
  %12 = extractelement <2 x float> %8, i64 0
  %13 = extractelement <2 x float> %8, i64 1
  %14 = fsub float %12, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fmul float %15, 5.000000e-01
  %17 = fadd float %16, %12
  %18 = fsub float %13, %16
  tail call void @BKE_curve_forward_diff_bezier(float noundef %12, float noundef %17, float noundef %18, float noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef 8) #19
  %19 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %6, float noundef %6, float noundef %11, float noundef %11, ptr noundef nonnull %19, i32 noundef %2, i32 noundef 8) #19
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_link_bezier(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [25 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #18
  %3 = call zeroext i8 @ui_link_bezier_points(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 24) #20
  call void @glEnable(i32 noundef 3042) #19
  call void @glEnable(i32 noundef 2848) #19
  call void @glEnableClientState(i32 noundef 32884) #19
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %2) #19
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 25) #19
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @glDisable(i32 noundef 3042) #19
  call void @glDisable(i32 noundef 2848) #19
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiWidgetScrollDraw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #20
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %11 = load <2 x i16>, ptr %10, align 2, !tbaa !43
  %12 = shufflevector <2 x i16> %11, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %12, ptr %10, align 2, !tbaa !43
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi i8 [ 1, %9 ], [ 0, %4 ]
  %15 = phi i32 [ %7, %9 ], [ %6, %4 ]
  %16 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 8
  store i8 %14, ptr %16, align 1
  %17 = sitofp i32 %15 to float
  %18 = fmul float %17, 5.000000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef %1, float noundef %18) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  %19 = call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %87, label %21

21:                                               ; preds = %13
  %22 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %87, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %26 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 8
  %27 = load <2 x i16>, ptr %25, align 2, !tbaa !43
  %28 = shufflevector <2 x i16> %27, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %28, ptr %25, align 2, !tbaa !43
  %29 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3
  call fastcc void @copy_v4_v4_char(ptr noundef nonnull %29, ptr noundef nonnull %30) #20
  %31 = load i16, ptr %25, align 2, !tbaa !78
  %32 = load i16, ptr %26, align 2, !tbaa !80
  %33 = icmp sgt i16 %31, %32
  %34 = call i16 @llvm.smax.i16(i16 %31, i16 %32)
  %35 = select i1 %33, ptr %25, ptr %26
  %36 = add i16 %34, 20
  store i16 %36, ptr %35, align 2, !tbaa !43
  %37 = and i32 %3, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %24
  %40 = load i8, ptr %29, align 2, !tbaa !42
  %41 = icmp ugt i8 %40, -7
  %42 = add i8 %40, 5
  %43 = select i1 %41, i8 -1, i8 %42
  store i8 %43, ptr %29, align 2, !tbaa !42
  %44 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = icmp ugt i8 %45, -7
  %47 = add i8 %45, 5
  %48 = select i1 %46, i8 -1, i8 %47
  store i8 %48, ptr %44, align 1, !tbaa !42
  %49 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 2
  %50 = load i8, ptr %49, align 2, !tbaa !42
  %51 = icmp ugt i8 %50, -7
  %52 = add i8 %50, 5
  %53 = select i1 %51, i8 -1, i8 %52
  store i8 %53, ptr %49, align 2, !tbaa !42
  br label %54

54:                                               ; preds = %39, %24
  %55 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 7
  store i8 0, ptr %55, align 2, !tbaa !81
  %56 = and i32 %3, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  store i8 0, ptr %59, align 1, !tbaa !84
  br label %60

60:                                               ; preds = %58, %54
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef %2, float noundef %18) #20
  %61 = and i32 %3, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr %30, align 2, !tbaa !42
  %65 = icmp ugt i8 %64, 48
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = add i8 %64, -48
  store i8 %67, ptr %30, align 2, !tbaa !42
  br label %68

68:                                               ; preds = %66, %63
  %69 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !42
  %71 = icmp ugt i8 %70, 48
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = add i8 %70, -48
  store i8 %73, ptr %69, align 1, !tbaa !42
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 2
  %76 = load i8, ptr %75, align 2, !tbaa !42
  %77 = icmp ugt i8 %76, 48
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = add i8 %76, -48
  store i8 %79, ptr %75, align 2, !tbaa !42
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 3, i64 3
  store i8 -1, ptr %81, align 1, !tbaa !42
  %82 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  %83 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 10
  %84 = select i1 %8, i8 108, i8 98
  %85 = select i1 %8, i8 114, i8 116
  call fastcc void @widget_scroll_circle(ptr noundef nonnull %82, ptr noundef %2, i8 noundef zeroext %84) #20
  call fastcc void @widget_scroll_circle(ptr noundef nonnull %83, ptr noundef %2, i8 noundef zeroext %85) #20
  br label %86

86:                                               ; preds = %80, %60
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef nonnull %0) #20
  br label %87

87:                                               ; preds = %86, %13, %21
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @widget_init(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !86
  store i32 0, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10
  store i32 0, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 5
  store i32 16843009, ptr %5, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @round_box_edges(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #12 !PGOFuncName !90 {
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %6 = fsub float %3, %5
  tail call fastcc void @round_box__edges(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3, float noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widgetbase_draw(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = alloca [36 x [2 x float]], align 16
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [144 x i8], align 16
  %7 = alloca [74 x [2 x float]], align 16
  %8 = alloca [72 x [2 x float]], align 16
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  tail call void @glEnable(i32 noundef 3042) #19
  %12 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %95, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 6
  %17 = load i16, ptr %16, align 2, !tbaa !97
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 9
  %21 = load i16, ptr %20, align 2, !tbaa !98
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  br i1 %22, label %68, label %24

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %3) #18
  tail call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #19
  tail call void @glEnableClientState(i32 noundef 32884) #19
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %23) #19
  %25 = load i32, ptr %0, align 8, !tbaa !87
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %25) #19
  tail call void @glEnable(i32 noundef 2882) #19
  tail call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #19
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #19
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %23) #19
  %26 = load i32, ptr %0, align 8, !tbaa !87
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %26) #19
  tail call void @glDisable(i32 noundef 2882) #19
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #19
  %27 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %27) #19
  %28 = load i32, ptr %0, align 8, !tbaa !87
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %38, %32 ]
  %34 = phi float [ 0.000000e+00, %30 ], [ %37, %32 ]
  %35 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %33
  %36 = load float, ptr %35, align 8, !tbaa !34
  %37 = fadd float %34, %36
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %31
  br i1 %39, label %40, label %32, !llvm.loop !99

40:                                               ; preds = %32, %24
  %41 = phi float [ 0.000000e+00, %24 ], [ %37, %32 ]
  %42 = sitofp i32 %28 to float
  %43 = fdiv float %41, %42
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %23) #19
  %44 = load i32, ptr %0, align 8, !tbaa !87
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %44) #19
  %45 = load i8, ptr %27, align 2, !tbaa !42
  %46 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !42
  %48 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  %49 = load i8, ptr %48, align 2, !tbaa !42
  tail call void @glColor4ub(i8 noundef zeroext %45, i8 noundef zeroext %47, i8 noundef zeroext %49, i8 noundef zeroext -1) #19
  %50 = load i32, ptr %0, align 8, !tbaa !87
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %40
  %53 = zext nneg i32 %50 to i64
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %64, %54 ]
  %56 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %55
  %57 = load float, ptr %56, align 8, !tbaa !34
  %58 = fcmp olt float %57, %43
  %59 = select i1 %58, float %57, float %43
  %60 = getelementptr inbounds [36 x [2 x float]], ptr %3, i64 0, i64 %55
  store float %59, ptr %60, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %55, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds [36 x [2 x float]], ptr %3, i64 0, i64 %55, i64 1
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = add nuw nsw i64 %55, 1
  %65 = icmp eq i64 %64, %53
  br i1 %65, label %66, label %54, !llvm.loop !100

66:                                               ; preds = %54, %40
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %3) #19
  %67 = load i32, ptr %0, align 8, !tbaa !87
  call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %67) #19
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %3) #18
  br label %95

68:                                               ; preds = %19
  %69 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %69) #19
  tail call void @glEnableClientState(i32 noundef 32884) #19
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %23) #19
  %70 = load i32, ptr %0, align 8, !tbaa !87
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %70) #19
  tail call void @glDisableClientState(i32 noundef 32884) #19
  br label %95

71:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #18
  %72 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  %73 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %74 = load i16, ptr %73, align 2, !tbaa !78
  %75 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 8
  %76 = load i16, ptr %75, align 2, !tbaa !80
  call fastcc void @shadecolors4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %72, i16 noundef signext %74, i16 noundef signext %76) #20
  tail call void @glShadeModel(i32 noundef 7425) #19
  %77 = load i32, ptr %0, align 8, !tbaa !87
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 8
  %81 = load i8, ptr %80, align 1, !tbaa !101
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %77 to i64
  br label %84

84:                                               ; preds = %79, %84
  %85 = phi i64 [ 0, %79 ], [ %89, %84 ]
  %86 = phi ptr [ %6, %79 ], [ %90, %84 ]
  %87 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %85, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !34
  call fastcc void @round_box_shade_col4_r(ptr noundef nonnull %86, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %88) #20
  %89 = add nuw nsw i64 %85, 1
  %90 = getelementptr inbounds i8, ptr %86, i64 4
  %91 = icmp eq i64 %89, %83
  br i1 %91, label %92, label %84, !llvm.loop !102

92:                                               ; preds = %84, %71
  tail call void @glEnableClientState(i32 noundef 32884) #19
  tail call void @glEnableClientState(i32 noundef 32886) #19
  %93 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %93) #19
  call void @glColorPointer(i32 noundef 4, i32 noundef 5121, i32 noundef 0, ptr noundef nonnull %6) #19
  %94 = load i32, ptr %0, align 8, !tbaa !87
  call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef %94) #19
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @glDisableClientState(i32 noundef 32886) #19
  call void @glShadeModel(i32 noundef 7424) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %95

95:                                               ; preds = %92, %68, %66, %2
  %96 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 6
  %97 = load i8, ptr %96, align 1, !tbaa !84
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %100 = load i8, ptr %1, align 2, !tbaa !42
  store i8 %100, ptr %9, align 1, !tbaa !42
  %101 = getelementptr inbounds i8, ptr %9, i64 1
  %102 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !42
  store i8 %103, ptr %101, align 1, !tbaa !42
  %104 = getelementptr inbounds i8, ptr %9, i64 2
  %105 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 2
  %106 = load i8, ptr %105, align 2, !tbaa !42
  store i8 %106, ptr %104, align 1, !tbaa !42
  %107 = getelementptr inbounds i8, ptr %9, i64 3
  %108 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !42
  %110 = lshr i8 %109, 3
  store i8 %110, ptr %107, align 1, !tbaa !42
  %111 = load i32, ptr %0, align 8, !tbaa !87
  call fastcc void @widget_verts_to_quad_strip(ptr noundef nonnull %0, i32 noundef %111, ptr noundef nonnull %7) #20
  %112 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 7
  %113 = load i8, ptr %112, align 2, !tbaa !81
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !86
  call fastcc void @widget_verts_to_quad_strip_open(ptr noundef nonnull %0, i32 noundef %117, ptr noundef nonnull %8) #20
  br label %118

118:                                              ; preds = %115, %99
  call void @glEnableClientState(i32 noundef 32884) #19
  %119 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %120 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  br label %121

121:                                              ; preds = %118, %138
  %122 = phi i64 [ 0, %118 ], [ %141, %138 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %123 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %122
  %124 = load float, ptr %123, align 8, !tbaa !34
  %125 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %122, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  call void @glTranslatef(float noundef %124, float noundef %126, float noundef 0.000000e+00) #19
  call void @glColor4ubv(ptr noundef nonnull %9) #19
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %7) #19
  %127 = load i32, ptr %0, align 8, !tbaa !87
  %128 = shl nsw i32 %127, 1
  %129 = add nsw i32 %128, 2
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %129) #19
  call void @UI_GetThemeColor4ubv(i32 noundef 175, ptr noundef nonnull %10) #19
  %130 = load i8, ptr %112, align 2, !tbaa !81
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %121
  call void @UI_GetThemeColor4ubv(i32 noundef 175, ptr noundef nonnull %10) #19
  %133 = load i8, ptr %119, align 1, !tbaa !42
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  call void @glColor4ubv(ptr noundef nonnull %10) #19
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %8) #19
  %136 = load i32, ptr %120, align 4, !tbaa !86
  %137 = shl nsw i32 %136, 1
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %137) #19
  br label %138

138:                                              ; preds = %132, %135, %121
  %139 = fneg float %124
  %140 = fneg float %126
  call void @glTranslatef(float noundef %139, float noundef %140, float noundef 0.000000e+00) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  %141 = add nuw nsw i64 %122, 1
  %142 = icmp eq i64 %141, 8
  br i1 %142, label %143, label %121, !llvm.loop !103

143:                                              ; preds = %138
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %7) #18
  br label %144

144:                                              ; preds = %143, %95
  %145 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !88
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10
  %150 = load i32, ptr %149, align 8, !tbaa !89
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %187, label %152

152:                                              ; preds = %148, %144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %153 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  %154 = load i8, ptr %153, align 2, !tbaa !42
  store i8 %154, ptr %11, align 1, !tbaa !42
  %155 = getelementptr inbounds i8, ptr %11, i64 1
  %156 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 1
  %157 = load i8, ptr %156, align 1, !tbaa !42
  store i8 %157, ptr %155, align 1, !tbaa !42
  %158 = getelementptr inbounds i8, ptr %11, i64 2
  %159 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 2
  %160 = load i8, ptr %159, align 2, !tbaa !42
  store i8 %160, ptr %158, align 1, !tbaa !42
  %161 = getelementptr inbounds i8, ptr %11, i64 3
  %162 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 3
  %163 = load i8, ptr %162, align 1, !tbaa !42
  %164 = uitofp i8 %163 to float
  %165 = fmul float %164, 1.250000e-01
  %166 = fptoui float %165 to i8
  store i8 %166, ptr %161, align 1, !tbaa !42
  %167 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 10
  br label %168

168:                                              ; preds = %152, %181
  %169 = phi i64 [ 0, %152 ], [ %184, %181 ]
  %170 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %169
  %171 = load float, ptr %170, align 8, !tbaa !34
  %172 = getelementptr inbounds [8 x [2 x float]], ptr @jit, i64 0, i64 %169, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !34
  call void @glTranslatef(float noundef %171, float noundef %173, float noundef 0.000000e+00) #19
  %174 = load i32, ptr %145, align 8, !tbaa !88
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %168
  call void @glColor4ubv(ptr noundef nonnull %11) #19
  call fastcc void @widget_trias_draw(ptr noundef nonnull %145) #20
  br label %177

177:                                              ; preds = %176, %168
  %178 = load i32, ptr %167, align 8, !tbaa !89
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void @glColor4ubv(ptr noundef nonnull %11) #19
  call fastcc void @widget_trias_draw(ptr noundef nonnull %167) #20
  br label %181

181:                                              ; preds = %180, %177
  %182 = fneg float %171
  %183 = fneg float %173
  call void @glTranslatef(float noundef %182, float noundef %183, float noundef 0.000000e+00) #19
  %184 = add nuw nsw i64 %169, 1
  %185 = icmp eq i64 %184, 8
  br i1 %185, label %186, label %168, !llvm.loop !104

186:                                              ; preds = %181
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  br label %187

187:                                              ; preds = %186, %148
  call void @glDisable(i32 noundef 3042) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !105 {
  %3 = load i8, ptr %1, align 1, !tbaa !42
  store i8 %3, ptr %0, align 1, !tbaa !42
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !42
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !42
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !42
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_scroll_circle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #13 !PGOFuncName !106 {
  tail call fastcc void @widget_draw_tria_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull @scroll_circle_vert, i32 noundef 16, ptr noundef nonnull @scroll_circle_face, i32 noundef 14) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @UI_GetTheme() #19
  %7 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3
  %8 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  %9 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 46
  %10 = load i8, ptr %9, align 1, !tbaa !107
  switch i8 %10, label %22 [
    i8 2, label %11
    i8 1, label %20
    i8 4, label %21
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !108
  switch i32 %13, label %19 [
    i32 5120, label %14
    i32 27648, label %17
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 10
  tail call void @widget_draw_text_icon(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef %4) #20
  br label %169

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 11
  tail call fastcc void @ui_draw_separator(ptr noundef %4, ptr noundef nonnull %18) #20
  br label %169

19:                                               ; preds = %11
  tail call fastcc void @widget_type(i32 noundef 18) #20
  br label %130

20:                                               ; preds = %5
  tail call fastcc void @widget_type(i32 noundef 21) #20
  br label %130

21:                                               ; preds = %5
  tail call fastcc void @widget_type(i32 noundef 19) #20
  br label %130

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !108
  %25 = add i32 %24, -512
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 23)
  switch i32 %26, label %129 [
    i32 9, label %27
    i32 20, label %169
    i32 53, label %169
    i32 0, label %39
    i32 4, label %40
    i32 13, label %41
    i32 1, label %42
    i32 35, label %43
    i32 5, label %44
    i32 51, label %45
    i32 40, label %45
    i32 36, label %54
    i32 2, label %54
    i32 8, label %54
    i32 37, label %55
    i32 38, label %55
    i32 10, label %73
    i32 18, label %73
    i32 26, label %101
    i32 19, label %102
    i32 14, label %103
    i32 27, label %104
    i32 34, label %104
    i32 21, label %105
    i32 22, label %105
    i32 41, label %106
    i32 25, label %107
    i32 42, label %115
    i32 29, label %116
    i32 30, label %117
    i32 46, label %118
    i32 47, label %119
    i32 48, label %120
    i32 49, label %121
    i32 31, label %122
    i32 50, label %123
    i32 17, label %125
    i32 54, label %126
    i32 39, label %127
    i32 52, label %128
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 27
  %31 = load i32, ptr %30, align 8, !tbaa !109
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  %36 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 10
  tail call void @widget_draw_text_icon(ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %3, ptr noundef %4) #20
  br label %169

37:                                               ; preds = %27
  tail call fastcc void @widget_type(i32 noundef 1) #20
  %38 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  br label %130

39:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 7) #20
  br label %130

40:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 5) #20
  br label %130

41:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 6) #20
  br label %130

42:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 4) #20
  br label %130

43:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 27) #20
  br label %130

44:                                               ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 9) #20
  br label %130

45:                                               ; preds = %22, %22
  tail call fastcc void @widget_type(i32 noundef 9) #20
  %46 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = getelementptr inbounds %struct.uiBlock, ptr %47, i64 0, i32 27
  %49 = load i32, ptr %48, align 8, !tbaa !109
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %130, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 10
  store ptr %53, ptr @widget_type.wt, align 8, !tbaa !110
  br label %130

54:                                               ; preds = %22, %22, %22
  tail call fastcc void @widget_type(i32 noundef 2) #20
  br label %130

55:                                               ; preds = %22, %22
  %56 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !58
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  tail call fastcc void @widget_type(i32 noundef 3) #20
  %61 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !112
  %63 = or i32 %62, 2
  store i32 %63, ptr %61, align 4, !tbaa !112
  br label %65

64:                                               ; preds = %55
  tail call fastcc void @widget_type(i32 noundef 2) #20
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.uiBlock, ptr %67, i64 0, i32 27
  %69 = load i32, ptr %68, align 8, !tbaa !109
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %130, label %72

72:                                               ; preds = %65
  store ptr @widget_state_option_menu, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %130

73:                                               ; preds = %22, %22
  %74 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !58
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call fastcc void @widget_type(i32 noundef 16) #20
  br label %130

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 15
  %81 = load ptr, ptr %80, align 8, !tbaa !114
  %82 = load i8, ptr %81, align 1, !tbaa !42
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 44
  %86 = load i32, ptr %85, align 8, !tbaa !115
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %4) #20
  %90 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %4) #20
  %91 = add nsw i32 %90, 2
  %92 = icmp sge i32 %89, %91
  %93 = and i32 %75, 128
  %94 = icmp eq i32 %93, 0
  %95 = and i1 %94, %92
  br i1 %95, label %100, label %99

96:                                               ; preds = %84, %79
  %97 = and i32 %75, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96, %88
  tail call fastcc void @widget_type(i32 noundef 14) #20
  br label %130

100:                                              ; preds = %88, %96
  tail call fastcc void @widget_type(i32 noundef 13) #20
  br label %130

101:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 17) #20
  br label %130

102:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 18) #20
  br label %130

103:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 22) #20
  br label %130

104:                                              ; preds = %22, %22
  tail call fastcc void @widget_type(i32 noundef 25) #20
  br label %130

105:                                              ; preds = %22, %22
  tail call fastcc void @widget_type(i32 noundef 21) #20
  store ptr @widget_link, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %130

106:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 25) #20
  tail call fastcc void @widget_draw_extra_mask(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4) #20
  br label %169

107:                                              ; preds = %22
  %108 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 24
  %109 = load float, ptr %108, align 8, !tbaa !74
  %110 = fcmp oeq float %109, 9.000000e+00
  %111 = fcmp oeq float %109, 1.000000e+01
  %112 = or i1 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  tail call fastcc void @ui_draw_but_HSV_v(ptr noundef nonnull %3, ptr noundef %4) #20
  br label %169

114:                                              ; preds = %107
  tail call fastcc void @ui_draw_but_HSVCUBE(ptr noundef nonnull %3, ptr noundef %4) #20
  br label %169

115:                                              ; preds = %22
  tail call fastcc void @ui_draw_but_HSVCIRCLE(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #20
  br label %169

116:                                              ; preds = %22
  tail call void @ui_draw_but_COLORBAND(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

117:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 24) #20
  br label %130

118:                                              ; preds = %22
  tail call void @ui_draw_but_IMAGE(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

119:                                              ; preds = %22
  tail call void @ui_draw_but_HISTOGRAM(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

120:                                              ; preds = %22
  tail call void @ui_draw_but_WAVEFORM(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

121:                                              ; preds = %22
  tail call void @ui_draw_but_VECTORSCOPE(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

122:                                              ; preds = %22
  tail call void @ui_draw_but_CURVE(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

123:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 28) #20
  %124 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 5
  br label %130

125:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 26) #20
  br label %130

126:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 21) #20
  br label %130

127:                                              ; preds = %22
  tail call void @ui_draw_but_TRACKPREVIEW(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

128:                                              ; preds = %22
  tail call void @ui_draw_but_NODESOCKET(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %169

129:                                              ; preds = %22
  tail call fastcc void @widget_type(i32 noundef 0) #20
  br label %130

130:                                              ; preds = %19, %20, %21, %129, %126, %125, %123, %117, %105, %104, %103, %102, %101, %78, %99, %100, %72, %65, %54, %52, %45, %44, %43, %42, %41, %40, %39, %37
  %131 = phi ptr [ %38, %37 ], [ %8, %39 ], [ %8, %40 ], [ %8, %41 ], [ %8, %42 ], [ %8, %43 ], [ %8, %44 ], [ %8, %45 ], [ %8, %52 ], [ %8, %54 ], [ %8, %65 ], [ %8, %72 ], [ %8, %100 ], [ %8, %99 ], [ %8, %78 ], [ %8, %101 ], [ %8, %102 ], [ %8, %103 ], [ %8, %104 ], [ %8, %105 ], [ %8, %117 ], [ %124, %123 ], [ %8, %125 ], [ %8, %126 ], [ %8, %129 ], [ %8, %21 ], [ %8, %20 ], [ %8, %19 ]
  %132 = tail call fastcc i32 @widget_roundbox_set(ptr noundef nonnull %3, ptr noundef %4) #20, !range !117
  %133 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !58
  %135 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 69
  %136 = load ptr, ptr %135, align 8, !tbaa !118
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = and i32 %134, 33554432
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = tail call ptr @ui_get_but_drag_multi_edit(ptr noundef nonnull %3) #19
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %141, %130
  %145 = or i32 %134, 16
  br label %146

146:                                              ; preds = %144, %141, %138
  %147 = phi i32 [ %145, %144 ], [ %134, %141 ], [ %134, %138 ]
  %148 = and i32 %147, 133120
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8, ptr %9, align 1, !tbaa !107
  %152 = icmp eq i8 %151, 2
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call fastcc void @ui_widget_color_disabled(ptr noundef nonnull @widget_type.wt) #20
  br label %154

154:                                              ; preds = %146, %153, %150
  %155 = phi i1 [ false, %153 ], [ true, %150 ], [ true, %146 ]
  %156 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %156(ptr noundef nonnull @widget_type.wt, i32 noundef %147) #19
  %157 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  tail call void %157(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %4, i32 noundef %147, i32 noundef %132) #19
  br label %164

160:                                              ; preds = %154
  %161 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  tail call void %161(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %4, i32 noundef %147, i32 noundef %132) #19
  br label %164

164:                                              ; preds = %160, %163, %159
  br i1 %155, label %167, label %165

165:                                              ; preds = %164
  tail call void @glEnable(i32 noundef 3042) #19
  %166 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !120
  tail call void %166(ptr noundef nonnull %131, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull %3, ptr noundef %4) #19
  tail call void @glDisable(i32 noundef 3042) #19
  br label %169

167:                                              ; preds = %164
  %168 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !120
  tail call void %168(ptr noundef nonnull %131, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull %3, ptr noundef %4) #19
  br label %169

169:                                              ; preds = %17, %14, %113, %114, %22, %22, %34, %128, %127, %122, %121, %120, %119, %118, %116, %115, %106, %165, %167
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_draw_text_icon(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !121 {
  %5 = alloca [400 x i8], align 16
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.rcti, align 4
  %8 = tail call fastcc i32 @ui_but_draw_menu_icon(ptr noundef %2) #20, !range !122
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !42
  %12 = uitofp i8 %11 to float
  %13 = fdiv float %12, 2.550000e+02
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #18
  call void @ui_button_text_password_hide(ptr noundef nonnull %5, ptr noundef %2, i8 noundef zeroext 0) #19
  %14 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i32 %15, 5632
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !58
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !123
  %23 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %3) #20
  %26 = xor i32 %25, -1
  %27 = add i32 %24, %26
  store i32 %27, ptr %6, align 4, !tbaa !47
  call fastcc void @widget_draw_icon(ptr noundef nonnull %2, i32 noundef 643, float noundef %13, ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %28

28:                                               ; preds = %22, %17, %4
  %29 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  %33 = icmp ne i32 %8, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %28
  br i1 %32, label %36, label %43

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 44
  %38 = load i32, ptr %37, align 8, !tbaa !115
  %39 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 51
  %40 = load i16, ptr %39, align 4, !tbaa !124
  %41 = sext i16 %40 to i32
  %42 = add i32 %38, %41
  br label %43

43:                                               ; preds = %35, %36
  %44 = phi i32 [ %42, %36 ], [ 0, %35 ]
  %45 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %3) #20
  %46 = sitofp i32 %45 to float
  %47 = fmul float %46, 0x3FE99999A0000000
  %48 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  %50 = call zeroext i8 @ui_block_is_menu(ptr noundef %49) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %54 = sitofp i16 %53 to float
  %55 = load i32, ptr %3, align 4, !tbaa !47
  %56 = sitofp i32 %55 to float
  %57 = call float @llvm.fmuladd.f32(float %54, float 0x3FD3333340000000, float %56)
  %58 = fptosi float %57 to i32
  store i32 %58, ptr %3, align 4, !tbaa !47
  br label %59

59:                                               ; preds = %52, %43
  call fastcc void @widget_draw_icon(ptr noundef nonnull %2, i32 noundef %44, float noundef %13, ptr noundef %3, i8 noundef zeroext %9) #20
  %60 = load i32, ptr %3, align 4, !tbaa !47
  %61 = sitofp i32 %60 to float
  %62 = fadd float %47, %61
  %63 = fptosi float %62 to i32
  store i32 %63, ptr %3, align 4, !tbaa !47
  %64 = icmp eq i8 %9, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = fmul float %47, 5.000000e-01
  %67 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = sitofp i32 %68 to float
  %70 = fsub float %69, %66
  %71 = fptosi float %70 to i32
  store i32 %71, ptr %67, align 4, !tbaa !50
  br label %72

72:                                               ; preds = %59, %65, %28
  %73 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %74 = load ptr, ptr %73, align 8, !tbaa !118
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !112
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76, %72
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %83 = sitofp i16 %82 to float
  %84 = fmul float %83, 0x3FD99999A0000000
  %85 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %86 = load ptr, ptr %85, align 8, !tbaa !67
  %87 = getelementptr inbounds %struct.uiBlock, ptr %86, i64 0, i32 12
  %88 = load float, ptr %87, align 8, !tbaa !126
  %89 = fdiv float %84, %88
  %90 = load i32, ptr %3, align 4, !tbaa !47
  %91 = sitofp i32 %90 to float
  %92 = fadd float %89, %91
  br label %109

93:                                               ; preds = %76
  %94 = and i32 %78, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %98 = sitofp i16 %97 to float
  %99 = fmul float %98, 0x3FD99999A0000000
  %100 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = getelementptr inbounds %struct.uiBlock, ptr %101, i64 0, i32 12
  %103 = load float, ptr %102, align 8, !tbaa !126
  %104 = fdiv float %99, %103
  %105 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = sitofp i32 %106 to float
  %108 = fsub float %107, %104
  br label %109

109:                                              ; preds = %81, %96
  %110 = phi float [ %108, %96 ], [ %92, %81 ]
  %111 = phi ptr [ %105, %96 ], [ %3, %81 ]
  %112 = fptosi float %110 to i32
  store i32 %112, ptr %111, align 4, !tbaa !77
  br label %113

113:                                              ; preds = %109, %93
  %114 = load i32, ptr %14, align 8, !tbaa !108
  %115 = icmp eq i32 %114, 26624
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = call zeroext i8 @ui_is_but_search_unlink_visible(ptr noundef nonnull %2) #19
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !123
  %120 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = sitofp i32 %121 to float
  %123 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %3) #20
  %124 = sitofp i32 %123 to float
  %125 = fneg float %124
  %126 = call float @llvm.fmuladd.f32(float %125, float 0x3FF147AE20000000, float %122)
  %127 = fptosi float %126 to i32
  store i32 %127, ptr %7, align 4, !tbaa !47
  call fastcc void @widget_draw_icon(ptr noundef nonnull %2, i32 noundef 19, float noundef %13, ptr noundef nonnull %7, i8 noundef zeroext 0) #20
  %128 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %3) #20
  %129 = sitofp i32 %128 to float
  %130 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = sitofp i32 %131 to float
  %133 = call float @llvm.fmuladd.f32(float %129, float 0xBFE99999A0000000, float %132)
  %134 = fptosi float %133 to i32
  store i32 %134, ptr %130, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %135

135:                                              ; preds = %119, %116, %113
  %136 = load ptr, ptr %73, align 8, !tbaa !118
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 12
  %140 = load i16, ptr %139, align 4, !tbaa !127
  %141 = icmp sgt i16 %140, -1
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  call fastcc void @ui_text_clip_cursor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %164

143:                                              ; preds = %138, %135
  %144 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 17
  %145 = load i8, ptr %144, align 8, !tbaa !42
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  store i16 0, ptr %148, align 2, !tbaa !128
  %149 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 9
  store i16 0, ptr %149, align 2, !tbaa !129
  br label %164

150:                                              ; preds = %143
  %151 = load i32, ptr %14, align 8, !tbaa !108
  switch i32 %151, label %153 [
    i32 2560, label %152
    i32 7168, label %152
  ]

152:                                              ; preds = %150, %150
  call fastcc void @ui_text_clip_right_label(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %164

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %155 = load ptr, ptr %154, align 8, !tbaa !67
  %156 = getelementptr inbounds %struct.uiBlock, ptr %155, i64 0, i32 27
  %157 = load i32, ptr %156, align 8, !tbaa !109
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  %160 = icmp eq i32 %151, 512
  %161 = and i1 %160, %159
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  call fastcc void @ui_text_clip_middle_protect_right(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %164

163:                                              ; preds = %153
  call fastcc void @ui_text_clip_middle(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %164

164:                                              ; preds = %147, %162, %163, %152, %142
  call fastcc void @widget_draw_text(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #20
  call void @ui_button_text_password_hide(ptr noundef nonnull %5, ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_separator(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !130 {
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #20
  %7 = sdiv i32 %6, 2
  %8 = add i32 %5, -1
  %9 = add i32 %8, %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %10 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4
  %11 = load i8, ptr %10, align 2, !tbaa !42
  store i8 %11, ptr %3, align 1, !tbaa !42
  %12 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %13, ptr %14, align 1, !tbaa !42
  %15 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 2
  %16 = load i8, ptr %15, align 2, !tbaa !42
  %17 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %16, ptr %17, align 1, !tbaa !42
  %18 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 30, ptr %18, align 1, !tbaa !42
  tail call void @glEnable(i32 noundef 3042) #19
  call void @glColor4ubv(ptr noundef nonnull %3) #19
  %19 = load i32, ptr %0, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !50
  call void @sdrawline(i32 noundef %19, i32 noundef %9, i32 noundef %21, i32 noundef %9) #19
  call void @glDisable(i32 noundef 3042) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_type(i32 noundef %0) unnamed_addr #0 !PGOFuncName !131 {
  %2 = tail call ptr @UI_GetTheme() #19
  %3 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3
  store ptr %3, ptr @widget_type.wt, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 18
  store ptr %4, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 1), align 8, !tbaa !132
  store ptr @widget_state, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  store ptr @widget_but, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  store ptr @widget_draw_text_icon, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 6), align 8, !tbaa !120
  switch i32 %0, label %49 [
    i32 19, label %47
    i32 1, label %5
    i32 2, label %6
    i32 3, label %8
    i32 4, label %10
    i32 5, label %12
    i32 6, label %14
    i32 7, label %16
    i32 8, label %18
    i32 9, label %20
    i32 28, label %45
    i32 27, label %43
    i32 26, label %41
    i32 13, label %22
    i32 14, label %24
    i32 15, label %26
    i32 16, label %28
    i32 17, label %30
    i32 18, label %32
    i32 20, label %34
    i32 21, label %36
    i32 22, label %37
    i32 25, label %38
    i32 24, label %40
  ]

5:                                                ; preds = %1
  store ptr null, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  store ptr @widget_state_label, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %49

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 5
  store ptr %7, ptr @widget_type.wt, align 8, !tbaa !110
  br label %49

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 4
  store ptr %9, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_optionbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 3
  store ptr %11, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_radiobut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 6
  store ptr %13, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_numbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 7
  store ptr %15, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_numslider, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  store ptr @widget_state_numslider, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %49

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 1
  store ptr %17, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_roundbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 12
  store ptr %19, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menu_back, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 2
  store ptr %21, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_textbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 8
  store ptr %23, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menubut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 8
  store ptr %25, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menuiconbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 8
  store ptr %27, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menubut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 8
  store ptr %29, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menunodebut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 9
  store ptr %31, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_pulldownbut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  store ptr @widget_state_pulldown, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %49

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 11
  store ptr %33, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menu_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  store ptr @widget_state_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %49

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 10
  store ptr %35, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menu_back, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

36:                                               ; preds = %1
  store ptr @widget_icon_has_anim, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %49

37:                                               ; preds = %1
  store ptr @widget_swatch, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %49

38:                                               ; preds = %1
  store ptr @widget_box, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 13
  store ptr %39, ptr @widget_type.wt, align 8, !tbaa !110
  br label %49

40:                                               ; preds = %1
  store ptr @widget_normal, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %49

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 14
  store ptr %42, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_state_nothing, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  store ptr @widget_scroll, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %49

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 16
  store ptr %44, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_list_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br label %49

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 15
  store ptr %46, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_progressbar, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  br label %49

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.bTheme, ptr %2, i64 0, i32 3, i32 17
  store ptr %48, ptr @widget_type.wt, align 8, !tbaa !110
  store ptr @widget_menu_radial_itembut, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 5), align 8, !tbaa !116
  store ptr @widget_state_pie_menu_item, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  br label %49

49:                                               ; preds = %1, %47, %45, %43, %41, %40, %38, %37, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_state_option_menu(ptr nocapture noundef %0, i32 noundef %1) #0 !PGOFuncName !133 {
  %3 = tail call ptr @UI_GetTheme() #19
  tail call void @widget_state(ptr noundef %0, i32 noundef %1) #20
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %7 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 4
  %8 = getelementptr inbounds %struct.bTheme, ptr %3, i64 0, i32 3, i32 10, i32 5
  %9 = select i1 %5, ptr %7, ptr %8
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %6, ptr noundef nonnull %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_link(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, i32 %3, i32 %4) #0 !PGOFuncName !134 {
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  tail call void @UI_ThemeColor(i32 noundef 4) #19
  %12 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %2) #20, !range !135
  store i32 %12, ptr %6, align 4, !tbaa !47
  %13 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef %2) #20, !range !135
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 41
  %16 = load i16, ptr %15, align 8, !tbaa !43
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 41, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !43
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %21, ptr %22, align 4, !tbaa !53
  call void @ui_draw_link_bezier(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %23

23:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_draw_extra_mask(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !136 {
  %4 = alloca %struct.uiWidgetBase, align 8
  %5 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %4) #18
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %9 = load ptr, ptr @widget_type.wt, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull align 2 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !41
  call fastcc void @widget_init(ptr noundef nonnull %4) #20
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  tail call void %13(ptr noundef %0, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %2) #19
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %5) #19
  call void @glColor3ubv(ptr noundef nonnull %5) #19
  call fastcc void @round_box__edges(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %2, float noundef 0.000000e+00, float noundef %8) #20
  call fastcc void @widgetbase_outline(ptr noundef nonnull %4) #20
  br label %22

22:                                               ; preds = %15, %3
  call fastcc void @round_box_edges(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %2, float noundef %8) #20
  %23 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 6
  store i8 1, ptr %23, align 1, !tbaa !84
  %24 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 5
  store i8 0, ptr %24, align 8, !tbaa !96
  call fastcc void @widgetbase_draw(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2)) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_but_HSV_v(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = alloca %struct.uiWidgetBase, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %3) #18
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #20
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 51
  %12 = load i8, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %14) #19
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  br label %24

20:                                               ; preds = %16, %2
  call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %21 = icmp eq i8 %12, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %9, align 8, !tbaa !67
  call void @ui_block_to_display_space_v3(ptr noundef %23, ptr noundef nonnull %4) #19
  br label %24

24:                                               ; preds = %19, %22, %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %26 = load float, ptr %25, align 8, !tbaa !74
  %27 = fcmp oeq float %26, 1.000000e+01
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @rgb_to_hsl_v(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %30

29:                                               ; preds = %24
  call void @rgb_to_hsv_v(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = load float, ptr %25, align 8, !tbaa !74
  %34 = fcmp oeq float %33, 9.000000e+00
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %37 = load float, ptr %36, align 4, !tbaa !76
  %38 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %39 = load float, ptr %38, align 8, !tbaa !75
  %40 = fsub float %37, %39
  %41 = fsub float %32, %39
  %42 = fdiv float %41, %40
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi float [ %42, %35 ], [ %32, %30 ]
  call fastcc void @widget_init(ptr noundef nonnull %3) #20
  call fastcc void @round_box_edges(ptr noundef nonnull %3, i32 noundef 15, ptr noundef %1, float noundef %8) #20
  store i8 0, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 0, i64 2), align 2, !tbaa !42
  store i8 0, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 0, i64 1), align 1, !tbaa !42
  store i8 0, ptr @wcol_tmp, align 2, !tbaa !42
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1, i64 2), align 2, !tbaa !42
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1, i64 1), align 1, !tbaa !42
  store i8 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 1), align 2, !tbaa !42
  store i16 127, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 7), align 2, !tbaa !78
  store i16 -128, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 8), align 2, !tbaa !80
  store i16 1, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @wcol_tmp, i64 0, i32 6), align 2, !tbaa !97
  call fastcc void @widgetbase_draw(ptr noundef nonnull %3, ptr noundef nonnull @wcol_tmp) #20
  %45 = load i32, ptr %1, align 4, !tbaa !47
  %46 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #20
  %47 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = sitofp i32 %48 to float
  %50 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #20
  %51 = sitofp i32 %50 to float
  %52 = call float @llvm.fmuladd.f32(float %44, float %51, float %49)
  %53 = fadd float %49, 3.000000e+00
  %54 = fcmp olt float %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !53
  %58 = sitofp i32 %57 to float
  %59 = fadd float %58, -3.000000e+00
  %60 = fcmp ogt float %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %43, %55, %61
  %63 = phi float [ %59, %61 ], [ %52, %55 ], [ %53, %43 ]
  %64 = sitofp i32 %46 to float
  %65 = sitofp i32 %45 to float
  %66 = call float @llvm.fmuladd.f32(float %64, float 5.000000e-01, float %65)
  call fastcc void @ui_hsv_cursor(float noundef %66, float noundef %63) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_but_HSVCUBE(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !142 {
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @ui_block_hsv_get(ptr noundef %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %10 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %9) #20
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %3) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %7, align 8, !tbaa !67
  call void @ui_block_to_display_space_v3(ptr noundef %13, ptr noundef nonnull %3) #19
  br label %14

14:                                               ; preds = %12, %2
  call void @rgb_to_hsv_compat_v(ptr noundef nonnull %3, ptr noundef nonnull %6) #19
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %16 = load float, ptr %15, align 8, !tbaa !74
  %17 = fptosi float %16 to i32
  call void @ui_draw_gradient(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %17, float noundef 1.000000e+00) #20
  call void @ui_hsvcube_pos_from_vals(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %18 = load float, ptr %4, align 4, !tbaa !34
  %19 = load i32, ptr %1, align 4, !tbaa !47
  %20 = sitofp i32 %19 to float
  %21 = fadd float %20, 3.000000e+00
  %22 = fcmp olt float %18, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = sitofp i32 %25 to float
  %27 = fadd float %26, -3.000000e+00
  %28 = fcmp ogt float %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %14, %23, %29
  %31 = phi float [ %18, %23 ], [ %27, %29 ], [ %21, %14 ]
  %32 = load float, ptr %5, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !52
  %35 = sitofp i32 %34 to float
  %36 = fadd float %35, 3.000000e+00
  %37 = fcmp olt float %32, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = sitofp i32 %40 to float
  %42 = fadd float %41, -3.000000e+00
  %43 = fcmp ogt float %32, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %30, %38, %44
  %46 = phi float [ %32, %38 ], [ %42, %44 ], [ %36, %30 ]
  call fastcc void @ui_hsv_cursor(float noundef %31, float noundef %46) #20
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %47 = load i32, ptr %1, align 4, !tbaa !47
  %48 = sitofp i32 %47 to float
  %49 = load i32, ptr %33, align 4, !tbaa !52
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = sitofp i32 %55 to float
  call void @fdrawbox(float noundef %48, float noundef %50, float noundef %53, float noundef %56) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_but_HSVCIRCLE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !143 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call fastcc float @BLI_rcti_cent_x_fl(ptr noundef %2) #20
  %12 = tail call fastcc float @BLI_rcti_cent_y_fl(ptr noundef %2) #20
  %13 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %14 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %15 = tail call fastcc i32 @min_ii(i32 noundef %13, i32 noundef %14) #20
  %16 = sitofp i32 %15 to float
  %17 = fmul float %16, 5.000000e-01
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = tail call ptr @ui_block_hsv_get(ptr noundef %19) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %21 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #20
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %6) #19
  %22 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %23 = load <2 x float>, ptr %20, align 4, !tbaa !34
  store <2 x float> %23, ptr %8, align 8, !tbaa !34
  store <2 x float> %23, ptr %7, align 8, !tbaa !34
  %24 = getelementptr inbounds float, ptr %20, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %25, ptr %26, align 8, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %25, ptr %27, align 8, !tbaa !34
  %28 = icmp eq i8 %21, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load ptr, ptr %18, align 8, !tbaa !67
  call void @ui_block_to_display_space_v3(ptr noundef %30, ptr noundef nonnull %6) #19
  br label %31

31:                                               ; preds = %29, %3
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %6, ptr noundef nonnull %8) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %32 = load float, ptr %26, align 8, !tbaa !34
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = fcmp ogt float %32, 1.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %34, %31
  %37 = phi float [ 0.000000e+00, %31 ], [ 1.000000e+00, %34 ]
  store float %37, ptr %26, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi float [ %32, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = and i32 %41, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !144
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, float 1.000000e+00, float 5.000000e-01
  store float %47, ptr %26, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi float [ %39, %38 ], [ %47, %44 ]
  %50 = getelementptr inbounds float, ptr %10, i64 1
  %51 = getelementptr inbounds float, ptr %10, i64 2
  call void @ui_color_picker_to_rgb(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %49, ptr noundef nonnull %10, ptr noundef nonnull %50, ptr noundef nonnull %51) #19
  call void @glShadeModel(i32 noundef 7425) #19
  call void @glBegin(i32 noundef 6) #19
  call void @glColor3fv(ptr noundef nonnull %10) #19
  call void @glVertex2f(float noundef %11, float noundef %12) #19
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi float [ 0.000000e+00, %48 ], [ %60, %52 ]
  %54 = phi i32 [ 0, %48 ], [ %59, %52 ]
  %55 = call float @sinf(float noundef %53) #19
  %56 = call float @cosf(float noundef %53) #19
  %57 = call float @llvm.fmuladd.f32(float %56, float %17, float %11)
  %58 = call float @llvm.fmuladd.f32(float %55, float %17, float %12)
  call void @ui_hsvcircle_vals_from_pos(ptr noundef nonnull %8, ptr noundef nonnull %22, ptr noundef %2, float noundef %57, float noundef %58) #20
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  call void @glColor3fv(ptr noundef nonnull %9) #19
  call void @glVertex2f(float noundef %57, float noundef %58) #19
  %59 = add nuw nsw i32 %54, 1
  %60 = fadd float %53, 0x3FB921FB60000000
  %61 = icmp eq i32 %59, 65
  br i1 %61, label %62, label %52, !llvm.loop !145

62:                                               ; preds = %52
  call void @glEnd() #19
  call void @glShadeModel(i32 noundef 7424) #19
  call void @glPushMatrix() #19
  call void @glTranslatef(float noundef %11, float noundef %12, float noundef 0.000000e+00) #19
  call void @glEnable(i32 noundef 3042) #19
  call void @glEnable(i32 noundef 2848) #19
  call void @glColor3ubv(ptr noundef %1) #19
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %17, i32 noundef 65) #19
  call void @glDisable(i32 noundef 3042) #19
  call void @glDisable(i32 noundef 2848) #19
  call void @glPopMatrix() #19
  call void @ui_hsvcircle_pos_from_vals(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %63 = load float, ptr %4, align 4, !tbaa !34
  %64 = load float, ptr %5, align 4, !tbaa !34
  call fastcc void @ui_hsv_cursor(float noundef %63, float noundef %64) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @ui_draw_but_COLORBAND(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_IMAGE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_HISTOGRAM(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_WAVEFORM(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_VECTORSCOPE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_CURVE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_TRACKPREVIEW(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_draw_but_NODESOCKET(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @widget_roundbox_set(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !112
  %5 = and i32 %4, 245760
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !108
  %10 = icmp eq i32 %9, 13824
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = and i32 %4, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = sitofp i32 %17 to float
  %19 = fadd float %15, %18
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %16, align 4, !tbaa !53
  br label %21

21:                                               ; preds = %14, %11
  %22 = and i32 %4, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %26 = load i32, ptr %1, align 4, !tbaa !47
  %27 = sitofp i32 %26 to float
  %28 = fsub float %27, %25
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %1, align 4, !tbaa !47
  br label %30

30:                                               ; preds = %24, %21
  %31 = add nsw i32 %5, -16384
  %32 = icmp ult i32 %31, 196608
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = lshr exact i32 %31, 14
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [12 x i32], ptr @switch.table.widget_roundbox_set, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %30, %33, %7, %2
  %39 = phi i32 [ 15, %7 ], [ 15, %2 ], [ %37, %33 ], [ 0, %30 ]
  %40 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 67
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @ui_button_open_menu_direction(ptr noundef nonnull %0) #19
  switch i32 %44, label %53 [
    i32 1, label %45
    i32 2, label %47
    i32 4, label %49
    i32 8, label %51
  ]

45:                                               ; preds = %43
  %46 = and i32 %39, 12
  br label %53

47:                                               ; preds = %43
  %48 = and i32 %39, 3
  br label %53

49:                                               ; preds = %43
  %50 = and i32 %39, 6
  br label %53

51:                                               ; preds = %43
  %52 = and i32 %39, 9
  br label %53

53:                                               ; preds = %45, %49, %51, %47, %43, %38
  %54 = phi i32 [ %39, %38 ], [ %46, %45 ], [ %48, %47 ], [ %50, %49 ], [ %52, %51 ], [ %39, %43 ]
  ret i32 %54
}

; Function Attrs: optsize
declare ptr @ui_get_but_drag_multi_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_widget_color_disabled(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) @ui_widget_color_disabled.wcol_theme_s, ptr noundef nonnull align 2 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !41
  %3 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 0, i64 3), align 1, !tbaa !42
  %4 = uitofp i8 %3 to double
  %5 = fmul double %4, 5.000000e-01
  %6 = fptoui double %5 to i8
  store i8 %6, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 0, i64 3), align 1, !tbaa !42
  %7 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 1, i64 3), align 1, !tbaa !42
  %8 = uitofp i8 %7 to double
  %9 = fmul double %8, 5.000000e-01
  %10 = fptoui double %9 to i8
  store i8 %10, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 1, i64 3), align 1, !tbaa !42
  %11 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 2, i64 3), align 1, !tbaa !42
  %12 = uitofp i8 %11 to double
  %13 = fmul double %12, 5.000000e-01
  %14 = fptoui double %13 to i8
  store i8 %14, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 2, i64 3), align 1, !tbaa !42
  %15 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 3, i64 3), align 1, !tbaa !42
  %16 = uitofp i8 %15 to double
  %17 = fmul double %16, 5.000000e-01
  %18 = fptoui double %17 to i8
  store i8 %18, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 3, i64 3), align 1, !tbaa !42
  %19 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 4, i64 3), align 1, !tbaa !42
  %20 = uitofp i8 %19 to double
  %21 = fmul double %20, 5.000000e-01
  %22 = fptoui double %21 to i8
  store i8 %22, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 4, i64 3), align 1, !tbaa !42
  %23 = load i8, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 5, i64 3), align 1, !tbaa !42
  %24 = uitofp i8 %23 to double
  %25 = fmul double %24, 5.000000e-01
  %26 = fptoui double %25 to i8
  store i8 %26, ptr getelementptr inbounds (%struct.uiWidgetColors, ptr @ui_widget_color_disabled.wcol_theme_s, i64 0, i32 5, i64 3), align 1, !tbaa !42
  store ptr @ui_widget_color_disabled.wcol_theme_s, ptr %0, align 8, !tbaa !110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_menu_back(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @widget_type(i32 noundef 20) #20
  %4 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %4(ptr noundef nonnull @widget_type.wt, i32 noundef 0) #19
  %5 = icmp eq ptr %1, null
  %6 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br i1 %5, label %7, label %8

7:                                                ; preds = %3
  tail call void %6(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef 0, i32 noundef 0) #19
  br label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 29
  %12 = load i8, ptr %11, align 2, !tbaa !149
  %13 = zext i8 %12 to i32
  tail call void %6(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef %10, i32 noundef %13) #19
  %14 = load i32, ptr %9, align 8, !tbaa !109
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  tail call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #19
  %18 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %2) #20, !range !135
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = add nsw i32 %21, -8
  %23 = sitofp i32 %22 to float
  tail call void @UI_DrawTriIcon(float noundef %19, float noundef %23, i8 noundef zeroext 116) #19
  %24 = load i32, ptr %9, align 8, !tbaa !109
  br label %25

25:                                               ; preds = %17, %8
  %26 = phi i32 [ %24, %17 ], [ %14, %8 ]
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  tail call void @glColor3ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #19
  %30 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %2) #20, !range !135
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !52
  %34 = add nsw i32 %33, 10
  %35 = sitofp i32 %34 to float
  tail call void @UI_DrawTriIcon(float noundef %31, float noundef %35, i8 noundef zeroext 118) #19
  br label %36

36:                                               ; preds = %7, %25, %29
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_DrawTriIcon(float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !150 {
  %2 = load i32, ptr %0, align 4, !tbaa !47
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_pie_center(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = tail call ptr @UI_GetTheme() #19
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !151
  %14 = sitofp i16 %13 to float
  %15 = fmul float %12, %14
  %16 = fadd float %14, 7.000000e+00
  %17 = fmul float %12, %16
  %18 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %7, align 4, !tbaa !34
  %21 = tail call float @atan2f(float noundef %19, float noundef %20) #19
  %22 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !152
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 0x3FE921FB60000000, float 0x3FF921FB60000000
  tail call void @glPushMatrix() #19
  tail call void @glTranslatef(float noundef %9, float noundef %11, float noundef 0.000000e+00) #19
  tail call void @glEnable(i32 noundef 3042) #19
  %27 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17
  %28 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !153
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %32 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1
  %33 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !160
  %35 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !161
  call fastcc void @shadecolors4(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %32, i16 noundef signext %34, i16 noundef signext %36) #20
  call fastcc void @draw_disk_shaded(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, float noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %39

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 1
  tail call void @glColor4ubv(ptr noundef nonnull %38) #19
  tail call fastcc void @draw_disk_shaded(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, float noundef %17, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #20
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, ptr %22, align 8, !tbaa !152
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i16, ptr %28, align 8, !tbaa !153
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %47 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2
  %48 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 7
  %49 = load i16, ptr %48, align 2, !tbaa !160
  %50 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 8
  %51 = load i16, ptr %50, align 4, !tbaa !161
  call fastcc void @shadecolors4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %47, i16 noundef signext %49, i16 noundef signext %51) #20
  %52 = fmul float %26, 5.000000e-01
  %53 = fsub float %21, %52
  call fastcc void @draw_disk_shaded(float noundef %53, float noundef %26, float noundef %15, float noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %58

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 2
  tail call void @glColor4ubv(ptr noundef nonnull %55) #19
  %56 = fmul float %26, 5.000000e-01
  %57 = fsub float %21, %56
  tail call fastcc void @draw_disk_shaded(float noundef %57, float noundef %26, float noundef %15, float noundef %17, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #20
  br label %58

58:                                               ; preds = %46, %54, %39
  tail call void @glColor4ubv(ptr noundef nonnull %27) #19
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, i32 noundef 40) #19
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %17, i32 noundef 40) #19
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 111), align 2, !tbaa !162
  %60 = icmp sgt i16 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i32, ptr %22, align 8, !tbaa !152
  %63 = and i32 %62, 24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %67 = sitofp i16 %59 to float
  %68 = fadd float %15, %67
  %69 = fmul float %68, %66
  %70 = fadd float %68, 7.000000e+00
  %71 = fmul float %70, %66
  %72 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5
  %73 = load i8, ptr %72, align 4, !tbaa !42
  %74 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !42
  %76 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 17, i32 5, i64 2
  %77 = load i8, ptr %76, align 2, !tbaa !42
  tail call void @glColor4ub(i8 noundef zeroext %73, i8 noundef zeroext %75, i8 noundef zeroext %77, i8 noundef zeroext 64) #19
  %78 = fmul float %26, 5.000000e-01
  %79 = fsub float %21, %78
  tail call fastcc void @draw_disk_shaded(float noundef %79, float noundef %26, float noundef %69, float noundef %71, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #20
  br label %80

80:                                               ; preds = %65, %61, %58
  tail call void @glDisable(i32 noundef 3042) #19
  tail call void @glPopMatrix() #19
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @shadecolors4(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #3 !PGOFuncName !163 {
  %6 = load i8, ptr %2, align 1, !tbaa !42
  %7 = zext i8 %6 to i32
  %8 = sext i16 %3 to i32
  %9 = add nsw i32 %7, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %0, align 1, !tbaa !42
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !42
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, %8
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 255)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !42
  %21 = getelementptr inbounds i8, ptr %2, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !42
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, %8
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 255)
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %27, ptr %28, align 1, !tbaa !42
  %29 = getelementptr inbounds i8, ptr %2, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !42
  %31 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %30, ptr %31, align 1, !tbaa !42
  %32 = load i8, ptr %2, align 1, !tbaa !42
  %33 = zext i8 %32 to i32
  %34 = sext i16 %4 to i32
  %35 = add nsw i32 %33, %34
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 255)
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0)
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %1, align 1, !tbaa !42
  %39 = load i8, ptr %13, align 1, !tbaa !42
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, %34
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 255)
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !42
  %46 = load i8, ptr %21, align 1, !tbaa !42
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, %34
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 255)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %51, ptr %52, align 1, !tbaa !42
  %53 = load i8, ptr %29, align 1, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %53, ptr %54, align 1, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_disk_shaded(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !164 {
  %8 = alloca [4 x i8], align 1
  %9 = fdiv float 5.000000e-01, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  tail call void @glBegin(i32 noundef 5) #19
  %10 = tail call float @sinf(float noundef %0) #19
  %11 = tail call float @cosf(float noundef %0) #19
  %12 = fmul float %10, %2
  %13 = fmul float %10, %3
  %14 = icmp eq i8 %6, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = fadd float %12, %3
  %17 = fmul float %9, %16
  call fastcc void @round_box_shade_col4_r(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5, float noundef %17) #20
  call void @glColor4ubv(ptr noundef nonnull %8) #19
  %18 = fmul float %11, %2
  call void @glVertex2f(float noundef %18, float noundef %12) #19
  %19 = fadd float %13, %3
  %20 = fmul float %9, %19
  call fastcc void @round_box_shade_col4_r(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5, float noundef %20) #20
  call void @glColor4ubv(ptr noundef nonnull %8) #19
  br label %23

21:                                               ; preds = %7
  %22 = fmul float %11, %2
  tail call void @glVertex2f(float noundef %22, float noundef %12) #19
  br label %23

23:                                               ; preds = %21, %15
  %24 = fmul float %11, %3
  call void @glVertex2f(float noundef %24, float noundef %13) #19
  br label %25

25:                                               ; preds = %23, %42
  %26 = phi i32 [ 1, %23 ], [ %44, %42 ]
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, 3.900000e+01
  %29 = call float @llvm.fmuladd.f32(float %28, float %1, float %0)
  %30 = call float @sinf(float noundef %29) #19
  %31 = call float @cosf(float noundef %29) #19
  %32 = fmul float %30, %2
  %33 = fmul float %30, %3
  br i1 %14, label %40, label %34

34:                                               ; preds = %25
  %35 = fadd float %32, %3
  %36 = fmul float %9, %35
  call fastcc void @round_box_shade_col4_r(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5, float noundef %36) #20
  call void @glColor4ubv(ptr noundef nonnull %8) #19
  %37 = fmul float %31, %2
  call void @glVertex2f(float noundef %37, float noundef %32) #19
  %38 = fadd float %33, %3
  %39 = fmul float %9, %38
  call fastcc void @round_box_shade_col4_r(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5, float noundef %39) #20
  call void @glColor4ubv(ptr noundef nonnull %8) #19
  br label %42

40:                                               ; preds = %25
  %41 = fmul float %31, %2
  call void @glVertex2f(float noundef %41, float noundef %32) #19
  br label %42

42:                                               ; preds = %40, %34
  %43 = fmul float %31, %3
  call void @glVertex2f(float noundef %43, float noundef %33) #19
  %44 = add nuw nsw i32 %26, 1
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %25, !llvm.loop !165

46:                                               ; preds = %42
  call void @glEnd() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  ret void
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_tooltip_get_theme() local_unnamed_addr #0 {
  tail call fastcc void @widget_type(i32 noundef 8) #20
  %1 = load ptr, ptr @widget_type.wt, align 8, !tbaa !110
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_tooltip_background(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @widget_type(i32 noundef 8) #20
  %4 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %4(ptr noundef nonnull @widget_type.wt, i32 noundef 0) #19
  %5 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  tail call void %5(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef 0, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_search_back(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @widget_type(i32 noundef 25) #20
  tail call void @glEnable(i32 noundef 3042) #19
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %5 = sitofp i16 %4 to float
  %6 = fmul float %5, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %2, i32 noundef 15, float noundef %6) #20
  tail call void @glDisable(i32 noundef 3042) #19
  %7 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %7(ptr noundef nonnull @widget_type.wt, i32 noundef 0) #19
  %8 = icmp eq ptr %1, null
  %9 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  br i1 %8, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !109
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %3 ]
  tail call void %9(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %2, i32 noundef %14, i32 noundef 15) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_softshadow(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !166 {
  %4 = alloca %struct.uiWidgetBase, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [74 x [2 x float]], align 16
  %7 = tail call ptr @UI_GetTheme() #19
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %6) #18
  %8 = tail call i32 @UI_ThemeMenuShadowWidth() #19
  %9 = sitofp i32 %8 to float
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %3
  %12 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #20
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, 0x3FC99999A0000000
  %15 = fcmp olt float %14, %9
  %16 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = sitofp i32 %17 to float
  %19 = fsub float %18, %9
  %20 = tail call float @llvm.fmuladd.f32(float %13, float 0xBFC99999A0000000, float %18)
  %21 = select i1 %15, float %20, float %19
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %16, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 3
  %24 = and i32 %1, 12
  %25 = call fastcc i32 @round_box_shadow_edges(ptr noundef nonnull %23, ptr noundef nonnull %5, float noundef %2, i32 noundef %24, float noundef 0.000000e+00) #20
  %26 = getelementptr inbounds %struct.bTheme, ptr %7, i64 0, i32 3, i32 21
  %27 = load float, ptr %26, align 4, !tbaa !167
  %28 = fmul float %27, 3.000000e+00
  %29 = fdiv float %28, %9
  tail call void @glEnableClientState(i32 noundef 32884) #19
  %30 = fptosi float %9 to i32
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %45, label %32

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.uiWidgetBase, ptr %4, i64 0, i32 2
  %34 = shl nsw i32 %25, 1
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i32 [ 1, %32 ], [ %43, %35 ]
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, %9
  %39 = call float @sqrtf(float noundef %38) #19
  %40 = call fastcc i32 @round_box_shadow_edges(ptr noundef nonnull %33, ptr noundef nonnull %5, float noundef %2, i32 noundef 15, float noundef %37) #20
  %41 = fsub float 1.000000e+00, %39
  %42 = fmul float %29, %41
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %42) #19
  call fastcc void @widget_verts_to_quad_strip(ptr noundef nonnull %4, i32 noundef %25, ptr noundef nonnull %6) #20
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %6) #19
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %34) #19
  %43 = add nuw i32 %36, 1
  %44 = icmp eq i32 %36, %30
  br i1 %44, label %45, label %35, !llvm.loop !168

45:                                               ; preds = %35, %11
  call void @glDisableClientState(i32 noundef 32884) #19
  br label %46

46:                                               ; preds = %3, %45
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_menu_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [400 x i8], align 16
  tail call fastcc void @widget_type(i32 noundef 18) #20
  %8 = load i32, ptr %1, align 4, !tbaa.struct !123
  %9 = getelementptr inbounds i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa.struct !169
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load i64, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %13(ptr noundef nonnull @widget_type.wt, i32 noundef %4) #19
  %14 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  tail call void %14(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #19
  tail call void @uiStyleFontSet(ptr noundef %0) #19
  %15 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %15, align 2, !tbaa !170
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %17 = sitofp i16 %16 to float
  %18 = load i32, ptr %1, align 4, !tbaa !47
  %19 = sitofp i32 %18 to float
  %20 = tail call float @llvm.fmuladd.f32(float %17, float 2.500000e-01, float %19)
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %1, align 4, !tbaa !47
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %6
  %24 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %25 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %26 = sitofp i32 %25 to float
  %27 = fmul float %24, %26
  %28 = fdiv float %27, 7.200000e+01
  %29 = sitofp i32 %21 to float
  %30 = tail call float @llvm.fmuladd.f32(float %28, float 1.600000e+01, float %29)
  %31 = fptosi float %30 to i32
  store i32 %31, ptr %1, align 4, !tbaa !47
  br label %32

32:                                               ; preds = %23, %6
  %33 = icmp ne i8 %5, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %32
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 124) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %34
  store i8 0, ptr %35, align 1, !tbaa !42
  tail call void @uiStyleFontSet(ptr noundef nonnull %0) #19
  %38 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %39 = load i16, ptr %38, align 4, !tbaa !173
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i16, ptr %0, align 4, !tbaa !174
  %43 = sext i16 %42 to i32
  tail call void @BLF_enable(i32 noundef %43, i32 noundef 8) #19
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i16, ptr %0, align 4, !tbaa !174
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds i8, ptr %35, i64 1
  %48 = tail call float @BLF_width(i32 noundef %46, ptr noundef nonnull %47, i64 noundef 2147483647) #19
  %49 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %50 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %51 = sitofp i32 %50 to float
  %52 = fmul float %49, %51
  %53 = fdiv float %52, 7.200000e+01
  %54 = tail call float @llvm.fmuladd.f32(float %53, float 1.600000e+01, float %48)
  %55 = load i32, ptr %9, align 4, !tbaa !50
  %56 = sitofp i32 %55 to float
  %57 = fsub float %56, %54
  %58 = fptosi float %57 to i32
  store i32 %58, ptr %9, align 4, !tbaa !50
  %59 = load i16, ptr %38, align 4, !tbaa !173
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load i16, ptr %0, align 4, !tbaa !174
  %63 = sext i16 %62 to i32
  tail call void @BLF_disable(i32 noundef %63, i32 noundef 8) #19
  br label %64

64:                                               ; preds = %34, %61, %44, %32
  %65 = phi ptr [ %35, %61 ], [ %35, %44 ], [ null, %34 ], [ null, %32 ]
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %7) #18
  %66 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #20
  %67 = sitofp i32 %66 to float
  %68 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %69 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %70 = sitofp i32 %69 to float
  %71 = fmul float %68, %70
  %72 = fdiv float %71, 7.200000e+01
  %73 = fmul float %72, 1.600000e+01
  %74 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 400) #19
  %75 = call fastcc float @ui_text_clip_middle_ex(ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %67, float noundef %73, ptr noundef null) #20
  call void @glColor4ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #19
  call void @uiStyleFontDraw(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %7) #18
  %76 = icmp ne ptr %65, null
  %77 = and i1 %33, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  store i16 2, ptr %15, align 2, !tbaa !170
  %79 = add nsw i32 %10, -5
  store i32 %79, ptr %9, align 4, !tbaa !50
  %80 = getelementptr inbounds i8, ptr %65, i64 1
  call void @uiStyleFontDraw(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %80) #19
  store i8 124, ptr %65, align 1, !tbaa !42
  br label %81

81:                                               ; preds = %78, %64
  store i32 %8, ptr %1, align 4, !tbaa.struct !123
  store i32 %10, ptr %9, align 4, !tbaa.struct !169
  store i64 %12, ptr %11, align 4
  br i1 %22, label %98, label %82

82:                                               ; preds = %81
  %83 = trunc i64 %12 to i32
  %84 = sitofp i32 %8 to float
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %86 = sitofp i16 %85 to float
  %87 = call float @llvm.fmuladd.f32(float %86, float 0x3FC99999A0000000, float %84)
  %88 = fptosi float %87 to i32
  %89 = sitofp i32 %83 to float
  %90 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #20
  %91 = sitofp i32 %90 to float
  %92 = call float @llvm.fmuladd.f32(float %91, float 0x3FB99999A0000000, float %89)
  %93 = fptosi float %92 to i32
  %94 = fmul float %91, 0x3FE99999A0000000
  %95 = fdiv float 1.600000e+01, %94
  call void @glEnable(i32 noundef 3042) #19
  %96 = sitofp i32 %88 to float
  %97 = sitofp i32 %93 to float
  call void @UI_icon_draw_aspect(float noundef %96, float noundef %97, i32 noundef %3, float noundef %95, float noundef 1.000000e+00) #19
  call void @glDisable(i32 noundef 3042) #19
  br label %98

98:                                               ; preds = %82, %81
  ret void
}

; Function Attrs: optsize
declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef readonly %4) unnamed_addr #0 !PGOFuncName !175 {
  %6 = alloca [4 x i8], align 4
  %7 = alloca [400 x i8], align 16
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  tail call void @uiStyleFontSet(ptr noundef %0) #19
  %10 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 4, !tbaa !173
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i16, ptr %0, align 4, !tbaa !174
  %15 = sext i16 %14 to i32
  tail call void @BLF_enable(i32 noundef %15, i32 noundef 8) #19
  br label %16

16:                                               ; preds = %13, %5
  %17 = load i16, ptr %0, align 4, !tbaa !174
  %18 = sext i16 %17 to i32
  %19 = tail call float @BLF_width(i32 noundef %18, ptr noundef %1, i64 noundef 400) #19
  %20 = fcmp ogt float %2, 0.000000e+00
  %21 = fcmp ogt float %19, %2
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %86

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 10911970, ptr %6, align 4
  %24 = load i16, ptr %0, align 4, !tbaa !174
  %25 = sext i16 %24 to i32
  %26 = call float @BLF_width(i32 noundef %25, ptr noundef nonnull %6, i64 noundef 4) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %27 = icmp eq ptr %4, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %4) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #21
  %33 = load i16, ptr %0, align 4, !tbaa !174
  %34 = sext i16 %33 to i32
  %35 = call float @BLF_width(i32 noundef %34, ptr noundef nonnull %29, i64 noundef %32) #19
  store float %35, ptr %8, align 4, !tbaa !34
  %36 = fsub float %2, %35
  %37 = fcmp olt float %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = add i64 %32, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %29, i64 %39, i1 false)
  %40 = fadd float %35, %36
  br label %44

41:                                               ; preds = %31
  %42 = fsub float %19, %35
  %43 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %29) #19
  store i8 0, ptr %29, align 1, !tbaa !42
  br label %44

44:                                               ; preds = %23, %28, %38, %41
  %45 = phi float [ %36, %41 ], [ %2, %23 ], [ %2, %28 ], [ %40, %38 ]
  %46 = phi float [ %42, %41 ], [ %19, %23 ], [ %19, %28 ], [ %35, %38 ]
  %47 = phi i64 [ %32, %41 ], [ 0, %23 ], [ 0, %28 ], [ %32, %38 ]
  %48 = phi ptr [ %7, %41 ], [ null, %23 ], [ null, %28 ], [ null, %38 ]
  %49 = fsub float %45, %26
  %50 = fmul float %49, 5.000000e-01
  %51 = load i16, ptr %0, align 4, !tbaa !174
  %52 = sext i16 %51 to i32
  %53 = call i64 @BLF_width_to_strlen(i32 noundef %52, ptr noundef %1, i64 noundef 400, float noundef %50, ptr noundef nonnull %8) #19
  %54 = icmp ult i64 %53, 10
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = fsub float %46, %45
  %57 = call fastcc float @min_ff(float noundef %50, float noundef %56) #20
  %58 = fcmp olt float %57, %3
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %44
  call fastcc void @ui_text_clip_right_ex(ptr noundef nonnull %0, ptr noundef %1, float noundef %45, ptr noundef nonnull %6, float noundef %26, ptr noundef nonnull %9) #20
  br label %76

60:                                               ; preds = %55
  %61 = load i16, ptr %0, align 4, !tbaa !174
  %62 = sext i16 %61 to i32
  %63 = call i64 @BLF_width_to_rstrlen(i32 noundef %62, ptr noundef %1, i64 noundef 400, float noundef %50, ptr noundef nonnull %8) #19
  %64 = getelementptr inbounds i8, ptr %1, i64 %63
  %65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #21
  %66 = add i64 %65, 1
  %67 = add i64 %53, 3
  %68 = add i64 %67, %47
  %69 = add i64 %68, %66
  %70 = icmp ugt i64 %69, 400
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  call fastcc void @ui_text_clip_right_ex(ptr noundef nonnull %0, ptr noundef %1, float noundef %45, ptr noundef nonnull %6, float noundef %26, ptr noundef nonnull %9) #20
  br label %76

72:                                               ; preds = %60
  %73 = getelementptr inbounds i8, ptr %1, i64 %53
  %74 = getelementptr inbounds i8, ptr %73, i64 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %74, ptr align 1 %64, i64 %66, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %73, ptr noundef nonnull align 4 dereferenceable(3) %6, i64 3, i1 false)
  %75 = add i64 %65, %67
  store i64 %75, ptr %9, align 8, !tbaa !176
  br label %76

76:                                               ; preds = %71, %72, %59
  %77 = icmp eq ptr %48, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = load i64, ptr %9, align 8, !tbaa !176
  %80 = getelementptr inbounds i8, ptr %1, i64 %79
  %81 = add i64 %47, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr nonnull align 16 %48, i64 %81, i1 false)
  br label %82

82:                                               ; preds = %78, %76
  %83 = load i16, ptr %0, align 4, !tbaa !174
  %84 = sext i16 %83 to i32
  %85 = call float @BLF_width(i32 noundef %84, ptr noundef %1, i64 noundef 400) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %86

86:                                               ; preds = %82, %16
  %87 = phi float [ %85, %82 ], [ %19, %16 ]
  %88 = load i16, ptr %10, align 4, !tbaa !173
  %89 = icmp eq i16 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i16, ptr %0, align 4, !tbaa !174
  %92 = sext i16 %91 to i32
  call void @BLF_disable(i32 noundef %92, i32 noundef 8) #19
  br label %93

93:                                               ; preds = %90, %86
  ret float %87
}

; Function Attrs: optsize
declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_preview_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [400 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 0, ptr %7, align 8
  tail call fastcc void @widget_type(i32 noundef 18) #20
  %9 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 3), align 8, !tbaa !113
  tail call void %9(ptr noundef nonnull @widget_type.wt, i32 noundef %4) #19
  %10 = load ptr, ptr getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 4), align 8, !tbaa !119
  tail call void %10(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2), ptr noundef %1, i32 noundef 0, i32 noundef 0) #19
  tail call void @glEnable(i32 noundef 3042) #19
  tail call fastcc void @widget_draw_preview(i32 noundef %3, ptr noundef %1) #20
  %11 = load i16, ptr %0, align 4, !tbaa !174
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @BLF_width_and_height(i32 noundef %12, ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %14 = load i32, ptr %6, align 4, !tbaa !47
  %15 = sitofp i32 %14 to float
  %16 = load float, ptr %7, align 8, !tbaa !34
  %17 = fadd float %16, %15
  %18 = fadd float %17, 1.000000e+01
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = add nsw i32 %22, 10
  store i32 %23, ptr %21, align 4, !tbaa !52
  %24 = sitofp i32 %23 to float
  %25 = load float, ptr %13, align 4, !tbaa !34
  %26 = fadd float %25, %24
  %27 = fptosi float %26 to i32
  %28 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %27, ptr %28, align 4, !tbaa !53
  %29 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = add nsw i32 %30, -4
  %32 = icmp slt i32 %31, %19
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 %31, ptr %20, align 4, !tbaa !50
  br label %34

34:                                               ; preds = %5, %33
  %35 = add nsw i32 %27, 2
  %36 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = add nsw i32 %37, 4
  %39 = load i32, ptr %1, align 4, !tbaa !47
  %40 = add nsw i32 %39, 4
  %41 = load ptr, ptr @widget_type.wt, align 8, !tbaa !110
  %42 = getelementptr inbounds %struct.uiWidgetColors, ptr %41, i64 0, i32 2
  call void @glColor4ubv(ptr noundef nonnull %42) #19
  call void @glRecti(i32 noundef %40, i32 noundef %38, i32 noundef %31, i32 noundef %35) #19
  call void @glDisable(i32 noundef 3042) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %8) #18
  %43 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #20
  %44 = sitofp i32 %43 to float
  %45 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %47 = sitofp i32 %46 to float
  %48 = fmul float %45, %47
  %49 = fdiv float %48, 7.200000e+01
  %50 = fmul float %49, 1.600000e+01
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 400) #19
  %52 = call fastcc float @ui_text_clip_middle_ex(ptr noundef nonnull %0, ptr noundef nonnull %8, float noundef %44, float noundef %50, ptr noundef null) #20
  call void @glColor4ubv(ptr noundef nonnull getelementptr inbounds (%struct.uiWidgetType, ptr @widget_type.wt, i64 0, i32 2, i32 4)) #19
  call void @uiStyleFontDraw(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_draw_preview(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #20
  %6 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %6)
  %8 = icmp sgt i32 %7, 8
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = add nsw i32 %7, -8
  %11 = load i32, ptr %1, align 4, !tbaa !47
  %12 = sdiv i32 %5, 2
  %13 = lshr i32 %10, 1
  %14 = sub nsw i32 %12, %13
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = sdiv i32 %6, 2
  %19 = sub nsw i32 %18, %13
  %20 = add i32 %19, %17
  %21 = sitofp i32 %15 to float
  %22 = sitofp i32 %20 to float
  tail call void @UI_icon_draw_preview_aspect_size(float noundef %21, float noundef %22, i32 noundef %0, float noundef 1.000000e+00, i32 noundef %10) #19
  br label %23

23:                                               ; preds = %4, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @round_box__edges(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #12 !PGOFuncName !179 {
  %6 = alloca [9 x [2 x float]], align 16
  %7 = alloca [9 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #18
  %8 = load i32, ptr %2, align 4, !tbaa !47
  %9 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = sitofp i32 %15 to float
  %17 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %18 = fsub float %13, %17
  %19 = insertelement <2 x i32> poison, i32 %8, i64 0
  %20 = insertelement <2 x i32> %19, i32 %10, i64 1
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = insertelement <2 x float> poison, float %17, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fadd <2 x float> %23, %21
  %25 = fsub float %16, %17
  %26 = extractelement <2 x float> %24, i64 0
  %27 = fcmp une float %18, %26
  %28 = fsub float %18, %26
  %29 = fdiv float 1.000000e+00, %28
  %30 = select i1 %27, float %29, float 0.000000e+00
  %31 = extractelement <2 x float> %24, i64 1
  %32 = fsub float %25, %31
  %33 = fdiv float 1.000000e+00, %32
  %34 = and i32 %1, 3
  %35 = icmp ne i32 %34, 3
  %36 = and i32 %1, 12
  %37 = icmp ne i32 %36, 12
  %38 = and i1 %35, %37
  %39 = and i32 %1, 9
  %40 = icmp ne i32 %39, 9
  %41 = and i32 %1, 6
  %42 = icmp ne i32 %41, 6
  %43 = and i1 %40, %42
  %44 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #20
  %45 = zext i1 %38 to i32
  %46 = shl i32 %44, %45
  %47 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #20
  %48 = zext i1 %43 to i32
  %49 = shl i32 %47, %48
  %50 = tail call fastcc i32 @min_ii(i32 noundef %46, i32 noundef %49) #20
  %51 = fmul float %3, 2.000000e+00
  %52 = sitofp i32 %50 to float
  %53 = fcmp ogt float %51, %52
  %54 = fmul float %52, 5.000000e-01
  %55 = select i1 %53, float %54, float %3
  %56 = fadd float %4, 1.000000e+00
  %57 = fmul float %56, 2.000000e+00
  %58 = fcmp ogt float %57, %52
  %59 = fneg float %17
  %60 = tail call float @llvm.fmuladd.f32(float %52, float 5.000000e-01, float %59)
  %61 = select i1 %58, float %60, float %4
  %62 = insertelement <2 x float> poison, float %61, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = insertelement <2 x float> poison, float %55, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %5, %66
  %67 = phi i64 [ 0, %5 ], [ %74, %66 ]
  %68 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %67
  %69 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %67
  %70 = load <2 x float>, ptr %68, align 8, !tbaa !34
  %71 = fmul <2 x float> %63, %70
  store <2 x float> %71, ptr %69, align 8, !tbaa !34
  %72 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %67
  %73 = fmul <2 x float> %65, %70
  store <2 x float> %73, ptr %72, align 8, !tbaa !34
  %74 = add nuw nsw i64 %67, 1
  %75 = icmp eq i64 %74, 9
  br i1 %75, label %76, label %66, !llvm.loop !180

76:                                               ; preds = %66
  %77 = fcmp une float %25, %31
  %78 = select i1 %77, float %33, float 0.000000e+00
  %79 = and i32 %1, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %112, label %81

81:                                               ; preds = %76
  %82 = fadd float %31, %61
  %83 = extractelement <2 x float> %21, i64 1
  %84 = fadd float %55, %83
  %85 = extractelement <2 x float> %21, i64 0
  br label %86

86:                                               ; preds = %81, %86
  %87 = phi i64 [ 0, %81 ], [ %110, %86 ]
  %88 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %87
  %89 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %87, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = fadd float %26, %90
  %92 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %87
  store float %91, ptr %92, align 8, !tbaa !34
  %93 = load float, ptr %88, align 8, !tbaa !34
  %94 = fsub float %82, %93
  %95 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %87, i64 1
  store float %94, ptr %95, align 4, !tbaa !34
  %96 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %87
  %97 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %87, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = fadd float %98, %85
  %100 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %87
  store float %99, ptr %100, align 8, !tbaa !34
  %101 = load float, ptr %96, align 8, !tbaa !34
  %102 = fsub float %84, %101
  %103 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %87, i64 1
  store float %102, ptr %103, align 4, !tbaa !34
  %104 = fsub float %91, %26
  %105 = fmul float %30, %104
  %106 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %87
  store float %105, ptr %106, align 8, !tbaa !34
  %107 = fsub float %94, %31
  %108 = fmul float %78, %107
  %109 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %87, i64 1
  store float %108, ptr %109, align 4, !tbaa !34
  %110 = add nuw nsw i64 %87, 1
  %111 = icmp eq i64 %110, 9
  br i1 %111, label %116, label %86, !llvm.loop !181

112:                                              ; preds = %76
  %113 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  store <2 x float> %24, ptr %113, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2
  store <2 x float> %21, ptr %114, align 8, !tbaa !34
  %115 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4
  store <2 x float> zeroinitializer, ptr %115, align 8, !tbaa !34
  br label %116

116:                                              ; preds = %86, %112
  %117 = phi i32 [ 1, %112 ], [ 9, %86 ]
  %118 = and i32 %1, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %116
  %121 = fsub float %18, %61
  %122 = fsub float %13, %55
  %123 = zext nneg i32 %117 to i64
  %124 = insertelement <2 x float> %21, float %122, i64 0
  %125 = insertelement <2 x float> %24, float %121, i64 0
  %126 = insertelement <2 x float> poison, float %30, i64 0
  %127 = insertelement <2 x float> %126, float %78, i64 1
  br label %128

128:                                              ; preds = %120, %128
  %129 = phi i64 [ %123, %120 ], [ %143, %128 ]
  %130 = phi i64 [ 0, %120 ], [ %142, %128 ]
  %131 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %129
  %133 = load <2 x float>, ptr %131, align 8, !tbaa !34
  %134 = fadd <2 x float> %125, %133
  store <2 x float> %134, ptr %132, align 8, !tbaa !34
  %135 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %130
  %136 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %129
  %137 = load <2 x float>, ptr %135, align 8, !tbaa !34
  %138 = fadd <2 x float> %124, %137
  store <2 x float> %138, ptr %136, align 8, !tbaa !34
  %139 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %129
  %140 = fsub <2 x float> %134, %24
  %141 = fmul <2 x float> %127, %140
  store <2 x float> %141, ptr %139, align 8, !tbaa !34
  %142 = add nuw nsw i64 %130, 1
  %143 = add nuw nsw i64 %129, 1
  %144 = icmp eq i64 %142, 9
  br i1 %144, label %154, label %128, !llvm.loop !182

145:                                              ; preds = %116
  %146 = zext nneg i32 %117 to i64
  %147 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %146
  store float %18, ptr %147, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %146, i64 1
  store float %31, ptr %148, align 4, !tbaa !34
  %149 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %146
  store float %13, ptr %149, align 8, !tbaa !34
  %150 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %146, i64 1
  %151 = extractelement <2 x float> %21, i64 1
  store float %151, ptr %150, align 4, !tbaa !34
  %152 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %146
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %152, align 8, !tbaa !34
  %153 = add nuw nsw i32 %117, 1
  br label %156

154:                                              ; preds = %128
  %155 = trunc i64 %143 to i32
  br label %156

156:                                              ; preds = %154, %145
  %157 = phi i32 [ %153, %145 ], [ %155, %154 ]
  %158 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 1
  store i32 %157, ptr %158, align 4, !tbaa !86
  %159 = and i32 %1, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %195, label %161

161:                                              ; preds = %156
  %162 = fsub float %25, %61
  %163 = fsub float %16, %55
  %164 = zext nneg i32 %157 to i64
  %165 = insertelement <2 x float> poison, float %30, i64 0
  %166 = insertelement <2 x float> %165, float %78, i64 1
  %167 = insertelement <2 x float> poison, float %162, i64 0
  %168 = insertelement <2 x float> %167, float %18, i64 1
  br label %169

169:                                              ; preds = %161, %169
  %170 = phi i64 [ %164, %161 ], [ %193, %169 ]
  %171 = phi i64 [ 0, %161 ], [ %192, %169 ]
  %172 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %170
  %174 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %170, i64 1
  %175 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %171
  %176 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %171, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !34
  %178 = fsub float %13, %177
  %179 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %170
  store float %178, ptr %179, align 8, !tbaa !34
  %180 = load float, ptr %175, align 8, !tbaa !34
  %181 = fadd float %163, %180
  %182 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %170, i64 1
  store float %181, ptr %182, align 4, !tbaa !34
  %183 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %170
  %184 = load <2 x float>, ptr %172, align 8, !tbaa !34
  %185 = fsub <2 x float> %168, %184
  %186 = fadd <2 x float> %168, %184
  %187 = shufflevector <2 x float> %185, <2 x float> %186, <2 x i32> <i32 1, i32 2>
  %188 = extractelement <2 x float> %185, i64 1
  store float %188, ptr %173, align 8, !tbaa !34
  %189 = extractelement <2 x float> %186, i64 0
  store float %189, ptr %174, align 4, !tbaa !34
  %190 = fsub <2 x float> %187, %24
  %191 = fmul <2 x float> %166, %190
  store <2 x float> %191, ptr %183, align 8, !tbaa !34
  %192 = add nuw nsw i64 %171, 1
  %193 = add nuw nsw i64 %170, 1
  %194 = icmp eq i64 %192, 9
  br i1 %194, label %203, label %169, !llvm.loop !183

195:                                              ; preds = %156
  %196 = sext i32 %157 to i64
  %197 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %196
  store float %18, ptr %197, align 8, !tbaa !34
  %198 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %196, i64 1
  store float %25, ptr %198, align 4, !tbaa !34
  %199 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %196
  store float %13, ptr %199, align 8, !tbaa !34
  %200 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %196, i64 1
  store float %16, ptr %200, align 4, !tbaa !34
  %201 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %196
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %201, align 8, !tbaa !34
  %202 = add nsw i32 %157, 1
  br label %205

203:                                              ; preds = %169
  %204 = trunc i64 %193 to i32
  br label %205

205:                                              ; preds = %203, %195
  %206 = phi i32 [ %202, %195 ], [ %204, %203 ]
  %207 = and i32 %1, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %237, label %209

209:                                              ; preds = %205
  %210 = fadd float %26, %61
  %211 = extractelement <2 x float> %21, i64 0
  %212 = fadd float %55, %211
  %213 = zext nneg i32 %206 to i64
  %214 = insertelement <2 x float> poison, float %212, i64 0
  %215 = insertelement <2 x float> %214, float %16, i64 1
  %216 = insertelement <2 x float> poison, float %210, i64 0
  %217 = insertelement <2 x float> %216, float %25, i64 1
  %218 = insertelement <2 x float> poison, float %30, i64 0
  %219 = insertelement <2 x float> %218, float %78, i64 1
  br label %220

220:                                              ; preds = %209, %220
  %221 = phi i64 [ %213, %209 ], [ %235, %220 ]
  %222 = phi i64 [ 0, %209 ], [ %234, %220 ]
  %223 = getelementptr inbounds [9 x [2 x float]], ptr %7, i64 0, i64 %222
  %224 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %221
  %225 = load <2 x float>, ptr %223, align 8, !tbaa !34
  %226 = fsub <2 x float> %217, %225
  store <2 x float> %226, ptr %224, align 8, !tbaa !34
  %227 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %222
  %228 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %221
  %229 = load <2 x float>, ptr %227, align 8, !tbaa !34
  %230 = fsub <2 x float> %215, %229
  store <2 x float> %230, ptr %228, align 8, !tbaa !34
  %231 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %221
  %232 = fsub <2 x float> %226, %24
  %233 = fmul <2 x float> %219, %232
  store <2 x float> %233, ptr %231, align 8, !tbaa !34
  %234 = add nuw nsw i64 %222, 1
  %235 = add nuw nsw i64 %221, 1
  %236 = icmp eq i64 %234, 9
  br i1 %236, label %246, label %220, !llvm.loop !184

237:                                              ; preds = %205
  %238 = sext i32 %206 to i64
  %239 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %238
  store float %26, ptr %239, align 8, !tbaa !34
  %240 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %238, i64 1
  store float %25, ptr %240, align 4, !tbaa !34
  %241 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %238
  %242 = extractelement <2 x float> %21, i64 0
  store float %242, ptr %241, align 8, !tbaa !34
  %243 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %238, i64 1
  store float %16, ptr %243, align 4, !tbaa !34
  %244 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 4, i64 %238
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %244, align 8, !tbaa !34
  %245 = add nsw i32 %206, 1
  br label %248

246:                                              ; preds = %220
  %247 = trunc i64 %235 to i32
  br label %248

248:                                              ; preds = %246, %237
  %249 = phi i32 [ %245, %237 ], [ %247, %246 ]
  store i32 %249, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @round_box_shade_col4_r(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !185 {
  %5 = fcmp ugt float %3, 0.000000e+00
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = fcmp ogt float %3, 0x3FEFEFEFE0000000
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 2.550000e+02, float 5.000000e-01)
  %9 = select i1 %7, float 2.550000e+02, float %8
  %10 = fptoui float %9 to i8
  %11 = zext i8 %10 to i32
  br label %12

12:                                               ; preds = %4, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %4 ]
  %14 = xor i32 %13, 255
  %15 = load i8, ptr %1, align 1, !tbaa !42
  %16 = zext i8 %15 to i32
  %17 = mul nuw nsw i32 %13, %16
  %18 = load i8, ptr %2, align 1, !tbaa !42
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %14, %19
  %21 = add nuw nsw i32 %20, %17
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %0, align 1, !tbaa !42
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !42
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %13, %26
  %28 = getelementptr inbounds i8, ptr %2, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !42
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %14, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = lshr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %34, ptr %35, align 1, !tbaa !42
  %36 = getelementptr inbounds i8, ptr %1, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !42
  %38 = zext i8 %37 to i32
  %39 = mul nuw nsw i32 %13, %38
  %40 = getelementptr inbounds i8, ptr %2, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !42
  %42 = zext i8 %41 to i32
  %43 = mul nuw nsw i32 %14, %42
  %44 = add nuw nsw i32 %43, %39
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %46, ptr %47, align 1, !tbaa !42
  %48 = getelementptr inbounds i8, ptr %1, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !42
  %50 = zext i8 %49 to i32
  %51 = mul nuw nsw i32 %13, %50
  %52 = getelementptr inbounds i8, ptr %2, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !42
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %14, %54
  %56 = add nuw nsw i32 %55, %51
  %57 = lshr i32 %56, 8
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %58, ptr %59, align 1, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_verts_to_quad_strip(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !186 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %9 = shl nuw nsw i64 %8, 1
  %10 = getelementptr inbounds [2 x float], ptr %2, i64 %9
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %8
  tail call fastcc void @copy_v2_v2(ptr noundef %10, ptr noundef nonnull %11) #20
  %12 = or disjoint i64 %9, 1
  %13 = getelementptr inbounds [2 x float], ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3, i64 %8
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %7, !llvm.loop !187

17:                                               ; preds = %7
  %18 = shl nuw nsw i32 %1, 1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [2 x float], ptr %2, i64 %21
  %23 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef %22, ptr noundef nonnull %23) #20
  %24 = or disjoint i32 %20, 1
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [2 x float], ptr %2, i64 %25
  %27 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %26, ptr noundef nonnull %27) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_verts_to_quad_strip_open(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !188 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %22, %7 ]
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %8
  %10 = load float, ptr %9, align 8, !tbaa !34
  %11 = shl nuw nsw i64 %8, 1
  %12 = getelementptr inbounds [2 x float], ptr %2, i64 %11
  store float %10, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.uiWidgetBase, ptr %0, i64 0, i32 2, i64 %8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [2 x float], ptr %2, i64 %11, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = load float, ptr %9, align 8, !tbaa !34
  %17 = or disjoint i64 %11, 1
  %18 = getelementptr inbounds [2 x float], ptr %2, i64 %17
  store float %16, ptr %18, align 4, !tbaa !34
  %19 = load float, ptr %13, align 4, !tbaa !34
  %20 = fadd float %19, -1.000000e+00
  %21 = getelementptr inbounds [2 x float], ptr %2, i64 %17, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %24, label %7, !llvm.loop !189

24:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_trias_draw(ptr noundef %0) unnamed_addr #0 !PGOFuncName !190 {
  tail call void @glEnableClientState(i32 noundef 32884) #19
  %2 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 1
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %2) #19
  %3 = load i32, ptr %0, align 8, !tbaa !191
  %4 = mul i32 %3, 3
  %5 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %4, i32 noundef 5125, ptr noundef %6) #19
  tail call void @glDisableClientState(i32 noundef 32884) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !193 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_draw_tria_ex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #13 !PGOFuncName !194 {
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #20
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %10 = tail call fastcc i32 @min_ii(i32 noundef %8, i32 noundef %9) #20
  %11 = sitofp i32 %10 to float
  %12 = load i32, ptr %1, align 4, !tbaa !47
  %13 = sitofp i32 %12 to float
  %14 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FD99999A0000000, float %13)
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = sitofp i32 %16 to float
  %18 = tail call float @llvm.fmuladd.f32(float %11, float 5.000000e-01, float %17)
  %19 = fmul float %11, 0xBFD3333340000000
  switch i8 %2, label %34 [
    i8 114, label %20
    i8 116, label %26
    i8 98, label %32
  ]

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = sitofp i32 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %11, float 0xBFD99999A0000000, float %23)
  %25 = fneg float %19
  br label %34

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = sitofp i32 %28 to float
  %30 = tail call float @llvm.fmuladd.f32(float %11, float -5.000000e-01, float %29)
  %31 = fneg float %19
  br label %34

32:                                               ; preds = %7
  %33 = fneg float %19
  br label %34

34:                                               ; preds = %7, %26, %32, %20
  %35 = phi float [ %18, %20 ], [ %30, %26 ], [ %18, %32 ], [ %18, %7 ]
  %36 = phi float [ %25, %20 ], [ %19, %26 ], [ %33, %32 ], [ %19, %7 ]
  %37 = phi float [ %19, %20 ], [ %31, %26 ], [ %19, %32 ], [ %19, %7 ]
  %38 = phi float [ %24, %20 ], [ %14, %26 ], [ %14, %32 ], [ %14, %7 ]
  %39 = phi i64 [ 0, %20 ], [ 1, %26 ], [ 1, %32 ], [ 0, %7 ]
  %40 = phi i64 [ 1, %20 ], [ 0, %26 ], [ 0, %32 ], [ 1, %7 ]
  %41 = icmp sgt i32 %4, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = zext nneg i32 %4 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %54, %44 ]
  %46 = getelementptr inbounds [2 x float], ptr %3, i64 %45, i64 %39
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %36, float %47, float %38)
  %49 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 1, i64 %45
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds [2 x float], ptr %3, i64 %45, i64 %40
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = tail call float @llvm.fmuladd.f32(float %37, float %51, float %35)
  %53 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 1, i64 %45, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = add nuw nsw i64 %45, 1
  %55 = icmp eq i64 %54, %43
  br i1 %55, label %56, label %44, !llvm.loop !195

56:                                               ; preds = %44, %34
  store i32 %6, ptr %0, align 8, !tbaa !191
  %57 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 2
  store ptr %5, ptr %57, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ui_but_draw_menu_icon(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !196 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 46
  %8 = load i8, ptr %7, align 1, !tbaa !107
  %9 = icmp eq i8 %8, 2
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @ui_button_text_password_hide(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_draw_icon(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !197 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @glEnable(i32 noundef 3042) #19
  tail call fastcc void @widget_draw_preview(i32 noundef %1, ptr noundef %3) #20
  tail call void @glDisable(i32 noundef 3042) #19
  br label %136

12:                                               ; preds = %5
  %13 = icmp eq i32 %1, 77
  %14 = and i32 %8, 64
  %15 = icmp eq i32 %14, 0
  %16 = and i1 %13, %15
  br i1 %16, label %136, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 12
  %21 = load float, ptr %20, align 8, !tbaa !126
  %22 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %23 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %24 = sitofp i32 %23 to float
  %25 = fmul float %22, %24
  %26 = fdiv float %25, 7.200000e+01
  %27 = fdiv float %21, %26
  %28 = fdiv float 1.600000e+01, %27
  %29 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !108
  switch i32 %30, label %35 [
    i32 1536, label %31
    i32 1024, label %31
    i32 4608, label %31
    i32 18432, label %31
  ]

31:                                               ; preds = %17, %17, %17, %17
  %32 = and i32 %8, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %17, %31, %34
  %36 = phi float [ %2, %31 ], [ 5.000000e-01, %34 ], [ %2, %17 ]
  %37 = icmp eq i32 %30, 5120
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %40 = load float, ptr %39, align 8, !tbaa !74
  %41 = fcmp oeq float %40, 1.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %44 = load float, ptr %43, align 4, !tbaa !198
  %45 = fmul float %36, %44
  br label %46

46:                                               ; preds = %42, %38, %35
  %47 = phi float [ %45, %42 ], [ %36, %38 ], [ %36, %35 ]
  tail call void @glEnable(i32 noundef 3042) #19
  switch i32 %1, label %48 [
    i32 77, label %114
    i32 0, label %114
  ]

48:                                               ; preds = %46
  %49 = fdiv float 1.000000e+00, %27
  %50 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !112
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %18, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.uiBlock, ptr %55, i64 0, i32 27
  %57 = load i32, ptr %56, align 8, !tbaa !109
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %29, align 8, !tbaa !108
  switch i32 %61, label %66 [
    i32 20992, label %62
    i32 26624, label %62
  ]

62:                                               ; preds = %60, %60
  %63 = load i32, ptr %3, align 4, !tbaa !47
  %64 = sitofp i32 %63 to float
  %65 = tail call float @llvm.fmuladd.f32(float %49, float 4.000000e+00, float %64)
  br label %82

66:                                               ; preds = %60
  %67 = load i32, ptr %3, align 4, !tbaa !47
  %68 = sitofp i32 %67 to float
  %69 = fadd float %49, %68
  br label %82

70:                                               ; preds = %54
  %71 = load i32, ptr %3, align 4, !tbaa !47
  %72 = sitofp i32 %71 to float
  %73 = tail call float @llvm.fmuladd.f32(float %49, float 4.000000e+00, float %72)
  br label %82

74:                                               ; preds = %48
  %75 = load i32, ptr %3, align 4, !tbaa !47
  %76 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = add nsw i32 %77, %75
  %79 = sitofp i32 %78 to float
  %80 = fsub float %79, %28
  %81 = fmul float %80, 5.000000e-01
  br label %82

82:                                               ; preds = %70, %66, %62, %74
  %83 = phi float [ %81, %74 ], [ %65, %62 ], [ %69, %66 ], [ %73, %70 ]
  %84 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !52
  %86 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !53
  %88 = add nsw i32 %87, %85
  %89 = sitofp i32 %88 to float
  %90 = fsub float %89, %28
  %91 = fmul float %90, 5.000000e-01
  %92 = fcmp ogt float %27, 0x3FEE666660000000
  %93 = fcmp olt float %27, 0x3FF0CCCCC0000000
  %94 = and i1 %92, %93
  %95 = insertelement <2 x float> poison, float %91, i64 0
  %96 = insertelement <2 x float> %95, float %83, i64 1
  %97 = fadd <2 x float> %96, <float 0x3FB99999A0000000, float 0x3FB99999A0000000>
  %98 = fptosi <2 x float> %97 to <2 x i32>
  %99 = sitofp <2 x i32> %98 to <2 x float>
  %100 = select i1 %94, <2 x float> %99, <2 x float> %96
  %101 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  %102 = load ptr, ptr %101, align 8, !tbaa !199
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %82
  %105 = load i32, ptr %7, align 8, !tbaa !58
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.widget_draw_icon.rgb, i64 12, i1 false)
  %109 = extractelement <2 x float> %100, i64 0
  %110 = extractelement <2 x float> %100, i64 1
  call void @UI_icon_draw_aspect_color(float noundef %110, float noundef %109, i32 noundef %1, float noundef %27, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %114

111:                                              ; preds = %104, %82
  %112 = extractelement <2 x float> %100, i64 0
  %113 = extractelement <2 x float> %100, i64 1
  tail call void @UI_icon_draw_aspect(float noundef %113, float noundef %112, i32 noundef %1, float noundef %27, float noundef %47) #19
  br label %114

114:                                              ; preds = %108, %111, %46, %46
  %115 = icmp eq i8 %4, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = sitofp i32 %118 to float
  %120 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %121 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %122 = sitofp i32 %121 to float
  %123 = fmul float %120, %122
  %124 = fdiv float %123, 7.200000e+01
  %125 = call float @llvm.fmuladd.f32(float %124, float -1.600000e+01, float %119)
  %126 = fsub float %125, %27
  %127 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !52
  %129 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !53
  %131 = add nsw i32 %130, %128
  %132 = sitofp i32 %131 to float
  %133 = fsub float %132, %28
  %134 = fmul float %133, 5.000000e-01
  call void @UI_icon_draw_aspect(float noundef %126, float noundef %134, i32 noundef 28, float noundef %27, float noundef %47) #19
  br label %135

135:                                              ; preds = %116, %114
  call void @glDisable(i32 noundef 3042) #19
  br label %136

136:                                              ; preds = %12, %135, %11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_search_unlink_visible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_cursor(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !200 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %5 = sitofp i16 %4 to float
  %6 = fmul float %5, 2.500000e-01
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 12
  %10 = load float, ptr %9, align 8, !tbaa !126
  %11 = fdiv float %6, %10
  %12 = fadd float %11, 5.000000e-01
  %13 = fptosi float %12 to i32
  %14 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %15 = sub nsw i32 %14, %13
  %16 = tail call fastcc i32 @max_ii(i32 noundef %15, i32 noundef 0) #20
  tail call void @uiStyleFontSet(ptr noundef %0) #19
  %17 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 4, !tbaa !173
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i16, ptr %0, align 4, !tbaa !174
  %22 = sext i16 %21 to i32
  tail call void @BLF_enable(i32 noundef %22, i32 noundef 8) #19
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !128
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 12
  %27 = load i16, ptr %26, align 4, !tbaa !127
  %28 = icmp sgt i16 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i16 %27, ptr %24, align 2, !tbaa !128
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i16, ptr %0, align 4, !tbaa !174
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = tail call float @BLF_width(i32 noundef %32, ptr noundef %34, i64 noundef 2147483647) #19
  %36 = sitofp i32 %16 to float
  %37 = fcmp ugt float %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i16, ptr %24, align 2, !tbaa !128
  %40 = sext i16 %39 to i64
  br label %42

41:                                               ; preds = %30
  store i16 0, ptr %24, align 2, !tbaa !128
  br label %42

42:                                               ; preds = %38, %41
  %43 = phi i64 [ %40, %38 ], [ 0, %41 ]
  %44 = load i16, ptr %0, align 4, !tbaa !174
  %45 = sext i16 %44 to i32
  %46 = load ptr, ptr %33, align 8, !tbaa !118
  %47 = getelementptr inbounds i8, ptr %46, i64 %43
  %48 = tail call float @BLF_width(i32 noundef %45, ptr noundef %47, i64 noundef 2147483647) #19
  %49 = fptosi float %48 to i16
  %50 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 9
  store i16 %49, ptr %50, align 2, !tbaa !129
  %51 = sext i16 %49 to i32
  %52 = icmp slt i32 %16, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %42
  %54 = load ptr, ptr %33, align 8, !tbaa !118
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #21
  %56 = trunc i64 %55 to i32
  %57 = add nsw i32 %16, -20
  %58 = sitofp i32 %57 to float
  br label %59

59:                                               ; preds = %94, %53
  %60 = phi i16 [ %49, %53 ], [ %106, %94 ]
  %61 = phi i32 [ %56, %53 ], [ %95, %94 ]
  %62 = sext i16 %60 to i32
  %63 = icmp slt i32 %16, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %59
  %65 = load i16, ptr %0, align 4, !tbaa !174
  %66 = sext i16 %65 to i32
  %67 = load ptr, ptr %33, align 8, !tbaa !118
  %68 = load i16, ptr %24, align 2, !tbaa !128
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = load i16, ptr %26, align 4, !tbaa !127
  %72 = sext i16 %71 to i64
  %73 = sub nsw i64 %72, %69
  %74 = tail call float @BLF_width(i32 noundef %66, ptr noundef %70, i64 noundef %73) #19
  %75 = fcmp ogt float %74, %58
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load ptr, ptr %33, align 8, !tbaa !118
  tail call fastcc void @ui_text_clip_give_next_off(ptr noundef nonnull %1, ptr noundef %77) #20
  br label %94

78:                                               ; preds = %64
  %79 = fcmp olt float %74, 2.000000e+01
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = load i16, ptr %24, align 2, !tbaa !128
  %82 = icmp sgt i16 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load ptr, ptr %33, align 8, !tbaa !118
  tail call fastcc void @ui_text_clip_give_prev_off(ptr noundef nonnull %1, ptr noundef %84) #20
  br label %85

85:                                               ; preds = %83, %80, %78
  %86 = load ptr, ptr %33, align 8, !tbaa !118
  %87 = sext i32 %61 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %86, ptr noundef %88) #19
  %90 = tail call i32 @BLI_str_utf8_size(ptr noundef %89) #19
  %91 = icmp eq i32 %90, -1
  %92 = select i1 %91, i32 1, i32 %90
  %93 = sub nsw i32 %61, %92
  br label %94

94:                                               ; preds = %85, %76
  %95 = phi i32 [ %61, %76 ], [ %93, %85 ]
  %96 = load i16, ptr %0, align 4, !tbaa !174
  %97 = sext i16 %96 to i32
  %98 = load ptr, ptr %33, align 8, !tbaa !118
  %99 = load i16, ptr %24, align 2, !tbaa !128
  %100 = sext i16 %99 to i32
  %101 = sext i16 %99 to i64
  %102 = getelementptr inbounds i8, ptr %98, i64 %101
  %103 = sub nsw i32 %95, %100
  %104 = sext i32 %103 to i64
  %105 = tail call float @BLF_width(i32 noundef %97, ptr noundef %102, i64 noundef %104) #19
  %106 = fptosi float %105 to i16
  store i16 %106, ptr %50, align 2, !tbaa !129
  %107 = icmp slt i16 %106, 10
  br i1 %107, label %108, label %59

108:                                              ; preds = %94, %59, %42
  %109 = load i16, ptr %17, align 4, !tbaa !173
  %110 = icmp eq i16 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i16, ptr %0, align 4, !tbaa !174
  %113 = sext i16 %112 to i32
  tail call void @BLF_disable(i32 noundef %113, i32 noundef 8) #19
  br label %114

114:                                              ; preds = %111, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_right_label(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !201 {
  %4 = alloca float, align 4
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %6 = sitofp i16 %5 to float
  %7 = fmul float %6, 2.500000e-01
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 12
  %11 = load float, ptr %10, align 8, !tbaa !126
  %12 = fdiv float %7, %11
  %13 = fadd float %12, 1.000000e+00
  %14 = fptosi float %13 to i32
  %15 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %16 = sub nsw i32 %15, %14
  %17 = tail call fastcc i32 @max_ii(i32 noundef %16, i32 noundef 0) #20
  %18 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #21
  %20 = trunc i64 %19 to i32
  %21 = shl i64 %19, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %18, i64 %22
  tail call void @uiStyleFontSet(ptr noundef %0) #19
  %24 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %25 = load i16, ptr %24, align 4, !tbaa !173
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i16, ptr %0, align 4, !tbaa !174
  %29 = sext i16 %28 to i32
  tail call void @BLF_enable(i32 noundef %29, i32 noundef 8) #19
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i16, ptr %0, align 4, !tbaa !174
  %32 = sext i16 %31 to i32
  %33 = tail call float @BLF_width(i32 noundef %32, ptr noundef nonnull %18, i64 noundef 400) #19
  %34 = fptosi float %33 to i16
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 9
  store i16 %34, ptr %35, align 2, !tbaa !129
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 11
  store i16 0, ptr %36, align 2, !tbaa !128
  %37 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 58) #21
  %38 = icmp ne ptr %37, null
  %39 = getelementptr inbounds i8, ptr %23, i64 -2
  %40 = icmp ult ptr %37, %39
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %92

42:                                               ; preds = %30, %50
  %43 = phi i16 [ %70, %50 ], [ %34, %30 ]
  %44 = phi ptr [ %59, %50 ], [ %37, %30 ]
  %45 = phi i32 [ %62, %50 ], [ %20, %30 ]
  %46 = sext i16 %43 to i32
  %47 = icmp slt i32 %17, %46
  %48 = icmp ugt ptr %44, %18
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef nonnull %18, ptr noundef nonnull %44) #19
  %52 = ptrtoint ptr %44 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = shl i64 %54, 32
  %57 = ashr exact i64 %56, 32
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %44, i64 %58
  %60 = add nsw i32 %45, 1
  %61 = sext i32 %60 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %59, ptr nonnull align 1 %44, i64 %61, i1 false)
  %62 = sub nsw i32 %45, %55
  %63 = load i16, ptr %0, align 4, !tbaa !174
  %64 = sext i16 %63 to i32
  %65 = load i16, ptr %36, align 2, !tbaa !128
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds i8, ptr %18, i64 %66
  %68 = sub nsw i64 400, %66
  %69 = tail call float @BLF_width(i32 noundef %64, ptr noundef nonnull %67, i64 noundef %68) #19
  %70 = fptosi float %69 to i16
  store i16 %70, ptr %35, align 2, !tbaa !129
  %71 = icmp slt i16 %70, 10
  br i1 %71, label %72, label %42

72:                                               ; preds = %50, %42
  %73 = phi i16 [ %70, %50 ], [ %43, %42 ]
  %74 = phi i32 [ %62, %50 ], [ %45, %42 ]
  br label %75

75:                                               ; preds = %82, %72
  %76 = phi i16 [ %90, %82 ], [ %73, %72 ]
  %77 = sext i16 %76 to i32
  %78 = icmp slt i32 %17, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i16, ptr %36, align 2, !tbaa !128
  %81 = icmp slt i16 %80, 2
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  tail call fastcc void @ui_text_clip_give_next_off(ptr noundef nonnull %1, ptr noundef nonnull %18) #20
  %83 = load i16, ptr %0, align 4, !tbaa !174
  %84 = sext i16 %83 to i32
  %85 = load i16, ptr %36, align 2, !tbaa !128
  %86 = sext i16 %85 to i64
  %87 = getelementptr inbounds i8, ptr %18, i64 %86
  %88 = sub nsw i64 400, %86
  %89 = tail call float @BLF_width(i32 noundef %84, ptr noundef nonnull %87, i64 noundef %88) #19
  %90 = fptosi float %89 to i16
  store i16 %90, ptr %35, align 2, !tbaa !129
  %91 = icmp slt i16 %90, 10
  br i1 %91, label %92, label %75, !llvm.loop !202

92:                                               ; preds = %79, %82, %75, %30
  %93 = phi i16 [ %34, %30 ], [ %76, %79 ], [ %90, %82 ], [ %76, %75 ]
  %94 = phi i32 [ %20, %30 ], [ %74, %75 ], [ %74, %82 ], [ %74, %79 ]
  %95 = sext i16 %93 to i32
  %96 = icmp slt i32 %17, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %98 = load i16, ptr %0, align 4, !tbaa !174
  %99 = sext i16 %98 to i32
  %100 = load i16, ptr %36, align 2, !tbaa !128
  %101 = sext i16 %100 to i32
  %102 = sext i16 %100 to i64
  %103 = getelementptr inbounds i8, ptr %18, i64 %102
  %104 = sub nsw i32 %94, %101
  %105 = sext i32 %104 to i64
  %106 = sitofp i32 %17 to float
  %107 = call i64 @BLF_width_to_strlen(i32 noundef %99, ptr noundef nonnull %103, i64 noundef %105, float noundef %106, ptr noundef nonnull %4) #19
  %108 = load i16, ptr %36, align 2, !tbaa !128
  %109 = sext i16 %108 to i64
  %110 = add i64 %107, %109
  %111 = load float, ptr %4, align 4, !tbaa !34
  %112 = fptosi float %111 to i16
  store i16 %112, ptr %35, align 2, !tbaa !129
  %113 = shl i64 %110, 32
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17, i64 %114
  store i8 0, ptr %115, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %116

116:                                              ; preds = %97, %92
  %117 = load i16, ptr %24, align 4, !tbaa !173
  %118 = icmp eq i16 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i16, ptr %0, align 4, !tbaa !174
  %121 = sext i16 %120 to i32
  call void @BLF_disable(i32 noundef %121, i32 noundef 8) #19
  br label %122

122:                                              ; preds = %119, %116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_middle_protect_right(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !203 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !108
  switch i32 %5, label %6 [
    i32 5120, label %17
    i32 5632, label %17
  ]

6:                                                ; preds = %3
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 2.500000e-01
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 12
  %13 = load float, ptr %12, align 8, !tbaa !126
  %14 = fdiv float %9, %13
  %15 = fadd float %14, 5.000000e-01
  %16 = fptosi float %15 to i32
  br label %17

17:                                               ; preds = %3, %3, %6
  %18 = phi i32 [ %16, %6 ], [ 0, %3 ], [ 0, %3 ]
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %20 = sub nsw i32 %19, %18
  %21 = tail call fastcc i32 @max_ii(i32 noundef %20, i32 noundef 0) #20
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, 1.600000e+01
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.uiBlock, ptr %30, i64 0, i32 12
  %32 = load float, ptr %31, align 8, !tbaa !126
  %33 = fdiv float %28, %32
  %34 = fmul float %33, 2.000000e+00
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 11
  store i16 0, ptr %35, align 2, !tbaa !128
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17
  %37 = tail call fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef nonnull %36, float noundef %22, float noundef %34, ptr noundef nonnull @.str) #20
  %38 = fptosi float %37 to i16
  %39 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 9
  store i16 %38, ptr %39, align 2, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_middle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !204 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !108
  switch i32 %5, label %6 [
    i32 5120, label %17
    i32 5632, label %17
  ]

6:                                                ; preds = %3
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 2.500000e-01
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 12
  %13 = load float, ptr %12, align 8, !tbaa !126
  %14 = fdiv float %9, %13
  %15 = fadd float %14, 5.000000e-01
  %16 = fptosi float %15 to i32
  br label %17

17:                                               ; preds = %3, %3, %6
  %18 = phi i32 [ %16, %6 ], [ 0, %3 ], [ 0, %3 ]
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %20 = sub nsw i32 %19, %18
  %21 = tail call fastcc i32 @max_ii(i32 noundef %20, i32 noundef 0) #20
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, 1.600000e+01
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.uiBlock, ptr %30, i64 0, i32 12
  %32 = load float, ptr %31, align 8, !tbaa !126
  %33 = fdiv float %28, %32
  %34 = fmul float %33, 2.000000e+00
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 11
  store i16 0, ptr %35, align 2, !tbaa !128
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17
  %37 = tail call fastcc float @ui_text_clip_middle_ex(ptr noundef %0, ptr noundef nonnull %36, float noundef %22, float noundef %34, ptr noundef null) #20
  %38 = fptosi float %37 to i16
  %39 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 9
  store i16 %38, ptr %39, align 2, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_draw_text(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !205 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [128 x i8], align 16
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 17
  tail call void @uiStyleFontSet(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !112
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %4
  %18 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %18, align 2, !tbaa !170
  br label %25

19:                                               ; preds = %12
  %20 = and i32 %14, 8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  store i16 2, ptr %22, align 2, !tbaa !170
  br label %25

24:                                               ; preds = %19
  store i16 1, ptr %22, align 2, !tbaa !170
  br label %25

25:                                               ; preds = %23, %24, %17
  %26 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !173
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i16, ptr %0, align 4, !tbaa !174
  %31 = sext i16 %30 to i32
  tail call void @BLF_enable(i32 noundef %31, i32 noundef 8) #19
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !58
  %35 = and i32 %34, 33554432
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @ui_get_but_drag_multi_edit(ptr noundef nonnull %2) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 69
  %42 = load ptr, ptr %41, align 8, !tbaa !118
  %43 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 0, ptr %43, align 2, !tbaa !170
  br label %49

44:                                               ; preds = %32
  %45 = load ptr, ptr %9, align 8, !tbaa !118
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr %8, ptr %45
  %48 = select i1 %46, i32 400, i32 2147483647
  br label %52

49:                                               ; preds = %40, %37
  %50 = phi ptr [ %8, %37 ], [ %42, %40 ]
  %51 = load ptr, ptr %9, align 8, !tbaa !118
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  %54 = phi ptr [ %50, %49 ], [ %47, %44 ]
  %55 = phi i32 [ 400, %49 ], [ %48, %44 ]
  %56 = icmp eq ptr %53, null
  br i1 %56, label %140, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 12
  %59 = load i16, ptr %58, align 4, !tbaa !127
  %60 = icmp eq i16 %59, -1
  br i1 %60, label %140, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 14
  %63 = load i16, ptr %62, align 8, !tbaa !206
  %64 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 13
  %65 = load i16, ptr %64, align 2, !tbaa !207
  %66 = sext i16 %65 to i64
  %67 = icmp sgt i16 %63, %65
  br i1 %67, label %68, label %112

68:                                               ; preds = %61
  %69 = load i8, ptr %54, align 1, !tbaa !42
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %73 = load i16, ptr %72, align 2, !tbaa !128
  %74 = icmp slt i16 %65, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = sext i16 %73 to i64
  %77 = load i16, ptr %0, align 4, !tbaa !174
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds i8, ptr %54, i64 %76
  %80 = sub nsw i64 %66, %76
  %81 = tail call float @BLF_width(i32 noundef %78, ptr noundef nonnull %79, i64 noundef %80) #19
  %82 = fptosi float %81 to i32
  %83 = load i16, ptr %72, align 2, !tbaa !128
  %84 = load i16, ptr %62, align 8, !tbaa !206
  br label %85

85:                                               ; preds = %71, %75
  %86 = phi i16 [ %84, %75 ], [ %63, %71 ]
  %87 = phi i16 [ %83, %75 ], [ %73, %71 ]
  %88 = phi i32 [ %82, %75 ], [ 0, %71 ]
  %89 = load i16, ptr %0, align 4, !tbaa !174
  %90 = sext i16 %89 to i32
  %91 = sext i16 %87 to i64
  %92 = getelementptr inbounds i8, ptr %54, i64 %91
  %93 = sext i16 %86 to i64
  %94 = sub nsw i64 %93, %91
  %95 = tail call float @BLF_width(i32 noundef %90, ptr noundef nonnull %92, i64 noundef %94) #19
  %96 = fptosi float %95 to i32
  %97 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  tail call void @glColor4ubv(ptr noundef nonnull %97) #19
  %98 = load i32, ptr %3, align 4, !tbaa !47
  %99 = add nsw i32 %98, %88
  %100 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !52
  %102 = add nsw i32 %101, 2
  %103 = add nsw i32 %98, %96
  %104 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = add nsw i32 %105, -2
  %107 = tail call fastcc i32 @min_ii(i32 noundef %103, i32 noundef %106) #20
  %108 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !53
  %110 = add nsw i32 %109, -2
  tail call void @glRecti(i32 noundef %99, i32 noundef %102, i32 noundef %107, i32 noundef %110) #19
  %111 = load i16, ptr %58, align 4, !tbaa !127
  br label %112

112:                                              ; preds = %68, %85, %61
  %113 = phi i16 [ %59, %68 ], [ %111, %85 ], [ %59, %61 ]
  %114 = sext i16 %113 to i64
  %115 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %116 = load i16, ptr %115, align 2, !tbaa !128
  %117 = sext i16 %116 to i64
  %118 = icmp slt i16 %113, %116
  br i1 %118, label %140, label %119

119:                                              ; preds = %112
  %120 = load i8, ptr %54, align 1, !tbaa !42
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i16, ptr %0, align 4, !tbaa !174
  %124 = sext i16 %123 to i32
  %125 = getelementptr inbounds i8, ptr %54, i64 %117
  %126 = sub nsw i64 %114, %117
  %127 = tail call float @BLF_width(i32 noundef %124, ptr noundef nonnull %125, i64 noundef %126) #19
  %128 = fptosi float %127 to i32
  br label %129

129:                                              ; preds = %119, %122
  %130 = phi i32 [ %128, %122 ], [ 0, %119 ]
  tail call void @glColor3f(float noundef 0x3FC99999A0000000, float noundef 0x3FE3333340000000, float noundef 0x3FECCCCCC0000000) #19
  %131 = load i32, ptr %3, align 4, !tbaa !47
  %132 = add nsw i32 %131, %130
  %133 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !52
  %135 = add nsw i32 %134, 2
  %136 = add nsw i32 %132, 2
  %137 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !53
  %139 = add nsw i32 %138, -2
  tail call void @glRecti(i32 noundef %132, i32 noundef %135, i32 noundef %136, i32 noundef %139) #19
  br label %140

140:                                              ; preds = %112, %129, %57, %52
  %141 = load i16, ptr %26, align 4, !tbaa !173
  %142 = icmp eq i16 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i16, ptr %0, align 4, !tbaa !174
  %145 = sext i16 %144 to i32
  tail call void @BLF_disable(i32 noundef %145, i32 noundef 8) #19
  br label %146

146:                                              ; preds = %143, %140
  %147 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %148 = load ptr, ptr %147, align 8, !tbaa !67
  %149 = getelementptr inbounds %struct.uiBlock, ptr %148, i64 0, i32 27
  %150 = load i32, ptr %149, align 8, !tbaa !109
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr %9, align 8, !tbaa !118
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i32, ptr %33, align 8, !tbaa !58
  %158 = and i32 %157, 134217728
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %156
  %161 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %54, i32 noundef 124) #21
  %162 = icmp eq ptr %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %54 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds i8, ptr %161, i64 1
  br label %198

169:                                              ; preds = %160, %156, %153, %146
  %170 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !108
  switch i32 %171, label %198 [
    i32 2560, label %172
    i32 7168, label %172
  ]

172:                                              ; preds = %169, %169
  %173 = load ptr, ptr %9, align 8, !tbaa !118
  %174 = icmp eq ptr %173, null
  %175 = icmp eq ptr %54, %8
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %177, label %198

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %179 = load i16, ptr %178, align 2, !tbaa !128
  %180 = sext i16 %179 to i64
  %181 = getelementptr inbounds i8, ptr %8, i64 %180
  %182 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %181, i32 noundef 58) #21
  %183 = icmp eq ptr %182, null
  br i1 %183, label %194, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds i8, ptr %182, i64 1
  %186 = ptrtoint ptr %185 to i64
  %187 = ptrtoint ptr %8 to i64
  %188 = sub i64 %186, %187
  br label %189

189:                                              ; preds = %189, %184
  %190 = phi ptr [ %185, %184 ], [ %193, %189 ]
  %191 = load i8, ptr %190, align 1, !tbaa !42
  %192 = icmp eq i8 %191, 32
  %193 = getelementptr inbounds i8, ptr %190, i64 1
  br i1 %192, label %189, label %196, !llvm.loop !208

194:                                              ; preds = %177
  %195 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4
  tail call void @glColor4ubv(ptr noundef nonnull %195) #19
  br label %266

196:                                              ; preds = %189
  %197 = trunc i64 %188 to i32
  br label %198

198:                                              ; preds = %196, %163, %172, %169
  %199 = phi ptr [ null, %169 ], [ null, %172 ], [ %168, %163 ], [ %190, %196 ]
  %200 = phi i32 [ %55, %169 ], [ %55, %172 ], [ %167, %163 ], [ %197, %196 ]
  %201 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4
  tail call void @glColor4ubv(ptr noundef nonnull %201) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %202 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 11
  %203 = load i16, ptr %202, align 2, !tbaa !128
  %204 = sext i16 %203 to i32
  %205 = sext i16 %203 to i64
  %206 = getelementptr inbounds i8, ptr %54, i64 %205
  %207 = sub nsw i32 %200, %204
  %208 = sext i32 %207 to i64
  call void @uiStyleFontDrawExt(ptr noundef %0, ptr noundef %3, ptr noundef %206, i64 noundef %208, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %209 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 62
  %210 = load i8, ptr %209, align 2, !tbaa !209
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %264, label %212

212:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #18
  %213 = load i16, ptr %202, align 2, !tbaa !128
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds i8, ptr %54, i64 %214
  %216 = call fastcc i32 @min_ii(i32 noundef 128, i32 noundef %200) #20
  %217 = sext i32 %216 to i64
  %218 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %215, i64 noundef %217) #19
  %219 = load i8, ptr %209, align 2, !tbaa !209
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %220, -32
  %222 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef %221) #21
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %212
  %225 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef %220) #21
  %226 = icmp eq ptr %225, null
  br i1 %226, label %263, label %227

227:                                              ; preds = %212, %224
  %228 = phi ptr [ %225, %224 ], [ %222, %212 ]
  %229 = ptrtoint ptr %228 to i64
  %230 = ptrtoint ptr %7 to i64
  %231 = sub i64 %229, %230
  %232 = load i16, ptr %26, align 4, !tbaa !173
  %233 = icmp eq i16 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load i16, ptr %0, align 4, !tbaa !174
  %236 = sext i16 %235 to i32
  call void @BLF_enable(i32 noundef %236, i32 noundef 8) #19
  br label %237

237:                                              ; preds = %234, %227
  %238 = shl i64 %231, 32
  %239 = ashr exact i64 %238, 32
  %240 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %239
  store i8 0, ptr %240, align 1, !tbaa !42
  %241 = load i16, ptr %0, align 4, !tbaa !174
  %242 = sext i16 %241 to i32
  %243 = call float @BLF_width(i32 noundef %242, ptr noundef nonnull %7, i64 noundef %239) #19
  %244 = load i16, ptr %0, align 4, !tbaa !174
  %245 = sext i16 %244 to i32
  %246 = load i32, ptr %3, align 4, !tbaa !47
  %247 = sitofp i32 %246 to float
  %248 = load float, ptr %5, align 4, !tbaa !34
  %249 = fadd float %248, %247
  %250 = fadd float %243, %249
  %251 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !52
  %253 = sitofp i32 %252 to float
  %254 = load float, ptr %6, align 4, !tbaa !34
  %255 = fadd float %254, %253
  call void @BLF_position(i32 noundef %245, float noundef %250, float noundef %255, float noundef 0.000000e+00) #19
  %256 = load i16, ptr %0, align 4, !tbaa !174
  %257 = sext i16 %256 to i32
  call void @BLF_draw(i32 noundef %257, ptr noundef nonnull @.str.1, i64 noundef 2) #19
  %258 = load i16, ptr %26, align 4, !tbaa !173
  %259 = icmp eq i16 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %237
  %261 = load i16, ptr %0, align 4, !tbaa !174
  %262 = sext i16 %261 to i32
  call void @BLF_disable(i32 noundef %262, i32 noundef 8) #19
  br label %263

263:                                              ; preds = %237, %260, %224
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #18
  br label %264

264:                                              ; preds = %198, %263
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %265 = icmp eq ptr %199, null
  br i1 %265, label %281, label %266

266:                                              ; preds = %194, %264
  %267 = phi ptr [ %181, %194 ], [ %199, %264 ]
  %268 = getelementptr inbounds %struct.uiFontStyle, ptr %0, i64 0, i32 9
  store i16 2, ptr %268, align 2, !tbaa !170
  %269 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %270 = sitofp i16 %269 to float
  %271 = fmul float %270, 2.500000e-01
  %272 = load ptr, ptr %147, align 8, !tbaa !67
  %273 = getelementptr inbounds %struct.uiBlock, ptr %272, i64 0, i32 12
  %274 = load float, ptr %273, align 8, !tbaa !126
  %275 = fdiv float %271, %274
  %276 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !50
  %278 = sitofp i32 %277 to float
  %279 = fsub float %278, %275
  %280 = fptosi float %279 to i32
  store i32 %280, ptr %276, align 4, !tbaa !50
  call void @uiStyleFontDraw(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %267) #19
  br label %281

281:                                              ; preds = %266, %264
  ret void
}

; Function Attrs: optsize
declare void @UI_icon_draw_aspect_color(float noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !210 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_give_next_off(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !211 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 11
  %4 = load i16, ptr %3, align 2, !tbaa !128
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %6, ptr noundef null) #19
  %8 = load i16, ptr %3, align 2, !tbaa !128
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = ptrtoint ptr %7 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i16
  %15 = add i16 %8, %14
  store i16 %15, ptr %3, align 2, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_give_prev_off(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !212 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 11
  %4 = load i16, ptr %3, align 2, !tbaa !128
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %1, ptr noundef %6) #19
  %8 = load i16, ptr %3, align 2, !tbaa !128
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %7 to i64
  %13 = sub i64 %12, %11
  %14 = trunc i64 %13 to i16
  %15 = add i16 %8, %14
  store i16 %15, ptr %3, align 2, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_str_find_prev_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_str_find_next_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare i64 @BLF_width_to_strlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiStyleFontDrawExt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_state(ptr nocapture noundef %0, i32 noundef %1) #0 !PGOFuncName !213 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = and i32 %1, 16777232
  %8 = icmp eq i32 %7, 16777216
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !110
  br label %14

11:                                               ; preds = %2
  %12 = tail call ptr @UI_GetTheme() #19
  %13 = getelementptr inbounds %struct.bTheme, ptr %12, i64 0, i32 3, i32 16
  store ptr %13, ptr %0, align 8, !tbaa !110
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %10, %9 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 2 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !41
  %17 = and i32 %1, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %21 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %20, ptr noundef nonnull %21) #20
  %22 = and i32 %1, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 3
  br label %36

26:                                               ; preds = %19
  %27 = and i32 %1, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 1
  br label %36

31:                                               ; preds = %26
  %32 = and i32 %1, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 5
  br label %36

36:                                               ; preds = %24, %34, %29
  %37 = phi ptr [ %30, %29 ], [ %35, %34 ], [ %25, %24 ]
  %38 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !214
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %20, ptr noundef nonnull %37, float noundef %39) #20
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %42 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %41, ptr noundef nonnull %42) #20
  %43 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %44 = load <2 x i16>, ptr %43, align 2, !tbaa !43
  %45 = shufflevector <2 x i16> %44, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %45, ptr %43, align 2, !tbaa !43
  br label %88

46:                                               ; preds = %14
  %47 = and i32 %1, 16384
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %51 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 2
  %52 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 6
  %53 = load float, ptr %52, align 4, !tbaa !214
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %50, ptr noundef nonnull %51, float noundef %53) #20
  br label %69

54:                                               ; preds = %46
  %55 = and i32 %1, 8192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %59 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 6
  %60 = load float, ptr %59, align 4, !tbaa !214
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %58, ptr noundef %6, float noundef %60) #20
  br label %69

61:                                               ; preds = %54
  %62 = and i32 %1, 32768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %66 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 4
  %67 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %6, i64 0, i32 6
  %68 = load float, ptr %67, align 4, !tbaa !214
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %65, ptr noundef nonnull %66, float noundef %68) #20
  br label %69

69:                                               ; preds = %57, %64, %61, %49
  %70 = and i32 %1, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %74 = load i8, ptr %73, align 4, !tbaa !42
  %75 = icmp ugt i8 %74, -17
  %76 = add i8 %74, 15
  %77 = select i1 %75, i8 -1, i8 %76
  store i8 %77, ptr %73, align 4, !tbaa !42
  %78 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !42
  %80 = icmp ugt i8 %79, -17
  %81 = add i8 %79, 15
  %82 = select i1 %80, i8 -1, i8 %81
  store i8 %82, ptr %78, align 1, !tbaa !42
  %83 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 2
  %84 = load i8, ptr %83, align 2, !tbaa !42
  %85 = icmp ugt i8 %84, -17
  %86 = add i8 %84, 15
  %87 = select i1 %85, i8 -1, i8 %86
  store i8 %87, ptr %83, align 2, !tbaa !42
  br label %88

88:                                               ; preds = %69, %72, %40
  %89 = and i32 %1, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 255, ptr %3, align 4
  %92 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  call fastcc void @widget_state_blend(ptr noundef nonnull %92, ptr noundef nonnull %3, float noundef 0x3FD99999A0000000) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %93

93:                                               ; preds = %91, %88
  %94 = and i32 %1, 33554432
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %98 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %97, ptr noundef nonnull %98) #20
  %99 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %100 = load <2 x i16>, ptr %99, align 2, !tbaa !43
  %101 = shufflevector <2 x i16> %100, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %101, ptr %99, align 2, !tbaa !43
  %102 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %103 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %102, ptr noundef nonnull %103, float noundef 0x3FEB333340000000) #20
  br label %104

104:                                              ; preds = %96, %93
  %105 = and i32 %1, 512
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 12746838, ptr %4, align 4
  %108 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  call fastcc void @widget_state_blend(ptr noundef nonnull %108, ptr noundef nonnull %4, float noundef 0x3FD3333340000000) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %109

109:                                              ; preds = %107, %104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_but(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !215 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_state_label(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !216 {
  %3 = and i32 %1, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @UI_GetTheme() #19
  %7 = getelementptr inbounds %struct.bTheme, ptr %6, i64 0, i32 3, i32 16
  store ptr %7, ptr %0, align 8, !tbaa !110
  tail call void @widget_state(ptr noundef nonnull %0, i32 noundef %1) #20
  br label %14

8:                                                ; preds = %2
  tail call void @widget_state(ptr noundef %0, i32 noundef %1) #20
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @UI_GetThemeColor3ubv(i32 noundef 4, ptr noundef nonnull %11) #19
  br label %14

13:                                               ; preds = %8
  tail call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %11) #19
  br label %14

14:                                               ; preds = %12, %13, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_optionbut(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 %3) #0 !PGOFuncName !217 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #20
  %9 = add nsw i32 %8, %7
  %10 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !50
  %11 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #20
  %12 = sdiv i32 %11, 8
  %13 = add nsw i32 %12, 1
  %14 = add nsw i32 %13, %7
  store i32 %14, ptr %6, align 4, !tbaa !47
  %15 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = add nsw i32 %16, %13
  store i32 %17, ptr %15, align 4, !tbaa !52
  %18 = sub nsw i32 %9, %13
  store i32 %18, ptr %10, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = sub nsw i32 %20, %13
  store i32 %21, ptr %19, align 4, !tbaa !53
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull %6, float noundef %24) #20
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  call fastcc void @widget_check_trias(ptr noundef nonnull %28, ptr noundef nonnull %6) #20
  br label %29

29:                                               ; preds = %27, %4
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  %30 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #20
  %31 = sitofp i32 %30 to double
  %32 = sitofp i32 %13 to double
  %33 = call double @llvm.fmuladd.f64(double %31, double 0x3FE6666666666666, double %32)
  %34 = load i32, ptr %1, align 4, !tbaa !47
  %35 = sitofp i32 %34 to double
  %36 = fadd double %33, %35
  %37 = fptosi double %36 to i32
  store i32 %37, ptr %1, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_radiobut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !218 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_numbut(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !219 {
  tail call fastcc void @widget_numbut_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_numslider(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !220 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = alloca %struct.uiWidgetBase, align 8
  %8 = alloca %struct.rcti, align 4
  %9 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #18
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  call fastcc void @widget_init(ptr noundef nonnull %7) #20
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 5.000000e-01
  %13 = fmul float %12, 7.500000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %12) #20
  %14 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 6
  store i8 0, ptr %14, align 1, !tbaa !84
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  %15 = and i32 %3, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %5
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %9, ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3
  call fastcc void @copy_v3_v3_char(ptr noundef %1, ptr noundef nonnull %18) #20
  %19 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %19, ptr noundef nonnull %18) #20
  %20 = and i32 %3, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %24 = load <2 x i16>, ptr %23, align 2, !tbaa !43
  %25 = shufflevector <2 x i16> %24, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %25, ptr %23, align 2, !tbaa !43
  br label %26

26:                                               ; preds = %22, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  %27 = call double @ui_get_but_val(ptr noundef %0) #19
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %30 = load float, ptr %29, align 8, !tbaa !75
  %31 = fsub float %28, %30
  %32 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #20
  %33 = sitofp i32 %32 to float
  %34 = fsub float %33, %12
  %35 = fmul float %31, %34
  %36 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %37 = load float, ptr %36, align 4, !tbaa !76
  %38 = fsub float %37, %30
  %39 = fdiv float %35, %38
  %40 = load i32, ptr %8, align 4, !tbaa !47
  %41 = sitofp i32 %40 to double
  %42 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %43 = fadd float %12, %42
  %44 = call float @llvm.ceil.f32(float %43)
  %45 = fpext float %44 to double
  %46 = fadd double %41, %45
  %47 = fptosi double %46 to i32
  %48 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !50
  %49 = and i32 %4, -7
  call fastcc void @round_box_edges(ptr noundef nonnull %7, i32 noundef %49, ptr noundef nonnull %8, float noundef %12) #20
  %50 = getelementptr inbounds %struct.uiWidgetBase, ptr %7, i64 0, i32 6
  store i8 0, ptr %50, align 1, !tbaa !84
  call fastcc void @widgetbase_draw(ptr noundef nonnull %7, ptr noundef %1) #20
  %51 = sitofp i32 %40 to float
  %52 = fadd float %39, %51
  %53 = fadd float %12, %52
  %54 = fptosi float %53 to i32
  store i32 %54, ptr %48, align 4, !tbaa !50
  %55 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %56 = fsub float %12, %55
  %57 = call float @llvm.floor.f32(float %56)
  %58 = fpext float %57 to double
  %59 = fadd double %41, %58
  %60 = fptosi double %59 to i32
  store i32 %60, ptr %8, align 4, !tbaa !47
  %61 = sitofp i32 %54 to float
  %62 = fadd float %12, %61
  %63 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = sitofp i32 %64 to float
  %66 = fcmp ogt float %62, %65
  %67 = and i32 %4, -10
  %68 = fsub float %62, %65
  %69 = fdiv float %68, %12
  %70 = fmul float %12, %69
  %71 = select i1 %66, i32 %67, i32 0
  %72 = select i1 %66, float %70, float 0.000000e+00
  call fastcc void @round_box_edges(ptr noundef nonnull %7, i32 noundef %71, ptr noundef nonnull %8, float noundef %72) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %7, ptr noundef %1) #20
  call fastcc void @copy_v3_v3_char(ptr noundef %1, ptr noundef nonnull %9) #20
  br i1 %21, label %73, label %77

73:                                               ; preds = %26
  %74 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 7
  %75 = load <2 x i16>, ptr %74, align 2, !tbaa !43
  %76 = shufflevector <2 x i16> %75, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %76, ptr %74, align 2, !tbaa !43
  br label %77

77:                                               ; preds = %73, %26
  store i8 1, ptr %14, align 1, !tbaa !84
  %78 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  store i8 0, ptr %78, align 8, !tbaa !96
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  %79 = load <2 x i32>, ptr %2, align 4, !tbaa !77
  %80 = sitofp <2 x i32> %79 to <2 x float>
  %81 = insertelement <2 x float> poison, float %13, i64 0
  %82 = shufflevector <2 x float> %81, <2 x float> poison, <2 x i32> zeroinitializer
  %83 = fadd <2 x float> %82, %80
  %84 = fsub <2 x float> %80, %82
  %85 = shufflevector <2 x float> %83, <2 x float> %84, <2 x i32> <i32 0, i32 3>
  %86 = fptosi <2 x float> %85 to <2 x i32>
  store <2 x i32> %86, ptr %2, align 4, !tbaa !77
  br label %89

87:                                               ; preds = %5
  store i8 1, ptr %14, align 1, !tbaa !84
  %88 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 5
  store i8 0, ptr %88, align 8, !tbaa !96
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  br label %89

89:                                               ; preds = %87, %77
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_state_numslider(ptr nocapture noundef %0, i32 noundef %1) #0 !PGOFuncName !221 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 6
  %6 = load float, ptr %5, align 4, !tbaa !214
  %7 = fadd float %6, 0xBFC99999A0000000
  tail call void @widget_state(ptr noundef %0, i32 noundef %1) #20
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %1, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %32, label %12

12:                                               ; preds = %2
  br i1 %11, label %16, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 3
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %7) #20
  br label %28

16:                                               ; preds = %12
  %17 = and i32 %1, 8192
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 1
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %20, ptr noundef nonnull %21, float noundef %7) #20
  br label %28

22:                                               ; preds = %16
  %23 = and i32 %1, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %27 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 5
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %26, ptr noundef nonnull %27, float noundef %7) #20
  br label %28

28:                                               ; preds = %13, %22, %25, %19
  %29 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 7
  %30 = load <2 x i16>, ptr %29, align 2, !tbaa !43
  %31 = shufflevector <2 x i16> %30, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %31, ptr %29, align 2, !tbaa !43
  br label %47

32:                                               ; preds = %2
  br i1 %11, label %36, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %35 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 2
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %34, ptr noundef nonnull %35, float noundef %7) #20
  br label %47

36:                                               ; preds = %32
  %37 = and i32 %1, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %40, ptr noundef nonnull %4, float noundef %7) #20
  br label %47

41:                                               ; preds = %36
  %42 = and i32 %1, 32768
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  %46 = getelementptr inbounds %struct.uiWidgetStateColors, ptr %4, i64 0, i32 4
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %45, ptr noundef nonnull %46, float noundef %7) #20
  br label %47

47:                                               ; preds = %33, %41, %44, %39, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_roundbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !222 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 2.500000e-01
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menu_back(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !223 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = and i32 %2, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  switch i32 %3, label %28 [
    i32 2, label %9
    i32 1, label %16
  ]

9:                                                ; preds = %8
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %11 = sitofp i16 %10 to float
  %12 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = sitofp i32 %13 to float
  %15 = tail call float @llvm.fmuladd.f32(float %11, float 0xBFB99999A0000000, float %14)
  br label %23

16:                                               ; preds = %8
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %18 = sitofp i16 %17 to float
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = sitofp i32 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %18, float 0x3FB99999A0000000, float %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi float [ %15, %9 ], [ %22, %16 ]
  %25 = phi ptr [ %12, %9 ], [ %19, %16 ]
  %26 = phi i32 [ 12, %9 ], [ 3, %16 ]
  %27 = fptosi float %24 to i32
  store i32 %27, ptr %25, align 4, !tbaa !77
  br label %28

28:                                               ; preds = %23, %8, %4
  %29 = phi i32 [ 15, %4 ], [ 15, %8 ], [ %26, %23 ]
  tail call void @glEnable(i32 noundef 3042) #19
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %31 = sitofp i16 %30 to float
  %32 = fmul float %31, 2.500000e-01
  tail call fastcc void @widget_softshadow(ptr noundef %1, i32 noundef %29, float noundef %32) #20
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 2.500000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %29, ptr noundef %1, float noundef %35) #20
  %36 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 7
  store i8 0, ptr %36, align 2, !tbaa !81
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @glDisable(i32 noundef 3042) #19
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_textbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !224 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %10 = load <2 x i16>, ptr %9, align 2, !tbaa !43
  %11 = shufflevector <2 x i16> %10, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %11, ptr %9, align 2, !tbaa !43
  br label %12

12:                                               ; preds = %8, %4
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %14 = sitofp i16 %13 to float
  %15 = fmul float %14, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %15) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menubut(ptr noundef %0, ptr nocapture noundef %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !225 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8) #20
  %9 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 9
  call fastcc void @widget_menu_trias(ptr noundef nonnull %9, ptr noundef %1) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  %10 = call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %11 = mul nsw i32 %10, 6
  %12 = sdiv i32 %11, -10
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = add i32 %12, %14
  store i32 %15, ptr %13, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menuiconbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !226 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %8) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menunodebut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) #0 !PGOFuncName !227 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = alloca %struct.uiWidgetColors, align 2
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %6, ptr noundef nonnull align 2 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !41
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %9) #20
  %10 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 2, !tbaa !42
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 15
  %14 = tail call fastcc i32 @min_ii(i32 noundef %13, i32 noundef 255) #20
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %10, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !42
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %18, 15
  %20 = tail call fastcc i32 @min_ii(i32 noundef %19, i32 noundef 255) #20
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %16, align 1, !tbaa !42
  %22 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 1, i64 2
  %23 = load i8, ptr %22, align 2, !tbaa !42
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %24, 15
  %26 = tail call fastcc i32 @min_ii(i32 noundef %25, i32 noundef 255) #20
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %22, align 2, !tbaa !42
  %28 = load i8, ptr %0, align 2, !tbaa !42
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 15
  %31 = tail call fastcc i32 @min_ii(i32 noundef %30, i32 noundef 255) #20
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %0, align 2, !tbaa !42
  %33 = getelementptr inbounds [4 x i8], ptr %0, i64 0, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !42
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 15
  %37 = tail call fastcc i32 @min_ii(i32 noundef %36, i32 noundef 255) #20
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %33, align 1, !tbaa !42
  %39 = getelementptr inbounds [4 x i8], ptr %0, i64 0, i64 2
  %40 = load i8, ptr %39, align 2, !tbaa !42
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 15
  %43 = tail call fastcc i32 @min_ii(i32 noundef %42, i32 noundef 255) #20
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %39, align 2, !tbaa !42
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_pulldownbut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !PGOFuncName !228 {
  %5 = alloca %struct.uiWidgetBase, align 8
  %6 = and i32 %2, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 0x3FC99999A0000000
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef %3, ptr noundef %1, float noundef %11) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  br label %12

12:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_pulldown(ptr nocapture noundef %0, i32 noundef %1) #14 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !41
  %5 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  %7 = and i32 %1, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  br label %12

12:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menu_itembut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 %3) #0 !PGOFuncName !230 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  store i8 0, ptr %6, align 1, !tbaa !84
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %1, float noundef 0.000000e+00) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_menu_item(ptr nocapture noundef %0, i32 noundef %1) #14 !PGOFuncName !231 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !41
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 2052
  %8 = icmp eq i32 %7, 2052
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 5.000000e-01) #20
  %12 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %12, ptr noundef nonnull %13) #20
  %14 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 64, ptr %14, align 1, !tbaa !42
  br label %27

15:                                               ; preds = %2
  %16 = and i32 %1, 133120
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %19, ptr noundef nonnull %20, float noundef 5.000000e-01) #20
  br label %27

21:                                               ; preds = %15
  br i1 %6, label %27, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %24 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %23, ptr noundef nonnull %24) #20
  %25 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %26 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %25, ptr noundef nonnull %26) #20
  br label %27

27:                                               ; preds = %18, %22, %21, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_icon_has_anim(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !232 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = and i32 %3, 122880
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  %10 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 6
  store i8 0, ptr %10, align 1, !tbaa !84
  %11 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 5.000000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef 15, ptr noundef %2, float noundef %13) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  br label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !108
  %17 = icmp eq i32 %16, 2560
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call fastcc void @widget_numbut_embossn(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #20
  br label %19

19:                                               ; preds = %14, %18, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_swatch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !233 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 51
  %11 = load i8, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %5
  %17 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %14) #19
  %18 = icmp eq i32 %17, 30
  %19 = select i1 %18, i8 0, i8 %11
  %20 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %13, align 8, !tbaa !73
  %22 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %20, ptr noundef %21) #19
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load ptr, ptr %13, align 8, !tbaa !73
  %26 = tail call float @RNA_property_float_get_index(ptr noundef nonnull %20, ptr noundef %25, i32 noundef 3) #19
  store float %26, ptr %12, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %16, %24, %5
  %28 = phi i8 [ %19, %24 ], [ %19, %16 ], [ %11, %5 ]
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 2.500000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %31) #20
  call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %7) #19
  %32 = and i32 %3, 122880
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  %35 = load <4 x i32>, ptr %2, align 4, !tbaa !77
  %36 = add nsw <4 x i32> %35, <i32 3, i32 -3, i32 3, i32 -3>
  store <4 x i32> %36, ptr %2, align 4, !tbaa !77
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull %2, float noundef %31) #20
  br label %37

37:                                               ; preds = %34, %27
  %38 = icmp eq i8 %28, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %8, align 8, !tbaa !67
  call void @ui_block_to_display_space_v3(ptr noundef %40, ptr noundef nonnull %7) #19
  br label %41

41:                                               ; preds = %39, %37
  %42 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call void @rgba_float_to_uchar(ptr noundef nonnull %42, ptr noundef nonnull %7) #19
  %43 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 6
  store i16 0, ptr %43, align 2, !tbaa !97
  %44 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = icmp ne i8 %45, -1
  %47 = zext i1 %46 to i16
  %48 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 9
  store i16 %47, ptr %48, align 2, !tbaa !98
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  %49 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %50 = load float, ptr %49, align 8, !tbaa !74
  %51 = fcmp oeq float %50, 2.000000e+01
  br i1 %51, label %52, label %95

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !234
  %55 = getelementptr inbounds %struct.Palette, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !235
  %57 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %58 = load float, ptr %57, align 4, !tbaa !198
  %59 = fptosi float %58 to i32
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = load i32, ptr %2, align 4, !tbaa !47
  %65 = sub nsw i32 %63, %64
  %66 = sitofp i32 %65 to float
  %67 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !52
  %71 = sub nsw i32 %68, %70
  %72 = sitofp i32 %71 to float
  %73 = call fastcc float @rgb_to_bw(ptr noundef nonnull %7) #20
  %74 = fcmp ogt float %73, 5.000000e-01
  %75 = select i1 %74, float -5.000000e-01, float 5.000000e-01
  %76 = fadd float %73, %75
  call void @glColor4f(float noundef %76, float noundef %76, float noundef %76, float noundef 1.000000e+00) #19
  call void @glBegin(i32 noundef 4) #19
  %77 = load i32, ptr %2, align 4, !tbaa !47
  %78 = sitofp i32 %77 to float
  %79 = call float @llvm.fmuladd.f32(float %66, float 0x3FB99999A0000000, float %78)
  %80 = load i32, ptr %69, align 4, !tbaa !52
  %81 = sitofp i32 %80 to float
  %82 = call float @llvm.fmuladd.f32(float %72, float 0x3FECCCCCC0000000, float %81)
  call void @glVertex2f(float noundef %79, float noundef %82) #19
  %83 = load i32, ptr %2, align 4, !tbaa !47
  %84 = sitofp i32 %83 to float
  %85 = call float @llvm.fmuladd.f32(float %66, float 0x3FB99999A0000000, float %84)
  %86 = load i32, ptr %69, align 4, !tbaa !52
  %87 = sitofp i32 %86 to float
  %88 = call float @llvm.fmuladd.f32(float %72, float 5.000000e-01, float %87)
  call void @glVertex2f(float noundef %85, float noundef %88) #19
  %89 = load i32, ptr %2, align 4, !tbaa !47
  %90 = sitofp i32 %89 to float
  %91 = call float @llvm.fmuladd.f32(float %66, float 5.000000e-01, float %90)
  %92 = load i32, ptr %69, align 4, !tbaa !52
  %93 = sitofp i32 %92 to float
  %94 = call float @llvm.fmuladd.f32(float %72, float 0x3FECCCCCC0000000, float %93)
  call void @glVertex2f(float noundef %91, float noundef %94) #19
  call void @glEnd() #19
  br label %95

95:                                               ; preds = %61, %52, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_box(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4) #0 !PGOFuncName !238 {
  %6 = alloca %struct.uiWidgetBase, align 8
  %7 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #18
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  %8 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26
  %14 = load i8, ptr %13, align 8, !tbaa !42
  store i8 %14, ptr %8, align 2, !tbaa !42
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !42
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 26, i64 2
  %19 = load i8, ptr %18, align 2, !tbaa !42
  %20 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 2
  store i8 %19, ptr %20, align 2, !tbaa !42
  br label %21

21:                                               ; preds = %12, %5
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef %4, ptr noundef %2, float noundef %24) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, i32 %4) #0 !PGOFuncName !239 {
  tail call void @ui_draw_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_nothing(ptr nocapture noundef %0, i32 %1) #14 !PGOFuncName !240 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_scroll(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 %4) #0 !PGOFuncName !241 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %7 = tail call double @ui_get_but_val(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %9 = load float, ptr %8, align 4, !tbaa !76
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %11 = load float, ptr %10, align 8, !tbaa !74
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %14 = load float, ptr %13, align 8, !tbaa !75
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @max_ff(float noundef %15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  %17 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %2) #20
  %18 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %5
  %21 = sitofp i32 %17 to float
  %22 = fdiv float %21, %16
  %23 = load i32, ptr %6, align 4, !tbaa !47
  %24 = sitofp i32 %23 to float
  %25 = fptrunc double %7 to float
  %26 = fsub float %25, %14
  %27 = fmul float %26, %22
  %28 = tail call float @llvm.ceil.f32(float %27)
  %29 = fadd float %28, %24
  %30 = fptosi float %29 to i32
  store i32 %30, ptr %6, align 4, !tbaa !47
  %31 = sitofp i32 %30 to float
  %32 = fsub float %11, %14
  %33 = fmul float %32, %22
  %34 = tail call float @llvm.ceil.f32(float %33)
  %35 = fadd float %34, %31
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !50
  %38 = sitofp i32 %18 to float
  %39 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #20
  %40 = sitofp i32 %39 to float
  %41 = fcmp olt float %40, %38
  br i1 %41, label %42, label %91

42:                                               ; preds = %20
  %43 = fadd float %38, %31
  %44 = fptosi float %43 to i32
  store i32 %44, ptr %37, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %48, label %91

48:                                               ; preds = %42
  store i32 %46, ptr %37, align 4, !tbaa !50
  %49 = sitofp i32 %46 to float
  %50 = fsub float %49, %38
  %51 = fptosi float %50 to i32
  %52 = load i32, ptr %2, align 4, !tbaa !47
  %53 = tail call fastcc i32 @max_ii(i32 noundef %51, i32 noundef %52) #20
  store i32 %53, ptr %6, align 4, !tbaa !47
  br label %91

54:                                               ; preds = %5
  %55 = sitofp i32 %18 to float
  %56 = fdiv float %55, %16
  %57 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = sitofp i32 %58 to float
  %60 = fptrunc double %7 to float
  %61 = fsub float %60, %14
  %62 = fmul float %61, %56
  %63 = tail call float @llvm.ceil.f32(float %62)
  %64 = fsub float %59, %63
  %65 = fptosi float %64 to i32
  store i32 %65, ptr %57, align 4, !tbaa !53
  %66 = sitofp i32 %65 to float
  %67 = fsub float %11, %14
  %68 = fmul float %67, %56
  %69 = tail call float @llvm.ceil.f32(float %68)
  %70 = fsub float %66, %69
  %71 = fptosi float %70 to i32
  %72 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %71, ptr %72, align 4, !tbaa !52
  %73 = sitofp i32 %17 to float
  %74 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #20
  %75 = sitofp i32 %74 to float
  %76 = fcmp olt float %75, %73
  br i1 %76, label %77, label %91

77:                                               ; preds = %54
  %78 = sitofp i32 %71 to float
  %79 = fadd float %73, %78
  %80 = fptosi float %79 to i32
  store i32 %80, ptr %57, align 4, !tbaa !53
  %81 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !53
  %83 = icmp slt i32 %82, %80
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  store i32 %82, ptr %57, align 4, !tbaa !53
  %85 = sitofp i32 %82 to float
  %86 = fsub float %85, %73
  %87 = fptosi float %86 to i32
  %88 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !52
  %90 = tail call fastcc i32 @max_ii(i32 noundef %87, i32 noundef %89) #20
  store i32 %90, ptr %72, align 4, !tbaa !52
  br label %91

91:                                               ; preds = %54, %84, %77, %20, %48, %42
  %92 = and i32 %3, 1
  call void @uiWidgetScrollDraw(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %92) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_list_itembut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 %3) #0 !PGOFuncName !242 {
  %5 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %5) #18
  call fastcc void @widget_init(ptr noundef nonnull %5) #20
  %6 = getelementptr inbounds %struct.uiWidgetBase, ptr %5, i64 0, i32 6
  store i8 0, ptr %6, align 1, !tbaa !84
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !125
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3FC99999A0000000
  call fastcc void @round_box_edges(ptr noundef nonnull %5, i32 noundef 15, ptr noundef %1, float noundef %9) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %5, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_progressbar(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 %3, i32 %4) #0 !PGOFuncName !243 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %9 = load float, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = sitofp i32 %11 to float
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  %17 = fdiv float %16, 7.200000e+01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %12)
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !53
  %21 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = sitofp i32 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %23)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !53
  %27 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #20
  %28 = sitofp i32 %27 to float
  %29 = fmul float %9, %28
  %30 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #20
  %31 = sitofp i32 %30 to float
  %32 = fcmp ogt float %29, %31
  %33 = select i1 %32, float %29, float %31
  %34 = load i32, ptr %7, align 4, !tbaa !47
  %35 = sitofp i32 %34 to float
  %36 = fadd float %33, %35
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %37, ptr %38, align 4, !tbaa !50
  call void @uiWidgetScrollDraw(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #20
  %39 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %40 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !172
  %41 = sitofp i32 %40 to float
  %42 = fmul float %39, %41
  %43 = fdiv float %42, 7.200000e+01
  %44 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = sitofp i32 %45 to float
  %47 = tail call float @llvm.fmuladd.f32(float %43, float 6.000000e+00, float %46)
  %48 = fptosi float %47 to i32
  store i32 %48, ptr %44, align 4, !tbaa !52
  %49 = load i32, ptr %2, align 4, !tbaa !47
  %50 = sitofp i32 %49 to float
  %51 = tail call float @llvm.fmuladd.f32(float %43, float -6.000000e+00, float %50)
  %52 = fptosi float %51 to i32
  store i32 %52, ptr %2, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @widget_menu_radial_itembut(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3, i32 %4) #0 !PGOFuncName !244 {
  %6 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 53, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !245
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  %11 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 7
  store i8 0, ptr %11, align 2, !tbaa !81
  %12 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %2) #20
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, 5.000000e-01
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef 15, ptr noundef %2, float noundef %14) #20
  %15 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = uitofp i8 %16 to float
  %18 = fmul float %10, %17
  %19 = fptoui float %18 to i8
  store i8 %19, ptr %15, align 1, !tbaa !42
  %20 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 2, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !42
  %22 = uitofp i8 %21 to float
  %23 = fmul float %10, %22
  %24 = fptoui float %23 to i8
  store i8 %24, ptr %20, align 1, !tbaa !42
  %25 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 3, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !42
  %27 = uitofp i8 %26 to float
  %28 = fmul float %10, %27
  %29 = fptoui float %28 to i8
  store i8 %29, ptr %25, align 1, !tbaa !42
  %30 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 4, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = uitofp i8 %31 to float
  %33 = fmul float %10, %32
  %34 = fptoui float %33 to i8
  store i8 %34, ptr %30, align 1, !tbaa !42
  %35 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 5, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !42
  %37 = uitofp i8 %36 to float
  %38 = fmul float %10, %37
  %39 = fptoui float %38 to i8
  store i8 %39, ptr %35, align 1, !tbaa !42
  %40 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !42
  %42 = uitofp i8 %41 to float
  %43 = fmul float %10, %42
  %44 = fptoui float %43 to i8
  store i8 %44, ptr %40, align 1, !tbaa !42
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @widget_state_pie_menu_item(ptr nocapture noundef %0, i32 noundef %1) #14 !PGOFuncName !246 {
  %3 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !41
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 2052
  %8 = icmp eq i32 %7, 2052
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 5.000000e-01) #20
  %12 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %12, ptr noundef nonnull %13) #20
  %14 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1, i64 3
  store i8 64, ptr %14, align 1, !tbaa !42
  br label %34

15:                                               ; preds = %2
  %16 = and i32 %1, 133120
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %20 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  tail call fastcc void @widget_state_blend(ptr noundef nonnull %19, ptr noundef nonnull %20, float noundef 5.000000e-01) #20
  br label %34

21:                                               ; preds = %15
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %3, ptr noundef nonnull %25) #20
  %26 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %27 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %26, ptr noundef nonnull %27) #20
  br label %34

28:                                               ; preds = %21
  br i1 %6, label %34, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 1
  %31 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 3
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %30, ptr noundef nonnull %31) #20
  %32 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 4
  %33 = getelementptr inbounds %struct.uiWidgetType, ptr %0, i64 0, i32 2, i32 5
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %32, ptr noundef nonnull %33) #20
  br label %34

34:                                               ; preds = %18, %28, %29, %24, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @widget_state_blend(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !247 {
  %4 = fcmp une float %2, 0.000000e+00
  br i1 %4, label %5, label %35

5:                                                ; preds = %3
  %6 = fsub float 1.000000e+00, %2
  %7 = load i8, ptr %0, align 1, !tbaa !42
  %8 = uitofp i8 %7 to float
  %9 = load i8, ptr %1, align 1, !tbaa !42
  %10 = uitofp i8 %9 to float
  %11 = fmul float %10, %2
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %11)
  %13 = fptosi float %12 to i32
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %0, align 1, !tbaa !42
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = uitofp i8 %16 to float
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !42
  %20 = uitofp i8 %19 to float
  %21 = fmul float %20, %2
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %17, float %21)
  %23 = fptosi float %22 to i32
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %15, align 1, !tbaa !42
  %25 = getelementptr inbounds i8, ptr %0, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !42
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !42
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %2
  %32 = tail call float @llvm.fmuladd.f32(float %6, float %27, float %31)
  %33 = fptosi float %32 to i32
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %25, align 1, !tbaa !42
  br label %35

35:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !248 {
  %3 = load i8, ptr %1, align 1, !tbaa !42
  store i8 %3, ptr %0, align 1, !tbaa !42
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !42
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_check_trias(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !249 {
  %3 = load i32, ptr %1, align 4, !tbaa !47
  %4 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #20
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = insertelement <2 x i32> poison, i32 %3, i64 0
  %9 = insertelement <2 x i32> %8, i32 %7, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = insertelement <2 x float> poison, float %5, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %10)
  %14 = fmul float %5, 5.000000e-01
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %2, %17
  %18 = phi i64 [ 0, %2 ], [ %23, %17 ]
  %19 = getelementptr inbounds [6 x [2 x float]], ptr @check_tria_vert, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 1, i64 %18
  %21 = load <2 x float>, ptr %19, align 8, !tbaa !34
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %21, <2 x float> %13)
  store <2 x float> %22, ptr %20, align 4, !tbaa !34
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %23, 6
  br i1 %24, label %25, label %17, !llvm.loop !250

25:                                               ; preds = %17
  store i32 4, ptr %0, align 8, !tbaa !191
  %26 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 2
  store ptr @check_tria_face, ptr %26, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_numbut_draw(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !251 {
  %6 = alloca %struct.uiWidgetBase, align 8
  call void @llvm.lifetime.start.p0(i64 1168, ptr nonnull %6) #18
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, 5.000000e-01
  %10 = fmul float %9, 0x3FEB333340000000
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.uiWidgetColors, ptr %0, i64 0, i32 7
  %15 = load <2 x i16>, ptr %14, align 2, !tbaa !43
  %16 = shufflevector <2 x i16> %15, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %16, ptr %14, align 2, !tbaa !43
  br label %17

17:                                               ; preds = %13, %5
  call fastcc void @widget_init(ptr noundef nonnull %6) #20
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call fastcc void @round_box_edges(ptr noundef nonnull %6, i32 noundef %3, ptr noundef %1, float noundef %9) #20
  br label %20

20:                                               ; preds = %19, %17
  %21 = and i32 %2, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 9
  call fastcc void @widget_num_tria(ptr noundef nonnull %24, ptr noundef %1, i8 noundef zeroext 108) #20
  %25 = getelementptr inbounds %struct.uiWidgetBase, ptr %6, i64 0, i32 10
  call fastcc void @widget_num_tria(ptr noundef nonnull %25, ptr noundef %1, i8 noundef zeroext 114) #20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %0) #20
  %26 = load <2 x i32>, ptr %1, align 4, !tbaa !77
  %27 = sitofp <2 x i32> %26 to <2 x float>
  %28 = insertelement <2 x float> poison, float %10, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fadd <2 x float> %29, %27
  %31 = fsub <2 x float> %27, %29
  %32 = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 0, i32 3>
  %33 = fptosi <2 x float> %32 to <2 x i32>
  store <2 x i32> %33, ptr %1, align 4, !tbaa !77
  br label %35

34:                                               ; preds = %20
  call fastcc void @widgetbase_draw(ptr noundef nonnull %6, ptr noundef %0) #20
  br label %35

35:                                               ; preds = %34, %23
  call void @llvm.lifetime.end.p0(i64 1168, ptr nonnull %6) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_num_tria(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #13 !PGOFuncName !252 {
  tail call fastcc void @widget_draw_tria_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull @num_tria_vert, i32 noundef 3, ptr noundef nonnull @num_tria_face, i32 noundef 1) #20
  ret void
}

; Function Attrs: optsize
declare double @ui_get_but_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @widget_menu_trias(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %4 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %5 = sitofp i32 %4 to float
  %6 = load <2 x i32>, ptr %3, align 4, !tbaa !77
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float 0xBFD47AE140000000, float 5.000000e-01>, <2 x float> %7)
  %11 = fmul float %5, 0x3FD99999A0000000
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %2, %14
  %15 = phi i64 [ 0, %2 ], [ %20, %14 ]
  %16 = getelementptr inbounds [6 x [2 x float]], ptr @menu_tria_vert, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 1, i64 %15
  %18 = load <2 x float>, ptr %16, align 8, !tbaa !34
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %18, <2 x float> %10)
  store <2 x float> %19, ptr %17, align 4, !tbaa !34
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, 6
  br i1 %21, label %22, label %14, !llvm.loop !254

22:                                               ; preds = %14
  store i32 2, ptr %0, align 8, !tbaa !191
  %23 = getelementptr inbounds %struct.uiWidgetTrias, ptr %0, i64 0, i32 2
  store ptr @menu_tria_face, ptr %23, align 8, !tbaa !192
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widget_numbut_embossn(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !255 {
  tail call fastcc void @widget_numbut_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #20
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_bw(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !256 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, 0x3FDCCCCCC0000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD6666660000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC99999A0000000, float %6)
  ret float %9
}

; Function Attrs: optsize
declare void @ui_draw_but_NORMAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #7 !PGOFuncName !257 {
  %2 = fcmp ogt float %0, 2.000000e+00
  %3 = select i1 %2, float %0, float 2.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !258 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @widgetbase_outline(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !259 {
  %2 = alloca [74 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %2) #18
  %3 = load i32, ptr %0, align 8, !tbaa !87
  call fastcc void @widget_verts_to_quad_strip(ptr noundef nonnull %0, i32 noundef %3, ptr noundef nonnull %2) #20
  tail call void @glEnableClientState(i32 noundef 32884) #19
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %2) #19
  %4 = load i32, ptr %0, align 8, !tbaa !87
  %5 = shl nsw i32 %4, 1
  %6 = add nsw i32 %5, 2
  call void @glDrawArrays(i32 noundef 8, i32 noundef 0, i32 noundef %6) #19
  call void @glDisableClientState(i32 noundef 32884) #19
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_hsv_cursor(float noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !260 {
  tail call void @glPushMatrix() #19
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #19
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #19
  %3 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %4 = fmul float %3, 3.000000e+00
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %4, i32 noundef 8) #19
  tail call void @glEnable(i32 noundef 3042) #19
  tail call void @glEnable(i32 noundef 2848) #19
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !91
  %6 = fmul float %5, 3.000000e+00
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %6, i32 noundef 12) #19
  tail call void @glDisable(i32 noundef 3042) #19
  tail call void @glDisable(i32 noundef 2848) #19
  tail call void @glPopMatrix() #19
  ret void
}

; Function Attrs: optsize
declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ui_block_hsv_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_to_hsv_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_rgb_to_color_picker_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_color_picker_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_color_picker_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ui_button_open_menu_direction(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @round_box_shadow_edges(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #13 !PGOFuncName !261 {
  %6 = alloca [9 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #18
  %7 = fadd float %2, %4
  %8 = fmul float %7, 2.000000e+00
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #20
  %10 = sitofp i32 %9 to float
  %11 = fcmp ogt float %8, %10
  %12 = fmul float %10, 5.000000e-01
  %13 = select i1 %11, float %12, float %7
  %14 = load i32, ptr %1, align 4, !tbaa !47
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = insertelement <2 x i32> poison, i32 %20, i64 0
  %24 = insertelement <2 x i32> %23, i32 %22, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x float>
  %26 = insertelement <2 x float> poison, float %13, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  br label %28

28:                                               ; preds = %5, %28
  %29 = phi i64 [ 0, %5 ], [ %34, %28 ]
  %30 = getelementptr inbounds [9 x [2 x float]], ptr @cornervec, i64 0, i64 %29
  %31 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %29
  %32 = load <2 x float>, ptr %30, align 8, !tbaa !34
  %33 = fmul <2 x float> %27, %32
  store <2 x float> %33, ptr %31, align 8, !tbaa !34
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, 9
  br i1 %35, label %36, label %28, !llvm.loop !262

36:                                               ; preds = %28
  %37 = fsub float %15, %4
  %38 = fsub float %18, %4
  %39 = insertelement <2 x float> poison, float %4, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fadd <2 x float> %40, %25
  %42 = and i32 %3, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = extractelement <2 x float> %41, i64 1
  br label %57

46:                                               ; preds = %36
  %47 = fadd float %37, %13
  %48 = insertelement <2 x float> %41, float %47, i64 0
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ 0, %46 ], [ %55, %49 ]
  %51 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x float], ptr %0, i64 %50
  %53 = load <2 x float>, ptr %51, align 8, !tbaa !34
  %54 = fsub <2 x float> %48, %53
  store <2 x float> %54, ptr %52, align 4, !tbaa !34
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i64 %55, 9
  br i1 %56, label %63, label %49, !llvm.loop !263

57:                                               ; preds = %44, %57
  %58 = phi i64 [ %61, %57 ], [ 0, %44 ]
  %59 = getelementptr inbounds [2 x float], ptr %0, i64 %58
  store float %37, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds [2 x float], ptr %0, i64 %58, i64 1
  store float %45, ptr %60, align 4, !tbaa !34
  %61 = add nuw nsw i64 %58, 1
  %62 = icmp eq i64 %61, 9
  br i1 %62, label %63, label %57, !llvm.loop !264

63:                                               ; preds = %49, %57
  %64 = and i32 %3, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = fadd float %13, %38
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ 0, %66 ], [ %79, %68 ]
  %70 = phi i64 [ 9, %66 ], [ %80, %68 ]
  %71 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %69
  %72 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %69, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = fadd float %37, %73
  %75 = getelementptr inbounds [2 x float], ptr %0, i64 %70
  store float %74, ptr %75, align 4, !tbaa !34
  %76 = load float, ptr %71, align 8, !tbaa !34
  %77 = fsub float %67, %76
  %78 = getelementptr inbounds [2 x float], ptr %0, i64 %70, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = add nuw nsw i64 %69, 1
  %80 = add nuw nsw i64 %70, 1
  %81 = icmp eq i64 %79, 9
  br i1 %81, label %88, label %68, !llvm.loop !265

82:                                               ; preds = %63, %82
  %83 = phi i64 [ %86, %82 ], [ 9, %63 ]
  %84 = getelementptr inbounds [2 x float], ptr %0, i64 %83
  store float %37, ptr %84, align 4, !tbaa !34
  %85 = getelementptr inbounds [2 x float], ptr %0, i64 %83, i64 1
  store float %38, ptr %85, align 4, !tbaa !34
  %86 = add nuw nsw i64 %83, 1
  %87 = icmp eq i64 %86, 18
  br i1 %87, label %90, label %82, !llvm.loop !266

88:                                               ; preds = %68
  %89 = and i64 %80, 4294967295
  br label %90

90:                                               ; preds = %82, %88
  %91 = phi i64 [ %89, %88 ], [ 18, %82 ]
  %92 = and i32 %3, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = extractelement <2 x float> %41, i64 0
  br label %111

96:                                               ; preds = %90
  %97 = extractelement <2 x float> %41, i64 0
  %98 = fsub float %97, %13
  %99 = insertelement <2 x float> poison, float %98, i64 0
  %100 = insertelement <2 x float> %99, float %38, i64 1
  br label %101

101:                                              ; preds = %96, %101
  %102 = phi i64 [ 0, %96 ], [ %108, %101 ]
  %103 = phi i64 [ %91, %96 ], [ %109, %101 ]
  %104 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %102
  %105 = getelementptr inbounds [2 x float], ptr %0, i64 %103
  %106 = load <2 x float>, ptr %104, align 8, !tbaa !34
  %107 = fadd <2 x float> %100, %106
  store <2 x float> %107, ptr %105, align 4, !tbaa !34
  %108 = add nuw nsw i64 %102, 1
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %108, 9
  br i1 %110, label %119, label %101, !llvm.loop !267

111:                                              ; preds = %94, %111
  %112 = phi i64 [ %117, %111 ], [ %91, %94 ]
  %113 = phi i32 [ %116, %111 ], [ 0, %94 ]
  %114 = getelementptr inbounds [2 x float], ptr %0, i64 %112
  store float %95, ptr %114, align 4, !tbaa !34
  %115 = getelementptr inbounds [2 x float], ptr %0, i64 %112, i64 1
  store float %38, ptr %115, align 4, !tbaa !34
  %116 = add nuw nsw i32 %113, 1
  %117 = add nuw nsw i64 %112, 1
  %118 = icmp eq i32 %116, 9
  br i1 %118, label %119, label %111, !llvm.loop !268

119:                                              ; preds = %101, %111
  %120 = phi i64 [ %117, %111 ], [ %109, %101 ]
  %121 = and i32 %3, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = and i64 %120, 4294967295
  br label %144

125:                                              ; preds = %119
  %126 = extractelement <2 x float> %41, i64 1
  %127 = fsub float %126, %13
  %128 = and i64 %120, 4294967295
  %129 = extractelement <2 x float> %41, i64 0
  br label %130

130:                                              ; preds = %125, %130
  %131 = phi i64 [ 0, %125 ], [ %141, %130 ]
  %132 = phi i64 [ %128, %125 ], [ %142, %130 ]
  %133 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %131
  %134 = getelementptr inbounds [9 x [2 x float]], ptr %6, i64 0, i64 %131, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !34
  %136 = fsub float %129, %135
  %137 = getelementptr inbounds [2 x float], ptr %0, i64 %132
  store float %136, ptr %137, align 4, !tbaa !34
  %138 = load float, ptr %133, align 8, !tbaa !34
  %139 = fadd float %127, %138
  %140 = getelementptr inbounds [2 x float], ptr %0, i64 %132, i64 1
  store float %139, ptr %140, align 4, !tbaa !34
  %141 = add nuw nsw i64 %131, 1
  %142 = add nuw nsw i64 %132, 1
  %143 = icmp eq i64 %141, 9
  br i1 %143, label %151, label %130, !llvm.loop !269

144:                                              ; preds = %123, %144
  %145 = phi i64 [ %124, %123 ], [ %149, %144 ]
  %146 = phi i32 [ 0, %123 ], [ %148, %144 ]
  %147 = getelementptr inbounds [2 x float], ptr %0, i64 %145
  store <2 x float> %41, ptr %147, align 4, !tbaa !34
  %148 = add nuw nsw i32 %146, 1
  %149 = add nuw nsw i64 %145, 1
  %150 = icmp eq i32 %148, 9
  br i1 %150, label %151, label %144, !llvm.loop !270

151:                                              ; preds = %130, %144
  %152 = phi i64 [ %149, %144 ], [ %142, %130 ]
  %153 = trunc i64 %152 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #18
  ret i32 %153
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !271 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_text_clip_right_ex(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readonly %3, float noundef %4, ptr noundef writeonly %5) unnamed_addr #0 !PGOFuncName !272 {
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %8 = fdiv float %4, %2
  %9 = fcmp ogt float %8, 0x3FC99999A0000000
  %10 = load i16, ptr %0, align 4, !tbaa !174
  %11 = sext i16 %10 to i32
  br i1 %9, label %12, label %18

12:                                               ; preds = %6
  %13 = call i64 @BLF_width_to_strlen(i32 noundef %11, ptr noundef %1, i64 noundef 400, float noundef %2, ptr noundef nonnull %7) #19
  %14 = shl i64 %13, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !42
  %17 = icmp eq ptr %5, null
  br i1 %17, label %31, label %29

18:                                               ; preds = %6
  %19 = fsub float %2, %4
  %20 = call i64 @BLF_width_to_strlen(i32 noundef %11, ptr noundef %1, i64 noundef 400, float noundef %19, ptr noundef nonnull %7) #19
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  %24 = load i32, ptr %3, align 1
  store i32 %24, ptr %23, align 1
  %25 = icmp eq ptr %5, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = add i64 %21, 12884901888
  %28 = ashr exact i64 %27, 32
  br label %29

29:                                               ; preds = %12, %26
  %30 = phi i64 [ %28, %26 ], [ %15, %12 ]
  store i64 %30, ptr %5, align 8, !tbaa !176
  br label %31

31:                                               ; preds = %29, %18, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i64 @BLF_width_to_rstrlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_icon_draw_preview_aspect_size(float noundef, float noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 2, !43, i64 26, i64 2, !43, i64 28, i64 2, !43, i64 30, i64 2, !43}
!42 = !{!36, !36, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !34, i64 28, i64 4, !34}
!46 = !{!"interface_widgets.c:BLI_rcti_cent_x_fl"}
!47 = !{!48, !49, i64 0}
!48 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!49 = !{!"int", !36, i64 0}
!50 = !{!48, !49, i64 4}
!51 = !{!"interface_widgets.c:BLI_rcti_cent_y_fl"}
!52 = !{!48, !49, i64 8}
!53 = !{!48, !49, i64 12}
!54 = !{!"interface_widgets.c:min_ii"}
!55 = !{!"interface_widgets.c:BLI_rcti_size_x"}
!56 = !{!"interface_widgets.c:BLI_rcti_size_y"}
!57 = !{!"interface_widgets.c:len_squared_v2"}
!58 = !{!59, !49, i64 16}
!59 = !{!"uiBut", !60, i64 0, !60, i64 8, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !44, i64 32, !44, i64 34, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !44, i64 48, !60, i64 56, !36, i64 64, !36, i64 192, !61, i64 592, !60, i64 608, !35, i64 616, !35, i64 620, !35, i64 624, !35, i64 628, !35, i64 632, !35, i64 636, !36, i64 640, !60, i64 648, !60, i64 656, !60, i64 664, !60, i64 672, !60, i64 680, !60, i64 688, !60, i64 696, !60, i64 704, !60, i64 712, !60, i64 720, !60, i64 728, !60, i64 736, !60, i64 744, !60, i64 752, !36, i64 760, !60, i64 768, !60, i64 776, !49, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !44, i64 794, !44, i64 796, !60, i64 800, !60, i64 808, !62, i64 816, !60, i64 840, !49, i64 848, !62, i64 856, !60, i64 880, !60, i64 888, !60, i64 896, !44, i64 904, !36, i64 906, !36, i64 907, !60, i64 912, !60, i64 920, !35, i64 928, !60, i64 936, !60, i64 944, !60, i64 952, !60, i64 960, !60, i64 968, !60, i64 976, !60, i64 984, !60, i64 992}
!60 = !{!"any pointer", !36, i64 0}
!61 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!62 = !{!"PointerRNA", !63, i64 0, !60, i64 8, !60, i64 16}
!63 = !{!"", !60, i64 0}
!64 = distinct !{!64, !39}
!65 = distinct !{!65, !39}
!66 = !{!"interface_widgets.c:copy_v3_v3"}
!67 = !{!59, !60, i64 992}
!68 = !{!69, !36, i64 556}
!69 = !{!"uiBlock", !60, i64 0, !60, i64 8, !70, i64 16, !60, i64 32, !60, i64 40, !70, i64 48, !70, i64 64, !60, i64 80, !70, i64 88, !36, i64 104, !36, i64 232, !61, i64 296, !35, i64 312, !49, i64 316, !60, i64 320, !60, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360, !60, i64 368, !60, i64 376, !60, i64 384, !60, i64 392, !60, i64 400, !60, i64 408, !60, i64 416, !49, i64 424, !44, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !71, i64 440, !60, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !61, i64 480, !70, i64 496, !60, i64 512, !60, i64 520, !60, i64 528, !60, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !72, i64 624}
!70 = !{!"ListBase", !60, i64 0, !60, i64 8}
!71 = !{!"double", !36, i64 0}
!72 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !71, i64 32, !49, i64 40, !49, i64 44, !35, i64 48}
!73 = !{!59, !60, i64 840}
!74 = !{!59, !35, i64 632}
!75 = !{!59, !35, i64 624}
!76 = !{!59, !35, i64 628}
!77 = !{!49, !49, i64 0}
!78 = !{!79, !44, i64 26}
!79 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30}
!80 = !{!79, !44, i64 28}
!81 = !{!82, !36, i64 874}
!82 = !{!"uiWidgetBase", !49, i64 0, !49, i64 4, !36, i64 8, !36, i64 296, !36, i64 584, !36, i64 872, !36, i64 873, !36, i64 874, !36, i64 875, !83, i64 880, !83, i64 1024}
!83 = !{!"uiWidgetTrias", !49, i64 0, !36, i64 4, !60, i64 136}
!84 = !{!82, !36, i64 873}
!85 = !{!"interface_widgets.c:widget_init"}
!86 = !{!82, !49, i64 4}
!87 = !{!82, !49, i64 0}
!88 = !{!82, !49, i64 880}
!89 = !{!82, !49, i64 1024}
!90 = !{!"interface_widgets.c:round_box_edges"}
!91 = !{!92, !35, i64 10908}
!92 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !49, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !44, i64 8496, !44, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !70, i64 8536, !70, i64 8552, !70, i64 8568, !70, i64 8584, !70, i64 8600, !70, i64 8616, !70, i64 8632, !36, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !36, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !49, i64 8912, !49, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !35, i64 8956, !35, i64 8960, !49, i64 8964, !44, i64 8968, !44, i64 8970, !35, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !93, i64 8984, !36, i64 9760, !36, i64 9772, !44, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !49, i64 10896, !49, i64 10900, !35, i64 10904, !35, i64 10908, !49, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !94, i64 10928}
!93 = !{!"ColorBand", !44, i64 0, !44, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!94 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !44, i64 24, !36, i64 26}
!95 = !{!"interface_widgets.c:widgetbase_draw"}
!96 = !{!82, !36, i64 872}
!97 = !{!79, !44, i64 24}
!98 = !{!79, !44, i64 30}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = !{!82, !36, i64 875}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = !{!"interface_widgets.c:copy_v4_v4_char"}
!106 = !{!"interface_widgets.c:widget_scroll_circle"}
!107 = !{!59, !36, i64 789}
!108 = !{!59, !49, i64 24}
!109 = !{!69, !49, i64 424}
!110 = !{!111, !60, i64 0}
!111 = !{!"uiWidgetType", !60, i64 0, !60, i64 8, !79, i64 16, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72}
!112 = !{!59, !49, i64 20}
!113 = !{!111, !60, i64 48}
!114 = !{!59, !60, i64 56}
!115 = !{!59, !49, i64 784}
!116 = !{!111, !60, i64 64}
!117 = !{i32 0, i32 16}
!118 = !{!59, !60, i64 952}
!119 = !{!111, !60, i64 56}
!120 = !{!111, !60, i64 72}
!121 = !{!"interface_widgets.c:widget_draw_text_icon"}
!122 = !{i32 0, i32 2}
!123 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 12, i64 4, !77}
!124 = !{!59, !44, i64 796}
!125 = !{!92, !44, i64 8948}
!126 = !{!69, !35, i64 312}
!127 = !{!59, !44, i64 44}
!128 = !{!59, !44, i64 42}
!129 = !{!59, !44, i64 38}
!130 = !{!"interface_widgets.c:ui_draw_separator"}
!131 = !{!"interface_widgets.c:widget_type"}
!132 = !{!111, !60, i64 8}
!133 = !{!"interface_widgets.c:widget_state_option_menu"}
!134 = !{!"interface_widgets.c:widget_link"}
!135 = !{i32 -1073741824, i32 1073741824}
!136 = !{!"interface_widgets.c:widget_draw_extra_mask"}
!137 = !{!69, !60, i64 400}
!138 = !{!59, !60, i64 608}
!139 = !{!69, !60, i64 408}
!140 = !{!69, !60, i64 416}
!141 = !{!"interface_widgets.c:ui_draw_but_HSV_v"}
!142 = !{!"interface_widgets.c:ui_draw_but_HSVCUBE"}
!143 = !{!"interface_widgets.c:ui_draw_but_HSVCIRCLE"}
!144 = !{!92, !44, i64 8938}
!145 = distinct !{!145, !39}
!146 = !{!"interface_widgets.c:widget_roundbox_set"}
!147 = !{!59, !60, i64 936}
!148 = !{!"interface_widgets.c:ui_widget_color_disabled"}
!149 = !{!69, !36, i64 430}
!150 = !{!"interface_widgets.c:BLI_rcti_cent_x"}
!151 = !{!92, !44, i64 10926}
!152 = !{!69, !49, i64 664}
!153 = !{!154, !44, i64 616}
!154 = !{!"bTheme", !60, i64 0, !60, i64 8, !36, i64 16, !155, i64 48, !158, i64 960, !158, i64 1680, !158, i64 2400, !158, i64 3120, !158, i64 3840, !158, i64 4560, !158, i64 5280, !158, i64 6000, !158, i64 6720, !158, i64 7440, !158, i64 8160, !158, i64 8880, !158, i64 9600, !158, i64 10320, !158, i64 11040, !158, i64 11760, !158, i64 12480, !36, i64 13200, !49, i64 13520, !49, i64 13524}
!155 = !{!"ThemeUI", !79, i64 0, !79, i64 32, !79, i64 64, !79, i64 96, !79, i64 128, !79, i64 160, !79, i64 192, !79, i64 224, !79, i64 256, !79, i64 288, !79, i64 320, !79, i64 352, !79, i64 384, !79, i64 416, !79, i64 448, !79, i64 480, !79, i64 512, !79, i64 544, !156, i64 576, !157, i64 608, !36, i64 624, !35, i64 628, !44, i64 632, !36, i64 634, !36, i64 640, !35, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!156 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !35, i64 24, !35, i64 28}
!157 = !{!"uiPanelColors", !36, i64 0, !36, i64 4, !44, i64 8, !44, i64 10, !49, i64 12}
!158 = !{!"ThemeSpace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !157, i64 80, !159, i64 96, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 421, !36, i64 422, !36, i64 423, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 541, !36, i64 545, !36, i64 549, !36, i64 553, !36, i64 557, !36, i64 561, !36, i64 565, !36, i64 569, !36, i64 573, !36, i64 577, !36, i64 581, !36, i64 584, !36, i64 588, !36, i64 592, !36, i64 596, !36, i64 600, !36, i64 604, !36, i64 608, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !36, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !36, i64 696, !36, i64 700, !36, i64 704, !36, i64 708, !36, i64 712, !36, i64 716}
!159 = !{!"uiGradientColors", !36, i64 0, !36, i64 4, !49, i64 8, !49, i64 12}
!160 = !{!154, !44, i64 618}
!161 = !{!154, !44, i64 620}
!162 = !{!92, !44, i64 10922}
!163 = !{!"interface_widgets.c:shadecolors4"}
!164 = !{!"interface_widgets.c:draw_disk_shaded"}
!165 = distinct !{!165, !39}
!166 = !{!"interface_widgets.c:widget_softshadow"}
!167 = !{!154, !35, i64 676}
!168 = distinct !{!168, !39}
!169 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77}
!170 = !{!171, !44, i64 22}
!171 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !36, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !35, i64 24, !35, i64 28}
!172 = !{!92, !49, i64 8524}
!173 = !{!171, !44, i64 4}
!174 = !{!171, !44, i64 0}
!175 = !{!"interface_widgets.c:ui_text_clip_middle_ex"}
!176 = !{!177, !177, i64 0}
!177 = !{!"long", !36, i64 0}
!178 = !{!"interface_widgets.c:widget_draw_preview"}
!179 = !{!"interface_widgets.c:round_box__edges"}
!180 = distinct !{!180, !39}
!181 = distinct !{!181, !39}
!182 = distinct !{!182, !39}
!183 = distinct !{!183, !39}
!184 = distinct !{!184, !39}
!185 = !{!"interface_widgets.c:round_box_shade_col4_r"}
!186 = !{!"interface_widgets.c:widget_verts_to_quad_strip"}
!187 = distinct !{!187, !39}
!188 = !{!"interface_widgets.c:widget_verts_to_quad_strip_open"}
!189 = distinct !{!189, !39}
!190 = !{!"interface_widgets.c:widget_trias_draw"}
!191 = !{!83, !49, i64 0}
!192 = !{!83, !60, i64 136}
!193 = !{!"interface_widgets.c:copy_v2_v2"}
!194 = !{!"interface_widgets.c:widget_draw_tria_ex"}
!195 = distinct !{!195, !39}
!196 = !{!"interface_widgets.c:ui_but_draw_menu_icon"}
!197 = !{!"interface_widgets.c:widget_draw_icon"}
!198 = !{!59, !35, i64 636}
!199 = !{!59, !60, i64 912}
!200 = !{!"interface_widgets.c:ui_text_clip_cursor"}
!201 = !{!"interface_widgets.c:ui_text_clip_right_label"}
!202 = distinct !{!202, !39}
!203 = !{!"interface_widgets.c:ui_text_clip_middle_protect_right"}
!204 = !{!"interface_widgets.c:ui_text_clip_middle"}
!205 = !{!"interface_widgets.c:widget_draw_text"}
!206 = !{!59, !44, i64 48}
!207 = !{!59, !44, i64 46}
!208 = distinct !{!208, !39}
!209 = !{!59, !36, i64 906}
!210 = !{!"interface_widgets.c:max_ii"}
!211 = !{!"interface_widgets.c:ui_text_clip_give_next_off"}
!212 = !{!"interface_widgets.c:ui_text_clip_give_prev_off"}
!213 = !{!"interface_widgets.c:widget_state"}
!214 = !{!156, !35, i64 24}
!215 = !{!"interface_widgets.c:widget_but"}
!216 = !{!"interface_widgets.c:widget_state_label"}
!217 = !{!"interface_widgets.c:widget_optionbut"}
!218 = !{!"interface_widgets.c:widget_radiobut"}
!219 = !{!"interface_widgets.c:widget_numbut"}
!220 = !{!"interface_widgets.c:widget_numslider"}
!221 = !{!"interface_widgets.c:widget_state_numslider"}
!222 = !{!"interface_widgets.c:widget_roundbut"}
!223 = !{!"interface_widgets.c:widget_menu_back"}
!224 = !{!"interface_widgets.c:widget_textbut"}
!225 = !{!"interface_widgets.c:widget_menubut"}
!226 = !{!"interface_widgets.c:widget_menuiconbut"}
!227 = !{!"interface_widgets.c:widget_menunodebut"}
!228 = !{!"interface_widgets.c:widget_pulldownbut"}
!229 = !{!"interface_widgets.c:widget_state_pulldown"}
!230 = !{!"interface_widgets.c:widget_menu_itembut"}
!231 = !{!"interface_widgets.c:widget_state_menu_item"}
!232 = !{!"interface_widgets.c:widget_icon_has_anim"}
!233 = !{!"interface_widgets.c:widget_swatch"}
!234 = !{!59, !60, i64 816}
!235 = !{!236, !49, i64 152}
!236 = !{!"Palette", !237, i64 0, !70, i64 120, !70, i64 136, !49, i64 152, !49, i64 156}
!237 = !{!"ID", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !36, i64 32, !44, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !60, i64 112}
!238 = !{!"interface_widgets.c:widget_box"}
!239 = !{!"interface_widgets.c:widget_normal"}
!240 = !{!"interface_widgets.c:widget_state_nothing"}
!241 = !{!"interface_widgets.c:widget_scroll"}
!242 = !{!"interface_widgets.c:widget_list_itembut"}
!243 = !{!"interface_widgets.c:widget_progressbar"}
!244 = !{!"interface_widgets.c:widget_menu_radial_itembut"}
!245 = !{!69, !35, i64 672}
!246 = !{!"interface_widgets.c:widget_state_pie_menu_item"}
!247 = !{!"interface_widgets.c:widget_state_blend"}
!248 = !{!"interface_widgets.c:copy_v3_v3_char"}
!249 = !{!"interface_widgets.c:widget_check_trias"}
!250 = distinct !{!250, !39}
!251 = !{!"interface_widgets.c:widget_numbut_draw"}
!252 = !{!"interface_widgets.c:widget_num_tria"}
!253 = !{!"interface_widgets.c:widget_menu_trias"}
!254 = distinct !{!254, !39}
!255 = !{!"interface_widgets.c:widget_numbut_embossn"}
!256 = !{!"interface_widgets.c:rgb_to_bw"}
!257 = !{!"interface_widgets.c:max_ff"}
!258 = !{!"interface_widgets.c:BLI_rcti_cent_y"}
!259 = !{!"interface_widgets.c:widgetbase_outline"}
!260 = !{!"interface_widgets.c:ui_hsv_cursor"}
!261 = !{!"interface_widgets.c:round_box_shadow_edges"}
!262 = distinct !{!262, !39}
!263 = distinct !{!263, !39}
!264 = distinct !{!264, !39}
!265 = distinct !{!265, !39}
!266 = distinct !{!266, !39}
!267 = distinct !{!267, !39}
!268 = distinct !{!268, !39}
!269 = distinct !{!269, !39}
!270 = distinct !{!270, !39}
!271 = !{!"interface_widgets.c:min_ff"}
!272 = !{!"interface_widgets.c:ui_text_clip_right_ex"}
