; ModuleID = 'blender/source/blender/editors/space_view3d/drawarmature.c'
source_filename = "blender/source/blender/editors/space_view3d/drawarmature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Mat4 = type { [4 x [4 x float]] }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }

@__const.draw_armature.white = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@G = external local_unnamed_addr global %struct.Global, align 8
@si = internal unnamed_addr constant [16 x float] [float 0.000000e+00, float 0x3FC9C42660000000, float 0x3FD93D2060000000, float 0x3FE247D440000000, float 0x3FE73180A0000000, float 0x3FEB281800000000, float 0x3FEE0210C0000000, float 0x3FEFA18860000000, float 0x3FEFF57C40000000, float 0x3FEEFA7CE0000000, float 0x3FECBAD0A0000000, float 0x3FE94E08E0000000, float 0x3FE4D80B20000000, float 0x3FDF0F3000000000, float 0x3FD328C3E0000000, float 0x3FB9E62AC0000000], align 16
@co = internal unnamed_addr constant [16 x float] [float 1.000000e+00, float 0x3FEF584F20000000, float 0x3FED681A40000000, float 0x3FEA43B1C0000000, float 0x3FE60C0460000000, float 0x3FE0ED45E0000000, float 0x3FD63A3FC0000000, float 0x3FC361FC40000000, float 0xBFA9EEAFC0000000, float 0xBFD00AB0E0000000, float 0xBFDC2F6B00000000, float 0xBFE3965F40000000, float 0xBFE847BF20000000, float 0xBFEBFAA5C0000000, float 0xBFEE884F00000000, float 0xBFEFD5F820000000], align 16
@bcolor = internal unnamed_addr global ptr null, align 8
@draw_bonevert_solid.displist = internal unnamed_addr global i32 0, align 4
@draw_bonevert.displist = internal unnamed_addr global i32 0, align 4
@drawsolidcube_size.displist = internal unnamed_addr global i32 0, align 4
@cube = internal constant [8 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00]], align 16
@drawcube_size.displist = internal unnamed_addr global i32 0, align 4
@draw_bone_solid_octahedral.displist = internal unnamed_addr global i32 0, align 4
@bone_octahedral_solid_normals = internal constant [8 x [3 x float]] [[3 x float] [float 0x3FE6A09E60000000, float 0xBFE6A09E60000000, float 0.000000e+00], [3 x float] [float -0.000000e+00, float 0xBFE6A09E60000000, float 0xBFE6A09E60000000], [3 x float] [float 0xBFE6A09E60000000, float 0xBFE6A09E60000000, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000], [3 x float] [float 0x3FEFCDE540000000, float 0x3FBC453DC0000000, float -0.000000e+00], [3 x float] [float 0.000000e+00, float 0x3FBC453DC0000000, float 0xBFEFCDE540000000], [3 x float] [float 0xBFEFCDE540000000, float 0x3FBC453DC0000000, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0x3FBC453DC0000000, float 0x3FEFCDE540000000]], align 16
@bone_octahedral_verts = internal constant [6 x [3 x float]] [[3 x float] zeroinitializer, [3 x float] [float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000], [3 x float] [float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0xBFB99999A0000000], [3 x float] [float 0xBFB99999A0000000, float 0x3FB99999A0000000, float 0xBFB99999A0000000], [3 x float] [float 0xBFB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], align 16
@bone_octahedral_solid_tris = internal unnamed_addr constant [8 x [3 x i32]] [[3 x i32] [i32 2, i32 1, i32 0], [3 x i32] [i32 3, i32 2, i32 0], [3 x i32] [i32 4, i32 3, i32 0], [3 x i32] [i32 1, i32 4, i32 0], [3 x i32] [i32 5, i32 1, i32 2], [3 x i32] [i32 5, i32 2, i32 3], [3 x i32] [i32 5, i32 3, i32 4], [3 x i32] [i32 5, i32 4, i32 1]], align 16
@draw_bone_octahedral.displist = internal unnamed_addr global i32 0, align 4
@bone_octahedral_wire_sides = internal constant [8 x i32] [i32 0, i32 1, i32 5, i32 3, i32 0, i32 4, i32 5, i32 2], align 16
@bone_octahedral_wire_square = internal constant [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 1, i32 0, i32 0, i32 0], align 16
@bm_dot8 = internal global [8 x i8] c"<~\FF\FF\FF\FF~<", align 1
@bm_dot7 = internal global [8 x i8] c"\008|\FE\FE\FE|8", align 1
@bm_dot6 = internal global [8 x i8] c"\00\18<~~<\18\00", align 1
@bm_dot5 = internal global [8 x i8] c"\00\00\108|8\10\00", align 1
@__const.draw_dof_ellipse.staticSine = private unnamed_addr constant [16 x float] [float 0.000000e+00, float 0x3FBAC260A0000000, float 0x3FCA9CD9A0000000, float 0x3FD3C6EF40000000, float 0x3FDA07F920000000, float 5.000000e-01, float 0x3FE2CF2300000000, float 0x3FE56984A0000000, float 0x3FE7C7D7A0000000, float 0x3FE9E377A0000000, float 0x3FEBB67AE0000000, float 0x3FED3BC3A0000000, float 0x3FEE6F0E20000000, float 0x3FEF4CFC40000000, float 0x3FEFD31FA0000000, float 1.000000e+00], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @draw_armature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [4 x float], align 16
  %10 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %15 = load i16, ptr %14, align 2, !tbaa !48
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %8
  %19 = icmp sgt i16 %4, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !51
  switch i32 %22, label %23 [
    i32 1, label %29
    i32 4, label %29
  ]

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_armature.white, i64 16, i1 false)
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %9) #15
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #15
  %24 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 55
  %25 = load i16, ptr %24, align 8, !tbaa !53
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %28) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %29

29:                                               ; preds = %20, %20, %23, %18
  %30 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !55
  %36 = or i32 %35, 32
  store i32 %36, ptr %34, align 8, !tbaa !55
  call fastcc void @draw_ebones(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %11, i16 noundef signext %4) #16
  %37 = load i32, ptr %34, align 8, !tbaa !55
  %38 = and i32 %37, -33
  store i32 %38, ptr %34, align 8, !tbaa !55
  br label %112

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = icmp eq ptr %41, null
  br i1 %42, label %112, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %112, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !59
  %49 = and i32 %48, 512
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %46
  %52 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %56 = load i32, ptr %55, align 8, !tbaa !62
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %54, label %64, label %59

59:                                               ; preds = %51
  br i1 %58, label %101, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %62 = load i32, ptr %61, align 8, !tbaa !55
  %63 = or i32 %62, 16
  store i32 %63, ptr %61, align 8, !tbaa !55
  br label %101

64:                                               ; preds = %51
  br i1 %58, label %101, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 19
  %67 = load i16, ptr %66, align 4, !tbaa !63
  switch i16 %67, label %75 [
    i16 1, label %68
    i16 2, label %69
    i16 0, label %70
  ]

68:                                               ; preds = %65
  call fastcc void @draw_ghost_poses_range(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #16
  br label %75

69:                                               ; preds = %65
  call fastcc void @draw_ghost_poses_keys(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #16
  br label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 17
  %72 = load i16, ptr %71, align 8, !tbaa !64
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call fastcc void @draw_ghost_poses(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #16
  br label %75

75:                                               ; preds = %65, %69, %70, %74, %68
  %76 = and i16 %5, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = icmp eq ptr %80, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Base, ptr %80, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %11, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = icmp eq ptr %84, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 27
  %90 = load i32, ptr %89, align 8, !tbaa !62
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %84) #15
  %95 = icmp eq ptr %11, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %82
  %97 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !55
  %99 = or i32 %98, 16
  store i32 %99, ptr %97, align 8, !tbaa !55
  br label %100

100:                                              ; preds = %96, %78, %86, %88, %93
  call fastcc void @draw_pose_paths(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %11) #16
  br label %101

101:                                              ; preds = %60, %59, %75, %100, %64, %46
  %102 = trunc i16 %5 to i8
  %103 = and i8 %102, 2
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext %4, ptr noundef %6, i8 noundef zeroext %103, i8 noundef zeroext %7) #16
  %104 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !55
  %106 = and i32 %105, -17
  store i32 %106, ptr %104, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %108 = load i32, ptr %107, align 8, !tbaa !62
  %109 = and i32 %108, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  call void @UI_ThemeColor(i32 noundef 25) #15
  br label %112

112:                                              ; preds = %39, %43, %111, %101, %33
  %113 = phi i8 [ 0, %33 ], [ 0, %111 ], [ 0, %101 ], [ 1, %43 ], [ 1, %39 ]
  call void @glFrontFace(i32 noundef 2305) #15
  br label %114

114:                                              ; preds = %8, %112
  %115 = phi i8 [ %113, %112 ], [ 1, %8 ]
  ret i8 %115
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glFrontFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_ebones(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x i8], align 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  %14 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 14
  store i32 0, ptr %14, align 4, !tbaa !87
  %15 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !51
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %59

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %19) #15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %21 = call fastcc float @len_v3(ptr noundef nonnull %20) #16
  %22 = fdiv float 1.000000e+00, %21
  call void @mul_mat3_m4_fl(ptr noundef nonnull %5, float noundef %22) #15
  %23 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  call void @glEnable(i32 noundef 3042) #15
  %24 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %25 = load i8, ptr %24, align 8, !tbaa !88
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  call void @glDisable(i32 noundef 2929) #15
  br label %28

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  br label %35

35:                                               ; preds = %33, %51
  %36 = phi ptr [ %31, %33 ], [ %52, %51 ]
  %37 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !90
  %39 = load i32, ptr %34, align 8, !tbaa !92
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !93
  %45 = and i32 %44, 5120
  %46 = icmp ne i32 %45, 0
  %47 = and i32 %44, 7
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %46, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  call fastcc void @draw_sphere_bone_dist(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %36) #16
  br label %51

51:                                               ; preds = %35, %50, %42
  %52 = load ptr, ptr %36, align 8, !tbaa !89
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %35, !llvm.loop !94

54:                                               ; preds = %51, %28
  %55 = load i8, ptr %24, align 8, !tbaa !88
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @glEnable(i32 noundef 2929) #15
  br label %58

58:                                               ; preds = %57, %54
  call void @glDisable(i32 noundef 3042) #15
  br label %59

59:                                               ; preds = %58, %4
  %60 = icmp sgt i16 %3, 2
  br i1 %60, label %61, label %123

61:                                               ; preds = %59
  %62 = load i32, ptr %15, align 4, !tbaa !51
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %123, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = load ptr, ptr %66, align 8, !tbaa !89
  %68 = icmp eq ptr %67, null
  br i1 %68, label %123, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  %71 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 6
  %72 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  br label %73

73:                                               ; preds = %69, %119
  %74 = phi ptr [ %67, %69 ], [ %121, %119 ]
  %75 = phi i32 [ 0, %69 ], [ %120, %119 ]
  %76 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 10
  %77 = load i32, ptr %76, align 8, !tbaa !90
  %78 = load i32, ptr %70, align 8, !tbaa !92
  %79 = and i32 %78, %77
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !93
  %84 = and i32 %83, 1024
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %81
  call void @glPushMatrix() #15
  call fastcc void @get_matrix_editbone(ptr noundef nonnull %74, ptr noundef nonnull %7) #16
  call void @glMultMatrixf(ptr noundef nonnull %7) #15
  %87 = load i32, ptr %82, align 4, !tbaa !93
  %88 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !96
  %90 = icmp eq ptr %89, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %70, align 8, !tbaa !92
  %93 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 10
  %94 = load i32, ptr %93, align 8, !tbaa !90
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !93
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91, %97
  %103 = and i32 %87, -17
  br label %104

104:                                              ; preds = %102, %97, %86
  %105 = phi i32 [ %87, %97 ], [ %103, %102 ], [ %87, %86 ]
  %106 = load ptr, ptr %71, align 8, !tbaa !97
  %107 = icmp eq ptr %74, %106
  %108 = or i32 %105, 256
  %109 = select i1 %107, i32 %108, i32 %105
  %110 = load i32, ptr %15, align 4, !tbaa !51
  %111 = load i32, ptr %72, align 8, !tbaa !55
  switch i32 %110, label %115 [
    i32 3, label %112
    i32 2, label %113
    i32 4, label %114
  ]

112:                                              ; preds = %104
  call fastcc void @draw_sphere_bone(i32 noundef %111, i32 noundef %109, i32 noundef %75, ptr noundef null, ptr noundef nonnull %74) #16
  br label %118

113:                                              ; preds = %104
  call fastcc void @draw_b_bone(i16 noundef signext 3, i32 noundef %111, i32 noundef %109, i16 noundef signext 0, i32 noundef %75, ptr noundef null, ptr noundef nonnull %74) #16
  br label %118

114:                                              ; preds = %104
  call fastcc void @draw_wire_bone(i16 noundef signext 3, i32 noundef %111, i32 noundef %109, i16 noundef signext 0, i32 noundef %75, ptr noundef null, ptr noundef nonnull %74) #16
  br label %118

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 14
  %117 = load float, ptr %116, align 8, !tbaa !98
  call fastcc void @draw_bone(i16 noundef signext 3, i32 noundef %111, i32 noundef %109, i16 noundef signext 0, i32 noundef %75, float noundef %117) #16
  br label %118

118:                                              ; preds = %113, %115, %114, %112
  call void @glPopMatrix() #15
  br label %119

119:                                              ; preds = %73, %118, %81
  %120 = add i32 %75, 1
  %121 = load ptr, ptr %74, align 8, !tbaa !89
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %73, !llvm.loop !99

123:                                              ; preds = %119, %64, %61, %59
  %124 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #15
  %125 = load i32, ptr %15, align 4, !tbaa !51
  switch i32 %125, label %131 [
    i32 1, label %126
    i32 4, label %126
  ]

126:                                              ; preds = %123, %123
  %127 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %128 = lshr i32 %127, 5
  %129 = and i32 %128, 1
  %130 = add nsw i32 %129, -1
  br label %139

131:                                              ; preds = %123
  br i1 %60, label %132, label %133

132:                                              ; preds = %131
  call void @ED_view3d_polygon_offset(ptr noundef %11, float noundef 1.000000e+00) #15
  br label %139

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %135 = load i32, ptr %134, align 8, !tbaa !55
  %136 = lshr i32 %135, 5
  %137 = and i32 %136, 1
  %138 = add nsw i32 %137, -1
  br label %139

139:                                              ; preds = %133, %126, %132
  %140 = phi i32 [ -1, %132 ], [ %130, %126 ], [ %138, %133 ]
  %141 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = load ptr, ptr %142, align 8, !tbaa !89
  %144 = icmp eq ptr %143, null
  br i1 %144, label %216, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  %147 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 6
  %148 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %149 = icmp slt i16 %3, 3
  br label %150

150:                                              ; preds = %145, %210
  %151 = phi ptr [ %143, %145 ], [ %214, %210 ]
  %152 = phi i32 [ %140, %145 ], [ %213, %210 ]
  %153 = getelementptr inbounds %struct.EditBone, ptr %151, i64 0, i32 10
  %154 = load i32, ptr %153, align 8, !tbaa !90
  %155 = load i32, ptr %14, align 4, !tbaa !87
  %156 = or i32 %155, %154
  store i32 %156, ptr %14, align 4, !tbaa !87
  %157 = load i32, ptr %146, align 8, !tbaa !92
  %158 = and i32 %157, %154
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %210, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.EditBone, ptr %151, i64 0, i32 9
  %162 = load i32, ptr %161, align 4, !tbaa !93
  %163 = and i32 %162, 1024
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %210

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.EditBone, ptr %151, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !96
  %168 = icmp eq ptr %167, null
  br i1 %168, label %181, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 10
  %171 = load i32, ptr %170, align 8, !tbaa !90
  %172 = and i32 %171, %157
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 9
  %176 = load i32, ptr %175, align 4, !tbaa !93
  %177 = and i32 %176, 1024
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %169, %174
  %180 = and i32 %162, -1041
  br label %181

181:                                              ; preds = %179, %174, %165
  %182 = phi i32 [ %162, %174 ], [ %180, %179 ], [ %162, %165 ]
  %183 = load ptr, ptr %147, align 8, !tbaa !97
  %184 = icmp eq ptr %151, %183
  %185 = or i32 %182, 256
  %186 = select i1 %184, i32 %185, i32 %182
  %187 = load i32, ptr %15, align 4, !tbaa !51
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  br i1 %149, label %190, label %202

190:                                              ; preds = %189
  %191 = load i32, ptr %148, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone_wire(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %191, i32 noundef %186, i16 noundef signext 0, i32 noundef %152, ptr noundef null, ptr noundef nonnull %151) #16
  br label %202

192:                                              ; preds = %181
  call void @glPushMatrix() #15
  call fastcc void @get_matrix_editbone(ptr noundef nonnull %151, ptr noundef nonnull %7) #16
  call void @glMultMatrixf(ptr noundef nonnull %7) #15
  %193 = load i32, ptr %15, align 4, !tbaa !51
  %194 = load i32, ptr %148, align 8, !tbaa !55
  switch i32 %193, label %198 [
    i32 1, label %195
    i32 4, label %196
    i32 2, label %197
  ]

195:                                              ; preds = %192
  call fastcc void @draw_line_bone(i32 noundef %194, i32 noundef %186, i16 noundef signext 0, i32 noundef %152, ptr noundef null, ptr noundef nonnull %151) #16
  br label %201

196:                                              ; preds = %192
  call fastcc void @draw_wire_bone(i16 noundef signext 2, i32 noundef %194, i32 noundef %186, i16 noundef signext 0, i32 noundef %152, ptr noundef null, ptr noundef nonnull %151) #16
  br label %201

197:                                              ; preds = %192
  call fastcc void @draw_b_bone(i16 noundef signext 2, i32 noundef %194, i32 noundef %186, i16 noundef signext 0, i32 noundef %152, ptr noundef null, ptr noundef nonnull %151) #16
  br label %201

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.EditBone, ptr %151, i64 0, i32 14
  %200 = load float, ptr %199, align 8, !tbaa !98
  call fastcc void @draw_bone(i16 noundef signext 2, i32 noundef %194, i32 noundef %186, i16 noundef signext 0, i32 noundef %152, float noundef %200) #16
  br label %201

201:                                              ; preds = %196, %198, %197, %195
  call void @glPopMatrix() #15
  br label %202

202:                                              ; preds = %189, %190, %201
  %203 = load ptr, ptr %166, align 8, !tbaa !96
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  call void @UI_ThemeColor(i32 noundef 27) #15
  %206 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #15
  call void @setlinestyle(i32 noundef 3) #15
  call void @glBegin(i32 noundef 1) #15
  %207 = load ptr, ptr %166, align 8, !tbaa !96
  %208 = getelementptr inbounds %struct.EditBone, ptr %207, i64 0, i32 8
  call void @glVertex3fv(ptr noundef nonnull %208) #15
  %209 = getelementptr inbounds %struct.EditBone, ptr %151, i64 0, i32 7
  call void @glVertex3fv(ptr noundef nonnull %209) #15
  call void @glEnd() #15
  call void @setlinestyle(i32 noundef 0) #15
  br label %210

210:                                              ; preds = %160, %205, %202, %150
  %211 = icmp eq i32 %152, -1
  %212 = add nuw i32 %152, 1
  %213 = select i1 %211, i32 -1, i32 %212
  %214 = load ptr, ptr %151, align 8, !tbaa !89
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %150, !llvm.loop !100

216:                                              ; preds = %210, %139
  %217 = phi i32 [ %140, %139 ], [ %213, %210 ]
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #15
  br label %221

221:                                              ; preds = %219, %216
  br i1 %60, label %222, label %225

222:                                              ; preds = %221
  %223 = load i32, ptr %15, align 4, !tbaa !51
  switch i32 %223, label %224 [
    i32 4, label %225
    i32 1, label %225
  ]

224:                                              ; preds = %222
  call void @ED_view3d_polygon_offset(ptr noundef %11, float noundef 0.000000e+00) #15
  br label %225

225:                                              ; preds = %222, %222, %221, %224
  %226 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %227 = load i32, ptr %226, align 8, !tbaa !55
  %228 = and i32 %227, 12
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %288, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %232 = and i32 %231, 32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %288

234:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %235 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 -1, ptr %235, align 1, !tbaa !101
  %236 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %237 = load i8, ptr %236, align 8, !tbaa !88
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  call void @glDisable(i32 noundef 2929) #15
  br label %240

240:                                              ; preds = %239, %234
  %241 = load ptr, ptr %141, align 8, !tbaa !54
  %242 = load ptr, ptr %241, align 8, !tbaa !89
  %243 = icmp eq ptr %242, null
  br i1 %243, label %283, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  br label %246

246:                                              ; preds = %244, %280
  %247 = phi ptr [ %242, %244 ], [ %281, %280 ]
  %248 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 10
  %249 = load i32, ptr %248, align 8, !tbaa !90
  %250 = load i32, ptr %245, align 8, !tbaa !92
  %251 = and i32 %250, %249
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %280, label %253

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 9
  %255 = load i32, ptr %254, align 4, !tbaa !93
  %256 = and i32 %255, 1024
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %253
  %259 = and i32 %255, 1
  %260 = icmp eq i32 %259, 0
  %261 = select i1 %260, i32 3, i32 4
  call void @UI_GetThemeColor3ubv(i32 noundef %261, ptr noundef nonnull %9) #15
  %262 = load i32, ptr %226, align 8, !tbaa !55
  %263 = and i32 %262, 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 7
  %267 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 8
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %266, ptr noundef nonnull %267) #15
  call void @glRasterPos3fv(ptr noundef nonnull %8) #15
  %268 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 5
  %269 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %268) #17
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %8, ptr noundef nonnull %268, i64 noundef %269, i16 noundef signext 10, i16 noundef signext 0, ptr noundef nonnull %9) #15
  %270 = load i32, ptr %226, align 8, !tbaa !55
  br label %271

271:                                              ; preds = %265, %258
  %272 = phi i32 [ %270, %265 ], [ %262, %258 ]
  %273 = and i32 %272, 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %271
  call void @glPushMatrix() #15
  call fastcc void @get_matrix_editbone(ptr noundef nonnull %247, ptr noundef nonnull %7) #16
  %276 = getelementptr inbounds %struct.EditBone, ptr %247, i64 0, i32 14
  %277 = load float, ptr %276, align 8, !tbaa !98
  call fastcc void @bone_matrix_translate_y(ptr noundef nonnull %7, float noundef %277) #16
  call void @glMultMatrixf(ptr noundef nonnull %7) #15
  call void @glColor3ubv(ptr noundef nonnull %9) #15
  %278 = load float, ptr %276, align 8, !tbaa !98
  %279 = fmul float %278, 2.500000e-01
  call void @drawaxes(float noundef %279, i8 noundef zeroext 1) #15
  call void @glPopMatrix() #15
  br label %280

280:                                              ; preds = %246, %271, %275, %253
  %281 = load ptr, ptr %247, align 8, !tbaa !89
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %246, !llvm.loop !102

283:                                              ; preds = %280, %240
  %284 = load i8, ptr %236, align 8, !tbaa !88
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %283
  call void @glEnable(i32 noundef 2929) #15
  br label %287

287:                                              ; preds = %286, %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  br label %288

288:                                              ; preds = %230, %287, %225
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_ghost_poses_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !103 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call ptr @BKE_animdata_from_id(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 21
  %12 = load <2 x i32>, ptr %11, align 8, !tbaa !104
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = extractelement <2 x float> %13, i64 0
  %15 = extractelement <2 x float> %13, i64 1
  %16 = fcmp ugt float %15, %14
  br i1 %16, label %17, label %69

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 18
  %19 = load i16, ptr %18, align 2, !tbaa !105
  %20 = fsub float %15, %14
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = and i32 %22, -65
  store i32 %23, ptr %21, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = and i32 %27, -13
  store i32 %28, ptr %26, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 60
  %30 = load i16, ptr %29, align 2, !tbaa !107
  %31 = or i16 %30, 1024
  store i16 %31, ptr %29, align 2, !tbaa !107
  %32 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  call void @BKE_pose_copy_data(ptr noundef nonnull %5, ptr noundef %33, i8 noundef zeroext 1) #15
  %34 = load ptr, ptr %5, align 8, !tbaa !89
  store ptr %34, ptr %32, align 8, !tbaa !56
  %35 = load ptr, ptr %9, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef nonnull %7, ptr noundef %35) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef nonnull %7, i16 noundef signext 0) #16
  call void @glEnable(i32 noundef 3042) #15
  %36 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %37 = load i8, ptr %36, align 8, !tbaa !88
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %17
  call void @glDisable(i32 noundef 2929) #15
  br label %40

40:                                               ; preds = %39, %17
  %41 = fptosi float %14 to i32
  store i32 %41, ptr %24, align 8, !tbaa !106
  %42 = sitofp i32 %41 to float
  %43 = fcmp ogt float %15, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = sext i16 %19 to i32
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi float [ %42, %44 ], [ %58, %46 ]
  %48 = fsub float %15, %47
  %49 = fdiv float %48, %20
  %50 = call float @sqrtf(float noundef %49) #15
  %51 = fmul float %50, 1.200000e+02
  %52 = fptosi float %51 to i32
  %53 = sub nsw i32 -128, %52
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %53) #15
  %54 = load i32, ptr %24, align 8, !tbaa !106
  %55 = sitofp i32 %54 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, float noundef %55, i16 noundef signext 3) #15
  call void @BKE_pose_where_is(ptr noundef nonnull %0, ptr noundef %7) #15
  call fastcc void @draw_pose_bones(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  %56 = load i32, ptr %24, align 8, !tbaa !106
  %57 = add nsw i32 %56, %45
  store i32 %57, ptr %24, align 8, !tbaa !106
  %58 = sitofp i32 %57 to float
  %59 = fcmp ogt float %15, %58
  br i1 %59, label %46, label %60, !llvm.loop !108

60:                                               ; preds = %46, %40
  call void @glDisable(i32 noundef 3042) #15
  %61 = load i8, ptr %36, align 8, !tbaa !88
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @glEnable(i32 noundef 2929) #15
  br label %64

64:                                               ; preds = %63, %60
  %65 = sitofp i32 %25 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, float noundef %65, i16 noundef signext 3) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef %7, i16 noundef signext 1) #16
  %66 = load ptr, ptr %5, align 8, !tbaa !89
  call void @BKE_pose_free(ptr noundef %66) #15
  store i32 %25, ptr %24, align 8, !tbaa !106
  store ptr %33, ptr %32, align 8, !tbaa !56
  store i32 %27, ptr %26, align 8, !tbaa !55
  %67 = load i32, ptr %21, align 8, !tbaa !62
  %68 = or i32 %67, 64
  store i32 %68, ptr %21, align 8, !tbaa !62
  store i16 %30, ptr %29, align 2, !tbaa !107
  br label %69

69:                                               ; preds = %4, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_ghost_poses_keys(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !109 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  %7 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %9, align 8, !tbaa !110
  br label %13

13:                                               ; preds = %4, %11
  %14 = phi ptr [ %12, %11 ], [ null, %4 ]
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %17 = getelementptr inbounds %struct.bArmature, ptr %16, i64 0, i32 21
  %18 = load <2 x i32>, ptr %17, align 8, !tbaa !104
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = extractelement <2 x float> %19, i64 0
  %21 = extractelement <2 x float> %19, i64 1
  %22 = fcmp ugt float %21, %20
  br i1 %22, label %23, label %90

23:                                               ; preds = %13
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #15
  call void @action_to_keylist(ptr noundef %9, ptr noundef %14, ptr noundef nonnull %6, ptr noundef null) #15
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #15
  %24 = load ptr, ptr %6, align 8, !tbaa !112
  %25 = icmp eq ptr %24, null
  br i1 %25, label %90, label %26

26:                                               ; preds = %23, %38
  %27 = phi ptr [ %29, %38 ], [ %24, %23 ]
  %28 = phi float [ %39, %38 ], [ 0.000000e+00, %23 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !114
  %30 = getelementptr inbounds %struct.ActKeyColumn, ptr %27, i64 0, i32 8
  %31 = load float, ptr %30, align 4, !tbaa !116
  %32 = fcmp olt float %31, %20
  %33 = fcmp ogt float %31, %21
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %27) #15
  br label %38

36:                                               ; preds = %26
  %37 = fadd float %28, 1.000000e+00
  br label %38

38:                                               ; preds = %35, %36
  %39 = phi float [ %28, %35 ], [ %37, %36 ]
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %26, !llvm.loop !117

41:                                               ; preds = %38
  %42 = fcmp oeq float %39, 0.000000e+00
  br i1 %42, label %90, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %45 = load i32, ptr %44, align 8, !tbaa !62
  %46 = and i32 %45, -65
  store i32 %46, ptr %44, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !106
  %49 = getelementptr inbounds %struct.bArmature, ptr %16, i64 0, i32 8
  %50 = load i32, ptr %49, align 8, !tbaa !55
  %51 = and i32 %50, -13
  store i32 %51, ptr %49, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 60
  %53 = load i16, ptr %52, align 2, !tbaa !107
  %54 = or i16 %53, 1024
  store i16 %54, ptr %52, align 2, !tbaa !107
  %55 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  call void @BKE_pose_copy_data(ptr noundef nonnull %5, ptr noundef %56, i8 noundef zeroext 1) #15
  %57 = load ptr, ptr %5, align 8, !tbaa !89
  store ptr %57, ptr %55, align 8, !tbaa !56
  %58 = load ptr, ptr %15, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef %8, ptr noundef %58) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef %8, i16 noundef signext 0) #16
  call void @glEnable(i32 noundef 3042) #15
  %59 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %60 = load i8, ptr %59, align 8, !tbaa !88
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  call void @glDisable(i32 noundef 2929) #15
  br label %63

63:                                               ; preds = %62, %43
  %64 = load ptr, ptr %6, align 8, !tbaa !89
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %79, %66 ], [ %64, %63 ]
  %68 = phi float [ %78, %66 ], [ 0.000000e+00, %63 ]
  %69 = fdiv float %68, %39
  %70 = call float @sqrtf(float noundef %69) #15
  %71 = fmul float %70, 1.200000e+02
  %72 = fptosi float %71 to i32
  %73 = sub nsw i32 -128, %72
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %73) #15
  %74 = getelementptr inbounds %struct.ActKeyColumn, ptr %67, i64 0, i32 8
  %75 = load float, ptr %74, align 4, !tbaa !116
  %76 = fptosi float %75 to i32
  store i32 %76, ptr %47, align 8, !tbaa !106
  %77 = sitofp i32 %76 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %9, float noundef %77, i16 noundef signext 3) #15
  call void @BKE_pose_where_is(ptr noundef nonnull %0, ptr noundef %8) #15
  call fastcc void @draw_pose_bones(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  %78 = fadd float %68, 1.000000e+00
  %79 = load ptr, ptr %67, align 8, !tbaa !89
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %66, !llvm.loop !118

81:                                               ; preds = %66, %63
  call void @glDisable(i32 noundef 3042) #15
  %82 = load i8, ptr %59, align 8, !tbaa !88
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @glEnable(i32 noundef 2929) #15
  br label %85

85:                                               ; preds = %84, %81
  %86 = sitofp i32 %48 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %9, float noundef %86, i16 noundef signext 3) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef %8, i16 noundef signext 1) #16
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #15
  %87 = load ptr, ptr %5, align 8, !tbaa !89
  call void @BKE_pose_free(ptr noundef %87) #15
  store i32 %48, ptr %47, align 8, !tbaa !106
  store ptr %56, ptr %55, align 8, !tbaa !56
  store i32 %50, ptr %49, align 8, !tbaa !55
  %88 = load i32, ptr %44, align 8, !tbaa !62
  %89 = or i32 %88, 64
  store i32 %89, ptr %44, align 8, !tbaa !62
  br label %90

90:                                               ; preds = %23, %41, %13, %85
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_ghost_poses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !119 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %13 = icmp eq ptr %10, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %10, align 8, !tbaa !110
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %17

17:                                               ; preds = %14
  call void @calc_action_range(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef nonnull %7, i16 noundef signext 0) #15
  %18 = load float, ptr %6, align 4, !tbaa !120
  %19 = load float, ptr %7, align 4, !tbaa !120
  %20 = fcmp oeq float %18, %19
  br i1 %20, label %109, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 18
  %23 = load i16, ptr %22, align 2, !tbaa !105
  %24 = sitofp i16 %23 to float
  %25 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 17
  %26 = load i16, ptr %25, align 8, !tbaa !64
  %27 = sitofp i16 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %27, float %24, float 5.000000e-01)
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %30 = load i32, ptr %29, align 8, !tbaa !62
  %31 = and i32 %30, -65
  store i32 %31, ptr %29, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !106
  %34 = sitofp i32 %33 to float
  %35 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %10, float noundef %34, i16 noundef signext 0) #15
  %36 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !55
  %38 = and i32 %37, -13
  store i32 %38, ptr %36, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  call void @BKE_pose_copy_data(ptr noundef nonnull %5, ptr noundef %40, i8 noundef zeroext 1) #15
  %41 = load ptr, ptr %5, align 8, !tbaa !89
  store ptr %41, ptr %39, align 8, !tbaa !56
  %42 = load ptr, ptr %11, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef nonnull %9, ptr noundef %42) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef nonnull %9, i16 noundef signext 0) #16
  call void @glEnable(i32 noundef 3042) #15
  %43 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %44 = load i8, ptr %43, align 8, !tbaa !88
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %21
  call void @glDisable(i32 noundef 2929) #15
  br label %47

47:                                               ; preds = %46, %21
  %48 = fcmp ogt float %28, %24
  br i1 %48, label %49, label %101

49:                                               ; preds = %47
  %50 = sitofp i32 %33 to double
  %51 = sitofp i16 %23 to double
  %52 = fpext float %34 to double
  br label %53

53:                                               ; preds = %49, %98
  %54 = phi float [ %24, %49 ], [ %99, %98 ]
  %55 = call double @fmod(double noundef %50, double noundef %51) #15
  %56 = fptrunc double %55 to float
  %57 = fsub float %54, %56
  %58 = fdiv float %57, %28
  %59 = call float @sqrtf(float noundef %58) #15
  %60 = fmul float %59, 1.200000e+02
  %61 = fptosi float %60 to i32
  %62 = sub nsw i32 -128, %61
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %62) #15
  %63 = fadd float %35, %57
  %64 = load float, ptr %6, align 4, !tbaa !120
  %65 = fcmp ult float %63, %64
  %66 = load float, ptr %7, align 4
  %67 = fcmp ugt float %63, %66
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %53
  %70 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %10, float noundef %63, i16 noundef signext 2) #15
  %71 = fptosi float %70 to i32
  store i32 %71, ptr %32, align 8, !tbaa !106
  %72 = icmp eq i32 %33, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = sitofp i32 %71 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %9, ptr noundef nonnull %10, float noundef %74, i16 noundef signext 3) #15
  call void @BKE_pose_where_is(ptr noundef nonnull %0, ptr noundef %9) #15
  call fastcc void @draw_pose_bones(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  br label %75

75:                                               ; preds = %69, %73, %53
  %76 = call double @fmod(double noundef %52, double noundef %51) #15
  %77 = fptrunc double %76 to float
  %78 = fadd float %54, %77
  %79 = fsub float %78, %24
  %80 = fadd float %79, 1.000000e+00
  %81 = fdiv float %80, %28
  %82 = call float @sqrtf(float noundef %81) #15
  %83 = fmul float %82, 1.200000e+02
  %84 = fptosi float %83 to i32
  %85 = sub nsw i32 -128, %84
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %85) #15
  %86 = fsub float %35, %80
  %87 = load float, ptr %6, align 4, !tbaa !120
  %88 = fcmp ult float %86, %87
  %89 = load float, ptr %7, align 4
  %90 = fcmp ugt float %86, %89
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %75
  %93 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %10, float noundef %86, i16 noundef signext 2) #15
  %94 = fptosi float %93 to i32
  store i32 %94, ptr %32, align 8, !tbaa !106
  %95 = icmp eq i32 %33, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = sitofp i32 %94 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef %9, ptr noundef nonnull %10, float noundef %97, i16 noundef signext 3) #15
  call void @BKE_pose_where_is(ptr noundef nonnull %0, ptr noundef %9) #15
  call fastcc void @draw_pose_bones(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  br label %98

98:                                               ; preds = %75, %96, %92
  %99 = fadd float %54, %24
  %100 = fcmp olt float %99, %28
  br i1 %100, label %53, label %101, !llvm.loop !121

101:                                              ; preds = %98, %47
  call void @glDisable(i32 noundef 3042) #15
  %102 = load i8, ptr %43, align 8, !tbaa !88
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @glEnable(i32 noundef 2929) #15
  br label %105

105:                                              ; preds = %104, %101
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %10, float noundef %34, i16 noundef signext 3) #15
  call fastcc void @ghost_poses_tag_unselected(ptr noundef %9, i16 noundef signext 1) #16
  %106 = load ptr, ptr %5, align 8, !tbaa !89
  call void @BKE_pose_free(ptr noundef %106) #15
  store i32 %33, ptr %32, align 8, !tbaa !106
  store ptr %40, ptr %39, align 8, !tbaa !56
  store i32 %37, ptr %36, align 8, !tbaa !55
  %107 = load i32, ptr %29, align 8, !tbaa !62
  %108 = or i32 %107, 64
  store i32 %108, ptr %29, align 8, !tbaa !62
  br label %109

109:                                              ; preds = %17, %4, %14, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_pose_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !122 {
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 14
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @draw_motion_paths_init(ptr noundef %1, ptr noundef %2) #15
  %10 = load ptr, ptr %5, align 8, !tbaa !56
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  br label %15

15:                                               ; preds = %13, %29
  %16 = phi ptr [ %11, %13 ], [ %30, %29 ]
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 25
  %20 = load i32, ptr %19, align 8, !tbaa !125
  %21 = load i32, ptr %14, align 8, !tbaa !92
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !127
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @draw_motion_path_instance(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %15, %24, %28
  %30 = load ptr, ptr %16, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !128

32:                                               ; preds = %29, %4
  tail call void @draw_motion_paths_cleanup(ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !129 {
  %9 = alloca float, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca [4 x float], align 16
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #14
  %22 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 14
  store i32 0, ptr %22, align 4, !tbaa !87
  call void @glGetFloatv(i32 noundef 2849, ptr noundef nonnull %9) #15
  %23 = load float, ptr %9, align 4, !tbaa !120
  %24 = fcmp ogt float %23, 0x3FF19999A0000000
  %25 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %26 = load i16, ptr %25, align 8, !tbaa !130
  %27 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %87

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %31) #15
  %32 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  %33 = call fastcc float @len_v3(ptr noundef nonnull %32) #16
  %34 = fdiv float 1.000000e+00, %33
  call void @mul_mat3_m4_fl(ptr noundef nonnull %10, float noundef %34) #15
  %35 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #15
  %36 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !55
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %87, label %40

40:                                               ; preds = %30
  call void @glEnable(i32 noundef 3042) #15
  %41 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %42 = load i8, ptr %41, align 8, !tbaa !88
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @glDisable(i32 noundef 2929) #15
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = load ptr, ptr %47, align 8, !tbaa !89
  %49 = icmp eq ptr %48, null
  br i1 %49, label %82, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  br label %52

52:                                               ; preds = %50, %79
  %53 = phi ptr [ %48, %50 ], [ %80, %79 ]
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %53, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !123
  %56 = icmp eq ptr %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Bone, ptr %55, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !131
  %60 = and i32 %59, 69696
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %59, 2097152
  %67 = icmp ne i32 %66, 0
  %68 = and i1 %67, %65
  %69 = and i32 %59, 1
  %70 = icmp eq i32 %69, 0
  %71 = or i1 %70, %68
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.Bone, ptr %55, i64 0, i32 25
  %74 = load i32, ptr %73, align 8, !tbaa !125
  %75 = load i32, ptr %51, align 8, !tbaa !92
  %76 = and i32 %75, %74
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  call fastcc void @draw_sphere_bone_dist(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %53, ptr noundef null) #16
  br label %79

79:                                               ; preds = %62, %52, %78, %72, %57
  %80 = load ptr, ptr %53, align 8, !tbaa !89
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %52, !llvm.loop !132

82:                                               ; preds = %79, %45
  %83 = load i8, ptr %41, align 8, !tbaa !88
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @glEnable(i32 noundef 2929) #15
  br label %86

86:                                               ; preds = %85, %82
  call void @glDisable(i32 noundef 3042) #15
  br label %87

87:                                               ; preds = %30, %86, %8
  call void @glCullFace(i32 noundef 1029) #15
  %88 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %89 = load i16, ptr %88, align 2, !tbaa !48
  %90 = and i16 %89, 1024
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  call void @glEnable(i32 noundef 2884) #15
  br label %93

93:                                               ; preds = %87, %92
  %94 = phi i8 [ 1, %92 ], [ 0, %87 ]
  %95 = icmp sgt i16 %4, 2
  br i1 %95, label %96, label %236

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !55
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !133
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i32 [ %103, %101 ], [ -1, %96 ]
  %106 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = load ptr, ptr %107, align 8, !tbaa !89
  %109 = icmp eq ptr %108, null
  br i1 %109, label %221, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  %112 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 5
  %113 = icmp eq i8 %6, 0
  br label %114

114:                                              ; preds = %110, %213
  %115 = phi ptr [ %108, %110 ], [ %219, %213 ]
  %116 = phi i8 [ %94, %110 ], [ %215, %213 ]
  %117 = phi i8 [ 0, %110 ], [ %214, %213 ]
  %118 = phi i32 [ %105, %110 ], [ %218, %213 ]
  %119 = getelementptr inbounds %struct.bPoseChannel, ptr %115, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !123
  %121 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 25
  %122 = load i32, ptr %121, align 8, !tbaa !125
  %123 = load i32, ptr %22, align 4, !tbaa !87
  %124 = or i32 %123, %122
  store i32 %124, ptr %22, align 4, !tbaa !87
  %125 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 10
  %126 = load i32, ptr %125, align 8, !tbaa !131
  %127 = and i32 %126, 65600
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %213

129:                                              ; preds = %114
  %130 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %131 = and i32 %130, 32
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %126, 2097152
  %134 = icmp eq i32 %133, 0
  %135 = or i1 %134, %132
  br i1 %135, label %136, label %213

136:                                              ; preds = %129
  %137 = load i32, ptr %111, align 8, !tbaa !92
  %138 = and i32 %137, %122
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %213, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bPoseChannel, ptr %115, i64 0, i32 18
  %142 = load ptr, ptr %141, align 8, !tbaa !134
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @glPushMatrix() #15
  br label %154

145:                                              ; preds = %140
  %146 = load i32, ptr %97, align 8, !tbaa !55
  %147 = and i32 %146, 1024
  %148 = icmp eq i32 %147, 0
  call void @glPushMatrix() #15
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.bPoseChannel, ptr %115, i64 0, i32 19
  %151 = load ptr, ptr %150, align 8, !tbaa !135
  %152 = icmp eq ptr %151, null
  %153 = select i1 %152, ptr %115, ptr %151
  br label %154

154:                                              ; preds = %149, %145, %144
  %155 = phi ptr [ %115, %144 ], [ %115, %145 ], [ %153, %149 ]
  %156 = phi i1 [ false, %144 ], [ false, %145 ], [ true, %149 ]
  %157 = getelementptr inbounds %struct.bPoseChannel, ptr %155, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %157) #15
  %158 = load i32, ptr %125, align 8, !tbaa !131
  %159 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !136
  %161 = icmp eq ptr %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.Bone, ptr %160, i64 0, i32 10
  %164 = load i32, ptr %163, align 8, !tbaa !131
  %165 = and i32 %164, 65600
  %166 = icmp eq i32 %165, 0
  %167 = and i32 %158, -17
  %168 = select i1 %166, i32 %158, i32 %167
  br label %169

169:                                              ; preds = %162, %154
  %170 = phi i32 [ %158, %154 ], [ %168, %162 ]
  %171 = load ptr, ptr %112, align 8, !tbaa !137
  %172 = icmp eq ptr %120, %171
  %173 = or i32 %170, 256
  %174 = select i1 %172, i32 %173, i32 %170
  br i1 %113, label %175, label %176

175:                                              ; preds = %169
  call fastcc void @set_pchan_colorset(ptr noundef %19, ptr noundef nonnull %115) #16
  br label %176

176:                                              ; preds = %169, %175
  br i1 %156, label %177, label %196

177:                                              ; preds = %176
  %178 = load ptr, ptr %119, align 8, !tbaa !123
  %179 = getelementptr inbounds %struct.Bone, ptr %178, i64 0, i32 10
  %180 = load i32, ptr %179, align 8, !tbaa !131
  %181 = and i32 %180, 131072
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %210

183:                                              ; preds = %177
  %184 = icmp eq i8 %116, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %183
  %186 = load i16, ptr %88, align 2, !tbaa !48
  %187 = and i16 %186, 1024
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  call void @glDisable(i32 noundef 2884) #15
  br label %190

190:                                              ; preds = %189, %185, %183
  %191 = phi i8 [ 0, %189 ], [ %116, %185 ], [ 0, %183 ]
  %192 = load ptr, ptr %141, align 8, !tbaa !134
  %193 = load i32, ptr %97, align 8, !tbaa !55
  %194 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 18
  %195 = load float, ptr %194, align 4, !tbaa !138
  call fastcc void @draw_custom_bone(ptr noundef %0, ptr noundef %1, ptr noundef %17, ptr noundef %192, i16 noundef signext 3, i32 noundef %193, i32 noundef %174, i32 noundef %118, float noundef %195) #16
  br label %210

196:                                              ; preds = %176
  %197 = icmp eq i8 %116, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %196
  call void @glEnable(i32 noundef 2884) #15
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i8 [ 1, %198 ], [ %116, %196 ]
  %201 = load i32, ptr %27, align 4, !tbaa !51
  switch i32 %201, label %206 [
    i32 1, label %210
    i32 4, label %210
    i32 3, label %202
    i32 2, label %204
  ]

202:                                              ; preds = %199
  %203 = load i32, ptr %97, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone(i32 noundef %203, i32 noundef %174, i32 noundef %118, ptr noundef nonnull %115, ptr noundef null) #16
  br label %210

204:                                              ; preds = %199
  %205 = load i32, ptr %97, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 3, i32 noundef %205, i32 noundef %174, i16 noundef signext 0, i32 noundef %118, ptr noundef nonnull %115, ptr noundef null) #16
  br label %210

206:                                              ; preds = %199
  %207 = load i32, ptr %97, align 8, !tbaa !55
  %208 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 18
  %209 = load float, ptr %208, align 4, !tbaa !138
  call fastcc void @draw_bone(i16 noundef signext 3, i32 noundef %207, i32 noundef %174, i16 noundef signext 0, i32 noundef %118, float noundef %209) #16
  br label %210

210:                                              ; preds = %199, %199, %177, %202, %206, %204, %190
  %211 = phi i8 [ %117, %190 ], [ %117, %199 ], [ %117, %202 ], [ %117, %204 ], [ %117, %206 ], [ 1, %177 ], [ %117, %199 ]
  %212 = phi i8 [ %191, %190 ], [ %200, %199 ], [ %200, %202 ], [ %200, %204 ], [ %200, %206 ], [ %116, %177 ], [ %200, %199 ]
  call void @glPopMatrix() #15
  br label %213

213:                                              ; preds = %129, %136, %210, %114
  %214 = phi i8 [ %211, %210 ], [ %117, %136 ], [ %117, %114 ], [ %117, %129 ]
  %215 = phi i8 [ %212, %210 ], [ %116, %136 ], [ %116, %114 ], [ %116, %129 ]
  %216 = icmp eq i32 %118, -1
  %217 = add nsw i32 %118, 65536
  %218 = select i1 %216, i32 -1, i32 %217
  %219 = load ptr, ptr %115, align 8, !tbaa !89
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %114, !llvm.loop !139

221:                                              ; preds = %213, %104
  %222 = phi i32 [ %105, %104 ], [ %218, %213 ]
  %223 = phi i8 [ 0, %104 ], [ %214, %213 ]
  %224 = phi i8 [ %94, %104 ], [ %215, %213 ]
  %225 = load i32, ptr %27, align 4, !tbaa !51
  %226 = icmp ne i32 %225, 1
  %227 = icmp ne i32 %225, 4
  %228 = and i1 %226, %227
  %229 = icmp eq i8 %223, 0
  %230 = select i1 %228, i1 %229, i1 false
  %231 = icmp ne i32 %222, -1
  %232 = select i1 %230, i1 %231, i1 false
  br i1 %232, label %233, label %236

233:                                              ; preds = %221
  %234 = and i32 %222, 65535
  %235 = call zeroext i8 @GPU_select_load_id(i32 noundef %234) #15
  br label %236

236:                                              ; preds = %221, %233, %93
  %237 = phi i32 [ -1, %233 ], [ %222, %221 ], [ -1, %93 ]
  %238 = phi i8 [ 0, %233 ], [ %223, %221 ], [ 0, %93 ]
  %239 = phi i8 [ %224, %233 ], [ %224, %221 ], [ %94, %93 ]
  %240 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 8
  %241 = load i32, ptr %240, align 8, !tbaa !55
  %242 = and i32 %241, 1024
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %346

244:                                              ; preds = %236
  %245 = icmp ne i8 %238, 0
  %246 = icmp slt i16 %4, 3
  %247 = or i1 %246, %245
  br i1 %247, label %248, label %353

248:                                              ; preds = %244
  %249 = and i32 %241, 16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %253 = load i32, ptr %252, align 4, !tbaa !133
  br label %254

254:                                              ; preds = %251, %248
  %255 = phi i32 [ %253, %251 ], [ %237, %248 ]
  %256 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %257 = load ptr, ptr %256, align 8, !tbaa !56
  %258 = load ptr, ptr %257, align 8, !tbaa !89
  %259 = icmp eq ptr %258, null
  br i1 %259, label %334, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  %262 = icmp eq i8 %6, 0
  %263 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 5
  br label %264

264:                                              ; preds = %260, %328
  %265 = phi ptr [ %258, %260 ], [ %332, %328 ]
  %266 = phi i32 [ %255, %260 ], [ %331, %328 ]
  %267 = getelementptr inbounds %struct.bPoseChannel, ptr %265, i64 0, i32 12
  %268 = load ptr, ptr %267, align 8, !tbaa !123
  %269 = getelementptr inbounds %struct.Bone, ptr %268, i64 0, i32 10
  %270 = load i32, ptr %269, align 8, !tbaa !131
  %271 = and i32 %270, 65600
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %328

273:                                              ; preds = %264
  %274 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %275 = and i32 %274, 32
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %270, 2097152
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %278, %276
  br i1 %279, label %280, label %328

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.Bone, ptr %268, i64 0, i32 25
  %282 = load i32, ptr %281, align 8, !tbaa !125
  %283 = load i32, ptr %261, align 8, !tbaa !92
  %284 = and i32 %283, %282
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %328, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.bPoseChannel, ptr %265, i64 0, i32 18
  %288 = load ptr, ptr %287, align 8, !tbaa !134
  %289 = icmp eq ptr %288, null
  br i1 %289, label %328, label %290

290:                                              ; preds = %286
  %291 = and i32 %270, 131072
  %292 = icmp ne i32 %291, 0
  %293 = or i1 %246, %292
  br i1 %293, label %294, label %328

294:                                              ; preds = %290
  call void @glPushMatrix() #15
  %295 = getelementptr inbounds %struct.bPoseChannel, ptr %265, i64 0, i32 19
  %296 = load ptr, ptr %295, align 8, !tbaa !135
  %297 = icmp eq ptr %296, null
  %298 = select i1 %297, ptr %265, ptr %296
  %299 = getelementptr inbounds %struct.bPoseChannel, ptr %298, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %299) #15
  br i1 %262, label %300, label %306

300:                                              ; preds = %294
  %301 = load i32, ptr %240, align 8, !tbaa !55
  %302 = and i32 %301, 16
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  call fastcc void @set_pchan_colorset(ptr noundef %19, ptr noundef nonnull %265) #16
  br label %306

305:                                              ; preds = %300
  call void @glColor3ubv(ptr noundef %5) #15
  br label %306

306:                                              ; preds = %304, %305, %294
  %307 = load i32, ptr %269, align 8, !tbaa !131
  %308 = getelementptr inbounds %struct.Bone, ptr %268, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !136
  %310 = icmp eq ptr %309, null
  br i1 %310, label %318, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.Bone, ptr %309, i64 0, i32 10
  %313 = load i32, ptr %312, align 8, !tbaa !131
  %314 = and i32 %313, 65600
  %315 = icmp eq i32 %314, 0
  %316 = and i32 %307, -17
  %317 = select i1 %315, i32 %307, i32 %316
  br label %318

318:                                              ; preds = %311, %306
  %319 = phi i32 [ %307, %306 ], [ %317, %311 ]
  %320 = load ptr, ptr %263, align 8, !tbaa !137
  %321 = icmp eq ptr %268, %320
  %322 = or i32 %319, 256
  %323 = select i1 %321, i32 %322, i32 %319
  %324 = load ptr, ptr %287, align 8, !tbaa !134
  %325 = load i32, ptr %240, align 8, !tbaa !55
  %326 = getelementptr inbounds %struct.Bone, ptr %268, i64 0, i32 18
  %327 = load float, ptr %326, align 4, !tbaa !138
  call fastcc void @draw_custom_bone(ptr noundef %0, ptr noundef %1, ptr noundef %17, ptr noundef %324, i16 noundef signext 2, i32 noundef %325, i32 noundef %323, i32 noundef %266, float noundef %327) #16
  call void @glPopMatrix() #15
  br label %328

328:                                              ; preds = %290, %273, %280, %318, %286, %264
  %329 = icmp eq i32 %266, -1
  %330 = add nsw i32 %266, 65536
  %331 = select i1 %329, i32 -1, i32 %330
  %332 = load ptr, ptr %265, align 8, !tbaa !89
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %264, !llvm.loop !140

334:                                              ; preds = %328, %254
  %335 = phi i32 [ %255, %254 ], [ %331, %328 ]
  %336 = load i32, ptr %27, align 4, !tbaa !51
  %337 = icmp ne i32 %336, 1
  %338 = icmp ne i32 %336, 4
  %339 = and i1 %337, %338
  %340 = and i1 %245, %339
  %341 = icmp ne i32 %335, -1
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %343, label %346

343:                                              ; preds = %334
  %344 = and i32 %335, 65535
  %345 = call zeroext i8 @GPU_select_load_id(i32 noundef %344) #15
  br label %346

346:                                              ; preds = %334, %343, %236
  %347 = phi i32 [ %237, %236 ], [ -1, %343 ], [ %335, %334 ]
  %348 = icmp slt i16 %4, 3
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i32, ptr %27, align 4, !tbaa !51
  br label %360

351:                                              ; preds = %346
  %352 = load i32, ptr %240, align 8, !tbaa !55
  br label %353

353:                                              ; preds = %351, %244
  %354 = phi i32 [ %352, %351 ], [ %241, %244 ]
  %355 = phi i32 [ %347, %351 ], [ %237, %244 ]
  %356 = and i32 %354, 16
  %357 = icmp eq i32 %356, 0
  %358 = load i32, ptr %27, align 4, !tbaa !51
  br i1 %357, label %359, label %360

359:                                              ; preds = %353
  switch i32 %358, label %536 [
    i32 1, label %360
    i32 4, label %360
  ]

360:                                              ; preds = %353, %349, %359, %359
  %361 = phi i32 [ %358, %359 ], [ %358, %359 ], [ %350, %349 ], [ %358, %353 ]
  %362 = phi i1 [ false, %359 ], [ false, %359 ], [ true, %349 ], [ false, %353 ]
  %363 = phi i32 [ %355, %359 ], [ %355, %359 ], [ %347, %349 ], [ %355, %353 ]
  switch i32 %361, label %371 [
    i32 1, label %364
    i32 4, label %364
  ]

364:                                              ; preds = %360, %360
  %365 = load i32, ptr %240, align 8, !tbaa !55
  %366 = and i32 %365, 16
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %381, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %370 = load i32, ptr %369, align 4, !tbaa !133
  br label %381

371:                                              ; preds = %360
  %372 = load i32, ptr %240, align 8, !tbaa !55
  %373 = and i32 %372, 16
  %374 = icmp eq i32 %373, 0
  br i1 %95, label %375, label %377

375:                                              ; preds = %371
  br i1 %374, label %381, label %376

376:                                              ; preds = %375
  call void @ED_view3d_polygon_offset(ptr noundef %17, float noundef 1.000000e+00) #15
  br label %381

377:                                              ; preds = %371
  br i1 %374, label %381, label %378

378:                                              ; preds = %377
  %379 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %380 = load i32, ptr %379, align 4, !tbaa !133
  br label %381

381:                                              ; preds = %375, %376, %378, %377, %364, %368
  %382 = phi i32 [ %370, %368 ], [ %363, %364 ], [ %363, %376 ], [ %380, %378 ], [ %363, %377 ], [ %363, %375 ]
  %383 = icmp eq i8 %239, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  call void @glEnable(i32 noundef 2884) #15
  br label %385

385:                                              ; preds = %384, %381
  %386 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %387 = load ptr, ptr %386, align 8, !tbaa !56
  %388 = load ptr, ptr %387, align 8, !tbaa !89
  %389 = icmp eq ptr %388, null
  br i1 %389, label %527, label %390

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  %392 = and i16 %26, 4
  %393 = icmp ne i16 %392, 0
  %394 = lshr exact i16 %392, 2
  %395 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 5
  %396 = icmp eq i8 %6, 0
  br label %397

397:                                              ; preds = %390, %521
  %398 = phi ptr [ %388, %390 ], [ %525, %521 ]
  %399 = phi i32 [ %382, %390 ], [ %524, %521 ]
  %400 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 12
  %401 = load ptr, ptr %400, align 8, !tbaa !123
  %402 = getelementptr inbounds %struct.Bone, ptr %401, i64 0, i32 25
  %403 = load i32, ptr %402, align 8, !tbaa !125
  %404 = load i32, ptr %22, align 4, !tbaa !87
  %405 = or i32 %404, %403
  store i32 %405, ptr %22, align 4, !tbaa !87
  %406 = getelementptr inbounds %struct.Bone, ptr %401, i64 0, i32 10
  %407 = load i32, ptr %406, align 8, !tbaa !131
  %408 = and i32 %407, 65600
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %521

410:                                              ; preds = %397
  %411 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %412 = and i32 %411, 32
  %413 = icmp eq i32 %412, 0
  %414 = and i32 %407, 2097152
  %415 = icmp eq i32 %414, 0
  %416 = or i1 %415, %413
  br i1 %416, label %417, label %521

417:                                              ; preds = %410
  %418 = load i32, ptr %391, align 8, !tbaa !92
  %419 = and i32 %418, %403
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %521, label %421

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 9
  %423 = load i8, ptr %422, align 8, !tbaa !141
  %424 = zext i8 %423 to i16
  br i1 %24, label %473, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 13
  %427 = load ptr, ptr %426, align 8, !tbaa !142
  %428 = icmp eq ptr %427, null
  br i1 %428, label %473, label %429

429:                                              ; preds = %425
  %430 = and i32 %407, 16
  %431 = icmp ne i32 %430, 0
  %432 = or i1 %393, %431
  %433 = load i32, ptr %240, align 8, !tbaa !55
  br i1 %432, label %445, label %434

434:                                              ; preds = %429
  %435 = and i32 %433, 16
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = and i32 %399, 65535
  %439 = call zeroext i8 @GPU_select_load_id(i32 noundef %438) #15
  call void @UI_ThemeColor(i32 noundef 25) #15
  br label %440

440:                                              ; preds = %437, %434
  call void @setlinestyle(i32 noundef 3) #15
  call void @glBegin(i32 noundef 1) #15
  %441 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 31
  call void @glVertex3fv(ptr noundef nonnull %441) #15
  %442 = load ptr, ptr %426, align 8, !tbaa !142
  %443 = getelementptr inbounds %struct.bPoseChannel, ptr %442, i64 0, i32 32
  call void @glVertex3fv(ptr noundef nonnull %443) #15
  call void @glEnd() #15
  call void @setlinestyle(i32 noundef 0) #15
  %444 = load i32, ptr %240, align 8, !tbaa !55
  br label %445

445:                                              ; preds = %440, %429
  %446 = phi i32 [ %444, %440 ], [ %433, %429 ]
  %447 = and i32 %446, 16
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %473, label %449

449:                                              ; preds = %445
  %450 = zext i8 %423 to i32
  %451 = and i32 %450, 1
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %462, label %453

453:                                              ; preds = %449
  %454 = load i32, ptr %406, align 8, !tbaa !131
  %455 = and i32 %454, 1
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %473, label %457

457:                                              ; preds = %453
  %458 = and i32 %450, 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %457
  call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext 120, i8 noundef zeroext 0) #15
  br label %470

461:                                              ; preds = %457
  call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext 50) #15
  br label %470

462:                                              ; preds = %449
  %463 = and i32 %450, 32
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %473, label %465

465:                                              ; preds = %462
  %466 = load i32, ptr %406, align 8, !tbaa !131
  %467 = and i32 %466, 1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  call void @glColor3ub(i8 noundef zeroext -106, i8 noundef zeroext -56, i8 noundef zeroext 50) #15
  br label %470

470:                                              ; preds = %460, %461, %469
  %471 = and i32 %399, 65535
  %472 = call zeroext i8 @GPU_select_load_id(i32 noundef %471) #15
  call fastcc void @pchan_draw_IK_root_lines(ptr noundef nonnull %398, i16 noundef signext %394) #16
  br label %473

473:                                              ; preds = %470, %445, %462, %465, %453, %425, %421
  call void @glPushMatrix() #15
  %474 = load i32, ptr %27, align 4, !tbaa !51
  %475 = icmp eq i32 %474, 3
  br i1 %475, label %478, label %476

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %477) #15
  br label %478

478:                                              ; preds = %476, %473
  %479 = load i32, ptr %406, align 8, !tbaa !131
  %480 = getelementptr inbounds %struct.Bone, ptr %401, i64 0, i32 3
  %481 = load ptr, ptr %480, align 8, !tbaa !136
  %482 = icmp eq ptr %481, null
  br i1 %482, label %490, label %483

483:                                              ; preds = %478
  %484 = getelementptr inbounds %struct.Bone, ptr %481, i64 0, i32 10
  %485 = load i32, ptr %484, align 8, !tbaa !131
  %486 = and i32 %485, 65600
  %487 = icmp eq i32 %486, 0
  %488 = and i32 %479, -17
  %489 = select i1 %487, i32 %479, i32 %488
  br label %490

490:                                              ; preds = %483, %478
  %491 = phi i32 [ %479, %478 ], [ %489, %483 ]
  %492 = load ptr, ptr %395, align 8, !tbaa !137
  %493 = icmp eq ptr %401, %492
  %494 = or i32 %491, 256
  %495 = select i1 %493, i32 %494, i32 %491
  br i1 %396, label %496, label %497

496:                                              ; preds = %490
  call fastcc void @set_pchan_colorset(ptr noundef %19, ptr noundef nonnull %398) #16
  br label %497

497:                                              ; preds = %490, %496
  %498 = getelementptr inbounds %struct.bPoseChannel, ptr %398, i64 0, i32 18
  %499 = load ptr, ptr %498, align 8, !tbaa !134
  %500 = icmp eq ptr %499, null
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = load i32, ptr %240, align 8, !tbaa !55
  %503 = and i32 %502, 1024
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %520, label %505

505:                                              ; preds = %501, %497
  %506 = load i32, ptr %27, align 4, !tbaa !51
  switch i32 %506, label %516 [
    i32 3, label %507
    i32 1, label %510
    i32 4, label %512
    i32 2, label %514
  ]

507:                                              ; preds = %505
  br i1 %362, label %508, label %520

508:                                              ; preds = %507
  %509 = load i32, ptr %240, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone_wire(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %509, i32 noundef %495, i16 noundef signext %424, i32 noundef %399, ptr noundef nonnull %398, ptr noundef null) #16
  br label %520

510:                                              ; preds = %505
  %511 = load i32, ptr %240, align 8, !tbaa !55
  call fastcc void @draw_line_bone(i32 noundef %511, i32 noundef %495, i16 noundef signext %424, i32 noundef %399, ptr noundef nonnull %398, ptr noundef null) #16
  br label %520

512:                                              ; preds = %505
  %513 = load i32, ptr %240, align 8, !tbaa !55
  call fastcc void @draw_wire_bone(i16 noundef signext %4, i32 noundef %513, i32 noundef %495, i16 noundef signext %424, i32 noundef %399, ptr noundef nonnull %398, ptr noundef null) #16
  br label %520

514:                                              ; preds = %505
  %515 = load i32, ptr %240, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 2, i32 noundef %515, i32 noundef %495, i16 noundef signext %424, i32 noundef %399, ptr noundef nonnull %398, ptr noundef null) #16
  br label %520

516:                                              ; preds = %505
  %517 = load i32, ptr %240, align 8, !tbaa !55
  %518 = getelementptr inbounds %struct.Bone, ptr %401, i64 0, i32 18
  %519 = load float, ptr %518, align 4, !tbaa !138
  call fastcc void @draw_bone(i16 noundef signext 2, i32 noundef %517, i32 noundef %495, i16 noundef signext %424, i32 noundef %399, float noundef %519) #16
  br label %520

520:                                              ; preds = %508, %507, %512, %516, %514, %510, %501
  call void @glPopMatrix() #15
  br label %521

521:                                              ; preds = %410, %417, %520, %397
  %522 = icmp eq i32 %399, -1
  %523 = add nsw i32 %399, 65536
  %524 = select i1 %522, i32 -1, i32 %523
  %525 = load ptr, ptr %398, align 8, !tbaa !89
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %397, !llvm.loop !143

527:                                              ; preds = %521, %385
  %528 = phi i32 [ %382, %385 ], [ %524, %521 ]
  br i1 %95, label %529, label %538

529:                                              ; preds = %527
  %530 = load i32, ptr %27, align 4, !tbaa !51
  switch i32 %530, label %531 [
    i32 4, label %538
    i32 1, label %538
  ]

531:                                              ; preds = %529
  %532 = load i32, ptr %240, align 8, !tbaa !55
  %533 = and i32 %532, 16
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %531
  call void @ED_view3d_polygon_offset(ptr noundef %17, float noundef 0.000000e+00) #15
  br label %538

536:                                              ; preds = %359
  %537 = icmp eq i8 %239, 0
  br i1 %537, label %554, label %538

538:                                              ; preds = %536, %529, %529, %535, %531, %527
  %539 = phi i32 [ %355, %536 ], [ %528, %529 ], [ %528, %529 ], [ %528, %535 ], [ %528, %531 ], [ %528, %527 ]
  call void @glDisable(i32 noundef 2884) #15
  %540 = load i32, ptr %240, align 8, !tbaa !55
  %541 = and i32 %540, 16
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %554, label %543

543:                                              ; preds = %538
  %544 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %545 = load i32, ptr %544, align 8, !tbaa !59
  %546 = and i32 %545, 512
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %554

548:                                              ; preds = %543
  %549 = load i16, ptr %25, align 8, !tbaa !130
  %550 = and i16 %549, 4
  %551 = icmp eq i16 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %548
  call fastcc void @draw_pose_dofs(ptr noundef %19) #16
  %553 = load i32, ptr %240, align 8, !tbaa !55
  br label %554

554:                                              ; preds = %536, %543, %548, %552, %538
  %555 = phi i32 [ %539, %543 ], [ %539, %548 ], [ %539, %552 ], [ %539, %538 ], [ %355, %536 ]
  %556 = phi i32 [ %540, %543 ], [ %540, %548 ], [ %553, %552 ], [ %540, %538 ], [ %354, %536 ]
  %557 = and i32 %556, 12
  %558 = icmp ne i32 %557, 0
  %559 = icmp eq i8 %7, 0
  %560 = and i1 %559, %558
  br i1 %560, label %561, label %650

561:                                              ; preds = %554
  %562 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %563 = load i32, ptr %562, align 8, !tbaa !59
  %564 = and i32 %563, 512
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %650

566:                                              ; preds = %561
  %567 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %568 = and i32 %567, 32
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %650

570:                                              ; preds = %566
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  %571 = icmp eq i8 %6, 0
  br i1 %571, label %573, label %572

572:                                              ; preds = %570
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #14
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %15) #15
  call void @rgb_float_to_uchar(ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
  br label %581

573:                                              ; preds = %570
  %574 = load i8, ptr %5, align 1, !tbaa !101
  store i8 %574, ptr %14, align 1, !tbaa !101
  %575 = getelementptr inbounds i8, ptr %5, i64 1
  %576 = load i8, ptr %575, align 1, !tbaa !101
  %577 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 1
  store i8 %576, ptr %577, align 1, !tbaa !101
  %578 = getelementptr inbounds i8, ptr %5, i64 2
  %579 = load i8, ptr %578, align 1, !tbaa !101
  %580 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 2
  store i8 %579, ptr %580, align 1, !tbaa !101
  br label %581

581:                                              ; preds = %573, %572
  %582 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 3
  store i8 -1, ptr %582, align 1
  %583 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %584 = load i8, ptr %583, align 8, !tbaa !88
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %587, label %586

586:                                              ; preds = %581
  call void @glDisable(i32 noundef 2929) #15
  br label %587

587:                                              ; preds = %586, %581
  %588 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %589 = load ptr, ptr %588, align 8, !tbaa !56
  %590 = load ptr, ptr %589, align 8, !tbaa !89
  %591 = icmp eq ptr %590, null
  br i1 %591, label %645, label %592

592:                                              ; preds = %587
  %593 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  br label %594

594:                                              ; preds = %592, %642
  %595 = phi ptr [ %590, %592 ], [ %643, %642 ]
  %596 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 12
  %597 = load ptr, ptr %596, align 8, !tbaa !123
  %598 = getelementptr inbounds %struct.Bone, ptr %597, i64 0, i32 10
  %599 = load i32, ptr %598, align 8, !tbaa !131
  %600 = and i32 %599, 65600
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %642

602:                                              ; preds = %594
  %603 = getelementptr inbounds %struct.Bone, ptr %597, i64 0, i32 25
  %604 = load i32, ptr %603, align 8, !tbaa !125
  %605 = load i32, ptr %593, align 8, !tbaa !92
  %606 = and i32 %605, %604
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %642, label %608

608:                                              ; preds = %602
  %609 = load i32, ptr %240, align 8, !tbaa !55
  %610 = and i32 %609, 48
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %616, label %612

612:                                              ; preds = %608
  %613 = and i32 %599, 1
  %614 = icmp eq i32 %613, 0
  %615 = select i1 %614, i32 3, i32 4
  br label %617

616:                                              ; preds = %608
  br i1 %95, label %617, label %619

617:                                              ; preds = %616, %612
  %618 = phi i32 [ %615, %612 ], [ 3, %616 ]
  call void @UI_GetThemeColor3ubv(i32 noundef %618, ptr noundef nonnull %14) #15
  br label %619

619:                                              ; preds = %617, %616
  %620 = load i32, ptr %240, align 8, !tbaa !55
  %621 = and i32 %620, 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %629, label %623

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 31
  %625 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 32
  call void @mid_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %624, ptr noundef nonnull %625) #15
  %626 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 4
  %627 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %626) #17
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %13, ptr noundef nonnull %626, i64 noundef %627, i16 noundef signext 10, i16 noundef signext 0, ptr noundef nonnull %14) #15
  %628 = load i32, ptr %240, align 8, !tbaa !55
  br label %629

629:                                              ; preds = %623, %619
  %630 = phi i32 [ %628, %623 ], [ %620, %619 ]
  %631 = and i32 %630, 20
  %632 = icmp eq i32 %631, 20
  br i1 %632, label %633, label %642

633:                                              ; preds = %629
  call void @glPushMatrix() #15
  %634 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %634) #15
  %635 = load ptr, ptr %596, align 8, !tbaa !123
  %636 = getelementptr inbounds %struct.Bone, ptr %635, i64 0, i32 18
  %637 = load float, ptr %636, align 4, !tbaa !138
  call fastcc void @bone_matrix_translate_y(ptr noundef nonnull %12, float noundef %637) #16
  call void @glMultMatrixf(ptr noundef nonnull %12) #15
  call void @glColor3ubv(ptr noundef nonnull %14) #15
  %638 = load ptr, ptr %596, align 8, !tbaa !123
  %639 = getelementptr inbounds %struct.Bone, ptr %638, i64 0, i32 18
  %640 = load float, ptr %639, align 4, !tbaa !138
  %641 = fmul float %640, 2.500000e-01
  call void @drawaxes(float noundef %641, i8 noundef zeroext 1) #15
  call void @glPopMatrix() #15
  br label %642

642:                                              ; preds = %594, %629, %633, %602
  %643 = load ptr, ptr %595, align 8, !tbaa !89
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %594, !llvm.loop !144

645:                                              ; preds = %642, %587
  %646 = load i8, ptr %583, align 8, !tbaa !88
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %649, label %648

648:                                              ; preds = %645
  call void @glEnable(i32 noundef 2929) #15
  br label %649

649:                                              ; preds = %648, %645
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  br label %650

650:                                              ; preds = %566, %649, %561, %554
  %651 = icmp eq i32 %555, -1
  br i1 %651, label %654, label %652

652:                                              ; preds = %650
  %653 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #15
  br label %654

654:                                              ; preds = %652, %650
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !145 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sphere_bone_dist(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !146 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %10 = icmp eq ptr %3, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 7
  %13 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 8
  %14 = tail call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %15 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 14
  store float %14, ptr %15, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 19
  %17 = load float, ptr %16, align 4, !tbaa !147
  %18 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 11
  %19 = load float, ptr %18, align 4, !tbaa !148
  %20 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !93
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 19
  br label %57

30:                                               ; preds = %23, %11
  %31 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 18
  br label %57

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !123
  %35 = getelementptr inbounds %struct.Bone, ptr %34, i64 0, i32 23
  %36 = load float, ptr %35, align 8, !tbaa !149
  %37 = getelementptr inbounds %struct.Bone, ptr %34, i64 0, i32 15
  %38 = load float, ptr %37, align 8, !tbaa !150
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !142
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.Bone, ptr %34, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !131
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !123
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 23
  br label %53

51:                                               ; preds = %42, %32
  %52 = getelementptr inbounds %struct.Bone, ptr %34, i64 0, i32 22
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %50, %47 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 32
  br label %57

57:                                               ; preds = %28, %30, %53
  %58 = phi float [ %36, %53 ], [ %17, %30 ], [ %17, %28 ]
  %59 = phi float [ %38, %53 ], [ %19, %30 ], [ %19, %28 ]
  %60 = phi ptr [ %55, %53 ], [ %12, %30 ], [ %12, %28 ]
  %61 = phi ptr [ %56, %53 ], [ %13, %30 ], [ %13, %28 ]
  %62 = phi ptr [ %54, %53 ], [ %31, %30 ], [ %29, %28 ]
  %63 = load float, ptr %62, align 4, !tbaa !120
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %61, ptr noundef nonnull %60) #16
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %5) #15
  %64 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %64, align 8, !tbaa !120
  %65 = fcmp une float %63, %58
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = call fastcc float @len_v2(ptr noundef nonnull %5) #16
  %68 = fsub float %63, %67
  %69 = fcmp ogt float %68, %58
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call fastcc void @zero_v3(ptr noundef nonnull %5) #16
  store float 0x3EE4F8B580000000, ptr %5, align 8, !tbaa !120
  br label %75

71:                                               ; preds = %66
  %72 = fsub float %58, %67
  %73 = fcmp ogt float %72, %63
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call fastcc void @zero_v3(ptr noundef nonnull %5) #16
  store float 0x3EE4F8B580000000, ptr %5, align 8, !tbaa !120
  br label %75

75:                                               ; preds = %70, %74, %71, %57
  %76 = phi float [ %58, %57 ], [ %63, %70 ], [ %58, %74 ], [ %58, %71 ]
  %77 = phi ptr [ %60, %57 ], [ %60, %70 ], [ %61, %74 ], [ %60, %71 ]
  %78 = phi ptr [ %61, %57 ], [ %60, %70 ], [ %61, %74 ], [ %61, %71 ]
  %79 = phi float [ %63, %57 ], [ %63, %70 ], [ %58, %74 ], [ %63, %71 ]
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %5) #15
  %80 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #16
  %81 = fcmp une float %80, 0.000000e+00
  br i1 %81, label %82, label %133

82:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %83 = getelementptr inbounds [4 x float], ptr %1, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %83) #16
  call void @glBegin(i32 noundef 8) #15
  %84 = load <2 x float>, ptr %6, align 8, !tbaa !120
  %85 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %86 = load float, ptr %85, align 8, !tbaa !120
  %87 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %88 = fadd float %59, %79
  br label %91

89:                                               ; preds = %91
  %90 = fadd float %59, %76
  br label %110

91:                                               ; preds = %82, %91
  %92 = phi i64 [ 0, %82 ], [ %108, %91 ]
  %93 = getelementptr inbounds [16 x float], ptr @si, i64 0, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !120
  %95 = fneg float %94
  %96 = getelementptr inbounds [16 x float], ptr @co, i64 0, i64 %92
  %97 = load float, ptr %96, align 4, !tbaa !120
  %98 = load <2 x float>, ptr %5, align 8, !tbaa !120
  %99 = insertelement <2 x float> poison, float %97, i64 0
  %100 = shufflevector <2 x float> %99, <2 x float> poison, <2 x i32> zeroinitializer
  %101 = fmul <2 x float> %100, %84
  %102 = insertelement <2 x float> poison, float %95, i64 0
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <2 x i32> zeroinitializer
  %104 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %103, <2 x float> %98, <2 x float> %101)
  store <2 x float> %104, ptr %9, align 8, !tbaa !120
  %105 = load float, ptr %64, align 8, !tbaa !120
  %106 = fmul float %97, %86
  %107 = call float @llvm.fmuladd.f32(float %95, float %105, float %106)
  store float %107, ptr %87, align 8, !tbaa !120
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef %77, ptr noundef nonnull %9, float noundef %79) #16
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef %77, ptr noundef nonnull %9, float noundef %88) #16
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #15
  call void @glVertex3fv(ptr noundef nonnull %7) #15
  call void @glVertex3fv(ptr noundef nonnull %8) #15
  %108 = add nuw nsw i64 %92, 1
  %109 = icmp eq i64 %108, 16
  br i1 %109, label %89, label %91, !llvm.loop !151

110:                                              ; preds = %89, %110
  %111 = phi i64 [ 15, %89 ], [ %126, %110 ]
  %112 = getelementptr inbounds [16 x float], ptr @si, i64 0, i64 %111
  %113 = load float, ptr %112, align 4, !tbaa !120
  %114 = getelementptr inbounds [16 x float], ptr @co, i64 0, i64 %111
  %115 = load float, ptr %114, align 4, !tbaa !120
  %116 = load <2 x float>, ptr %5, align 8, !tbaa !120
  %117 = insertelement <2 x float> poison, float %115, i64 0
  %118 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> zeroinitializer
  %119 = fmul <2 x float> %118, %84
  %120 = insertelement <2 x float> poison, float %113, i64 0
  %121 = shufflevector <2 x float> %120, <2 x float> poison, <2 x i32> zeroinitializer
  %122 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %121, <2 x float> %116, <2 x float> %119)
  store <2 x float> %122, ptr %9, align 8, !tbaa !120
  %123 = load float, ptr %64, align 8, !tbaa !120
  %124 = fmul float %115, %86
  %125 = call float @llvm.fmuladd.f32(float %113, float %123, float %124)
  store float %125, ptr %87, align 8, !tbaa !120
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef %78, ptr noundef nonnull %9, float noundef %76) #16
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef %78, ptr noundef nonnull %9, float noundef %90) #16
  call void @glVertex3fv(ptr noundef nonnull %7) #15
  call void @glVertex3fv(ptr noundef nonnull %8) #15
  %126 = add nsw i64 %111, -1
  %127 = icmp eq i64 %111, 0
  br i1 %127, label %128, label %110, !llvm.loop !152

128:                                              ; preds = %110
  %129 = load <2 x float>, ptr %5, align 8, !tbaa !120
  %130 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %129, <2 x float> <float -0.000000e+00, float -0.000000e+00>, <2 x float> %84)
  store <2 x float> %130, ptr %9, align 8, !tbaa !120
  %131 = load float, ptr %64, align 8, !tbaa !120
  %132 = call float @llvm.fmuladd.f32(float %131, float -0.000000e+00, float %86)
  store float %132, ptr %87, align 8, !tbaa !120
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef %77, ptr noundef nonnull %9, float noundef %79) #16
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef %77, ptr noundef nonnull %9, float noundef %88) #16
  call void @glVertex3fv(ptr noundef nonnull %7) #15
  call void @glVertex3fv(ptr noundef nonnull %8) #15
  call void @glEnd() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  br label %133

133:                                              ; preds = %128, %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_matrix_editbone(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %5 = tail call fastcc float @len_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 14
  store float %5, ptr %6, align 8, !tbaa !98
  tail call void @ED_armature_ebone_to_mat4(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sphere_bone(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) unnamed_addr #0 !PGOFuncName !154 {
  tail call void @glPushMatrix() #15
  %6 = tail call ptr @gluNewQuadric() #15
  %7 = icmp eq ptr %4, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 14
  %10 = load float, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 19
  %12 = load float, ptr %11, align 4, !tbaa !147
  %13 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  %16 = and i32 %1, 16
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 19
  br label %42

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 18
  br label %42

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !123
  %26 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 18
  %27 = load float, ptr %26, align 4, !tbaa !138
  %28 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 23
  %29 = load float, ptr %28, align 8, !tbaa !149
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  %32 = icmp eq ptr %31, null
  %33 = and i32 %1, 16
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %34, %32
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %31, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !123
  %39 = getelementptr inbounds %struct.Bone, ptr %38, i64 0, i32 23
  br label %42

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 22
  br label %42

42:                                               ; preds = %36, %40, %19, %21
  %43 = phi float [ %10, %19 ], [ %10, %21 ], [ %27, %36 ], [ %27, %40 ]
  %44 = phi float [ %12, %19 ], [ %12, %21 ], [ %29, %36 ], [ %29, %40 ]
  %45 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %39, %36 ], [ %41, %40 ]
  %46 = load float, ptr %45, align 4, !tbaa !120
  tail call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glEnable(i32 noundef 2903) #15
  tail call void @glEnable(i32 noundef 2896) #15
  tail call void @gluQuadricDrawStyle(ptr noundef %6, i32 noundef 100012) #15
  tail call void @glShadeModel(i32 noundef 7425) #15
  %47 = and i32 %0, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = and i32 %1, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @UI_ThemeColor(i32 noundef 34) #15
  br label %60

53:                                               ; preds = %49
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #15
  br label %60

54:                                               ; preds = %42
  %55 = and i32 %0, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 4, i32 noundef %1, i16 noundef signext 0) #16, !range !155
  br label %60

59:                                               ; preds = %54
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #15
  br label %60

60:                                               ; preds = %57, %59, %52, %53
  %61 = and i32 %1, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = icmp eq i32 %2, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = or i32 %2, 268435456
  %67 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %66) #15
  br label %68

68:                                               ; preds = %65, %63
  %69 = fpext float %46 to double
  tail call void @gluSphere(ptr noundef %6, double noundef %69, i32 noundef 16, i32 noundef 10) #15
  br label %70

70:                                               ; preds = %68, %60
  br i1 %48, label %76, label %71

71:                                               ; preds = %70
  %72 = and i32 %1, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @UI_ThemeColor(i32 noundef 34) #15
  br label %76

75:                                               ; preds = %71
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #15
  br label %76

76:                                               ; preds = %74, %75, %70
  %77 = icmp eq i32 %2, -1
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = or i32 %2, 536870912
  %80 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %79) #15
  br label %81

81:                                               ; preds = %78, %76
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %43) #15
  %82 = fpext float %44 to double
  tail call void @gluSphere(ptr noundef %6, double noundef %82, i32 noundef 16, i32 noundef 10) #15
  %83 = fneg float %43
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %83) #15
  br i1 %48, label %89, label %84

84:                                               ; preds = %81
  %85 = and i32 %1, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 28) #15
  br label %95

88:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %95

89:                                               ; preds = %81
  %90 = and i32 %0, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 3, i32 noundef %1, i16 noundef signext 0) #16, !range !155
  br label %95

94:                                               ; preds = %89
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %95

95:                                               ; preds = %92, %94, %87, %88
  %96 = fsub float %43, %46
  %97 = fdiv float %96, %43
  %98 = fsub float %43, %44
  %99 = fdiv float %98, %43
  %100 = fadd float %44, %46
  %101 = fcmp ogt float %43, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  br i1 %77, label %106, label %103

103:                                              ; preds = %102
  %104 = or i32 %2, 1073741824
  %105 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %104) #15
  br label %106

106:                                              ; preds = %103, %102
  tail call void @glEnable(i32 noundef 32823) #15
  tail call void @glPolygonOffset(float noundef -1.000000e+00, float noundef -1.000000e+00) #15
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46) #15
  %107 = fsub float 1.000000e+00, %97
  %108 = fmul float %44, %107
  %109 = tail call float @llvm.fmuladd.f32(float %97, float %46, float %108)
  %110 = fpext float %109 to double
  %111 = fsub float 1.000000e+00, %99
  %112 = fmul float %46, %111
  %113 = tail call float @llvm.fmuladd.f32(float %99, float %44, float %112)
  %114 = fpext float %113 to double
  %115 = fsub float %96, %44
  %116 = fpext float %115 to double
  tail call void @gluCylinder(ptr noundef %6, double noundef %110, double noundef %114, double noundef %116, i32 noundef 16, i32 noundef 1) #15
  %117 = fneg float %46
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %117) #15
  tail call void @glDisable(i32 noundef 32823) #15
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %98) #15
  tail call void @gluSphere(ptr noundef %6, double noundef %114, i32 noundef 16, i32 noundef 10) #15
  %118 = fsub float %44, %43
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %118) #15
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46) #15
  br label %127

119:                                              ; preds = %95
  %120 = fadd float %43, %46
  %121 = fsub float %120, %44
  %122 = fmul float %121, 5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %122) #15
  %123 = fsub float 1.000000e+00, %97
  %124 = fmul float %44, %123
  %125 = tail call float @llvm.fmuladd.f32(float %97, float %46, float %124)
  %126 = fpext float %125 to double
  br label %127

127:                                              ; preds = %106, %119
  %128 = phi double [ %110, %106 ], [ %126, %119 ]
  tail call void @gluSphere(ptr noundef %6, double noundef %128, i32 noundef 16, i32 noundef 10) #15
  tail call void @glShadeModel(i32 noundef 7424) #15
  tail call void @glDisable(i32 noundef 2896) #15
  tail call void @glDisable(i32 noundef 2903) #15
  tail call void @glPopMatrix() #15
  tail call void @gluDeleteQuadric(ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_b_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !156 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 17
  %13 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 18
  %14 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 19
  br label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 13
  %17 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 14
  %18 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 15
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %12, %9 ], [ %16, %15 ]
  %21 = phi ptr [ %13, %9 ], [ %17, %15 ]
  %22 = phi ptr [ %14, %9 ], [ %18, %15 ]
  %23 = load float, ptr %22, align 4, !tbaa !120
  %24 = load float, ptr %21, align 4, !tbaa !120
  %25 = load float, ptr %20, align 4, !tbaa !120
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = and i32 %1, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %35

31:                                               ; preds = %19
  tail call void @glPushMatrix() #15
  tail call void @glScalef(float noundef %24, float noundef %24, float noundef %24) #15
  tail call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4) #16
  tail call void @glPopMatrix() #15
  %32 = fmul float %24, 0x3FEE666660000000
  %33 = and i32 %1, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31, %28
  %36 = phi float [ %32, %31 ], [ %24, %28 ]
  %37 = icmp ult i16 %0, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %46

40:                                               ; preds = %35
  %41 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 1, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %46

42:                                               ; preds = %31
  %43 = icmp eq i16 %0, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  tail call fastcc void @set_ebone_glColor(i32 noundef %2) #16
  br label %46

45:                                               ; preds = %42
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %46

46:                                               ; preds = %28, %45, %44, %38, %40
  %47 = phi i1 [ false, %45 ], [ false, %44 ], [ true, %38 ], [ true, %40 ], [ false, %28 ]
  %48 = phi float [ %32, %45 ], [ %32, %44 ], [ %36, %38 ], [ %36, %40 ], [ %24, %28 ]
  %49 = icmp eq i32 %4, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = or i32 %4, 1073741824
  %52 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %51) #15
  br label %53

53:                                               ; preds = %50, %46
  %54 = icmp ugt i16 %0, 2
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  tail call void @glEnable(i32 noundef 2903) #15
  tail call void @glEnable(i32 noundef 2896) #15
  br i1 %47, label %56, label %58

56:                                               ; preds = %55
  %57 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 1, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %59

58:                                               ; preds = %55
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %59

59:                                               ; preds = %58, %56
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 3, ptr noundef %5, float noundef %25, float noundef %48, float noundef %23) #16
  tail call void @glDisable(i32 noundef 2903) #15
  tail call void @glDisable(i32 noundef 2896) #15
  br label %70

60:                                               ; preds = %53
  %61 = icmp ne i16 %3, 0
  %62 = and i1 %61, %47
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 2, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @glEnable(i32 noundef 3042) #15
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 3, ptr noundef %5, float noundef %25, float noundef %48, float noundef %23) #16
  tail call void @glDisable(i32 noundef 3042) #15
  br label %67

67:                                               ; preds = %66, %63
  %68 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %69

69:                                               ; preds = %67, %60
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 2, ptr noundef %5, float noundef %25, float noundef %48, float noundef %23) #16
  br label %70

70:                                               ; preds = %69, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_wire_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !157 {
  %8 = alloca [32 x %struct.Mat4], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #14
  %9 = icmp eq ptr %5, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 26
  %14 = load i16, ptr %13, align 4, !tbaa !158
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 18
  %17 = load float, ptr %16, align 4, !tbaa !138
  %18 = icmp sgt i16 %14, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  call void @b_bone_spline_setup(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %8) #15
  br label %23

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !98
  br label %23

23:                                               ; preds = %10, %19, %20
  %24 = phi ptr [ %8, %19 ], [ null, %10 ], [ null, %20 ]
  %25 = phi i32 [ %15, %19 ], [ %15, %10 ], [ 0, %20 ]
  %26 = phi float [ %17, %19 ], [ %17, %10 ], [ %22, %20 ]
  %27 = and i32 %1, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  call void @glPushMatrix() #15
  call void @glScalef(float noundef %26, float noundef %26, float noundef %26) #15
  call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4) #16
  call void @glPopMatrix() #15
  %30 = fmul float %26, 0x3FEE666660000000
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi float [ %30, %29 ], [ %26, %23 ]
  %33 = and i32 %1, 48
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %4, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = or i32 %4, 1073741824
  %39 = call zeroext i8 @GPU_select_load_id(i32 noundef %38) #15
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25) #16
  %40 = and i32 %4, 65535
  %41 = call zeroext i8 @GPU_select_load_id(i32 noundef %40) #15
  br label %43

42:                                               ; preds = %35
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25) #16
  br label %43

43:                                               ; preds = %42, %37, %31
  %44 = and i32 %1, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %50

48:                                               ; preds = %43
  br i1 %28, label %50, label %49

49:                                               ; preds = %48
  call fastcc void @set_ebone_glColor(i32 noundef %2) #16
  br label %50

50:                                               ; preds = %48, %49, %46
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !159 {
  tail call void @glScalef(float noundef %5, float noundef %5, float noundef %5) #15
  %7 = icmp ugt i16 %0, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @glEnable(i32 noundef 2903) #15
  tail call void @glEnable(i32 noundef 2896) #15
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %9

9:                                                ; preds = %8, %6
  %10 = and i32 %1, 16
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = icmp ugt i16 %0, 2
  %14 = zext i1 %13 to i16
  %15 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext %14, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %16

16:                                               ; preds = %12, %9
  tail call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4) #16
  %17 = icmp eq i32 %4, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = or i32 %4, 1073741824
  %20 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %19) #15
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp ult i16 %0, 3
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = and i32 %1, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call fastcc void @set_ebone_glColor(i32 noundef %2) #16
  br label %40

27:                                               ; preds = %23
  %28 = icmp ne i16 %3, 0
  %29 = and i1 %11, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 2, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @glEnable(i32 noundef 3042) #15
  tail call fastcc void @draw_bone_solid_octahedral() #16
  tail call void @glDisable(i32 noundef 3042) #15
  br label %34

34:                                               ; preds = %33, %30
  %35 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %40

36:                                               ; preds = %21
  br i1 %11, label %37, label %39

37:                                               ; preds = %36
  %38 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 1, i32 noundef %2, i16 noundef signext %3) #16, !range !155
  br label %41

39:                                               ; preds = %36
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %41

40:                                               ; preds = %26, %34, %27
  tail call fastcc void @draw_bone_octahedral() #16
  br label %42

41:                                               ; preds = %37, %39
  tail call fastcc void @draw_bone_solid_octahedral() #16
  tail call void @glDisable(i32 noundef 2903) #15
  tail call void @glDisable(i32 noundef 2896) #15
  br label %42

42:                                               ; preds = %40, %41
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3d_polygon_offset(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sphere_bone_wire(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !160 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %13 = icmp eq ptr %7, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7
  %16 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8
  %17 = tail call fastcc float @len_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %18 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 14
  store float %17, ptr %18, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 19
  %20 = load float, ptr %19, align 4, !tbaa !147
  %21 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  %24 = and i32 %3, 16
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %25, %23
  %27 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 19
  %28 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 18
  %29 = select i1 %26, ptr %28, ptr %27
  br label %51

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 23
  %34 = load float, ptr %33, align 8, !tbaa !149
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !142
  %37 = icmp eq ptr %36, null
  %38 = and i32 %3, 16
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %39, %37
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.Bone, ptr %43, i64 0, i32 23
  br label %47

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 22
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %44, %41 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 31
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 32
  br label %51

51:                                               ; preds = %47, %14
  %52 = phi ptr [ %29, %14 ], [ %48, %47 ]
  %53 = phi float [ %20, %14 ], [ %34, %47 ]
  %54 = phi ptr [ %15, %14 ], [ %49, %47 ]
  %55 = phi ptr [ %16, %14 ], [ %50, %47 ]
  %56 = load float, ptr %52, align 4, !tbaa !120
  %57 = and i32 %2, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = and i32 %3, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @UI_ThemeColor(i32 noundef 34) #15
  br label %69

63:                                               ; preds = %59
  tail call void @UI_ThemeColor(i32 noundef 33) #15
  br label %69

64:                                               ; preds = %51
  %65 = and i32 %2, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %3, i16 noundef signext %4) #16, !range !155
  br label %69

69:                                               ; preds = %64, %67, %62, %63
  %70 = and i32 %3, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = icmp eq i32 %5, -1
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = or i32 %5, 268435456
  %76 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %75) #15
  br label %77

77:                                               ; preds = %74, %72
  tail call void @drawcircball(i32 noundef 2, ptr noundef nonnull %54, float noundef %56, ptr noundef %1) #15
  br label %78

78:                                               ; preds = %77, %69
  br i1 %58, label %83, label %79

79:                                               ; preds = %78
  %80 = and i32 %3, 4
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %82) #15
  br label %83

83:                                               ; preds = %79, %78
  %84 = icmp eq i32 %5, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %83
  %86 = or i32 %5, 536870912
  %87 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %86) #15
  br label %88

88:                                               ; preds = %85, %83
  tail call void @drawcircball(i32 noundef 2, ptr noundef nonnull %55, float noundef %53, ptr noundef %1) #15
  br i1 %58, label %93, label %89

89:                                               ; preds = %88
  %90 = and i32 %3, 1
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 27, i32 28
  tail call void @UI_ThemeColor(i32 noundef %92) #15
  br label %93

93:                                               ; preds = %89, %88
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %55, ptr noundef nonnull %54) #16
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %9) #15
  %94 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %94, align 4, !tbaa !120
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %9) #15
  %95 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #16
  %96 = fcmp une float %95, 0.000000e+00
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %56) #16
  %98 = getelementptr inbounds [4 x float], ptr %1, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %98) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %53) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %98) #16
  br i1 %84, label %102, label %99

99:                                               ; preds = %97
  %100 = or i32 %5, 1073741824
  %101 = call zeroext i8 @GPU_select_load_id(i32 noundef %100) #15
  br label %102

102:                                              ; preds = %99, %97
  call void @glBegin(i32 noundef 1) #15
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %54, ptr noundef nonnull %10) #16
  call void @glVertex3fv(ptr noundef nonnull %12) #15
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %55, ptr noundef nonnull %11) #16
  call void @glVertex3fv(ptr noundef nonnull %12) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %54, ptr noundef nonnull %10) #16
  call void @glVertex3fv(ptr noundef nonnull %12) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %55, ptr noundef nonnull %11) #16
  call void @glVertex3fv(ptr noundef nonnull %12) #15
  call void @glEnd() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %103

103:                                              ; preds = %102, %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_line_bone(i32 noundef %0, i32 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !161 {
  tail call void @glPixelStorei(i32 noundef 3317, i32 noundef 1) #15
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 18
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  %16 = load float, ptr %15, align 4, !tbaa !120
  tail call void @glPushMatrix() #15
  tail call void @glScalef(float noundef %16, float noundef %16, float noundef %16) #15
  %17 = and i32 %0, 48
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = and i32 %1, 16
  br label %61

21:                                               ; preds = %14
  tail call void @glLineWidth(float noundef 4.000000e+00) #15
  %22 = and i32 %0, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %1, i16 noundef signext %2) #16, !range !155
  br label %30

26:                                               ; preds = %21
  %27 = and i32 %0, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @UI_ThemeColor(i32 noundef 27) #15
  br label %30

30:                                               ; preds = %26, %29, %24
  %31 = and i32 %1, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = or i32 %3, 268435456
  %39 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %38) #15
  tail call void @glBegin(i32 noundef 0) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  br label %41

40:                                               ; preds = %33
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot8) #15
  br label %41

41:                                               ; preds = %37, %40, %30
  %42 = icmp eq i32 %3, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = or i32 %3, 1073741824
  %45 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %44) #15
  br label %46

46:                                               ; preds = %43, %41
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = or i32 %3, 536870912
  %52 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %51) #15
  tail call void @glBegin(i32 noundef 0) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  br label %54

53:                                               ; preds = %46
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot7) #15
  br label %54

54:                                               ; preds = %53, %50
  br i1 %42, label %58, label %55

55:                                               ; preds = %54
  %56 = and i32 %3, 65535
  %57 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %56) #15
  br label %58

58:                                               ; preds = %55, %54
  br i1 %23, label %61, label %59

59:                                               ; preds = %58
  %60 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 5, i32 noundef %1, i16 noundef signext %2) #16, !range !155
  br label %61

61:                                               ; preds = %19, %58, %59
  %62 = phi i32 [ %20, %19 ], [ %31, %58 ], [ %31, %59 ]
  tail call void @glLineWidth(float noundef 2.000000e+00) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = and i32 %0, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = and i32 %1, 2
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %74) #15
  br label %75

75:                                               ; preds = %71, %68
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot6) #15
  br label %76

76:                                               ; preds = %64, %75, %61
  %77 = and i32 %0, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = and i32 %1, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void @UI_ThemeColor(i32 noundef 39) #15
  br label %84

83:                                               ; preds = %79
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #15
  br label %84

84:                                               ; preds = %82, %83, %76
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  %85 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !60
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  br i1 %78, label %93, label %89

89:                                               ; preds = %88
  %90 = and i32 %1, 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %92) #15
  br label %93

93:                                               ; preds = %89, %88
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot5) #15
  br label %94

94:                                               ; preds = %93, %84
  tail call void @glLineWidth(float noundef 1.000000e+00) #15
  tail call void @glPopMatrix() #15
  ret void
}

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRasterPos3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @view3d_cached_text_draw_add(ptr noundef, ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bone_matrix_translate_y(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !162 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %1) #16
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @drawaxes(float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !163 {
  %3 = load float, ptr %0, align 4, !tbaa !120
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !120
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !120
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !164 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !165 {
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = load float, ptr %2, align 4, !tbaa !120
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !120
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !120
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !120
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !120
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !166 {
  %2 = load float, ptr %0, align 4, !tbaa !120
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !120
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !167 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !120
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !168 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !169 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !120
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !120
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !120
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !120
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !120
  %15 = load float, ptr %8, align 4, !tbaa !120
  %16 = load float, ptr %2, align 4, !tbaa !120
  %17 = load float, ptr %1, align 4, !tbaa !120
  %18 = load float, ptr %6, align 4, !tbaa !120
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !120
  %23 = load float, ptr %1, align 4, !tbaa !120
  %24 = load float, ptr %10, align 4, !tbaa !120
  %25 = load float, ptr %4, align 4, !tbaa !120
  %26 = load float, ptr %2, align 4, !tbaa !120
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !170 {
  %5 = load float, ptr %1, align 4, !tbaa !120
  %6 = load float, ptr %2, align 4, !tbaa !120
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !120
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !120
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !120
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !120
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !120
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !120
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !171 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !172 {
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !120
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !120
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !120
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !120
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_pchan_glColor(i16 noundef signext %0, i32 noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !173 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  switch i16 %0, label %147 [
    i16 0, label %7
    i16 1, label %38
    i16 2, label %43
    i16 3, label %68
    i16 4, label %89
    i16 5, label %111
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #14
  %11 = and i32 %1, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 2
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %4, ptr noundef nonnull %14) #16
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  call fastcc void @cp_shade_color3ub(ptr noundef nonnull %4, i32 noundef -80) #16
  br label %24

18:                                               ; preds = %10
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 1
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %4, ptr noundef nonnull %22) #16
  br label %24

23:                                               ; preds = %18
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %4, ptr noundef nonnull %8) #16
  call fastcc void @cp_shade_color3ub(ptr noundef nonnull %4, i32 noundef -50) #16
  br label %24

24:                                               ; preds = %21, %23, %13, %17
  call void @glColor3ubv(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #14
  br label %148

25:                                               ; preds = %7
  %26 = and i32 %1, 1
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, 257
  %29 = icmp eq i32 %28, 257
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @UI_ThemeColor(i32 noundef 76) #15
  br label %148

31:                                               ; preds = %25
  %32 = and i32 %1, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @UI_ThemeColorBlend(i32 noundef 25, i32 noundef 75, float noundef 0x3FC3333340000000) #15
  br label %148

35:                                               ; preds = %31
  br i1 %27, label %37, label %36

36:                                               ; preds = %35
  tail call void @UI_ThemeColor(i32 noundef 75) #15
  br label %148

37:                                               ; preds = %35
  tail call void @UI_ThemeColor(i32 noundef 25) #15
  br label %148

38:                                               ; preds = %3
  %39 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @glColor3ubv(ptr noundef nonnull %39) #15
  br label %148

42:                                               ; preds = %38
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %148

43:                                               ; preds = %3
  %44 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ThemeWireColor, ptr %44, i64 0, i32 3
  %48 = load i16, ptr %47, align 2, !tbaa !174
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %148, label %51

51:                                               ; preds = %46, %43
  %52 = zext nneg i16 %2 to i32
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -106, i8 noundef zeroext 0, i8 noundef zeroext 80) #15
  br label %148

56:                                               ; preds = %51
  %57 = and i32 %52, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 80) #15
  br label %148

60:                                               ; preds = %56
  %61 = and i32 %52, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @glColor4ub(i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 80) #15
  br label %148

64:                                               ; preds = %60
  %65 = and i32 %52, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %148, label %67

67:                                               ; preds = %64
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 120, i8 noundef zeroext 80) #15
  br label %148

68:                                               ; preds = %3
  %69 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #14
  %72 = and i32 %1, 256
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.ThemeWireColor, ptr %69, i64 0, i32 2
  %75 = and i32 %1, 1
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct.ThemeWireColor, ptr %69, i64 0, i32 1
  %78 = select i1 %76, ptr %69, ptr %77
  %79 = select i1 %73, ptr %78, ptr %74
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %5, ptr noundef nonnull %79) #16
  call void @glColor3ubv(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #14
  br label %148

80:                                               ; preds = %68
  %81 = and i32 %1, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef 40) #15
  br label %148

84:                                               ; preds = %80
  %85 = and i32 %1, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 75) #15
  br label %148

88:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %148

89:                                               ; preds = %3
  %90 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #14
  %93 = and i32 %1, 256
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.ThemeWireColor, ptr %90, i64 0, i32 2
  %96 = and i32 %1, 1
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.ThemeWireColor, ptr %90, i64 0, i32 1
  %99 = select i1 %97, ptr %90, ptr %98
  %100 = select i1 %94, ptr %99, ptr %95
  %101 = select i1 %94, i32 -30, i32 10
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %6, ptr noundef nonnull %100) #16
  call fastcc void @cp_shade_color3ub(ptr noundef nonnull %6, i32 noundef %101) #16
  call void @glColor3ubv(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #14
  br label %148

102:                                              ; preds = %89
  %103 = and i32 %1, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef 10) #15
  br label %148

106:                                              ; preds = %102
  %107 = and i32 %1, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef -30) #15
  br label %148

110:                                              ; preds = %106
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #15
  br label %148

111:                                              ; preds = %3
  %112 = zext nneg i16 %2 to i32
  %113 = icmp eq i16 %2, 0
  %114 = load ptr, ptr @bcolor, align 8, !tbaa !89
  %115 = icmp eq ptr %114, null
  br i1 %113, label %139, label %116

116:                                              ; preds = %111
  br i1 %115, label %122, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 3
  %119 = load i16, ptr %118, align 2, !tbaa !174
  %120 = and i16 %119, 1
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %117, %116
  %123 = and i32 %112, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -106, i8 noundef zeroext 0) #15
  br label %148

126:                                              ; preds = %122
  %127 = and i32 %112, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0) #15
  br label %148

130:                                              ; preds = %126
  %131 = and i32 %112, 32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  tail call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 0) #15
  br label %148

134:                                              ; preds = %130
  %135 = and i32 %112, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 120) #15
  br label %148

138:                                              ; preds = %134
  tail call void @UI_ThemeColor(i32 noundef 75) #15
  br label %148

139:                                              ; preds = %111
  br i1 %115, label %146, label %140

140:                                              ; preds = %117, %139
  %141 = load i8, ptr %114, align 1, !tbaa !101
  %142 = getelementptr inbounds i8, ptr %114, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !101
  %144 = getelementptr inbounds i8, ptr %114, i64 2
  %145 = load i8, ptr %144, align 1, !tbaa !101
  tail call void @glColor4ub(i8 noundef zeroext %141, i8 noundef zeroext %143, i8 noundef zeroext %145, i8 noundef zeroext -52) #15
  br label %148

146:                                              ; preds = %139
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #15
  br label %148

147:                                              ; preds = %3
  unreachable

148:                                              ; preds = %105, %110, %109, %92, %129, %137, %138, %133, %125, %146, %140, %71, %87, %88, %83, %46, %55, %63, %67, %64, %59, %41, %42, %24, %34, %37, %36, %30
  %149 = phi i8 [ 1, %30 ], [ 1, %36 ], [ 1, %37 ], [ 1, %34 ], [ 1, %24 ], [ 1, %42 ], [ 1, %41 ], [ 1, %59 ], [ 1, %64 ], [ 1, %67 ], [ 1, %63 ], [ 1, %55 ], [ 0, %46 ], [ 1, %83 ], [ 1, %88 ], [ 1, %87 ], [ 1, %71 ], [ 1, %140 ], [ 1, %146 ], [ 1, %125 ], [ 1, %133 ], [ 1, %138 ], [ 1, %137 ], [ 1, %129 ], [ 0, %92 ], [ 0, %109 ], [ 0, %110 ], [ 0, %105 ]
  ret i8 %149
}

; Function Attrs: optsize
declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPolygonOffset(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !176 {
  %3 = load i8, ptr %1, align 1, !tbaa !101
  store i8 %3, ptr %0, align 1, !tbaa !101
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !101
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !101
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !101
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cp_shade_color3ub(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !177 {
  %3 = load i8, ptr %0, align 1, !tbaa !101
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, %1
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 255)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !101
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, %1
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 255)
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, %1
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 255)
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = trunc i32 %21 to i8
  store i8 %8, ptr %0, align 1, !tbaa !101
  store i8 %15, ptr %9, align 1, !tbaa !101
  store i8 %22, ptr %16, align 1, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !178 {
  %5 = and i32 %2, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or i32 %3, 268435456
  %11 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %10) #15
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp slt i16 %0, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = and i32 %1, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %20) #15
  br label %28

21:                                               ; preds = %12
  %22 = and i32 %1, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 1, i32 noundef %2, i16 noundef signext 0) #16, !range !155
  br label %27

26:                                               ; preds = %21
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %27

27:                                               ; preds = %26, %24
  tail call fastcc void @draw_bonevert_solid() #16
  br label %29

28:                                               ; preds = %17, %14
  tail call fastcc void @draw_bonevert() #16
  br label %29

29:                                               ; preds = %27, %28, %4
  %30 = icmp eq i32 %3, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = or i32 %3, 536870912
  %33 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %32) #15
  br label %34

34:                                               ; preds = %31, %29
  %35 = icmp slt i16 %0, 3
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = and i32 %1, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = and i32 %2, 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %42) #15
  br label %50

43:                                               ; preds = %34
  %44 = and i32 %1, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 1, i32 noundef %2, i16 noundef signext 0) #16, !range !155
  br label %49

48:                                               ; preds = %43
  tail call void @UI_ThemeColor(i32 noundef 74) #15
  br label %49

49:                                               ; preds = %48, %46
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call fastcc void @draw_bonevert_solid() #16
  br label %51

50:                                               ; preds = %39, %36
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call fastcc void @draw_bonevert() #16
  br label %51

51:                                               ; preds = %50, %49
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_ebone_glColor(i32 noundef %0) unnamed_addr #0 !PGOFuncName !179 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, 257
  %5 = icmp eq i32 %4, 257
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @UI_ThemeColor(i32 noundef 39) #15
  br label %14

7:                                                ; preds = %1
  %8 = and i32 %0, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 39, float noundef 0x3FC3333340000000) #15
  br label %14

11:                                               ; preds = %7
  br i1 %3, label %13, label %12

12:                                               ; preds = %11
  tail call void @UI_ThemeColorShade(i32 noundef 39, i32 noundef -20) #15
  br label %14

13:                                               ; preds = %11
  tail call void @UI_ThemeColor(i32 noundef 27) #15
  br label %14

14:                                               ; preds = %10, %13, %12, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_b_bone_boxes(i16 noundef signext %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !180 {
  %6 = alloca [32 x %struct.Mat4], align 16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 26
  %12 = load i16, ptr %11, align 4, !tbaa !158
  %13 = icmp sgt i16 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = zext nneg i16 %12 to i64
  %16 = sitofp i16 %12 to float
  %17 = fdiv float %3, %16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #14
  call void @b_bone_spline_setup(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %6) #15
  %18 = icmp eq i16 %0, 3
  br label %19

19:                                               ; preds = %14, %24
  %20 = phi i64 [ 0, %14 ], [ %25, %24 ]
  call void @glPushMatrix() #15
  %21 = getelementptr inbounds [32 x %struct.Mat4], ptr %6, i64 0, i64 %20
  call void @glMultMatrixf(ptr noundef nonnull %21) #15
  br i1 %18, label %22, label %23

22:                                               ; preds = %19
  call fastcc void @drawsolidcube_size(float noundef %2, float noundef %17, float noundef %4) #16
  br label %24

23:                                               ; preds = %19
  call fastcc void @drawcube_size(float noundef %2, float noundef %17, float noundef %4) #16
  br label %24

24:                                               ; preds = %23, %22
  call void @glPopMatrix() #15
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %27, label %19, !llvm.loop !181

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #14
  br label %33

28:                                               ; preds = %5, %8
  tail call void @glPushMatrix() #15
  %29 = icmp eq i16 %0, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call fastcc void @drawsolidcube_size(float noundef %2, float noundef %3, float noundef %4) #16
  br label %32

31:                                               ; preds = %28
  tail call fastcc void @drawcube_size(float noundef %2, float noundef %3, float noundef %4) #16
  br label %32

32:                                               ; preds = %31, %30
  tail call void @glPopMatrix() #15
  br label %33

33:                                               ; preds = %32, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bonevert_solid() unnamed_addr #0 !PGOFuncName !182 {
  %1 = load i32, ptr @draw_bonevert_solid.displist, align 4, !tbaa !104
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %4, ptr @draw_bonevert_solid.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #15
  %5 = tail call ptr @gluNewQuadric() #15
  tail call void @gluQuadricDrawStyle(ptr noundef %5, i32 noundef 100012) #15
  tail call void @glShadeModel(i32 noundef 7425) #15
  tail call void @gluSphere(ptr noundef %5, double noundef 5.000000e-02, i32 noundef 8, i32 noundef 5) #15
  tail call void @glShadeModel(i32 noundef 7424) #15
  tail call void @gluDeleteQuadric(ptr noundef %5) #15
  tail call void @glEndList() #15
  %6 = load i32, ptr @draw_bonevert_solid.displist, align 4, !tbaa !104
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ %1, %0 ]
  tail call void @glCallList(i32 noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bonevert() unnamed_addr #0 !PGOFuncName !183 {
  %1 = load i32, ptr @draw_bonevert.displist, align 4, !tbaa !104
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %4, ptr @draw_bonevert.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #15
  tail call void @glPushMatrix() #15
  %5 = tail call ptr @gluNewQuadric() #15
  tail call void @gluQuadricDrawStyle(ptr noundef %5, i32 noundef 100013) #15
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #15
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #15
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #15
  tail call void @gluDeleteQuadric(ptr noundef %5) #15
  tail call void @glPopMatrix() #15
  tail call void @glEndList() #15
  %6 = load i32, ptr @draw_bonevert.displist, align 4, !tbaa !104
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ %1, %0 ]
  tail call void @glCallList(i32 noundef %8) #15
  ret void
}

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @b_bone_spline_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawsolidcube_size(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !184 {
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  tail call void @glScalef(float noundef %0, float noundef %1, float noundef %2) #15
  %5 = load i32, ptr @drawsolidcube_size.displist, align 4, !tbaa !104
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %8, ptr @drawsolidcube_size.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %8, i32 noundef 4864) #15
  tail call void @glBegin(i32 noundef 7) #15
  store float -1.000000e+00, ptr %4, align 8, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull @cube) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #15
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %4, align 8, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull @cube) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #15
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %4, align 8, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #15
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #15
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 4, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #15
  store float -1.000000e+00, ptr %10, align 8, !tbaa !120
  call void @glNormal3fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #15
  call void @glVertex3fv(ptr noundef nonnull @cube) #15
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #15
  call void @glEnd() #15
  call void @glEndList() #15
  %11 = load i32, ptr @drawsolidcube_size.displist, align 4, !tbaa !104
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %5, %3 ]
  call void @glCallList(i32 noundef %13) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcube_size(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !185 {
  %4 = load i32, ptr @drawcube_size.displist, align 4, !tbaa !104
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %7, ptr @drawcube_size.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %7, i32 noundef 4864) #15
  tail call void @glBegin(i32 noundef 3) #15
  tail call void @glVertex3fv(ptr noundef nonnull @cube) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #15
  tail call void @glVertex3fv(ptr noundef nonnull @cube) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #15
  tail call void @glEnd() #15
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #15
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #15
  tail call void @glEnd() #15
  tail call void @glEndList() #15
  br label %8

8:                                                ; preds = %6, %3
  tail call void @glScalef(float noundef %0, float noundef %1, float noundef %2) #15
  %9 = load i32, ptr @drawcube_size.displist, align 4, !tbaa !104
  tail call void @glCallList(i32 noundef %9) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_wire_bone_segments(ptr noundef readnone %0, ptr noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !186 {
  %5 = icmp sgt i32 %3, 1
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = sitofp i32 %3 to float
  %10 = fdiv float %2, %9
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ 0, %8 ], [ %14, %11 ]
  %13 = phi ptr [ %1, %8 ], [ %15, %11 ]
  tail call void @glPushMatrix() #15
  tail call void @glMultMatrixf(ptr noundef %13) #15
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %10, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  tail call void @glPopMatrix() #15
  %14 = add nuw nsw i32 %12, 1
  %15 = getelementptr inbounds %struct.Mat4, ptr %13, i64 1
  %16 = icmp eq i32 %14, %3
  br i1 %16, label %18, label %11, !llvm.loop !187

17:                                               ; preds = %4
  tail call void @glPushMatrix() #15
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %2, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  tail call void @glPopMatrix() #15
  br label %18

18:                                               ; preds = %11, %17
  ret void
}

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bone_solid_octahedral() unnamed_addr #0 !PGOFuncName !188 {
  %1 = load i32, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !104
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %4, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #15
  tail call void @glBegin(i32 noundef 4) #15
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %20, %5 ]
  %7 = getelementptr inbounds [8 x [3 x float]], ptr @bone_octahedral_solid_normals, i64 0, i64 %6
  tail call void @glNormal3fv(ptr noundef nonnull %7) #15
  %8 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !104
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %10
  tail call void @glVertex3fv(ptr noundef nonnull %11) #15
  %12 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !104
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %14
  tail call void @glVertex3fv(ptr noundef nonnull %15) #15
  %16 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !104
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %18
  tail call void @glVertex3fv(ptr noundef nonnull %19) #15
  %20 = add nuw nsw i64 %6, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %5, !llvm.loop !189

22:                                               ; preds = %5
  tail call void @glEnd() #15
  tail call void @glEndList() #15
  %23 = load i32, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !104
  br label %24

24:                                               ; preds = %22, %0
  %25 = phi i32 [ %23, %22 ], [ %1, %0 ]
  tail call void @glCallList(i32 noundef %25) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bone_octahedral() unnamed_addr #0 !PGOFuncName !190 {
  %1 = load i32, ptr @draw_bone_octahedral.displist, align 4, !tbaa !104
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #15
  store i32 %4, ptr @draw_bone_octahedral.displist, align 4, !tbaa !104
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #15
  tail call void @glEnableClientState(i32 noundef 32884) #15
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull @bone_octahedral_verts) #15
  tail call void @glDrawElements(i32 noundef 2, i32 noundef 8, i32 noundef 5125, ptr noundef nonnull @bone_octahedral_wire_sides) #15
  tail call void @glDrawElements(i32 noundef 2, i32 noundef 8, i32 noundef 5125, ptr noundef nonnull @bone_octahedral_wire_square) #15
  tail call void @glDisableClientState(i32 noundef 32884) #15
  tail call void @glEndList() #15
  %5 = load i32, ptr @draw_bone_octahedral.displist, align 4, !tbaa !104
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ %1, %0 ]
  tail call void @glCallList(i32 noundef %7) #15
  ret void
}

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !191 {
  %3 = load float, ptr %1, align 4, !tbaa !120
  store float %3, ptr %0, align 4, !tbaa !120
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !120
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !192 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !120
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !193 {
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = load float, ptr %2, align 4, !tbaa !120
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !120
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !120
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !120
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !120
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRasterPos3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBitmap(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !194 {
  %3 = load float, ptr %1, align 4, !tbaa !120
  %4 = load float, ptr %0, align 4, !tbaa !120
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !120
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !120
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !120
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !120
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !120
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !120
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ghost_poses_tag_unselected(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #12 !PGOFuncName !195 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !55
  %7 = and i32 %6, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %16 = icmp eq i16 %1, 0
  br label %17

17:                                               ; preds = %14, %40
  %18 = phi ptr [ %12, %14 ], [ %41, %40 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %15, align 8, !tbaa !92
  %24 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !125
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !131
  br i1 %16, label %33, label %31

31:                                               ; preds = %28
  %32 = and i32 %30, -65537
  br label %38

33:                                               ; preds = %28
  %34 = and i32 %30, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = or i32 %30, 65536
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi i32 [ %37, %36 ], [ %32, %31 ]
  store i32 %39, ptr %29, align 8, !tbaa !131
  br label %40

40:                                               ; preds = %38, %17, %22, %33
  %41 = load ptr, ptr %18, align 8, !tbaa !89
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %17, !llvm.loop !196

43:                                               ; preds = %40, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_pose_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @draw_motion_paths_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_motion_path_instance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_motion_paths_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glCullFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_pchan_colorset(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !197 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %42, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !198
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 9
  %23 = sext i16 %19 to i32
  %24 = add nsw i32 %23, -1
  %25 = tail call ptr @BLI_findlink(ptr noundef nonnull %22, i32 noundef %24) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !199
  %30 = shl i32 %29, 16
  %31 = ashr exact i32 %30, 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = tail call ptr @UI_GetTheme() #15
  %35 = add nsw i32 %31, -1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.bTheme, ptr %34, i64 0, i32 21, i64 %36
  br label %42

38:                                               ; preds = %27
  %39 = icmp eq i32 %30, -65536
  %40 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 6
  %41 = select i1 %39, ptr %40, ptr null
  br label %42

42:                                               ; preds = %38, %12, %17, %21, %4, %2, %33
  %43 = phi ptr [ %37, %33 ], [ null, %2 ], [ null, %4 ], [ null, %21 ], [ null, %17 ], [ null, %12 ], [ %41, %38 ]
  store ptr %43, ptr @bcolor, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_custom_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8) unnamed_addr #0 !PGOFuncName !201 {
  %10 = icmp eq ptr %3, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  tail call void @glScalef(float noundef %8, float noundef %8, float noundef %8) #15
  %12 = and i32 %5, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %6, i16 noundef signext 0) #16, !range !155
  br label %16

16:                                               ; preds = %14, %11
  %17 = icmp eq i32 %7, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = or i32 %7, 1073741824
  %20 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %19) #15
  br label %21

21:                                               ; preds = %18, %16
  %22 = trunc i16 %4 to i8
  tail call void @draw_object_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext %22, i32 noundef %12) #15
  br label %23

23:                                               ; preds = %9, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pchan_draw_IK_root_lines(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !202 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %8 = icmp eq i16 %1, 0
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  br label %10

10:                                               ; preds = %6, %70
  %11 = phi ptr [ %4, %6 ], [ %71, %70 ]
  %12 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 9
  %13 = load float, ptr %12, align 8, !tbaa !203
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %70, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !205
  switch i16 %17, label %70 [
    i16 3, label %18
    i16 22, label %50
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  br i1 %8, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !207
  %24 = and i16 %23, 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %21, %18
  tail call void @setlinestyle(i32 noundef 3) #15
  tail call void @glBegin(i32 noundef 1) #15
  %27 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !207
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %9, align 8, !tbaa !142
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %32, %31 ], [ %0, %26 ]
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 32
  tail call void @glVertex3fv(ptr noundef nonnull %35) #15
  %36 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 3
  br label %37

37:                                               ; preds = %43, %33
  %38 = phi ptr [ %34, %33 ], [ %41, %43 ]
  %39 = phi i32 [ 0, %33 ], [ %44, %43 ]
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %37
  %44 = add nuw nsw i32 %39, 1
  %45 = load i16, ptr %36, align 4, !tbaa !209
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %44, %46
  %48 = icmp ugt i32 %39, 254
  %49 = or i1 %48, %47
  br i1 %49, label %67, label %37, !llvm.loop !210

50:                                               ; preds = %15
  %51 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !206
  tail call void @setlinestyle(i32 noundef 3) #15
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex3fv(ptr noundef nonnull %7) #15
  %53 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %52, i64 0, i32 3
  br label %54

54:                                               ; preds = %60, %50
  %55 = phi ptr [ %0, %50 ], [ %58, %60 ]
  %56 = phi i32 [ 0, %50 ], [ %61, %60 ]
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %55, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !142
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = add nuw nsw i32 %56, 1
  %62 = load i16, ptr %53, align 2, !tbaa !211
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %61, %63
  %65 = icmp ugt i32 %56, 254
  %66 = or i1 %65, %64
  br i1 %66, label %67, label %54, !llvm.loop !213

67:                                               ; preds = %60, %54, %37, %43
  %68 = phi ptr [ %38, %43 ], [ %38, %37 ], [ %55, %54 ], [ %55, %60 ]
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 31
  tail call void @glVertex3fv(ptr noundef nonnull %69) #15
  tail call void @glEnd() #15
  tail call void @setlinestyle(i32 noundef 0) #15
  br label %70

70:                                               ; preds = %67, %21, %15, %10
  %71 = load ptr, ptr %11, align 8, !tbaa !89
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %10, !llvm.loop !214

73:                                               ; preds = %70, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_pose_dofs(ptr noundef %0) unnamed_addr #0 !PGOFuncName !215 {
  %2 = alloca [4 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %172, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %20 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %21

21:                                               ; preds = %11, %169
  %22 = phi ptr [ %9, %11 ], [ %170, %169 ]
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, null
  br i1 %25, label %169, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !131
  %29 = and i32 %28, 65601
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %169

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 25
  %33 = load i32, ptr %32, align 8, !tbaa !125
  %34 = load i32, ptr %14, align 8, !tbaa !92
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %169, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 6
  %39 = load i16, ptr %38, align 2, !tbaa !216
  %40 = and i16 %39, 40
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %169, label %42

42:                                               ; preds = %37
  %43 = call zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef %0, ptr noundef nonnull %22) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %169, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @glPushMatrix() #15
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 29, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %46) #16
  %47 = load float, ptr %3, align 4, !tbaa !120
  %48 = load float, ptr %15, align 4, !tbaa !120
  %49 = load float, ptr %16, align 4, !tbaa !120
  call void @glTranslatef(float noundef %47, float noundef %48, float noundef %49) #15
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !142
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %54) #15
  store float 0.000000e+00, ptr %18, align 8, !tbaa !120
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !120
  call void @glMultMatrixf(ptr noundef nonnull %4) #15
  br label %55

55:                                               ; preds = %53, %45
  %56 = load ptr, ptr %23, align 8, !tbaa !123
  %57 = getelementptr inbounds %struct.Bone, ptr %56, i64 0, i32 9
  call void @copy_m4_m3(ptr noundef nonnull %4, ptr noundef nonnull %57) #15
  call void @glMultMatrixf(ptr noundef nonnull %4) #15
  %58 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 18
  %59 = load float, ptr %58, align 4, !tbaa !138
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 21, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !120
  %62 = fmul float %59, %61
  call void @glScalef(float noundef %62, float noundef %62, float noundef %62) #15
  %63 = load i16, ptr %38, align 2, !tbaa !216
  %64 = and i16 %63, 40
  %65 = icmp eq i16 %64, 40
  br i1 %65, label %66, label %103

66:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  br label %67

67:                                               ; preds = %66, %67
  %68 = phi i64 [ 0, %66 ], [ %79, %67 ]
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 33, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !120
  %71 = fmul float %70, 5.000000e-01
  %72 = call float @sinf(float noundef %71) #15
  %73 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %68
  store float %72, ptr %73, align 4, !tbaa !120
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 34, i64 %68
  %75 = load float, ptr %74, align 4, !tbaa !120
  %76 = fmul float %75, 5.000000e-01
  %77 = call float @sinf(float noundef %76) #15
  %78 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %68
  store float %77, ptr %78, align 4, !tbaa !120
  %79 = add nuw nsw i64 %68, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %81, label %67, !llvm.loop !217

81:                                               ; preds = %67
  call void @glScalef(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  %82 = load float, ptr %5, align 4, !tbaa !120
  %83 = fcmp une float %82, 0.000000e+00
  %84 = load float, ptr %19, align 4
  %85 = fcmp une float %84, 0.000000e+00
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  call fastcc void @draw_dof_ellipse(float noundef %82, float noundef %84) #16
  br label %88

88:                                               ; preds = %87, %81
  %89 = load float, ptr %20, align 4
  %90 = fcmp une float %89, 0.000000e+00
  %91 = select i1 %83, i1 %90, i1 false
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call fastcc void @draw_dof_ellipse(float noundef %82, float noundef %89) #16
  br label %93

93:                                               ; preds = %92, %88
  %94 = load float, ptr %6, align 4, !tbaa !120
  %95 = fcmp une float %94, 0.000000e+00
  %96 = select i1 %95, i1 %85, i1 false
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  call fastcc void @draw_dof_ellipse(float noundef %94, float noundef %84) #16
  br label %98

98:                                               ; preds = %97, %93
  %99 = select i1 %95, i1 %90, i1 false
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  call fastcc void @draw_dof_ellipse(float noundef %94, float noundef %89) #16
  br label %101

101:                                              ; preds = %100, %98
  call void @glScalef(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %102 = load i16, ptr %38, align 2, !tbaa !216
  br label %103

103:                                              ; preds = %101, %55
  %104 = phi i16 [ %102, %101 ], [ %63, %55 ]
  %105 = and i16 %104, 32
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %136, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 33, i64 2
  %109 = load float, ptr %108, align 8, !tbaa !120
  %110 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 34, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !120
  %112 = fadd float %109, %111
  %113 = fmul float %112, 5.000000e-01
  %114 = fmul float %113, 0x404CA5DC20000000
  call void @glRotatef(float noundef %114, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  call void @glColor3ub(i8 noundef zeroext 50, i8 noundef zeroext 50, i8 noundef zeroext -1) #15
  call void @glBegin(i32 noundef 3) #15
  br label %115

115:                                              ; preds = %107, %115
  %116 = phi i32 [ -16, %107 ], [ %131, %115 ]
  %117 = sitofp i32 %116 to float
  %118 = fmul float %117, 6.250000e-02
  %119 = fmul float %118, 5.000000e-01
  %120 = load float, ptr %110, align 4, !tbaa !120
  %121 = load float, ptr %108, align 8, !tbaa !120
  %122 = fsub float %120, %121
  %123 = fmul float %119, %122
  %124 = icmp ne i32 %116, -16
  %125 = call float @sinf(float noundef %123) #15
  %126 = zext i1 %124 to i64
  %127 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %126
  store float %125, ptr %127, align 4, !tbaa !120
  %128 = call float @cosf(float noundef %123) #15
  %129 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %126, i64 1
  store float %128, ptr %129, align 4, !tbaa !120
  %130 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %126, i64 2
  store float 0.000000e+00, ptr %130, align 4, !tbaa !120
  call void @glVertex3fv(ptr noundef nonnull %127) #15
  %131 = add nsw i32 %116, 1
  %132 = icmp eq i32 %131, 17
  br i1 %132, label %133, label %115, !llvm.loop !218

133:                                              ; preds = %115
  call void @glEnd() #15
  %134 = fneg float %114
  call void @glRotatef(float noundef %134, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  %135 = load i16, ptr %38, align 2, !tbaa !216
  br label %136

136:                                              ; preds = %133, %103
  %137 = phi i16 [ %135, %133 ], [ %104, %103 ]
  %138 = and i16 %137, 8
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %168, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 33
  %142 = load float, ptr %141, align 8, !tbaa !120
  %143 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 34
  %144 = load float, ptr %143, align 4, !tbaa !120
  %145 = fadd float %142, %144
  %146 = fmul float %145, 5.000000e-01
  %147 = fmul float %146, 0x404CA5DC20000000
  call void @glRotatef(float noundef %147, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 50, i8 noundef zeroext 50) #15
  call void @glBegin(i32 noundef 3) #15
  br label %148

148:                                              ; preds = %140, %148
  %149 = phi i32 [ -16, %140 ], [ %164, %148 ]
  %150 = sitofp i32 %149 to float
  %151 = fmul float %150, 6.250000e-02
  %152 = fmul float %151, 5.000000e-01
  %153 = load float, ptr %143, align 4, !tbaa !120
  %154 = load float, ptr %141, align 8, !tbaa !120
  %155 = fsub float %153, %154
  %156 = call float @llvm.fmuladd.f32(float %152, float %155, float 0x3FF921FB60000000)
  %157 = icmp eq i32 %149, -16
  %158 = select i1 %157, i64 2, i64 3
  %159 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %158
  store float 0.000000e+00, ptr %159, align 4, !tbaa !120
  %160 = call float @sinf(float noundef %156) #15
  %161 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %158, i64 1
  store float %160, ptr %161, align 4, !tbaa !120
  %162 = call float @cosf(float noundef %156) #15
  %163 = getelementptr inbounds [4 x [3 x float]], ptr %2, i64 0, i64 %158, i64 2
  store float %162, ptr %163, align 4, !tbaa !120
  call void @glVertex3fv(ptr noundef nonnull %159) #15
  %164 = add nsw i32 %149, 1
  %165 = icmp eq i32 %164, 17
  br i1 %165, label %166, label %148, !llvm.loop !219

166:                                              ; preds = %148
  call void @glEnd() #15
  %167 = fneg float %147
  call void @glRotatef(float noundef %167, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  br label %168

168:                                              ; preds = %166, %136
  call void @glPopMatrix() #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  br label %169

169:                                              ; preds = %21, %26, %31, %42, %168, %37
  %170 = load ptr, ptr %22, align 8, !tbaa !89
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %21, !llvm.loop !220

172:                                              ; preds = %169, %1
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_object_instance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dof_ellipse(float noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !221 {
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glDepthMask(i8 noundef zeroext 0) #15
  tail call void @glColor4ub(i8 noundef zeroext 70, i8 noundef zeroext 70, i8 noundef zeroext 70, i8 noundef zeroext 50) #15
  tail call void @glBegin(i32 noundef 7) #15
  br label %3

3:                                                ; preds = %27, %2
  %4 = phi i64 [ 1, %2 ], [ %28, %27 ]
  %5 = phi i64 [ 16, %2 ], [ %29, %27 ]
  %6 = phi float [ 0.000000e+00, %2 ], [ %8, %27 ]
  %7 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = sub nuw nsw i64 16, %4
  %10 = fmul float %8, %1
  %11 = fmul float %6, %1
  br label %12

12:                                               ; preds = %3, %24
  %13 = phi i64 [ 1, %3 ], [ %25, %24 ]
  %14 = phi float [ 0.000000e+00, %3 ], [ %16, %24 ]
  %15 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %13
  %16 = load float, ptr %15, align 4, !tbaa !120
  %17 = icmp eq i64 %13, %9
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  tail call void @glEnd() #15
  tail call void @glBegin(i32 noundef 4) #15
  %19 = fmul float %14, %0
  tail call fastcc void @bgl_sphere_project(float noundef %19, float noundef %10) #16
  tail call fastcc void @bgl_sphere_project(float noundef %19, float noundef %11) #16
  %20 = fmul float %16, %0
  tail call fastcc void @bgl_sphere_project(float noundef %20, float noundef %11) #16
  tail call void @glEnd() #15
  tail call void @glBegin(i32 noundef 7) #15
  br label %24

21:                                               ; preds = %12
  %22 = fmul float %16, %0
  tail call fastcc void @bgl_sphere_project(float noundef %22, float noundef %10) #16
  tail call fastcc void @bgl_sphere_project(float noundef %22, float noundef %11) #16
  %23 = fmul float %14, %0
  tail call fastcc void @bgl_sphere_project(float noundef %23, float noundef %11) #16
  tail call fastcc void @bgl_sphere_project(float noundef %23, float noundef %10) #16
  br label %24

24:                                               ; preds = %21, %18
  %25 = add nuw nsw i64 %13, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %27, label %12, !llvm.loop !222

27:                                               ; preds = %24
  %28 = add nuw nsw i64 %4, 1
  %29 = add nsw i64 %5, -1
  %30 = icmp eq i64 %28, 16
  br i1 %30, label %31, label %3, !llvm.loop !223

31:                                               ; preds = %27
  tail call void @glEnd() #15
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glDepthMask(i8 noundef zeroext 1) #15
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  tail call void @glBegin(i32 noundef 3) #15
  br label %32

32:                                               ; preds = %31, %32
  %33 = phi i64 [ 0, %31 ], [ %42, %32 ]
  %34 = and i64 %33, 4294967295
  %35 = xor i64 %34, 15
  %36 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !120
  %38 = fmul float %37, %0
  %39 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %33
  %40 = load float, ptr %39, align 4, !tbaa !120
  %41 = fmul float %40, %1
  tail call fastcc void @bgl_sphere_project(float noundef %38, float noundef %41) #16
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %32, !llvm.loop !224

44:                                               ; preds = %32
  tail call void @glEnd() #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bgl_sphere_project(float noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !225 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = fneg float %0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %0, float 1.000000e+00)
  %6 = fneg float %1
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %1, float %5)
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call float @sqrtf(float noundef %7) #15
  %11 = fmul float %10, 2.000000e+00
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi float [ %11, %9 ], [ 0.000000e+00, %2 ]
  %14 = fmul float %13, %6
  store float %14, ptr %3, align 4, !tbaa !120
  %15 = tail call float @llvm.fmuladd.f32(float %7, float -2.000000e+00, float 1.000000e+00)
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !120
  %17 = fmul float %13, %0
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %17, ptr %18, align 4, !tbaa !120
  call void @glVertex3fv(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 32}
!35 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !36, i64 296}
!42 = !{!"Object", !43, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !44, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !47, i64 1304, !47, i64 1312, !39, i64 1320, !39, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!43 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!44 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"float", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!49, !40, i64 242}
!49 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 32, !46, i64 36, !37, i64 40, !37, i64 56, !46, i64 72, !46, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !50, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!50 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!51 = !{!52, !39, i64 196}
!52 = !{!"bArmature", !43, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!53 = !{!42, !40, i64 952}
!54 = !{!52, !36, i64 160}
!55 = !{!52, !39, i64 192}
!56 = !{!42, !36, i64 288}
!57 = !{!58, !36, i64 0}
!58 = !{!"bPose", !45, i64 0, !36, i64 16, !40, i64 24, !40, i64 26, !39, i64 28, !39, i64 32, !46, i64 36, !37, i64 40, !37, i64 52, !45, i64 64, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !44, i64 104, !37, i64 152}
!59 = !{!35, !39, i64 24}
!60 = !{!61, !39, i64 2096}
!61 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!62 = !{!42, !39, i64 432}
!63 = !{!52, !40, i64 228}
!64 = !{!52, !40, i64 224}
!65 = !{!66, !36, i64 168}
!66 = !{!"Scene", !43, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !67, i64 280, !75, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !45, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !36, i64 4608, !81, i64 4616, !36, i64 4640, !47, i64 4648, !47, i64 4656, !69, i64 4664, !70, i64 4824, !82, i64 4888, !36, i64 4952}
!67 = !{!"RenderData", !68, i64 0, !36, i64 248, !36, i64 256, !71, i64 264, !72, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !46, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !73, i64 576, !45, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !39, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !39, i64 2576, !46, i64 2580, !37, i64 2584, !74, i64 2616, !39, i64 3976, !39, i64 3980}
!68 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!71 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!72 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !46, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!73 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!74 = !{!"BakeData", !68, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!75 = !{!"AudioData", !39, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !46, i64 24, !46, i64 28}
!76 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!77 = !{!"GameData", !76, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !78, i64 40, !40, i64 64, !40, i64 66, !46, i64 68, !79, i64 72, !46, i64 128, !46, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!78 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!79 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !39, i64 40, !46, i64 44, !46, i64 48, !40, i64 52, !40, i64 54}
!80 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!81 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!82 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!83 = !{!"drawarmature.c:draw_ebones"}
!84 = !{!85, !36, i64 376}
!85 = !{!"ARegion", !36, i64 0, !36, i64 8, !86, i64 16, !73, i64 176, !73, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !46, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!86 = !{!"View2D", !50, i64 0, !50, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!52, !39, i64 212}
!88 = !{!49, !37, i64 344}
!89 = !{!36, !36, i64 0}
!90 = !{!91, !39, i64 136}
!91 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !46, i64 104, !37, i64 108, !37, i64 120, !39, i64 132, !39, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !40, i64 180}
!92 = !{!52, !39, i64 216}
!93 = !{!91, !39, i64 132}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!91, !36, i64 24}
!97 = !{!52, !36, i64 176}
!98 = !{!91, !46, i64 152}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !95}
!101 = !{!37, !37, i64 0}
!102 = distinct !{!102, !95}
!103 = !{!"drawarmature.c:draw_ghost_poses_range"}
!104 = !{!39, !39, i64 0}
!105 = !{!52, !40, i64 226}
!106 = !{!66, !39, i64 680}
!107 = !{!42, !40, i64 962}
!108 = distinct !{!108, !95}
!109 = !{!"drawarmature.c:draw_ghost_poses_keys"}
!110 = !{!111, !36, i64 0}
!111 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !36, i64 40, !45, i64 48, !45, i64 64, !39, i64 80, !39, i64 84, !40, i64 88, !40, i64 90, !46, i64 92}
!112 = !{!113, !36, i64 0}
!113 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!114 = !{!115, !36, i64 0}
!115 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42, !46, i64 44, !40, i64 48, !40, i64 50}
!116 = !{!115, !46, i64 44}
!117 = distinct !{!117, !95}
!118 = distinct !{!118, !95}
!119 = !{!"drawarmature.c:draw_ghost_poses"}
!120 = !{!46, !46, i64 0}
!121 = distinct !{!121, !95}
!122 = !{!"drawarmature.c:draw_pose_paths"}
!123 = !{!124, !36, i64 120}
!124 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !45, i64 144, !45, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !46, i64 264, !40, i64 268, !40, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !46, i64 524, !46, i64 528, !46, i64 532, !36, i64 536}
!125 = !{!126, !39, i64 320}
!126 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !37, i64 48, !46, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !39, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !37, i64 308, !39, i64 320, !40, i64 324, !37, i64 326}
!127 = !{!124, !36, i64 176}
!128 = distinct !{!128, !95}
!129 = !{!"drawarmature.c:draw_pose_bones"}
!130 = !{!49, !40, i64 240}
!131 = !{!126, !39, i64 176}
!132 = distinct !{!132, !95}
!133 = !{!35, !39, i64 20}
!134 = !{!124, !36, i64 184}
!135 = !{!124, !36, i64 192}
!136 = !{!126, !36, i64 24}
!137 = !{!52, !36, i64 168}
!138 = !{!126, !46, i64 284}
!139 = distinct !{!139, !95}
!140 = distinct !{!140, !95}
!141 = !{!124, !37, i64 112}
!142 = !{!124, !36, i64 128}
!143 = distinct !{!143, !95}
!144 = distinct !{!144, !95}
!145 = !{!"drawarmature.c:len_v3"}
!146 = !{!"drawarmature.c:draw_sphere_bone_dist"}
!147 = !{!91, !46, i64 172}
!148 = !{!91, !46, i64 140}
!149 = !{!126, !46, i64 304}
!150 = !{!126, !46, i64 272}
!151 = distinct !{!151, !95}
!152 = distinct !{!152, !95}
!153 = !{!"drawarmature.c:get_matrix_editbone"}
!154 = !{!"drawarmature.c:draw_sphere_bone"}
!155 = !{i8 0, i8 2}
!156 = !{!"drawarmature.c:draw_b_bone"}
!157 = !{!"drawarmature.c:draw_wire_bone"}
!158 = !{!126, !40, i64 324}
!159 = !{!"drawarmature.c:draw_bone"}
!160 = !{!"drawarmature.c:draw_sphere_bone_wire"}
!161 = !{!"drawarmature.c:draw_line_bone"}
!162 = !{!"drawarmature.c:bone_matrix_translate_y"}
!163 = !{!"drawarmature.c:dot_v3v3"}
!164 = !{!"drawarmature.c:len_v3v3"}
!165 = !{!"drawarmature.c:sub_v3_v3v3"}
!166 = !{!"drawarmature.c:len_v2"}
!167 = !{!"drawarmature.c:zero_v3"}
!168 = !{!"drawarmature.c:normalize_v3"}
!169 = !{!"drawarmature.c:cross_v3_v3v3"}
!170 = !{!"drawarmature.c:madd_v3_v3v3fl"}
!171 = !{!"drawarmature.c:normalize_v3_v3"}
!172 = !{!"drawarmature.c:mul_v3_v3fl"}
!173 = !{!"drawarmature.c:set_pchan_glColor"}
!174 = !{!175, !40, i64 12}
!175 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 12, !40, i64 14}
!176 = !{!"drawarmature.c:copy_v3_v3_char"}
!177 = !{!"drawarmature.c:cp_shade_color3ub"}
!178 = !{!"drawarmature.c:draw_bone_points"}
!179 = !{!"drawarmature.c:set_ebone_glColor"}
!180 = !{!"drawarmature.c:draw_b_bone_boxes"}
!181 = distinct !{!181, !95}
!182 = !{!"drawarmature.c:draw_bonevert_solid"}
!183 = !{!"drawarmature.c:draw_bonevert"}
!184 = !{!"drawarmature.c:drawsolidcube_size"}
!185 = !{!"drawarmature.c:drawcube_size"}
!186 = !{!"drawarmature.c:draw_wire_bone_segments"}
!187 = distinct !{!187, !95}
!188 = !{!"drawarmature.c:draw_bone_solid_octahedral"}
!189 = distinct !{!189, !95}
!190 = !{!"drawarmature.c:draw_bone_octahedral"}
!191 = !{!"drawarmature.c:copy_v3_v3"}
!192 = !{!"drawarmature.c:mul_v3_fl"}
!193 = !{!"drawarmature.c:add_v3_v3v3"}
!194 = !{!"drawarmature.c:add_v3_v3"}
!195 = !{!"drawarmature.c:ghost_poses_tag_unselected"}
!196 = distinct !{!196, !95}
!197 = !{!"drawarmature.c:set_pchan_colorset"}
!198 = !{!124, !40, i64 110}
!199 = !{!200, !39, i64 36}
!200 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 32, !39, i64 36, !37, i64 40, !175, i64 104}
!201 = !{!"drawarmature.c:draw_custom_bone"}
!202 = !{!"drawarmature.c:pchan_draw_IK_root_lines"}
!203 = !{!204, !46, i64 96}
!204 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !40, i64 94, !46, i64 96, !46, i64 100, !36, i64 104, !46, i64 112, !46, i64 116}
!205 = !{!204, !40, i64 24}
!206 = !{!204, !36, i64 16}
!207 = !{!208, !40, i64 10}
!208 = !{!"bKinematicConstraint", !36, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !46, i64 152, !46, i64 156, !46, i64 160, !37, i64 164, !40, i64 176, !40, i64 178, !46, i64 180}
!209 = !{!208, !40, i64 12}
!210 = distinct !{!210, !95}
!211 = !{!212, !40, i64 18}
!212 = !{!"bSplineIKConstraint", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!213 = distinct !{!213, !95}
!214 = distinct !{!214, !95}
!215 = !{!"drawarmature.c:draw_pose_dofs"}
!216 = !{!124, !40, i64 106}
!217 = distinct !{!217, !95}
!218 = distinct !{!218, !95}
!219 = distinct !{!219, !95}
!220 = distinct !{!220, !95}
!221 = !{!"drawarmature.c:draw_dof_ellipse"}
!222 = distinct !{!222, !95}
!223 = distinct !{!223, !95}
!224 = distinct !{!224, !95}
!225 = !{!"drawarmature.c:bgl_sphere_project"}
