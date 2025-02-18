; ModuleID = 'blender/source/blender/editors/space_view3d/drawarmature.c'
source_filename = "blender/source/blender/editors/space_view3d/drawarmature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.Mat4 = type { [4 x [4 x float]] }
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

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @draw_armature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct.DLRBT_Tree, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [4 x i8], align 1
  %20 = alloca [4 x float], align 16
  %21 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %26 = load i16, ptr %25, align 2, !tbaa !48
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %967

29:                                               ; preds = %8
  %30 = icmp sgt i16 %4, 2
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !51
  switch i32 %33, label %34 [
    i32 1, label %40
    i32 4, label %40
  ]

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_armature.white, i64 16, i1 false)
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %20) #9
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #9
  %35 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 55
  %36 = load i16, ptr %35, align 8, !tbaa !53
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #9
  br label %40

40:                                               ; preds = %31, %31, %34, %29
  %41 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %422, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !55
  %47 = or i32 %46, 32
  store i32 %47, ptr %45, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = load ptr, ptr %23, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #9
  %51 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 14
  store i32 0, ptr %51, align 4, !tbaa !60
  %52 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !51
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %104

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %49, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %56) #9
  %57 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47
  %58 = load float, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !61
  %61 = fmul float %60, %60
  %62 = call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47, i64 0, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !61
  %65 = call float @llvm.fmuladd.f32(float %64, float %64, float %62)
  %66 = call float @sqrtf(float noundef %65) #9
  %67 = fdiv float 1.000000e+00, %66
  call void @mul_mat3_m4_fl(ptr noundef nonnull %15, float noundef %67) #9
  %68 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %15) #9
  call void @glEnable(i32 noundef 3042) #9
  %69 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %70 = load i8, ptr %69, align 8, !tbaa !62
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  call void @glDisable(i32 noundef 2929) #9
  br label %73

73:                                               ; preds = %72, %55
  %74 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !54
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 15
  br label %80

80:                                               ; preds = %78, %96
  %81 = phi ptr [ %76, %78 ], [ %97, %96 ]
  %82 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 10
  %83 = load i32, ptr %82, align 8, !tbaa !64
  %84 = load i32, ptr %79, align 8, !tbaa !66
  %85 = and i32 %84, %83
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.EditBone, ptr %81, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !67
  %90 = and i32 %89, 5120
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 7
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %91, %93
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  call fastcc void @draw_sphere_bone_dist(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %81)
  br label %96

96:                                               ; preds = %95, %87, %80
  %97 = load ptr, ptr %81, align 8, !tbaa !63
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %80, !llvm.loop !68

99:                                               ; preds = %96, %73
  %100 = load i8, ptr %69, align 8, !tbaa !62
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  call void @glEnable(i32 noundef 2929) #9
  br label %103

103:                                              ; preds = %102, %99
  call void @glDisable(i32 noundef 3042) #9
  br label %104

104:                                              ; preds = %103, %44
  br i1 %30, label %105, label %192

105:                                              ; preds = %104
  %106 = load i32, ptr %52, align 4, !tbaa !51
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %192, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !54
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = icmp eq ptr %111, null
  br i1 %112, label %192, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 15
  %115 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 6
  %116 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %117 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %118 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %119 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  br label %120

120:                                              ; preds = %113, %188
  %121 = phi ptr [ %111, %113 ], [ %190, %188 ]
  %122 = phi i32 [ 0, %113 ], [ %189, %188 ]
  %123 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !64
  %125 = load i32, ptr %114, align 8, !tbaa !66
  %126 = and i32 %125, %124
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %188, label %128

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 9
  %130 = load i32, ptr %129, align 4, !tbaa !67
  %131 = and i32 %130, 1024
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %188

133:                                              ; preds = %128
  call void @glPushMatrix() #9
  %134 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 8
  %135 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 7
  %136 = load float, ptr %135, align 4, !tbaa !61
  %137 = load float, ptr %134, align 4, !tbaa !61
  %138 = fsub float %136, %137
  %139 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 7, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !61
  %141 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 8, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !61
  %143 = fsub float %140, %142
  %144 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 7, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !61
  %146 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 8, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !61
  %148 = fsub float %145, %147
  %149 = fmul float %143, %143
  %150 = call float @llvm.fmuladd.f32(float %138, float %138, float %149)
  %151 = call float @llvm.fmuladd.f32(float %148, float %148, float %150)
  %152 = call float @sqrtf(float noundef %151) #9
  %153 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 14
  store float %152, ptr %153, align 8, !tbaa !71
  call void @ED_armature_ebone_to_mat4(ptr noundef nonnull %121, ptr noundef nonnull %17) #9
  call void @glMultMatrixf(ptr noundef nonnull %17) #9
  %154 = load i32, ptr %129, align 4, !tbaa !67
  %155 = getelementptr inbounds %struct.EditBone, ptr %121, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !72
  %157 = icmp eq ptr %156, null
  br i1 %157, label %171, label %158

158:                                              ; preds = %133
  %159 = load i32, ptr %114, align 8, !tbaa !66
  %160 = getelementptr inbounds %struct.EditBone, ptr %156, i64 0, i32 10
  %161 = load i32, ptr %160, align 8, !tbaa !64
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.EditBone, ptr %156, i64 0, i32 9
  %166 = load i32, ptr %165, align 4, !tbaa !67
  %167 = and i32 %166, 1024
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164, %158
  %170 = and i32 %154, -17
  br label %171

171:                                              ; preds = %169, %164, %133
  %172 = phi i32 [ %154, %164 ], [ %170, %169 ], [ %154, %133 ]
  %173 = load ptr, ptr %115, align 8, !tbaa !73
  %174 = icmp eq ptr %121, %173
  %175 = or i32 %172, 256
  %176 = select i1 %174, i32 %175, i32 %172
  %177 = load i32, ptr %52, align 4, !tbaa !51
  switch i32 %177, label %184 [
    i32 3, label %178
    i32 2, label %180
    i32 4, label %182
  ]

178:                                              ; preds = %171
  %179 = load i32, ptr %118, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone(i32 noundef %179, i32 noundef %176, i32 noundef %122, ptr noundef null, ptr noundef nonnull %121)
  br label %187

180:                                              ; preds = %171
  %181 = load i32, ptr %117, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 3, i32 noundef %181, i32 noundef %176, i16 noundef signext 0, i32 noundef %122, ptr noundef null, ptr noundef nonnull %121)
  br label %187

182:                                              ; preds = %171
  %183 = load i32, ptr %116, align 8, !tbaa !55
  call fastcc void @draw_wire_bone(i16 noundef signext 3, i32 noundef %183, i32 noundef %176, i16 noundef signext 0, i32 noundef %122, ptr noundef null, ptr noundef nonnull %121)
  br label %187

184:                                              ; preds = %171
  %185 = load i32, ptr %119, align 8, !tbaa !55
  %186 = load float, ptr %153, align 8, !tbaa !71
  call fastcc void @draw_bone(i16 noundef signext 3, i32 noundef %185, i32 noundef %176, i16 noundef signext 0, i32 noundef %122, float noundef %186)
  br label %187

187:                                              ; preds = %184, %182, %180, %178
  call void @glPopMatrix() #9
  br label %188

188:                                              ; preds = %187, %128, %120
  %189 = add i32 %122, 1
  %190 = load ptr, ptr %121, align 8, !tbaa !63
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %120, !llvm.loop !74

192:                                              ; preds = %188, %108, %105, %104
  %193 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #9
  %194 = load i32, ptr %52, align 4, !tbaa !51
  switch i32 %194, label %200 [
    i32 1, label %195
    i32 4, label %195
  ]

195:                                              ; preds = %192, %192
  %196 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %197 = lshr i32 %196, 5
  %198 = and i32 %197, 1
  %199 = add nsw i32 %198, -1
  br label %208

200:                                              ; preds = %192
  br i1 %30, label %201, label %202

201:                                              ; preds = %200
  call void @ED_view3d_polygon_offset(ptr noundef %49, float noundef 1.000000e+00) #9
  br label %208

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %204 = load i32, ptr %203, align 8, !tbaa !55
  %205 = lshr i32 %204, 5
  %206 = and i32 %205, 1
  %207 = add nsw i32 %206, -1
  br label %208

208:                                              ; preds = %202, %201, %195
  %209 = phi i32 [ -1, %201 ], [ %199, %195 ], [ %207, %202 ]
  %210 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !54
  %212 = load ptr, ptr %211, align 8, !tbaa !63
  %213 = icmp eq ptr %212, null
  br i1 %213, label %311, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 15
  %216 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 6
  %217 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %218 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %219 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %220 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %221 = icmp slt i16 %4, 3
  %222 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  br label %223

223:                                              ; preds = %214, %305
  %224 = phi ptr [ %212, %214 ], [ %309, %305 ]
  %225 = phi i32 [ %209, %214 ], [ %308, %305 ]
  %226 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 10
  %227 = load i32, ptr %226, align 8, !tbaa !64
  %228 = load i32, ptr %51, align 4, !tbaa !60
  %229 = or i32 %228, %227
  store i32 %229, ptr %51, align 4, !tbaa !60
  %230 = load i32, ptr %215, align 8, !tbaa !66
  %231 = and i32 %230, %227
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %305, label %233

233:                                              ; preds = %223
  %234 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 9
  %235 = load i32, ptr %234, align 4, !tbaa !67
  %236 = and i32 %235, 1024
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %305

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !72
  %241 = icmp eq ptr %240, null
  br i1 %241, label %254, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.EditBone, ptr %240, i64 0, i32 10
  %244 = load i32, ptr %243, align 8, !tbaa !64
  %245 = and i32 %244, %230
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.EditBone, ptr %240, i64 0, i32 9
  %249 = load i32, ptr %248, align 4, !tbaa !67
  %250 = and i32 %249, 1024
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %247, %242
  %253 = and i32 %235, -1041
  br label %254

254:                                              ; preds = %252, %247, %238
  %255 = phi i32 [ %235, %247 ], [ %253, %252 ], [ %235, %238 ]
  %256 = load ptr, ptr %216, align 8, !tbaa !73
  %257 = icmp eq ptr %224, %256
  %258 = or i32 %255, 256
  %259 = select i1 %257, i32 %258, i32 %255
  %260 = load i32, ptr %52, align 4, !tbaa !51
  %261 = icmp eq i32 %260, 3
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  br i1 %221, label %263, label %297

263:                                              ; preds = %262
  %264 = load i32, ptr %222, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone_wire(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %264, i32 noundef %259, i16 noundef signext 0, i32 noundef %225, ptr noundef null, ptr noundef nonnull %224)
  br label %297

265:                                              ; preds = %254
  call void @glPushMatrix() #9
  %266 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 8
  %267 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 7
  %268 = load float, ptr %267, align 4, !tbaa !61
  %269 = load float, ptr %266, align 4, !tbaa !61
  %270 = fsub float %268, %269
  %271 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 7, i64 1
  %272 = load float, ptr %271, align 4, !tbaa !61
  %273 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 8, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !61
  %275 = fsub float %272, %274
  %276 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 7, i64 2
  %277 = load float, ptr %276, align 4, !tbaa !61
  %278 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 8, i64 2
  %279 = load float, ptr %278, align 4, !tbaa !61
  %280 = fsub float %277, %279
  %281 = fmul float %275, %275
  %282 = call float @llvm.fmuladd.f32(float %270, float %270, float %281)
  %283 = call float @llvm.fmuladd.f32(float %280, float %280, float %282)
  %284 = call float @sqrtf(float noundef %283) #9
  %285 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 14
  store float %284, ptr %285, align 8, !tbaa !71
  call void @ED_armature_ebone_to_mat4(ptr noundef nonnull %224, ptr noundef nonnull %17) #9
  call void @glMultMatrixf(ptr noundef nonnull %17) #9
  %286 = load i32, ptr %52, align 4, !tbaa !51
  switch i32 %286, label %293 [
    i32 1, label %287
    i32 4, label %289
    i32 2, label %291
  ]

287:                                              ; preds = %265
  %288 = load i32, ptr %219, align 8, !tbaa !55
  call fastcc void @draw_line_bone(i32 noundef %288, i32 noundef %259, i16 noundef signext 0, i32 noundef %225, ptr noundef null, ptr noundef nonnull %224)
  br label %296

289:                                              ; preds = %265
  %290 = load i32, ptr %218, align 8, !tbaa !55
  call fastcc void @draw_wire_bone(i16 noundef signext 2, i32 noundef %290, i32 noundef %259, i16 noundef signext 0, i32 noundef %225, ptr noundef null, ptr noundef nonnull %224)
  br label %296

291:                                              ; preds = %265
  %292 = load i32, ptr %217, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 2, i32 noundef %292, i32 noundef %259, i16 noundef signext 0, i32 noundef %225, ptr noundef null, ptr noundef nonnull %224)
  br label %296

293:                                              ; preds = %265
  %294 = load i32, ptr %220, align 8, !tbaa !55
  %295 = load float, ptr %285, align 8, !tbaa !71
  call fastcc void @draw_bone(i16 noundef signext 2, i32 noundef %294, i32 noundef %259, i16 noundef signext 0, i32 noundef %225, float noundef %295)
  br label %296

296:                                              ; preds = %293, %291, %289, %287
  call void @glPopMatrix() #9
  br label %297

297:                                              ; preds = %296, %263, %262
  %298 = load ptr, ptr %239, align 8, !tbaa !72
  %299 = icmp eq ptr %298, null
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  call void @UI_ThemeColor(i32 noundef 27) #9
  %301 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #9
  call void @setlinestyle(i32 noundef 3) #9
  call void @glBegin(i32 noundef 1) #9
  %302 = load ptr, ptr %239, align 8, !tbaa !72
  %303 = getelementptr inbounds %struct.EditBone, ptr %302, i64 0, i32 8
  call void @glVertex3fv(ptr noundef nonnull %303) #9
  %304 = getelementptr inbounds %struct.EditBone, ptr %224, i64 0, i32 7
  call void @glVertex3fv(ptr noundef nonnull %304) #9
  call void @glEnd() #9
  call void @setlinestyle(i32 noundef 0) #9
  br label %305

305:                                              ; preds = %300, %297, %233, %223
  %306 = icmp eq i32 %225, -1
  %307 = add nuw i32 %225, 1
  %308 = select i1 %306, i32 -1, i32 %307
  %309 = load ptr, ptr %224, align 8, !tbaa !63
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %223, !llvm.loop !77

311:                                              ; preds = %305, %208
  %312 = phi i32 [ %209, %208 ], [ %308, %305 ]
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #9
  br label %316

316:                                              ; preds = %314, %311
  br i1 %30, label %317, label %320

317:                                              ; preds = %316
  %318 = load i32, ptr %52, align 4, !tbaa !51
  switch i32 %318, label %319 [
    i32 4, label %320
    i32 1, label %320
  ]

319:                                              ; preds = %317
  call void @ED_view3d_polygon_offset(ptr noundef %49, float noundef 0.000000e+00) #9
  br label %320

320:                                              ; preds = %319, %317, %317, %316
  %321 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 8
  %322 = load i32, ptr %321, align 8, !tbaa !55
  %323 = and i32 %322, 12
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %419, label %325

325:                                              ; preds = %320
  %326 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %327 = and i32 %326, 32
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %419

329:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #9
  %330 = getelementptr inbounds [4 x i8], ptr %19, i64 0, i64 3
  store i8 -1, ptr %330, align 1, !tbaa !78
  %331 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %332 = load i8, ptr %331, align 8, !tbaa !62
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %329
  call void @glDisable(i32 noundef 2929) #9
  br label %335

335:                                              ; preds = %334, %329
  %336 = load ptr, ptr %210, align 8, !tbaa !54
  %337 = load ptr, ptr %336, align 8, !tbaa !63
  %338 = icmp eq ptr %337, null
  br i1 %338, label %414, label %339

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.bArmature, ptr %50, i64 0, i32 15
  %341 = getelementptr inbounds [4 x float], ptr %17, i64 1
  %342 = getelementptr inbounds [4 x float], ptr %17, i64 1, i64 1
  %343 = getelementptr inbounds [4 x float], ptr %17, i64 1, i64 2
  %344 = getelementptr inbounds [4 x float], ptr %17, i64 3
  %345 = getelementptr inbounds [4 x float], ptr %17, i64 3, i64 1
  %346 = getelementptr inbounds [4 x float], ptr %17, i64 3, i64 2
  br label %347

347:                                              ; preds = %339, %411
  %348 = phi ptr [ %337, %339 ], [ %412, %411 ]
  %349 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 10
  %350 = load i32, ptr %349, align 8, !tbaa !64
  %351 = load i32, ptr %340, align 8, !tbaa !66
  %352 = and i32 %351, %350
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %411, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 9
  %356 = load i32, ptr %355, align 4, !tbaa !67
  %357 = and i32 %356, 1024
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %411

359:                                              ; preds = %354
  %360 = and i32 %356, 1
  %361 = icmp eq i32 %360, 0
  %362 = select i1 %361, i32 3, i32 4
  call void @UI_GetThemeColor3ubv(i32 noundef %362, ptr noundef nonnull %19) #9
  %363 = load i32, ptr %321, align 8, !tbaa !55
  %364 = and i32 %363, 8
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %371, label %366

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 7
  %368 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 8
  call void @mid_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %367, ptr noundef nonnull %368) #9
  call void @glRasterPos3fv(ptr noundef nonnull %18) #9
  %369 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 5
  %370 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %369) #10
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %18, ptr noundef nonnull %369, i64 noundef %370, i16 noundef signext 10, i16 noundef signext 0, ptr noundef nonnull %19) #9
  br label %371

371:                                              ; preds = %366, %359
  %372 = load i32, ptr %321, align 8, !tbaa !55
  %373 = and i32 %372, 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %411, label %375

375:                                              ; preds = %371
  call void @glPushMatrix() #9
  %376 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 8
  %377 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 7
  %378 = load float, ptr %377, align 4, !tbaa !61
  %379 = load float, ptr %376, align 4, !tbaa !61
  %380 = fsub float %378, %379
  %381 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 7, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !61
  %383 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 8, i64 1
  %384 = load float, ptr %383, align 4, !tbaa !61
  %385 = fsub float %382, %384
  %386 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 7, i64 2
  %387 = load float, ptr %386, align 4, !tbaa !61
  %388 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 8, i64 2
  %389 = load float, ptr %388, align 4, !tbaa !61
  %390 = fsub float %387, %389
  %391 = fmul float %385, %385
  %392 = call float @llvm.fmuladd.f32(float %380, float %380, float %391)
  %393 = call float @llvm.fmuladd.f32(float %390, float %390, float %392)
  %394 = call float @sqrtf(float noundef %393) #9
  %395 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 14
  store float %394, ptr %395, align 8, !tbaa !71
  call void @ED_armature_ebone_to_mat4(ptr noundef nonnull %348, ptr noundef nonnull %17) #9
  %396 = load float, ptr %395, align 8, !tbaa !71
  %397 = load float, ptr %341, align 16, !tbaa !61
  %398 = load float, ptr %342, align 4, !tbaa !61
  %399 = load float, ptr %343, align 8, !tbaa !61
  %400 = fmul float %396, %397
  %401 = fmul float %396, %398
  %402 = fmul float %396, %399
  %403 = load float, ptr %344, align 16, !tbaa !61
  %404 = fadd float %400, %403
  store float %404, ptr %344, align 16, !tbaa !61
  %405 = load float, ptr %345, align 4, !tbaa !61
  %406 = fadd float %401, %405
  store float %406, ptr %345, align 4, !tbaa !61
  %407 = load float, ptr %346, align 8, !tbaa !61
  %408 = fadd float %402, %407
  store float %408, ptr %346, align 8, !tbaa !61
  call void @glMultMatrixf(ptr noundef nonnull %17) #9
  call void @glColor3ubv(ptr noundef nonnull %19) #9
  %409 = load float, ptr %395, align 8, !tbaa !71
  %410 = fmul float %409, 2.500000e-01
  call void @drawaxes(float noundef %410, i8 noundef zeroext 1) #9
  call void @glPopMatrix() #9
  br label %411

411:                                              ; preds = %375, %371, %354, %347
  %412 = load ptr, ptr %348, align 8, !tbaa !63
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %347, !llvm.loop !79

414:                                              ; preds = %411, %335
  %415 = load i8, ptr %331, align 8, !tbaa !62
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %414
  call void @glEnable(i32 noundef 2929) #9
  br label %418

418:                                              ; preds = %417, %414
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  br label %419

419:                                              ; preds = %320, %325, %418
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #9
  %420 = load i32, ptr %45, align 8, !tbaa !55
  %421 = and i32 %420, -33
  store i32 %421, ptr %45, align 8, !tbaa !55
  br label %965

422:                                              ; preds = %40
  %423 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 18
  %424 = load ptr, ptr %423, align 8, !tbaa !80
  %425 = icmp eq ptr %424, null
  br i1 %425, label %965, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %424, align 8, !tbaa !81
  %428 = icmp eq ptr %427, null
  br i1 %428, label %965, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %431 = load i32, ptr %430, align 8, !tbaa !83
  %432 = and i32 %431, 512
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %954

434:                                              ; preds = %429
  %435 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %436 = and i32 %435, 32
  %437 = icmp eq i32 %436, 0
  %438 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 27
  %439 = load i32, ptr %438, align 8, !tbaa !84
  %440 = and i32 %439, 64
  %441 = icmp eq i32 %440, 0
  br i1 %437, label %447, label %442

442:                                              ; preds = %434
  br i1 %441, label %954, label %443

443:                                              ; preds = %442
  %444 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 8
  %445 = load i32, ptr %444, align 8, !tbaa !55
  %446 = or i32 %445, 16
  store i32 %446, ptr %444, align 8, !tbaa !55
  br label %954

447:                                              ; preds = %434
  br i1 %441, label %954, label %448

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 19
  %450 = load i16, ptr %449, align 4, !tbaa !85
  switch i16 %450, label %897 [
    i16 1, label %451
    i16 2, label %579
    i16 0, label %728
  ]

451:                                              ; preds = %448
  %452 = load ptr, ptr %21, align 8, !tbaa !34
  %453 = call ptr @BKE_animdata_from_id(ptr noundef %452) #9
  %454 = getelementptr inbounds %struct.Object, ptr %452, i64 0, i32 19
  %455 = load ptr, ptr %454, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  %456 = getelementptr inbounds %struct.bArmature, ptr %455, i64 0, i32 21
  %457 = load i32, ptr %456, align 8, !tbaa !86
  %458 = sitofp i32 %457 to float
  %459 = getelementptr inbounds %struct.bArmature, ptr %455, i64 0, i32 22
  %460 = load i32, ptr %459, align 4, !tbaa !87
  %461 = sitofp i32 %460 to float
  %462 = fcmp ugt float %461, %458
  br i1 %462, label %463, label %578

463:                                              ; preds = %451
  %464 = getelementptr inbounds %struct.bArmature, ptr %455, i64 0, i32 18
  %465 = load i16, ptr %464, align 2, !tbaa !88
  %466 = fsub float %461, %458
  %467 = getelementptr inbounds %struct.Object, ptr %452, i64 0, i32 27
  %468 = load i32, ptr %467, align 8, !tbaa !84
  %469 = and i32 %468, -65
  store i32 %469, ptr %467, align 8, !tbaa !84
  %470 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %471 = load i32, ptr %470, align 8, !tbaa !89
  %472 = getelementptr inbounds %struct.bArmature, ptr %455, i64 0, i32 8
  %473 = load i32, ptr %472, align 8, !tbaa !55
  %474 = and i32 %473, -13
  store i32 %474, ptr %472, align 8, !tbaa !55
  %475 = getelementptr inbounds %struct.Object, ptr %452, i64 0, i32 60
  %476 = load i16, ptr %475, align 2, !tbaa !106
  %477 = or i16 %476, 1024
  store i16 %477, ptr %475, align 2, !tbaa !106
  %478 = getelementptr inbounds %struct.Object, ptr %452, i64 0, i32 18
  %479 = load ptr, ptr %478, align 8, !tbaa !80
  call void @BKE_pose_copy_data(ptr noundef nonnull %14, ptr noundef %479, i8 noundef zeroext 1) #9
  %480 = load ptr, ptr %14, align 8, !tbaa !63
  store ptr %480, ptr %478, align 8, !tbaa !80
  %481 = load ptr, ptr %454, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef %452, ptr noundef %481) #9
  %482 = load ptr, ptr %454, align 8, !tbaa !41
  %483 = getelementptr inbounds %struct.bArmature, ptr %482, i64 0, i32 8
  %484 = load i32, ptr %483, align 8, !tbaa !55
  %485 = and i32 %484, 4096
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %514, label %487

487:                                              ; preds = %463
  %488 = load ptr, ptr %478, align 8, !tbaa !80
  %489 = load ptr, ptr %488, align 8, !tbaa !63
  %490 = icmp eq ptr %489, null
  br i1 %490, label %514, label %491

491:                                              ; preds = %487
  %492 = getelementptr inbounds %struct.bArmature, ptr %482, i64 0, i32 15
  br label %493

493:                                              ; preds = %511, %491
  %494 = phi ptr [ %489, %491 ], [ %512, %511 ]
  %495 = getelementptr inbounds %struct.bPoseChannel, ptr %494, i64 0, i32 12
  %496 = load ptr, ptr %495, align 8, !tbaa !107
  %497 = icmp eq ptr %496, null
  br i1 %497, label %511, label %498

498:                                              ; preds = %493
  %499 = load i32, ptr %492, align 8, !tbaa !66
  %500 = getelementptr inbounds %struct.Bone, ptr %496, i64 0, i32 25
  %501 = load i32, ptr %500, align 8, !tbaa !109
  %502 = and i32 %501, %499
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %498
  %505 = getelementptr inbounds %struct.Bone, ptr %496, i64 0, i32 10
  %506 = load i32, ptr %505, align 8, !tbaa !111
  %507 = and i32 %506, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %504
  %510 = or i32 %506, 65536
  store i32 %510, ptr %505, align 8, !tbaa !111
  br label %511

511:                                              ; preds = %509, %504, %498, %493
  %512 = load ptr, ptr %494, align 8, !tbaa !63
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %493, !llvm.loop !112

514:                                              ; preds = %511, %487, %463
  call void @glEnable(i32 noundef 3042) #9
  %515 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %516 = load i8, ptr %515, align 8, !tbaa !62
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %514
  call void @glDisable(i32 noundef 2929) #9
  br label %519

519:                                              ; preds = %518, %514
  %520 = fptosi float %458 to i32
  store i32 %520, ptr %470, align 8, !tbaa !89
  %521 = sitofp i32 %520 to float
  %522 = fcmp olt float %521, %461
  br i1 %522, label %523, label %539

523:                                              ; preds = %519
  %524 = sext i16 %465 to i32
  br label %525

525:                                              ; preds = %525, %523
  %526 = phi float [ %521, %523 ], [ %537, %525 ]
  %527 = fsub float %461, %526
  %528 = fdiv float %527, %466
  %529 = call float @sqrtf(float noundef %528) #9
  %530 = fmul float %529, 1.200000e+02
  %531 = fptosi float %530 to i32
  %532 = sub nsw i32 -128, %531
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %532) #9
  %533 = load i32, ptr %470, align 8, !tbaa !89
  %534 = sitofp i32 %533 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %452, ptr noundef %453, float noundef %534, i16 noundef signext 3) #9
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef %452) #9
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %535 = load i32, ptr %470, align 8, !tbaa !89
  %536 = add nsw i32 %535, %524
  store i32 %536, ptr %470, align 8, !tbaa !89
  %537 = sitofp i32 %536 to float
  %538 = fcmp olt float %537, %461
  br i1 %538, label %525, label %539, !llvm.loop !113

539:                                              ; preds = %525, %519
  call void @glDisable(i32 noundef 3042) #9
  %540 = load i8, ptr %515, align 8, !tbaa !62
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %543, label %542

542:                                              ; preds = %539
  call void @glEnable(i32 noundef 2929) #9
  br label %543

543:                                              ; preds = %542, %539
  %544 = sitofp i32 %471 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %452, ptr noundef %453, float noundef %544, i16 noundef signext 3) #9
  %545 = load ptr, ptr %454, align 8, !tbaa !41
  %546 = getelementptr inbounds %struct.bArmature, ptr %545, i64 0, i32 8
  %547 = load i32, ptr %546, align 8, !tbaa !55
  %548 = and i32 %547, 4096
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %574, label %550

550:                                              ; preds = %543
  %551 = load ptr, ptr %478, align 8, !tbaa !80
  %552 = load ptr, ptr %551, align 8, !tbaa !63
  %553 = icmp eq ptr %552, null
  br i1 %553, label %574, label %554

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.bArmature, ptr %545, i64 0, i32 15
  br label %556

556:                                              ; preds = %571, %554
  %557 = phi ptr [ %552, %554 ], [ %572, %571 ]
  %558 = getelementptr inbounds %struct.bPoseChannel, ptr %557, i64 0, i32 12
  %559 = load ptr, ptr %558, align 8, !tbaa !107
  %560 = icmp eq ptr %559, null
  br i1 %560, label %571, label %561

561:                                              ; preds = %556
  %562 = load i32, ptr %555, align 8, !tbaa !66
  %563 = getelementptr inbounds %struct.Bone, ptr %559, i64 0, i32 25
  %564 = load i32, ptr %563, align 8, !tbaa !109
  %565 = and i32 %564, %562
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %571, label %567

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.Bone, ptr %559, i64 0, i32 10
  %569 = load i32, ptr %568, align 8, !tbaa !111
  %570 = and i32 %569, -65537
  store i32 %570, ptr %568, align 8, !tbaa !111
  br label %571

571:                                              ; preds = %567, %561, %556
  %572 = load ptr, ptr %557, align 8, !tbaa !63
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %556, !llvm.loop !112

574:                                              ; preds = %571, %550, %543
  %575 = load ptr, ptr %14, align 8, !tbaa !63
  call void @BKE_pose_free(ptr noundef %575) #9
  store i32 %471, ptr %470, align 8, !tbaa !89
  store ptr %479, ptr %478, align 8, !tbaa !80
  store i32 %473, ptr %472, align 8, !tbaa !55
  %576 = load i32, ptr %467, align 8, !tbaa !84
  %577 = or i32 %576, 64
  store i32 %577, ptr %467, align 8, !tbaa !84
  store i16 %476, ptr %475, align 2, !tbaa !106
  br label %578

578:                                              ; preds = %451, %574
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %897

579:                                              ; preds = %448
  %580 = load ptr, ptr %21, align 8, !tbaa !34
  %581 = call ptr @BKE_animdata_from_id(ptr noundef %580) #9
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %579
  %584 = load ptr, ptr %581, align 8, !tbaa !114
  br label %585

585:                                              ; preds = %583, %579
  %586 = phi ptr [ %584, %583 ], [ null, %579 ]
  %587 = getelementptr inbounds %struct.Object, ptr %580, i64 0, i32 19
  %588 = load ptr, ptr %587, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %589 = getelementptr inbounds %struct.bArmature, ptr %588, i64 0, i32 21
  %590 = load i32, ptr %589, align 8, !tbaa !86
  %591 = sitofp i32 %590 to float
  %592 = getelementptr inbounds %struct.bArmature, ptr %588, i64 0, i32 22
  %593 = load i32, ptr %592, align 4, !tbaa !87
  %594 = sitofp i32 %593 to float
  %595 = fcmp ugt float %594, %591
  br i1 %595, label %596, label %727

596:                                              ; preds = %585
  call void @BLI_dlrbTree_init(ptr noundef nonnull %13) #9
  call void @action_to_keylist(ptr noundef %581, ptr noundef %586, ptr noundef nonnull %13, ptr noundef null) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %13) #9
  %597 = load ptr, ptr %13, align 8, !tbaa !116
  %598 = icmp eq ptr %597, null
  br i1 %598, label %614, label %599

599:                                              ; preds = %596, %611
  %600 = phi ptr [ %602, %611 ], [ %597, %596 ]
  %601 = phi float [ %612, %611 ], [ 0.000000e+00, %596 ]
  %602 = load ptr, ptr %600, align 8, !tbaa !118
  %603 = getelementptr inbounds %struct.ActKeyColumn, ptr %600, i64 0, i32 8
  %604 = load float, ptr %603, align 4, !tbaa !120
  %605 = fcmp olt float %604, %591
  %606 = fcmp ogt float %604, %594
  %607 = or i1 %605, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %599
  call void @BLI_freelinkN(ptr noundef nonnull %13, ptr noundef nonnull %600) #9
  br label %611

609:                                              ; preds = %599
  %610 = fadd float %601, 1.000000e+00
  br label %611

611:                                              ; preds = %609, %608
  %612 = phi float [ %601, %608 ], [ %610, %609 ]
  %613 = icmp eq ptr %602, null
  br i1 %613, label %614, label %599, !llvm.loop !121

614:                                              ; preds = %611, %596
  %615 = phi float [ 0.000000e+00, %596 ], [ %612, %611 ]
  %616 = fcmp oeq float %615, 0.000000e+00
  br i1 %616, label %727, label %617

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.Object, ptr %580, i64 0, i32 27
  %619 = load i32, ptr %618, align 8, !tbaa !84
  %620 = and i32 %619, -65
  store i32 %620, ptr %618, align 8, !tbaa !84
  %621 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %622 = load i32, ptr %621, align 8, !tbaa !89
  %623 = getelementptr inbounds %struct.bArmature, ptr %588, i64 0, i32 8
  %624 = load i32, ptr %623, align 8, !tbaa !55
  %625 = and i32 %624, -13
  store i32 %625, ptr %623, align 8, !tbaa !55
  %626 = getelementptr inbounds %struct.Object, ptr %580, i64 0, i32 60
  %627 = load i16, ptr %626, align 2, !tbaa !106
  %628 = or i16 %627, 1024
  store i16 %628, ptr %626, align 2, !tbaa !106
  %629 = getelementptr inbounds %struct.Object, ptr %580, i64 0, i32 18
  %630 = load ptr, ptr %629, align 8, !tbaa !80
  call void @BKE_pose_copy_data(ptr noundef nonnull %12, ptr noundef %630, i8 noundef zeroext 1) #9
  %631 = load ptr, ptr %12, align 8, !tbaa !63
  store ptr %631, ptr %629, align 8, !tbaa !80
  %632 = load ptr, ptr %587, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef %580, ptr noundef %632) #9
  %633 = load ptr, ptr %587, align 8, !tbaa !41
  %634 = getelementptr inbounds %struct.bArmature, ptr %633, i64 0, i32 8
  %635 = load i32, ptr %634, align 8, !tbaa !55
  %636 = and i32 %635, 4096
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %665, label %638

638:                                              ; preds = %617
  %639 = load ptr, ptr %629, align 8, !tbaa !80
  %640 = load ptr, ptr %639, align 8, !tbaa !63
  %641 = icmp eq ptr %640, null
  br i1 %641, label %665, label %642

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.bArmature, ptr %633, i64 0, i32 15
  br label %644

644:                                              ; preds = %662, %642
  %645 = phi ptr [ %640, %642 ], [ %663, %662 ]
  %646 = getelementptr inbounds %struct.bPoseChannel, ptr %645, i64 0, i32 12
  %647 = load ptr, ptr %646, align 8, !tbaa !107
  %648 = icmp eq ptr %647, null
  br i1 %648, label %662, label %649

649:                                              ; preds = %644
  %650 = load i32, ptr %643, align 8, !tbaa !66
  %651 = getelementptr inbounds %struct.Bone, ptr %647, i64 0, i32 25
  %652 = load i32, ptr %651, align 8, !tbaa !109
  %653 = and i32 %652, %650
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %662, label %655

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.Bone, ptr %647, i64 0, i32 10
  %657 = load i32, ptr %656, align 8, !tbaa !111
  %658 = and i32 %657, 1
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %662

660:                                              ; preds = %655
  %661 = or i32 %657, 65536
  store i32 %661, ptr %656, align 8, !tbaa !111
  br label %662

662:                                              ; preds = %660, %655, %649, %644
  %663 = load ptr, ptr %645, align 8, !tbaa !63
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %644, !llvm.loop !112

665:                                              ; preds = %662, %638, %617
  call void @glEnable(i32 noundef 3042) #9
  %666 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %667 = load i8, ptr %666, align 8, !tbaa !62
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %670, label %669

669:                                              ; preds = %665
  call void @glDisable(i32 noundef 2929) #9
  br label %670

670:                                              ; preds = %669, %665
  %671 = load ptr, ptr %13, align 8, !tbaa !63
  %672 = icmp eq ptr %671, null
  br i1 %672, label %688, label %673

673:                                              ; preds = %670, %673
  %674 = phi ptr [ %686, %673 ], [ %671, %670 ]
  %675 = phi float [ %685, %673 ], [ 0.000000e+00, %670 ]
  %676 = fdiv float %675, %615
  %677 = call float @sqrtf(float noundef %676) #9
  %678 = fmul float %677, 1.200000e+02
  %679 = fptosi float %678 to i32
  %680 = sub nsw i32 -128, %679
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %680) #9
  %681 = getelementptr inbounds %struct.ActKeyColumn, ptr %674, i64 0, i32 8
  %682 = load float, ptr %681, align 4, !tbaa !120
  %683 = fptosi float %682 to i32
  store i32 %683, ptr %621, align 8, !tbaa !89
  %684 = sitofp i32 %683 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %580, ptr noundef %581, float noundef %684, i16 noundef signext 3) #9
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef %580) #9
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %685 = fadd float %675, 1.000000e+00
  %686 = load ptr, ptr %674, align 8, !tbaa !63
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %673, !llvm.loop !122

688:                                              ; preds = %673, %670
  call void @glDisable(i32 noundef 3042) #9
  %689 = load i8, ptr %666, align 8, !tbaa !62
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %692, label %691

691:                                              ; preds = %688
  call void @glEnable(i32 noundef 2929) #9
  br label %692

692:                                              ; preds = %691, %688
  %693 = sitofp i32 %622 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %580, ptr noundef %581, float noundef %693, i16 noundef signext 3) #9
  %694 = load ptr, ptr %587, align 8, !tbaa !41
  %695 = getelementptr inbounds %struct.bArmature, ptr %694, i64 0, i32 8
  %696 = load i32, ptr %695, align 8, !tbaa !55
  %697 = and i32 %696, 4096
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %723, label %699

699:                                              ; preds = %692
  %700 = load ptr, ptr %629, align 8, !tbaa !80
  %701 = load ptr, ptr %700, align 8, !tbaa !63
  %702 = icmp eq ptr %701, null
  br i1 %702, label %723, label %703

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.bArmature, ptr %694, i64 0, i32 15
  br label %705

705:                                              ; preds = %720, %703
  %706 = phi ptr [ %701, %703 ], [ %721, %720 ]
  %707 = getelementptr inbounds %struct.bPoseChannel, ptr %706, i64 0, i32 12
  %708 = load ptr, ptr %707, align 8, !tbaa !107
  %709 = icmp eq ptr %708, null
  br i1 %709, label %720, label %710

710:                                              ; preds = %705
  %711 = load i32, ptr %704, align 8, !tbaa !66
  %712 = getelementptr inbounds %struct.Bone, ptr %708, i64 0, i32 25
  %713 = load i32, ptr %712, align 8, !tbaa !109
  %714 = and i32 %713, %711
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %720, label %716

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.Bone, ptr %708, i64 0, i32 10
  %718 = load i32, ptr %717, align 8, !tbaa !111
  %719 = and i32 %718, -65537
  store i32 %719, ptr %717, align 8, !tbaa !111
  br label %720

720:                                              ; preds = %716, %710, %705
  %721 = load ptr, ptr %706, align 8, !tbaa !63
  %722 = icmp eq ptr %721, null
  br i1 %722, label %723, label %705, !llvm.loop !112

723:                                              ; preds = %720, %699, %692
  call void @BLI_dlrbTree_free(ptr noundef nonnull %13) #9
  %724 = load ptr, ptr %12, align 8, !tbaa !63
  call void @BKE_pose_free(ptr noundef %724) #9
  store i32 %622, ptr %621, align 8, !tbaa !89
  store ptr %630, ptr %629, align 8, !tbaa !80
  store i32 %624, ptr %623, align 8, !tbaa !55
  %725 = load i32, ptr %618, align 8, !tbaa !84
  %726 = or i32 %725, 64
  store i32 %726, ptr %618, align 8, !tbaa !84
  br label %727

727:                                              ; preds = %585, %614, %723
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %897

728:                                              ; preds = %448
  %729 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 17
  %730 = load i16, ptr %729, align 8, !tbaa !123
  %731 = icmp eq i16 %730, 0
  br i1 %731, label %897, label %732

732:                                              ; preds = %728
  %733 = load ptr, ptr %21, align 8, !tbaa !34
  %734 = call ptr @BKE_animdata_from_id(ptr noundef %733) #9
  %735 = getelementptr inbounds %struct.Object, ptr %733, i64 0, i32 19
  %736 = load ptr, ptr %735, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  %737 = icmp eq ptr %734, null
  br i1 %737, label %896, label %738

738:                                              ; preds = %732
  %739 = load ptr, ptr %734, align 8, !tbaa !114
  %740 = icmp eq ptr %739, null
  br i1 %740, label %896, label %741

741:                                              ; preds = %738
  call void @calc_action_range(ptr noundef nonnull %739, ptr noundef nonnull %10, ptr noundef nonnull %11, i16 noundef signext 0) #9
  %742 = load float, ptr %10, align 4, !tbaa !61
  %743 = load float, ptr %11, align 4, !tbaa !61
  %744 = fcmp oeq float %742, %743
  br i1 %744, label %896, label %745

745:                                              ; preds = %741
  %746 = getelementptr inbounds %struct.bArmature, ptr %736, i64 0, i32 18
  %747 = load i16, ptr %746, align 2, !tbaa !88
  %748 = sitofp i16 %747 to float
  %749 = getelementptr inbounds %struct.bArmature, ptr %736, i64 0, i32 17
  %750 = load i16, ptr %749, align 8, !tbaa !123
  %751 = sitofp i16 %750 to float
  %752 = call float @llvm.fmuladd.f32(float %751, float %748, float 5.000000e-01)
  %753 = getelementptr inbounds %struct.Object, ptr %733, i64 0, i32 27
  %754 = load i32, ptr %753, align 8, !tbaa !84
  %755 = and i32 %754, -65
  store i32 %755, ptr %753, align 8, !tbaa !84
  %756 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %757 = load i32, ptr %756, align 8, !tbaa !89
  %758 = sitofp i32 %757 to float
  %759 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %734, float noundef %758, i16 noundef signext 0) #9
  %760 = getelementptr inbounds %struct.bArmature, ptr %736, i64 0, i32 8
  %761 = load i32, ptr %760, align 8, !tbaa !55
  %762 = and i32 %761, -13
  store i32 %762, ptr %760, align 8, !tbaa !55
  %763 = getelementptr inbounds %struct.Object, ptr %733, i64 0, i32 18
  %764 = load ptr, ptr %763, align 8, !tbaa !80
  call void @BKE_pose_copy_data(ptr noundef nonnull %9, ptr noundef %764, i8 noundef zeroext 1) #9
  %765 = load ptr, ptr %9, align 8, !tbaa !63
  store ptr %765, ptr %763, align 8, !tbaa !80
  %766 = load ptr, ptr %735, align 8, !tbaa !41
  call void @BKE_pose_rebuild(ptr noundef %733, ptr noundef %766) #9
  %767 = load ptr, ptr %735, align 8, !tbaa !41
  %768 = getelementptr inbounds %struct.bArmature, ptr %767, i64 0, i32 8
  %769 = load i32, ptr %768, align 8, !tbaa !55
  %770 = and i32 %769, 4096
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %799, label %772

772:                                              ; preds = %745
  %773 = load ptr, ptr %763, align 8, !tbaa !80
  %774 = load ptr, ptr %773, align 8, !tbaa !63
  %775 = icmp eq ptr %774, null
  br i1 %775, label %799, label %776

776:                                              ; preds = %772
  %777 = getelementptr inbounds %struct.bArmature, ptr %767, i64 0, i32 15
  br label %778

778:                                              ; preds = %796, %776
  %779 = phi ptr [ %774, %776 ], [ %797, %796 ]
  %780 = getelementptr inbounds %struct.bPoseChannel, ptr %779, i64 0, i32 12
  %781 = load ptr, ptr %780, align 8, !tbaa !107
  %782 = icmp eq ptr %781, null
  br i1 %782, label %796, label %783

783:                                              ; preds = %778
  %784 = load i32, ptr %777, align 8, !tbaa !66
  %785 = getelementptr inbounds %struct.Bone, ptr %781, i64 0, i32 25
  %786 = load i32, ptr %785, align 8, !tbaa !109
  %787 = and i32 %786, %784
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %796, label %789

789:                                              ; preds = %783
  %790 = getelementptr inbounds %struct.Bone, ptr %781, i64 0, i32 10
  %791 = load i32, ptr %790, align 8, !tbaa !111
  %792 = and i32 %791, 1
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %796

794:                                              ; preds = %789
  %795 = or i32 %791, 65536
  store i32 %795, ptr %790, align 8, !tbaa !111
  br label %796

796:                                              ; preds = %794, %789, %783, %778
  %797 = load ptr, ptr %779, align 8, !tbaa !63
  %798 = icmp eq ptr %797, null
  br i1 %798, label %799, label %778, !llvm.loop !112

799:                                              ; preds = %796, %772, %745
  call void @glEnable(i32 noundef 3042) #9
  %800 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %801 = load i8, ptr %800, align 8, !tbaa !62
  %802 = icmp eq i8 %801, 0
  br i1 %802, label %804, label %803

803:                                              ; preds = %799
  call void @glDisable(i32 noundef 2929) #9
  br label %804

804:                                              ; preds = %803, %799
  %805 = fcmp ogt float %752, %748
  br i1 %805, label %806, label %858

806:                                              ; preds = %804
  %807 = sitofp i32 %757 to double
  %808 = sitofp i16 %747 to double
  %809 = fpext float %758 to double
  br label %810

810:                                              ; preds = %855, %806
  %811 = phi float [ %748, %806 ], [ %856, %855 ]
  %812 = call double @fmod(double noundef %807, double noundef %808) #9
  %813 = fptrunc double %812 to float
  %814 = fsub float %811, %813
  %815 = fdiv float %814, %752
  %816 = call float @sqrtf(float noundef %815) #9
  %817 = fmul float %816, 1.200000e+02
  %818 = fptosi float %817 to i32
  %819 = sub nsw i32 -128, %818
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %819) #9
  %820 = fadd float %759, %814
  %821 = load float, ptr %10, align 4, !tbaa !61
  %822 = fcmp ult float %820, %821
  %823 = load float, ptr %11, align 4
  %824 = fcmp ugt float %820, %823
  %825 = select i1 %822, i1 true, i1 %824
  br i1 %825, label %832, label %826

826:                                              ; preds = %810
  %827 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %734, float noundef %820, i16 noundef signext 2) #9
  %828 = fptosi float %827 to i32
  store i32 %828, ptr %756, align 8, !tbaa !89
  %829 = icmp eq i32 %757, %828
  br i1 %829, label %832, label %830

830:                                              ; preds = %826
  %831 = sitofp i32 %828 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %733, ptr noundef nonnull %734, float noundef %831, i16 noundef signext 3) #9
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef %733) #9
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %832

832:                                              ; preds = %830, %826, %810
  %833 = call double @fmod(double noundef %809, double noundef %808) #9
  %834 = fptrunc double %833 to float
  %835 = fadd float %811, %834
  %836 = fsub float %835, %748
  %837 = fadd float %836, 1.000000e+00
  %838 = fdiv float %837, %752
  %839 = call float @sqrtf(float noundef %838) #9
  %840 = fmul float %839, 1.200000e+02
  %841 = fptosi float %840 to i32
  %842 = sub nsw i32 -128, %841
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef %842) #9
  %843 = fsub float %759, %837
  %844 = load float, ptr %10, align 4, !tbaa !61
  %845 = fcmp ult float %843, %844
  %846 = load float, ptr %11, align 4
  %847 = fcmp ugt float %843, %846
  %848 = select i1 %845, i1 true, i1 %847
  br i1 %848, label %855, label %849

849:                                              ; preds = %832
  %850 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %734, float noundef %843, i16 noundef signext 2) #9
  %851 = fptosi float %850 to i32
  store i32 %851, ptr %756, align 8, !tbaa !89
  %852 = icmp eq i32 %757, %851
  br i1 %852, label %855, label %853

853:                                              ; preds = %849
  %854 = sitofp i32 %851 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %733, ptr noundef nonnull %734, float noundef %854, i16 noundef signext 3) #9
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef %733) #9
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 2, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %855

855:                                              ; preds = %853, %849, %832
  %856 = fadd float %811, %748
  %857 = fcmp olt float %856, %752
  br i1 %857, label %810, label %858, !llvm.loop !124

858:                                              ; preds = %855, %804
  call void @glDisable(i32 noundef 3042) #9
  %859 = load i8, ptr %800, align 8, !tbaa !62
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %862, label %861

861:                                              ; preds = %858
  call void @glEnable(i32 noundef 2929) #9
  br label %862

862:                                              ; preds = %861, %858
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %733, ptr noundef nonnull %734, float noundef %758, i16 noundef signext 3) #9
  %863 = load ptr, ptr %735, align 8, !tbaa !41
  %864 = getelementptr inbounds %struct.bArmature, ptr %863, i64 0, i32 8
  %865 = load i32, ptr %864, align 8, !tbaa !55
  %866 = and i32 %865, 4096
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %892, label %868

868:                                              ; preds = %862
  %869 = load ptr, ptr %763, align 8, !tbaa !80
  %870 = load ptr, ptr %869, align 8, !tbaa !63
  %871 = icmp eq ptr %870, null
  br i1 %871, label %892, label %872

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.bArmature, ptr %863, i64 0, i32 15
  br label %874

874:                                              ; preds = %889, %872
  %875 = phi ptr [ %870, %872 ], [ %890, %889 ]
  %876 = getelementptr inbounds %struct.bPoseChannel, ptr %875, i64 0, i32 12
  %877 = load ptr, ptr %876, align 8, !tbaa !107
  %878 = icmp eq ptr %877, null
  br i1 %878, label %889, label %879

879:                                              ; preds = %874
  %880 = load i32, ptr %873, align 8, !tbaa !66
  %881 = getelementptr inbounds %struct.Bone, ptr %877, i64 0, i32 25
  %882 = load i32, ptr %881, align 8, !tbaa !109
  %883 = and i32 %882, %880
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %889, label %885

885:                                              ; preds = %879
  %886 = getelementptr inbounds %struct.Bone, ptr %877, i64 0, i32 10
  %887 = load i32, ptr %886, align 8, !tbaa !111
  %888 = and i32 %887, -65537
  store i32 %888, ptr %886, align 8, !tbaa !111
  br label %889

889:                                              ; preds = %885, %879, %874
  %890 = load ptr, ptr %875, align 8, !tbaa !63
  %891 = icmp eq ptr %890, null
  br i1 %891, label %892, label %874, !llvm.loop !112

892:                                              ; preds = %889, %868, %862
  %893 = load ptr, ptr %9, align 8, !tbaa !63
  call void @BKE_pose_free(ptr noundef %893) #9
  store i32 %757, ptr %756, align 8, !tbaa !89
  store ptr %764, ptr %763, align 8, !tbaa !80
  store i32 %761, ptr %760, align 8, !tbaa !55
  %894 = load i32, ptr %753, align 8, !tbaa !84
  %895 = or i32 %894, 64
  store i32 %895, ptr %753, align 8, !tbaa !84
  br label %896

896:                                              ; preds = %732, %738, %741, %892
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %897

897:                                              ; preds = %448, %727, %728, %896, %578
  %898 = and i16 %5, 4
  %899 = icmp eq i16 %898, 0
  br i1 %899, label %900, label %954

900:                                              ; preds = %897
  %901 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %902 = load ptr, ptr %901, align 8, !tbaa !125
  %903 = icmp eq ptr %902, null
  br i1 %903, label %907, label %904

904:                                              ; preds = %900
  %905 = getelementptr inbounds %struct.Base, ptr %902, i64 0, i32 7
  %906 = load ptr, ptr %905, align 8, !tbaa !34
  br label %907

907:                                              ; preds = %900, %904
  %908 = phi ptr [ %906, %904 ], [ null, %900 ]
  %909 = icmp eq ptr %22, %908
  br i1 %909, label %923, label %910

910:                                              ; preds = %907
  br i1 %903, label %927, label %911

911:                                              ; preds = %910
  %912 = getelementptr inbounds %struct.Base, ptr %902, i64 0, i32 7
  %913 = load ptr, ptr %912, align 8, !tbaa !34
  %914 = icmp eq ptr %913, null
  br i1 %914, label %927, label %915

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.Object, ptr %913, i64 0, i32 27
  %917 = load i32, ptr %916, align 8, !tbaa !84
  %918 = and i32 %917, 8
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %927, label %920

920:                                              ; preds = %915
  %921 = call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %913) #9
  %922 = icmp eq ptr %22, %921
  br i1 %922, label %923, label %927

923:                                              ; preds = %920, %907
  %924 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 8
  %925 = load i32, ptr %924, align 8, !tbaa !55
  %926 = or i32 %925, 16
  store i32 %926, ptr %924, align 8, !tbaa !55
  br label %927

927:                                              ; preds = %923, %911, %915, %910, %920
  %928 = load ptr, ptr %423, align 8, !tbaa !80
  %929 = getelementptr inbounds %struct.bPose, ptr %928, i64 0, i32 14
  %930 = load ptr, ptr %23, align 8, !tbaa !41
  call void @draw_motion_paths_init(ptr noundef %1, ptr noundef %2) #9
  %931 = load ptr, ptr %423, align 8, !tbaa !80
  %932 = load ptr, ptr %931, align 8, !tbaa !63
  %933 = icmp eq ptr %932, null
  br i1 %933, label %953, label %934

934:                                              ; preds = %927
  %935 = getelementptr inbounds %struct.bArmature, ptr %930, i64 0, i32 15
  br label %936

936:                                              ; preds = %950, %934
  %937 = phi ptr [ %932, %934 ], [ %951, %950 ]
  %938 = getelementptr inbounds %struct.bPoseChannel, ptr %937, i64 0, i32 12
  %939 = load ptr, ptr %938, align 8, !tbaa !107
  %940 = getelementptr inbounds %struct.Bone, ptr %939, i64 0, i32 25
  %941 = load i32, ptr %940, align 8, !tbaa !109
  %942 = load i32, ptr %935, align 8, !tbaa !66
  %943 = and i32 %942, %941
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %950, label %945

945:                                              ; preds = %936
  %946 = getelementptr inbounds %struct.bPoseChannel, ptr %937, i64 0, i32 17
  %947 = load ptr, ptr %946, align 8, !tbaa !126
  %948 = icmp eq ptr %947, null
  br i1 %948, label %950, label %949

949:                                              ; preds = %945
  call void @draw_motion_path_instance(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %937, ptr noundef nonnull %929, ptr noundef nonnull %947) #9
  br label %950

950:                                              ; preds = %949, %945, %936
  %951 = load ptr, ptr %937, align 8, !tbaa !63
  %952 = icmp eq ptr %951, null
  br i1 %952, label %953, label %936, !llvm.loop !127

953:                                              ; preds = %950, %927
  call void @draw_motion_paths_cleanup(ptr noundef %1) #9
  br label %954

954:                                              ; preds = %443, %442, %897, %953, %447, %429
  %955 = trunc i16 %5 to i8
  %956 = and i8 %955, 2
  call fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, ptr noundef %6, i8 noundef zeroext %956, i8 noundef zeroext %7)
  %957 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 8
  %958 = load i32, ptr %957, align 8, !tbaa !55
  %959 = and i32 %958, -17
  store i32 %959, ptr %957, align 8, !tbaa !55
  %960 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 27
  %961 = load i32, ptr %960, align 8, !tbaa !84
  %962 = and i32 %961, 64
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %965, label %964

964:                                              ; preds = %954
  call void @UI_ThemeColor(i32 noundef 25) #9
  br label %965

965:                                              ; preds = %422, %426, %964, %954, %419
  %966 = phi i8 [ 0, %419 ], [ 0, %964 ], [ 0, %954 ], [ 1, %426 ], [ 1, %422 ]
  call void @glFrontFace(i32 noundef 2305) #9
  br label %967

967:                                              ; preds = %8, %965
  %968 = phi i8 [ %966, %965 ], [ 1, %8 ]
  ret i8 %968
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glFrontFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_pose_bones(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca [4 x [3 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x i8], align 1
  %19 = alloca [4 x float], align 16
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #9
  %26 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 14
  store i32 0, ptr %26, align 4, !tbaa !60
  call void @glGetFloatv(i32 noundef 2849, ptr noundef nonnull %13) #9
  %27 = load float, ptr %13, align 4, !tbaa !61
  %28 = fcmp ogt float %27, 0x3FF19999A0000000
  %29 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %30 = load i16, ptr %29, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %99

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %35) #9
  %36 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %37 = load float, ptr %36, align 4, !tbaa !61
  %38 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !61
  %40 = fmul float %39, %39
  %41 = call float @llvm.fmuladd.f32(float %37, float %37, float %40)
  %42 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !61
  %44 = call float @llvm.fmuladd.f32(float %43, float %43, float %41)
  %45 = call float @sqrtf(float noundef %44) #9
  %46 = fdiv float 1.000000e+00, %45
  call void @mul_mat3_m4_fl(ptr noundef nonnull %14, float noundef %46) #9
  %47 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %14) #9
  %48 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !55
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %99, label %52

52:                                               ; preds = %34
  call void @glEnable(i32 noundef 3042) #9
  %53 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %54 = load i8, ptr %53, align 8, !tbaa !62
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void @glDisable(i32 noundef 2929) #9
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  %61 = icmp eq ptr %60, null
  br i1 %61, label %94, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 15
  br label %64

64:                                               ; preds = %62, %91
  %65 = phi ptr [ %60, %62 ], [ %92, %91 ]
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !107
  %68 = icmp eq ptr %67, null
  br i1 %68, label %91, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.Bone, ptr %67, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !111
  %72 = and i32 %71, 69696
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %76 = and i32 %75, 32
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %71, 2097152
  %79 = icmp ne i32 %78, 0
  %80 = and i1 %79, %77
  %81 = and i32 %71, 1
  %82 = icmp eq i32 %81, 0
  %83 = or i1 %82, %80
  br i1 %83, label %91, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.Bone, ptr %67, i64 0, i32 25
  %86 = load i32, ptr %85, align 8, !tbaa !109
  %87 = load i32, ptr %63, align 8, !tbaa !66
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  call fastcc void @draw_sphere_bone_dist(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %65, ptr noundef null)
  br label %91

91:                                               ; preds = %74, %64, %90, %84, %69
  %92 = load ptr, ptr %65, align 8, !tbaa !63
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %64, !llvm.loop !129

94:                                               ; preds = %91, %57
  %95 = load i8, ptr %53, align 8, !tbaa !62
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @glEnable(i32 noundef 2929) #9
  br label %98

98:                                               ; preds = %97, %94
  call void @glDisable(i32 noundef 3042) #9
  br label %99

99:                                               ; preds = %34, %98, %8
  call void @glCullFace(i32 noundef 1029) #9
  %100 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %101 = load i16, ptr %100, align 2, !tbaa !48
  %102 = and i16 %101, 1024
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  call void @glEnable(i32 noundef 2884) #9
  br label %105

105:                                              ; preds = %99, %104
  %106 = phi i8 [ 1, %104 ], [ 0, %99 ]
  %107 = icmp sgt i16 %4, 2
  br i1 %107, label %108, label %310

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 8
  %110 = load i32, ptr %109, align 8, !tbaa !55
  %111 = and i32 %110, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !130
  br label %116

116:                                              ; preds = %113, %108
  %117 = phi i32 [ %115, %113 ], [ -1, %108 ]
  %118 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !80
  %120 = load ptr, ptr %119, align 8, !tbaa !63
  %121 = icmp eq ptr %120, null
  br i1 %121, label %295, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 15
  %124 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 5
  %125 = icmp eq i8 %6, 0
  %126 = icmp eq ptr %23, null
  br label %127

127:                                              ; preds = %122, %287
  %128 = phi ptr [ %120, %122 ], [ %293, %287 ]
  %129 = phi i8 [ %106, %122 ], [ %289, %287 ]
  %130 = phi i8 [ 0, %122 ], [ %288, %287 ]
  %131 = phi i32 [ %117, %122 ], [ %292, %287 ]
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %128, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !107
  %134 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 25
  %135 = load i32, ptr %134, align 8, !tbaa !109
  %136 = load i32, ptr %26, align 4, !tbaa !60
  %137 = or i32 %136, %135
  store i32 %137, ptr %26, align 4, !tbaa !60
  %138 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 10
  %139 = load i32, ptr %138, align 8, !tbaa !111
  %140 = and i32 %139, 65600
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %287

142:                                              ; preds = %127
  %143 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %144 = and i32 %143, 32
  %145 = icmp eq i32 %144, 0
  %146 = and i32 %139, 2097152
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %147, %145
  br i1 %148, label %149, label %287

149:                                              ; preds = %142
  %150 = load i32, ptr %123, align 8, !tbaa !66
  %151 = and i32 %150, %135
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %287, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.bPoseChannel, ptr %128, i64 0, i32 18
  %155 = load ptr, ptr %154, align 8, !tbaa !131
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %109, align 8, !tbaa !55
  %159 = and i32 %158, 1024
  %160 = icmp eq i32 %159, 0
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i1 [ false, %153 ], [ %160, %157 ]
  call void @glPushMatrix() #9
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.bPoseChannel, ptr %128, i64 0, i32 19
  %165 = load ptr, ptr %164, align 8, !tbaa !132
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %161
  br label %168

168:                                              ; preds = %163, %167
  %169 = phi ptr [ %128, %167 ], [ %165, %163 ]
  %170 = getelementptr inbounds %struct.bPoseChannel, ptr %169, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %170) #9
  %171 = load i32, ptr %138, align 8, !tbaa !111
  %172 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !133
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.Bone, ptr %173, i64 0, i32 10
  %177 = load i32, ptr %176, align 8, !tbaa !111
  %178 = and i32 %177, 65600
  %179 = icmp eq i32 %178, 0
  %180 = and i32 %171, -17
  %181 = select i1 %179, i32 %171, i32 %180
  br label %182

182:                                              ; preds = %175, %168
  %183 = phi i32 [ %171, %168 ], [ %181, %175 ]
  %184 = load ptr, ptr %124, align 8, !tbaa !134
  %185 = icmp eq ptr %133, %184
  %186 = or i32 %183, 256
  %187 = select i1 %185, i32 %186, i32 %183
  br i1 %125, label %188, label %238

188:                                              ; preds = %182
  br i1 %126, label %191, label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %118, align 8, !tbaa !80
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi ptr [ %190, %189 ], [ null, %188 ]
  br i1 %126, label %195, label %193

193:                                              ; preds = %191
  %194 = load ptr, ptr %24, align 8, !tbaa !41
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi ptr [ %194, %193 ], [ null, %191 ]
  %197 = icmp eq ptr %196, null
  %198 = select i1 %126, i1 true, i1 %197
  %199 = icmp eq ptr %192, null
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %236, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.bArmature, ptr %196, i64 0, i32 8
  %203 = load i32, ptr %202, align 8, !tbaa !55
  %204 = and i32 %203, 2048
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %221, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.bPoseChannel, ptr %128, i64 0, i32 8
  %208 = load i16, ptr %207, align 2, !tbaa !135
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.bPose, ptr %192, i64 0, i32 9
  %212 = sext i16 %208 to i32
  %213 = add nsw i32 %212, -1
  %214 = call ptr @BLI_findlink(ptr noundef nonnull %211, i32 noundef %213) #9
  %215 = icmp eq ptr %214, null
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.bActionGroup, ptr %214, i64 0, i32 4
  %218 = load i32, ptr %217, align 4, !tbaa !136
  %219 = shl i32 %218, 16
  %220 = ashr exact i32 %219, 16
  br label %221

221:                                              ; preds = %216, %210, %206, %201
  %222 = phi i32 [ %220, %216 ], [ 0, %210 ], [ 0, %206 ], [ 0, %201 ]
  %223 = phi ptr [ %214, %216 ], [ null, %210 ], [ null, %206 ], [ null, %201 ]
  %224 = icmp sgt i32 %222, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = call ptr @UI_GetTheme() #9
  %227 = add nsw i32 %222, -1
  %228 = zext nneg i32 %227 to i64
  %229 = getelementptr inbounds %struct.bTheme, ptr %226, i64 0, i32 21, i64 %228
  br label %236

230:                                              ; preds = %221
  %231 = icmp eq i32 %222, -1
  br i1 %231, label %232, label %236

232:                                              ; preds = %230
  %233 = icmp eq ptr %223, null
  %234 = getelementptr inbounds %struct.bActionGroup, ptr %223, i64 0, i32 6
  %235 = select i1 %233, ptr null, ptr %234
  br label %236

236:                                              ; preds = %230, %195, %225, %232
  %237 = phi ptr [ %235, %232 ], [ %229, %225 ], [ null, %195 ], [ null, %230 ]
  store ptr %237, ptr @bcolor, align 8, !tbaa !63
  br label %238

238:                                              ; preds = %236, %182
  br i1 %162, label %239, label %270

239:                                              ; preds = %238
  %240 = load ptr, ptr %132, align 8, !tbaa !107
  %241 = getelementptr inbounds %struct.Bone, ptr %240, i64 0, i32 10
  %242 = load i32, ptr %241, align 8, !tbaa !111
  %243 = and i32 %242, 131072
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %284

245:                                              ; preds = %239
  %246 = icmp eq i8 %129, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %245
  %248 = load i16, ptr %100, align 2, !tbaa !48
  %249 = and i16 %248, 1024
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  call void @glDisable(i32 noundef 2884) #9
  br label %252

252:                                              ; preds = %251, %247, %245
  %253 = phi i8 [ 0, %251 ], [ %129, %247 ], [ %129, %245 ]
  %254 = load ptr, ptr %154, align 8, !tbaa !131
  %255 = icmp eq ptr %254, null
  br i1 %255, label %284, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 18
  %258 = load float, ptr %257, align 4, !tbaa !139
  %259 = load i32, ptr %109, align 8, !tbaa !55
  call void @glScalef(float noundef %258, float noundef %258, float noundef %258) #9
  %260 = and i32 %259, 16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %256
  %263 = call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %187, i16 noundef signext 0), !range !140
  br label %264

264:                                              ; preds = %262, %256
  %265 = icmp eq i32 %131, -1
  br i1 %265, label %269, label %266

266:                                              ; preds = %264
  %267 = or i32 %131, 1073741824
  %268 = call zeroext i8 @GPU_select_load_id(i32 noundef %267) #9
  br label %269

269:                                              ; preds = %266, %264
  call void @draw_object_instance(ptr noundef %0, ptr noundef %1, ptr noundef %21, ptr noundef nonnull %254, i8 noundef zeroext 3, i32 noundef %260) #9
  br label %284

270:                                              ; preds = %238
  %271 = icmp eq i8 %129, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %270
  call void @glEnable(i32 noundef 2884) #9
  br label %273

273:                                              ; preds = %272, %270
  %274 = phi i8 [ 1, %272 ], [ %129, %270 ]
  %275 = load i32, ptr %31, align 4, !tbaa !51
  switch i32 %275, label %280 [
    i32 1, label %284
    i32 4, label %284
    i32 3, label %276
    i32 2, label %278
  ]

276:                                              ; preds = %273
  %277 = load i32, ptr %109, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone(i32 noundef %277, i32 noundef %187, i32 noundef %131, ptr noundef nonnull %128, ptr noundef null)
  br label %284

278:                                              ; preds = %273
  %279 = load i32, ptr %109, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 3, i32 noundef %279, i32 noundef %187, i16 noundef signext 0, i32 noundef %131, ptr noundef nonnull %128, ptr noundef null)
  br label %284

280:                                              ; preds = %273
  %281 = load i32, ptr %109, align 8, !tbaa !55
  %282 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 18
  %283 = load float, ptr %282, align 4, !tbaa !139
  call fastcc void @draw_bone(i16 noundef signext 3, i32 noundef %281, i32 noundef %187, i16 noundef signext 0, i32 noundef %131, float noundef %283)
  br label %284

284:                                              ; preds = %269, %252, %273, %273, %239, %276, %280, %278
  %285 = phi i8 [ %130, %273 ], [ %130, %276 ], [ %130, %278 ], [ %130, %280 ], [ 1, %239 ], [ %130, %273 ], [ %130, %252 ], [ %130, %269 ]
  %286 = phi i8 [ %274, %273 ], [ %274, %276 ], [ %274, %278 ], [ %274, %280 ], [ %129, %239 ], [ %274, %273 ], [ %253, %252 ], [ %253, %269 ]
  call void @glPopMatrix() #9
  br label %287

287:                                              ; preds = %142, %149, %284, %127
  %288 = phi i8 [ %285, %284 ], [ %130, %149 ], [ %130, %127 ], [ %130, %142 ]
  %289 = phi i8 [ %286, %284 ], [ %129, %149 ], [ %129, %127 ], [ %129, %142 ]
  %290 = icmp eq i32 %131, -1
  %291 = add nsw i32 %131, 65536
  %292 = select i1 %290, i32 -1, i32 %291
  %293 = load ptr, ptr %128, align 8, !tbaa !63
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %127, !llvm.loop !141

295:                                              ; preds = %287, %116
  %296 = phi i32 [ %117, %116 ], [ %292, %287 ]
  %297 = phi i8 [ 0, %116 ], [ %288, %287 ]
  %298 = phi i8 [ %106, %116 ], [ %289, %287 ]
  %299 = load i32, ptr %31, align 4, !tbaa !51
  %300 = icmp ne i32 %299, 1
  %301 = icmp ne i32 %299, 4
  %302 = and i1 %300, %301
  %303 = icmp eq i8 %297, 0
  %304 = select i1 %302, i1 %303, i1 false
  %305 = icmp ne i32 %296, -1
  %306 = select i1 %304, i1 %305, i1 false
  br i1 %306, label %307, label %310

307:                                              ; preds = %295
  %308 = and i32 %296, 65535
  %309 = call zeroext i8 @GPU_select_load_id(i32 noundef %308) #9
  br label %310

310:                                              ; preds = %295, %307, %105
  %311 = phi i32 [ -1, %307 ], [ %296, %295 ], [ -1, %105 ]
  %312 = phi i8 [ %297, %307 ], [ %297, %295 ], [ 0, %105 ]
  %313 = phi i8 [ %298, %307 ], [ %298, %295 ], [ %106, %105 ]
  %314 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 8
  %315 = load i32, ptr %314, align 8, !tbaa !55
  %316 = and i32 %315, 1024
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %483

318:                                              ; preds = %310
  %319 = icmp ne i8 %312, 0
  %320 = icmp slt i16 %4, 3
  %321 = or i1 %320, %319
  br i1 %321, label %322, label %483

322:                                              ; preds = %318
  %323 = and i32 %315, 16
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %327 = load i32, ptr %326, align 4, !tbaa !130
  br label %328

328:                                              ; preds = %325, %322
  %329 = phi i32 [ %327, %325 ], [ %311, %322 ]
  %330 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %331 = load ptr, ptr %330, align 8, !tbaa !80
  %332 = load ptr, ptr %331, align 8, !tbaa !63
  %333 = icmp eq ptr %332, null
  br i1 %333, label %471, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 15
  %336 = icmp eq i8 %6, 0
  %337 = icmp eq ptr %23, null
  %338 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 5
  br label %339

339:                                              ; preds = %334, %465
  %340 = phi ptr [ %332, %334 ], [ %469, %465 ]
  %341 = phi i32 [ %329, %334 ], [ %468, %465 ]
  %342 = getelementptr inbounds %struct.bPoseChannel, ptr %340, i64 0, i32 12
  %343 = load ptr, ptr %342, align 8, !tbaa !107
  %344 = getelementptr inbounds %struct.Bone, ptr %343, i64 0, i32 10
  %345 = load i32, ptr %344, align 8, !tbaa !111
  %346 = and i32 %345, 65600
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %465

348:                                              ; preds = %339
  %349 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %350 = and i32 %349, 32
  %351 = icmp eq i32 %350, 0
  %352 = and i32 %345, 2097152
  %353 = icmp eq i32 %352, 0
  %354 = or i1 %353, %351
  br i1 %354, label %355, label %465

355:                                              ; preds = %348
  %356 = getelementptr inbounds %struct.Bone, ptr %343, i64 0, i32 25
  %357 = load i32, ptr %356, align 8, !tbaa !109
  %358 = load i32, ptr %335, align 8, !tbaa !66
  %359 = and i32 %358, %357
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %465, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.bPoseChannel, ptr %340, i64 0, i32 18
  %363 = load ptr, ptr %362, align 8, !tbaa !131
  %364 = icmp eq ptr %363, null
  br i1 %364, label %465, label %365

365:                                              ; preds = %361
  %366 = and i32 %345, 131072
  %367 = icmp ne i32 %366, 0
  %368 = or i1 %320, %367
  br i1 %368, label %369, label %465

369:                                              ; preds = %365
  call void @glPushMatrix() #9
  %370 = getelementptr inbounds %struct.bPoseChannel, ptr %340, i64 0, i32 19
  %371 = load ptr, ptr %370, align 8, !tbaa !132
  %372 = icmp eq ptr %371, null
  %373 = select i1 %372, ptr %340, ptr %371
  %374 = getelementptr inbounds %struct.bPoseChannel, ptr %373, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %374) #9
  br i1 %336, label %375, label %430

375:                                              ; preds = %369
  %376 = load i32, ptr %314, align 8, !tbaa !55
  %377 = and i32 %376, 16
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %429, label %379

379:                                              ; preds = %375
  br i1 %337, label %382, label %380

380:                                              ; preds = %379
  %381 = load ptr, ptr %330, align 8, !tbaa !80
  br label %382

382:                                              ; preds = %380, %379
  %383 = phi ptr [ %381, %380 ], [ null, %379 ]
  br i1 %337, label %386, label %384

384:                                              ; preds = %382
  %385 = load ptr, ptr %24, align 8, !tbaa !41
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi ptr [ %385, %384 ], [ null, %382 ]
  %388 = icmp eq ptr %387, null
  %389 = select i1 %337, i1 true, i1 %388
  %390 = icmp eq ptr %383, null
  %391 = select i1 %389, i1 true, i1 %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %386
  store ptr null, ptr @bcolor, align 8, !tbaa !63
  br label %430

393:                                              ; preds = %386
  %394 = getelementptr inbounds %struct.bArmature, ptr %387, i64 0, i32 8
  %395 = load i32, ptr %394, align 8, !tbaa !55
  %396 = and i32 %395, 2048
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %413, label %398

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.bPoseChannel, ptr %340, i64 0, i32 8
  %400 = load i16, ptr %399, align 2, !tbaa !135
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %413, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.bPose, ptr %383, i64 0, i32 9
  %404 = sext i16 %400 to i32
  %405 = add nsw i32 %404, -1
  %406 = call ptr @BLI_findlink(ptr noundef nonnull %403, i32 noundef %405) #9
  %407 = icmp eq ptr %406, null
  br i1 %407, label %413, label %408

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.bActionGroup, ptr %406, i64 0, i32 4
  %410 = load i32, ptr %409, align 4, !tbaa !136
  %411 = shl i32 %410, 16
  %412 = ashr exact i32 %411, 16
  br label %413

413:                                              ; preds = %408, %402, %398, %393
  %414 = phi i32 [ %412, %408 ], [ 0, %402 ], [ 0, %398 ], [ 0, %393 ]
  %415 = phi ptr [ %406, %408 ], [ null, %402 ], [ null, %398 ], [ null, %393 ]
  %416 = icmp sgt i32 %414, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %413
  %418 = call ptr @UI_GetTheme() #9
  %419 = add nsw i32 %414, -1
  %420 = zext nneg i32 %419 to i64
  %421 = getelementptr inbounds %struct.bTheme, ptr %418, i64 0, i32 21, i64 %420
  store ptr %421, ptr @bcolor, align 8, !tbaa !63
  br label %430

422:                                              ; preds = %413
  %423 = icmp eq i32 %414, -1
  br i1 %423, label %424, label %428

424:                                              ; preds = %422
  %425 = icmp eq ptr %415, null
  %426 = getelementptr inbounds %struct.bActionGroup, ptr %415, i64 0, i32 6
  %427 = select i1 %425, ptr null, ptr %426
  store ptr %427, ptr @bcolor, align 8, !tbaa !63
  br label %430

428:                                              ; preds = %422
  store ptr null, ptr @bcolor, align 8, !tbaa !63
  br label %430

429:                                              ; preds = %375
  call void @glColor3ubv(ptr noundef %5) #9
  br label %430

430:                                              ; preds = %428, %424, %417, %392, %429, %369
  %431 = load i32, ptr %344, align 8, !tbaa !111
  %432 = getelementptr inbounds %struct.Bone, ptr %343, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !133
  %434 = icmp eq ptr %433, null
  br i1 %434, label %442, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.Bone, ptr %433, i64 0, i32 10
  %437 = load i32, ptr %436, align 8, !tbaa !111
  %438 = and i32 %437, 65600
  %439 = icmp eq i32 %438, 0
  %440 = and i32 %431, -17
  %441 = select i1 %439, i32 %431, i32 %440
  br label %442

442:                                              ; preds = %435, %430
  %443 = phi i32 [ %431, %430 ], [ %441, %435 ]
  %444 = load ptr, ptr %338, align 8, !tbaa !134
  %445 = icmp eq ptr %343, %444
  %446 = or i32 %443, 256
  %447 = select i1 %445, i32 %446, i32 %443
  %448 = load ptr, ptr %362, align 8, !tbaa !131
  %449 = icmp eq ptr %448, null
  br i1 %449, label %464, label %450

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct.Bone, ptr %343, i64 0, i32 18
  %452 = load float, ptr %451, align 4, !tbaa !139
  %453 = load i32, ptr %314, align 8, !tbaa !55
  call void @glScalef(float noundef %452, float noundef %452, float noundef %452) #9
  %454 = and i32 %453, 16
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %458, label %456

456:                                              ; preds = %450
  %457 = call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %447, i16 noundef signext 0), !range !140
  br label %458

458:                                              ; preds = %456, %450
  %459 = icmp eq i32 %341, -1
  br i1 %459, label %463, label %460

460:                                              ; preds = %458
  %461 = or i32 %341, 1073741824
  %462 = call zeroext i8 @GPU_select_load_id(i32 noundef %461) #9
  br label %463

463:                                              ; preds = %460, %458
  call void @draw_object_instance(ptr noundef %0, ptr noundef %1, ptr noundef %21, ptr noundef nonnull %448, i8 noundef zeroext 2, i32 noundef %454) #9
  br label %464

464:                                              ; preds = %442, %463
  call void @glPopMatrix() #9
  br label %465

465:                                              ; preds = %365, %348, %355, %464, %361, %339
  %466 = icmp eq i32 %341, -1
  %467 = add nsw i32 %341, 65536
  %468 = select i1 %466, i32 -1, i32 %467
  %469 = load ptr, ptr %340, align 8, !tbaa !63
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %339, !llvm.loop !142

471:                                              ; preds = %465, %328
  %472 = phi i32 [ %329, %328 ], [ %468, %465 ]
  %473 = load i32, ptr %31, align 4, !tbaa !51
  %474 = icmp ne i32 %473, 1
  %475 = icmp ne i32 %473, 4
  %476 = and i1 %474, %475
  %477 = and i1 %319, %476
  %478 = icmp ne i32 %472, -1
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %483

480:                                              ; preds = %471
  %481 = and i32 %472, 65535
  %482 = call zeroext i8 @GPU_select_load_id(i32 noundef %481) #9
  br label %483

483:                                              ; preds = %471, %480, %318, %310
  %484 = phi i32 [ %311, %310 ], [ -1, %480 ], [ %472, %471 ], [ %311, %318 ]
  %485 = icmp slt i16 %4, 3
  br i1 %485, label %492, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr %314, align 8, !tbaa !55
  %488 = and i32 %487, 16
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %486
  %491 = load i32, ptr %31, align 4, !tbaa !51
  switch i32 %491, label %718 [
    i32 1, label %492
    i32 4, label %492
  ]

492:                                              ; preds = %490, %490, %486, %483
  %493 = load i32, ptr %31, align 4, !tbaa !51
  switch i32 %493, label %501 [
    i32 1, label %494
    i32 4, label %494
  ]

494:                                              ; preds = %492, %492
  %495 = load i32, ptr %314, align 8, !tbaa !55
  %496 = and i32 %495, 16
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %514, label %498

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %500 = load i32, ptr %499, align 4, !tbaa !130
  br label %514

501:                                              ; preds = %492
  br i1 %107, label %502, label %507

502:                                              ; preds = %501
  %503 = load i32, ptr %314, align 8, !tbaa !55
  %504 = and i32 %503, 16
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %502
  call void @ED_view3d_polygon_offset(ptr noundef %21, float noundef 1.000000e+00) #9
  br label %514

507:                                              ; preds = %502, %501
  %508 = load i32, ptr %314, align 8, !tbaa !55
  %509 = and i32 %508, 16
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 3
  %513 = load i32, ptr %512, align 4, !tbaa !130
  br label %514

514:                                              ; preds = %506, %511, %507, %494, %498
  %515 = phi i32 [ %500, %498 ], [ %484, %494 ], [ %484, %506 ], [ %513, %511 ], [ %484, %507 ]
  %516 = icmp eq i8 %313, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  call void @glEnable(i32 noundef 2884) #9
  br label %518

518:                                              ; preds = %517, %514
  %519 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %520 = load ptr, ptr %519, align 8, !tbaa !80
  %521 = load ptr, ptr %520, align 8, !tbaa !63
  %522 = icmp eq ptr %521, null
  br i1 %522, label %709, label %523

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 15
  %525 = and i16 %30, 4
  %526 = icmp ne i16 %525, 0
  %527 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 5
  %528 = icmp eq i8 %6, 0
  %529 = icmp eq ptr %23, null
  %530 = lshr exact i16 %525, 2
  br label %531

531:                                              ; preds = %523, %703
  %532 = phi ptr [ %521, %523 ], [ %707, %703 ]
  %533 = phi i32 [ %515, %523 ], [ %706, %703 ]
  %534 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 12
  %535 = load ptr, ptr %534, align 8, !tbaa !107
  %536 = getelementptr inbounds %struct.Bone, ptr %535, i64 0, i32 25
  %537 = load i32, ptr %536, align 8, !tbaa !109
  %538 = load i32, ptr %26, align 4, !tbaa !60
  %539 = or i32 %538, %537
  store i32 %539, ptr %26, align 4, !tbaa !60
  %540 = getelementptr inbounds %struct.Bone, ptr %535, i64 0, i32 10
  %541 = load i32, ptr %540, align 8, !tbaa !111
  %542 = and i32 %541, 65600
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %703

544:                                              ; preds = %531
  %545 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %546 = and i32 %545, 32
  %547 = icmp eq i32 %546, 0
  %548 = and i32 %541, 2097152
  %549 = icmp eq i32 %548, 0
  %550 = or i1 %549, %547
  br i1 %550, label %551, label %703

551:                                              ; preds = %544
  %552 = load i32, ptr %524, align 8, !tbaa !66
  %553 = and i32 %552, %537
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %703, label %555

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 9
  %557 = load i8, ptr %556, align 8, !tbaa !143
  %558 = zext i8 %557 to i16
  br i1 %28, label %606, label %559

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 13
  %561 = load ptr, ptr %560, align 8, !tbaa !144
  %562 = icmp eq ptr %561, null
  br i1 %562, label %606, label %563

563:                                              ; preds = %559
  %564 = and i32 %541, 16
  %565 = icmp ne i32 %564, 0
  %566 = or i1 %526, %565
  br i1 %566, label %578, label %567

567:                                              ; preds = %563
  %568 = load i32, ptr %314, align 8, !tbaa !55
  %569 = and i32 %568, 16
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %574, label %571

571:                                              ; preds = %567
  %572 = and i32 %533, 65535
  %573 = call zeroext i8 @GPU_select_load_id(i32 noundef %572) #9
  call void @UI_ThemeColor(i32 noundef 25) #9
  br label %574

574:                                              ; preds = %571, %567
  call void @setlinestyle(i32 noundef 3) #9
  call void @glBegin(i32 noundef 1) #9
  %575 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 31
  call void @glVertex3fv(ptr noundef nonnull %575) #9
  %576 = load ptr, ptr %560, align 8, !tbaa !144
  %577 = getelementptr inbounds %struct.bPoseChannel, ptr %576, i64 0, i32 32
  call void @glVertex3fv(ptr noundef nonnull %577) #9
  call void @glEnd() #9
  call void @setlinestyle(i32 noundef 0) #9
  br label %578

578:                                              ; preds = %574, %563
  %579 = load i32, ptr %314, align 8, !tbaa !55
  %580 = and i32 %579, 16
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %606, label %582

582:                                              ; preds = %578
  %583 = zext i8 %557 to i32
  %584 = and i32 %583, 1
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %595, label %586

586:                                              ; preds = %582
  %587 = load i32, ptr %540, align 8, !tbaa !111
  %588 = and i32 %587, 1
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %606, label %590

590:                                              ; preds = %586
  %591 = and i32 %583, 8
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %594, label %593

593:                                              ; preds = %590
  call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext 120, i8 noundef zeroext 0) #9
  br label %603

594:                                              ; preds = %590
  call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext 50) #9
  br label %603

595:                                              ; preds = %582
  %596 = and i32 %583, 32
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %606, label %598

598:                                              ; preds = %595
  %599 = load i32, ptr %540, align 8, !tbaa !111
  %600 = and i32 %599, 1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %606, label %602

602:                                              ; preds = %598
  call void @glColor3ub(i8 noundef zeroext -106, i8 noundef zeroext -56, i8 noundef zeroext 50) #9
  br label %603

603:                                              ; preds = %593, %594, %602
  %604 = and i32 %533, 65535
  %605 = call zeroext i8 @GPU_select_load_id(i32 noundef %604) #9
  call fastcc void @pchan_draw_IK_root_lines(ptr noundef nonnull %532, i16 noundef signext %530)
  br label %606

606:                                              ; preds = %603, %578, %595, %598, %586, %559, %555
  call void @glPushMatrix() #9
  %607 = load i32, ptr %31, align 4, !tbaa !51
  %608 = icmp eq i32 %607, 3
  br i1 %608, label %611, label %609

609:                                              ; preds = %606
  %610 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 29
  call void @glMultMatrixf(ptr noundef nonnull %610) #9
  br label %611

611:                                              ; preds = %609, %606
  %612 = load i32, ptr %540, align 8, !tbaa !111
  %613 = getelementptr inbounds %struct.Bone, ptr %535, i64 0, i32 3
  %614 = load ptr, ptr %613, align 8, !tbaa !133
  %615 = icmp eq ptr %614, null
  br i1 %615, label %623, label %616

616:                                              ; preds = %611
  %617 = getelementptr inbounds %struct.Bone, ptr %614, i64 0, i32 10
  %618 = load i32, ptr %617, align 8, !tbaa !111
  %619 = and i32 %618, 65600
  %620 = icmp eq i32 %619, 0
  %621 = and i32 %612, -17
  %622 = select i1 %620, i32 %612, i32 %621
  br label %623

623:                                              ; preds = %616, %611
  %624 = phi i32 [ %612, %611 ], [ %622, %616 ]
  %625 = load ptr, ptr %527, align 8, !tbaa !134
  %626 = icmp eq ptr %535, %625
  %627 = or i32 %624, 256
  %628 = select i1 %626, i32 %627, i32 %624
  br i1 %528, label %629, label %679

629:                                              ; preds = %623
  br i1 %529, label %632, label %630

630:                                              ; preds = %629
  %631 = load ptr, ptr %519, align 8, !tbaa !80
  br label %632

632:                                              ; preds = %630, %629
  %633 = phi ptr [ %631, %630 ], [ null, %629 ]
  br i1 %529, label %636, label %634

634:                                              ; preds = %632
  %635 = load ptr, ptr %24, align 8, !tbaa !41
  br label %636

636:                                              ; preds = %634, %632
  %637 = phi ptr [ %635, %634 ], [ null, %632 ]
  %638 = icmp eq ptr %637, null
  %639 = select i1 %529, i1 true, i1 %638
  %640 = icmp eq ptr %633, null
  %641 = select i1 %639, i1 true, i1 %640
  br i1 %641, label %677, label %642

642:                                              ; preds = %636
  %643 = getelementptr inbounds %struct.bArmature, ptr %637, i64 0, i32 8
  %644 = load i32, ptr %643, align 8, !tbaa !55
  %645 = and i32 %644, 2048
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %662, label %647

647:                                              ; preds = %642
  %648 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 8
  %649 = load i16, ptr %648, align 2, !tbaa !135
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %662, label %651

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.bPose, ptr %633, i64 0, i32 9
  %653 = sext i16 %649 to i32
  %654 = add nsw i32 %653, -1
  %655 = call ptr @BLI_findlink(ptr noundef nonnull %652, i32 noundef %654) #9
  %656 = icmp eq ptr %655, null
  br i1 %656, label %662, label %657

657:                                              ; preds = %651
  %658 = getelementptr inbounds %struct.bActionGroup, ptr %655, i64 0, i32 4
  %659 = load i32, ptr %658, align 4, !tbaa !136
  %660 = shl i32 %659, 16
  %661 = ashr exact i32 %660, 16
  br label %662

662:                                              ; preds = %657, %651, %647, %642
  %663 = phi i32 [ %661, %657 ], [ 0, %651 ], [ 0, %647 ], [ 0, %642 ]
  %664 = phi ptr [ %655, %657 ], [ null, %651 ], [ null, %647 ], [ null, %642 ]
  %665 = icmp sgt i32 %663, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %662
  %667 = call ptr @UI_GetTheme() #9
  %668 = add nsw i32 %663, -1
  %669 = zext nneg i32 %668 to i64
  %670 = getelementptr inbounds %struct.bTheme, ptr %667, i64 0, i32 21, i64 %669
  br label %677

671:                                              ; preds = %662
  %672 = icmp eq i32 %663, -1
  br i1 %672, label %673, label %677

673:                                              ; preds = %671
  %674 = icmp eq ptr %664, null
  %675 = getelementptr inbounds %struct.bActionGroup, ptr %664, i64 0, i32 6
  %676 = select i1 %674, ptr null, ptr %675
  br label %677

677:                                              ; preds = %671, %636, %666, %673
  %678 = phi ptr [ %676, %673 ], [ %670, %666 ], [ null, %636 ], [ null, %671 ]
  store ptr %678, ptr @bcolor, align 8, !tbaa !63
  br label %679

679:                                              ; preds = %677, %623
  %680 = getelementptr inbounds %struct.bPoseChannel, ptr %532, i64 0, i32 18
  %681 = load ptr, ptr %680, align 8, !tbaa !131
  %682 = icmp eq ptr %681, null
  br i1 %682, label %687, label %683

683:                                              ; preds = %679
  %684 = load i32, ptr %314, align 8, !tbaa !55
  %685 = and i32 %684, 1024
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %702, label %687

687:                                              ; preds = %683, %679
  %688 = load i32, ptr %31, align 4, !tbaa !51
  switch i32 %688, label %698 [
    i32 3, label %689
    i32 1, label %692
    i32 4, label %694
    i32 2, label %696
  ]

689:                                              ; preds = %687
  br i1 %485, label %690, label %702

690:                                              ; preds = %689
  %691 = load i32, ptr %314, align 8, !tbaa !55
  call fastcc void @draw_sphere_bone_wire(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %691, i32 noundef %628, i16 noundef signext %558, i32 noundef %533, ptr noundef nonnull %532, ptr noundef null)
  br label %702

692:                                              ; preds = %687
  %693 = load i32, ptr %314, align 8, !tbaa !55
  call fastcc void @draw_line_bone(i32 noundef %693, i32 noundef %628, i16 noundef signext %558, i32 noundef %533, ptr noundef nonnull %532, ptr noundef null)
  br label %702

694:                                              ; preds = %687
  %695 = load i32, ptr %314, align 8, !tbaa !55
  call fastcc void @draw_wire_bone(i16 noundef signext %4, i32 noundef %695, i32 noundef %628, i16 noundef signext %558, i32 noundef %533, ptr noundef nonnull %532, ptr noundef null)
  br label %702

696:                                              ; preds = %687
  %697 = load i32, ptr %314, align 8, !tbaa !55
  call fastcc void @draw_b_bone(i16 noundef signext 2, i32 noundef %697, i32 noundef %628, i16 noundef signext %558, i32 noundef %533, ptr noundef nonnull %532, ptr noundef null)
  br label %702

698:                                              ; preds = %687
  %699 = load i32, ptr %314, align 8, !tbaa !55
  %700 = getelementptr inbounds %struct.Bone, ptr %535, i64 0, i32 18
  %701 = load float, ptr %700, align 4, !tbaa !139
  call fastcc void @draw_bone(i16 noundef signext 2, i32 noundef %699, i32 noundef %628, i16 noundef signext %558, i32 noundef %533, float noundef %701)
  br label %702

702:                                              ; preds = %690, %689, %694, %698, %696, %692, %683
  call void @glPopMatrix() #9
  br label %703

703:                                              ; preds = %544, %551, %702, %531
  %704 = icmp eq i32 %533, -1
  %705 = add nsw i32 %533, 65536
  %706 = select i1 %704, i32 -1, i32 %705
  %707 = load ptr, ptr %532, align 8, !tbaa !63
  %708 = icmp eq ptr %707, null
  br i1 %708, label %709, label %531, !llvm.loop !145

709:                                              ; preds = %703, %518
  %710 = phi i32 [ %515, %518 ], [ %706, %703 ]
  br i1 %107, label %711, label %718

711:                                              ; preds = %709
  %712 = load i32, ptr %31, align 4, !tbaa !51
  switch i32 %712, label %713 [
    i32 4, label %718
    i32 1, label %718
  ]

713:                                              ; preds = %711
  %714 = load i32, ptr %314, align 8, !tbaa !55
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %718, label %717

717:                                              ; preds = %713
  call void @ED_view3d_polygon_offset(ptr noundef %21, float noundef 0.000000e+00) #9
  br label %718

718:                                              ; preds = %711, %711, %709, %490, %713, %717
  %719 = phi i32 [ %710, %711 ], [ %710, %717 ], [ %710, %713 ], [ %484, %490 ], [ %710, %709 ], [ %710, %711 ]
  %720 = phi i8 [ 1, %711 ], [ 1, %717 ], [ 1, %713 ], [ %313, %490 ], [ 1, %709 ], [ 1, %711 ]
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %723, label %722

722:                                              ; preds = %718
  call void @glDisable(i32 noundef 2884) #9
  br label %723

723:                                              ; preds = %722, %718
  %724 = load i32, ptr %314, align 8, !tbaa !55
  %725 = and i32 %724, 16
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %900, label %727

727:                                              ; preds = %723
  %728 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %729 = load i32, ptr %728, align 8, !tbaa !83
  %730 = and i32 %729, 512
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %900

732:                                              ; preds = %727
  %733 = load i16, ptr %29, align 8, !tbaa !128
  %734 = and i16 %733, 4
  %735 = icmp eq i16 %734, 0
  br i1 %735, label %736, label %900

736:                                              ; preds = %732
  %737 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %738 = load ptr, ptr %737, align 8, !tbaa !80
  %739 = load ptr, ptr %738, align 8, !tbaa !63
  %740 = icmp eq ptr %739, null
  br i1 %740, label %900, label %741

741:                                              ; preds = %736
  %742 = load ptr, ptr %24, align 8, !tbaa !41
  %743 = getelementptr inbounds %struct.bArmature, ptr %742, i64 0, i32 15
  %744 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %745 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  %746 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  %747 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %748 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  br label %749

749:                                              ; preds = %741, %897
  %750 = phi ptr [ %739, %741 ], [ %898, %897 ]
  %751 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 12
  %752 = load ptr, ptr %751, align 8, !tbaa !107
  %753 = icmp eq ptr %752, null
  br i1 %753, label %897, label %754

754:                                              ; preds = %749
  %755 = getelementptr inbounds %struct.Bone, ptr %752, i64 0, i32 10
  %756 = load i32, ptr %755, align 8, !tbaa !111
  %757 = and i32 %756, 65601
  %758 = icmp eq i32 %757, 1
  br i1 %758, label %759, label %897

759:                                              ; preds = %754
  %760 = getelementptr inbounds %struct.Bone, ptr %752, i64 0, i32 25
  %761 = load i32, ptr %760, align 8, !tbaa !109
  %762 = load i32, ptr %743, align 8, !tbaa !66
  %763 = and i32 %762, %761
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %897, label %765

765:                                              ; preds = %759
  %766 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 6
  %767 = load i16, ptr %766, align 2, !tbaa !146
  %768 = and i16 %767, 40
  %769 = icmp eq i16 %768, 0
  br i1 %769, label %897, label %770

770:                                              ; preds = %765
  %771 = call zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef %23, ptr noundef nonnull %750) #9
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %897, label %773

773:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @glPushMatrix() #9
  %774 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 29, i64 3
  %775 = load float, ptr %774, align 4, !tbaa !61
  %776 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 29, i64 3, i64 1
  %777 = load float, ptr %776, align 4, !tbaa !61
  %778 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 29, i64 3, i64 2
  %779 = load float, ptr %778, align 4, !tbaa !61
  call void @glTranslatef(float noundef %775, float noundef %777, float noundef %779) #9
  %780 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 13
  %781 = load ptr, ptr %780, align 8, !tbaa !144
  %782 = icmp eq ptr %781, null
  br i1 %782, label %785, label %783

783:                                              ; preds = %773
  %784 = getelementptr inbounds %struct.bPoseChannel, ptr %781, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %784) #9
  store float 0.000000e+00, ptr %745, align 8, !tbaa !61
  store float 0.000000e+00, ptr %746, align 4, !tbaa !61
  store float 0.000000e+00, ptr %744, align 16, !tbaa !61
  call void @glMultMatrixf(ptr noundef nonnull %10) #9
  br label %785

785:                                              ; preds = %783, %773
  %786 = load ptr, ptr %751, align 8, !tbaa !107
  %787 = getelementptr inbounds %struct.Bone, ptr %786, i64 0, i32 9
  call void @copy_m4_m3(ptr noundef nonnull %10, ptr noundef nonnull %787) #9
  call void @glMultMatrixf(ptr noundef nonnull %10) #9
  %788 = getelementptr inbounds %struct.Bone, ptr %752, i64 0, i32 18
  %789 = load float, ptr %788, align 4, !tbaa !139
  %790 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 21, i64 1
  %791 = load float, ptr %790, align 4, !tbaa !61
  %792 = fmul float %789, %791
  call void @glScalef(float noundef %792, float noundef %792, float noundef %792) #9
  %793 = load i16, ptr %766, align 2, !tbaa !146
  %794 = and i16 %793, 40
  %795 = icmp eq i16 %794, 40
  br i1 %795, label %796, label %832

796:                                              ; preds = %785
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  br label %797

797:                                              ; preds = %796, %797
  %798 = phi i64 [ 0, %796 ], [ %809, %797 ]
  %799 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 33, i64 %798
  %800 = load float, ptr %799, align 4, !tbaa !61
  %801 = fmul float %800, 5.000000e-01
  %802 = call float @sinf(float noundef %801) #9
  %803 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %798
  store float %802, ptr %803, align 4, !tbaa !61
  %804 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 34, i64 %798
  %805 = load float, ptr %804, align 4, !tbaa !61
  %806 = fmul float %805, 5.000000e-01
  %807 = call float @sinf(float noundef %806) #9
  %808 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %798
  store float %807, ptr %808, align 4, !tbaa !61
  %809 = add nuw nsw i64 %798, 1
  %810 = icmp eq i64 %809, 3
  br i1 %810, label %811, label %797, !llvm.loop !147

811:                                              ; preds = %797
  call void @glScalef(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #9
  %812 = load float, ptr %11, align 4, !tbaa !61
  %813 = fcmp une float %812, 0.000000e+00
  %814 = load float, ptr %747, align 4
  %815 = fcmp une float %814, 0.000000e+00
  %816 = select i1 %813, i1 %815, i1 false
  br i1 %816, label %817, label %818

817:                                              ; preds = %811
  call fastcc void @draw_dof_ellipse(float noundef %812, float noundef %814)
  br label %818

818:                                              ; preds = %817, %811
  %819 = load float, ptr %748, align 4
  %820 = fcmp une float %819, 0.000000e+00
  %821 = select i1 %813, i1 %820, i1 false
  br i1 %821, label %822, label %823

822:                                              ; preds = %818
  call fastcc void @draw_dof_ellipse(float noundef %812, float noundef %819)
  br label %823

823:                                              ; preds = %822, %818
  %824 = load float, ptr %12, align 4, !tbaa !61
  %825 = fcmp une float %824, 0.000000e+00
  %826 = select i1 %825, i1 %815, i1 false
  br i1 %826, label %827, label %828

827:                                              ; preds = %823
  call fastcc void @draw_dof_ellipse(float noundef %824, float noundef %814)
  br label %828

828:                                              ; preds = %827, %823
  %829 = select i1 %825, i1 %820, i1 false
  br i1 %829, label %830, label %831

830:                                              ; preds = %828
  call fastcc void @draw_dof_ellipse(float noundef %824, float noundef %819)
  br label %831

831:                                              ; preds = %830, %828
  call void @glScalef(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  br label %832

832:                                              ; preds = %831, %785
  %833 = load i16, ptr %766, align 2, !tbaa !146
  %834 = and i16 %833, 32
  %835 = icmp eq i16 %834, 0
  br i1 %835, label %864, label %836

836:                                              ; preds = %832
  %837 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 33, i64 2
  %838 = load float, ptr %837, align 8, !tbaa !61
  %839 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 34, i64 2
  %840 = load float, ptr %839, align 4, !tbaa !61
  %841 = fadd float %838, %840
  %842 = fmul float %841, 5.000000e-01
  %843 = fmul float %842, 0x404CA5DC20000000
  call void @glRotatef(float noundef %843, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  call void @glColor3ub(i8 noundef zeroext 50, i8 noundef zeroext 50, i8 noundef zeroext -1) #9
  call void @glBegin(i32 noundef 3) #9
  br label %844

844:                                              ; preds = %836, %844
  %845 = phi i32 [ -16, %836 ], [ %860, %844 ]
  %846 = sitofp i32 %845 to float
  %847 = fmul float %846, 6.250000e-02
  %848 = fmul float %847, 5.000000e-01
  %849 = load float, ptr %839, align 4, !tbaa !61
  %850 = load float, ptr %837, align 8, !tbaa !61
  %851 = fsub float %849, %850
  %852 = fmul float %848, %851
  %853 = icmp ne i32 %845, -16
  %854 = call float @sinf(float noundef %852) #9
  %855 = zext i1 %853 to i64
  %856 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %855
  store float %854, ptr %856, align 4, !tbaa !61
  %857 = call float @cosf(float noundef %852) #9
  %858 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %855, i64 1
  store float %857, ptr %858, align 4, !tbaa !61
  %859 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %855, i64 2
  store float 0.000000e+00, ptr %859, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %856) #9
  %860 = add nsw i32 %845, 1
  %861 = icmp eq i32 %860, 17
  br i1 %861, label %862, label %844, !llvm.loop !148

862:                                              ; preds = %844
  call void @glEnd() #9
  %863 = fneg float %843
  call void @glRotatef(float noundef %863, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  br label %864

864:                                              ; preds = %862, %832
  %865 = load i16, ptr %766, align 2, !tbaa !146
  %866 = and i16 %865, 8
  %867 = icmp eq i16 %866, 0
  br i1 %867, label %896, label %868

868:                                              ; preds = %864
  %869 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 33
  %870 = load float, ptr %869, align 8, !tbaa !61
  %871 = getelementptr inbounds %struct.bPoseChannel, ptr %750, i64 0, i32 34
  %872 = load float, ptr %871, align 4, !tbaa !61
  %873 = fadd float %870, %872
  %874 = fmul float %873, 5.000000e-01
  %875 = fmul float %874, 0x404CA5DC20000000
  call void @glRotatef(float noundef %875, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 50, i8 noundef zeroext 50) #9
  call void @glBegin(i32 noundef 3) #9
  br label %876

876:                                              ; preds = %868, %876
  %877 = phi i32 [ -16, %868 ], [ %892, %876 ]
  %878 = sitofp i32 %877 to float
  %879 = fmul float %878, 6.250000e-02
  %880 = fmul float %879, 5.000000e-01
  %881 = load float, ptr %871, align 4, !tbaa !61
  %882 = load float, ptr %869, align 8, !tbaa !61
  %883 = fsub float %881, %882
  %884 = call float @llvm.fmuladd.f32(float %880, float %883, float 0x3FF921FB60000000)
  %885 = icmp eq i32 %877, -16
  %886 = select i1 %885, i64 2, i64 3
  %887 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %886
  store float 0.000000e+00, ptr %887, align 4, !tbaa !61
  %888 = call float @sinf(float noundef %884) #9
  %889 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %886, i64 1
  store float %888, ptr %889, align 4, !tbaa !61
  %890 = call float @cosf(float noundef %884) #9
  %891 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 %886, i64 2
  store float %890, ptr %891, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %887) #9
  %892 = add nsw i32 %877, 1
  %893 = icmp eq i32 %892, 17
  br i1 %893, label %894, label %876, !llvm.loop !149

894:                                              ; preds = %876
  call void @glEnd() #9
  %895 = fneg float %875
  call void @glRotatef(float noundef %895, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br label %896

896:                                              ; preds = %894, %864
  call void @glPopMatrix() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #9
  br label %897

897:                                              ; preds = %896, %770, %765, %759, %754, %749
  %898 = load ptr, ptr %750, align 8, !tbaa !63
  %899 = icmp eq ptr %898, null
  br i1 %899, label %900, label %749, !llvm.loop !150

900:                                              ; preds = %897, %736, %727, %732, %723
  %901 = load i32, ptr %314, align 8, !tbaa !55
  %902 = and i32 %901, 12
  %903 = icmp ne i32 %902, 0
  %904 = icmp eq i8 %7, 0
  %905 = and i1 %904, %903
  br i1 %905, label %906, label %1013

906:                                              ; preds = %900
  %907 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %908 = load i32, ptr %907, align 8, !tbaa !83
  %909 = and i32 %908, 512
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %1013

911:                                              ; preds = %906
  %912 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %913 = and i32 %912, 32
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %1013

915:                                              ; preds = %911
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #9
  %916 = icmp eq i8 %6, 0
  br i1 %916, label %919, label %917

917:                                              ; preds = %915
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #9
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %19) #9
  call void @rgb_float_to_uchar(ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %918 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  store i8 -1, ptr %918, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #9
  br label %928

919:                                              ; preds = %915
  %920 = load i8, ptr %5, align 1, !tbaa !78
  store i8 %920, ptr %18, align 1, !tbaa !78
  %921 = getelementptr inbounds i8, ptr %5, i64 1
  %922 = load i8, ptr %921, align 1, !tbaa !78
  %923 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 1
  store i8 %922, ptr %923, align 1, !tbaa !78
  %924 = getelementptr inbounds i8, ptr %5, i64 2
  %925 = load i8, ptr %924, align 1, !tbaa !78
  %926 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 2
  store i8 %925, ptr %926, align 1, !tbaa !78
  %927 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  store i8 -1, ptr %927, align 1, !tbaa !78
  br label %928

928:                                              ; preds = %919, %917
  %929 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %930 = load i8, ptr %929, align 8, !tbaa !62
  %931 = icmp eq i8 %930, 0
  br i1 %931, label %933, label %932

932:                                              ; preds = %928
  call void @glDisable(i32 noundef 2929) #9
  br label %933

933:                                              ; preds = %932, %928
  %934 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %935 = load ptr, ptr %934, align 8, !tbaa !80
  %936 = load ptr, ptr %935, align 8, !tbaa !63
  %937 = icmp eq ptr %936, null
  br i1 %937, label %1008, label %938

938:                                              ; preds = %933
  %939 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 15
  %940 = getelementptr inbounds [4 x float], ptr %16, i64 1
  %941 = getelementptr inbounds [4 x float], ptr %16, i64 1, i64 1
  %942 = getelementptr inbounds [4 x float], ptr %16, i64 1, i64 2
  %943 = getelementptr inbounds [4 x float], ptr %16, i64 3
  %944 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 1
  %945 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 2
  br label %946

946:                                              ; preds = %938, %1005
  %947 = phi ptr [ %936, %938 ], [ %1006, %1005 ]
  %948 = getelementptr inbounds %struct.bPoseChannel, ptr %947, i64 0, i32 12
  %949 = load ptr, ptr %948, align 8, !tbaa !107
  %950 = getelementptr inbounds %struct.Bone, ptr %949, i64 0, i32 10
  %951 = load i32, ptr %950, align 8, !tbaa !111
  %952 = and i32 %951, 65600
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1005

954:                                              ; preds = %946
  %955 = getelementptr inbounds %struct.Bone, ptr %949, i64 0, i32 25
  %956 = load i32, ptr %955, align 8, !tbaa !109
  %957 = load i32, ptr %939, align 8, !tbaa !66
  %958 = and i32 %957, %956
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %1005, label %960

960:                                              ; preds = %954
  %961 = load i32, ptr %314, align 8, !tbaa !55
  %962 = and i32 %961, 48
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %968, label %964

964:                                              ; preds = %960
  %965 = and i32 %951, 1
  %966 = icmp eq i32 %965, 0
  %967 = select i1 %966, i32 3, i32 4
  br label %969

968:                                              ; preds = %960
  br i1 %107, label %969, label %971

969:                                              ; preds = %968, %964
  %970 = phi i32 [ %967, %964 ], [ 3, %968 ]
  call void @UI_GetThemeColor3ubv(i32 noundef %970, ptr noundef nonnull %18) #9
  br label %971

971:                                              ; preds = %969, %968
  %972 = load i32, ptr %314, align 8, !tbaa !55
  %973 = and i32 %972, 8
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %980, label %975

975:                                              ; preds = %971
  %976 = getelementptr inbounds %struct.bPoseChannel, ptr %947, i64 0, i32 31
  %977 = getelementptr inbounds %struct.bPoseChannel, ptr %947, i64 0, i32 32
  call void @mid_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %976, ptr noundef nonnull %977) #9
  %978 = getelementptr inbounds %struct.bPoseChannel, ptr %947, i64 0, i32 4
  %979 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %978) #10
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %17, ptr noundef nonnull %978, i64 noundef %979, i16 noundef signext 10, i16 noundef signext 0, ptr noundef nonnull %18) #9
  br label %980

980:                                              ; preds = %975, %971
  %981 = load i32, ptr %314, align 8, !tbaa !55
  %982 = and i32 %981, 20
  %983 = icmp eq i32 %982, 20
  br i1 %983, label %984, label %1005

984:                                              ; preds = %980
  call void @glPushMatrix() #9
  %985 = getelementptr inbounds %struct.bPoseChannel, ptr %947, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %985) #9
  %986 = load ptr, ptr %948, align 8, !tbaa !107
  %987 = getelementptr inbounds %struct.Bone, ptr %986, i64 0, i32 18
  %988 = load float, ptr %987, align 4, !tbaa !139
  %989 = load float, ptr %940, align 16, !tbaa !61
  %990 = load float, ptr %941, align 4, !tbaa !61
  %991 = load float, ptr %942, align 8, !tbaa !61
  %992 = fmul float %988, %989
  %993 = fmul float %988, %990
  %994 = fmul float %988, %991
  %995 = load float, ptr %943, align 16, !tbaa !61
  %996 = fadd float %992, %995
  store float %996, ptr %943, align 16, !tbaa !61
  %997 = load float, ptr %944, align 4, !tbaa !61
  %998 = fadd float %993, %997
  store float %998, ptr %944, align 4, !tbaa !61
  %999 = load float, ptr %945, align 8, !tbaa !61
  %1000 = fadd float %994, %999
  store float %1000, ptr %945, align 8, !tbaa !61
  call void @glMultMatrixf(ptr noundef nonnull %16) #9
  call void @glColor3ubv(ptr noundef nonnull %18) #9
  %1001 = load ptr, ptr %948, align 8, !tbaa !107
  %1002 = getelementptr inbounds %struct.Bone, ptr %1001, i64 0, i32 18
  %1003 = load float, ptr %1002, align 4, !tbaa !139
  %1004 = fmul float %1003, 2.500000e-01
  call void @drawaxes(float noundef %1004, i8 noundef zeroext 1) #9
  call void @glPopMatrix() #9
  br label %1005

1005:                                             ; preds = %946, %980, %984, %954
  %1006 = load ptr, ptr %947, align 8, !tbaa !63
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %946, !llvm.loop !151

1008:                                             ; preds = %1005, %933
  %1009 = load i8, ptr %929, align 8, !tbaa !62
  %1010 = icmp eq i8 %1009, 0
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1008
  call void @glEnable(i32 noundef 2929) #9
  br label %1012

1012:                                             ; preds = %1011, %1008
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  br label %1013

1013:                                             ; preds = %911, %1012, %906, %900
  %1014 = icmp eq i32 %719, -1
  br i1 %1014, label %1017, label %1015

1015:                                             ; preds = %1013
  %1016 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #9
  br label %1017

1017:                                             ; preds = %1015, %1013
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_sphere_bone_dist(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %8 = icmp eq ptr %3, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 7
  %11 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = load float, ptr %10, align 4, !tbaa !61
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 8, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 7, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !61
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 8, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !61
  %22 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 7, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !61
  %24 = fsub float %21, %23
  %25 = fmul float %19, %19
  %26 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %26)
  %28 = tail call float @sqrtf(float noundef %27) #9
  %29 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 14
  store float %28, ptr %29, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 19
  %31 = load float, ptr %30, align 4, !tbaa !152
  %32 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !153
  %34 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %9
  %38 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 19
  br label %71

44:                                               ; preds = %37, %9
  %45 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 18
  br label %71

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = getelementptr inbounds %struct.Bone, ptr %48, i64 0, i32 23
  %50 = load float, ptr %49, align 8, !tbaa !154
  %51 = getelementptr inbounds %struct.Bone, ptr %48, i64 0, i32 15
  %52 = load float, ptr %51, align 8, !tbaa !155
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !144
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.Bone, ptr %48, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !111
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.Bone, ptr %63, i64 0, i32 23
  br label %67

65:                                               ; preds = %56, %46
  %66 = getelementptr inbounds %struct.Bone, ptr %48, i64 0, i32 22
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi ptr [ %64, %61 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 32
  br label %71

71:                                               ; preds = %42, %44, %67
  %72 = phi float [ %50, %67 ], [ %31, %44 ], [ %31, %42 ]
  %73 = phi float [ %52, %67 ], [ %33, %44 ], [ %33, %42 ]
  %74 = phi ptr [ %69, %67 ], [ %10, %44 ], [ %10, %42 ]
  %75 = phi ptr [ %70, %67 ], [ %11, %44 ], [ %11, %42 ]
  %76 = phi ptr [ %68, %67 ], [ %45, %44 ], [ %43, %42 ]
  %77 = load float, ptr %76, align 4, !tbaa !61
  %78 = load float, ptr %75, align 4, !tbaa !61
  %79 = load float, ptr %74, align 4, !tbaa !61
  %80 = fsub float %78, %79
  store float %80, ptr %5, align 4, !tbaa !61
  %81 = getelementptr inbounds float, ptr %75, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !61
  %83 = getelementptr inbounds float, ptr %74, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !61
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds float, ptr %5, i64 1
  store float %85, ptr %86, align 4, !tbaa !61
  %87 = getelementptr inbounds float, ptr %75, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !61
  %89 = getelementptr inbounds float, ptr %74, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !61
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds float, ptr %5, i64 2
  store float %91, ptr %92, align 4, !tbaa !61
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %5) #9
  store float 0.000000e+00, ptr %92, align 4, !tbaa !61
  %93 = fcmp une float %77, %72
  br i1 %93, label %94, label %107

94:                                               ; preds = %71
  %95 = load float, ptr %5, align 4, !tbaa !61
  %96 = load float, ptr %86, align 4, !tbaa !61
  %97 = fmul float %96, %96
  %98 = call float @llvm.fmuladd.f32(float %95, float %95, float %97)
  %99 = call float @sqrtf(float noundef %98) #9
  %100 = fsub float %77, %99
  %101 = fcmp ogt float %100, %72
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store float 0.000000e+00, ptr %5, align 4, !tbaa !61
  store float 0.000000e+00, ptr %86, align 4, !tbaa !61
  store float 0.000000e+00, ptr %92, align 4, !tbaa !61
  store float 0x3EE4F8B580000000, ptr %5, align 4, !tbaa !61
  br label %107

103:                                              ; preds = %94
  %104 = fsub float %72, %99
  %105 = fcmp ogt float %104, %77
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store float 0.000000e+00, ptr %5, align 4, !tbaa !61
  store float 0.000000e+00, ptr %86, align 4, !tbaa !61
  store float 0.000000e+00, ptr %92, align 4, !tbaa !61
  store float 0x3EE4F8B580000000, ptr %5, align 4, !tbaa !61
  br label %107

107:                                              ; preds = %102, %106, %103, %71
  %108 = phi float [ %72, %71 ], [ %77, %102 ], [ %72, %106 ], [ %72, %103 ]
  %109 = phi ptr [ %74, %71 ], [ %74, %102 ], [ %75, %106 ], [ %74, %103 ]
  %110 = phi ptr [ %75, %71 ], [ %74, %102 ], [ %75, %106 ], [ %75, %103 ]
  %111 = phi float [ %77, %71 ], [ %77, %102 ], [ %72, %106 ], [ %77, %103 ]
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %5) #9
  %112 = load float, ptr %5, align 4, !tbaa !61
  %113 = load float, ptr %86, align 4, !tbaa !61
  %114 = fmul float %113, %113
  %115 = call float @llvm.fmuladd.f32(float %112, float %112, float %114)
  %116 = load float, ptr %92, align 4, !tbaa !61
  %117 = call float @llvm.fmuladd.f32(float %116, float %116, float %115)
  %118 = fcmp ogt float %117, 0x38AA95A5C0000000
  br i1 %118, label %119, label %129

119:                                              ; preds = %107
  %120 = call float @sqrtf(float noundef %117) #9
  %121 = fdiv float 1.000000e+00, %120
  %122 = load float, ptr %5, align 4, !tbaa !61
  %123 = fmul float %122, %121
  store float %123, ptr %5, align 4, !tbaa !61
  %124 = load float, ptr %86, align 4, !tbaa !61
  %125 = fmul float %121, %124
  store float %125, ptr %86, align 4, !tbaa !61
  %126 = load float, ptr %92, align 4, !tbaa !61
  %127 = fmul float %121, %126
  %128 = fcmp une float %120, 0.000000e+00
  br label %130

129:                                              ; preds = %107
  store float 0.000000e+00, ptr %5, align 4, !tbaa !61
  store float 0.000000e+00, ptr %86, align 4, !tbaa !61
  br label %130

130:                                              ; preds = %119, %129
  %131 = phi float [ 0.000000e+00, %129 ], [ %127, %119 ]
  %132 = phi i1 [ false, %129 ], [ %128, %119 ]
  store float %131, ptr %92, align 4, !tbaa !61
  br i1 %132, label %133, label %251

133:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %134 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %135 = load float, ptr %86, align 4, !tbaa !61
  %136 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !61
  %138 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !61
  %140 = fneg float %131
  %141 = fmul float %139, %140
  %142 = call float @llvm.fmuladd.f32(float %135, float %137, float %141)
  %143 = load float, ptr %134, align 4, !tbaa !61
  %144 = load float, ptr %5, align 4, !tbaa !61
  %145 = fneg float %144
  %146 = fmul float %137, %145
  %147 = call float @llvm.fmuladd.f32(float %131, float %143, float %146)
  %148 = fneg float %135
  %149 = fmul float %143, %148
  %150 = call float @llvm.fmuladd.f32(float %144, float %139, float %149)
  call void @glBegin(i32 noundef 8) #9
  %151 = getelementptr inbounds float, ptr %109, i64 1
  %152 = getelementptr inbounds float, ptr %6, i64 1
  %153 = getelementptr inbounds float, ptr %109, i64 2
  %154 = getelementptr inbounds float, ptr %6, i64 2
  %155 = fadd float %73, %111
  %156 = getelementptr inbounds float, ptr %7, i64 1
  %157 = getelementptr inbounds float, ptr %7, i64 2
  br label %166

158:                                              ; preds = %166
  %159 = getelementptr inbounds float, ptr %110, i64 1
  %160 = getelementptr inbounds float, ptr %6, i64 1
  %161 = getelementptr inbounds float, ptr %110, i64 2
  %162 = getelementptr inbounds float, ptr %6, i64 2
  %163 = fadd float %73, %108
  %164 = getelementptr inbounds float, ptr %7, i64 1
  %165 = getelementptr inbounds float, ptr %7, i64 2
  br label %196

166:                                              ; preds = %133, %166
  %167 = phi i64 [ 0, %133 ], [ %194, %166 ]
  %168 = getelementptr inbounds [16 x float], ptr @si, i64 0, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !61
  %170 = fneg float %169
  %171 = load float, ptr %5, align 4, !tbaa !61
  %172 = getelementptr inbounds [16 x float], ptr @co, i64 0, i64 %167
  %173 = load float, ptr %172, align 4, !tbaa !61
  %174 = fmul float %142, %173
  %175 = call float @llvm.fmuladd.f32(float %170, float %171, float %174)
  %176 = load float, ptr %86, align 4, !tbaa !61
  %177 = fmul float %147, %173
  %178 = call float @llvm.fmuladd.f32(float %170, float %176, float %177)
  %179 = load float, ptr %92, align 4, !tbaa !61
  %180 = fmul float %150, %173
  %181 = call float @llvm.fmuladd.f32(float %170, float %179, float %180)
  %182 = load float, ptr %109, align 4, !tbaa !61
  %183 = call float @llvm.fmuladd.f32(float %175, float %111, float %182)
  store float %183, ptr %6, align 4, !tbaa !61
  %184 = load float, ptr %151, align 4, !tbaa !61
  %185 = call float @llvm.fmuladd.f32(float %178, float %111, float %184)
  store float %185, ptr %152, align 4, !tbaa !61
  %186 = load float, ptr %153, align 4, !tbaa !61
  %187 = call float @llvm.fmuladd.f32(float %181, float %111, float %186)
  store float %187, ptr %154, align 4, !tbaa !61
  %188 = load float, ptr %109, align 4, !tbaa !61
  %189 = call float @llvm.fmuladd.f32(float %175, float %155, float %188)
  store float %189, ptr %7, align 4, !tbaa !61
  %190 = load float, ptr %151, align 4, !tbaa !61
  %191 = call float @llvm.fmuladd.f32(float %178, float %155, float %190)
  store float %191, ptr %156, align 4, !tbaa !61
  %192 = load float, ptr %153, align 4, !tbaa !61
  %193 = call float @llvm.fmuladd.f32(float %181, float %155, float %192)
  store float %193, ptr %157, align 4, !tbaa !61
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #9
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @glVertex3fv(ptr noundef nonnull %7) #9
  %194 = add nuw nsw i64 %167, 1
  %195 = icmp eq i64 %194, 16
  br i1 %195, label %158, label %166, !llvm.loop !156

196:                                              ; preds = %158, %196
  %197 = phi i64 [ 15, %158 ], [ %223, %196 ]
  %198 = getelementptr inbounds [16 x float], ptr @si, i64 0, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !61
  %200 = load float, ptr %5, align 4, !tbaa !61
  %201 = getelementptr inbounds [16 x float], ptr @co, i64 0, i64 %197
  %202 = load float, ptr %201, align 4, !tbaa !61
  %203 = fmul float %142, %202
  %204 = call float @llvm.fmuladd.f32(float %199, float %200, float %203)
  %205 = load float, ptr %86, align 4, !tbaa !61
  %206 = fmul float %147, %202
  %207 = call float @llvm.fmuladd.f32(float %199, float %205, float %206)
  %208 = load float, ptr %92, align 4, !tbaa !61
  %209 = fmul float %150, %202
  %210 = call float @llvm.fmuladd.f32(float %199, float %208, float %209)
  %211 = load float, ptr %110, align 4, !tbaa !61
  %212 = call float @llvm.fmuladd.f32(float %204, float %108, float %211)
  store float %212, ptr %6, align 4, !tbaa !61
  %213 = load float, ptr %159, align 4, !tbaa !61
  %214 = call float @llvm.fmuladd.f32(float %207, float %108, float %213)
  store float %214, ptr %160, align 4, !tbaa !61
  %215 = load float, ptr %161, align 4, !tbaa !61
  %216 = call float @llvm.fmuladd.f32(float %210, float %108, float %215)
  store float %216, ptr %162, align 4, !tbaa !61
  %217 = load float, ptr %110, align 4, !tbaa !61
  %218 = call float @llvm.fmuladd.f32(float %204, float %163, float %217)
  store float %218, ptr %7, align 4, !tbaa !61
  %219 = load float, ptr %159, align 4, !tbaa !61
  %220 = call float @llvm.fmuladd.f32(float %207, float %163, float %219)
  store float %220, ptr %164, align 4, !tbaa !61
  %221 = load float, ptr %161, align 4, !tbaa !61
  %222 = call float @llvm.fmuladd.f32(float %210, float %163, float %221)
  store float %222, ptr %165, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @glVertex3fv(ptr noundef nonnull %7) #9
  %223 = add nsw i64 %197, -1
  %224 = icmp eq i64 %197, 0
  br i1 %224, label %225, label %196, !llvm.loop !157

225:                                              ; preds = %196
  %226 = load float, ptr %5, align 4, !tbaa !61
  %227 = call float @llvm.fmuladd.f32(float %226, float -0.000000e+00, float %142)
  %228 = load float, ptr %86, align 4, !tbaa !61
  %229 = call float @llvm.fmuladd.f32(float %228, float -0.000000e+00, float %147)
  %230 = load float, ptr %92, align 4, !tbaa !61
  %231 = call float @llvm.fmuladd.f32(float %230, float -0.000000e+00, float %150)
  %232 = load float, ptr %109, align 4, !tbaa !61
  %233 = call float @llvm.fmuladd.f32(float %227, float %111, float %232)
  store float %233, ptr %6, align 4, !tbaa !61
  %234 = getelementptr inbounds float, ptr %109, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !61
  %236 = call float @llvm.fmuladd.f32(float %229, float %111, float %235)
  %237 = getelementptr inbounds float, ptr %6, i64 1
  store float %236, ptr %237, align 4, !tbaa !61
  %238 = getelementptr inbounds float, ptr %109, i64 2
  %239 = load float, ptr %238, align 4, !tbaa !61
  %240 = call float @llvm.fmuladd.f32(float %231, float %111, float %239)
  %241 = getelementptr inbounds float, ptr %6, i64 2
  store float %240, ptr %241, align 4, !tbaa !61
  %242 = fadd float %73, %111
  %243 = load float, ptr %109, align 4, !tbaa !61
  %244 = call float @llvm.fmuladd.f32(float %227, float %242, float %243)
  store float %244, ptr %7, align 4, !tbaa !61
  %245 = load float, ptr %234, align 4, !tbaa !61
  %246 = call float @llvm.fmuladd.f32(float %229, float %242, float %245)
  %247 = getelementptr inbounds float, ptr %7, i64 1
  store float %246, ptr %247, align 4, !tbaa !61
  %248 = load float, ptr %238, align 4, !tbaa !61
  %249 = call float @llvm.fmuladd.f32(float %231, float %242, float %248)
  %250 = getelementptr inbounds float, ptr %7, i64 2
  store float %249, ptr %250, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @glVertex3fv(ptr noundef nonnull %7) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %251

251:                                              ; preds = %225, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #3

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_sphere_bone(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) unnamed_addr #0 {
  tail call void @glPushMatrix() #9
  %6 = tail call ptr @gluNewQuadric() #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 14
  %10 = load float, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 19
  %12 = load float, ptr %11, align 4, !tbaa !152
  %13 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !72
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
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 18
  %27 = load float, ptr %26, align 4, !tbaa !139
  %28 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 23
  %29 = load float, ptr %28, align 8, !tbaa !154
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = icmp eq ptr %31, null
  %33 = and i32 %1, 16
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %34, %32
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %31, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !107
  %39 = getelementptr inbounds %struct.Bone, ptr %38, i64 0, i32 23
  br label %42

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.Bone, ptr %25, i64 0, i32 22
  br label %42

42:                                               ; preds = %36, %40, %19, %21
  %43 = phi float [ %10, %19 ], [ %10, %21 ], [ %27, %36 ], [ %27, %40 ]
  %44 = phi float [ %12, %19 ], [ %12, %21 ], [ %29, %36 ], [ %29, %40 ]
  %45 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %39, %36 ], [ %41, %40 ]
  %46 = load float, ptr %45, align 4, !tbaa !61
  tail call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glEnable(i32 noundef 2903) #9
  tail call void @glEnable(i32 noundef 2896) #9
  tail call void @gluQuadricDrawStyle(ptr noundef %6, i32 noundef 100012) #9
  tail call void @glShadeModel(i32 noundef 7425) #9
  %47 = and i32 %0, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = and i32 %1, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @UI_ThemeColor(i32 noundef 34) #9
  br label %60

53:                                               ; preds = %49
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #9
  br label %60

54:                                               ; preds = %42
  %55 = and i32 %0, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 4, i32 noundef %1, i16 noundef signext 0), !range !140
  br label %60

59:                                               ; preds = %54
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #9
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
  %67 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %66) #9
  br label %68

68:                                               ; preds = %65, %63
  %69 = fpext float %46 to double
  tail call void @gluSphere(ptr noundef %6, double noundef %69, i32 noundef 16, i32 noundef 10) #9
  br label %70

70:                                               ; preds = %68, %60
  br i1 %48, label %76, label %71

71:                                               ; preds = %70
  %72 = and i32 %1, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @UI_ThemeColor(i32 noundef 34) #9
  br label %76

75:                                               ; preds = %71
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #9
  br label %76

76:                                               ; preds = %74, %75, %70
  %77 = icmp eq i32 %2, -1
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = or i32 %2, 536870912
  %80 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %79) #9
  br label %81

81:                                               ; preds = %78, %76
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %43) #9
  %82 = fpext float %44 to double
  tail call void @gluSphere(ptr noundef %6, double noundef %82, i32 noundef 16, i32 noundef 10) #9
  %83 = fneg float %43
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %83) #9
  br i1 %48, label %89, label %84

84:                                               ; preds = %81
  %85 = and i32 %1, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 28) #9
  br label %95

88:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %95

89:                                               ; preds = %81
  %90 = and i32 %0, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 3, i32 noundef %1, i16 noundef signext 0), !range !140
  br label %95

94:                                               ; preds = %89
  tail call void @UI_ThemeColor(i32 noundef 74) #9
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
  %105 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %104) #9
  br label %106

106:                                              ; preds = %103, %102
  tail call void @glEnable(i32 noundef 32823) #9
  tail call void @glPolygonOffset(float noundef -1.000000e+00, float noundef -1.000000e+00) #9
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46) #9
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
  tail call void @gluCylinder(ptr noundef %6, double noundef %110, double noundef %114, double noundef %116, i32 noundef 16, i32 noundef 1) #9
  %117 = fneg float %46
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %117) #9
  tail call void @glDisable(i32 noundef 32823) #9
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %98) #9
  tail call void @gluSphere(ptr noundef %6, double noundef %114, i32 noundef 16, i32 noundef 10) #9
  %118 = fsub float %44, %43
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %118) #9
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46) #9
  br label %127

119:                                              ; preds = %95
  %120 = fadd float %43, %46
  %121 = fsub float %120, %44
  %122 = fmul float %121, 5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %122) #9
  %123 = fsub float 1.000000e+00, %97
  %124 = fmul float %44, %123
  %125 = tail call float @llvm.fmuladd.f32(float %97, float %46, float %124)
  %126 = fpext float %125 to double
  br label %127

127:                                              ; preds = %106, %119
  %128 = phi double [ %110, %106 ], [ %126, %119 ]
  tail call void @gluSphere(ptr noundef %6, double noundef %128, i32 noundef 16, i32 noundef 10) #9
  tail call void @glShadeModel(i32 noundef 7424) #9
  tail call void @glDisable(i32 noundef 2896) #9
  tail call void @glDisable(i32 noundef 2903) #9
  tail call void @glPopMatrix() #9
  tail call void @gluDeleteQuadric(ptr noundef %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_b_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !107
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
  %23 = load float, ptr %22, align 4, !tbaa !61
  %24 = load float, ptr %21, align 4, !tbaa !61
  %25 = load float, ptr %20, align 4, !tbaa !61
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  tail call void @glPushMatrix() #9
  tail call void @glScalef(float noundef %24, float noundef %24, float noundef %24) #9
  tail call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4)
  tail call void @glPopMatrix() #9
  %29 = fmul float %24, 0x3FEE666660000000
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi float [ %29, %28 ], [ %24, %19 ]
  %32 = and i32 %1, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = icmp ult i16 %0, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3), !range !140
  br label %60

38:                                               ; preds = %34
  %39 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @glColor3ubv(ptr noundef nonnull %39) #9
  br label %60

42:                                               ; preds = %38
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %60

43:                                               ; preds = %30
  br i1 %27, label %60, label %44

44:                                               ; preds = %43
  %45 = icmp eq i16 %0, 2
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = and i32 %2, 1
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %2, 257
  %50 = icmp eq i32 %49, 257
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @UI_ThemeColor(i32 noundef 39) #9
  br label %60

52:                                               ; preds = %46
  %53 = and i32 %2, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 39, float noundef 0x3FC3333340000000) #9
  br label %60

56:                                               ; preds = %52
  br i1 %48, label %58, label %57

57:                                               ; preds = %56
  tail call void @UI_ThemeColorShade(i32 noundef 39, i32 noundef -20) #9
  br label %60

58:                                               ; preds = %56
  tail call void @UI_ThemeColor(i32 noundef 27) #9
  br label %60

59:                                               ; preds = %44
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %60

60:                                               ; preds = %58, %57, %55, %51, %42, %41, %43, %59, %36
  %61 = icmp eq i32 %4, -1
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = or i32 %4, 1073741824
  %64 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %63) #9
  br label %65

65:                                               ; preds = %62, %60
  %66 = icmp ugt i16 %0, 2
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  tail call void @glEnable(i32 noundef 2903) #9
  tail call void @glEnable(i32 noundef 2896) #9
  br i1 %33, label %68, label %73

68:                                               ; preds = %67
  %69 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @glColor3ubv(ptr noundef nonnull %69) #9
  br label %74

72:                                               ; preds = %68
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %74

73:                                               ; preds = %67
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %74

74:                                               ; preds = %72, %71, %73
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 3, ptr noundef %5, float noundef %25, float noundef %31, float noundef %23)
  tail call void @glDisable(i32 noundef 2903) #9
  tail call void @glDisable(i32 noundef 2896) #9
  br label %85

75:                                               ; preds = %65
  %76 = icmp ne i16 %3, 0
  %77 = and i1 %33, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 2, i32 noundef %2, i16 noundef signext %3), !range !140
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @glEnable(i32 noundef 3042) #9
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 3, ptr noundef %5, float noundef %25, float noundef %31, float noundef %23)
  tail call void @glDisable(i32 noundef 3042) #9
  br label %82

82:                                               ; preds = %81, %78
  %83 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3), !range !140
  br label %84

84:                                               ; preds = %82, %75
  tail call fastcc void @draw_b_bone_boxes(i16 noundef signext 2, ptr noundef %5, float noundef %25, float noundef %31, float noundef %23)
  br label %85

85:                                               ; preds = %84, %74
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_wire_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca [32 x %struct.Mat4], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #9
  %9 = icmp eq ptr %5, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 26
  %14 = load i16, ptr %13, align 4, !tbaa !158
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 18
  %17 = load float, ptr %16, align 4, !tbaa !139
  %18 = icmp sgt i16 %14, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  call void @b_bone_spline_setup(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %8) #9
  br label %23

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %10, %19, %20
  %24 = phi ptr [ %8, %19 ], [ null, %10 ], [ null, %20 ]
  %25 = phi i32 [ %15, %19 ], [ %15, %10 ], [ 0, %20 ]
  %26 = phi float [ %17, %19 ], [ %17, %10 ], [ %22, %20 ]
  %27 = and i32 %1, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  call void @glPushMatrix() #9
  call void @glScalef(float noundef %26, float noundef %26, float noundef %26) #9
  call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4)
  call void @glPopMatrix() #9
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
  %39 = call zeroext i8 @GPU_select_load_id(i32 noundef %38) #9
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25)
  %40 = and i32 %4, 65535
  %41 = call zeroext i8 @GPU_select_load_id(i32 noundef %40) #9
  br label %43

42:                                               ; preds = %35
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25)
  br label %43

43:                                               ; preds = %42, %37, %31
  %44 = and i32 %1, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3), !range !140
  br label %62

48:                                               ; preds = %43
  br i1 %28, label %62, label %49

49:                                               ; preds = %48
  %50 = and i32 %2, 1
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %2, 257
  %53 = icmp eq i32 %52, 257
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @UI_ThemeColor(i32 noundef 39) #9
  br label %62

55:                                               ; preds = %49
  %56 = and i32 %2, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 39, float noundef 0x3FC3333340000000) #9
  br label %62

59:                                               ; preds = %55
  br i1 %51, label %61, label %60

60:                                               ; preds = %59
  call void @UI_ThemeColorShade(i32 noundef 39, i32 noundef -20) #9
  br label %62

61:                                               ; preds = %59
  call void @UI_ThemeColor(i32 noundef 27) #9
  br label %62

62:                                               ; preds = %61, %60, %58, %54, %48, %46
  call fastcc void @draw_wire_bone_segments(ptr noundef %5, ptr noundef %24, float noundef %32, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bone(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4, float noundef %5) unnamed_addr #0 {
  tail call void @glScalef(float noundef %5, float noundef %5, float noundef %5) #9
  %7 = icmp ugt i16 %0, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @glEnable(i32 noundef 2903) #9
  tail call void @glEnable(i32 noundef 2896) #9
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %9

9:                                                ; preds = %8, %6
  %10 = and i32 %1, 16
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = icmp ult i16 %0, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3), !range !140
  br label %21

16:                                               ; preds = %12
  %17 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @glColor3ubv(ptr noundef nonnull %17) #9
  br label %21

20:                                               ; preds = %16
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %21

21:                                               ; preds = %20, %19, %14, %9
  tail call fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %4)
  %22 = icmp eq i32 %4, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = or i32 %4, 1073741824
  %25 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %24) #9
  br label %26

26:                                               ; preds = %23, %21
  %27 = icmp ult i16 %0, 3
  br i1 %27, label %28, label %60

28:                                               ; preds = %26
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = and i32 %2, 1
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %2, 257
  %35 = icmp eq i32 %34, 257
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @UI_ThemeColor(i32 noundef 39) #9
  br label %53

37:                                               ; preds = %31
  %38 = and i32 %2, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 39, float noundef 0x3FC3333340000000) #9
  br label %53

41:                                               ; preds = %37
  br i1 %33, label %43, label %42

42:                                               ; preds = %41
  tail call void @UI_ThemeColorShade(i32 noundef 39, i32 noundef -20) #9
  br label %53

43:                                               ; preds = %41
  tail call void @UI_ThemeColor(i32 noundef 27) #9
  br label %53

44:                                               ; preds = %28
  %45 = icmp ne i16 %3, 0
  %46 = and i1 %11, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 2, i32 noundef %2, i16 noundef signext %3), !range !140
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @glEnable(i32 noundef 3042) #9
  tail call fastcc void @draw_bone_solid_octahedral()
  tail call void @glDisable(i32 noundef 3042) #9
  br label %51

51:                                               ; preds = %50, %47
  %52 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %2, i16 noundef signext %3), !range !140
  br label %53

53:                                               ; preds = %43, %42, %40, %36, %44, %51
  %54 = load i32, ptr @draw_bone_octahedral.displist, align 4, !tbaa !159
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %57, ptr @draw_bone_octahedral.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %57, i32 noundef 4864) #9
  tail call void @glEnableClientState(i32 noundef 32884) #9
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull @bone_octahedral_verts) #9
  tail call void @glDrawElements(i32 noundef 2, i32 noundef 8, i32 noundef 5125, ptr noundef nonnull @bone_octahedral_wire_sides) #9
  tail call void @glDrawElements(i32 noundef 2, i32 noundef 8, i32 noundef 5125, ptr noundef nonnull @bone_octahedral_wire_square) #9
  tail call void @glDisableClientState(i32 noundef 32884) #9
  tail call void @glEndList() #9
  br label %58

58:                                               ; preds = %53, %56
  %59 = load i32, ptr @draw_bone_octahedral.displist, align 4, !tbaa !159
  tail call void @glCallList(i32 noundef %59) #9
  br label %68

60:                                               ; preds = %26
  br i1 %11, label %61, label %66

61:                                               ; preds = %60
  %62 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @glColor3ubv(ptr noundef nonnull %62) #9
  br label %67

65:                                               ; preds = %61
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %67

66:                                               ; preds = %60
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %67

67:                                               ; preds = %65, %64, %66
  tail call fastcc void @draw_bone_solid_octahedral()
  br label %68

68:                                               ; preds = %67, %58
  br i1 %7, label %69, label %70

69:                                               ; preds = %68
  tail call void @glDisable(i32 noundef 2903) #9
  tail call void @glDisable(i32 noundef 2896) #9
  br label %70

70:                                               ; preds = %69, %68
  ret void
}

declare void @glPopMatrix() local_unnamed_addr #3

declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #3

declare void @ED_view3d_polygon_offset(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_sphere_bone_wire(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %11 = icmp eq ptr %7, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7
  %14 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8
  %15 = load float, ptr %14, align 4, !tbaa !61
  %16 = load float, ptr %13, align 4, !tbaa !61
  %17 = fsub float %15, %16
  %18 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !61
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !61
  %25 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !61
  %27 = fsub float %24, %26
  %28 = fmul float %22, %22
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #9
  %32 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 14
  store float %31, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 19
  %34 = load float, ptr %33, align 4, !tbaa !152
  %35 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = icmp eq ptr %36, null
  %38 = and i32 %3, 16
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %39, %37
  %41 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 19
  %42 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 18
  %43 = select i1 %40, ptr %42, ptr %41
  br label %65

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !107
  %47 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 23
  %48 = load float, ptr %47, align 8, !tbaa !154
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !144
  %51 = icmp eq ptr %50, null
  %52 = and i32 %3, 16
  %53 = icmp eq i32 %52, 0
  %54 = or i1 %53, %51
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !107
  %58 = getelementptr inbounds %struct.Bone, ptr %57, i64 0, i32 23
  br label %61

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 22
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %58, %55 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 31
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 32
  br label %65

65:                                               ; preds = %61, %12
  %66 = phi ptr [ %43, %12 ], [ %62, %61 ]
  %67 = phi float [ %34, %12 ], [ %48, %61 ]
  %68 = phi ptr [ %13, %12 ], [ %63, %61 ]
  %69 = phi ptr [ %14, %12 ], [ %64, %61 ]
  %70 = load float, ptr %66, align 4, !tbaa !61
  %71 = and i32 %2, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = and i32 %3, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @UI_ThemeColor(i32 noundef 34) #9
  br label %83

77:                                               ; preds = %73
  tail call void @UI_ThemeColor(i32 noundef 33) #9
  br label %83

78:                                               ; preds = %65
  %79 = and i32 %2, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %3, i16 noundef signext %4), !range !140
  br label %83

83:                                               ; preds = %78, %81, %76, %77
  %84 = and i32 %3, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = icmp eq i32 %5, -1
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  %89 = or i32 %5, 268435456
  %90 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %89) #9
  br label %91

91:                                               ; preds = %88, %86
  tail call void @drawcircball(i32 noundef 2, ptr noundef nonnull %68, float noundef %70, ptr noundef %1) #9
  br label %92

92:                                               ; preds = %91, %83
  br i1 %72, label %97, label %93

93:                                               ; preds = %92
  %94 = and i32 %3, 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %96) #9
  br label %97

97:                                               ; preds = %93, %92
  %98 = icmp eq i32 %5, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %97
  %100 = or i32 %5, 536870912
  %101 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %100) #9
  br label %102

102:                                              ; preds = %99, %97
  tail call void @drawcircball(i32 noundef 2, ptr noundef nonnull %69, float noundef %67, ptr noundef %1) #9
  br i1 %72, label %107, label %103

103:                                              ; preds = %102
  %104 = and i32 %3, 1
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 27, i32 28
  tail call void @UI_ThemeColor(i32 noundef %106) #9
  br label %107

107:                                              ; preds = %103, %102
  %108 = load float, ptr %69, align 4, !tbaa !61
  %109 = load float, ptr %68, align 4, !tbaa !61
  %110 = fsub float %108, %109
  store float %110, ptr %9, align 4, !tbaa !61
  %111 = getelementptr inbounds float, ptr %69, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !61
  %113 = getelementptr inbounds float, ptr %68, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !61
  %115 = fsub float %112, %114
  %116 = getelementptr inbounds float, ptr %9, i64 1
  store float %115, ptr %116, align 4, !tbaa !61
  %117 = getelementptr inbounds float, ptr %69, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !61
  %119 = getelementptr inbounds float, ptr %68, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !61
  %121 = fsub float %118, %120
  %122 = getelementptr inbounds float, ptr %9, i64 2
  store float %121, ptr %122, align 4, !tbaa !61
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %9) #9
  store float 0.000000e+00, ptr %122, align 4, !tbaa !61
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %9) #9
  %123 = load float, ptr %9, align 4, !tbaa !61
  %124 = load float, ptr %116, align 4, !tbaa !61
  %125 = fmul float %124, %124
  %126 = call float @llvm.fmuladd.f32(float %123, float %123, float %125)
  %127 = load float, ptr %122, align 4, !tbaa !61
  %128 = call float @llvm.fmuladd.f32(float %127, float %127, float %126)
  %129 = fcmp ogt float %128, 0x38AA95A5C0000000
  br i1 %129, label %130, label %140

130:                                              ; preds = %107
  %131 = call float @sqrtf(float noundef %128) #9
  %132 = fdiv float 1.000000e+00, %131
  %133 = load float, ptr %9, align 4, !tbaa !61
  %134 = fmul float %133, %132
  store float %134, ptr %9, align 4, !tbaa !61
  %135 = load float, ptr %116, align 4, !tbaa !61
  %136 = fmul float %132, %135
  store float %136, ptr %116, align 4, !tbaa !61
  %137 = load float, ptr %122, align 4, !tbaa !61
  %138 = fmul float %132, %137
  %139 = fcmp une float %131, 0.000000e+00
  br label %141

140:                                              ; preds = %107
  store float 0.000000e+00, ptr %9, align 4, !tbaa !61
  store float 0.000000e+00, ptr %116, align 4, !tbaa !61
  br label %141

141:                                              ; preds = %130, %140
  %142 = phi float [ 0.000000e+00, %140 ], [ %138, %130 ]
  %143 = phi i1 [ false, %140 ], [ %139, %130 ]
  store float %142, ptr %122, align 4, !tbaa !61
  br i1 %143, label %144, label %207

144:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %145 = load float, ptr %9, align 4, !tbaa !61
  store float %145, ptr %10, align 4, !tbaa !61
  %146 = load float, ptr %116, align 4, !tbaa !61
  %147 = getelementptr inbounds float, ptr %10, i64 1
  store float %146, ptr %147, align 4, !tbaa !61
  %148 = getelementptr inbounds float, ptr %10, i64 2
  store float %142, ptr %148, align 4, !tbaa !61
  %149 = fmul float %70, %145
  store float %149, ptr %9, align 4, !tbaa !61
  %150 = fmul float %70, %146
  store float %150, ptr %116, align 4, !tbaa !61
  %151 = fmul float %70, %142
  store float %151, ptr %122, align 4, !tbaa !61
  %152 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %153 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !61
  %155 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !61
  %157 = fneg float %151
  %158 = fmul float %156, %157
  %159 = call float @llvm.fmuladd.f32(float %150, float %154, float %158)
  %160 = load float, ptr %152, align 4, !tbaa !61
  %161 = fneg float %149
  %162 = fmul float %154, %161
  %163 = call float @llvm.fmuladd.f32(float %151, float %160, float %162)
  %164 = fneg float %150
  %165 = fmul float %160, %164
  %166 = call float @llvm.fmuladd.f32(float %149, float %156, float %165)
  %167 = fmul float %67, %145
  store float %167, ptr %10, align 4, !tbaa !61
  %168 = fmul float %67, %146
  store float %168, ptr %147, align 4, !tbaa !61
  %169 = fmul float %67, %142
  store float %169, ptr %148, align 4, !tbaa !61
  %170 = fneg float %169
  %171 = fmul float %156, %170
  %172 = call float @llvm.fmuladd.f32(float %168, float %154, float %171)
  %173 = fneg float %167
  %174 = fmul float %154, %173
  %175 = call float @llvm.fmuladd.f32(float %169, float %160, float %174)
  %176 = fneg float %168
  %177 = fmul float %160, %176
  %178 = call float @llvm.fmuladd.f32(float %167, float %156, float %177)
  br i1 %98, label %182, label %179

179:                                              ; preds = %144
  %180 = or i32 %5, 1073741824
  %181 = call zeroext i8 @GPU_select_load_id(i32 noundef %180) #9
  br label %182

182:                                              ; preds = %179, %144
  call void @glBegin(i32 noundef 1) #9
  %183 = load float, ptr %68, align 4, !tbaa !61
  %184 = fadd float %159, %183
  store float %184, ptr %10, align 4, !tbaa !61
  %185 = load float, ptr %113, align 4, !tbaa !61
  %186 = fadd float %163, %185
  store float %186, ptr %147, align 4, !tbaa !61
  %187 = load float, ptr %119, align 4, !tbaa !61
  %188 = fadd float %166, %187
  store float %188, ptr %148, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  %189 = load float, ptr %69, align 4, !tbaa !61
  %190 = fadd float %172, %189
  store float %190, ptr %10, align 4, !tbaa !61
  %191 = load float, ptr %111, align 4, !tbaa !61
  %192 = fadd float %175, %191
  store float %192, ptr %147, align 4, !tbaa !61
  %193 = load float, ptr %117, align 4, !tbaa !61
  %194 = fadd float %178, %193
  store float %194, ptr %148, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  %195 = load float, ptr %68, align 4, !tbaa !61
  %196 = fsub float %195, %159
  store float %196, ptr %10, align 4, !tbaa !61
  %197 = load float, ptr %113, align 4, !tbaa !61
  %198 = fsub float %197, %163
  store float %198, ptr %147, align 4, !tbaa !61
  %199 = load float, ptr %119, align 4, !tbaa !61
  %200 = fsub float %199, %166
  store float %200, ptr %148, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  %201 = load float, ptr %69, align 4, !tbaa !61
  %202 = fsub float %201, %172
  store float %202, ptr %10, align 4, !tbaa !61
  %203 = load float, ptr %111, align 4, !tbaa !61
  %204 = fsub float %203, %175
  store float %204, ptr %147, align 4, !tbaa !61
  %205 = load float, ptr %117, align 4, !tbaa !61
  %206 = fsub float %205, %178
  store float %206, ptr %148, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  br label %207

207:                                              ; preds = %182, %141
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_line_bone(i32 noundef %0, i32 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  tail call void @glPixelStorei(i32 noundef 3317, i32 noundef 1) #9
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 18
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  %16 = load float, ptr %15, align 4, !tbaa !61
  tail call void @glPushMatrix() #9
  tail call void @glScalef(float noundef %16, float noundef %16, float noundef %16) #9
  %17 = and i32 %0, 48
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %14
  tail call void @glLineWidth(float noundef 4.000000e+00) #9
  %20 = and i32 %0, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 0, i32 noundef %1, i16 noundef signext %2), !range !140
  br label %28

24:                                               ; preds = %19
  %25 = and i32 %0, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @UI_ThemeColor(i32 noundef 27) #9
  br label %28

28:                                               ; preds = %24, %27, %22
  %29 = and i32 %1, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = or i32 %3, 268435456
  %37 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %36) #9
  tail call void @glBegin(i32 noundef 0) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  br label %39

38:                                               ; preds = %31
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot8) #9
  br label %39

39:                                               ; preds = %35, %38, %28
  %40 = icmp eq i32 %3, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = or i32 %3, 1073741824
  %43 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %42) #9
  br label %44

44:                                               ; preds = %41, %39
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  %45 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = or i32 %3, 536870912
  %50 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %49) #9
  tail call void @glBegin(i32 noundef 0) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  br label %52

51:                                               ; preds = %44
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot7) #9
  br label %52

52:                                               ; preds = %51, %48
  br i1 %40, label %56, label %53

53:                                               ; preds = %52
  %54 = and i32 %3, 65535
  %55 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %54) #9
  br label %56

56:                                               ; preds = %53, %52
  br i1 %21, label %59, label %57

57:                                               ; preds = %56
  %58 = tail call fastcc zeroext i8 @set_pchan_glColor(i16 noundef signext 5, i32 noundef %1, i16 noundef signext %2), !range !140
  br label %59

59:                                               ; preds = %56, %57, %14
  tail call void @glLineWidth(float noundef 2.000000e+00) #9
  %60 = and i32 %1, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = and i32 %0, 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = and i32 %1, 2
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %72) #9
  br label %73

73:                                               ; preds = %69, %66
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot6) #9
  br label %74

74:                                               ; preds = %62, %73, %59
  %75 = and i32 %0, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = and i32 %1, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @UI_ThemeColor(i32 noundef 39) #9
  br label %82

81:                                               ; preds = %77
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #9
  br label %82

82:                                               ; preds = %80, %81, %74
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  %83 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  br i1 %76, label %91, label %87

87:                                               ; preds = %86
  %88 = and i32 %1, 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %90) #9
  br label %91

91:                                               ; preds = %87, %86
  tail call void @glRasterPos3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glBitmap(i32 noundef 8, i32 noundef 8, float noundef 4.000000e+00, float noundef 4.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @bm_dot5) #9
  br label %92

92:                                               ; preds = %91, %82
  tail call void @glLineWidth(float noundef 1.000000e+00) #9
  tail call void @glPopMatrix() #9
  ret void
}

declare void @setlinestyle(i32 noundef) local_unnamed_addr #3

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glRasterPos3fv(ptr noundef) local_unnamed_addr #3

declare void @view3d_cached_text_draw_add(ptr noundef, ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

declare void @drawaxes(float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @ED_armature_ebone_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gluNewQuadric() local_unnamed_addr #3

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @glShadeModel(i32 noundef) local_unnamed_addr #3

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @set_pchan_glColor(i16 noundef signext %0, i32 noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  switch i16 %0, label %274 [
    i16 0, label %7
    i16 1, label %83
    i16 2, label %88
    i16 3, label %113
    i16 4, label %155
    i16 5, label %236
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %11 = and i32 %1, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !78
  store i8 %15, ptr %4, align 1, !tbaa !78
  %16 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 2, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !78
  %18 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !78
  %19 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 2, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !78
  %21 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %20, ptr %21, align 1, !tbaa !78
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %13
  %25 = zext i8 %15 to i32
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 80)
  %27 = trunc i32 %26 to i8
  %28 = add i8 %27, -80
  %29 = zext i8 %17 to i32
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 80)
  %31 = trunc i32 %30 to i8
  %32 = add i8 %31, -80
  %33 = zext i8 %20 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 80)
  %35 = trunc i32 %34 to i8
  %36 = add i8 %35, -80
  store i8 %28, ptr %4, align 1, !tbaa !78
  store i8 %32, ptr %18, align 1, !tbaa !78
  store i8 %36, ptr %21, align 1, !tbaa !78
  br label %69

37:                                               ; preds = %10
  %38 = and i32 %1, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 1
  %42 = load i8, ptr %41, align 1, !tbaa !78
  store i8 %42, ptr %4, align 1, !tbaa !78
  %43 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 1, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !78
  %45 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !78
  %46 = getelementptr inbounds %struct.ThemeWireColor, ptr %8, i64 0, i32 1, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !78
  %48 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !78
  br label %69

49:                                               ; preds = %37
  %50 = load i8, ptr %8, align 1, !tbaa !78
  store i8 %50, ptr %4, align 1, !tbaa !78
  %51 = getelementptr inbounds i8, ptr %8, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !78
  %53 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %52, ptr %53, align 1, !tbaa !78
  %54 = getelementptr inbounds i8, ptr %8, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !78
  %56 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %55, ptr %56, align 1, !tbaa !78
  %57 = zext i8 %50 to i32
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 50)
  %59 = trunc i32 %58 to i8
  %60 = add i8 %59, -50
  %61 = zext i8 %52 to i32
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 50)
  %63 = trunc i32 %62 to i8
  %64 = add i8 %63, -50
  %65 = zext i8 %55 to i32
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 50)
  %67 = trunc i32 %66 to i8
  %68 = add i8 %67, -50
  store i8 %60, ptr %4, align 1, !tbaa !78
  store i8 %64, ptr %53, align 1, !tbaa !78
  store i8 %68, ptr %56, align 1, !tbaa !78
  br label %69

69:                                               ; preds = %40, %49, %13, %24
  call void @glColor3ubv(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  br label %275

70:                                               ; preds = %7
  %71 = and i32 %1, 1
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %1, 257
  %74 = icmp eq i32 %73, 257
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  tail call void @UI_ThemeColor(i32 noundef 76) #9
  br label %275

76:                                               ; preds = %70
  %77 = and i32 %1, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void @UI_ThemeColorBlend(i32 noundef 25, i32 noundef 75, float noundef 0x3FC3333340000000) #9
  br label %275

80:                                               ; preds = %76
  br i1 %72, label %82, label %81

81:                                               ; preds = %80
  tail call void @UI_ThemeColor(i32 noundef 75) #9
  br label %275

82:                                               ; preds = %80
  tail call void @UI_ThemeColor(i32 noundef 25) #9
  br label %275

83:                                               ; preds = %3
  %84 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @glColor3ubv(ptr noundef nonnull %84) #9
  br label %275

87:                                               ; preds = %83
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %275

88:                                               ; preds = %3
  %89 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ThemeWireColor, ptr %89, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !160
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %275, label %96

96:                                               ; preds = %91, %88
  %97 = zext nneg i16 %2 to i32
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -106, i8 noundef zeroext 0, i8 noundef zeroext 80) #9
  br label %275

101:                                              ; preds = %96
  %102 = and i32 %97, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 80) #9
  br label %275

105:                                              ; preds = %101
  %106 = and i32 %97, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @glColor4ub(i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 80) #9
  br label %275

109:                                              ; preds = %105
  %110 = and i32 %97, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %275, label %112

112:                                              ; preds = %109
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 120, i8 noundef zeroext 80) #9
  br label %275

113:                                              ; preds = %3
  %114 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %115 = icmp eq ptr %114, null
  br i1 %115, label %146, label %116

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %117 = and i32 %1, 256
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 2
  %121 = load i8, ptr %120, align 1, !tbaa !78
  store i8 %121, ptr %5, align 1, !tbaa !78
  %122 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 2, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !78
  %124 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %123, ptr %124, align 1, !tbaa !78
  %125 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 2, i64 2
  br label %142

126:                                              ; preds = %116
  %127 = and i32 %1, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 1
  %131 = load i8, ptr %130, align 1, !tbaa !78
  store i8 %131, ptr %5, align 1, !tbaa !78
  %132 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 1, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !78
  %134 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %133, ptr %134, align 1, !tbaa !78
  %135 = getelementptr inbounds %struct.ThemeWireColor, ptr %114, i64 0, i32 1, i64 2
  br label %142

136:                                              ; preds = %126
  %137 = load i8, ptr %114, align 1, !tbaa !78
  store i8 %137, ptr %5, align 1, !tbaa !78
  %138 = getelementptr inbounds i8, ptr %114, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !78
  %140 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %139, ptr %140, align 1, !tbaa !78
  %141 = getelementptr inbounds i8, ptr %114, i64 2
  br label %142

142:                                              ; preds = %129, %136, %119
  %143 = phi ptr [ %135, %129 ], [ %141, %136 ], [ %125, %119 ]
  %144 = load i8, ptr %143, align 1, !tbaa !78
  %145 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %144, ptr %145, align 1, !tbaa !78
  call void @glColor3ubv(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %275

146:                                              ; preds = %113
  %147 = and i32 %1, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef 40) #9
  br label %275

150:                                              ; preds = %146
  %151 = and i32 %1, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @UI_ThemeColor(i32 noundef 75) #9
  br label %275

154:                                              ; preds = %150
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %275

155:                                              ; preds = %3
  %156 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %157 = icmp eq ptr %156, null
  br i1 %157, label %227, label %158

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  %159 = and i32 %1, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 2
  %163 = load i8, ptr %162, align 1, !tbaa !78
  store i8 %163, ptr %6, align 1, !tbaa !78
  %164 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 2, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !78
  %166 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %165, ptr %166, align 1, !tbaa !78
  %167 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 2, i64 2
  %168 = load i8, ptr %167, align 1, !tbaa !78
  %169 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %168, ptr %169, align 1, !tbaa !78
  %170 = zext i8 %163 to i32
  %171 = tail call i32 @llvm.smin.i32(i32 %170, i32 245)
  %172 = trunc i32 %171 to i8
  %173 = add nuw i8 %172, 10
  %174 = zext i8 %165 to i32
  %175 = tail call i32 @llvm.smin.i32(i32 %174, i32 245)
  %176 = trunc i32 %175 to i8
  %177 = add nuw i8 %176, 10
  %178 = zext i8 %168 to i32
  %179 = tail call i32 @llvm.smin.i32(i32 %178, i32 245)
  %180 = trunc i32 %179 to i8
  %181 = add nuw i8 %180, 10
  store i8 %173, ptr %6, align 1, !tbaa !78
  store i8 %177, ptr %166, align 1, !tbaa !78
  store i8 %181, ptr %169, align 1, !tbaa !78
  br label %226

182:                                              ; preds = %158
  %183 = and i32 %1, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %206, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 1
  %187 = load i8, ptr %186, align 1, !tbaa !78
  store i8 %187, ptr %6, align 1, !tbaa !78
  %188 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 1, i64 1
  %189 = load i8, ptr %188, align 1, !tbaa !78
  %190 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %189, ptr %190, align 1, !tbaa !78
  %191 = getelementptr inbounds %struct.ThemeWireColor, ptr %156, i64 0, i32 1, i64 2
  %192 = load i8, ptr %191, align 1, !tbaa !78
  %193 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %192, ptr %193, align 1, !tbaa !78
  %194 = zext i8 %187 to i32
  %195 = tail call i32 @llvm.smax.i32(i32 %194, i32 30)
  %196 = trunc i32 %195 to i8
  %197 = add i8 %196, -30
  %198 = zext i8 %189 to i32
  %199 = tail call i32 @llvm.smax.i32(i32 %198, i32 30)
  %200 = trunc i32 %199 to i8
  %201 = add i8 %200, -30
  %202 = zext i8 %192 to i32
  %203 = tail call i32 @llvm.smax.i32(i32 %202, i32 30)
  %204 = trunc i32 %203 to i8
  %205 = add i8 %204, -30
  store i8 %197, ptr %6, align 1, !tbaa !78
  store i8 %201, ptr %190, align 1, !tbaa !78
  store i8 %205, ptr %193, align 1, !tbaa !78
  br label %226

206:                                              ; preds = %182
  %207 = load i8, ptr %156, align 1, !tbaa !78
  store i8 %207, ptr %6, align 1, !tbaa !78
  %208 = getelementptr inbounds i8, ptr %156, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !78
  %210 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %209, ptr %210, align 1, !tbaa !78
  %211 = getelementptr inbounds i8, ptr %156, i64 2
  %212 = load i8, ptr %211, align 1, !tbaa !78
  %213 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %212, ptr %213, align 1, !tbaa !78
  %214 = zext i8 %207 to i32
  %215 = tail call i32 @llvm.smax.i32(i32 %214, i32 30)
  %216 = trunc i32 %215 to i8
  %217 = add i8 %216, -30
  %218 = zext i8 %209 to i32
  %219 = tail call i32 @llvm.smax.i32(i32 %218, i32 30)
  %220 = trunc i32 %219 to i8
  %221 = add i8 %220, -30
  %222 = zext i8 %212 to i32
  %223 = tail call i32 @llvm.smax.i32(i32 %222, i32 30)
  %224 = trunc i32 %223 to i8
  %225 = add i8 %224, -30
  store i8 %217, ptr %6, align 1, !tbaa !78
  store i8 %221, ptr %210, align 1, !tbaa !78
  store i8 %225, ptr %213, align 1, !tbaa !78
  br label %226

226:                                              ; preds = %185, %206, %161
  call void @glColor3ubv(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  br label %275

227:                                              ; preds = %155
  %228 = and i32 %1, 256
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef 10) #9
  br label %275

231:                                              ; preds = %227
  %232 = and i32 %1, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  tail call void @UI_ThemeColorShade(i32 noundef 75, i32 noundef -30) #9
  br label %275

235:                                              ; preds = %231
  tail call void @UI_ThemeColorShade(i32 noundef 74, i32 noundef -30) #9
  br label %275

236:                                              ; preds = %3
  %237 = zext nneg i16 %2 to i32
  %238 = icmp eq i16 %2, 0
  br i1 %238, label %264, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %241 = icmp eq ptr %240, null
  br i1 %241, label %247, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.ThemeWireColor, ptr %240, i64 0, i32 3
  %244 = load i16, ptr %243, align 2, !tbaa !160
  %245 = and i16 %244, 1
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %264, label %247

247:                                              ; preds = %242, %239
  %248 = and i32 %237, 8
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -106, i8 noundef zeroext 0) #9
  br label %275

251:                                              ; preds = %247
  %252 = and i32 %237, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0) #9
  br label %275

255:                                              ; preds = %251
  %256 = and i32 %237, 32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  tail call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 0) #9
  br label %275

259:                                              ; preds = %255
  %260 = and i32 %237, 2
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 120) #9
  br label %275

263:                                              ; preds = %259
  tail call void @UI_ThemeColor(i32 noundef 75) #9
  br label %275

264:                                              ; preds = %242, %236
  %265 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %266 = icmp eq ptr %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load i8, ptr %265, align 1, !tbaa !78
  %269 = getelementptr inbounds i8, ptr %265, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !78
  %271 = getelementptr inbounds i8, ptr %265, i64 2
  %272 = load i8, ptr %271, align 1, !tbaa !78
  tail call void @glColor4ub(i8 noundef zeroext %268, i8 noundef zeroext %270, i8 noundef zeroext %272, i8 noundef zeroext -52) #9
  br label %275

273:                                              ; preds = %264
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #9
  br label %275

274:                                              ; preds = %3
  unreachable

275:                                              ; preds = %230, %235, %234, %226, %254, %262, %263, %258, %250, %273, %267, %142, %153, %154, %149, %91, %100, %108, %112, %109, %104, %86, %87, %69, %79, %82, %81, %75
  %276 = phi i8 [ 1, %75 ], [ 1, %81 ], [ 1, %82 ], [ 1, %79 ], [ 1, %69 ], [ 1, %87 ], [ 1, %86 ], [ 1, %104 ], [ 1, %109 ], [ 1, %112 ], [ 1, %108 ], [ 1, %100 ], [ 0, %91 ], [ 1, %149 ], [ 1, %154 ], [ 1, %153 ], [ 1, %142 ], [ 1, %267 ], [ 1, %273 ], [ 1, %250 ], [ 1, %258 ], [ 1, %263 ], [ 1, %262 ], [ 1, %254 ], [ 0, %226 ], [ 0, %234 ], [ 0, %235 ], [ 0, %230 ]
  ret i8 %276
}

declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glPolygonOffset(float noundef, float noundef) local_unnamed_addr #3

declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #3

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bone_points(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %2, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or i32 %3, 268435456
  %11 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %10) #9
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp slt i16 %0, 3
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = and i32 %1, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @UI_ThemeColor(i32 noundef 34) #9
  br label %31

21:                                               ; preds = %17
  tail call void @UI_ThemeColor(i32 noundef 33) #9
  br label %31

22:                                               ; preds = %12
  %23 = and i32 %1, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @glColor3ubv(ptr noundef nonnull %26) #9
  br label %31

29:                                               ; preds = %25
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %31

30:                                               ; preds = %22
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %31

31:                                               ; preds = %29, %28, %30, %14, %21, %20
  %32 = icmp sgt i16 %0, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call fastcc void @draw_bonevert_solid()
  br label %35

34:                                               ; preds = %31
  tail call fastcc void @draw_bonevert()
  br label %35

35:                                               ; preds = %33, %34, %4
  %36 = icmp eq i32 %3, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = or i32 %3, 536870912
  %39 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %38) #9
  br label %40

40:                                               ; preds = %37, %35
  %41 = icmp slt i16 %0, 3
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = and i32 %1, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = and i32 %2, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @UI_ThemeColor(i32 noundef 34) #9
  br label %59

49:                                               ; preds = %45
  tail call void @UI_ThemeColor(i32 noundef 33) #9
  br label %59

50:                                               ; preds = %40
  %51 = and i32 %1, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @bcolor, align 8, !tbaa !63
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @glColor3ubv(ptr noundef nonnull %54) #9
  br label %59

57:                                               ; preds = %53
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %59

58:                                               ; preds = %50
  tail call void @UI_ThemeColor(i32 noundef 74) #9
  br label %59

59:                                               ; preds = %57, %56, %58, %42, %49, %48
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  %60 = icmp sgt i16 %0, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call fastcc void @draw_bonevert_solid()
  br label %63

62:                                               ; preds = %59
  tail call fastcc void @draw_bonevert()
  br label %63

63:                                               ; preds = %62, %61
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_b_bone_boxes(i16 noundef signext %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [32 x %struct.Mat4], align 16
  %7 = icmp ne ptr %1, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 26
  %12 = load i16, ptr %11, align 4, !tbaa !158
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i32 [ %13, %8 ], [ 0, %5 ]
  %16 = icmp sgt i32 %15, 1
  %17 = and i1 %7, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = sitofp i32 %15 to float
  %20 = fdiv float %3, %19
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #9
  call void @b_bone_spline_setup(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %6) #9
  %21 = icmp eq i16 %0, 3
  %22 = zext i32 %15 to i64
  br label %23

23:                                               ; preds = %18, %28
  %24 = phi i64 [ 0, %18 ], [ %29, %28 ]
  call void @glPushMatrix() #9
  %25 = getelementptr inbounds [32 x %struct.Mat4], ptr %6, i64 0, i64 %24
  call void @glMultMatrixf(ptr noundef nonnull %25) #9
  br i1 %21, label %26, label %27

26:                                               ; preds = %23
  call fastcc void @drawsolidcube_size(float noundef %2, float noundef %20, float noundef %4)
  br label %28

27:                                               ; preds = %23
  call fastcc void @drawcube_size(float noundef %2, float noundef %20, float noundef %4)
  br label %28

28:                                               ; preds = %27, %26
  call void @glPopMatrix() #9
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23, !llvm.loop !161

31:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #9
  br label %37

32:                                               ; preds = %14
  tail call void @glPushMatrix() #9
  %33 = icmp eq i16 %0, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call fastcc void @drawsolidcube_size(float noundef %2, float noundef %3, float noundef %4)
  br label %36

35:                                               ; preds = %32
  tail call fastcc void @drawcube_size(float noundef %2, float noundef %3, float noundef %4)
  br label %36

36:                                               ; preds = %35, %34
  tail call void @glPopMatrix() #9
  br label %37

37:                                               ; preds = %36, %31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bonevert_solid() unnamed_addr #0 {
  %1 = load i32, ptr @draw_bonevert_solid.displist, align 4, !tbaa !159
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %4, ptr @draw_bonevert_solid.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #9
  %5 = tail call ptr @gluNewQuadric() #9
  tail call void @gluQuadricDrawStyle(ptr noundef %5, i32 noundef 100012) #9
  tail call void @glShadeModel(i32 noundef 7425) #9
  tail call void @gluSphere(ptr noundef %5, double noundef 5.000000e-02, i32 noundef 8, i32 noundef 5) #9
  tail call void @glShadeModel(i32 noundef 7424) #9
  tail call void @gluDeleteQuadric(ptr noundef %5) #9
  tail call void @glEndList() #9
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @draw_bonevert_solid.displist, align 4, !tbaa !159
  tail call void @glCallList(i32 noundef %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bonevert() unnamed_addr #0 {
  %1 = load i32, ptr @draw_bonevert.displist, align 4, !tbaa !159
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %4, ptr @draw_bonevert.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #9
  tail call void @glPushMatrix() #9
  %5 = tail call ptr @gluNewQuadric() #9
  tail call void @gluQuadricDrawStyle(ptr noundef %5, i32 noundef 100013) #9
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #9
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #9
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @gluDisk(ptr noundef %5, double noundef 0.000000e+00, double noundef 5.000000e-02, i32 noundef 16, i32 noundef 1) #9
  tail call void @gluDeleteQuadric(ptr noundef %5) #9
  tail call void @glPopMatrix() #9
  tail call void @glEndList() #9
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @draw_bonevert.displist, align 4, !tbaa !159
  tail call void @glCallList(i32 noundef %7) #9
  ret void
}

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #3

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glEndList() local_unnamed_addr #3

declare void @glCallList(i32 noundef) local_unnamed_addr #3

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @b_bone_spline_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @drawsolidcube_size(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  tail call void @glScalef(float noundef %0, float noundef %1, float noundef %2) #9
  %5 = load i32, ptr @drawsolidcube_size.displist, align 4, !tbaa !159
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %8, ptr @drawsolidcube_size.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %8, i32 noundef 4864) #9
  tail call void @glBegin(i32 noundef 7) #9
  store float -1.000000e+00, ptr %4, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull @cube) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #9
  store float 0.000000e+00, ptr %4, align 4, !tbaa !61
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float -1.000000e+00, ptr %9, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull @cube) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #9
  store float 0.000000e+00, ptr %9, align 4, !tbaa !61
  store float 1.000000e+00, ptr %4, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #9
  store float 0.000000e+00, ptr %4, align 4, !tbaa !61
  store float 1.000000e+00, ptr %9, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #9
  store float 0.000000e+00, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %10, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #9
  store float -1.000000e+00, ptr %10, align 4, !tbaa !61
  call void @glNormal3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #9
  call void @glVertex3fv(ptr noundef nonnull @cube) #9
  call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #9
  call void @glEnd() #9
  call void @glEndList() #9
  br label %11

11:                                               ; preds = %7, %3
  %12 = load i32, ptr @drawsolidcube_size.displist, align 4, !tbaa !159
  call void @glCallList(i32 noundef %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @drawcube_size(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @drawcube_size.displist, align 4, !tbaa !159
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %7, ptr @drawcube_size.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %7, i32 noundef 4864) #9
  tail call void @glBegin(i32 noundef 3) #9
  tail call void @glVertex3fv(ptr noundef nonnull @cube) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #9
  tail call void @glVertex3fv(ptr noundef nonnull @cube) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 4)) #9
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 1)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 5)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 2)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 6)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 3)) #9
  tail call void @glVertex3fv(ptr noundef nonnull getelementptr inbounds ([8 x [3 x float]], ptr @cube, i64 0, i64 7)) #9
  tail call void @glEnd() #9
  tail call void @glEndList() #9
  br label %8

8:                                                ; preds = %6, %3
  tail call void @glScalef(float noundef %0, float noundef %1, float noundef %2) #9
  %9 = load i32, ptr @drawcube_size.displist, align 4, !tbaa !159
  tail call void @glCallList(i32 noundef %9) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_wire_bone_segments(ptr noundef readnone %0, ptr noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
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
  tail call void @glPushMatrix() #9
  tail call void @glMultMatrixf(ptr noundef %13) #9
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %10, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  tail call void @glPopMatrix() #9
  %14 = add nuw nsw i32 %12, 1
  %15 = getelementptr inbounds %struct.Mat4, ptr %13, i64 1
  %16 = icmp eq i32 %14, %3
  br i1 %16, label %18, label %11, !llvm.loop !162

17:                                               ; preds = %4
  tail call void @glPushMatrix() #9
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %2, float noundef 0.000000e+00) #9
  tail call void @glEnd() #9
  tail call void @glPopMatrix() #9
  br label %18

18:                                               ; preds = %11, %17
  ret void
}

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bone_solid_octahedral() unnamed_addr #0 {
  %1 = load i32, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !159
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %4, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !159
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #9
  tail call void @glBegin(i32 noundef 4) #9
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %20, %5 ]
  %7 = getelementptr inbounds [8 x [3 x float]], ptr @bone_octahedral_solid_normals, i64 0, i64 %6
  tail call void @glNormal3fv(ptr noundef nonnull %7) #9
  %8 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !159
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %10
  tail call void @glVertex3fv(ptr noundef nonnull %11) #9
  %12 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !159
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %14
  tail call void @glVertex3fv(ptr noundef nonnull %15) #9
  %16 = getelementptr inbounds [8 x [3 x i32]], ptr @bone_octahedral_solid_tris, i64 0, i64 %6, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !159
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x [3 x float]], ptr @bone_octahedral_verts, i64 0, i64 %18
  tail call void @glVertex3fv(ptr noundef nonnull %19) #9
  %20 = add nuw nsw i64 %6, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %5, !llvm.loop !163

22:                                               ; preds = %5
  tail call void @glEnd() #9
  tail call void @glEndList() #9
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i32, ptr @draw_bone_solid_octahedral.displist, align 4, !tbaa !159
  tail call void @glCallList(i32 noundef %24) #9
  ret void
}

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #3

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #3

declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glLineWidth(float noundef) local_unnamed_addr #3

declare void @glRasterPos3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glBitmap(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_pose_free(ptr noundef) local_unnamed_addr #3

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #3

declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #3

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #3

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

declare void @draw_motion_paths_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @draw_motion_path_instance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @draw_motion_paths_cleanup(ptr noundef) local_unnamed_addr #3

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glCullFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @pchan_draw_IK_root_lines(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %8 = icmp eq i16 %1, 0
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 13
  br label %10

10:                                               ; preds = %6, %73
  %11 = phi ptr [ %4, %6 ], [ %74, %73 ]
  %12 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 9
  %13 = load float, ptr %12, align 8, !tbaa !164
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %73, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !166
  switch i16 %17, label %73 [
    i16 3, label %18
    i16 22, label %52
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  br i1 %8, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !168
  %24 = and i16 %23, 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %21, %18
  tail call void @setlinestyle(i32 noundef 3) #9
  tail call void @glBegin(i32 noundef 1) #9
  %27 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !168
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %9, align 8, !tbaa !144
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %32, %31 ], [ %0, %26 ]
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 32
  tail call void @glVertex3fv(ptr noundef nonnull %35) #9
  %36 = getelementptr inbounds %struct.bKinematicConstraint, ptr %20, i64 0, i32 3
  br label %37

37:                                               ; preds = %43, %33
  %38 = phi ptr [ %34, %33 ], [ %41, %43 ]
  %39 = phi i32 [ 0, %33 ], [ %44, %43 ]
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !144
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = add nuw nsw i32 %39, 1
  %45 = load i16, ptr %36, align 4, !tbaa !170
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %44, %46
  %48 = icmp ugt i32 %39, 254
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %37, !llvm.loop !171

50:                                               ; preds = %43, %37
  %51 = icmp eq ptr %38, null
  br i1 %51, label %72, label %69

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !167
  tail call void @setlinestyle(i32 noundef 3) #9
  tail call void @glBegin(i32 noundef 1) #9
  tail call void @glVertex3fv(ptr noundef nonnull %7) #9
  %55 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %54, i64 0, i32 3
  br label %56

56:                                               ; preds = %62, %52
  %57 = phi ptr [ %0, %52 ], [ %60, %62 ]
  %58 = phi i32 [ 0, %52 ], [ %63, %62 ]
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !144
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = add nuw nsw i32 %58, 1
  %64 = load i16, ptr %55, align 2, !tbaa !172
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  %67 = icmp ugt i32 %58, 254
  %68 = or i1 %67, %66
  br i1 %68, label %69, label %56, !llvm.loop !174

69:                                               ; preds = %62, %56, %50
  %70 = phi ptr [ %38, %50 ], [ %57, %56 ], [ %57, %62 ]
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 31
  tail call void @glVertex3fv(ptr noundef nonnull %71) #9
  br label %72

72:                                               ; preds = %69, %50
  tail call void @glEnd() #9
  tail call void @setlinestyle(i32 noundef 0) #9
  br label %73

73:                                               ; preds = %72, %21, %15, %10
  %74 = load ptr, ptr %11, align 8, !tbaa !63
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %10, !llvm.loop !175

76:                                               ; preds = %73, %2
  ret void
}

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @UI_GetTheme() local_unnamed_addr #3

declare void @draw_object_instance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_dof_ellipse(float noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glDepthMask(i8 noundef zeroext 0) #9
  tail call void @glColor4ub(i8 noundef zeroext 70, i8 noundef zeroext 70, i8 noundef zeroext 70, i8 noundef zeroext 50) #9
  tail call void @glBegin(i32 noundef 7) #9
  %11 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %12 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %21 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %23 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  br label %25

25:                                               ; preds = %2, %133
  %26 = phi i64 [ 1, %2 ], [ %134, %133 ]
  %27 = phi i64 [ 16, %2 ], [ %135, %133 ]
  %28 = phi float [ 0.000000e+00, %2 ], [ %30, %133 ]
  %29 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !61
  %31 = sub nuw nsw i64 16, %26
  %32 = fmul float %30, %1
  %33 = fneg float %32
  %34 = fmul float %28, %1
  %35 = fneg float %34
  %36 = fmul float %30, %1
  %37 = fneg float %36
  %38 = fmul float %28, %1
  %39 = fneg float %38
  br label %40

40:                                               ; preds = %25, %130
  %41 = phi i64 [ 1, %25 ], [ %131, %130 ]
  %42 = phi float [ 0.000000e+00, %25 ], [ %44, %130 ]
  %43 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %41
  %44 = load float, ptr %43, align 4, !tbaa !61
  %45 = icmp eq i64 %41, %31
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  call void @glEnd() #9
  call void @glBegin(i32 noundef 4) #9
  %47 = fmul float %42, %0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %48 = fneg float %47
  %49 = call float @llvm.fmuladd.f32(float %48, float %47, float 1.000000e+00)
  %50 = call float @llvm.fmuladd.f32(float %37, float %36, float %49)
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = call float @sqrtf(float noundef %50) #9
  %54 = fmul float %53, 2.000000e+00
  br label %55

55:                                               ; preds = %46, %52
  %56 = phi float [ %54, %52 ], [ 0.000000e+00, %46 ]
  %57 = fmul float %56, %37
  store float %57, ptr %10, align 4, !tbaa !61
  %58 = call float @llvm.fmuladd.f32(float %50, float -2.000000e+00, float 1.000000e+00)
  store float %58, ptr %19, align 4, !tbaa !61
  %59 = fmul float %47, %56
  store float %59, ptr %20, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %60 = call float @llvm.fmuladd.f32(float %39, float %38, float %49)
  %61 = fcmp olt float %60, 0.000000e+00
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = call float @sqrtf(float noundef %60) #9
  %64 = fmul float %63, 2.000000e+00
  br label %65

65:                                               ; preds = %55, %62
  %66 = phi float [ %64, %62 ], [ 0.000000e+00, %55 ]
  %67 = fmul float %66, %39
  store float %67, ptr %9, align 4, !tbaa !61
  %68 = call float @llvm.fmuladd.f32(float %60, float -2.000000e+00, float 1.000000e+00)
  store float %68, ptr %21, align 4, !tbaa !61
  %69 = fmul float %47, %66
  store float %69, ptr %22, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  %70 = fmul float %44, %0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %71 = fneg float %70
  %72 = call float @llvm.fmuladd.f32(float %71, float %70, float 1.000000e+00)
  %73 = call float @llvm.fmuladd.f32(float %39, float %38, float %72)
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = call float @sqrtf(float noundef %73) #9
  %77 = fmul float %76, 2.000000e+00
  br label %78

78:                                               ; preds = %65, %75
  %79 = phi float [ %77, %75 ], [ 0.000000e+00, %65 ]
  %80 = fmul float %79, %39
  store float %80, ptr %8, align 4, !tbaa !61
  %81 = call float @llvm.fmuladd.f32(float %73, float -2.000000e+00, float 1.000000e+00)
  store float %81, ptr %23, align 4, !tbaa !61
  %82 = fmul float %70, %79
  store float %82, ptr %24, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  br label %130

83:                                               ; preds = %40
  %84 = fmul float %44, %0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %85 = fneg float %84
  %86 = call float @llvm.fmuladd.f32(float %85, float %84, float 1.000000e+00)
  %87 = call float @llvm.fmuladd.f32(float %33, float %32, float %86)
  %88 = fcmp olt float %87, 0.000000e+00
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = call float @sqrtf(float noundef %87) #9
  %91 = fmul float %90, 2.000000e+00
  br label %92

92:                                               ; preds = %83, %89
  %93 = phi float [ %91, %89 ], [ 0.000000e+00, %83 ]
  %94 = fmul float %93, %33
  store float %94, ptr %7, align 4, !tbaa !61
  %95 = call float @llvm.fmuladd.f32(float %87, float -2.000000e+00, float 1.000000e+00)
  store float %95, ptr %11, align 4, !tbaa !61
  %96 = fmul float %84, %93
  store float %96, ptr %12, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %97 = call float @llvm.fmuladd.f32(float %35, float %34, float %86)
  %98 = fcmp olt float %97, 0.000000e+00
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = call float @sqrtf(float noundef %97) #9
  %101 = fmul float %100, 2.000000e+00
  br label %102

102:                                              ; preds = %92, %99
  %103 = phi float [ %101, %99 ], [ 0.000000e+00, %92 ]
  %104 = fmul float %103, %35
  store float %104, ptr %6, align 4, !tbaa !61
  %105 = call float @llvm.fmuladd.f32(float %97, float -2.000000e+00, float 1.000000e+00)
  store float %105, ptr %13, align 4, !tbaa !61
  %106 = fmul float %84, %103
  store float %106, ptr %14, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  %107 = fmul float %42, %0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %108 = fneg float %107
  %109 = call float @llvm.fmuladd.f32(float %108, float %107, float 1.000000e+00)
  %110 = call float @llvm.fmuladd.f32(float %35, float %34, float %109)
  %111 = fcmp olt float %110, 0.000000e+00
  br i1 %111, label %115, label %112

112:                                              ; preds = %102
  %113 = call float @sqrtf(float noundef %110) #9
  %114 = fmul float %113, 2.000000e+00
  br label %115

115:                                              ; preds = %102, %112
  %116 = phi float [ %114, %112 ], [ 0.000000e+00, %102 ]
  %117 = fmul float %116, %35
  store float %117, ptr %5, align 4, !tbaa !61
  %118 = call float @llvm.fmuladd.f32(float %110, float -2.000000e+00, float 1.000000e+00)
  store float %118, ptr %15, align 4, !tbaa !61
  %119 = fmul float %107, %116
  store float %119, ptr %16, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %120 = call float @llvm.fmuladd.f32(float %33, float %32, float %109)
  %121 = fcmp olt float %120, 0.000000e+00
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = call float @sqrtf(float noundef %120) #9
  %124 = fmul float %123, 2.000000e+00
  br label %125

125:                                              ; preds = %115, %122
  %126 = phi float [ %124, %122 ], [ 0.000000e+00, %115 ]
  %127 = fmul float %126, %33
  store float %127, ptr %4, align 4, !tbaa !61
  %128 = call float @llvm.fmuladd.f32(float %120, float -2.000000e+00, float 1.000000e+00)
  store float %128, ptr %17, align 4, !tbaa !61
  %129 = fmul float %107, %126
  store float %129, ptr %18, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %130

130:                                              ; preds = %125, %78
  %131 = add nuw nsw i64 %41, 1
  %132 = icmp eq i64 %131, %27
  br i1 %132, label %133, label %40, !llvm.loop !176

133:                                              ; preds = %130
  %134 = add nuw nsw i64 %26, 1
  %135 = add nsw i64 %27, -1
  %136 = icmp eq i64 %134, 16
  br i1 %136, label %137, label %25, !llvm.loop !177

137:                                              ; preds = %133
  call void @glEnd() #9
  call void @glDisable(i32 noundef 3042) #9
  call void @glDepthMask(i8 noundef zeroext 1) #9
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  call void @glBegin(i32 noundef 3) #9
  %138 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %139 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %140

140:                                              ; preds = %137, %158
  %141 = phi i64 [ 0, %137 ], [ %163, %158 ]
  %142 = and i64 %141, 4294967295
  %143 = xor i64 %142, 15
  %144 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !61
  %146 = fmul float %145, %0
  %147 = getelementptr inbounds [16 x float], ptr @__const.draw_dof_ellipse.staticSine, i64 0, i64 %141
  %148 = load float, ptr %147, align 4, !tbaa !61
  %149 = fmul float %148, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %150 = fneg float %146
  %151 = call float @llvm.fmuladd.f32(float %150, float %146, float 1.000000e+00)
  %152 = fneg float %149
  %153 = call float @llvm.fmuladd.f32(float %152, float %149, float %151)
  %154 = fcmp olt float %153, 0.000000e+00
  br i1 %154, label %158, label %155

155:                                              ; preds = %140
  %156 = call float @sqrtf(float noundef %153) #9
  %157 = fmul float %156, 2.000000e+00
  br label %158

158:                                              ; preds = %140, %155
  %159 = phi float [ %157, %155 ], [ 0.000000e+00, %140 ]
  %160 = fmul float %159, %152
  store float %160, ptr %3, align 4, !tbaa !61
  %161 = call float @llvm.fmuladd.f32(float %153, float -2.000000e+00, float 1.000000e+00)
  store float %161, ptr %138, align 4, !tbaa !61
  %162 = fmul float %146, %159
  store float %162, ptr %139, align 4, !tbaa !61
  call void @glVertex3fv(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %163 = add nuw nsw i64 %141, 1
  %164 = icmp eq i64 %163, 16
  br i1 %164, label %165, label %140, !llvm.loop !178

165:                                              ; preds = %158
  call void @glEnd() #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!56 = !{!57, !36, i64 376}
!57 = !{!"ARegion", !36, i64 0, !36, i64 8, !58, i64 16, !59, i64 176, !59, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !46, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!58 = !{!"View2D", !50, i64 0, !50, i64 16, !59, i64 32, !59, i64 48, !59, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!60 = !{!52, !39, i64 212}
!61 = !{!46, !46, i64 0}
!62 = !{!49, !37, i64 344}
!63 = !{!36, !36, i64 0}
!64 = !{!65, !39, i64 136}
!65 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !46, i64 104, !37, i64 108, !37, i64 120, !39, i64 132, !39, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !40, i64 180}
!66 = !{!52, !39, i64 216}
!67 = !{!65, !39, i64 132}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!65, !46, i64 152}
!72 = !{!65, !36, i64 24}
!73 = !{!52, !36, i64 176}
!74 = distinct !{!74, !69, !70}
!75 = !{!76, !39, i64 2096}
!76 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!77 = distinct !{!77, !69, !70}
!78 = !{!37, !37, i64 0}
!79 = distinct !{!79, !69, !70}
!80 = !{!42, !36, i64 288}
!81 = !{!82, !36, i64 0}
!82 = !{!"bPose", !45, i64 0, !36, i64 16, !40, i64 24, !40, i64 26, !39, i64 28, !39, i64 32, !46, i64 36, !37, i64 40, !37, i64 52, !45, i64 64, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !44, i64 104, !37, i64 152}
!83 = !{!35, !39, i64 24}
!84 = !{!42, !39, i64 432}
!85 = !{!52, !40, i64 228}
!86 = !{!52, !39, i64 232}
!87 = !{!52, !39, i64 236}
!88 = !{!52, !40, i64 226}
!89 = !{!90, !39, i64 680}
!90 = !{!"Scene", !43, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !91, i64 280, !98, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !45, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !36, i64 4608, !104, i64 4616, !36, i64 4640, !47, i64 4648, !47, i64 4656, !93, i64 4664, !94, i64 4824, !105, i64 4888, !36, i64 4952}
!91 = !{!"RenderData", !92, i64 0, !36, i64 248, !36, i64 256, !95, i64 264, !96, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !46, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !59, i64 576, !45, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !39, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !39, i64 2576, !46, i64 2580, !37, i64 2584, !97, i64 2616, !39, i64 3976, !39, i64 3980}
!92 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !93, i64 24, !94, i64 184}
!93 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!94 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!95 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!96 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !46, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!97 = !{!"BakeData", !92, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!98 = !{!"AudioData", !39, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !46, i64 24, !46, i64 28}
!99 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!100 = !{!"GameData", !99, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !101, i64 40, !40, i64 64, !40, i64 66, !46, i64 68, !102, i64 72, !46, i64 128, !46, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!101 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!102 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !39, i64 40, !46, i64 44, !46, i64 48, !40, i64 52, !40, i64 54}
!103 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!104 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!105 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!106 = !{!42, !40, i64 962}
!107 = !{!108, !36, i64 120}
!108 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !45, i64 144, !45, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !46, i64 264, !40, i64 268, !40, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !46, i64 524, !46, i64 528, !46, i64 532, !36, i64 536}
!109 = !{!110, !39, i64 320}
!110 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !37, i64 48, !46, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !39, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !37, i64 308, !39, i64 320, !40, i64 324, !37, i64 326}
!111 = !{!110, !39, i64 176}
!112 = distinct !{!112, !69, !70}
!113 = distinct !{!113, !69, !70}
!114 = !{!115, !36, i64 0}
!115 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !36, i64 40, !45, i64 48, !45, i64 64, !39, i64 80, !39, i64 84, !40, i64 88, !40, i64 90, !46, i64 92}
!116 = !{!117, !36, i64 0}
!117 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!118 = !{!119, !36, i64 0}
!119 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42, !46, i64 44, !40, i64 48, !40, i64 50}
!120 = !{!119, !46, i64 44}
!121 = distinct !{!121, !69, !70}
!122 = distinct !{!122, !69, !70}
!123 = !{!52, !40, i64 224}
!124 = distinct !{!124, !69, !70}
!125 = !{!90, !36, i64 168}
!126 = !{!108, !36, i64 176}
!127 = distinct !{!127, !69, !70}
!128 = !{!49, !40, i64 240}
!129 = distinct !{!129, !69, !70}
!130 = !{!35, !39, i64 20}
!131 = !{!108, !36, i64 184}
!132 = !{!108, !36, i64 192}
!133 = !{!110, !36, i64 24}
!134 = !{!52, !36, i64 168}
!135 = !{!108, !40, i64 110}
!136 = !{!137, !39, i64 36}
!137 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 32, !39, i64 36, !37, i64 40, !138, i64 104}
!138 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 12, !40, i64 14}
!139 = !{!110, !46, i64 284}
!140 = !{i8 0, i8 2}
!141 = distinct !{!141, !69, !70}
!142 = distinct !{!142, !69, !70}
!143 = !{!108, !37, i64 112}
!144 = !{!108, !36, i64 128}
!145 = distinct !{!145, !69, !70}
!146 = !{!108, !40, i64 106}
!147 = distinct !{!147, !69, !70}
!148 = distinct !{!148, !69, !70}
!149 = distinct !{!149, !69, !70}
!150 = distinct !{!150, !69, !70}
!151 = distinct !{!151, !69, !70}
!152 = !{!65, !46, i64 172}
!153 = !{!65, !46, i64 140}
!154 = !{!110, !46, i64 304}
!155 = !{!110, !46, i64 272}
!156 = distinct !{!156, !69, !70}
!157 = distinct !{!157, !69, !70}
!158 = !{!110, !40, i64 324}
!159 = !{!39, !39, i64 0}
!160 = !{!138, !40, i64 12}
!161 = distinct !{!161, !69, !70}
!162 = distinct !{!162, !69, !70}
!163 = distinct !{!163, !69, !70}
!164 = !{!165, !46, i64 96}
!165 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !40, i64 94, !46, i64 96, !46, i64 100, !36, i64 104, !46, i64 112, !46, i64 116}
!166 = !{!165, !40, i64 24}
!167 = !{!165, !36, i64 16}
!168 = !{!169, !40, i64 10}
!169 = !{!"bKinematicConstraint", !36, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !46, i64 152, !46, i64 156, !46, i64 160, !37, i64 164, !40, i64 176, !40, i64 178, !46, i64 180}
!170 = !{!169, !40, i64 12}
!171 = distinct !{!171, !69, !70}
!172 = !{!173, !40, i64 18}
!173 = !{!"bSplineIKConstraint", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!174 = distinct !{!174, !69, !70}
!175 = distinct !{!175, !69, !70}
!176 = distinct !{!176, !69, !70}
!177 = distinct !{!177, !69, !70}
!178 = distinct !{!178, !69, !70}
